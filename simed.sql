-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.2
-- Время создания: Дек 22 2025 г., 06:00
-- Версия сервера: 8.2.0
-- Версия PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simed`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', 'category-1', '2K Clear coat premium', '2025-12-15 19:47:34', '2025-12-15 19:49:47'),
(3, 'Category 2', 'category-2', NULL, '2025-12-16 08:24:06', '2025-12-16 08:24:06');

-- --------------------------------------------------------

--
-- Структура таблицы `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professional_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `additional_education` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `specialization`, `slug`, `professional_category`, `education`, `experience`, `additional_education`, `status`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Нерезько Светлана Ивановна', 'Врач-акушер-гинеколог.  Врач ультразвуковой диагностики', 'nerezko-svetlana-ivanovna', 'Первая квалификационная категория', '<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1989, Минский ордена Трудового Красного Знамени государственный медицинский институт</span></span></p>', '30 лет', '<ul>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1990 Акушерство и гинекология</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">13.01-24.01.2003 Избранные вопросы акушерства и гинекологии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">28.11-09.12.2005 Лечебно-профилактическая помощь женщинам при бесплодии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">20.02-03.03.2006 Детская гинекология</span></span></li>\r\n</ul>', 'active', 'uploads/Spec/doct1.webp', '2025-12-18 22:12:17', '2025-12-19 12:12:16'),
(2, 'Нерезько Светлана Ивановна', 'Врач-акушер-гинеколог.  Врач ультразвуковой диагностики', 'nerezko-svetlana-ivanovna-2', 'Первая квалификационная категория', '<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1989, Минский ордена Трудового Красного Знамени государственный медицинский институт</span></span></p>', '30 лет', '<ul>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1990 Акушерство и гинекология</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">13.01-24.01.2003 Избранные вопросы акушерства и гинекологии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">28.11-09.12.2005 Лечебно-профилактическая помощь женщинам при бесплодии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">20.02-03.03.2006 Детская гинекология</span></span></li>\r\n</ul>', 'inactive', 'uploads/Spec/doct1.webp', '2025-12-18 22:15:52', '2025-12-19 13:01:05'),
(3, 'Целуйко  Светлана Адамовна', 'Врач ультразвуковой диагностики', 'celuyko-svetlana-adamovna', 'Первая квалификационная категория', '<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1997, Гомельский государственный медицинский институт</span></span></p>', '25 лет', '<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">18.04-29.04.2011 Организация медицинской помощи работающим во вредных условиях</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">16.04-16.05.2012 Клиническая кардиология</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">24.11-05.12.2014 Ультразвуковая диагностика заболевания сердца и сосудов</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">24.08-18.12.2015 Ультразвуковая диагностика. Переподготовка&nbsp; в ГУО &laquo;Белорусская медицинская академия последипломного образования&raquo;</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">09.12-20.12.2019 Диагностические пункции под ультразвуковым контролем</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">18.09-29.09.2023 Ультразвуковая диагностика заболеваний опорно-двигательной системы </span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">10.06-14.06.2024 Ультразвуковая диагностика патологии вен нижних конечностей</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">17.06-21.06.2024 Ультразвуковая диагностика патологии органов пищеварения</span></span></p>', 'active', 'uploads/Spec/doct2.webp', '2025-12-19 09:17:18', '2025-12-19 09:17:18');

-- --------------------------------------------------------

--
-- Структура таблицы `doctor_education`
--

CREATE TABLE `doctor_education` (
  `id` bigint UNSIGNED NOT NULL,
  `doctor_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `doctor_education`
--

INSERT INTO `doctor_education` (`id`, `doctor_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, '1990 Акушерство и гинекология', '2025-12-19 17:13:07', '2025-12-19 17:13:07'),
(2, 1, '13.01-24.01.2003 Избранные вопросы акушерства и гинекологии', '2025-12-19 17:18:29', '2025-12-19 17:18:29'),
(3, 1, '28.11-09.12.2005 Лечебно-профилактическая помощь женщинам при бесплодии', '2025-12-19 17:18:43', '2025-12-19 17:18:43'),
(4, 1, '20.02-03.03.2006 Детская гинекология', '2025-12-19 17:18:57', '2025-12-19 17:18:57'),
(5, 1, '05.06-16.06.2006 Планирование семьи', '2025-12-19 17:19:10', '2025-12-19 17:19:10'),
(6, 1, '20.10-31.10.2008 Лапороскопия и гистероскопия в акушерско-гинекологической практике', '2025-12-19 17:19:23', '2025-12-19 17:19:23'),
(7, 1, '14.11-25.11.2011 Предопухолевые и опухолевые заболевания репродуктивно-значимых органов у женщин', '2025-12-19 17:19:39', '2025-12-19 17:19:39'),
(8, 1, '15.05-24.05.2013 Патология шейки матки, влагалища, вульвы. Основы кольпоскопии', '2025-12-19 17:19:56', '2025-12-19 17:19:56'),
(9, 1, '14.11-13.12.2016 Современные методы диагностики и лечения гинекологических заболеваний в различные периоды жизни женщины. Патология мочевыводящей системы и дисфункция тазового дна у женщин. Кольпоскопический скрининг.', '2025-12-19 17:20:11', '2025-12-19 17:20:11'),
(10, 1, '02.09-27.12.2019 Ультразвуковая диагностика. Переподготовка в УО \"Витебский государственный ордена Дружбы народов медицинский университет\"', '2025-12-19 17:20:35', '2025-12-19 17:20:35'),
(11, 1, '08.11-12.11.2021 Ультразвуковая диагностика врождённых пороков развития плода', '2025-12-19 17:20:52', '2025-12-19 17:20:52'),
(12, 1, '10.01-08.02.2022 Репродуктивная эндокринология. Сексуальная дисфункция у мужчин и женщин', '2025-12-19 17:21:10', '2025-12-19 17:21:10'),
(13, 1, '27.01-07.02.2025 Ультразвуковая диагностика патологии внутренних органов', '2025-12-19 17:21:26', '2025-12-19 17:21:26'),
(14, 3, '18.04-29.04.2011 Организация медицинской помощи работающим во вредных условиях', '2025-12-19 17:22:19', '2025-12-19 17:22:19'),
(15, 3, '16.04-16.05.2012 Клиническая кардиология', '2025-12-19 17:22:31', '2025-12-19 17:22:31'),
(16, 3, '24.11-05.12.2014 Ультразвуковая диагностика заболевания сердца и сосудов', '2025-12-19 17:22:43', '2025-12-19 17:22:43'),
(17, 3, '24.08-18.12.2015 Ультразвуковая диагностика. Переподготовка  в ГУО «Белорусская медицинская академия последипломного образования»', '2025-12-19 17:23:03', '2025-12-19 17:23:03'),
(18, 3, '09.12-20.12.2019 Диагностические пункции под ультразвуковым контролем', '2025-12-19 17:23:15', '2025-12-19 17:23:15'),
(19, 3, '18.09-29.09.2023 Ультразвуковая диагностика заболеваний опорно-двигательной системы', '2025-12-19 17:23:29', '2025-12-19 17:23:29'),
(20, 3, '10.06-14.06.2024 Ультразвуковая диагностика патологии вен нижних конечностей', '2025-12-19 17:23:48', '2025-12-19 17:23:48'),
(21, 3, '17.06-21.06.2024 Ультразвуковая диагностика патологии органов пищеварения', '2025-12-19 17:24:00', '2025-12-19 17:24:00'),
(23, 3, 'test2', '2025-12-19 17:24:34', '2025-12-19 17:24:34');

