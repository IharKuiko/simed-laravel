<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DoctorEducationController extends Controller
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

            'title' => 'required|string|max:255',
            'doctor_id' => 'required|exists:doctors,id',
        ]);

        \App\Models\DoctorEducation::create($request->all());
        return redirect()->back()->with('success', 'Образование врача создано успешно.');
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
        $education = \App\Models\DoctorEducation::findOrFail($id);
        return view('admin.doctor.doctor_education_edit', compact('education'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([

            'title' => 'required|string|max:255',
        ]);

        $education = \App\Models\DoctorEducation::findOrFail($id);
        $education->update($request->all());

        return redirect()->route('doctors.edit', ['doctor' => $education->doctor_id])->with('success', 'Образование врача обновлено успешно.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $education = \App\Models\DoctorEducation::findOrFail($id);
        $education->delete();

        return redirect()->back()->with('success', 'Образование врача удалено успешно.');
    }
}
