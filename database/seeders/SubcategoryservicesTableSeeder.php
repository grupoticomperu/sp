<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Subcategoryservice;
class SubcategoryservicesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Subcategoryservice::create([
            'name' => 'Impresion de sacos',    
            'slug' => 'impresion-de-sacos', 
            'image' => 'public/subcategoryservice/subcategory1.jpg', 
            'description' => 'Impresion de sacos de polipropileno', 
            'state' => 1,    
            'categoryservice_id'=>1,
            'user_id'=> 1
        ]);

        Subcategoryservice::create([
            'name' => 'Fabrica de Sacos',    
            'slug' => 'fabrica-de-sacos', 
            'image' => 'public/subcategoryservice/subcategory2.jpg', 
            'description' => 'Fabrica de sacos de polipropileno a medida', 
            'state' => 1,
            'categoryservice_id'=>1,          
            'user_id'=> 1
        ]);

   
        

    }
}
