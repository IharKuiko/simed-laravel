<?php

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';

$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);

$kernel->bootstrap();

// Тестируем главную страницу
echo "=== Тест главной страницы ===\n";
$controller = new App\Http\Controllers\PagesController();
$response = $controller->home();
$data = $response->getData();
$ogData = $data['ogData'];

echo "og:title: " . ($ogData['og:title'] ?? 'NOT SET') . "\n";
echo "og:description: " . ($ogData['og:description'] ?? 'NOT SET') . "\n";
echo "og:type: " . ($ogData['og:type'] ?? 'NOT SET') . "\n";
echo "og:url: " . ($ogData['og:url'] ?? 'NOT SET') . "\n";
echo "og:image: " . ($ogData['og:image'] ?? 'NOT SET') . "\n";
echo "og:site_name: " . ($ogData['og:site_name'] ?? 'NOT SET') . "\n";
echo "og:locale: " . ($ogData['og:locale'] ?? 'NOT SET') . "\n";

// Тестируем страницу о нас
echo "\n=== Тест страницы о нас ===\n";
$response = $controller->about();
$data = $response->getData();
$ogData = $data['ogData'];

echo "og:title: " . ($ogData['og:title'] ?? 'NOT SET') . "\n";
echo "og:description: " . ($ogData['og:description'] ?? 'NOT SET') . "\n";
echo "og:type: " . ($ogData['og:type'] ?? 'NOT SET') . "\n";
echo "og:url: " . ($ogData['og:url'] ?? 'NOT SET') . "\n";
echo "og:image: " . ($ogData['og:image'] ?? 'NOT SET') . "\n";

// Тестируем страницу врачей
echo "\n=== Тест страницы врачей ===\n";
$response = $controller->doctors();
$data = $response->getData();
$ogData = $data['ogData'];

echo "og:title: " . ($ogData['og:title'] ?? 'NOT SET') . "\n";
echo "og:description: " . ($ogData['og:description'] ?? 'NOT SET') . "\n";
echo "og:type: " . ($ogData['og:type'] ?? 'NOT SET') . "\n";
echo "og:url: " . ($ogData['og:url'] ?? 'NOT SET') . "\n";
echo "og:image: " . ($ogData['og:image'] ?? 'NOT SET') . "\n";

// Тестируем страницу гинекологии
echo "\n=== Тест страницы гинекологии ===\n";
$response = $controller->ginecology();
$data = $response->getData();
$ogData = $data['ogData'];

echo "og:title: " . ($ogData['og:title'] ?? 'NOT SET') . "\n";
echo "og:description: " . ($ogData['og:description'] ?? 'NOT SET') . "\n";
echo "og:type: " . ($ogData['og:type'] ?? 'NOT SET') . "\n";
echo "og:url: " . ($ogData['og:url'] ?? 'NOT SET') . "\n";
echo "og:image: " . ($ogData['og:image'] ?? 'NOT SET') . "\n";