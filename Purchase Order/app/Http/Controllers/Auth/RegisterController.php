<?php

namespace App\Http\Controllers\Auth;

use App\Models\Auth\Role\Role;
use App\Notifications\Auth\ConfirmEmail;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use App\Models\Auth\User\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Ramsey\Uuid\Uuid;
use PragmaRX\Google2FALaravel\Support\Constants;
use PragmaRX\Google2FALaravel\Google2FA;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        $rules = [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ];

        if (config('auth.captcha.registration')) {
            $rules['g-recaptcha-response'] = 'required|captcha';
        }

        return Validator::make($data, $rules);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array $data
     * @return User|\Illuminate\Database\Eloquent\Model
     */
    protected function create(array $data)
    {
        /** @var  $user User */
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'confirmation_code' => Uuid::uuid4(),
            'confirmed' => false,
            'google2fa_secret' => $data['google2fa_secret']
        ]);

        if (config('auth.users.default_role')) {
            $user->roles()->attach(Role::firstOrCreate(['name' => config('auth.users.default_role')]));
        }

        return $user;
    }

    /**
     * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $this->validator($request->all())->validate();


        $google2fa = app('pragmarx.google2fa');

        $registration_data = $request->all();

        $registration_data['google2fa_secret'] = $google2fa->generateSecretKey();

        $request->session()->put('registration_data', $registration_data);


        $QR_Image = $google2fa->getQRCodeInLine(
            config('app.name'),
            $registration_data['email'],
            $registration_data['google2fa_secret']
        );

        return view('google2fa.register',['QR_Image' => $QR_Image,'data' => $registration_data]);

    }

    public function completeRegistration(Request $request){
        $code2fa = $request->input('google2fa_code');

        // Ambil data pendaftaran yang tersimpan dalam sesi
        $registration_data = $request->session()->get('registration_data');
        
        // Verifikasi kode Google Authenticator
        $google2fa = app('pragmarx.google2fa');
    
        if ($google2fa->verifyKey($registration_data['google2fa_secret'], $code2fa)) {
            // Kode Google Authenticator benar, buat pengguna baru
            $user = $this->create($registration_data);
    
            // Event Registered harus dijalankan setelah pengguna berhasil diverifikasi
            event(new Registered($user));
            // Login pengguna
            $request->session()->forget('registration_data');
            $this->guard()->login($user);
            // Redirect ke halaman sesuai dengan redirectPath()
            return $this->registered($request, $user)
                ?: redirect($this->redirectPath());
        } else {
            $errors = 1;
            $QR_Image = $google2fa->getQRCodeInLine(
                config('app.name'),
                $registration_data['email'],
                $registration_data['google2fa_secret']
            );
            // Kode Google Authenticator salah, kembali ke URL sebelumnya
            return view('google2fa.register',['QR_Image' => $QR_Image,'data' => $registration_data,'errors' => $errors]);
        }
    }
    /**
     * The user has been registered.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  mixed $user
     * @return mixed
     */
    protected function registered(Request $request, $user)
    {
        if (config('auth.users.confirm_email') && !$user->confirmed) {

            $this->guard()->logout();

            $user->notify(new ConfirmEmail());

            return redirect(route('login'));
        }
    }
}
