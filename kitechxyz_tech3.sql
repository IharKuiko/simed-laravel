-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Дек 30 2025 г., 00:53
-- Версия сервера: 5.7.44-cll-lve
-- Версия PHP: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kitechxyz_tech3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Нерезько Светлана Ивановна', 'Врач-акушер-гинеколог.  Врач ультразвуковой диагностики', 'nerezko-svetlana-ivanovna', 'Первая квалификационная категория', '1989, Минский ордена Трудового Красного Знамени государственный медицинский институт', '30 лет', '<ul>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1990 Акушерство и гинекология</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">13.01-24.01.2003 Избранные вопросы акушерства и гинекологии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">28.11-09.12.2005 Лечебно-профилактическая помощь женщинам при бесплодии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">20.02-03.03.2006 Детская гинекология</span></span></li>\r\n</ul>', 'active', 'uploads/Spec/doct1.webp', '2025-12-18 22:12:17', '2025-12-22 22:25:53'),
(2, 'Нерезько Светлана Ивановна', 'Врач-акушер-гинеколог.  Врач ультразвуковой диагностики', 'nerezko-svetlana-ivanovna-2', 'Первая квалификационная категория', '<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1989, Минский ордена Трудового Красного Знамени государственный медицинский институт</span></span></p>', '30 лет', '<ul>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1990 Акушерство и гинекология</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">13.01-24.01.2003 Избранные вопросы акушерства и гинекологии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">28.11-09.12.2005 Лечебно-профилактическая помощь женщинам при бесплодии</span></span></li>\r\n	<li><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">20.02-03.03.2006 Детская гинекология</span></span></li>\r\n</ul>', 'inactive', 'uploads/Spec/doct1.webp', '2025-12-18 22:15:52', '2025-12-19 13:01:05'),
(3, 'Целуйко  Светлана Адамовна', 'Врач ультразвуковой диагностики', 'celuyko-svetlana-adamovna', 'Первая квалификационная категория', '1997, Гомельский государственный медицинский институт', '25 лет', '<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">18.04-29.04.2011 Организация медицинской помощи работающим во вредных условиях</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">16.04-16.05.2012 Клиническая кардиология</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">24.11-05.12.2014 Ультразвуковая диагностика заболевания сердца и сосудов</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">24.08-18.12.2015 Ультразвуковая диагностика. Переподготовка&nbsp; в ГУО &laquo;Белорусская медицинская академия последипломного образования&raquo;</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">09.12-20.12.2019 Диагностические пункции под ультразвуковым контролем</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">18.09-29.09.2023 Ультразвуковая диагностика заболеваний опорно-двигательной системы </span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">10.06-14.06.2024 Ультразвуковая диагностика патологии вен нижних конечностей</span></span></p>\r\n\r\n<p><span style=\"font-size:8.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">17.06-21.06.2024 Ультразвуковая диагностика патологии органов пищеварения</span></span></p>', 'active', 'uploads/Spec/doct2.webp', '2025-12-19 09:17:18', '2025-12-22 22:26:20');

-- --------------------------------------------------------

--
-- Структура таблицы `doctor_education`
--

