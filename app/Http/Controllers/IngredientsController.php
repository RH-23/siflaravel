<?php

namespace App\Http\Controllers;

use App\Models\Gradelevel;
use App\Models\Ingredient;
use App\Models\Kategorilevel;
use App\Models\Level;
use App\Models\Uomlevel;
use Illuminate\Http\Request;

class IngredientsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $ingredients = Ingredient::with('kategori', 'grade', 'uom')->get();
        // return $ingredients;
        // cara 1
        // return view('ingredients/index', ['ingredients' => $ingredients]);
        // cara 2
        return view('ingredients/index', compact('ingredients'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['ingredients'] = Ingredient::all();
        $data['grade'] = Gradelevel::all();
        $data['kategori'] = Kategorilevel::all();
        $data['uom'] = Uomlevel::all();
        // return view('ingredients/create', ['data' => $data]);
        return $data;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Cara Validasi
        $request->validate([
            'kode_erp' => 'required|size:7',
            'nama' => 'required',
            'kategori_id' => 'required',
            'uom_id' => 'required',
            'grade_id' => 'required',
            'kuantiti' => 'required'
        ], [
            'kode_erp.required' => 'Kode ERP tidak boleh kosong',
            'kode_erp.unique' => 'Tidak boleh sama',
            'nama.required' => 'Kategori tidak boleh kosong',
            'kategori_id.required' => 'Kategori tidak boleh kosong',
            'uom_id.required' => 'Uom tidak boleh kosong',
            'grade_id.required' => 'Grade tidak boleh kosong',
            'kuantiti.required' => 'Kuantiti tidak boleh kosong'
        ]);

        Ingredient::create([
            'kode_erp' => $request->kode_erp,
            'nama' => $request->nama,
            'kategori_id' => $request->kategori_id,
            'uom_id' => $request->uom_id,
            'grade_id' => $request->grade_id,
            'kuantiti' => $request->kuantiti
        ]);

        return redirect('/ingredients')->with('status1', 'Data Ingredient berhasil ditambahkan');

        // return $request;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ingredient  $ingredient
     * @return \Illuminate\Http\Response
     */
    public function show(Ingredient $ingredient)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ingredient  $ingredient
     * @return \Illuminate\Http\Response
     */
    public function edit(Ingredient $ingredient)
    {
        $ingredients = Ingredient::with('kategori', 'grade', 'uom')->get();
        $data['ingredients'] = Ingredient::all();
        $data['grade'] = Gradelevel::all();
        $data['kategori'] = Kategorilevel::all();
        $data['uom'] = Uomlevel::all();
        return view('ingredients/edit', compact('ingredient', 'data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ingredient  $ingredient
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ingredient $ingredient)
    {
        // Cara Validasi
        $request->validate([
            'kode_erp' => 'required|size:7',
            'nama' => 'required',
            'kategori_id' => 'required',
            'uom_id' => 'required',
            'grade_id' => 'required',
            'kuantiti' => 'required'
        ], [
            'kode_erp.required' => 'Kode ERP tidak boleh kosong',
            'nama.required' => 'Kategori tidak boleh kosong',
            'kategori_id.required' => 'Kategori tidak boleh kosong',
            'uom_id.required' => 'Uom tidak boleh kosong',
            'grade_id.required' => 'Grade tidak boleh kosong',
            'kuantiti.required' => 'Kuantiti tidak boleh kosong'
        ]);

        // Cara mass assigment
        Ingredient::where('id', $ingredient->id)
            ->update([
                'kode_erp' => $request->kode_erp,
                'nama' => $request->nama,
                'kategori_id' => $request->kategori_id,
                'uom_id' => $request->uom_id,
                'grade_id' => $request->grade_id,
                'kuantiti' => $request->kuantiti
            ]);

        return redirect('/ingredients')->with('status2', 'Data Ingredient berhasil diubah');
        // return $request;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ingredient  $ingredient
     * @return \Illuminate\Http\Response
     */

    public function destroy(Ingredient $ingredient)
    {
        Ingredient::destroy($ingredient->id);
        return redirect('/ingredients')->with('status3', 'Data berhasil dihapus');
    }
}
