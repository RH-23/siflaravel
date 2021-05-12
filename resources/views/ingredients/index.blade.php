@extends('layout/master')

@section('css')
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
@endsection

@section('title', 'Ingredient')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
      <div class="row mb-1">
        <div class="col-sm-12">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active">Ingredient</li>
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
        <h3 class="card-title">Ingredient</h3>
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
                    <a href="/ingredients/create" class="btn btn-primary my-2">Tambah Data Ingredient</a>
                    
                    @if (session('status1'))
                    <div class="alert alert-success">
                        {{ session('status1') }}
                    </div>
                    @endif

                    @if (session('status2'))
                    <div class="alert alert-warning">
                        {{ session('status2') }}
                    </div>
                    @endif

                    @if (session('status3'))
                    <div class="alert alert-danger">
                        {{ session('status3') }}
                    </div>
                    @endif
                    
                    <table class="table table-striped" id="tbl_ingredient">
                        <thead class="table table-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Kode ERP</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Kategori</th>
                                <th scope="col">Uom</th>
                                <th scope="col">Grade</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($ingredients as $item)
                            <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $item->kode_erp }}</td>
                                <td>{{ $item->nama }}</td>
                                <td>{{ $item->kategori->nama }}</td>
                                <td>{{ $item->uom['nama'] }}</td>
                                <td>{{ $item->grade['name'] }}</td>
                                <td>
                                    <a href="/ingredients/{{ $item->id }}/edit" class="btn btn-info">Edit</a>
                                    <form action="/ingredients/{{ $item->id }}" method="POST" class="d-inline">
                                      @method('delete')
                                      @csrf
                                      <button type="submit" class="btn btn-danger" onclick="return confirm('Anda yakin hapus data ini')">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
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


    
@endsection

@push('scripts')
    <script src="//cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    <script>
      $(document).ready( function () {
          $('#tbl_ingredient').DataTable();
      });
    </script>
@endpush