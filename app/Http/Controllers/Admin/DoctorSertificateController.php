<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DoctorSertificateController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'doctor_id' => 'required|exists:doctors,id',
            'title' => 'required|string|max:255',
            'image' => 'nullable|string|max:255',
            'description' => 'nullable|string',
        ]);

        \App\Models\DoctorSertificate::create($request->all());

        return redirect()->back()->with('success', 'Doctor sertificate created successfully.');
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
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $sertificate = \App\Models\DoctorSertificate::findOrFail($id);
        $sertificate->delete();

        return redirect()->back()->with('success', 'Doctor sertificate deleted successfully.');
    }
}
