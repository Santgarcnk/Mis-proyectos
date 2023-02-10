@extends('base.base')

@section('title')
lista de tareas
@endsection

@section('content')
<div class="d-flex justify-content-center pt-5">
<form method="POST">
    @if (session()->has('success'))
<div class="alert alert-warning" role="alert">
    {{session()->get('success')}}
</div>
@endif
    @csrf
  <div class="mb-3">
    <label class="form-label">Name</label>
    <input value="{{@old('name')}}" name="name" type="text" class="form-control" placeholder="task name">
    @error('name')
    <div  class="form-text">{{ $message }}</div>
    @enderror

  </div>
  <div class="mb-3">
    <label class="form-label">Description</label>
    <textarea name="description" cols="2" class="form-control" placeholder="write description..">{{@old('description')}}</textarea>
    @error('description')
    <div  class="form-text">{{ $message }}</div>
    @enderror
</div>
  <div class="mb-3">
    <label class="form-label">Date</label>
    <input value="{{@old('date')}}" name="date" type="date" class="form-control">
    @error('date')
    <div  class="form-text">{{ $message }}</div>
    @enderror
  </div>
 <div class="d-grid">
 <button type="submit" class="btn btn-primary">add</button>
 </div>
</form>
</div>
@endsection
@section('table')
<br><br>
<div class="container">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Date</th>
      <th scope="col">Status</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($tasks as $key=> $task  )
    <tr>
      <th scope="row">{{$key + 1}}</th>
      <td>{{$task->name}}</td>
      <td>{{$task->description}}</td>
      <td>{{$task->date}}</td>
      <td>
        <button class="btn {{$task ->status ? 'btn-success' : 'btn-danger'}}"> {{ $task->status ? 'Realizada' : 'No realizada' }}</button>
      </td>
      <td class="d-flex">
        <a href="{{route('tasks.edit',$task->id)}}" class="btn btn-warning">Editar</a><br>
        <form method="POST" action="{{route('tasks.destroy', $task->id)}}">
          @method('DELETE')
          @csrf
        <button class="btn btn-danger">Eliminar</button>
        </form>
      </td>
    </tr>
    @endforeach

  </tbody>
</table>
</div>
@endsection

