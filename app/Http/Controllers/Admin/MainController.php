<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public function index()
    {
        // User::query()->create([
        //     'name' => 'Admin',
        //     'email' => 'coooll81@gmail.com',
        //     'password' => '123'
        // ]);
        return view('admin.index');
    }
}
