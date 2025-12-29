<?php
// Простой скрипт для проверки OG-тегов на страницах сайта

$urls = [
    '/' => 'Главная страница',
    '/about' => 'Страница о нас',
    '/doctors' => 'Страница врачей',
    '/ginecology' => 'Страница гинекологии'
];

foreach ($urls as $url => $description) {
    echo "\n=== Проверка: $description ($url) ===\n";
    
    $html = file_get_contents("http://localhost:8000$url");
    
    // Проверяем наличие OG-тегов
    if (strpos($html, 'og:title') !== false) {
        echo "✓ Найден og:title\n";
        // Извлекаем значение
        if (preg_match('/<meta property="og:title" content="([^"]*)"/', $html, $matches)) {
            echo "  Значение: " . $matches[1] . "\n";
        }
    } else {
        echo "✗ Отсутствует og:title\n";
    }
    
    if (strpos($html, 'og:description') !== false) {
        echo "✓ Найден og:description\n";
        if (preg_match('/<meta property="og:description" content="([^"]*)"/', $html, $matches)) {
            echo "  Значение: " . $matches[1] . "\n";
        }
    } else {
        echo "✗ Отсутствует og:description\n";
    }
    
    if (strpos($html, 'og:image') !== false) {
        echo "✓ Найден og:image\n";
        if (preg_match('/<meta property="og:image" content="([^"]*)"/', $html, $matches)) {
            echo "  Значение: " . $matches[1] . "\n";
        }
    } else {
        echo "✗ Отсутствует og:image\n";
    }
    
    if (strpos($html, 'og:url') !== false) {
        echo "✓ Найден og:url\n";
        if (preg_match('/<meta property="og:url" content="([^"]*)"/', $html, $matches)) {
            echo "  Значение: " . $matches[1] . "\n";
        }
    } else {
        echo "✗ Отсутствует og:url\n";
    }
    
    if (strpos($html, 'og:type') !== false) {
        echo "✓ Найден og:type\n";
        if (preg_match('/<meta property="og:type" content="([^"]*)"/', $html, $matches)) {
            echo "  Значение: " . $matches[1] . "\n";
        }
    } else {
        echo "✗ Отсутствует og:type\n";
    }
}