<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UltrasoundServiceCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = \App\Models\UltrasoundServiceCategory::query()->paginate(10);
        return view('admin.ultrasound_service_category.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.ultrasound_service_category.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => ['required', 'max:255'],
            'description' => ['nullable'],
            'image' => ['max:255'],
            'status' => ['required', 'in:active,inactive'],
        ]);

        \App\Models\UltrasoundServiceCategory::query()->create($validated);
        return redirect()->route('ultrasound-service-categories.index')->with('success', 'Service category added successfully');
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
        $category = \App\Models\UltrasoundServiceCategory::query()->findOrFail($id);
        return view('admin.ultrasound_service_category.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'title' => ['required', 'max:255'],
            'description' => ['nullable'],
            'image' => ['max:255'],
            'status' => ['required', 'in:active,inactive'],
        ]);

        $category = \App\Models\UltrasoundServiceCategory::query()->findOrFail($id);
        $category->update($validated);
        return redirect()->route('ultrasound-service-categories.index')->with('success', 'Service category updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $category = \App\Models\UltrasoundServiceCategory::query()->findOrFail($id);
        $category->delete();
        return redirect()->route('ultrasound-service-categories.index')->with('success', 'Service category deleted successfully');
    }
}
