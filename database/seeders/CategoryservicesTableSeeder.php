<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Categoryservice;

class CategoryservicesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categoryservice::create([
            'name' => 'Servicios',    
            'slug' => 'sacos-servicios', 
            'image' => 'public/categoryservice/category1.jpg', 
            'description' => 'Servicio de fabrica de sacos de polipropileno', 
            'state' => 1,          
            'user_id'=> 1
        ]);
    }
}
