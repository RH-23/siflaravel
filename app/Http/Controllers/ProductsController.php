<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Ingredient;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $data['ingredients'] = Ingredient::all();

        $data['products'] = Product::all();
        $data['ingredients'] = Ingredient::all('id', 'nama');
        return view('products/index', ['data' => $data]);
        // return $ingredients;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
            'kode' => 'required|unique:ingredients|size:7',
            'product' => 'required',
            'kuantiti' => 'required',
            'ingredients_id' => 'required'
        ], [
            'kode.required' => 'Kode tidak boleh kosong',
            'kode.unique' => 'Tidak boleh sama',
            'product.required' => 'Product tidak boleh kosong',
            'kuantiti.required' => 'Kuantiti tidak boleh kosong',
            'ingredients_id.required' => 'Ingredients_id tidak boleh kosong'
        ]);

        Product::create([
            'kode' => $request->kode,
            'product' => $request->product,
            'kuantiti' => $request->kuantiti,
            'ingredients_id' => $request->ingredients_id
        ]);
        return $request;

        // $inputValue = $request->all();

        // $request->validate([
        //     'kode' => 'required|unique:ingredients|size:7',
        //     'product' => 'required',
        //     'kuantiti' => 'required',
        //     'ingredients_id' => 'required'
        // ]);

        // print_r($request->input('ingredients_id'));
        // // exit();

        // $succes = Product::create($inputValue);
        // if ($succes) {
        //     $request->session()->flash('status', 'succes');
        // } else {
        //     $request->session()->flash('error', 'something wend wrong');
        // }
        // return redirect()->back();


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }
}