-- --------------------------------------------------------

--
-- Структура таблицы `doctor_sertificates`
--

CREATE TABLE `doctor_sertificates` (
  `id` bigint UNSIGNED NOT NULL,
  `doctor_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `doctor_sertificates`
--

INSERT INTO `doctor_sertificates` (`id`, `doctor_id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sert1', 'uploads/Sert-1/sert-1-1.webp', NULL, '2025-12-19 11:55:10', '2025-12-19 11:55:10'),
(2, 1, 'Sertificat-2', 'uploads/Sert-1/sert1-2.webp', NULL, '2025-12-19 12:10:13', '2025-12-19 12:10:13'),
(3, 1, 'Sertificat-3', 'uploads/Sert-1/sert1-3.webp', NULL, '2025-12-19 12:10:39', '2025-12-19 12:10:39'),
(4, 1, 'Sertificat-4', 'uploads/Sert-1/sert1-4.webp', NULL, '2025-12-19 12:11:03', '2025-12-19 12:11:03'),
(5, 1, 'Sertificat-5', 'uploads/Sert-1/sert1-5.webp', NULL, '2025-12-19 12:11:20', '2025-12-19 12:11:20'),
(6, 1, 'Sertificat-6', 'uploads/Sert-1/sert1-6.webp', NULL, '2025-12-19 12:11:39', '2025-12-19 12:11:39'),
(7, 1, 'Sertificat-7', 'uploads/Sert-1/sert1-7.webp', NULL, '2025-12-19 12:12:07', '2025-12-19 12:12:07'),
(8, 3, 'Sertificat-1', 'uploads/Sert-2/sert2-1.webp', NULL, '2025-12-19 12:13:07', '2025-12-19 12:13:07'),
(9, 3, 'Sertificat-2', 'uploads/Sert-2/sert2-2.webp', NULL, '2025-12-19 12:13:24', '2025-12-19 12:13:24'),
(10, 3, 'Sertificat-3', 'uploads/Sert-2/sert2-3.webp', NULL, '2025-12-19 12:13:45', '2025-12-19 12:13:45'),
(11, 3, 'Sertificat-4', 'uploads/Sert-2/sert2-4.webp', NULL, '2025-12-19 12:13:59', '2025-12-19 12:13:59');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ginecology_services`
--

CREATE TABLE `ginecology_services` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ginecology_services`
--

INSERT INTO `ginecology_services` (`id`, `category_id`, `title`, `slug`, `image`, `description`, `details`, `duration`, `price`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Первичный прием врача-акушера-гинеколога/ Первичный прием врача-акушера-гинеколога без осмотра', 'pervichnyy-priem-vracha-akushera-ginekologa-pervichnyy-priem-vracha-akushera-ginekologa-bez-osmotra', NULL, NULL, NULL, NULL, '37', 'прием', 'active', '2025-12-21 15:59:30', '2025-12-21 15:59:30'),
(2, 1, 'Повторный прием врача-акушера-гинеколога/ Повторный прием врача-акушера-гинеколога без осмотра', 'povtornyy-priem-vracha-akushera-ginekologa-povtornyy-priem-vracha-akushera-ginekologa-bez-osmotra', NULL, NULL, NULL, NULL, '26,37', 'прием', 'active', '2025-12-21 16:00:14', '2025-12-21 16:00:14'),
(3, 1, 'Консультация врача-акушера-гинеколога', 'konsultaciya-vracha-akushera-ginekologa', NULL, NULL, NULL, NULL, '35', 'прием', 'active', '2025-12-21 16:00:50', '2025-12-21 16:00:50'),
(4, 2, 'Забор мазка на исследование', 'zabor-mazka-na-issledovanie', NULL, NULL, NULL, NULL, '9', 'манипуляция', 'active', '2025-12-21 16:02:41', '2025-12-21 16:06:22'),
(5, 2, 'Кольпоцитология', 'kolpocitologiya', NULL, NULL, NULL, NULL, '10,80', 'манипуляция', 'active', '2025-12-21 16:05:41', '2025-12-21 16:05:41'),
(6, 2, 'Кольпоскопия простая', 'kolposkopiya-prostaya', NULL, NULL, NULL, NULL, '21', 'манипуляция', 'active', '2025-12-21 16:07:08', '2025-12-21 16:07:08'),
(7, 2, 'Лечебная процедура   (1 ванночка)', 'lechebnaya-procedura-1-vannochka', NULL, NULL, NULL, NULL, '8,10', 'манипуляция', 'active', '2025-12-21 16:08:02', '2025-12-21 16:08:02'),
(8, 2, 'Лечебная процедура   (введение лечебных   тампонов)', 'lechebnaya-procedura-vvedenie-lechebnyh-tamponov', NULL, NULL, NULL, NULL, '8,80', 'манипуляция', 'active', '2025-12-21 16:08:41', '2025-12-21 16:11:34'),
(9, 2, 'Лечебная процедура   (орошение влагалища)', 'lechebnaya-procedura-oroshenie-vlagalishcha', NULL, NULL, NULL, NULL, '9,20', 'манипуляция', 'active', '2025-12-21 16:09:32', '2025-12-21 16:11:41'),
(10, 2, 'Гинекологический массаж', 'ginekologicheskiy-massazh', NULL, NULL, NULL, NULL, '15,00', 'манипуляция', 'active', '2025-12-21 16:10:11', '2025-12-21 16:11:47'),
(11, 2, 'Кольпоскопия расширенная', 'kolposkopiya-rasshirennaya', NULL, NULL, NULL, NULL, '28,30', 'манипуляция', 'active', '2025-12-21 16:10:43', '2025-12-21 16:11:57'),
(12, 2, 'Соскоб цервикального канала', 'soskob-cervikalnogo-kanala', NULL, NULL, NULL, NULL, '17,10', 'манипуляция', 'active', '2025-12-21 16:11:18', '2025-12-21 16:11:18'),
(13, 3, 'Введение внутриматочного   средства контрацепции', 'vvedenie-vnutrimatochnogo-sredstva-kontracepcii', NULL, NULL, NULL, NULL, '27,80', 'операция', 'active', '2025-12-21 16:12:48', '2025-12-21 16:12:48'),
(14, 3, 'Удаление внутриматочного   средства контрацепции', 'udalenie-vnutrimatochnogo-sredstva-kontracepcii', NULL, NULL, NULL, NULL, '26,00', 'операция', 'active', '2025-12-21 16:13:33', '2025-12-21 16:13:33'),
(15, 3, 'Аспирационная биопсия из полости матки', 'aspiracionnaya-biopsiya-iz-polosti-matki', NULL, NULL, NULL, NULL, '28,00', 'операция', 'active', '2025-12-21 16:14:05', '2025-12-21 16:18:26'),
(16, 4, 'Прицельная биопсия шейки матки радиоволновая (радиоприбором)*', 'pricelnaya-biopsiya-sheyki-matki-radiovolnovaya-radiopriborom', NULL, NULL, NULL, NULL, '29,50', 'манипуляция', 'active', '2025-12-21 16:14:42', '2025-12-21 16:14:42'),
(17, 4, 'Радиоволновое удаление папиллом, кондилом наружных половых органов радиоприбором  (1 шт)*', 'radiovolnovoe-udalenie-papillom-kondilom-naruzhnyh-polovyh-organov-radiopriborom-1-sht', NULL, NULL, NULL, NULL, '28,50', 'манипуляция', 'active', '2025-12-21 16:15:18', '2025-12-21 16:17:01'),
(18, 4, 'Коагуляция радиоволновая', 'koagulyaciya-radiovolnovaya', NULL, NULL, NULL, NULL, '34,50', 'операция', 'active', '2025-12-21 16:15:48', '2025-12-21 16:18:36'),
(19, 4, 'Пункция ретенционных кист радиоволновая', 'punkciya-retencionnyh-kist-radiovolnovaya', NULL, NULL, NULL, NULL, '33,10', 'операция', 'active', '2025-12-21 16:16:13', '2025-12-21 16:18:42'),
(20, 4, 'Коагуляция единичных остроконечных кондиллом и (или) папиллом радиоволновая', 'koagulyaciya-edinichnyh-ostrokonechnyh-kondillom-i-ili-papillom-radiovolnovaya', NULL, NULL, NULL, NULL, '28,50', 'операция', 'active', '2025-12-21 16:16:47', '2025-12-21 16:16:47'),
(21, 4, 'Коагуляция множественных остроконечных кондиллом и (или) папиллом радиоволновая', 'koagulyaciya-mnozhestvennyh-ostrokonechnyh-kondillom-i-ili-papillom-radiovolnovaya', NULL, NULL, NULL, NULL, '30,00', 'операция', 'active', '2025-12-21 16:17:46', '2025-12-21 16:17:57'),
(22, 4, 'Введение гинекологического пессария', 'vvedenie-ginekologicheskogo-pessariya', NULL, NULL, NULL, NULL, '25,00', 'операция', 'active', '2025-12-21 16:19:14', '2025-12-21 16:19:22'),
(23, 4, 'Извлечение гинекологического пессария', 'izvlechenie-ginekologicheskogo-pessariya', NULL, NULL, NULL, NULL, '25,00', 'операция', 'active', '2025-12-21 16:19:56', '2025-12-21 16:19:56'),
(24, 4, 'Извлечение и введение гинекологического пессария', 'izvlechenie-i-vvedenie-ginekologicheskogo-pessariya', NULL, NULL, NULL, NULL, '32,00', 'операция', 'active', '2025-12-21 16:20:21', '2025-12-21 16:20:21'),
(25, 4, 'Радиоволновая петлевая электроэксцизия (конизация) шейки матки', 'radiovolnovaya-petlevaya-elektroeksciziya-konizaciya-sheyki-matki', NULL, NULL, NULL, NULL, '65,00', 'операция', 'active', '2025-12-21 16:20:50', '2025-12-21 16:20:50'),
(26, 4, 'Удаление полипа шейки матки с использованием радиоволнового вида энергии', 'udalenie-polipa-sheyki-matki-s-ispolzovaniem-radiovolnovogo-vida-energii', NULL, NULL, NULL, NULL, '28,50', 'операция', 'active', '2025-12-21 16:21:17', '2025-12-21 16:21:17'),
(27, 4, 'Вульвоскопия', 'vulvoskopiya', NULL, NULL, NULL, NULL, '26,20', 'операция', 'active', '2025-12-21 16:21:45', '2025-12-21 16:21:45'),
(28, 4, 'Проведение местной инфильтрационной анестезии', 'provedenie-mestnoy-infiltracionnoy-anestezii', NULL, NULL, NULL, NULL, '6,00', 'операция', 'active', '2025-12-21 16:22:09', '2025-12-21 16:22:09');

-- --------------------------------------------------------

--
-- Структура таблицы `ginecology_service_categories`
--

CREATE TABLE `ginecology_service_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ginecology_service_categories`
--

INSERT INTO `ginecology_service_categories` (`id`, `title`, `slug`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Прием врача-акушера- гинеколога', 'priem-vracha-akushera-ginekologa', NULL, NULL, 'active', '2025-12-21 15:33:07', '2025-12-21 15:33:07'),
(2, 'Гинекологические     манипуляции и процедуры', 'ginekologicheskie-manipulyacii-i-procedury', NULL, NULL, 'active', '2025-12-21 15:33:28', '2025-12-21 15:34:28'),
(3, 'Гинекологические операции', 'ginekologicheskie-operacii', NULL, NULL, 'active', '2025-12-21 15:33:53', '2025-12-21 15:33:53'),
(4, 'Гинекологические     манипуляции, процедуры, операции', 'ginekologicheskie-manipulyacii-procedury-operacii', NULL, NULL, 'active', '2025-12-21 15:34:18', '2025-12-21 15:34:18');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_15_185029_add_isadmin_field_to_users_table', 1),
(5, '2025_12_15_191342_create_categories_table', 2),
(6, '2025_12_15_210853_create_posts_table', 3),
(7, '2025_12_16_102841_create_tags_table', 4),
(8, '2025_12_16_105711_create_post_tag_table', 5),
(11, '2025_12_18_194008_create_doctors_table', 6),
(13, '2025_12_19_123821_create_doctor_sertificates_table', 7),
(14, '2025_12_19_172257_create_doctor_education_table', 8),
(15, '2025_12_19_191145_create_service_categories_table', 9),
(16, '2025_12_19_191234_create_services_table', 9),
(17, '2025_12_19_221053_create_reviews_table', 10),
(18, '2025_12_21_153157_create_ginecology_service_categories_table', 11),
(19, '2025_12_21_153213_create_ginecology_services_table', 11),
(20, '2025_12_21_153320_create_ultrasound_service_categories_table', 11),
(22, '2025_12_21_153327_create_ultrasound_services_table', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','blocked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `views` bigint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `meta_desc`, `content`, `category_id`, `thumb`, `status`, `views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Post1_1', 'post1', 'post1', '<p>post1222</p>', 1, 'uploads/2024-11-01/2.jpg', 'published', 0, '2025-12-15 21:52:17', '2025-12-16 09:10:24', NULL),
(2, 'Post2', 'post2', 'Post2', '<p>Post2</p>', 3, 'uploads/2024-11-01/cake-1869227_1280.jpg', 'published', 0, '2025-12-16 08:54:35', '2025-12-16 09:10:18', NULL),
(3, 'Post3', 'post3', 'Post3', '<p>Post3</p>', 1, 'uploads/2024-11-01/plum-cake-3641849_1920.jpg', 'published', 0, '2025-12-16 09:00:56', '2025-12-16 09:10:07', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint NOT NULL DEFAULT '5',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `review_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `client_name`, `review_text`, `client_photo`, `rating`, `status`, `review_date`, `created_at`, `updated_at`) VALUES
(1, 'Оксана', '<p>Здравствуйте. Сегодня 29.11.2024 была на приёме.В холе девушка приветливая, общительная.Врач Нерезько Светлана Ивановна.Лучшая!Обьяснила,поговорила,спокойно.К токому врачу,ити спокойно и без волнений.Обследование провели внимательно, чётко, не спеша, всё хорошо проверив, и рассмотрев. Огромнейшее спасибо.</p>', NULL, 5, 'active', '2024-11-29', '2025-12-19 21:48:11', '2025-12-19 22:36:19'),
(2, 'annakvitchuk88', '<p>Я думаю, что многие беременные меня поймут, что момент определения пола очень сокровенный. Врач показала ребеночка, на экране всё очень видно, видимо узи аппарат действительно новый и хороший. Мне разрешили сделать фотографии и пригласить мужа!! Теперь храню фотокарточки в новом альбоме) Спасибо доктору Светлане Ивановне!</p>', NULL, 5, 'active', '2023-06-02', '2025-12-21 17:55:47', '2025-12-21 17:55:47'),
(3, 'nurieva_karina', '<p>Благодарю сотрудников &quot;Симеда&quot; за отличное обслуживание и лично врача Нерезько Светлану Ивановну! Консультируюсь у доктора уже несколько лет и полностью доверяю профессионализму. Всегда рассказывает подробно о лечении, дает много советов по профилактике заболеваний, настраивает на оптимизм. В этом медицинском центре очень комфортная и спокойная обстановка, доброжелательный персонал!</p>', NULL, 5, 'active', '2023-06-02', '2025-12-21 17:56:37', '2025-12-21 17:56:37'),
(4, 'Evgeniaa531', '<p>Сегодня впервые была в центре &laquo;Симед&raquo; и осталась под очень приятным впечатлением !записали на прием к гинекологу быстро, вежливая и приятная администратор, что может быть приятнее, чем отсутствие очереди, все четко по времени !особенно порадовало,что на приеме обстановка полностью конфиденциальная, только пациент и врач!большую благодарность выражаю Нерезько Светлане Ивановне, действительно настоящий профессионал своего дела,такая милая,тактичная,создала очень благоприятную обстановку на приеме,очень вежливая,все разложила по полочкам и назначила лечение по существу!спасибо огромное вашему центру!однозначно буду всем рекомендовать!</p>', NULL, 5, 'active', '2023-07-21', '2025-12-21 17:57:38', '2025-12-21 17:57:38'),
(5, 'Пырх', '<p>Отличнейший Врач акушер-генеколог Нерезько Светлана Иванова! Почти два года ходила со своей проблемой по врачам, но, попав к ней, после приема сразу поняла, что это первый врач, который мне посоветовал дельные вещи и объяснил все понятно и грамотно! Очень советую! Прекрасная женщина!</p>', NULL, 5, 'active', '2023-08-18', '2025-12-21 17:58:37', '2025-12-21 17:58:37'),
(6, 'Екатерина', '<p>От посещения данного центра только положительные впечатления. Порадовали доступные цены и индивидуальный подход к каждому пациенту. Ходим всей семьей. Для вас всегда найдут свободное окошко и постараются помочь. Прекрасный медицинский центр с большим перечнем услуг, квалифицированные врачи с многолетним опытом работы и приветливый персонал.</p>', NULL, 5, 'active', '2024-12-18', '2025-12-21 17:59:41', '2025-12-21 17:59:41'),
(7, 'Светлана', '<p>Добрый день.Вчера 6.08.2025. была на приёме.Уже не первый раз посещаю ваш центр.Тихо.Спокойно.Уютно.Приветливая и внимательная администратор ( по телефону тоже,что не мало важно) и , конечно же , профессионал с большой буквы врач Нерезько Светлана Ивановна.С большим уважением и благодарностью.</p>', NULL, 5, 'active', '2025-08-07', '2025-12-21 18:00:36', '2025-12-21 18:00:36');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `category_id`, `title`, `slug`, `image`, `description`, `details`, `duration`, `price`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Первичный прием врача-акушера-гинеколога / Первичный прием врача-акушера-гинеколога без осмотра', 'pervichnyy-priem-vracha-akushera-ginekologa-pervichnyy-priem-vracha-akushera-ginekologa-bez-osmotra', NULL, '<p>dext</p>', '<p>details</p>', '1', '37', 'прием', 'active', '2025-12-19 20:42:35', '2025-12-19 21:05:11'),
(2, 4, 'повторный прием врача-акушера-гинеколога / повторный прием врача-акушера-гинеколога без осмотра', 'povtornyy-priem-vracha-akushera-ginekologa-povtornyy-priem-vracha-akushera-ginekologa-bez-osmotra', NULL, NULL, NULL, NULL, '26,37', 'прием', 'active', '2025-12-21 14:18:37', '2025-12-21 14:18:37'),
(3, 1, 'консультация врача-акушера-гинеколога', 'konsultaciya-vracha-akushera-ginekologa', NULL, NULL, NULL, NULL, '35', 'прием', 'active', '2025-12-21 14:20:26', '2025-12-21 14:20:26'),
(4, 1, 'Первичный прием врача-акушера-гинеколога / Первичный прием врача-акушера-гинеколога без осмотра', 'pervichnyy-priem-vracha-akushera-ginekologa-pervichnyy-priem-vracha-akushera-ginekologa-bez-osmotra-2', NULL, NULL, NULL, NULL, '37', 'прием', 'active', '2025-12-21 15:56:52', '2025-12-21 15:56:52');

-- --------------------------------------------------------

--
-- Структура таблицы `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `service_categories`
--

INSERT INTO `service_categories` (`id`, `title`, `slug`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'УЛЬТРАЗВУКОВАЯ  ДИАГНОСТИКА', 'ultrazvukovaya-diagnostika', 'uploads/2024-11-01/uzi.webp', NULL, '2025-12-19 19:18:22', '2025-12-21 13:11:17'),
(4, 'ГИНЕКОЛОГИЯ', 'ginekologiya', 'uploads/2024-11-01/ginekologia-2048x1366.webp', '<p>jgbcfybt</p>', '2025-12-19 19:23:08', '2025-12-21 13:08:18');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gVCuG5KkewUffZtZoMcxXLAGlyUwGOcgsOkigvjM', 1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiaHhzbGVGOGVTczdPZW9hWTNMRjlCazcxZHFka2dydUptNHQxQkVUciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8vc2ltZWQvcHJpY2VzIjtzOjU6InJvdXRlIjtzOjY6InByaWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo4OiJfb3B0c01ENSI7czozMjoiYjYwNDhhN2Q3MjhkN2Y3ZTRiM2VlNWVlNjNlODQwOTAiO3M6MzoibDFfIjthOjI6e3M6ODoicm9vdHN0YXQiO2E6MDp7fXM6Nzoic3ViZGlycyI7YTo1OntzOjM2OiJIOlxPU1BhbmVsXGhvbWVcc2ltZWRccHVibGljXHVwbG9hZHMiO2I6MTtzOjQ3OiJIOlxPU1BhbmVsXGhvbWVcc2ltZWRccHVibGljXHVwbG9hZHNcMjAyNC0xMS0wMSI7YjowO3M6NDM6Ikg6XE9TUGFuZWxcaG9tZVxzaW1lZFxwdWJsaWNcdXBsb2Fkc1xTZXJ0LTEiO2I6MDtzOjQzOiJIOlxPU1BhbmVsXGhvbWVcc2ltZWRccHVibGljXHVwbG9hZHNcU2VydC0yIjtiOjA7czo0MToiSDpcT1NQYW5lbFxob21lXHNpbWVkXHB1YmxpY1x1cGxvYWRzXFNwZWMiO2I6MDt9fXM6OToiYXJjaGl2ZXJzIjthOjI6e3M6NjoiY3JlYXRlIjthOjM6e3M6MTc6ImFwcGxpY2F0aW9uL3gtdGFyIjthOjM6e3M6MzoiY21kIjtzOjM6InRhciI7czo0OiJhcmdjIjtzOjQ6Ii1jaGYiO3M6MzoiZXh0IjtzOjM6InRhciI7fXM6MTg6ImFwcGxpY2F0aW9uL3gtZ3ppcCI7YTozOntzOjM6ImNtZCI7czozOiJ0YXIiO3M6NDoiYXJnYyI7czo1OiItY3poZiI7czozOiJleHQiO3M6MzoidGd6Ijt9czoxNToiYXBwbGljYXRpb24vemlwIjthOjM6e3M6MzoiY21kIjtzOjExOiJwaHBmdW5jdGlvbiI7czo0OiJhcmdjIjthOjI6e2k6MDtzOjQ6InNlbGYiO2k6MTtzOjEzOiJ6aXBBcmNoaXZlWmlwIjt9czozOiJleHQiO3M6MzoiemlwIjt9fXM6NzoiZXh0cmFjdCI7YTozOntzOjE3OiJhcHBsaWNhdGlvbi94LXRhciI7YTo1OntzOjM6ImNtZCI7czozOiJ0YXIiO3M6NDoiYXJnYyI7czozOiIteGYiO3M6MzoiZXh0IjtzOjM6InRhciI7czo2OiJ0b1NwZWMiO3M6MzoiLUMgIjtzOjc6ImdldHNpemUiO2E6NDp7czo0OiJhcmdjIjtzOjQ6Ii14dmYiO3M6NjoidG9TcGVjIjtzOjE3OiItLXRvLXN0ZG91dHx3YyAtYyI7czo1OiJyZWdleCI7czo0ODoiL14uKyg/OlxyXG58XG58XHIpW15cclxuMC05XSooWzAtOV0rKVteXHJcbl0qJC9zIjtzOjc6InJlcGxhY2UiO3M6MjoiJDEiO319czoxODoiYXBwbGljYXRpb24veC1nemlwIjthOjU6e3M6MzoiY21kIjtzOjM6InRhciI7czo0OiJhcmdjIjtzOjQ6Ii14emYiO3M6MzoiZXh0IjtzOjM6InRneiI7czo2OiJ0b1NwZWMiO3M6MzoiLUMgIjtzOjc6ImdldHNpemUiO2E6NDp7czo0OiJhcmdjIjtzOjQ6Ii14dmYiO3M6NjoidG9TcGVjIjtzOjE3OiItLXRvLXN0ZG91dHx3YyAtYyI7czo1OiJyZWdleCI7czo0ODoiL14uKyg/OlxyXG58XG58XHIpW15cclxuMC05XSooWzAtOV0rKVteXHJcbl0qJC9zIjtzOjc6InJlcGxhY2UiO3M6MjoiJDEiO319czoxNToiYXBwbGljYXRpb24vemlwIjthOjM6e3M6MzoiY21kIjtzOjExOiJwaHBmdW5jdGlvbiI7czo0OiJhcmdjIjthOjI6e2k6MDtzOjQ6InNlbGYiO2k6MTtzOjE1OiJ6aXBBcmNoaXZlVW56aXAiO31zOjM6ImV4dCI7czozOiJ6aXAiO319fXM6ODoidmlkZW9MaWIiO3M6NjoiZmZtcGVnIjtzOjE0OiI6TEFTVF9BQ1RJVklUWSI7aToxNzY2MzM1NjkxO30=', 1766379151);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Tag1', 'tag1', NULL, '2025-12-16 10:24:00', '2025-12-16 10:24:00'),
(2, 'Tag2', 'tag2', NULL, '2025-12-16 10:24:08', '2025-12-16 10:24:08');

-- --------------------------------------------------------

--
-- Структура таблицы `ultrasound_services`
--

CREATE TABLE `ultrasound_services` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ultrasound_services`
--

INSERT INTO `ultrasound_services` (`id`, `category_id`, `title`, `slug`, `image`, `description`, `details`, `duration`, `price`, `unit`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ультразвуковое исследование  органов брюшной полости (осмотр печени, желчного пузыря, поджелудочной железы, обзорное УЗИ кишечника, селезенки, почек, надпочечников и забрюшинных лимфоузлов) дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-organov-bryushnoy-polosti-osmotr-pecheni-zhelchnogo-puzyrya-podzheludochnoy-zhelezy-obzornoe-uzi-kishechnika-selezenki-pochek-nadpochechnikov-i-zabryushinnyh-limfouzlov-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '36,20', NULL, 'active', '2025-12-21 16:48:51', '2025-12-21 16:48:51'),
(2, 1, 'Ультразвуковое исследование  печени и желчевыводящей системы, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-pecheni-i-zhelchevyvodyashchey-sistemy-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '15,50', NULL, 'active', '2025-12-21 16:49:26', '2025-12-21 16:49:26'),
(3, 1, 'Ультразвуковое исследование  поджелудочной железы, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-podzheludochnoy-zhelezy-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '15,10', NULL, 'active', '2025-12-21 16:49:49', '2025-12-21 16:49:49'),
(4, 1, 'Ультразвуковое исследование  селезенки, дуплексное сканирование сосудов одного анатомического региона.', 'ultrazvukovoe-issledovanie-selezenki-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '12,50', NULL, 'active', '2025-12-21 16:50:17', '2025-12-21 16:50:17'),
(5, 1, 'Ультразвуковое исследование кишечника без заполнения жидкостью', 'ultrazvukovoe-issledovanie-kishechnika-bez-zapolneniya-zhidkostyu', NULL, NULL, NULL, NULL, '8,14', NULL, 'active', '2025-12-21 16:50:38', '2025-12-21 16:50:38'),
(6, 1, 'Ультразвуковое исследование    почек и надпочечников; дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-pochek-i-nadpochechnikov-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '18,50', NULL, 'active', '2025-12-21 16:51:03', '2025-12-21 16:51:03'),
(7, 1, 'Ультразвуковое исследование   почек, надпочечников и мочевого пузыря с определением остаточной мочи; дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-pochek-nadpochechnikov-i-mochevogo-puzyrya-s-opredeleniem-ostatochnoy-mochi-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '26,30', NULL, 'active', '2025-12-21 16:51:31', '2025-12-21 16:51:31'),
(8, 1, 'Ультразвуковое исследование  мочевого пузыря с определением остаточной мочи; дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-mochevogo-puzyrya-s-opredeleniem-ostatochnoy-mochi-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '14,50', NULL, 'active', '2025-12-21 16:51:58', '2025-12-21 16:51:58'),
(9, 1, 'Ультразвуковое  исследование  предстательной железы и мочевого пузыря с определением остаточной мочи (через живот), дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-predstatelnoy-zhelezy-i-mochevogo-puzyrya-s-opredeleniem-ostatochnoy-mochi-cherez-zhivot-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '21,50', NULL, 'active', '2025-12-21 16:52:20', '2025-12-21 16:52:20'),
(10, 1, 'Ультразвуковое исследование  предстательной железы (трансректально) и мочевого пузыря с определением остаточной мочи с дуплексным сканированием сосудов', 'ultrazvukovoe-issledovanie-predstatelnoy-zhelezy-transrektalno-i-mochevogo-puzyrya-s-opredeleniem-ostatochnoy-mochi-s-dupleksnym-skanirovaniem-sosudov', NULL, NULL, NULL, NULL, '25,80', NULL, 'active', '2025-12-21 16:52:49', '2025-12-21 16:52:49'),
(11, 1, 'Ультразвуковое исследование  мошонки, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-moshonki-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '20,20', NULL, 'active', '2025-12-21 16:53:33', '2025-12-21 16:53:33'),
(12, 1, 'Ультразвуковое исследование  мошонки, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-moshonki-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona-2', NULL, NULL, NULL, NULL, '19,00', NULL, 'active', '2025-12-21 16:54:06', '2025-12-21 16:54:06'),
(13, 1, 'Ультразвуковое исследование матки и придатков (трансвагинально), дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-matki-i-pridatkov-transvaginalno-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '19,80', NULL, 'active', '2025-12-21 16:54:27', '2025-12-21 16:54:27'),
(14, 1, 'Ультразвуковое комплексное исследование  органов малого таза трансвагинально и трансабдоминально (матка, придатки в т.ч. на предмет подтверждения беременности)', 'ultrazvukovoe-kompleksnoe-issledovanie-organov-malogo-taza-transvaginalno-i-transabdominalno-matka-pridatki-v-t-ch-na-predmet-podtverzhdeniya-beremennosti', NULL, NULL, NULL, NULL, '33,80', NULL, 'active', '2025-12-21 16:54:51', '2025-12-21 16:54:51'),
(15, 1, 'Ультразвуковое комплексное исследование  органов малого таза трансвагинально и трансабдоминально (матка, придатки в т.ч. на предмет подтверждения беременности)', 'ultrazvukovoe-kompleksnoe-issledovanie-organov-malogo-taza-transvaginalno-i-transabdominalno-matka-pridatki-v-t-ch-na-predmet-podtverzhdeniya-beremennosti-2', NULL, NULL, NULL, NULL, '14,13', NULL, 'active', '2025-12-21 16:55:16', '2025-12-21 16:55:16'),
(16, 1, 'Ультразвуковое исследование плода в I триместре с 11 до 14 недель беременности', 'ultrazvukovoe-issledovanie-ploda-v-i-trimestre-s-11-do-14-nedel-beremennosti', NULL, NULL, NULL, NULL, '19,85', NULL, 'active', '2025-12-21 16:55:49', '2025-12-21 16:55:49'),
(17, 1, 'Ультразвуковое исследование плода в I триместре с 11 до 14 недель беременности или во II или III триместре беременности при наличии пороков плода', 'ultrazvukovoe-issledovanie-ploda-v-i-trimestre-s-11-do-14-nedel-beremennosti-ili-vo-ii-ili-iii-trimestre-beremennosti-pri-nalichii-porokov-ploda', NULL, NULL, NULL, NULL, '31,71', NULL, 'active', '2025-12-21 16:56:09', '2025-12-21 16:56:09'),
(18, 1, 'Ультразвуковое  исследование   при беременности - II-III триместр дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-pri-beremennosti-ii-iii-trimestr-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '34,00', NULL, 'active', '2025-12-21 16:56:37', '2025-12-21 16:56:37'),
(19, 1, 'Ультразвуковое исследование при беременности II-III триместр  (двойня) матки и придатков с мочевым пузырем (трансабдоминально) с дуплексным сканированием сосудов плода (дважды), сосудов пуповины (дважды).', 'ultrazvukovoe-issledovanie-pri-beremennosti-ii-iii-trimestr-dvoynya-matki-i-pridatkov-s-mochevym-puzyrem-transabdominalno-s-dupleksnym-skanirovaniem-sosudov-ploda-dvazhdy-sosudov-pupoviny-dvazhdy', NULL, NULL, NULL, NULL, '51,20', NULL, 'active', '2025-12-21 16:57:00', '2025-12-21 16:57:00'),
(20, 1, 'Ультразвуковое исследование    плода  во II или III триместре беременности; дуплексное сканирование сосудов плода, сосудов пуповины, сосудов матки', 'ultrazvukovoe-issledovanie-ploda-vo-ii-ili-iii-trimestre-beremennosti-dupleksnoe-skanirovanie-sosudov-ploda-sosudov-pupoviny-sosudov-matki', NULL, NULL, NULL, NULL, '40,20', NULL, 'active', '2025-12-21 16:57:29', '2025-12-21 16:57:29'),
(21, 1, 'Ультразвуковое исследование   щитовидной железы с региональными лимфоузлами, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-shchitovidnoy-zhelezy-s-regionalnymi-limfouzlami-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '19,30', NULL, 'active', '2025-12-21 16:57:51', '2025-12-21 16:57:51'),
(22, 1, 'Ультразвуковое исследование   молочных желез с региональными лимфоузлами у женщин, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-molochnyh-zhelez-s-regionalnymi-limfouzlami-u-zhenshchin-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '24,80', NULL, 'active', '2025-12-21 16:58:14', '2025-12-21 16:58:14'),
(23, 1, 'Ультразвуковое исследование    молочных (грудных)  желез с лимфатическими поверхностными узлами; лимфатических узлов (одна область с обеих сторон); у мужчин; дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-molochnyh-grudnyh-zhelez-s-limfaticheskimi-poverhnostnymi-uzlami-limfaticheskih-uzlov-odna-oblast-s-obeih-storon-u-muzhchin-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '24,80', NULL, 'active', '2025-12-21 16:58:35', '2025-12-21 16:58:35'),
(24, 1, 'Ультразвуковое исследование  слюнных (подчелюстных) желез, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-slyunnyh-podchelyustnyh-zhelez-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '12,50', NULL, 'active', '2025-12-21 16:58:55', '2025-12-21 16:58:55'),
(25, 1, 'Ультразвуковое исследование мягких тканей (1 области) с дуплексным сканированием сосудов', 'ultrazvukovoe-issledovanie-myagkih-tkaney-1-oblasti-s-dupleksnym-skanirovaniem-sosudov', NULL, NULL, NULL, NULL, '18,90', NULL, 'active', '2025-12-21 16:59:18', '2025-12-21 16:59:18'),
(26, 1, 'Ультразвуковое исследование   суставов парных,  дуплексное сканирование сосудов одного анатомического региона; цифровая трехмерная реконструкция сосудов (один сосудистый бассейн)', 'ultrazvukovoe-issledovanie-sustavov-parnyh-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona-cifrovaya-trehmernaya-rekonstrukciya-sosudov-odin-sosudistyy-basseyn', NULL, NULL, NULL, NULL, '25,70', NULL, 'active', '2025-12-21 16:59:42', '2025-12-21 16:59:42'),
(27, 1, 'Ультразвуковое исследование головного мозга новорожденного (нейросонография)', 'ultrazvukovoe-issledovanie-golovnogo-mozga-novorozhdennogo-neyrosonografiya', NULL, NULL, NULL, NULL, '22,80', NULL, 'active', '2025-12-21 17:00:04', '2025-12-21 17:00:04'),
(28, 1, 'Ультразвуковое исследование лимфатических узлов (одна область с обеих сторон); дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-limfaticheskih-uzlov-odna-oblast-s-obeih-storon-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '10,80', NULL, 'active', '2025-12-21 17:00:30', '2025-12-21 17:00:30'),
(29, 1, 'Ультразвуковое исследование легких с плевральными полостями', 'ultrazvukovoe-issledovanie-legkih-s-plevralnymi-polostyami', NULL, NULL, NULL, NULL, '31,00', NULL, 'active', '2025-12-21 17:00:52', '2025-12-21 17:00:52'),
(30, 1, 'Дуплексное сканирование сосудов пуповины', 'dupleksnoe-skanirovanie-sosudov-pupoviny', NULL, NULL, NULL, NULL, '11,06', NULL, 'active', '2025-12-21 17:01:15', '2025-12-21 17:01:15'),
(31, 1, 'Дуплексное сканирование сосудов плода и матки', 'dupleksnoe-skanirovanie-sosudov-ploda-i-matki', NULL, NULL, NULL, NULL, '16,88', NULL, 'active', '2025-12-21 17:01:38', '2025-12-21 17:01:38'),
(32, 1, 'Ультразвуковое исследование биофизического профиля плода', 'ultrazvukovoe-issledovanie-biofizicheskogo-profilya-ploda', NULL, NULL, NULL, NULL, '19,79', NULL, 'active', '2025-12-21 17:01:59', '2025-12-21 17:01:59'),
(33, 1, 'Эхокардиография (M + B режим + допплер + цветное картирование + тканевая допплерография) на цветных цифровых ультразвуковых аппаратах с наличием сложного программного обеспечения (количество цифровых каналов более 512)', 'ehokardiografiya-m-b-rezhim-doppler-cvetnoe-kartirovanie-tkanevaya-dopplerografiya-na-cvetnyh-cifrovyh-ultrazvukovyh-apparatah-s-nalichiem-slozhnogo-programmnogo-obespecheniya-kolichestvo-cifrovyh-kanalov-bolee-512', NULL, NULL, NULL, NULL, '39,70', NULL, 'active', '2025-12-21 17:02:22', '2025-12-21 17:02:22'),
(34, 1, 'Ультразвуковое исследование   сосудов и артерий - БЦА (брахиоцефальных т.е. плечеголовных артерий и артерий (триплексное исследование: В-режим, цветовое картирование и импульсная доплерография), мягких тканей, лимфотических узлов одного анатомического региона, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-sosudov-i-arteriy-bca-brahiocefalnyh-t-e-plechegolovnyh-arteriy-i-arteriy-tripleksnoe-issledovanie-v-rezhim-cvetovoe-kartirovanie-i-impulsnaya-doplerografiya-myagkih-tkaney-limfoticheskih-uzlov-odnogo-anatomicheskogo-regiona-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '29,80', NULL, 'active', '2025-12-21 17:04:14', '2025-12-21 17:04:14'),
(35, 1, 'Ультразвуковое исследование   сосудов и вен - БЦА (брахиоцефальных т.е. плечеголовных артерий и вен (триплексное исследование: В-режим, цветовое картирование и импульсная доплерография), дуплексное сканирование сосудов одного анатомического региона, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-sosudov-i-ven-bca-brahiocefalnyh-t-e-plechegolovnyh-arteriy-i-ven-tripleksnoe-issledovanie-v-rezhim-cvetovoe-kartirovanie-i-impulsnaya-doplerografiya-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '29,80', NULL, 'active', '2025-12-21 17:04:42', '2025-12-21 17:04:42'),
(36, 1, 'Дуплексное сканирование сосудов с цветным и энергетическим допплером органов брюшной полости и забрюшинного пространства', 'dupleksnoe-skanirovanie-sosudov-s-cvetnym-i-energeticheskim-dopplerom-organov-bryushnoy-polosti-i-zabryushinnogo-prostranstva', NULL, NULL, NULL, NULL, '25,72', NULL, 'active', '2025-12-21 17:05:07', '2025-12-21 17:05:07'),
(37, 1, 'Дуплексное сканирование сосудов одного анатомического региона', 'dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '16,24', NULL, 'active', '2025-12-21 17:05:23', '2025-12-21 17:05:23');

-- --------------------------------------------------------

--
-- Структура таблицы `ultrasound_service_categories`
--

CREATE TABLE `ultrasound_service_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ultrasound_service_categories`
--

INSERT INTO `ultrasound_service_categories` (`id`, `title`, `slug`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'УЗИ', 'uzi', NULL, NULL, 'active', '2025-12-21 15:47:49', '2025-12-21 15:47:49');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'coooll81@gmail.com', 1, NULL, '$2y$12$0nvvcsWU8dCkpY/MZkn97eK1v6FXNpl/NtYdpP2qcxuh7r/KF/uvW', NULL, '2025-12-15 18:08:16', '2025-12-15 18:08:16'),
(2, 'TestUser', 'user1@mail.com', 0, NULL, '$2y$12$9uJMkiVoJYSAtDZ4d6EJZOR7QkQSDOtIRHni3dKnO87LHmoTy39Ae', NULL, '2025-12-16 11:30:38', '2025-12-16 11:34:21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_slug_unique` (`slug`);

--
-- Индексы таблицы `doctor_education`
--
ALTER TABLE `doctor_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_education_doctor_id_foreign` (`doctor_id`);

--
-- Индексы таблицы `doctor_sertificates`
--
ALTER TABLE `doctor_sertificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_sertificates_doctor_id_foreign` (`doctor_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `ginecology_services`
--
ALTER TABLE `ginecology_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ginecology_services_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `ginecology_service_categories`
--
ALTER TABLE `ginecology_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Индексы таблицы `ultrasound_services`
--
ALTER TABLE `ultrasound_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ultrasound_services_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `ultrasound_service_categories`
--
ALTER TABLE `ultrasound_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `doctor_education`
--
ALTER TABLE `doctor_education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `doctor_sertificates`
--
ALTER TABLE `doctor_sertificates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ginecology_services`
--
ALTER TABLE `ginecology_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `ginecology_service_categories`
--
ALTER TABLE `ginecology_service_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ultrasound_services`
--
ALTER TABLE `ultrasound_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `ultrasound_service_categories`
--
ALTER TABLE `ultrasound_service_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `doctor_education`
--
ALTER TABLE `doctor_education`
  ADD CONSTRAINT `doctor_education_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `doctor_sertificates`
--
ALTER TABLE `doctor_sertificates`
  ADD CONSTRAINT `doctor_sertificates_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ginecology_services`
--
ALTER TABLE `ginecology_services`
  ADD CONSTRAINT `ginecology_services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `ginecology_service_categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Ограничения внешнего ключа таблицы `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ultrasound_services`
--
ALTER TABLE `ultrasound_services`
  ADD CONSTRAINT `ultrasound_services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `ultrasound_service_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
