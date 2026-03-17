<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;
use App\Models\Doctor;
use App\Models\GinecologyService;
use App\Models\UltrasoundService;

class GenerateSitemap extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:generate-sitemap';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $sitemap = Sitemap::create();

        // Добавьте URL страниц (примеры)
        $sitemap->add(Url::create('/')->setPriority(1.0)->setChangeFrequency('daily'));
        $sitemap->add(Url::create('/about')->setPriority(0.8));
        $sitemap->add(Url::create('/services')->setPriority(0.9));
        $sitemap->add(Url::create('/contacts')->setPriority(0.7));
        $sitemap->add(Url::create('/doctors')->setPriority(0.9));
        $sitemap->add(Url::create('/ginecology')->setPriority(0.9));
        $sitemap->add(Url::create('/ultrasound')->setPriority(0.9));
        $sitemap->add(Url::create('/prices')->setPriority(0.8));
        $sitemap->add(Url::create('/reviews')->setPriority(0.7));
        $sitemap->add(Url::create('/patients')->setPriority(0.8));
        $sitemap->add(Url::create('/privacy-policy')->setPriority(0.5));
        $sitemap->add(Url::create('/documents')->setPriority(0.5));
        $sitemap->add(Url::create('/insurance')->setPriority(0.5));
        $sitemap->add(Url::create('/uzi-doc')->setPriority(0.5));
        // Добавьте динамические URL из моделей (например, врачи)
        Doctor::all()->each(function ($doctor) use ($sitemap) {
            $sitemap->add(Url::create("/doctors/{$doctor->slug}"));
        });
        GinecologyService::all()->each(function ($service) use ($sitemap) {
            $sitemap->add(Url::create("/ginecology-service-details/{$service->slug}"));
        });
        UltrasoundService::all()->each(function ($service) use ($sitemap) {
            $sitemap->add(Url::create("/ultrasound-service-details/{$service->slug}"));
        });

        // Сохраните в public/sitemap.xml
        $sitemap->writeToFile(public_path('sitemap.xml'));

        $this->info('Sitemap generated successfully.');
    }
}
