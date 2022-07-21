<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Categoria;
use App\Models\Marca;
use Illuminate\Http\Request;
use App\Models\Category;

class ProductController extends Controller
{

    public function index()
    {
        $products = Product::all();
        return view('admin.products.index', compact('products'));
    }


    public function create()
    {
        $categories = Category::all();
        $marcas = Marca::all();
        return view('admin.posts.create',compact('categories','marcas'));
    }


    public function store(Request $request)
    {
       // $this->authorize('create', new Product());
   
        $this->validate($request, [
            'titulo' => 'required'
        ]);

        $product = Product::create([
            //$request->only('titulo')
            'titulo' => $request->get('titulo'),
            'user_id' => auth()->id()
        ]);

        return redirect()->route('admin.product.edit', $product);
    }


    public function show(Product $product)
    {
        //
    }


    public function edit(Product $product)
    {
        //$this->authorize('update', $post);
        //$this->authorize('view', $post);

        $categorias = Categoria::all();
        $marcas = Marca::all();
    	//$tags = Tag::all();
    	return view('admin.products.edit',compact('categorias','product','marcas'));
    }


    public function update(Request $request, Product $product)
    {
       
        // return Post::create($request->all());
        //esto ejecuta y se sale
        //te da como resultado un jason    
        //dd($request->get('tags'));
            //$post = new Post;
           ///// $post->title = $request->get('title');
              // $post->url = Str::slug($request->get('title'));
           ///// $post->body = $request->get('body');
           ///// $post->iframe = $request->get('iframe');
           ///// $post->excerpt = $request->get('excerpt');
    
           // $post->published_at =  $request->has('published_at')?Carbon::parse($request->get('published_at')):null;
           ///// $post->published_at =  $request->get('published_at');
            //$post->category_id = $request->get('category');
           // $post->category_id = Category::find($cat = $request->get('category'))? $cat : Category::create(['name'=>$cat])->id;
           ///// $post->category_id = $request->get('category_id');
    
           ///// $post->save();
            ////$post->update($request->except('tags'));
    
            $product->update($request->all());
            //$product->syncTags($request->get('tags'));
    
            //$tags = [];
            //foreach ($request->get('tags') as $tag) {
            //    $tags[] = Tag::find($tag) ? $tag : Tag::create(['name' => $tag])->id;
            //}
    
           //$tags = collect($request->get('tags'))->map(function($tag){
            //    return Tag::find($tag) ? $tag : Tag::create(['name'=>$tag])->id;
           // });
    
    
            //$post->tags()->sync($request->get('tags'));
            //$post->tags()->sync($tags);
    
           // return back()->with('flash','Tu publicación fue guardada Con éxito');
    
            return redirect()->route('admin.product.edit', $product)->with('flash', 'Producto guardado Con éxito');
    }


    public function destroy(Product $product)
    {
        //
    }
}
