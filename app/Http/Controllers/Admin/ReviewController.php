<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Review;

class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reviews = Review::query()->paginate(10);
        return view('admin.review.index', compact('reviews'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.review.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'client_name' => 'required|string|max:255',
            'review_text' => 'required|string',
            'client_photo' => 'nullable|string|max:255',
            'rating' => 'required|integer|min:1|max:5',
            'status' => 'required|in:active,inactive',
            'review_date' => 'required|date',
        ]);

        Review::query()->create($request->all());
        return redirect()->route('reviews.index')->with('success', 'Review added successfully');
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
        $review = Review::findOrFail($id);
        return view('admin.review.edit', compact('review'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'client_name' => 'required|string|max:255',
            'review_text' => 'required|string',
            'client_photo' => 'nullable|string|max:255',
            'rating' => 'required|integer|min:1|max:5',
            'status' => 'required|in:active,inactive',
            'review_date' => 'required|date',
        ]);

        $review = Review::findOrFail($id);
        $review->update($request->all());
        return redirect()->route('reviews.index')->with('success', 'Review updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $review = Review::findOrFail($id);
        $review->delete();
        return redirect()->route('reviews.index')->with('success', 'Review deleted successfully');
    }
}
