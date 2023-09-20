<?php

namespace App\Http\Controllers\Admin;
Use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\PurchaseOrderLine;
use Illuminate\Http\Request;
use Validator;
use \DateTime;

class PurchaseOrderController extends Controller
{
    //make controller Get Product
    public function getProductList(){
        $products = Product::paginate(10);
        return view('admin.products.index', ["products" => $products]);
    }
    public function getProductShow(){
        return view('admin.products.index');
    }
    public function getProductEdit(){
        return view('admin.products.index');
    }
    public function getProductDestroy(){
        return view('admin.products.index');
    }

    public function getPurchaseOrderLineList(){
       $purchaseOrderLines  = PurchaseOrderLine::paginate(10);
        return view('admin.purchaseOrderLines.index', ["purchaseOrderLines" => $purchaseOrderLines]);
    }
    public function getPurchaseOrderLineShow($id){
        return view('admin.purchaseOrderLines.index');
    }
    public function getPurchaseOrderLineEdit($id){
        return view('admin.purchaseOrderLines.index');
    }
    public function getPurchaseOrderLineDestroy($id){
        return view('admin.purchaseOrderLines.index');
    }
    public function getPurchaseOrderLineCreate(){
        return view('admin.purchaseOrderLines.create');
    }
    public function postPurchaseOrderLineUpdate(){
        
    }
    public function postPurchaseOrderLineInsert(Request $request,PurchaseOrderLine $purchaseOrderLine){
        $validator = Validator::make($request->all(),[
            'qty'=>'required',
            'price'=>'required',
            'discont'=>'required',
        ]);

        if($validator->fails()) return redirect()->back()->withErrors($validator->errors());

        $purchaseOrderLine->qty = $request->post('qty');
        $purchaseOrderLine->price = $request->post('price');
        $purchaseOrderLine->discont = $request->post('discont');
        $purchaseOrderLine->total = (int)$request->post('qty')*(int)$request->post('price')-((int)$request->post('price')*((int)$request->post('discont')/100));
        $purchaseOrderLine->created_at= new DateTime();
        $purchaseOrderLine->updated_at= new DateTime();
        $purchaseOrderLine->save();
        return redirect()->intended((route('admin.purchase.order.lines')));
    }
}
