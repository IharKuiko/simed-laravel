<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Tag;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = Post::query()->with(['category', 'tags'])->paginate();
        return view('admin.post.index', [
            'posts' => $posts,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::query()->pluck('title', 'id')->all();
        $tags = Tag::query()->pluck('title', 'id')->all();
        return view('admin.post.create', [
            'categories' => $categories,
            'tags' => $tags,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => ['required', 'max:255'],
            'meta_desc' => ['max:255'],
            'content' => ['required'],
            'category_id' => ['required', 'exists:categories,id'],
            'tags' => ['exists:tags,id'],
            'status' => 'required|in:draft,published,blocked',
            'thumb' => ['max:255'],
        ]);

        

        $post = Post::query()->create($validated);
        $post->tags()->sync($request->tags);
        return redirect()->route('posts.index')->with('success', 'Post added successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = Post::query()->findOrFail($id);
        $categories = Category::query()->pluck('title', 'id')->all();
        $tags = Tag::query()->pluck('title', 'id')->all();
        return view('admin.post.edit', [
            'categories' => $categories,
            'post' => $post,
            'tags' => $tags,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $post = Post::query()->findOrFail($id);

        $validated = $request->validate([
            'title' => ['required', 'max:255'],
            'meta_desc' => ['max:255'],
            'content' => ['required'],
            'category_id' => ['required', 'exists:categories,id'],
            'tags' => ['exists:tags,id'],
            'status' => 'required|in:draft,published,blocked',
            'thumb' => ['max:255'],
        ]);

        $post->update($validated);
        $post->tags()->sync($request->tags);
        return redirect()->route('posts.index')->with('success', 'Post saved successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = Post::query()->findOrFail($id);
        $post->tags()->detach();
        $post->delete();
        return redirect()->route('posts.index')->with('success', 'Post deleted successfully');
    }
}
