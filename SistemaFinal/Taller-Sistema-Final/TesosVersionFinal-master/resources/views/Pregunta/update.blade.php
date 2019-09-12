@extends('layouts.dashboard')

@section('content')
    <div class="row">
        <div class="col-md-12">

            <h2 class="page-title">Edicion de Curso</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-success">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">
                    {!!Form::model($pregunta,['route'=>['ipregunta.update', $pregunta->id],'method'=>'PUT','role'=>'form','enctype'=>'multipart/form-data', 'class'=>'form-horizontal'])!!}



                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-2 control-label">Descripcion</label>
                        <div class="col-lg-10">
                            {!!Form::text('pregunta',null,['required'=>' ', 'autocomplete'=>'off', 'placeholder' =>' Pregunta ','class'=>'form-control'])!!}
                        </div>

                    </div>

                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-2 control-label">Calificacion</label>
                        <div class="col-lg-10">
                            {!!Form::text('calificacion',null,['required'=>' ', 'autocomplete'=>'off', 'placeholder' =>' Calificacion ','class'=>'form-control'])!!}
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-2 control-label">Estado</label>
                        <div class="col-lg-10">
                            {!! Form::select('estado',['1'=>'Activo','0'=>'Inactivo'],null,['class'=>'form-control','placeholder'=>'Seleccionar Estado']) !!}
                        </div>
                    </div>


                    <div class="hr-dashed"></div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-2 control-label from-control">Tipo pregunta</label>
                        <div class="col-lg-10">
                            {!!Form::select('bpregunta',$orden,null, ['class'=>'form-control'])!!}
                        </div>
                    </div>


                    <div class="hr-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-2">
                            <button class="btn btn-primary btn-sm" type="submit"><i class="fa fa-pencil-square-o"></i> Editar</button>
                            <a href="{{route('carrera.principal')}}" class="btn btn-danger btn-sm"> Cancel <i class=" fa fa-fast-forward"></i> </a>

                        </div>
                    </div>

                    {!!Form::close()!!}

                </div>
            </div>





        </div>
    </div>

@stop
