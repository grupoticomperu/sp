<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use App\Models\Configuration;
use App\Models\Product;
use App\Models\Subcategoryservice;


class CategoriasController extends Controller
{
    public function show(Categoria $categoria){
        // $service = Service::where('subcategoryservice_id', $subcategoryservice->id)->first();     
        // $hostings = Hosting::where('subcategoryhosting_id', $subcategoryhosting->id)->get();
         $title = $categoria->nombre;
         $image = $categoria->imagen;
        // return $title; 
         $configurations = Configuration::all()->first();
         $categorias = Categoria::all();
         $products = Product::where('categoria_id', $categoria->id)->get();
         $subcategories = Subcategoryservice::where('categoryservice_id', 1)->get();
         //$subcategoriesd = Subcategoryhosting::where('categoryhosting_id', 1)->get();
         //$whies = Why::where('clasification', 1)->get();
         //$questions = Question::where('clasification', 1)->get();
        // return $service;
         //return $subcategories; poner get
        return view('product', compact('configurations','products','categorias','title','image','subcategories'));
     }

}
