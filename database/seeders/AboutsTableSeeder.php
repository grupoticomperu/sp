<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\About;

class AboutsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        About::create([
            'title' => 'Nosotros', 
            'our' => 'Somos una empresa situada en Lima Peru Estamos especializados en la fabricación de todo tipo de sacos y telas de Polipropileno - PP.   El equipo humano que forma MAXISACOS es joven y dinámico, pero la experiencia adquirida por el contacto, que mantenemos continuamente, con los mercados nos permite conocer las necesidades en constante evolución del sector y adaptarnos a ellas.   Nuestra filosofía empresarial se resume en una vocación de servicio hacia nuestros clientes y un interés en actualizarnos continuamente, para ofrecerles los mejores productos con los precios más competitivos del mercado.   Algunos de los rubros de nuestros clientes: Agricultura, Agro - Industria, Granjas, Pesqueras, Constructoras, Transportes, Ferreterías, Mineras, etc. son sólo , quienes han confiado a través de los años en nuestros productos. Sea parte de nuestra gran familia.',    
            'mission' => 'Nuestra Mission una empresa especializado en brindar soluciones web para tu negocio:',    
            'vission' => 'Nuestra Vision una empresa especializado en brindar soluciones web para tu negocio', 
            'imagen1' => 'public/about/ticom-fondo.jpg', 
            'imagen2' => 'public/about/ticom-diseno-web.jpg', 
            'description' => 'Fabrica y venta de sacos de polipropileno', 
            'keywords' => 'Fabrica y venta de sacos de polipropileno', 
            'user_id'=> 1
        ]);
    }
}
