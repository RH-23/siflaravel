@extends('layout/master')

@section('title', 'Report')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
      <div class="row mb-1">
        <div class="col-sm-12">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active">Report</li>
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
        <h3 class="card-title">Report</h3>
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
        <div class="box">
          <h4>
            <small>Add Ingredients</small>
          </h4>
          <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
              <form action="/reports/create" method="post">
                <div class="form-group">
                  <label for="count_add">Banyak Record Yang Akan Ditambahkan</label>
                  <input type="text" name="count_add" id="count_add" maxlength="2" pattern="[0-9]+" class="form-control" required>
                </div>
                <div class="form-group pull-right">
                  <input type="submit" name="generate" value="Generete" class="btn btn-success">
                </div>
              </form>
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