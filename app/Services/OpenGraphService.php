<?php

namespace App\Services;

class OpenGraphService
{
    /**
     * Изображение по умолчанию для OG-тегов
     */
    const DEFAULT_IMAGE = '/logo_og.png';
    
    /**
     * Название сайта по умолчанию
     */
    const DEFAULT_SITE_NAME = 'Симед';
    
    /**
     * Локаль по умолчанию для русского языка
     */
    const DEFAULT_LOCALE = 'ru_RU';

    /**
     * Генерация базовых OG-метаданных для статичных страниц
     *
     * @param string $title
     * @param string $description
     * @param string $url
     * @param string $type
     * @param string|null $image
     * @return array
     */
    public static function basic(string $title, string $description, string $url, string $type = 'website', ?string $image = null): array
    {
        return [
            'og:title' => $title,
            'og:description' => $description,
            'og:type' => $type,
            'og:url' => $url,
            'og:image' => $image ?? url(self::DEFAULT_IMAGE),
            'og:site_name' => self::DEFAULT_SITE_NAME,
            'og:locale' => self::DEFAULT_LOCALE,
        ];
    }

    /**
     * Генерация OG-метаданных для детальной страницы врача
     *
     * @param mixed $doctor
     * @return array
     */
    public static function forDoctor($doctor): array
    {
        $title = $doctor->name ?? 'Врач';
        $description = $doctor->specialization ?? 'Профиль врача в клинике Симед';
        $url = route('doctors_details', $doctor->slug);
        $image = $doctor->photo ?? null;

        return [
            'og:title' => $title . ' - ' . self::DEFAULT_SITE_NAME,
            'og:description' => strip_tags($description),
            'og:type' => 'profile',
            'og:url' => $url,
            'og:image' => $image ? asset($image) : url(self::DEFAULT_IMAGE),
            'og:site_name' => self::DEFAULT_SITE_NAME,
            'og:locale' => self::DEFAULT_LOCALE,
            'profile:first_name' => $doctor->name ?? '',
            'profile:last_name' => '',
        ];
    }

    /**
     * Генерация OG-метаданных для детальной страницы услуги
     *
     * @param mixed $service
     * @return array
     */
    public static function forService($service): array
    {
        $title = $service->title ?? 'Услуга';
        $description = $service->description ?? $service->short_description ?? 'Описание услуги в клинике Симед';
        $url = route('services.show', $service->id);
        $image = $service->image ?? null;

        return [
            'og:title' => $title . ' - ' . self::DEFAULT_SITE_NAME,
            'og:description' => strip_tags($description),
            'og:type' => 'article',
            'og:url' => $url,
            'og:image' => $image ? url($image) : url(self::DEFAULT_IMAGE),
            'og:site_name' => self::DEFAULT_SITE_NAME,
            'og:locale' => self::DEFAULT_LOCALE,
            'article:section' => $service->category->title ?? 'Услуги',
        ];
    }

    /**
     * Генерация OG-метаданных для страницы гинекологических услуг
     *
     * @param mixed $service
     * @return array
     */
    public static function forGinecologyService($service): array
    {
        $title = $service->title ?? 'Гинекологическая услуга';
        $description = $service->description ?? $service->short_description ?? 'Описание гинекологической услуги в клинике Симед';
        $url = route('ginecology_service_details', $service->slug);
        $image = $service->image ?? null;

        return [
            'og:title' => $title . ' - ' . self::DEFAULT_SITE_NAME,
            'og:description' => strip_tags($description),
            'og:type' => 'article',
            'og:url' => $url,
            'og:image' => $image ? asset('uploads/' . $image) : url(self::DEFAULT_IMAGE),
            'og:site_name' => self::DEFAULT_SITE_NAME,
            'og:locale' => self::DEFAULT_LOCALE,
            'article:section' => $service->category->title ?? 'Гинекология',
        ];
    }

    /**
     * Генерация OG-метаданных для страницы УЗИ услуг
     *
     * @param mixed $service
     * @return array
     */
    public static function forUltrasoundService($service): array
    {
        $title = $service->title ?? 'УЗИ услуга';
        $description = $service->description ?? $service->short_description ?? 'Описание УЗИ услуги в клинике Симед';
        $url = route('ultrasound_service_details', $service->slug);
        $image = $service->image ?? null;

        return [
            'og:title' => $title . ' - ' . self::DEFAULT_SITE_NAME,
            'og:description' => strip_tags($description),
            'og:type' => 'article',
            'og:url' => $url,
            'og:image' => $image ? asset('uploads/' . $image) : url(self::DEFAULT_IMAGE),
            'og:site_name' => self::DEFAULT_SITE_NAME,
            'og:locale' => self::DEFAULT_LOCALE,
            'article:section' => $service->category->title ?? 'УЗИ',
        ];
    }

    /**
     * Генерация OG-метаданных для списковых страниц (услуги, врачи и т.д.)
     *
     * @param string $title
     * @param string $description
     * @param string $url
     * @param string $type
     * @param string|null $image
     * @return array
     */
    public static function forList(string $title, string $description, string $url, string $type = 'website', ?string $image = null): array
    {
        return [
            'og:title' => $title . ' - ' . self::DEFAULT_SITE_NAME,
            'og:description' => $description,
            'og:type' => $type,
            'og:url' => $url,
            'og:image' => $image ?? url(self::DEFAULT_IMAGE),
            'og:site_name' => self::DEFAULT_SITE_NAME,
            'og:locale' => self::DEFAULT_LOCALE,
        ];
    }

    /**
     * Генерация OG-метаданных для главной страницы
     *
     * @param string|null $customDescription
     * @return array
     */
    public static function forHome(?string $customDescription = null): array
    {
        $title = self::DEFAULT_SITE_NAME . ' - Клиника';
        $description = $customDescription ?? 'Современная клиника Симед предлагает широкий спектр медицинских услуг';
        $url = url('/');

        return [
            'og:title' => $title,
            'og:description' => $description,
            'og:type' => 'website',
            'og:url' => $url,
            'og:image' => url(self::DEFAULT_IMAGE),
            'og:site_name' => self::DEFAULT_SITE_NAME,
            'og:locale' => self::DEFAULT_LOCALE,
        ];
    }
}