@extends('auth.layouts.auth')

@section('body_class', 'login')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8-col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Google Authenticator Verification</div>

                <div class="panel-body" style="text-align: center;">
                    <form method="POST" action="">
                       {{ csrf_field() }} 
                        <p>Enter the Google Authenticator code from your mobile app:</p>
                        <div class="form-group">
                            <input type="number" name="google2fa_code" class="form-control" id="google2fa_code" required>
                        </div>
                        <div>
                            <a href="/complete-registration"><button type="submit" class="btn btn-primary">Verify</button></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
