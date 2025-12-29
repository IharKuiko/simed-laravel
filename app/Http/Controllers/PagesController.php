<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Doctor;
use App\Models\GinecologyService;
use App\Models\Service;
use App\Models\ServiceCategory;
use App\Models\UltrasoundService;
use App\Models\Review;
use App\Services\OpenGraphService;

class PagesController extends Controller
{
    public function home()
    {
        $doctors = Doctor::where('status', 'active')->take(4)->get();
        $services = Service::where('status', 'active')->take(6)->get();
        $categories = ServiceCategory::all();
        $ogData = OpenGraphService::forHome();

        return view('pages.home', compact('doctors', 'services', 'categories', 'ogData'));
    }

    public function about()
    {
        $ogData = OpenGraphService::basic('О нас', 'Информация о медицинском центре Симед', url('/about'));
        return view('pages.about', compact('ogData'));
    }

    public function contacts()
    {
        $ogData = OpenGraphService::basic('Контакты', 'Контактная информация медицинского центра Симед', url('/contacts'));
        return view('pages.contacts', compact('ogData'));
    }

    public function services()
    {
        $ginecology_services = GinecologyService::where('status', 'active')->get();
        $ultasound_srvices = UltrasoundService::where('status', 'active')->get();
        $ogData = OpenGraphService::forList('Услуги', 'Список услуг медицинского центра Симед', url('/services'));
        return view('pages.services', compact('ginecology_services', 'ultasound_srvices', 'ogData'));
    }
    

    public function doctors()
    {
        $doctors = Doctor::where('status', 'active')->paginate(10);
        $ogData = OpenGraphService::forList('Специалисты', 'Наши специалисты медицинского центра Симед', url('/doctors'));
        return view('pages.doctors', compact('doctors', 'ogData'));
    }

    public function doctors_details($slug)
    {
        $doctor = Doctor::with('sertificates')->where('slug', $slug)->firstOrFail();

        $sertificates = $doctor->sertificates;
        $ogData = OpenGraphService::forDoctor($doctor);

        return view('pages.doctors_details', compact('doctor', 'sertificates', 'ogData'));
    }

    public function reviews()
    {
        $reviews = Review::where('status', 'active')->get();
        $ogData = OpenGraphService::forList('Отзывы', 'Отзывы пациентов медицинского центра Симед', url('/reviews'));
        return view('pages.reviews', compact('reviews', 'ogData'));
    }

    public function patients()
    {
        $ogData = OpenGraphService::basic('Для пациентов', 'Информация для пациентов медицинского центра Симед', url('/patients'));
        return view('pages.patients', compact('ogData'));
    }

    public function prices()
    {
        $ginecology_services = GinecologyService::where('status', 'active')->get();
        $ultasound_srvices = UltrasoundService::where('status', 'active')->get();
        $ogData = OpenGraphService::forList('Цены', 'Прайс-лист услуг медицинского центра Симед', url('/prices'));
        return view('pages.prices', compact('ginecology_services', 'ultasound_srvices', 'ogData'));
    }

    public function insurance()
    {
        $ogData = OpenGraphService::basic('Медицинские услуги по страховке', 'Медицинские услуги по ДМС в центре Симед', url('/insurance'));
        return view('pages.insurance', compact('ogData'));
    }

    public function ginecology()
    {
        $services = GinecologyService::where('status', 'active')->get();
        $ogData = OpenGraphService::forList('Гинекология', 'Гинекологические услуги в медицинском центре Симед', url('/ginecology'));
        return view('pages.ginecology', compact('services', 'ogData'));
    }

    public function ultrasound()
    {
        $services = UltrasoundService::where('status', 'active')->get();
        $ogData = OpenGraphService::forList('Ультразвуковая диагностика', 'УЗИ услуги в медицинском центре Симед', url('/ultrasound'));
        return view('pages.ultrasound', compact('services', 'ogData'));
    }

    public function ginecology_service_details($slug)
    {
        $service = GinecologyService::where('slug', $slug)->where('status', 'active')->firstOrFail();
        $ogData = OpenGraphService::forGinecologyService($service);
        return view('pages.ginecology_service_detail', compact('service', 'ogData'));
    }
    
    public function ultrasound_service_details($slug)
    {
        $service = UltrasoundService::where('slug', $slug)->where('status', 'active')->firstOrFail();
        $ogData = OpenGraphService::forUltrasoundService($service);
        return view('pages.ultrasound_service_detail', compact('service', 'ogData'));
    }
}
