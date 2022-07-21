<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use App\Models\Configuration;
use App\Models\Product;
use App\Models\Subcategoryservice;

class ProductsController extends Controller
{
    
   /*  public function show(Categoria $categoria){
        // $service = Service::where('subcategoryservice_id', $subcategoryservice->id)->first();     
        // $hostings = Hosting::where('subcategoryhosting_id', $subcategoryhosting->id)->get();
       // return $categoria;
         $title = $categoria->nombre;
         $image = $categoria->imagen;
        // return $title; 
         $configurations = Configuration::all()->first();
         $categorias = Categoria::all();
         $products = Product::all();
         //$subcategories = Subcategoryservice::where('categoryservice_id', 1)->get();
         //$subcategoriesd = Subcategoryhosting::where('categoryhosting_id', 1)->get();
         //$whies = Why::where('clasification', 1)->get();
         //$questions = Question::where('clasification', 1)->get();
        // return $service;
         //return $subcategories; poner get
        return view('product', compact('products','categorias','title','configurations','image'));
     } */

     public function show(Product $product){

      $configurations = Configuration::all()->first();
      $subcategories = Subcategoryservice::where('categoryservice_id', 1)->get();
      //$subcategoriesd = Subcategoryhosting::where('categoryhosting_id', 1)->get();
     // $whies = Why::where('clasification', 1)->get();
      //$questions = Question::where('clasification', 1)->get();
      //return $subcategoriesd;
      //$image = $subcategoriesd->image;
      //return $configurations;

      $title = $product->titulo;
     // $image = $product->imagen;
     // return $title; 
    
      $categorias = Categoria::all();
     // $products = Product::where('categoria_id', $categoria->id)->get();

      return view('singleproduct', compact('configurations','product','categorias','title', 'subcategories'));

     }



}
