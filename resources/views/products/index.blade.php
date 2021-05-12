@extends('layout/master')

@section('css')
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
    {{-- <link rel="stylesheet" href="../../../datatables.net/js/jquery.dataTables.js">
    <link rel="stylesheet" href="../../../datatables.net/js/jquery.dataTables.min.js"> --}}
@endsection

@section('title', 'Product')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
      <div class="row mb-1">
        <div class="col-sm-12">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active">Product</li>
          </ol>
        </div>
      </div>
    </div>
    <!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
  <!-- Default box -->
  <div class="card">
    <div class="card-header">
      <h3 class="card-title">Product</h3>
      <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
          <i class="fas fa-minus"></i>
        </button>
        <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
          <i class="fas fa-times"></i>
        </button>
      </div>
    </div>
    <div class="card-body">
      <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="mt-3">Form Data Product</h1>
                <form method="POST" action="/products">
                    @csrf
                    <div class="mb-3 col-5">
                        <label for="kode">Kode</label>
                        <input type="text" class="form-control @error('kode') is-invalid @enderror" id="kode" placeholder="Masukkan Kode" name="kode" value="{{ old('kode') }}" autofocus>
                        @error('kode')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3 col-5">
                        <label for="product">Product</label>
                        <input type="text" class="form-control @error('product') is-invalid @enderror" id="product" placeholder="Masukkan product" name="product" value="{{ old('product') }}">
                        @error('product')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="product">Add ingredients</label>
                        <table class="table table-stripped table-bordered table-hover" id="tbl_ingredients">
                          <thead class="table table-dark">
                            <tr>
                              <th>No.</th>
                              <th>Nama Ingredient</th>
                              <th>Quantity</th>
                              <th>
                                <input type="checkbox" id="select_all" value="" onclick="toggle(this)">
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            @foreach ($data['ingredients'] as $item)
                              <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $item->nama }}</td>
                                <td><input type="text" id="" value="{{$item->kuantiti}}"></td>
                                <td> <input type="checkbox" name="ingredients_id[]" class="check" value="{{ $item->id }}"></td>
                                {{-- <td> <input type="checkbox" name="ingredients_id[]" class="check-form-input" value="1"></td> --}}
                              </tr>
                            @endforeach
                          </tbody>
                        </table>
                    </div>
                   <button type="submit" class="btn btn-primary mb-2">Tambah Data</button>
                </form>
            </div>
        </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer text-center">
      PT. Sanjaya International Fishery
    </div>
    <!-- /.card-footer-->
  </div>
  <!-- /.card -->
</section>
<!-- /.content -->

<script>
  function toggle(source) {
    checkboxes = document.getElementsByName('ingredients_id[]');
    for(var i=0, n=checkboxes.length;i<n;i++) {
      checkboxes[i].checked = source.checked;
    }
  }
  </script>

@endsection

@push('scripts')
    <script src="//cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    <script>
      $(document).ready( function () {
          $('#tbl_ingredients').DataTable();
      });
    </script>
@endpush