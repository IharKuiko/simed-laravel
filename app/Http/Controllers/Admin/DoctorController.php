<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Doctor;

class DoctorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $doctors = Doctor::paginate(10);
        return view('admin.doctor.index', compact('doctors'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.doctor.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'specialization' => 'required|string|max:255',
            'professional_category' => 'nullable|string|max:255',
            'education' => 'nullable|string',
            'experience' => 'nullable|string',
            'additional_education' => 'nullable|string',
            'status' => 'required|in:active,inactive',
            'photo' => 'nullable|string|max:255',
        ]);

        Doctor::create($request->all());

        return redirect()->route('doctors.index')->with('success', 'Doctor created successfully.');
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
        $doctor = Doctor::findOrFail($id);
        $sertificates = $doctor->sertificates;
        $educations = $doctor->educations;
        // dd($sertificates);
        return view('admin.doctor.edit', compact('doctor', 'sertificates', 'educations'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'specialization' => 'required|string|max:255',
            'professional_category' => 'nullable|string|max:255',
            'education' => 'nullable|string',
            'experience' => 'nullable|string',
            'additional_education' => 'nullable|string',
            'status' => 'required|in:active,inactive',
            'photo' => 'nullable|string|max:255',
        ]);

        $doctor = Doctor::findOrFail($id);
        $doctor->update($request->all());

        return redirect()->route('doctors.index')->with('success', 'Doctor updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $doctor = Doctor::findOrFail($id);
        $doctor->delete();

        return redirect()->route('doctors.index')->with('success', 'Doctor deleted successfully.');
    }
}
