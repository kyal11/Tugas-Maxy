@extends('admin.layouts.admin')

@section('title',__('views.admin.puchase.order.lines.create.title'))

@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            {{ Form::open(['route'=>['admin.purchase.order.lines.create'],'method' => 'post','class'=>'form-horizontal form-label-left']) }}

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="qty" >
                        {{ __('views.admin.puchase.order.lines.create.qty') }}
                        <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="qty" type="text" class="form-control col-md-7 col-xs-12 @if($errors->has('qty')) parsley-error @endif"
                               name="qty" required>
                        @if($errors->has('qty'))
                            <ul class="parsley-errors-list filled">
                                @foreach($errors->get('qty') as $error)
                                        <li class="parsley-required">{{ $error }}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="price" >
                            {{ __('views.admin.puchase.order.lines.create.price') }}
                            <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="price" type="text" class="form-control col-md-7 col-xs-12 @if($errors->has('price')) parsley-error @endif"
                                   name="price" required>
                            @if($errors->has('price'))
                                <ul class="parsley-errors-list filled">
                                    @foreach($errors->get('price') as $error)
                                            <li class="parsley-required">{{ $error }}</li>
                                    @endforeach
                                </ul>
                            @endif
                        </div>
                    </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="discont" >
                                {{ __('views.admin.puchase.order.lines.create.discont') }}
                                <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="discont" type="text" class="form-control col-md-7 col-xs-12 @if($errors->has('')) parsley-error @endif"
                                       name="discont" required>
                                @if($errors->has('discont'))
                                    <ul class="parsley-errors-list filled">
                                        @foreach($errors->get('discont') as $error)
                                                <li class="parsley-required">{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                @endif
                            </div>
                        </div>

                
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <a class="btn btn-primary" href="{{ URL::previous() }}"> {{ __('views.admin.puchase.order.lines.create.cancel') }}</a>
                        <button type="submit" class="btn btn-success"> {{ __('views.admin.puchase.order.lines.create.save') }}</button>
                    </div>
                </div>
            {{ Form::close() }}
        </div>
    </div>
@endsection

@section('styles')
    @parent
    {{ Html::style(mix('assets/admin/css/users/edit.css')) }}
@endsection

@section('scripts')
    @parent
    {{ Html::script(mix('assets/admin/js/users/edit.js')) }}
@endsection