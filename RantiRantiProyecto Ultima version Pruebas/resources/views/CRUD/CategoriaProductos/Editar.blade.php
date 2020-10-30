@extends('../layouts.PlantillaRecetas')
@section('titulo')
<title>Insertar</title>
@endsection   
@section('contenido')
<h2>
    Editar Receta
</h2>
  <form class="form-horizontal" method="POST" action="{{route('categoriasP.update',$categoriasp->idtipoprod)}}" enctype="multipart/form-data">
    @csrf
    <div class="form-inline">
      <label for="id" class="col-sm-2 control-label">Id Categoria</label>
      <div>
        <input type="text" name="idtipoprod" value="{{$categoriasp->idtipoprod}}">
      </div>
    </div>
    <div class="form-inline">
      <label for="nomrece" class="col-sm-2 control-label">Nombre de tipo de producto</label>
      <div >
        <input type="Text" name="nombretipoprod" value="{{$categoriasp->nombretipoprod}}">
      </div>
    </div>
    <div class="form-inline">
      <label for="foto" class="col-sm-2 control-label">Fotrografia</label>
      <div class="form-inline">
        <img src="../imagestipoprod/{{$categoriasp->fototipoprod}} "width="150"/>
        <input type="file" name="fototipoprod" accept="image/*">
      </div>
    </div>
    <div style="padding-left:1%; padding-top:1%">
        <button type="submit" class="btn btn-success" name="_method" value="PUT">Actualizar</button>
    </div>
  </form>
@endsection