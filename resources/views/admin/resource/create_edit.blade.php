@extends('admin.layouts.modal')
{{-- Content --}}
@section('content')
        <!-- Tabs -->
<ul class="nav nav-tabs">
    <li class="active"><a href="#tab-general" data-toggle="tab"> {{
			trans("admin/modal.general") }}</a></li>
</ul>
<!-- ./ tabs -->
@if (isset($resource))
{!! Form::model($resource, array('url' => url('admin/resource') . '/' . $resource->id, 'method' => 'put','class' => 'bf')) !!}
@else
{!! Form::open(array('url' => url('admin/resource'), 'method' => 'post', 'class' => 'bf')) !!}
@endif
        <!-- Tabs Content -->
<div class="tab-content">
    <!-- General tab -->
    <div class="tab-pane active" id="tab-general">
        <div class="form-group  {{ $errors->has('seq') ? 'has-error' : '' }}">
            {!! Form::label('Sequence', trans("admin/resource.seq"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::text('seq', null, array('class' => 'form-control')) !!}
                <span class="help-block">{{ $errors->first('seq', ':message') }}</span>
            </div>
        </div>
        <div class="form-group  {{ $errors->has('template_id') ? 'has-error' : '' }}">
            {!! Form::label('template_id', trans("admin/admin.template"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::select('template_id', $templates, @isset($resource)? $resource->template_id : 'default', array
                ('class' => 'form-control')) !!}
                <span class="help-block">{{ $errors->first('template_id', ':message') }}</span>
            </div>
        </div>
        <div class="form-group  {{ $errors->has('name') ? 'has-error' : '' }}">
            {!! Form::label('name', trans("admin/modal.name"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::text('name', null, array('class' => 'form-control')) !!}
                <span class="help-block">{{ $errors->first('name', ':message') }}</span>
            </div>
        </div>
        <div class="form-group  {{ $errors->has('title') ? 'has-error' : '' }}">
            {!! Form::label('title', trans("admin/modal.title"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::text('title', null, array('class' => 'form-control')) !!}
                <span class="help-block">{{ $errors->first('title', ':message') }}</span>
            </div>
        </div>
        <div class="form-group  {{ $errors->has('description') ? 'has-error' : '' }}">
            {!! Form::label('description', trans("admin/resource.description"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::textarea('description', null, array('class' => 'form-control')) !!}
                <span class="help-block">{{ $errors->first('description', ':message') }}</span>
            </div>
        </div>
        <div class="form-group {{ $errors->has('titleThumb') ? 'error' : '' }}">
            <label class="control-label" for="titleThumb">
                {{ trans("admin/resource.titleThumb") }}</label>
            <div class="controls">
                {!! Form::text('titleThumb', null, array('class' => 'form-control')) !!}
            </div>
            <div class="thumb-help">{{ trans("admin/resource.titleThumbHelp") }}</div>
            @if (isset($resource) && $resource->titleThumb)
                <img src="{{$resource->titleThumb}}" width="80">
            @endif
        </div>
        <div class="form-group {{ $errors->has('thumb') ? 'error' : '' }}">
            <label class="control-label" for="thumb">
                {{ trans("admin/resource.thumb") }}</label>
            <div class="controls">
                {!! Form::text('thumb', null, array('class' => 'form-control')) !!}
            </div>
            <div class="thumb-help">{{ trans("admin/resource.thumbHelp") }}</div>
            @if (isset($resource) && $resource->thumb)
                <img src="{{$resource->thumb}}" width="80">
            @endif
        </div>
        <div class="form-group {{ $errors->has('useThumbHover') ? 'error' : '' }}">
            <label class="control-label" for="useThumbHover">
                {{ trans("admin/resource.useThumbHover") }}</label>
            <div class="controls">
                {!! Form::text('useThumbHover', null, array('class' => 'form-control')) !!}
            </div>
            <div class="thumb-help">{{ trans("admin/resource.useThumbHoverHelp") }}</div>
        </div>
        <div class="form-group  {{ $errors->has('url') ? 'has-error' : '' }}">
            {!! Form::label('url', trans("admin/resource.url"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::text('url', null, array('class' => 'form-control')) !!}
                <span class="help-block">{{ $errors->first('url', ':message') }}</span>
            </div>
        </div>
        <div class="form-group  {{ $errors->has('backgroundColor') ? 'has-error' : '' }}">
            {!! Form::label('backgroundColor', trans("admin/resource.backgroundColor"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::text('backgroundColor', null, array('class' => 'form-control','placeholder' => 'ffffff')) !!}
                <span class="help-block">{{ $errors->first('backgroundColor', ':message') }}</span>
            </div>
        </div>
        <div class="form-group  {{ $errors->has('creditTitleColor') ? 'has-error' : '' }}">
            {!! Form::label('creditTitleColor', trans("admin/resource.creditTitleColor"), array('class' => 'control-label')) !!}
            <div class="controls">
                {!! Form::text('creditTitleColor', null, array('class' => 'form-control','placeholder' => '000000'))
                 !!}
                <span class="help-block">{{ $errors->first('creditTitleColor', ':message') }}</span>
            </div>
        </div>
        <!-- ./ general tab -->
    </div>
    <!-- ./ tabs content -->

    <!-- Form Actions -->

    <div class="form-group">
        <div class="col-md-12">
            <button type="reset" class="btn btn-sm btn-warning close_popup">
                <span class="glyphicon glyphicon-ban-circle"></span> {{
						trans("admin/modal.cancel") }}
            </button>
            <button type="reset" class="btn btn-sm btn-default">
                <span class="glyphicon glyphicon-remove-circle"></span> {{
						trans("admin/modal.reset") }}
            </button>
            <button type="submit" class="btn btn-sm btn-success">
                <span class="glyphicon glyphicon-ok-circle"></span>
                @if	(isset($resource))
                    {{ trans("admin/modal.edit") }}
                @else
                    {{trans("admin/modal.create") }}
                @endif
            </button>
        </div>
    </div>
    <!-- ./ form actions -->
{!! Form::close() !!}
</div>
@endsection
