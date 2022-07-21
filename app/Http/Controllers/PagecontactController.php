<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Configuration;
use App\Models\Pagecontact;
use App\Models\Subcategoryservice;
use App\Models\Subcategoryhosting;
use App\Models\Categoria;

class PagecontactController extends Controller
{
     
    public function index()
    {
                
        $pagescontacts = Pagecontact::all()->first();
        $configurations = Configuration::all()->first();
        $subcategories = Subcategoryservice::where('categoryservice_id', 1)->get();
    /*  $subcategoriesd = Subcategoryhosting::where('categoryhosting_id', 1)->get(); */
        $categorias = Categoria::all();

        return view('contact', compact('pagescontacts','configurations', 'categorias','subcategories'));
    }

}
