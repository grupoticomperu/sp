<?php


use GuzzleHttp\Middleware;
use Illuminate\Support\Facades\Route;
//use App\Models\Post;

Route::get('/', 'App\Http\Controllers\PagesController@home')->name('pages.home');
Route::get('blog/', 'App\Http\Controllers\PagesController@blog')->name('pages.blog');
Route::get('blog/{post}', 'App\Http\Controllers\PostsController@show')->name('posts.show');

Route::get('proyectosweb/', 'App\Http\Controllers\PagesController@proyectos')->name('pages.proyecto');
Route::get('proyectosweb/{work}', 'App\Http\Controllers\PagesController@showp')->name('proyecto.showp');

Route::get('nosotros/', 'App\Http\Controllers\AboutsController@index')->name('about.index');
 Route::get('contactenos/', 'App\Http\Controllers\PagecontactController@index')->name('pagecontacs.index'); 
//Route::post('contactenos/', 'App\Http\Controllers\ContactsController@store')->name('contacts.store');
Route::post('contactenos/', 'App\Http\Controllers\PagesController@store')->name('contacts.store');
Route::get('soluciones-web/{subcategoryservice}', 'App\Http\Controllers\SubcategoryservicesController@show')->name('sucategoryservices.show');
Route::get('hostings/{subcategoryhosting}', 'App\Http\Controllers\SubcategoryhostingsController@show')->name('sucategoryhosting.show');

//Route::get('hostings/{hosting}', 'App\Http\Controllers\HostingsController@index')->name('hostings.index');

//Route::get('blog/{id}', 'App\Http\Controllers\PostsController@show');//esto es por defecto id
/* Route::get('blog/{post}', 'App\Http\Controllers\PostsController@show')->name('posts.show'); */
Route::get('hostings-show/{hosting}', 'App\Http\Controllers\HostingsController@show')->name('hostingss.show');

//Route::get('products/{categoria}', 'App\Http\Controllers\ProductsController@show')->name('categoriaproductos.show');
Route::get('products/{categoria}', 'App\Http\Controllers\CategoriasController@show')->name('categoriaproductos.show');
Route::get('products-show/{product}', 'App\Http\Controllers\ProductsController@show')->name('product.show');

Route::get('categorias/{category?}', 'App\Http\Controllers\CategoriesController@show')->name('categories.showp');
Route::get('tags/{tag}', 'App\Http\Controllers\TagsController@show')->name('tags.showp');
    //function () {
    //$posts = App\Models\Post::all();//muestra todo creo ordenado por id
   // $posts = App\Models\Post::latest('published_at')->get();//muestra ordendo por la fecha published at de mayor a menor, actual anterior
    //return view('welcome', compact('posts'));
    //}


Route::get('posts', function () {
    return App\Models\Post::all(); //se pone la ruta porque en Models\Post existe el name space: namespace App\Models;
});

Auth::routes();
//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Route::get('admin', 'App\Http\Controllers\AdminController@index');//llama al dashboard

Route::group([
             // 'as' => 'admin',
              'prefix' =>'admin', 
              'namespace'=>'\App\Http\Controllers\Admin', 
              'middleware' => 'auth'], 
              //Route::get('admin/posts', 'Admin@PostsController@index')
        function(){
             
             Route::get('/', 'AdminController@index')->name('dashboard');

             /*Route::resource('posts', 'PostsController', ['except'=>'show', 'as'=>'admin']);*/
             
             Route::get('posts', 'PostsController@index')->name('admin.posts.index');            
             Route::get('posts/create', 'PostsController@create')->name('admin.posts.create');
             Route::post('posts', 'PostsController@store')->name('admin.posts.store');
             Route::get('posts/{post}', 'PostsController@edit')->name('admin.posts.edit');
             Route::put('posts/{post}', 'PostsController@update')->name('admin.posts.update');





             Route::delete('posts/{post}', 'PostsController@destroy')->name('admin.posts.destroy');



             Route::post('posts/{post:id}/photos', 'PhotoController@store')->name('admin.posts.photos.store');


             Route::delete('photos/{photo}', 'PhotoController@destroy')->name('admin.photos.destroy');
             
          
             Route::get('product', 'ProductController@index')->name('admin.product.index');
             Route::post('product', 'ProductController@store')->name('admin.product.store');
             Route::get('product/{product}', 'ProductController@edit')->name('admin.product.edit');
             Route::put('product/{product}', 'ProductController@update')->name('admin.product.update');

             Route::post('product/{product:id}/photos', 'ImageController@store')->name('admin.product.image.store');

             Route::delete('images/{image}', 'ImageController@destroy')->name('admin.images.destroy');


             Route::resource('categories', 'CategoriesController');
             Route::resource('tag', 'TagController');
             Route::resource('categoria', 'CategoriaController');
             Route::resource('marca', 'MarcaController');

             Route::resource('sliders', 'SlidersController');
             Route::resource('configurations', 'ConfigurationsController');
             Route::resource('offers', 'OffersController');
             Route::resource('homeservices', 'HomeservicesController');
             Route::resource('abouts', 'AboutsController');

             Route::resource('hostings', 'HostingsController');
             Route::resource('whies', 'WhiesController');
             Route::resource('questions', 'QuestionsController');
             Route::resource('services', 'ServicesController');
             Route::resource('works', 'WorksController');
             Route::resource('teams', 'TeamsController');

             Route::post('offerstate/{id}', 'OffersController@activar')->name('admin.offer.state');
             

             Route::resource('users', 'UsersController', ['as' =>'admin']);
             Route::put('users/{user}/roles', 'UsersRolesController@update')->name('admin.users.roles.update');
             Route::put('users/{user}/permissions', 'UsersPermissionsController@update')->name('admin.users.permissions.update');

        }    
);


Route::get('storage-link',function(){
    if(file_exists(public_path('storage'))){
        return 'the "public_html/storage" directoory already exists';
    }

   app('files')->link(
        storage_path('app/public_html'), public_path('storage')
    );

    return 'the "public_html/storage" directoory has bee linked';

});
//Route::get('admin/posts', 'App\Http\Controllers\Admin\PostsController@index');

