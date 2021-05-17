<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Create2IngredientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ingredients', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('kategori_id')->unsigned();
            $table->bigInteger('grade_id')->unsigned();
            $table->bigInteger('uom_id')->unsigned();
            $table->bigInteger('product_id')->unsigned();
            $table->integer('kode_erp')->unique()->nullable();
            $table->string('nama');
            $table->string('kategori');
            $table->string('uom');
            $table->string('grade');
            $table->integer('kuantiti')->nullable();
            $table->timestamps();
        });

        Schema::table('ingredients', function (Blueprint $table) {
            $table->foreign('kategori_id')->references('id')->on('kategorilevels')->onDelete('cascade')->onUpdate('cascade');
        });
        Schema::table('ingredients', function (Blueprint $table) {
            $table->foreign('grade_id')->references('id')->on('gradelevels')->onDelete('cascade')->onUpdate('cascade');
        });
        Schema::table('ingredients', function (Blueprint $table) {
            $table->foreign('uom_id')->references('id')->on('uomlevels')->onDelete('cascade')->onUpdate('cascade');
        });
        Schema::table('ingredients', function (Blueprint $table) {
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
