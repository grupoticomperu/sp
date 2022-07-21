<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Homeservice;

class HomeservicesTableSeeder extends Seeder
{

    
    public function run()
    {
        Homeservice::create([
                
            'title' => 'Impresion de sacos', 
            'description' => 'Somos una empresa especializada en el Impresion de sacos.

            Contamos con un equipo de profesionales especializados en Impresion de sacos.
            
            Contamos con un equipo de profesionales especializados en Impresion de sacos.', 

            'url' => '#', 
            'texto' => 'Ver más', 
            'ubication' => 'derecha', 
            'state' => 1, 
            'image' => 'public/homeservices/servicio2.jpg',
            'user_id'=> 1
        ]);



        Homeservice::create([
                
            'title' => 'Fabrica de sacps de pp', 
            'description' => 'Somos una empresa especializada en el Impresion de sacos.

            Contamos con un equipo de profesionales especializados en Impresion de sacos.
            
            Contamos con un equipo de profesionales especializados en Impresion de sacos.', 
            'url' => '#', 
            'texto' => 'Ver más', 
            'ubication' => 'izquierda', 
            'state' => 1, 
            'image' => 'public/homeservices/servicio3.jpg',
            'user_id'=> 1
        ]);



    }
}
