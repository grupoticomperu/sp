<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Slider;

class SlidersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Slider::create([
            'title1' => 'Venta de Sacos de Polipropileno',    
            'title2' => 'para Distintos usos', 
            'title3' => 'Empresas', 
            'title4' => 'Desde S/ 400',
            'url' => '#', 
            'image' => 'public/sliders/slider1.jpg', 
            'state' => 1,
            'user_id'=> 1
        ]);

        Slider::create([
            'title1' => 'Venta de Telas de Polipropileno',    
            'title2' => 'para Sacos de PP', 
            'title3' => 'Negocios', 
            'title4' => 'Desde S/ 800',
            'url' => '#', 
            'image' => 'public/sliders/slider2.jpg', 
            'state' => 1,
            'user_id'=> 1
        ]);


    }
}
