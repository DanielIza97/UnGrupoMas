@extends('../layouts.PlantillaGeneral')
@section('titulo')
<title>Ranti</title>
@endsection   
@section('contenido')

<div class="col-sm-8">
    <h2>
        Listado de Usuarios
        <a href="{{route('users.create')}}"class="btn btn-primary">nuevo</a>
    </h2>
    @if(session('mensaje'))
        <div class="alert alert-success">
            {{ session('mensaje') }}
        </div>
    @endif
    <table class="table table-hover table-striped">
        <thead>
            <tr>
                <th with="20px">id</th>
                <th>Nombre </th>
                <th>Correo Electronico</th>
                <th>Rol</th>
                <th colspan="3">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
                @foreach($users ?? '' as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->rol}}</td>
                    @if($user->rol=='cliente')
                    <td> 
                        <a href="/informacion_cliente/{{$user->id}}"class="btn btn-primary" >Informacion Cliente</a> 
                    </td>
                    @endif
                    <td>
                        <a href="{{route('users.show',$user->id)}}"class="btn btn-primary" >Editar</a> 
                    </td>
                    @if($user->rol!='cliente')
                    <td>
                        <form action="{{route('users.destroy',$user->id)}}" method="POST">
                            {{csrf_field()}}
                            <input type="hidden" name="_method" value="DELETE">
                            <button class="btn btn-link btn-warning" style="color: white">Eliminar</button>
                        </form>
                    </td> 
                    @endif
                </tr>
                @endforeach
        </tbody>
        
    </table>
</div>
@endsection