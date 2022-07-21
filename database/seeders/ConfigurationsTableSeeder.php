<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\Configuration;

class ConfigurationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Configuration::create([
            'logo' => 'public/logo/ticom.jpg',    
            'icon' => '#', 
            'telephono' => '998-104824', 
            'movil' => '998-104824', 
            'facebook' => '#', 
            'youtube' => '#', 
            'instagram' => '#', 
            'description' => 'Somos una empresa especializada fabrica de sacos de polipropileno',
            'email' => 'maxisacos_sac@hotmail.com',
            'address' => 'Av. Bauzate y Meza Nº 1937 La Victoria Lima- Peru',
            'user_id'=> 1
        ]);
    }
}
