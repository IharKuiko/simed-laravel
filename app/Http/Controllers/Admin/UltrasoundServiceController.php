<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\UltrasoundService;
use App\Models\UltrasoundServiceCategory;
use Illuminate\Http\Request;

class UltrasoundServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $services = UltrasoundService::query()->paginate(40);
        return view('admin.ultrasound_service.index', compact('services'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = UltrasoundServiceCategory::query()->pluck('title', 'id')->all();
        return view('admin.ultrasound_service.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $table->foreignId('category_id')->constrained('service_categories')->onDelete('cascade');
        //     $table->string('title');
        //     $table->string('slug');
        //     $table->string('image')->nullable();
        //     $table->text('description')->nullable();
        //     $table->text('details')->nullable();
        //     $table->string('duration')->nullable();
        //     $table->string('price')->nullable();
        //     $table->string('unit')->nullable();
        //     $table->enum('status', ['active', 'inactive'])->default('active');

         $request->validate([
             'category_id' => 'required|exists:ultrasound_service_categories,id',
             'title' => 'required|string',
             'image' => 'nullable|string|max:255',
             'description' => 'nullable|string',
             'details' => 'nullable|string',
             'duration' => 'nullable|string|max:255',
             'price' => 'nullable|string|max:255',
             'unit' => 'nullable|string|max:255',
             'status' => 'required|in:active,inactive',
         ]);

         UltrasoundService::query()->create($request->all());
         return redirect()->route('ultrasound-services.index')->with('success', 'Service added successfully');
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
        $service = UltrasoundService::query()->findOrFail($id);
        $categories = UltrasoundServiceCategory::query()->pluck('title', 'id')->all();
        return view('admin.ultrasound_service.edit', compact('service', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $service = UltrasoundService::query()->findOrFail($id);

        $request->validate([
            'category_id' => 'required|exists:ultrasound_service_categories,id',
            'title' => 'required|string|max:255',
            'image' => 'nullable|string|max:255',
            'description' => 'nullable|string',
            'details' => 'nullable|string',
            'duration' => 'nullable|string|max:255',
            'price' => 'nullable|string|max:255',
            'unit' => 'nullable|string|max:255',
            'status' => 'required|in:active,inactive',
        ]);

        $service->update($request->all());
        return redirect()->route('ultrasound-services.index')->with('success', 'Service updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $service = UltrasoundService::query()->findOrFail($id);
        $service->delete();
        return redirect()->route('ultrasound-services.index')->with('success', 'Service deleted successfully');
    }
}
