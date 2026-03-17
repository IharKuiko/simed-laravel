<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\WorkingHoursInfo;
use Illuminate\Http\Request;

class WorkingHoursInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $workingHoursInfo = WorkingHoursInfo::ordered()->get();
        return view('admin.working-hours-info.index', compact('workingHoursInfo'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'text' => 'required|string',
            'valid_until' => 'nullable|date',
            'is_active' => 'boolean',
            'position' => 'integer|min:0',
        ]);

        WorkingHoursInfo::create($validated);

        return redirect()
            ->route('working-hours-info.index')
            ->with('success', 'Информация успешно добавлена');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, WorkingHoursInfo $workingHoursInfo)
    {
        $validated = $request->validate([
            'text' => 'required|string',
            'valid_until' => 'nullable|date',
            'is_active' => 'boolean',
            'position' => 'integer|min:0',
        ]);

        $workingHoursInfo->update($validated);

        return redirect()
            ->route('working-hours-info.index')
            ->with('success', 'Информация успешно обновлена');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(WorkingHoursInfo $workingHoursInfo)
    {
        $workingHoursInfo->delete();

        return redirect()
            ->route('working-hours-info.index')
            ->with('success', 'Информация успешно удалена');
    }

    /**
     * Toggle active status
     */
    public function toggleActive(WorkingHoursInfo $workingHoursInfo)
    {
        $workingHoursInfo->update([
            'is_active' => !$workingHoursInfo->is_active
        ]);

        return redirect()
            ->route('working-hours-info.index')
            ->with('success', 'Статус успешно изменен');
    }
}
