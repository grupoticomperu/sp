<?php

namespace Database\Seeders;

use App\Models\Categoria;
use Illuminate\Database\Seeder;

class CategoriasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categoria::create([
            'nombre' => 'Sacos de Polipropileno',    
            'url' => 'sacos-de-polipropileno', 
            'imagen' => 'public/categorias/sacos-de-polipropileno1.jpg', 
        ]);

        Categoria::create([
            'nombre' => 'Telas de Polipropileno',    
            'url' => 'telas-de-polipropileno', 
            'imagen' => 'public/categorias/telas-de-polipropileno.jpg', 
        ]);

        Categoria::create([
            'nombre' => 'Sacos BigBag',    
            'url' => 'sacos-bigbag', 
            'imagen' => 'public/categorias/sacos-bigbag.jpg', 
        ]);



    }
}
