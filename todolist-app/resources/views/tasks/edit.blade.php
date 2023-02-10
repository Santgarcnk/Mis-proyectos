@extends('base.base')

@section('content')
<div class="container pt-3">
  <a href="{{route('tasks.index')}}"  class="btn btn-danger" >Regresar</a>
</div>
<div class="container d-flex justify-content-center pt-5">
<form method="POST" action="{{route('tasks.update', $task->id)}}">
  @method('PUT')
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
    <label class="form-label">Is complete</label>
    <select name="status" class="form-control">
      <option value="1">Complete</option>
      <option value="0">No complete</option>
    </select>
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
 <button type="submit" class="btn btn-primary">Update</button>
 </div>
</form>
</div>
