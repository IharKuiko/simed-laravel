<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\TagController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\Admin\ServiceCategoryController;
use App\Http\Controllers\Admin\ServiceController;
use App\Http\Controllers\Admin\GinecologyServiceCategoryController;
use App\Http\Controllers\Admin\GinecologyServiceController;
use App\Http\Controllers\Admin\UltrasoundServiceCategoryController;
use App\Http\Controllers\Admin\UltrasoundServiceController;

// Route::get('/', function () {
//     return view('welcome');
// })->name('home');

Route::get('/', [\App\Http\Controllers\PagesController::class, 'home'])->name('home');
Route::get('/about', [\App\Http\Controllers\PagesController::class, 'about'])->name('about');
Route::get('/contacts', [\App\Http\Controllers\PagesController::class, 'contacts'])->name('contacts');
Route::get('/services', [\App\Http\Controllers\PagesController::class, 'services'])->name('services');
Route::get('/ginecology-service-details/{slug}', [\App\Http\Controllers\PagesController::class, 'ginecology_service_details'])->name('ginecology_service_details');
Route::get('/ultrasound-service-details/{slug}', [\App\Http\Controllers\PagesController::class, 'ultrasound_service_details'])->name('ultrasound_service_details');
Route::get('/doctors', [\App\Http\Controllers\PagesController::class, 'doctors'])->name('doctors');
Route::get('/doctors/{slug}', [\App\Http\Controllers\PagesController::class, 'doctors_details'])->name('doctors_details');
Route::get('/reviews', [\App\Http\Controllers\PagesController::class, 'reviews'])->name('reviews');
Route::get('/patients', [\App\Http\Controllers\PagesController::class, 'patients'])->name('patients');
Route::get('/prices', [\App\Http\Controllers\PagesController::class, 'prices'])->name('prices');

Route::get('/insurance', [\App\Http\Controllers\PagesController::class, 'insurance'])->name('insurance');
Route::get('/ginecology', [\App\Http\Controllers\PagesController::class, 'ginecology'])->name('ginecology');
Route::get('/ultrasound', [\App\Http\Controllers\PagesController::class, 'ultrasound'])->name('ultrasound');

Route::get('/privacy-policy', function () {
    return view('pages.privacy-policy');
})->name('privacy-policy');

Route::get('/for-patients', function () {
    return view('pages.for-patients');
})->name('for-patients');

Route::get('/av-policy', function () {
    return view('pages.av-policy');
})->name('av-policy');


Route::get('/med-agree', function () {
    return view('pages.med-agree');
})->name('med-agree');

Route::get('/offer-agree', function () {
    return view('pages.offer-agree');
})->name('offer-agree');


Route::get('/data-privacy', function () {
    return view('pages.data-privacy');
})->name('data-privacy');

Route::get('/documents', function () {
    return view('pages.documents');
})->name('documents');


Route::get('/uzi-doc', function () {
    return view('pages.uzi-doc');
})->name('uzi-doc');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::prefix('admin')->middleware('admin')->group(function () {
    Route::get('/', [MainController::class, 'index'])->name('admin.main.index');

    Route::resource('/categories', CategoryController::class);
    Route::resource('/posts', PostController::class);
    Route::resource('/tags', TagController::class);
    Route::resource('/users', \App\Http\Controllers\Admin\UserController::class);
    Route::resource('/doctors', \App\Http\Controllers\Admin\DoctorController::class);
    Route::resource('/doctor-sertificates', \App\Http\Controllers\Admin\DoctorSertificateController::class);
    Route::resource('/doctor-education', \App\Http\Controllers\Admin\DoctorEducationController::class);
    Route::resource('/service-categories', \App\Http\Controllers\Admin\ServiceCategoryController::class);
    Route::resource('/services', \App\Http\Controllers\Admin\ServiceController::class);
    Route::resource('/ginecology-service-categories', GinecologyServiceCategoryController::class);
    Route::resource('/ginecology-services', GinecologyServiceController::class);
    Route::resource('/ultrasound-service-categories', UltrasoundServiceCategoryController::class);
    Route::resource('/ultrasound-services', UltrasoundServiceController::class);
    Route::resource('/reviews', \App\Http\Controllers\Admin\ReviewController::class);
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
