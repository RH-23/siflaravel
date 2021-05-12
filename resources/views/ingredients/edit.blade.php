@extends('layout/master')

@section('title', 'Form Ubah Ingredient')

@section('content')
    <!-- Main content -->
  <section class="content mt-2">
    <!-- Default box -->
    <div class="card">
      <div class="card-header p-1 bg-light border">
        <h3 class="card-title ">
            <a href="/ingredients" class="btn btn-link my-1"><i class="fas fa-angle-left right"></i> Kembali</a>
        </h3>
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
                <div class="col-8">
                    <h3 class="mt-3">Form Ubah Data Ingredient</h3>
                    <form method="POST" action="/ingredients/{{ $ingredient->id }}">
                        @method('patch')
                        @csrf
                        <div class="mb-3">
                            <label for="kode_erp">Kode ERP</label>
                            <input type="number" class="form-control @error('kode_erp') is-invalid @enderror" id="kode_erp" placeholder="Masukkan Kode ERP" name="kode_erp" value="{{ old('kode_erp', $ingredient->kode_erp) }}" autofocus>
                            @error('kode_erp')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="nama">nama</label>
                            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" placeholder="Masukkan nama" name="nama" value="{{ old('nama', $ingredient->nama) }}">
                            @error('nama')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="kategori">Kategori</label>
                            <select name="kategori_id" class="form-control @error('kategori_id') is-invalid @enderror" value="">
                                <option value="">- Pilih -</option>
                                @foreach ($data['kategori'] as $item)
                                <option value="{{ $item->id }}" {{ old('kategori_id', $ingredient->kategori_id) == $item->id ? 'selected' : '' }}>{{ $item->nama }}</option>
                                @endforeach
                            </select>
                            @error('kategori_id')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="Uom">Uom</label>
                            <select name="uom_id" class="form-control @error('uom_id') is-invalid @enderror">
                                <option value="">- Pilih -</option>
                                @foreach ($data['uom'] as $item)
                                <option value="{{ $item->id }}" {{ old('uom_id', $ingredient->uom_id) == $item->id ? 'selected' : '' }}>{{ $item->nama }}</option>
                                @endforeach
                            </select>
                            @error('uom_id')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="Grade">Grade</label>
                            <select name="grade_id" class="form-control @error('grade_id') is-invalid @enderror">
                                <option value="">- Pilih -</option>
                                @foreach ($data['grade'] as $item)
                                <option value="{{ $item->id }}" {{ old('grade_id', $ingredient->grade_id) == $item->id ? 'selected' : '' }}>{{ $item->name }}</option>
                                @endforeach
                            </select>
                            @error('grade_id')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                       <button type="submit" class="btn btn-success mb-2">Ubah Data</button>
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