<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\WorkingHoursInfo;

class WorkingHoursInfoController extends Controller
{
    /**
     * Get all active working hours info
     */
    public function index()
    {
        $workingHoursInfo = WorkingHoursInfo::active()
            ->ordered()
            ->get();

        return response()->json([
            'success' => true,
            'data' => $workingHoursInfo
        ]);
    }
}