CREATE TABLE `doctor_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
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
(9, 1, '14.11-13.12.2016 Современные методы диагностики и лечения гинекологических заболеваний в различные периоды жизни женщины. Патология мочевыводящей системы и дисфункция тазового дна у женщин. Кольпоскопический скрининг', '2025-12-19 17:20:11', '2025-12-19 17:20:11'),
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
(21, 3, '17.06-21.06.2024 Ультразвуковая диагностика патологии органов пищеварения', '2025-12-19 17:24:00', '2025-12-19 17:24:00');

-- --------------------------------------------------------

--
-- Структура таблицы `doctor_sertificates`
--

CREATE TABLE `doctor_sertificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','blocked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT '5',
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('026LkeW6EZdO0hGwUVEgj2QUOO4ba3Asy7a52F6E', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1ppUWpTMnloQkRsOUI3MzBvNDVKU1B3aHdWUEVlY3Eyb2lrOUtFciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTQwOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1teWFna2loLXRrYW5leS0xLW9ibGFzdGktcy1kdXBsZWtzbnltLXNrYW5pcm92YW5pZW0tc29zdWRvdiI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767026860),
('0DkySiiwlklPFECm8cWBIS0kla74SJq8n9mjfJ14', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoielA2V1JhbEFpYmtIUHRneTg5dEVQeVBqaGhjTTVScG1Ic2o3NjNkNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9kb2N0b3JzL2luZGV4Lmh0bWxAcD0zNS5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023654),
('16QodFcWOd1rDT8Q5BMEl9sLZsgv2PsQGEzxg658', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU9KeU52VmRwU0JaQkk1eUZ3R3R2cXhiVGJIend3R3pPZld0Rm9EOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjEuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033698),
('1efdwZvtBd8MZRZCSgtIONpCtoncWKS8fvZ85GJb', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3IzWjkxZ2NFcFZycDRuQ1ZsbkdnQUo4Q0RVUzZZNVUyYlp4UkZIVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY4OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9laG9rYXJkaW9ncmFmaXlhLW0tYi1yZXpoaW0tZG9wcGxlci1jdmV0bm9lLWthcnRpcm92YW5pZS10a2FuZXZheWEtZG9wcGxlcm9ncmFmaXlhLW5hLWN2ZXRueWgtY2lmcm92eWgtdWx0cmF6dnVrb3Z5aC1hcHBhcmF0YWgtcy1uYWxpY2hpZW0tc2xvemhub2dvLXByb2dyYW1tbm9nby1vYmVzcGVjaGVuaXlhLWtvbGljaGVzdHZvLWNpZnJvdnloLWthbmFsb3YtYm9sZWUtNTEyIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767026928),
('1KiTzyAHBhmU2cByfc68R2sLXsAXNq1cYFVShvFv', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2FCVGVqYzk2a25tQWRVdVdVUE81bkFjRDYzeEFCYmpjYWwxaG9IYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTMyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9rb2FndWx5YWNpeWEtZWRpbmljaG55aC1vc3Ryb2tvbmVjaG55aC1rb25kaWxsb20taS1pbGktcGFwaWxsb20tcmFkaW92b2xub3ZheWEiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026829),
('1sO2hobDHEC6c6aMl9YBS2H6GNOgPlo01ShmntOw', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHltTUtoVUR0a0dzclZwM0hRWWU1TWZWMk9nUmtrVkx5RE14SjRRYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTE1Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028437),
('2eUuU9369QBTxH4t5iadDtPW8fKU4alqtW2GN63z', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzhYOFAyaEc0Skp2Q1J0cTBhUDZ0UUlVc0g5Z1NxajFLVTRiSTVZaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6OTc6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL3Z2ZWRlbmllLWdpbmVrb2xvZ2ljaGVza29nby1wZXNzYXJpeWEiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023470),
('2oT7q3b9ygyIqylElWKbYoftIoy34OIyrn4qj6lm', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGhDZlhhdVlubjhpVDBkUGx5aHR1MlM5NVJsdTBSS3RpTFl6WnZKZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTI2OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy91ZGFsZW5pZS1wb2xpcGEtc2hleWtpLW1hdGtpLXMtaXNwb2x6b3ZhbmllbS1yYWRpb3ZvbG5vdm9nby12aWRhLWVuZXJnaWkiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026800),
('30YWJQ8dKSV143JEnrblEdeZ0OD4ywjvbSPSSLtU', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUpTM3lZUkNlblYwZkVOc1BDVFhTTjZtRUo2VnhubTBwblBVQ1ZkSSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTE1Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028980),
('333qTSdxzzNHKe2CtEb1SLlwdmdMdzokVDOrl3qG', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDRGOFRFcEZvQ2JXQmtaVFdnY3NhWUg5R2FZdmZqOU1ONm92d3ZiQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MzguaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767028776),
('3HbLRLFjvzWvRrv5PeefEI1YEjin6axF5MATABT3', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0M1THVZcHRoemE3TUZ6RjZDQ1lkMjZZTmQyREZMUkt6dnVJZjExbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RhdGEtcHJpdmFjeSI7czo1OiJyb3V0ZSI7czoxMjoiZGF0YS1wcml2YWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026368),
('3UThP7IrPLjZuzqvFK7CeE8peU0blNiaw93aM1Mk', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjNSNUpDNzhEYXl3Y1o3TEpKa29qUWlTSlZDeDhnRGUyYXZMZ3pFVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtcG9jaGVrLW5hZHBvY2hlY2huaWtvdi1pLW1vY2hldm9nby1wdXp5cnlhLXMtb3ByZWRlbGVuaWVtLW9zdGF0b2Nobm95LW1vY2hpLWR1cGxla3Nub2Utc2thbmlyb3ZhbmllLXNvc3Vkb3Ytb2Rub2dvLWFuYXRvbWljaGVza29nby1yZWdpb25hIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022893),
('4Xyy5WQbMyskTMhnjYJb8TAOfWgZo3Nqn3mkAiQl', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEN2VTJ0TzFUdXA0U1l5bXBuWWtMN3BYajlaWGFnSVhuY2IwdHF0WiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjQuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033813),
('56KiWUxOXfXjldqXej9Rc8jKgDsr4I8nwHavMpId', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlJOMWh6YUVyYU5Zc3NCR0VVUjNzM0t1a0hlcEZEV2JabXF2eFQ3RCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9kb2N0b3JzL2luZGV4Lmh0bWxAcD0xMjQuaHRtbCI7czo1OiJyb3V0ZSI7czoxNToiZG9jdG9yc19kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023653),
('5C3ZBvbcE6wIRcFK7WbOXJXJ3sndf9rVADHeVysJ', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEN4VXZtOGlYaVV6emZRTndWSHVBellsM01xZWZZVHR0bUJmMFphdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2RhdGEtcHJpdmFjeSI7czo1OiJyb3V0ZSI7czoxMjoiZGF0YS1wcml2YWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022972),
('5FwLGhTrlLI3uPssYYs41WwGvwDP3uvW44uxUWPG', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlJlelVqaEV3ekxEbFVla3dob2FNVmh1dzVIVmdTcm9MNjFpRHJ2bCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767029718),
('5IHYjQKRguDD1PU6BG7g2K1rcTOS5dzpNSERlBVp', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG45UFRXSkV0TWFLN1RjM2tJeTBTQlo3dW9FUGhIMWEzWHJzWlJkTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTI0Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028532),
('5NuWLxg5t4P1zBmUDNXVk9sS9B2P08EbaGukRY69', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDdXS0dGNzJKU0pOekt2NDJUenZlTTA3aGNseHlXOFpQUkV1YWpzTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTA3OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy91ZGFsZW5pZS12bnV0cmltYXRvY2hub2dvLXNyZWRzdHZhLWtvbnRyYWNlcGNpaSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023475),
('6lJQTQ8Szfqfr2lIdI8f7e9uYP2nLSGpILJftZGW', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTBNVnNpRWEwancxWnkwQ2FoOTJST0kwcm1NVjBpVWc4R1dNNW1veSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MzIuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767028674),
('74BSydq7MKxzXYqGvaidZaoe5aAnxP7bP58pDEPh', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkE3Y1BQOHVySmdGeml1a1FRendHaVRpRnp3ZFVrbHhVbHBJM2dEMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zNS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029510),
('7PtiPIdLDJz9jPpW0KcmCeL9vogq9XXnwCTtcFnx', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVhtVXFDVzliTkRQSHdmVVhQS3ZNVWxoZUJYT0VyZk5hUEJVVUF6MiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2RvY3RvcnMvaW5kZXguaHRtbEBwPTEyMS5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023934),
('7VLoQmEf3c6zOdWNUw8KFTkqpxRvnM5tbTc30Lg5', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzZWcDVDbXBqeEFWZzN1eGRLVzNvOVJMS3NNeXVFUTJ1M2RyMVlERyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzEyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1vcmdhbm92LWJyeXVzaG5veS1wb2xvc3RpLW9zbW90ci1wZWNoZW5pLXpoZWxjaG5vZ28tcHV6eXJ5YS1wb2R6aGVsdWRvY2hub3ktemhlbGV6eS1vYnpvcm5vZS11emkta2lzaGVjaG5pa2Etc2VsZXplbmtpLXBvY2hlay1uYWRwb2NoZWNobmlrb3YtaS16YWJyeXVzaGlubnloLWxpbWZvdXpsb3YtZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026939),
('7vvIOGSxSenuw5c4JGiYKDUP1uEdhwML9Df3VWhJ', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUxWTFNKTUZFMWNsUDU2d1dIajlUUzJYM1gyYm91QWZubkxwa2dQTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0yOS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033636),
('83CEQFl89nKATpxrKEpvyL0gpYy8elVp0nFWEI0H', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWENTRlZaVUw3Qzh5TkhrVVdyWTZoWkxkNjM5cExqNThWSk9tRmR0NyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTExNS5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767027979),
('a4q9EBaks3xI46dZfTaAUv2JlO2NGFqqcFUQrSZh', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXJ2NERERUZXREtOcVpXZTFVU3dENDZzRmFGVndLd1BkcHZPT2dtWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTg5OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1zLWN2ZXRueW0taS1lbmVyZ2V0aWNoZXNraW0tZG9wcGxlcm9tLW9yZ2Fub3YtYnJ5dXNobm95LXBvbG9zdGktaS16YWJyeXVzaGlubm9nby1wcm9zdHJhbnN0dmEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022882),
('A5CcXDQaelG3rSlrCQGMFJQw1nBqvSKHLb3C61ti', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidG83Y3pXVHFmRXMxNEdPYlJTb2drUlR2Q1ZhaVRKa2hza3NoQ2xLZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MzUuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767028641),
('ANzRlripLu6q1wPayxWLfHYPdnlvqg6C3nP9xmUx', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibm1QbVV6UWpMekwzUjdCVWh2cVpZWXlWZXdqTG1leEI1YmJENWhYWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Nzk6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2dpbmVrb2xvZ2ljaGVza2l5LW1hc3NhemgiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026748),
('asx4qvkcZZEvUE4IB2r9a7ipwSXR7Y28aYwppgw0', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkVIRXlxNEx5UFk1RkdvNUVaSE9YRW1sS0ZiNE1PQlRBaHVKMkg4YiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6OTA6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9zb3Nrb2ItY2VydmlrYWxub2dvLWthbmFsYSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767022608),
('aUDSvthHb839uwzCUXVkrxMY37aNSk8gczbKUR4T', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmZycjdYZUdGaTdTajhpdUNQbDVJSndyMW9SR1VyRUpvMVVsSWJqTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjAxOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtbGltZmF0aWNoZXNraWgtdXpsb3Ytb2RuYS1vYmxhc3Qtcy1vYmVpaC1zdG9yb24tZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022852),
('B43bVqwTTZl7DcCGJFJcYwPJxqMcrRoDdWfWNlhP', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWZleHhxZkYxZW9yU3RCcEptNE5vVVlIdTJ3NTlrdlRzQW1NZm5BYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Nzk6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9rb2xwb2NpdG9sb2dpeWEiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022634),
('B9XYNF8W35mFawQtKbywRZQNRjhZS05JW49GkoyJ', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVRIUjFabGt3WFlXUms4V1FVaWRXUTd1VkZUUE5jVTJBWXVNWUZnMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTgyOiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1wcmktYmVyZW1lbm5vc3RpLWlpLWlpaS10cmltZXN0ci1kdXBsZWtzbm9lLXNrYW5pcm92YW5pZS1zb3N1ZG92LW9kbm9nby1hbmF0b21pY2hlc2tvZ28tcmVnaW9uYSI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023515),
('BFFJNgCXoxQhwaBwoYScA2x31QZ7NbC2YfTBNzoz', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1lPdTBLUUVTUWFTMGNpamZkeVR2YlJ3TGZ0NmJyYnA0cUtXcDlsMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc0OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9laG9rYXJkaW9ncmFmaXlhLW0tYi1yZXpoaW0tZG9wcGxlci1jdmV0bm9lLWthcnRpcm92YW5pZS10a2FuZXZheWEtZG9wcGxlcm9ncmFmaXlhLW5hLWN2ZXRueWgtY2lmcm92eWgtdWx0cmF6dnVrb3Z5aC1hcHBhcmF0YWgtcy1uYWxpY2hpZW0tc2xvemhub2dvLXByb2dyYW1tbm9nby1vYmVzcGVjaGVuaXlhLWtvbGljaGVzdHZvLWNpZnJvdnloLWthbmFsb3YtYm9sZWUtNTEyIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767023544),
('bI7FKKqhrlkGwlXQ9hd2dQ0Coc6eURe2S2k5gAqx', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEpNczJQZ1VPVGtMVTE3clYxVTBKN3IzN1RneWpSSmluYkhIV1NCeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTQwOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtcGxvZGEtdi1pLXRyaW1lc3RyZS1zLTExLWRvLTE0LW5lZGVsLWJlcmVtZW5ub3N0aSI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767022806),
('bK8ib74lWv3EVWTggTtPkezjbnRJDolDA9ICIu1f', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXdZSThZcVJRZDNhS0xQS2I3aEpsT2tLRGxSSG9lRVA2eTl5QXpXZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MjkuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767028759),
('bqAY4rOfgLSOIdPLFrlOeyogEuseRcBmuKSXeCwt', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamJXZm02NUc2Y1VRMUNpaWpzcm16OU4xYUlmOTBBOGk4S2pkTkVxeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTI0Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028749),
('bShk3IT01m9KMeYzVz7WIeKfVylHQSCPdJguJNpm', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREVsZnFHMjM5VDl0ZGZFeE42UVVSbTdUS1drMk9xVlRzRjUzTXZXciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTY0OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtbW9zaG9ua2ktZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEtMiI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767022818),
('C5eQrNQNQ9UC02qUE2RmmLgtOqVx0ddWDknNNyre', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmRoaDFYZTRlckJSbHBCNDR4azZJU3dqbDlSUzhDSEdPVGZreHJHMiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MzIuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767028532),
('ChC7g9Pqz8HvK9TToRx2FAIsbST94DcyBRnzrlpW', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0FxRmpDeXpraXhaT1FRbGk4em9GWmtKZWZRT1c5eDBhYnQxRVR6eCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTM2OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvdWRhbGVuaWUtcG9saXBhLXNoZXlraS1tYXRraS1zLWlzcG9sem92YW5pZW0tcmFkaW92b2xub3ZvZ28tdmlkYS1lbmVyZ2lpIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022768),
('Cvg8hYls3EcRz0MJVMEXILRYzjvoJVFmzowRJ4eH', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZERpNXQzQXJuVFdVSjRiczhKRGVJU2k4MmQ2YW5vUHZuUGpZTE83SCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2RvY3RvcnMvaW5kZXguaHRtbEBwPTM1Lmh0bWwiO3M6NToicm91dGUiO3M6MTU6ImRvY3RvcnNfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767023622),
('dcJbd8n47ic3MMV4qJVQx3cSuGO3DByPmUTflNQU', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTNQV3ByZTRCaVBrS1l5dENxYnZhTkxydnRreGZ2ZHVoU0d0amlzNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2F2LXBvbGljeSI7czo1OiJyb3V0ZSI7czo5OiJhdi1wb2xpY3kiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767022970),
('Dh6e63T1gEQRVHn8ZvyCHU1mg2X7b1N5yuRo8VSE', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHp4VE5HSHh2SkM0ak40bzZ1ZVlhZXFZaHVBdHZsbERpWVRYVElnYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTU3OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9wb3Z0b3JueXktcHJpZW0tdnJhY2hhLWFrdXNoZXJhLWdpbmVrb2xvZ2EtcG92dG9ybnl5LXByaWVtLXZyYWNoYS1ha3VzaGVyYS1naW5la29sb2dhLWJlei1vc21vdHJhIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767023579),
('EAfYdMYmieh0eOElNXq0icuqfoAhcvEUQclj60v3', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXU1TzhONlQ5VUhwckVSTjBSdVZSbHQ4NEd6dmpDWXRaUklUaWM3UyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTE4Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028648),
('eAj13lQONdxwAXQFTamvTwBvse2OhL4Uh7Lw80nz', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3F6dUZMSTFYU0hhTGFRbXM1S1Z3Q1ZCUmtYSVBHVUJGZGE0Q1FVUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzIyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtb3JnYW5vdi1icnl1c2hub3ktcG9sb3N0aS1vc21vdHItcGVjaGVuaS16aGVsY2hub2dvLXB1enlyeWEtcG9kemhlbHVkb2Nobm95LXpoZWxlenktb2J6b3Jub2UtdXppLWtpc2hlY2huaWthLXNlbGV6ZW5raS1wb2NoZWstbmFkcG9jaGVjaG5pa292LWktemFicnl1c2hpbm55aC1saW1mb3V6bG92LWR1cGxla3Nub2Utc2thbmlyb3ZhbmllLXNvc3Vkb3Ytb2Rub2dvLWFuYXRvbWljaGVza29nby1yZWdpb25hIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022929),
('ejVmaKCUlcjlOcjcsEpOS0XiHoktq0LrARzBCC6h', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjUxM0VSSUxBTGtZYzNmcHZxWTRhSVkwSXdCS0FJVUZDcUJHWk5iaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9yYWRpb3ZvbG5vdmF5YS1wZXRsZXZheWEtZWxla3Ryb2Vrc2Npeml5YS1rb25pemFjaXlhLXNoZXlraS1tYXRraSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023472),
('EKYzGTYPBXQuq5yinjeUps4hNRVwuhkV3iwAdjVY', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHE3bzlTWGpiWGg5RWpMaW9nS0d1QlpaTm9jSDQ5eWF6NVBrb1JlYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6OTA6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9rb2xwb3Nrb3BpeWEtcmFzc2hpcmVubmF5YSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767022710),
('EmH07YKi3YAFzxGWOwxt2uAjr1v9q8BvOOoGixLC', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHJuRklIWjlieHJZUE54RnJpVDhsTmkzMjJkdEF6MGhRQnR4MkI3byI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjQuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029604),
('EqAfCoPWUhyEzwnoHPaSCPcrafTNOMAuX1wUzUfj', NULL, '34.42.77.170', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUV5OUo0aVJuTWJDNHg2dVEzb3pVNEJMcXBHVlRyTGhJQlNnVE5VYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cua2l0ZWNoLWVkdS54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767024206),
('f1qaLATBou2vMikgEu0pbhACEM1BqHqji7qmQCSf', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm93dVFHRUtrUUkwYkJjVFJYczR4ZjhkV3kzNzdScmJuVG96ZUpzYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTAzOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMva29uc3VsdGFjaXlhLXZyYWNoYS1ha3VzaGVyYS1naW5la29sb2dhIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022709),
('FBNwoT3Wj3NkCAYE16LHrTi7x0UOkjbrkpkCKob4', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidG1PNEU0RG5RM0kyeUV1WGo1Y1pIWFpSOGJkblBidEdhOU9nTzFTciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767029704),
('fE2sCqfBOBEoAeBMbbzy0A1RfPLaypdfv1CNTcG3', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlpaU1BTek92UEFCNU1VQlVxaU5FRDFCckx1ZDZzQ1NoRVYzcGJScCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTEyMS5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767027548),
('fI9KWDR9tWFl736yRtPwe2J9VMHig9nRRCvmTpnk', 1, '77.65.99.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib01jaFNlSVVuQ1Jmdnh2WTZUUVlYSmJFeUNZQWlzUmRFMmFWcTExRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXovcGF0aWVudHMiO3M6NToicm91dGUiO3M6ODoicGF0aWVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1767025060),
('g1jqP4ZZ7TcBmoCxxUlQikOEv8jG5wRBILb0KZhq', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmFLRDViZEdIYjY3VE53YVBuc3cwOEtwVU1pWVF6NnZqVEl2enpSVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTguaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029713),
('G20wynFeLfCxwxfJtC5c4iKUosOHsScpSzEGrV0C', NULL, '34.126.186.110', 'curl/7.83.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE9icjQzSEZ5VjMyTzRsNU05TWlibTFSeDZPMWtieFZKZm1uejdlRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9raXRlY2gtZWR1Lnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028426),
('G96HNnzwznqOTfA1GQ0Ya6MNy6jhfgJ7hqTJPR0q', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnJEd3ZJRzRFRTVTU1BBZENZbDVnckdxVTRXVDdEUDM0M3ZNNWZIRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zNS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033409),
('GFXPjuBvvLOtbMOLyKSZLwNqtN1g0rzA06HUhc0p', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3JaSEJrZ0dMTFJ4Z3BRZWluWGdCN05YRkVqcm9GbE5ydmhRVmZVUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjA0OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtbW9jaGV2b2dvLXB1enlyeWEtcy1vcHJlZGVsZW5pZW0tb3N0YXRvY2hub3ktbW9jaGktZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022956),
('gQC5maCPv7gxTUqpYcQOCdpd0ZVSNq73FpQcXhKS', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmlQU2kwNTZPcjNQOFVCNlhVUzc4TjJWVTFhcE5UekwzaEZlNkRDcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTM5OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtZ29sb3Zub2dvLW1vemdhLW5vdm9yb3poZGVubm9nby1uZXlyb3Nvbm9ncmFmaXlhIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022805),
('guUtJodHue83hllGI0mNZJlHwZ2Vm1KaOyaYzhvX', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnZZZjFjTVFyWmJKUXV0Yk05UkJmbDdmalNEc1cyY0hhbk9SVVVOMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTM1OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1nb2xvdm5vZ28tbW96Z2Etbm92b3JvemhkZW5ub2dvLW5leXJvc29ub2dyYWZpeWEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023575),
('hbsorYk0MSrlxivimGyUCWflfG0D2QmqvAFBw1nS', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUNYQ0FXYU5QdVdQeFhST1Q0YWhDS1lsSDZwU1NXZW9ST1ZYTFc3bSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2Zvci1wYXRpZW50cyI7czo1OiJyb3V0ZSI7czoxMjoiZm9yLXBhdGllbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023044),
('HKFa8CYUOpj6u2mjT0uoIcqo8emFalA7sdgGpZaW', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia200aFVYaTZZS2VRUkZTSGlPNzVCU1VUT1VBdjRVdDh6Ukd6T1JNTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2xlY2hlYm5heWEtcHJvY2VkdXJhLTEtdmFubm9jaGthIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767026685),
('HOoUdZm1Difmbp5kxD49CAihiJrB5sgnzd8P1exE', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjFnbk01cUMwOTFDZmVPcXBDeEtPNjU0RDhLM3pCYXd5RlJ4RksySCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTE1OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvaXp2bGVjaGVuaWUtaS12dmVkZW5pZS1naW5la29sb2dpY2hlc2tvZ28tcGVzc2FyaXlhIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022737),
('HtalSpTJFAEfhMBCSWsvwKjAm6AtE8gXHWFhefjB', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1c0UnVTeml3MjhnNEhXc1pyekt3ZUt2cnJRTmozSnFMU0hiQW1ueCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTgyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1wZWNoZW5pLWktemhlbGNoZXZ5dm9keWFzaGNoZXktc2lzdGVteS1kdXBsZWtzbm9lLXNrYW5pcm92YW5pZS1zb3N1ZG92LW9kbm9nby1hbmF0b21pY2hlc2tvZ28tcmVnaW9uYSI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767026883),
('iey2pduQckn0oiVKjxwrSW3Wnb5fPep7J8CacuWD', NULL, '34.42.77.170', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjVmaVhzSHV2WGRxU2RLQzIzaDQ1YnUyT0p3OWg0OW16ZmFRZzBNYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cua2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5IjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767024207),
('IfR3Bcoz4MyqTzAySjfCaep4oHjpP7718lEXoyzf', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlo2UkZzb1IwNzZIb3E4SGdFV0tlaTAzc0xXUFBSQ3VRZk40Sk5waiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTQyOiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9rb2FndWx5YWNpeWEtbW5vemhlc3R2ZW5ueWgtb3N0cm9rb25lY2hueWgta29uZGlsbG9tLWktaWxpLXBhcGlsbG9tLXJhZGlvdm9sbm92YXlhIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767023517),
('iifCNMSIAQlbrW7PXSTOq7Ale9rmoJ7ydpCqrJ67', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGQxbEhmZ0JxVWdXVDgxdFhkREE5bVB3NVZhVWJWUE92THVUdVlrbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2RvY3RvcnMvaW5kZXguaHRtbEBwPTExOC5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023934),
('ISELu0v4kZxBhNo255O03nRysBLbjg213alBjiMt', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczZmRm5GSXBuOXhDNVRZVzVMQVN0eElkR0FwNzkza0FhQmhwQjFjbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTA3OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvbGVjaGVibmF5YS1wcm9jZWR1cmEtb3Jvc2hlbmllLXZsYWdhbGlzaGNoYSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767022736),
('J2CZSXW9tlWKUxgbCh9PycWsQ04lHJG4qZ0yJuvL', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTJoMUEwc2FNOWoxU1ltbVVPbTlSeUdIbEwyUks0NFpQNEFZYlBxbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTg1OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9kdXBsZWtzbm9lLXNrYW5pcm92YW5pZS1zb3N1ZG92LXMtY3ZldG55bS1pLWVuZXJnZXRpY2hlc2tpbS1kb3BwbGVyb20tb3JnYW5vdi1icnl1c2hub3ktcG9sb3N0aS1pLXphYnJ5dXNoaW5ub2dvLXByb3N0cmFuc3R2YSI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023539),
('j2p8PRNZjMrTBTp6CgpW2I10ica2utT19X9gOJk7', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUQ4c1NhOFlTUG1IcWlYaVZrTmtSSFRETGFyN2t3ODdsNzhCVDlXdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9kYXRhLXByaXZhY3kiO3M6NToicm91dGUiO3M6MTI6ImRhdGEtcHJpdmFjeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767023046),
('J3Krj67eyXoH8gdvmANGFhpJmljVhmL9vSAx9QEt', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWndKR0pJTUJjNUxTT0syRnh4SEFWb1ZGbkt4MWpyRDMxVU9rWWRBaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTk3OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1saW1mYXRpY2hlc2tpaC11emxvdi1vZG5hLW9ibGFzdC1zLW9iZWloLXN0b3Jvbi1kdXBsZWtzbm9lLXNrYW5pcm92YW5pZS1zb3N1ZG92LW9kbm9nby1hbmF0b21pY2hlc2tvZ28tcmVnaW9uYSI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023542),
('je6SgYYZOoKWaYBAO40iIGAKATwQp99ZIf6PfCUI', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVp0YlQ1VVF0alU2ZEhRSkxkUFpYMGllamZjR2JYa3Z2eDc4Nk00WiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTI5Lmh0bWwiO3M6NToicm91dGUiO3M6MTU6ImRvY3RvcnNfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767027548),
('JOh0xpo8sQzdB4l4Cq0a3tDrzCrcYXDhgUTBIBRq', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlo4T3R3Mkt2dndQdUR1MDRaUG50TzNQRU1TSTdmS1ZwSVZCdFZBVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL3Z1bHZvc2tvcGl5YSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023455),
('JUNAtckc4Y66FpB40sS2fasSTKQVdr93z9mmbTko', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDlXMzhFZE5OSVNVckl6aTl3RENqOGNsUzdGbzh3dWVxdG5tSUV0eSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbCI7czo1OiJyb3V0ZSI7czoxNToiZG9jdG9yc19kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767027566),
('JZxzF1GjDXWBBUzMdsdLGoNjL0EedLqeXYX8mOMS', NULL, '34.42.77.170', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejVxQnNwR3lTUkYxZ3JyMHMwRG5nMWVPc04yRXpaVkM4d2dmWE1adCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767024207),
('kctwmjn2TUFmDmjgbWBCs53xxvIPkGl8iBjRLk93', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUJwNGhqM1dPQWVkZ2hMNmpOMEk5WDdPbHpiOTRNMGZ6anlPV203eiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9kb2N0b3JzL2luZGV4Lmh0bWwiO3M6NToicm91dGUiO3M6MTU6ImRvY3RvcnNfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767023740),
('kDDfT3mL795Mys97GlFw3NyPSp5GUYrqLWqQRLrv', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk1vMnp2OHRTdTdickRPUGNMd25DRktJYUZQQ2xhb3ZkS29TcVdjVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zMi5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029547),
('kMvpJ20qDiIUlNwfcz9dRaaJgAJt2Dp7AJsrt9dR', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUZaNmRRR3BaMlNRblVzdG0zT0hrbmxlSmdTdFRJelFHckZyUnZpQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjQuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029457),
('kOpzglXxJBW7QQPQwpWSuFUuMxSB3klREHl1wFW3', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm1aQ0pTWXNEcGVoVkJycVRwVTdXRjh3TWcyMUVxSzhCdVdmcklDViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTUuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029576),
('kQMoGBKFFCcXfcScPq4EuhZMEdDFWIEjQTC6PIXC', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGlWTk4zV2VWam01TnR5SWpPTFZ4cnB3dUlsR1RwUDVmU1dhTjhOMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvdnZlZGVuaWUtZ2luZWtvbG9naWNoZXNrb2dvLXBlc3Nhcml5YSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767022685),
('ksNu9aZxz43bdU339Lko6JPwFGKjEBlUmVDD2nK7', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0lsUXc3aTVGeHIzRzc2RnkxcnA0NkdpMGV3dTJoNm1GZkhZNExCaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MzguaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767028653),
('KZqq9z8gi8pNLXyAOdBk7GSzVqFeTXDRyG565gQQ', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUpMY2dtQzQ5R3cwZERRNFFJZFNObXhRejhUNFZqSzBNQWpnUnd6ZiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM4OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtc3VzdGF2b3YtcGFybnloLWR1cGxla3Nub2Utc2thbmlyb3ZhbmllLXNvc3Vkb3Ytb2Rub2dvLWFuYXRvbWljaGVza29nby1yZWdpb25hLWNpZnJvdmF5YS10cmVobWVybmF5YS1yZWtvbnN0cnVrY2l5YS1zb3N1ZG92LW9kaW4tc29zdWRpc3R5eS1iYXNzZXluIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022895),
('l57ic1YsBb2y5NFb0HdgpTcs6ENgPqNYlFmMeCpP', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk9zZ1RHN0FjeFZadmxTTGtqVmNVd1VXb3FBNndJZlhhRXBTeExtdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODc6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2tvYWd1bHlhY2l5YS1yYWRpb3ZvbG5vdmF5YSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023465),
('Lq41ohQmYL83wZFC7AlqVpYv7cFNYog6KhtnIjxo', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1F1SjVkN2pPZG40ZjdIcjRzcENzOGJ4dEtadDE0WlgzRkxrazk3OCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767033779),
('MBYPi3I78OJKUS3MCrr72C1T2LnurTzPXviulIUz', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUgyUlNOem9TeHN4RTMwbmFlWmJFTHMzQkZvNVh1YUNvT2kzcHdEOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTUuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033629),
('nIhImdT5jDyYiOwl5UnpgdRUBCW06Z2bm2ySPKAX', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFFLZW9vM0c4c3VBWjVoSU9HeHpsZERRTU1XWHA3ejBDdlZPS2lzWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9kb2N0b3JzL2luZGV4Lmh0bWxAcD0zOC5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023740);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nvKWr6NOF9AMCfVmIhmsKuXyFub9yNyRkl3o5w4u', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGhUTk5XdFQyMEN6cm8yejVwU0FucVh3Z0dFWGh5NTdPaTduU2E3eiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0yOS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029345),
('nZzcHSrftKFugW6Z7UGtbEg8SNyP6oIS8CIv9eTY', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHgzVlI2Ymtvd05vREI1cUVyVU1CZkw5NTJMZXRRSVcxVTBkcVFIMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTMyLmh0bWwiO3M6NToicm91dGUiO3M6MTU6ImRvY3RvcnNfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767027478),
('ODZa9Y1iIKX0pLklg4URd0KHnpDxn8Xr8dgZtVk7', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTZhN0VDamdJTWFQRjU4c28xclcyZGhJZmRVZjloM2cyYWRlQ2hhUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU1OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1wcmktYmVyZW1lbm5vc3RpLWlpLWlpaS10cmltZXN0ci1kdm95bnlhLW1hdGtpLWktcHJpZGF0a292LXMtbW9jaGV2eW0tcHV6eXJlbS10cmFuc2FiZG9taW5hbG5vLXMtZHVwbGVrc255bS1za2FuaXJvdmFuaWVtLXNvc3Vkb3YtcGxvZGEtZHZhemhkeS1zb3N1ZG92LXB1cG92aW55LWR2YXpoZHkiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023546),
('P82v31Exfocmt3h4tz1UhIzDkCXchiiIi4S8IHv6', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3FkbWRsYUR1eDRiYlRnM1oxbDIxYmNyZTc2NVRhM3pGSE5oRktJTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjA4OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWtvbXBsZWtzbm9lLWlzc2xlZG92YW5pZS1vcmdhbm92LW1hbG9nby10YXphLXRyYW5zdmFnaW5hbG5vLWktdHJhbnNhYmRvbWluYWxuby1tYXRrYS1wcmlkYXRraS12LXQtY2gtbmEtcHJlZG1ldC1wb2R0dmVyemhkZW5peWEtYmVyZW1lbm5vc3RpIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767026880),
('pi038xOVFqHk8jubsdKvBdpMFJW3q705c6zja7us', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzh1dlpmemNxa0w3YXdJS21PeFZITUVnRkRsZHhwYWJGSEZWb2ZzeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6OTk6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2R1cGxla3Nub2Utc2thbmlyb3ZhbmllLXNvc3Vkb3YtcGxvZGEtaS1tYXRraSI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767026682),
('PmCwg76epmU0Qe72Q7lqDwEgzMoSx7b15GMMufDV', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFdGUjFURjFBa3IyVTR6YVVVSkIzVlpxZ3lCSk93S3hRQmpmeWk3aSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjEuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029422),
('pP2CoOk7aaG6vbaTrhKR9bsi4bZ4NksbuQ6eVm5o', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXlzenhCYjNXMEh5VGE2NWJyS2tRTmRlSndnbXRTVVN4ck1SS1FLSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjEuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033460),
('pUmz2Ic0UQpjDEDVj95cnaKZ7D8RqfWo0uRLZ9P0', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmxqR3lNczA5Z1U0c25HelZ3QjhIaVlKYlRRcFBnT0dvdEVFN3U0ayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTM4Lmh0bWwiO3M6NToicm91dGUiO3M6MTU6ImRvY3RvcnNfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767027597),
('pXGhA5zRgH69Q929wnZScoufA2gnUKWBzEyfJ95i', NULL, '165.22.237.228', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0tkaGdzSkh5Zmw2blA2WDhtWTNIRmNERkpRRzhXNnlNeVcxN1k0WCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9raXRlY2gtZWR1Lnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767034146),
('pzxeFT2R7v9gGKhQWuVjCY8hSxA3v8HIAXgyUkdh', NULL, '217.113.194.211', 'Mozilla/5.0 (compatible; Barkrowler/0.9; +https://babbar.tech/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnlwU0lITTJlbWpDeG5HeWJERU02WE1OYWtNeHBHVks5cjFud0plRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022022),
('QD5qqA5evAXhpflYq9dhCH7fwMtDlhxZape8iTTh', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU1naXJac3gxakFkbklNSDhmdXROdnNWTnJuWGlseGZwTnRnY2x3YyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTUwOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvcmFkaW92b2xub3ZvZS11ZGFsZW5pZS1wYXBpbGxvbS1rb25kaWxvbS1uYXJ1emhueWgtcG9sb3Z5aC1vcmdhbm92LXJhZGlvcHJpYm9yb20tMS1zaHQiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022816),
('qotwMQD9iphMKBK9m3K6tlaSG0ZHvBfOgLdsn4qj', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVBXTllGUkZCdFh4dzFhVzB3TWI0c2VaZmYyWnBPcDgxRXJNQzNKOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE4OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1vcmdhbm92LWJyeXVzaG5veS1wb2xvc3RpLW9zbW90ci1wZWNoZW5pLXpoZWxjaG5vZ28tcHV6eXJ5YS1wb2R6aGVsdWRvY2hub3ktemhlbGV6eS1vYnpvcm5vZS11emkta2lzaGVjaG5pa2Etc2VsZXplbmtpLXBvY2hlay1uYWRwb2NoZWNobmlrb3YtaS16YWJyeXVzaGlubnloLWxpbWZvdXpsb3YtZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023566),
('QwgWMYoOIhNJMSEbqBYC1GutMqyu2G7ayrHKZ6v1', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3FOSlBiUnE0djZQb0tIMmc2M0ZXRWJnd2pwc2FnMWNlTGQzeW04OCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zMi5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029458),
('RAJDQNzYBCxVktxpzBgbuMJ4RY6KNp8DYcfShQxs', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQldwMlVkODFPc2d3UHBtYW4yQ0s0ZEVHZ05RcDUwV0w1bWVGYThiSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTUuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033456),
('RhLIEjDPNMtBtlo4D5ufW5zSXetdcVhLDr1ZBqNt', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUxtaEx2S01xWjhrTGFHV2lhMlZrbjVPQVhKdm8wZW5aNmdoQ1BWeSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2RvY3RvcnMvaW5kZXguaHRtbCI7czo1OiJyb3V0ZSI7czoxNToiZG9jdG9yc19kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023690),
('RIDbZzqK3TPN9zjfORp6ElQI4aV6u8PyI4jnp62N', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTBsd1ptcmVjNXZwcEZGSW9JUFpLaGdvRzNqTWpBeThlQVhOdlJFbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2tvbHBvc2tvcGl5YS1wcm9zdGF5YSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023455),
('RT9x6VLmaDDPEhSE239gFmhTSxYbKGZESNOukR27', NULL, '34.42.77.170', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzlaaDhXOFlZRHFPakVPQk5TTlYxamdtQkc3TlIzOUpTbnpUaExybyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9raXRlY2gtZWR1Lnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767024207),
('RUJcix9zf0NSzCKRfbpQF88RCsfMKnmpNQwCS5AZ', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGs0b3I5dWI4R3NsanB4ZEtWWVpFWUt3cXZhQXdWSmUzZ21Ib2FwMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTc3OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtcG9kemhlbHVkb2Nobm95LXpoZWxlenktZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022884),
('s0ETMrN7st4zW4wKmOjWpah76Xatb4UiOG7kP1Rg', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlhpbXpnY2NOUmNRYlNEQ0tWVVN0VHByOXJYVHlKZFBkN0Jia2RqQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjQuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033598),
('SFEcIiKBZ5OEOMLPztx9cxvaHKDKyQtm9JtdMfn1', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXozSmNXaThWUkNvUnBYYmZUVlZ6TDZPUGdLbG1OdlFkSFdlR241OSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvcmFkaW92b2xub3ZheWEtcGV0bGV2YXlhLWVsZWt0cm9la3NjaXppeWEta29uaXphY2l5YS1zaGV5a2ktbWF0a2kiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022785),
('soO6M1K8FXbEHRLdDl9cZDUG82QV5AX2ygEC0DXP', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWg2eDEyYmZ4eE5ZbjdPck0wNXl5NWFWQ01Uc0dtRW55aTJsZzlFcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODk6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9naW5la29sb2dpY2hlc2tpeS1tYXNzYXpoIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022610),
('swWfoa3n0pPfXVkdl5cNCXRDGxXVChJoUwM4C7GS', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWlaZzRkWWJrdVdzem1UZ0ZKVUwyaVdPY0VBMklKVHdyREV2WkhOUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0yOS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029608),
('tAaEuHuzWe8R1q2WsWGoykJp33GMJncnVXX7L0DS', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzFRUG5pRDViaWxxQ01haE1xUlROa1NYYTR1VjhUSlBLajZJS1ZNSSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zMi5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033592),
('tiYfZxEkvATOI54ZHtMaFUexw7iZwSKf9lozWyJB', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2o3MERWWUVhRXVUYm8wakRYaXVwM1UzbG82ZEtpZzNpeEk3VlpIRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTA5OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1wbG9kYS1pLW1hdGtpIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022684),
('tQVpdfgfbjiDmAZjFlRDLPeFyyyi1eOqkZbz1Mqm', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkR5NDRWdEQzblNpR1RiaWdiVUFzNTFySkFMNnVmRHlUa2ZHR1pkTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI4OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1zdXN0YXZvdi1wYXJueWgtZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEtY2lmcm92YXlhLXRyZWhtZXJuYXlhLXJla29uc3RydWtjaXlhLXNvc3Vkb3Ytb2Rpbi1zb3N1ZGlzdHl5LWJhc3NleW4iO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026942),
('TUBRQ54q2DAPK4wjobzLquVYOENbSG9qLAiyIbdX', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlNZSWtBc3ZzS1Y2RmRMVVRiYzhQY2FWN0xPY0s4TnMxQVRNNFc4VCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTQwOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9yYWRpb3ZvbG5vdm9lLXVkYWxlbmllLXBhcGlsbG9tLWtvbmRpbG9tLW5hcnV6aG55aC1wb2xvdnloLW9yZ2Fub3YtcmFkaW9wcmlib3JvbS0xLXNodCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767026857),
('TVQNYFqVI2N0gQ79RaDppDdUyxXQuXNF7drqU4Ce', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlA5YkJmT1hTaHFqdWdtb3ZLelRYUUZzMURHTGkxVzdFZ21adlBJWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTA3OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy92dmVkZW5pZS12bnV0cmltYXRvY2hub2dvLXNyZWRzdHZhLWtvbnRyYWNlcGNpaSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023467),
('u4PTCK8p7c3JwH5kMbOZQBSUjOQvRC0ErXOcgOso', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE1NdWs4dmV0bXpuM0tWbjhnZ3RQWVpnUUtWbGFscFVvMUlYdkpjTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0yOS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033881),
('uaJ3BUxm8NQWrYR29oz1rPU4fuLlxKq8VKYEO36L', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWZQWlZaamVQMnlHZGFNMVRHN0FRVUhvaE5GNHE3SDRSeHZ6Z2R4TiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTM1Lmh0bWwiO3M6NToicm91dGUiO3M6MTU6ImRvY3RvcnNfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767027478),
('ukX6RT6wmR0MXFks32LFmHNmCJ6dRgnh8zrhlV0C', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU1EMjVJUHNFenNlbkQ2eUlXRzNEcDJySjFka2t6d0ZoYWpzUkhTSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTYzOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvcGVydmljaG55eS1wcmllbS12cmFjaGEtYWt1c2hlcmEtZ2luZWtvbG9nYS1wZXJ2aWNobnl5LXByaWVtLXZyYWNoYS1ha3VzaGVyYS1naW5la29sb2dhLWJlei1vc21vdHJhIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022784),
('ul4N2mtVm66NWLVfoFFvDxGou5rFDEHMgz985tWM', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1ZPcEVGN3J1VTYxR0dKUER6WkVhNVFoSlBJNDI0MjlmM29FUHRHNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767028923),
('ulTB3KUwD12yMPNrt6MReyrEqWRZvtIgYq0NcRPX', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDZxSE5HR3BDM2pYbWtFUkhNbmFyRWFhTk05VTdPbk83VEIwTzZqTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvZ2luZWNvbG9neS1zZXJ2aWNlLWRldGFpbHMvbGVjaGVibmF5YS1wcm9jZWR1cmEtdnZlZGVuaWUtbGVjaGVibnloLXRhbXBvbm92IjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022770),
('unzlUZ0mu5RE94yE3dYSjHzMxn6fUBKcEkUrMGqA', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmVsRmdSSjQ5b0FnMk1FdWJPZmp0T0Y3bXdiWW1Mc2xpOXF1YUhzWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3V6aS1kb2MiO3M6NToicm91dGUiO3M6NzoidXppLWRvYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767026486),
('UxbA8RibQwhzLvDpjU2NrUlWcowGXCncvbOrf9js', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiek1uaHp2cmRVOGNXdmRTYXA4YTB3OThHUEREaXJkakJ2Z2M2UHlSSSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767033793),
('uyPhQnPcEbzsNZvx5kTs9KLpQbK3qCJLcPTaIUr8', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkN0Zkdqd1Jqem1iTXlTWGhraTdMQ2NQaGZncG4yZEkwOU91MncwUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zOC5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029677),
('v2JDyaGNyV9ntSenq3rDqk87ZgTntUcxS5iziILB', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGZCMjJLUnBud01rY1lXUjV1UFF0V0RlcDh2N3lUZFdBbWxEWTh3byI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjA4OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtcGxvZGEtdi1pLXRyaW1lc3RyZS1zLTExLWRvLTE0LW5lZGVsLWJlcmVtZW5ub3N0aS1pbGktdm8taWktaWxpLWlpaS10cmltZXN0cmUtYmVyZW1lbm5vc3RpLXByaS1uYWxpY2hpaS1wb3Jva292LXBsb2RhIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022957),
('v7W2978EBYIvnol6e9LL6RDfk66eDWZDZyPgMRNA', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG5jUmhkYUM5WlRRNURSSGU4bThBTVhwOWlsNzJJMGxzNjlpRlVaWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zMi5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033813),
('vGWNSpbscRrdTHLhla5QxSBXkntNUY04E93aonbx', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0RvamdhMVNaeGZyakJnTFphUmxjMzdWV2lPQlZJaXUyZjJ5Vm85eSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTIxLmh0bWwiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028543),
('VIhUa2pT79iRAOslZ7FGmyAtcusGnI16Yqh8sFA0', NULL, '165.22.237.228', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUhRZ3FsWlBQMVhPUnAycE83dElCSkFMNGNoUVdLQlpjWkJCcThXNSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767034147),
('VqZsd2Q55ENwkQnqtpydtpzSpia8b4OLdSIX9rW7', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWlRMTg5N3d2U21VODk1VGQ2QlB3dHRSWkJ3c3pkVm1xb01ZbzhtZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy92dWx2b3Nrb3BpeWEiO3M6NToicm91dGUiO3M6MjY6ImdpbmVjb2xvZ3lfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022634),
('vvj6PviRpwElYKfF81dZKpHCtXUaUGJjWnST1VQu', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkZiRThHQzdvWk4xMlRzWks0cFpxVUFTSEtrdTY0ckt4WE1kTDViQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTEyNC5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767027978),
('VwzbI72lEy15nvcyll9f2gYFZA18lJxhhglUWVCA', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianFBRnpKSHdqZEczZGVoNGNIWmJqbWhSQ2wyMFM0N2s4TjRYUU9FVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMjEuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029619),
('w4XLHE59RBM4pfo8jbrYrIiuecWD7oPQOKDI8UMB', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnM0MGo5bzdXTHdRWG9yaG5BUzVhdXRmaDl6SWlnYjk3YUJBdXdNdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zOC5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033705),
('WBFf5ANG7b6VwEbOWUuB1UISoMQpJzkRFEgGATlH', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejBqVWRSVDBnN3AydWY3Nkc5aktKenNMaVRIbURJdUNwS0VKS0h6QSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MzUuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767028550),
('WCbAMnOjkX15Ed6azV8pmcQ59E6y6dMfFFHW1Afe', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2hDMW9UVUJKN2VubXVYUUc3akdGd0JFOVVNM0tVUHgyWFhXcnFaNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTguaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033509),
('WcIjO14gvCAaoTXmPFGIl6RfxmIz8z8E4ASyYLpN', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW90WGdXbVEwSWRUS0E4RUswNk96dFJ0Z3hGY3ZXekdzS2diR2lGdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2RvY3RvcnMvaW5kZXguaHRtbEBwPTExOC5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767027647),
('WH2UyzYRoo1TuKZTW8oVXdkOO1wf8TOgxjnnUjEO', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN01FY0RvUWJJVXB4VDNFNFpkVzFzaGVKVHBQQW5DYWV0STZVeWIzSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTExOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1iaW9maXppY2hlc2tvZ28tcHJvZmlseWEtcGxvZGEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026802),
('wLzInqHFxKrzX1bNEeblgL9prRdaRSGCjc70EVfa', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODR0Zjc4YzJDeHp0ZWNTdHhHTGxBYkNod3BZVjBraW9na01XZ0ZIZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTguaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029464),
('wRYgHQvAxY5E3v8QmD8TLdhbFkLc3zdruavuvmRQ', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXVBUHFLV2FYYzlUWDJibGU4U3o0clRGeTNnOTJqajRtbFVPUFZOZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9kb2N0b3JzL2luZGV4Lmh0bWxAcD0xMTUuaHRtbCI7czo1OiJyb3V0ZSI7czoxNToiZG9jdG9yc19kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023694),
('wSilBNP4QTclKSFyQpHWBAUumpuTt0XrNKf8Broo', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1NjeWl5eXdNWUpib2IyRXhDajhob3Z0N0VDRWxmSHVWVzFZS3B2MyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9naW5lY29sb2d5LXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767028827),
('wWXB9UHclUBIGR3x2aDLC2NHjuEJ8YuvksUVF2hN', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnhFMnEya3lZd3U2NTZJUTBaQ0o1TmRDT1U3VUlQR0hlS2U0YVpqbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS9kb2N0b3JzL2luZGV4Lmh0bWxAcD0xMjEuaHRtbCI7czo1OiJyb3V0ZSI7czoxNToiZG9jdG9yc19kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767023694),
('wZ0GP5QsHhaizWbFo6GLAmRUD5eThnCxMFsiSe1F', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjN1Q0pqbnNUN2pmVWU5aWVDNUdMNDgwSzZwcGxVV2lsbnBaVUhwViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTguaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoidWx0cmFzb3VuZF9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767033724),
('WZnSCQNAYpGR54VfbA11qXrXJeWpNC9j6JxYmBb0', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXZqVlJtN0FlNkhBTFdvRmVHbGpaTHYwVWtwanJMb0JiNjdicG03eCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2RvY3RvcnMvaW5kZXguaHRtbEBwPTEyNC5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023622),
('X9RZPfEfHdl60jHY9bTMBLkJxdwsYSvxFo7xO7pH', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXkzcjNWQXpnVUpkOHFrb0NEektaM0U1N2RjelpQZWw4RDdUZ0RuNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc3OiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtbW9sb2NobnloLWdydWRueWgtemhlbGV6LXMtbGltZmF0aWNoZXNraW1pLXBvdmVyaG5vc3RueW1pLXV6bGFtaS1saW1mYXRpY2hlc2tpaC11emxvdi1vZG5hLW9ibGFzdC1zLW9iZWloLXN0b3Jvbi11LW11emhjaGluLWR1cGxla3Nub2Utc2thbmlyb3ZhbmllLXNvc3Vkb3Ytb2Rub2dvLWFuYXRvbWljaGVza29nby1yZWdpb25hIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767022930),
('xDkqIdoUbpXp31m9v6jnTDZOjWvyOmD2jTnFQN6Y', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVQ1RU5pNjdTbzZyZVpTN2l5VkZRNzVTZnNPSlVEdFJ2NWlEemhabyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTkyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei5raXRlY2guYnkvdWx0cmFzb3VuZC1zZXJ2aWNlLWRldGFpbHMvdWx0cmF6dnVrb3ZvZS1pc3NsZWRvdmFuaWUtcGVjaGVuaS1pLXpoZWxjaGV2eXZvZHlhc2hjaGV5LXNpc3RlbXktZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1vZG5vZ28tYW5hdG9taWNoZXNrb2dvLXJlZ2lvbmEiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767022854),
('xI1MGzq866CYyzG7MBPYkGuLTKbcAlFDGhkCzf7C', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnEzSkhwbmVzTmZicndGd2JNWUdhbUFxQk5UR1BQQjM4RVZTdFRPZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTIxLmh0bWwiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028759),
('XiVk1D6M2qu8EdpVEanusCJCCD39ZcAvVu8FCkVD', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzA2dnY4ZGVLcFZsdFJNOHlBUUNORmZZYzZzN3dET2xSSTI5ajQ0MiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zOC5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033503),
('XtCqEAdDCkJgRmmWiS7tSGalIGUuMHD4mdLfEduQ', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGJBRkxZWFlhMnFoa0xxRVJ2RjhaTVhwbDh5VW84aUtmQkxuWjFuUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL3Z1bHZvc2tvcGl5YSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767026726),
('xZfqqWiFHkzGclYI7KMrVs05UieIOa5btGiI8IfS', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ01GVkw3TXZVV2RPRFBxYVlwWFVGN293MFd3bFR3cG9uZlhFN3ZuWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6L3VsdHJhc291bmQtc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zNS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767033547),
('Y3fkEQc2ICCoieidq3n5JiVRbtF3wnWzwdzDsiLc', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUEyTkhqUm9yVG5mWER3eHdodUtqWDlGeWM2VUx4UngyMjU4cU9QTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6OTk6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2tvbnN1bHRhY2l5YS12cmFjaGEtYWt1c2hlcmEtZ2luZWtvbG9nYSI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023462),
('yDJDTX1G8gBID2ubftCMZxk2gjJ2HAvmRDL4b1iv', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibW5wRWNzSnNDVVRmNWR2Y1g0N2Y2aDBVQkVyS0dhdTlUUkJpdUNRViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zNS5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029335),
('Yke79vWexfunZvrqVkMxvoeChVhoEu4dTaWrQQKw', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1ZZRjRmYk4xc2JzYUVkNUZybHpKdXI2MHVJOGM0T1dGSUF3RkVvRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjI6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2RvY3RvcnMvaW5kZXguaHRtbEBwPTExNS5odG1sIjtzOjU6InJvdXRlIjtzOjE1OiJkb2N0b3JzX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767023690),
('yOPt7QR9nm9bnqlFAaYXMGVn6ml77kFxR89HTH2v', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHFPU21XbEZmOVFMemRMVzZ1bTRqY0JmYUJjdERGWDUxMklzMDhoMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1sZWdraWgtcy1wbGV2cmFsbnltaS1wb2xvc3R5YW1pIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767026833),
('Z8kPuKZ1sWfqnGqQLf0mxJmIXnbIqGZA2iyLmAK4', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidElrb20ycUUzZENlSzA0dmVmOU1xMmlDWGljVUVIWjZqd1pKelNjVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODA6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0zOC5odG1sIjtzOjU6InJvdXRlIjtzOjI2OiJnaW5lY29sb2d5X3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767029452),
('zEJslJ7a5gwqpSVYylGdOH0VKiyOwtpj7C82GYOv', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm5rMFdIWHE0SzhwbnJCQmx6UXE1aVBCMUdwb2ZOMGxjNXBOZmVzUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8va2l0ZWNoLWVkdS54eXoua2l0ZWNoLmJ5L2dpbmVjb2xvZ3ktc2VydmljZS1kZXRhaWxzL2luZGV4Lmh0bWxAcD0xMTUuaHRtbCI7czo1OiJyb3V0ZSI7czoyNjoiZ2luZWNvbG9neV9zZXJ2aWNlX2RldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767029345),
('ZGXUrV5LCqoDlybD02nX4yc1Vs1uthkeID65Wffw', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUY1S3lXNU1XSjQ3NnlNV0FDczF1TUM5U3UwWG9wOFYxZ2lqMGNOdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM4OiJodHRwczovL2tpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1wcmVkc3RhdGVsbm95LXpoZWxlenktaS1tb2NoZXZvZ28tcHV6eXJ5YS1zLW9wcmVkZWxlbmllbS1vc3RhdG9jaG5veS1tb2NoaS1jaGVyZXotemhpdm90LWR1cGxla3Nub2Utc2thbmlyb3ZhbmllLXNvc3Vkb3Ytb2Rub2dvLWFuYXRvbWljaGVza29nby1yZWdpb25hIjtzOjU6InJvdXRlIjtzOjI2OiJ1bHRyYXNvdW5kX3NlcnZpY2VfZGV0YWlscyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767023568),
('ZQJQY35j540JdxrGvejS7HRyeESG7LeBcAO0zrqa', NULL, '216.73.216.50', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDMzM0wzTXlTb1JBQUhqTjZ5cTJUbExWNzlkcEVsTnBxOHlSQ08xWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTkyOiJodHRwczovL3d3dy5raXRlY2gtZWR1Lnh5ei91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy91bHRyYXp2dWtvdm9lLWlzc2xlZG92YW5pZS1wbG9kYS12by1paS1pbGktaWlpLXRyaW1lc3RyZS1iZXJlbWVubm9zdGktZHVwbGVrc25vZS1za2FuaXJvdmFuaWUtc29zdWRvdi1wbG9kYS1zb3N1ZG92LXB1cG92aW55LXNvc3Vkb3YtbWF0a2kiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767026931),
('zrbCC43UyMidgiISLaLvPxApy2Zt06M06eTQsgYJ', NULL, '216.73.216.174', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialpkUnBMd1pvWGt5OFFzMm1JSW1DMHpsRFlLOUJ1dVd3cm1QVXdjRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vd3d3LmtpdGVjaC1lZHUueHl6LmtpdGVjaC5ieS91bHRyYXNvdW5kLXNlcnZpY2UtZGV0YWlscy9pbmRleC5odG1sQHA9MTE4Lmh0bWwiO3M6NToicm91dGUiO3M6MjY6InVsdHJhc291bmRfc2VydmljZV9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767028812);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
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
(4, 1, 'Ультразвуковое исследование  селезенки, дуплексное сканирование сосудов одного анатомического региона', 'ultrazvukovoe-issledovanie-selezenki-dupleksnoe-skanirovanie-sosudov-odnogo-anatomicheskogo-regiona', NULL, NULL, NULL, NULL, '12,50', NULL, 'active', '2025-12-21 16:50:17', '2025-12-29 11:35:18'),
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
(19, 1, 'Ультразвуковое исследование при беременности II-III триместр  (двойня) матки и придатков с мочевым пузырем (трансабдоминально) с дуплексным сканированием сосудов плода (дважды), сосудов пуповины (дважды)', 'ultrazvukovoe-issledovanie-pri-beremennosti-ii-iii-trimestr-dvoynya-matki-i-pridatkov-s-mochevym-puzyrem-transabdominalno-s-dupleksnym-skanirovaniem-sosudov-ploda-dvazhdy-sosudov-pupoviny-dvazhdy', NULL, NULL, NULL, NULL, '51,20', NULL, 'active', '2025-12-21 16:57:00', '2025-12-29 11:35:47'),
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
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
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
(2, 'TestUser', 'user1@mail.com', 0, NULL, '$2y$12$9uJMkiVoJYSAtDZ4d6EJZOR7QkQSDOtIRHni3dKnO87LHmoTy39Ae', NULL, '2025-12-16 11:30:38', '2025-12-16 11:34:21'),
(3, 'Vitali', 'vitali.dedik@yandex.ru', 1, NULL, '$2y$12$JOmvnlHl/AgoKIMemARUW.lIDGGqwRD36FOw8GoYXPeqQ.9e.bVS.', NULL, '2025-12-23 05:59:26', '2025-12-23 06:00:56');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `doctor_education`
--
ALTER TABLE `doctor_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `doctor_sertificates`
--
ALTER TABLE `doctor_sertificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ginecology_services`
--
ALTER TABLE `ginecology_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `ginecology_service_categories`
--
ALTER TABLE `ginecology_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ultrasound_services`
--
ALTER TABLE `ultrasound_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `ultrasound_service_categories`
--
ALTER TABLE `ultrasound_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
