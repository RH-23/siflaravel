@section('title', 'Report')

@section('content')

<section class="content">
    <!-- Default box -->
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Report Toko</h3>
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
            <h1>Poliknlinik</h1>
            <h4>
                <small>Tambah Data Poliklinik</small>
                <div class="pull-right">
                    <a href="data.php" class="btn btn-info btn-xs">Data</a>
                    <a href="generate.php" class="btn btn-primary btn-xs">Tambah Data Lagi</a>
                </div>
            </h4>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <form action="" method="post">
                        <input type="hidden" name="total" value="<?=@$_POST['count_add']?>">
                        <table class="table">
                            <tr>
                                <th>#</th>
                                <th>Nama Ingredient</th>
                                
                            </tr>
                            <?php
                            for ($i=1; $i <= $_POST['count_add'] ; $i++) { ?> 
                                <tr>
                                    <td><?=$i?></td>
                                    <td>
                                        <input type="text" name="nama-<?=$i?>" class="form-control" required>
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </table>
                        <div class="form-group pull-right">
                            <input type="submit" name="add" value="Simpan Semua" class="btn btn-success">
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

@endsection