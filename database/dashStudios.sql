-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 03 2023 г., 12:37
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dashStudios`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `game_id`, `user_id`, `text`, `created_at`, `updated_at`) VALUES
(8, 22, 1, 'ЭТО ТЕСТ ИЗ ПОСТМАНА!', '2023-06-26 20:33:48', '2023-06-26 20:33:48'),
(13, 33, 2, 'Хорошая игра', '2023-07-02 23:11:48', '2023-07-02 23:11:48'),
(14, 33, 2, 'ыыыыы', '2023-07-02 23:13:49', '2023-07-02 23:13:49'),
(15, 2, 38, 'zczczczc', '2023-07-02 23:47:19', '2023-07-02 23:47:19'),
(16, 22, 2, 'Это тест из приложения', '2023-07-02 23:49:04', '2023-07-02 23:49:04'),
(17, 37, 2, 'СУПЧИКИ', '2023-07-03 03:26:41', '2023-07-03 03:26:41'),
(18, 5, 2, 'wcsccscs', '2023-07-03 03:31:48', '2023-07-03 03:31:48'),
(19, 5, 2, 'wcsccscsscscsc', '2023-07-03 03:31:51', '2023-07-03 03:31:51'),
(20, 22, 2, 'Тест 03.07.2023 11:22', '2023-07-03 05:22:26', '2023-07-03 05:22:26');

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
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `releaseDate` date NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `remain` int NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `releaseDate`, `rating`, `price`, `remain`, `link`, `created_at`, `updated_at`) VALUES
(2, 'perferendis', 'Voluptate sint similique omnis molestiae eligendi debitis rerum. Repudiandae voluptas ipsam facere fugit quia. Assumenda reiciendis explicabo sapiente natus ipsa sapiente hic.', '2009-02-28', '4.55', '58866.50', 9879430, 'http://carroll.net/dolores-dicta-explicabo-eaque-aut-autem', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(4, 'sint', 'Quia vitae vero veniam a nemo nihil. Fugit repellendus sit non et quis consequatur et. Quis neque sunt ut voluptatem.', '1974-06-01', '3.45', '7482.51', 8229907, 'http://www.abernathy.com/est-assumenda-itaque-magni-tempora-vel-ex-molestiae.html', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(5, 'laudantium', 'Velit velit ducimus recusandae voluptas. Laborum omnis omnis qui fuga. Molestiae id qui nemo est. Consequuntur quidem soluta cupiditate ut ut id.', '1981-02-20', '0.63', '61966.85', 423726, 'http://www.kunze.info/', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(6, 'possimus', 'Voluptates soluta itaque voluptas dolores soluta. Nobis rerum omnis cupiditate labore. Eaque totam deserunt aut omnis eos. Placeat sed voluptate blanditiis.', '2010-03-21', '4.43', '72244.07', 7787886, 'https://www.nader.com/ab-et-a-voluptas-et-ab-explicabo', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(7, 'et', 'Esse omnis quo ducimus tenetur quam. Molestias ab sint nesciunt. Odio tempore accusantium qui numquam. Saepe et qui quaerat aliquid nobis autem dignissimos. Et alias quo laudantium voluptas maxime.', '2006-06-02', '4.92', '53143.00', 603690, 'http://kshlerin.info/exercitationem-non-dolorem-laborum.html', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(8, 'at', 'Reiciendis aut quo qui. Suscipit autem et nostrum nostrum voluptas laborum. Ipsum totam est temporibus expedita vel nihil. Quos ut reprehenderit eligendi accusantium voluptatibus voluptas et nisi.', '1970-07-20', '3.07', '43028.25', 5946783, 'http://www.dicki.com/temporibus-nihil-consequatur-et-in-non-quidem-non', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(9, 'rerum', 'Iure labore neque iste reprehenderit cum. Aut est consectetur aliquam vero. Necessitatibus minima sit id voluptate doloribus velit consequatur.', '1985-03-01', '4.31', '60234.89', 5076619, 'http://www.white.com/', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(10, 'explicabo', 'Cumque ipsa aut quis quia doloremque. Totam facilis non officiis excepturi ducimus. Consequatur rem maxime velit modi cupiditate non. Quas atque est voluptas facilis.', '1980-06-10', '2.92', '33596.28', 5543285, 'http://wiza.com/', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(22, 'Destiny 2', 'Погрузитесь в мир Destiny 2, чтобы исследовать тайны Солнечной системы и испытать на себе возможности потрясающего шутера от первого лица. Откройте мощные стихийные способности и начните собирать уникальное оружие, броню и другое снаряжение, которое позволит вам создать неповторимого персонажа и разработать собственный игровой стиль. Самостоятельно или с друзьями проходите кинематографичный сюжет Destiny 2, участвуйте в сложных совместных миссиях или соревнуйтесь в различных режимах PvP-игры. Загрузите игру бесплатно и отправляйтесь к звездам – пусть о ваших подвигах слагают легенды!', '2019-08-01', '4.10', '7198.00', 67090, 'https://store.steampow2ered.com/app/1085660/Destiny_22/', '2023-06-26 18:32:03', '2023-06-26 18:32:03'),
(33, 'Это победа', 'УРАРАРАРА', '2023-07-28', '2.00', '3333.00', 2222, 'https://laracasts.com/discuss/channels/general-discussion/number-to-2-decimal-placed-blade', '2023-07-02 22:39:03', '2023-07-02 22:39:03'),
(35, 'dqwqdqd', 'dwascacdac', '2023-07-27', '3.00', '3242.00', 2342, 'https://drive.google.com/file/d/1dT6q_1JTXzuXf-orrs_pgzRIEPpY71sa/view?pli=1', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(36, 'efwewef', 'asadadawdwad', '2023-07-23', '3.00', '2141.00', 3333, 'http://localhost:8080/gamxxxes/create/', '2023-07-03 03:24:51', '2023-07-03 03:24:51'),
(37, 'sdsdcs', '2332423432scasc', '2023-07-18', '2.00', '234.00', 12312, 'http://ldddocalhost:8080/games/create/', '2023-07-03 03:26:18', '2023-07-03 03:26:18');

-- --------------------------------------------------------

--
-- Структура таблицы `game_genre`
--

CREATE TABLE `game_genre` (
  `id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `genre_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `game_genre`
--

INSERT INTO `game_genre` (`id`, `game_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(2, 2, 2, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 6, NULL, NULL),
(7, 7, 7, NULL, NULL),
(8, 8, 8, NULL, NULL),
(9, 9, 9, NULL, NULL),
(10, 10, 10, NULL, NULL),
(12, 2, 11, NULL, NULL),
(14, 4, 11, NULL, NULL),
(15, 5, 11, NULL, NULL),
(16, 6, 11, NULL, NULL),
(17, 7, 11, NULL, NULL),
(18, 8, 11, NULL, NULL),
(19, 9, 11, NULL, NULL),
(20, 10, 11, NULL, NULL),
(22, 2, 12, NULL, NULL),
(24, 4, 12, NULL, NULL),
(25, 5, 12, NULL, NULL),
(26, 6, 12, NULL, NULL),
(27, 7, 12, NULL, NULL),
(28, 8, 12, NULL, NULL),
(29, 9, 12, NULL, NULL),
(30, 10, 12, NULL, NULL),
(32, 2, 13, NULL, NULL),
(34, 4, 13, NULL, NULL),
(35, 5, 13, NULL, NULL),
(36, 6, 13, NULL, NULL),
(37, 7, 13, NULL, NULL),
(38, 8, 13, NULL, NULL),
(39, 9, 13, NULL, NULL),
(40, 10, 13, NULL, NULL),
(42, 2, 14, NULL, NULL),
(44, 4, 14, NULL, NULL),
(45, 5, 14, NULL, NULL),
(46, 6, 14, NULL, NULL),
(47, 7, 14, NULL, NULL),
(48, 8, 14, NULL, NULL),
(49, 9, 14, NULL, NULL),
(50, 10, 14, NULL, NULL),
(52, 2, 15, NULL, NULL),
(54, 4, 15, NULL, NULL),
(55, 5, 15, NULL, NULL),
(56, 6, 15, NULL, NULL),
(57, 7, 15, NULL, NULL),
(58, 8, 15, NULL, NULL),
(59, 9, 15, NULL, NULL),
(60, 10, 15, NULL, NULL),
(62, 2, 16, NULL, NULL),
(64, 4, 16, NULL, NULL),
(65, 5, 16, NULL, NULL),
(66, 6, 16, NULL, NULL),
(67, 7, 16, NULL, NULL),
(68, 8, 16, NULL, NULL),
(69, 9, 16, NULL, NULL),
(70, 10, 16, NULL, NULL),
(72, 2, 17, NULL, NULL),
(74, 4, 17, NULL, NULL),
(75, 5, 17, NULL, NULL),
(76, 6, 17, NULL, NULL),
(77, 7, 17, NULL, NULL),
(78, 8, 17, NULL, NULL),
(79, 9, 17, NULL, NULL),
(80, 10, 17, NULL, NULL),
(82, 2, 18, NULL, NULL),
(84, 4, 18, NULL, NULL),
(85, 5, 18, NULL, NULL),
(86, 6, 18, NULL, NULL),
(87, 7, 18, NULL, NULL),
(88, 8, 18, NULL, NULL),
(89, 9, 18, NULL, NULL),
(90, 10, 18, NULL, NULL),
(92, 2, 19, NULL, NULL),
(94, 4, 19, NULL, NULL),
(95, 5, 19, NULL, NULL),
(96, 6, 19, NULL, NULL),
(97, 7, 19, NULL, NULL),
(98, 8, 19, NULL, NULL),
(99, 9, 19, NULL, NULL),
(100, 10, 19, NULL, NULL),
(102, 2, 20, NULL, NULL),
(104, 4, 20, NULL, NULL),
(105, 5, 20, NULL, NULL),
(106, 6, 20, NULL, NULL),
(107, 7, 20, NULL, NULL),
(108, 8, 20, NULL, NULL),
(109, 9, 20, NULL, NULL),
(110, 10, 20, NULL, NULL),
(129, 22, 21, NULL, NULL),
(130, 22, 22, NULL, NULL),
(140, 33, 5, NULL, NULL),
(142, 35, 4, NULL, NULL),
(143, 36, 19, NULL, NULL),
(144, 37, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `game_platform`
--

CREATE TABLE `game_platform` (
  `id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `platform_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `game_platform`
--

INSERT INTO `game_platform` (`id`, `game_id`, `platform_id`, `created_at`, `updated_at`) VALUES
(10, 22, 1, NULL, NULL),
(19, 33, 2, NULL, NULL),
(21, 35, 2, NULL, NULL),
(22, 36, 2, NULL, NULL),
(23, 37, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `game_team`
--

CREATE TABLE `game_team` (
  `id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `game_team`
--

INSERT INTO `game_team` (`id`, `game_id`, `team_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(12, 2, 2, NULL, NULL),
(14, 4, 2, NULL, NULL),
(15, 5, 2, NULL, NULL),
(16, 6, 2, NULL, NULL),
(17, 7, 2, NULL, NULL),
(18, 8, 2, NULL, NULL),
(19, 9, 2, NULL, NULL),
(20, 10, 2, NULL, NULL),
(22, 2, 3, NULL, NULL),
(24, 4, 3, NULL, NULL),
(25, 5, 3, NULL, NULL),
(26, 6, 3, NULL, NULL),
(27, 7, 3, NULL, NULL),
(28, 8, 3, NULL, NULL),
(29, 9, 3, NULL, NULL),
(30, 10, 3, NULL, NULL),
(32, 2, 4, NULL, NULL),
(34, 4, 4, NULL, NULL),
(35, 5, 4, NULL, NULL),
(36, 6, 4, NULL, NULL),
(37, 7, 4, NULL, NULL),
(38, 8, 4, NULL, NULL),
(39, 9, 4, NULL, NULL),
(40, 10, 4, NULL, NULL),
(42, 2, 5, NULL, NULL),
(44, 4, 5, NULL, NULL),
(45, 5, 5, NULL, NULL),
(46, 6, 5, NULL, NULL),
(47, 7, 5, NULL, NULL),
(48, 8, 5, NULL, NULL),
(49, 9, 5, NULL, NULL),
(50, 10, 5, NULL, NULL),
(52, 2, 6, NULL, NULL),
(54, 4, 6, NULL, NULL),
(55, 5, 6, NULL, NULL),
(56, 6, 6, NULL, NULL),
(57, 7, 6, NULL, NULL),
(58, 8, 6, NULL, NULL),
(59, 9, 6, NULL, NULL),
(60, 10, 6, NULL, NULL),
(62, 2, 7, NULL, NULL),
(64, 4, 7, NULL, NULL),
(65, 5, 7, NULL, NULL),
(66, 6, 7, NULL, NULL),
(67, 7, 7, NULL, NULL),
(68, 8, 7, NULL, NULL),
(69, 9, 7, NULL, NULL),
(70, 10, 7, NULL, NULL),
(72, 2, 8, NULL, NULL),
(74, 4, 8, NULL, NULL),
(75, 5, 8, NULL, NULL),
(76, 6, 8, NULL, NULL),
(77, 7, 8, NULL, NULL),
(78, 8, 8, NULL, NULL),
(79, 9, 8, NULL, NULL),
(80, 10, 8, NULL, NULL),
(82, 2, 9, NULL, NULL),
(84, 4, 9, NULL, NULL),
(85, 5, 9, NULL, NULL),
(86, 6, 9, NULL, NULL),
(87, 7, 9, NULL, NULL),
(88, 8, 9, NULL, NULL),
(89, 9, 9, NULL, NULL),
(90, 10, 9, NULL, NULL),
(92, 2, 10, NULL, NULL),
(94, 4, 10, NULL, NULL),
(95, 5, 10, NULL, NULL),
(96, 6, 10, NULL, NULL),
(97, 7, 10, NULL, NULL),
(98, 8, 10, NULL, NULL),
(99, 9, 10, NULL, NULL),
(100, 10, 10, NULL, NULL),
(101, 22, 18, NULL, NULL),
(111, 35, 3, NULL, NULL),
(112, 36, 3, NULL, NULL),
(113, 37, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sallie Stamm', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(2, 'Eloy Aufderhar', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(3, 'Myriam Hansen', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(4, 'Pat Waelchi', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(5, 'Licensed Plastic Cheese', '2023-06-24 19:51:07', '2023-06-26 11:49:08'),
(6, 'Soledad Ryan II', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(7, 'Bria Mann III', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(8, 'Ernie Kilback', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(9, 'Gudrun King', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(10, 'Mr. Giles Cole', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(11, 'Albertha Schumm I', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(12, 'Caitlyn Hayes', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(13, 'Adrian Ernser', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(14, 'Johanna Kautzer', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(15, 'Prof. Judah Gulgowski DVM', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(16, 'Joanne Boyle', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(17, 'Casey Daniel', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(18, 'Prof. Abigail Emard', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(19, 'Corine Christiansen Jr.', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(20, 'Prof. Maxime Kemmer', '2023-06-26 11:48:17', '2023-06-26 11:48:17'),
(21, 'Экшены', '2023-06-26 17:59:37', '2023-06-26 17:59:37'),
(22, 'Приключения', '2023-06-26 17:59:57', '2023-06-26 17:59:57');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `imgPath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgURL` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `game_id`, `imgPath`, `imgURL`, `created_at`, `updated_at`) VALUES
(4, 2, 'https://via.placeholder.com/640x480.png/004411?text=perferendis', 'https://via.placeholder.com/640x480.png/00eedd?text=reiciendis', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(5, 2, 'https://via.placeholder.com/640x480.png/0000aa?text=porro', 'https://via.placeholder.com/640x480.png/0055dd?text=accusamus', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(6, 2, 'https://via.placeholder.com/640x480.png/003344?text=illum', 'https://via.placeholder.com/640x480.png/008855?text=illum', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(10, 4, 'https://via.placeholder.com/640x480.png/00aa44?text=voluptas', 'https://via.placeholder.com/640x480.png/0066ee?text=dolorem', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(11, 4, 'https://via.placeholder.com/640x480.png/0044bb?text=ut', 'https://via.placeholder.com/640x480.png/00cc44?text=natus', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(12, 4, 'https://via.placeholder.com/640x480.png/00eeaa?text=quia', 'https://via.placeholder.com/640x480.png/0099bb?text=quia', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(13, 5, 'https://via.placeholder.com/640x480.png/004466?text=velit', 'https://via.placeholder.com/640x480.png/00ee33?text=ut', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(14, 5, 'https://via.placeholder.com/640x480.png/002299?text=aliquam', 'https://via.placeholder.com/640x480.png/002222?text=mollitia', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(15, 5, 'https://via.placeholder.com/640x480.png/0077aa?text=optio', 'https://via.placeholder.com/640x480.png/007788?text=incidunt', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(16, 6, 'https://via.placeholder.com/640x480.png/0055cc?text=eveniet', 'https://via.placeholder.com/640x480.png/00cc22?text=similique', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(17, 6, 'https://via.placeholder.com/640x480.png/006611?text=quaerat', 'https://via.placeholder.com/640x480.png/005533?text=magnam', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(18, 6, 'https://via.placeholder.com/640x480.png/002211?text=ipsa', 'https://via.placeholder.com/640x480.png/0077dd?text=earum', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(19, 7, 'https://via.placeholder.com/640x480.png/007733?text=iste', 'https://via.placeholder.com/640x480.png/0011dd?text=neque', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(20, 7, 'https://via.placeholder.com/640x480.png/0077bb?text=provident', 'https://via.placeholder.com/640x480.png/008866?text=nulla', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(21, 7, 'https://via.placeholder.com/640x480.png/00ee44?text=voluptates', 'https://via.placeholder.com/640x480.png/0077bb?text=aspernatur', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(22, 8, 'https://via.placeholder.com/640x480.png/00aabb?text=voluptatum', 'https://via.placeholder.com/640x480.png/00bb88?text=temporibus', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(23, 8, 'https://via.placeholder.com/640x480.png/006666?text=sit', 'https://via.placeholder.com/640x480.png/00bbaa?text=accusamus', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(24, 8, 'https://via.placeholder.com/640x480.png/00ff11?text=facere', 'https://via.placeholder.com/640x480.png/006699?text=at', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(25, 9, 'https://via.placeholder.com/640x480.png/00cc44?text=et', 'https://via.placeholder.com/640x480.png/002266?text=sed', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(26, 9, 'https://via.placeholder.com/640x480.png/00ee33?text=debitis', 'https://via.placeholder.com/640x480.png/00ddcc?text=velit', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(27, 9, 'https://via.placeholder.com/640x480.png/00aaff?text=labore', 'https://via.placeholder.com/640x480.png/007711?text=et', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(28, 10, 'https://via.placeholder.com/640x480.png/00bb11?text=repudiandae', 'https://via.placeholder.com/640x480.png/003333?text=et', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(29, 10, 'https://via.placeholder.com/640x480.png/00ff88?text=aliquam', 'https://via.placeholder.com/640x480.png/00eeee?text=ut', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(30, 10, 'https://via.placeholder.com/640x480.png/008844?text=porro', 'https://via.placeholder.com/640x480.png/0044dd?text=qui', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(49, 22, 'images/game-images/33fc950d24b7386e3c0731e35e38bb78.jpg', 'http://127.0.0.1:8000/storage/images/game-images/33fc950d24b7386e3c0731e35e38bb78.jpg', '2023-06-26 18:32:03', '2023-06-26 18:32:03'),
(50, 22, 'images/game-images/79687302c6d5adc22db8e33b4ff42c8f.jpg', 'http://127.0.0.1:8000/storage/images/game-images/79687302c6d5adc22db8e33b4ff42c8f.jpg', '2023-06-26 18:32:03', '2023-06-26 18:32:03'),
(51, 22, 'images/game-images/8e45f7c8b77364d3e4c48f3080080d76.jpg', 'http://127.0.0.1:8000/storage/images/game-images/8e45f7c8b77364d3e4c48f3080080d76.jpg', '2023-06-26 18:32:03', '2023-06-26 18:32:03'),
(52, 22, 'images/game-images/a57b643c5951a1b551c2eb22bf133284.jpg', 'http://127.0.0.1:8000/storage/images/game-images/a57b643c5951a1b551c2eb22bf133284.jpg', '2023-06-26 18:32:04', '2023-06-26 18:32:04'),
(53, 22, 'images/game-images/46554e33e87bd99c846c8350eba68293.jpg', 'http://127.0.0.1:8000/storage/images/game-images/46554e33e87bd99c846c8350eba68293.jpg', '2023-06-26 18:32:04', '2023-06-26 18:32:04'),
(63, 33, 'images/game-images/28d0e44270b0b7bc6492731038a3f6b1.jpg', 'http://127.0.0.1:8000/storage/images/game-images/28d0e44270b0b7bc6492731038a3f6b1.jpg', '2023-07-02 22:39:03', '2023-07-02 22:39:03'),
(64, 33, 'images/game-images/a66c27d4bc49eaafe11e18a6b5203ca2.jpg', 'http://127.0.0.1:8000/storage/images/game-images/a66c27d4bc49eaafe11e18a6b5203ca2.jpg', '2023-07-02 22:39:03', '2023-07-02 22:39:03'),
(65, 33, 'images/game-images/eee4f050de50227f611faddf17985416.png', 'http://127.0.0.1:8000/storage/images/game-images/eee4f050de50227f611faddf17985416.png', '2023-07-02 22:39:03', '2023-07-02 22:39:03'),
(66, 33, 'images/game-images/04b66b21cb60232f22739862d9060603.jpg', 'http://127.0.0.1:8000/storage/images/game-images/04b66b21cb60232f22739862d9060603.jpg', '2023-07-02 22:39:03', '2023-07-02 22:39:03'),
(67, 35, 'images/game-images/9389ebc7b126d7b46501fbffc1379512.jpg', 'http://127.0.0.1:8000/storage/images/game-images/9389ebc7b126d7b46501fbffc1379512.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(68, 35, 'images/game-images/1ff7373cdebc7d38d592c9b642518961.jpg', 'http://127.0.0.1:8000/storage/images/game-images/1ff7373cdebc7d38d592c9b642518961.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(69, 35, 'images/game-images/bc330cee057ce9a33d66c6696996e3f3.png', 'http://127.0.0.1:8000/storage/images/game-images/bc330cee057ce9a33d66c6696996e3f3.png', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(70, 35, 'images/game-images/28f470d368cbe5babec8fcd73c616cfe.jpg', 'http://127.0.0.1:8000/storage/images/game-images/28f470d368cbe5babec8fcd73c616cfe.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(71, 35, 'images/game-images/01f491bb2d0514ff45f5a31de0199a34.jpg', 'http://127.0.0.1:8000/storage/images/game-images/01f491bb2d0514ff45f5a31de0199a34.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(72, 35, 'images/game-images/eff84718b68e4e91a77cf5edf658d9a3.jpg', 'http://127.0.0.1:8000/storage/images/game-images/eff84718b68e4e91a77cf5edf658d9a3.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(73, 35, 'images/game-images/94b85d4cf87d726edea4e58c9cf37349.jpg', 'http://127.0.0.1:8000/storage/images/game-images/94b85d4cf87d726edea4e58c9cf37349.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(74, 35, 'images/game-images/6df1a42d610be43a969365f2bdbaae3b.jpg', 'http://127.0.0.1:8000/storage/images/game-images/6df1a42d610be43a969365f2bdbaae3b.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(75, 35, 'images/game-images/2d700d0eb9ee852ac09d1ee01d6ec3d1.jpg', 'http://127.0.0.1:8000/storage/images/game-images/2d700d0eb9ee852ac09d1ee01d6ec3d1.jpg', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(76, 35, 'images/game-images/2899b9e3ba73f5efd0713cdb8eb1909c.png', 'http://127.0.0.1:8000/storage/images/game-images/2899b9e3ba73f5efd0713cdb8eb1909c.png', '2023-07-03 03:20:27', '2023-07-03 03:20:27'),
(77, 36, 'images/game-images/64e4c5cff1eadbc635391c36d9277aaa.png', 'http://127.0.0.1:8000/storage/images/game-images/64e4c5cff1eadbc635391c36d9277aaa.png', '2023-07-03 03:24:51', '2023-07-03 03:24:51'),
(78, 37, 'images/game-images/91dcf72635f29152744981667ca7814e.jpg', 'http://127.0.0.1:8000/storage/images/game-images/91dcf72635f29152744981667ca7814e.jpg', '2023-07-03 03:26:18', '2023-07-03 03:26:18');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_18_001339_create_games_table', 1),
(6, '2023_06_18_191012_create_roles_table', 1),
(7, '2023_06_21_170056_create_genres_table', 1),
(8, '2023_06_22_130302_create_platforms_table', 1),
(9, '2023_06_22_134142_create_teams_table', 1),
(10, '2023_06_23_113152_create_images_table', 1),
(11, '2014_10_12_000001_create_users_table', 2),
(12, '2014_10_12_00000_create_users_table', 3),
(13, '2014_10_12_00001_create_users_table', 4),
(14, '2014_10_12_00002_create_users_table', 5),
(15, '2023_06_26_221715_create_comment_table', 6),
(16, '2023_06_26_225339_create_comments_table', 7);

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
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `platforms`
--

INSERT INTO `platforms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Windows', '2023-06-26 11:47:47', '2023-06-26 11:47:47'),
(2, 'MacOS', '2023-06-26 11:47:47', '2023-06-26 11:47:47'),
(3, 'Xbox', '2023-06-26 11:47:47', '2023-06-26 11:47:47');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', '2023-06-24 19:51:07', '2023-06-24 19:51:07'),
(2, 'admin', '2023-06-24 19:51:07', '2023-06-24 19:51:07');

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgPath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `name`, `imgPath`, `imgURL`, `email`, `description`, `created_at`, `updated_at`) VALUES
(1, 'adipisci', 'https://via.placeholder.com/640x480.png/00ddff?text=fugit', 'https://via.placeholder.com/640x480.png/0011dd?text=aut', 'doyle.amara@eichmann.net', 'Id excepturi impedit nam maxime assumenda rerum.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(2, 'ipsa', 'https://via.placeholder.com/640x480.png/0077ff?text=repellendus', 'https://via.placeholder.com/640x480.png/00eedd?text=nostrum', 'lucile.stanton@skiles.biz', 'Rerum aut unde pariatur harum omnis ex.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(3, 'voluptatibus', 'https://via.placeholder.com/640x480.png/00dddd?text=ut', 'https://via.placeholder.com/640x480.png/0000ee?text=eius', 'leland.ullrich@aufderhar.biz', 'Consequatur omnis excepturi omnis eum odit enim.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(4, 'eveniet', 'https://via.placeholder.com/640x480.png/00dd22?text=voluptates', 'https://via.placeholder.com/640x480.png/009988?text=dolore', 'sallie12@upton.com', 'Corporis ex architecto nihil enim dolor.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(5, 'vel', 'https://via.placeholder.com/640x480.png/00bb88?text=veritatis', 'https://via.placeholder.com/640x480.png/0033bb?text=maxime', 'vdietrich@tromp.com', 'Inventore consequatur sed eum sequi sed in.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(6, 'veniam', 'https://via.placeholder.com/640x480.png/0088ee?text=vel', 'https://via.placeholder.com/640x480.png/00bbdd?text=quae', 'gabe81@kuvalis.com', 'Veritatis commodi explicabo minima sed.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(7, 'nihil', 'https://via.placeholder.com/640x480.png/006622?text=praesentium', 'https://via.placeholder.com/640x480.png/00ee22?text=tenetur', 'bashirian.antonina@kreiger.com', 'Eaque quod culpa nostrum voluptatum sapiente sed.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(8, 'cum', 'https://via.placeholder.com/640x480.png/000022?text=et', 'https://via.placeholder.com/640x480.png/0066dd?text=dolores', 'johnathan.halvorson@beatty.com', 'Est qui iure sit consequatur.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(9, 'in', 'https://via.placeholder.com/640x480.png/00eeff?text=velit', 'https://via.placeholder.com/640x480.png/006677?text=aut', 'sortiz@bauch.info', 'Nihil enim eum et ut non unde labore quia.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(10, 'est', 'https://via.placeholder.com/640x480.png/006666?text=ea', 'https://via.placeholder.com/640x480.png/0033bb?text=accusantium', 'damaris.grant@toy.net', 'Et sapiente eius qui recusandae quis rerum.', '2023-06-26 11:49:01', '2023-06-26 11:49:01'),
(18, 'Bungie', 'images/teams/4cca9a98838ce685fddde168c5e905e4.png', 'http://127.0.0.1:8000/storage/images/teams/4cca9a98838ce685fddde168c5e905e4.png', 'bungie@dash.ru', 'Приключения', '2023-06-26 18:23:34', '2023-06-26 18:23:34'),
(19, 'eeeeeee', 'images/teams/765beeab7b4be4b8060fab880b22dfaa.png', 'http://127.0.0.1:8000/storage/images/teams/765beeab7b4be4b8060fab880b22dfaa.png', 'null', 'vdvdvdv@ffff.ffff', '2023-07-02 22:53:13', '2023-07-02 22:53:13');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '2023-06-26 20:26:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bSaZAPAqmd', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(2, 'admin', 'admin@gmail.com', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aXp8MnTZTi', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(3, 'Adrien Bahringer', 'vmiller@example.com', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V8vTVWVry0', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(4, 'Jed Rice', 'benedict.rohan@example.org', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j8KHgROcjv', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(5, 'Scot Wisozk', 'wwunsch@example.com', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PnYyuFqarx', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(6, 'Saige Lind PhD', 'ratke.celia@example.com', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AiWfCkG2VO', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(7, 'Nakia Batz IV', 'medhurst.camille@example.com', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BZcUiNK6KQ', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(8, 'Kelsie Greenfelder', 'molly.bayer@example.org', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wxzHD1YNbl', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(9, 'Dr. Fae Greenfelder', 'johns.kathryne@example.com', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EraD85JKEb', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(10, 'Miss Katheryn Bins V', 'robel.arlie@example.net', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mUa7iitHiB', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(11, 'Prof. Sanford Beahan MD', 'lindsey19@example.org', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mKiBTsa6ka', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(12, 'Faye Nikolaus', 'caleigh64@example.org', '2023-06-26 20:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0WQKYkBhss', '2023-06-26 20:26:57', '2023-06-26 20:26:57'),
(13, 'Hosea Keeling IV', 'mbrakus@example.org', '2023-06-26 20:31:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZNJTtsMMuf', '2023-06-26 20:31:32', '2023-06-26 20:31:32'),
(14, 'tetrapack', 'rr@r.r', NULL, '$2y$10$rUKlSI/E7qPuMzQfSF.u.ucf5SAQFHuBE.R02m1jxiRINiiz2Hrgq', NULL, '2023-07-01 21:02:19', '2023-07-01 21:02:19'),
(15, '123123123', '123@123.123', NULL, '$2y$10$uPyW.a/phNZkM9rt6Pya2O8mwNu6WNcRc2iQo0tC.Nc4SxplMyHKa', NULL, '2023-07-01 21:12:01', '2023-07-01 21:12:01'),
(16, '1231231233', '123@123.1233', NULL, '$2y$10$Cql925i0UFn/hFhU4fXG5ui9H0omKirK1nupWLIeq22B7Wz0jSOFu', NULL, '2023-07-01 21:14:13', '2023-07-01 21:14:13'),
(17, '1231231231', '1231231231@gmail.ru', NULL, '$2y$10$my5/Ufeh0Lz4ZtEhsh62b.lyikSuUfbOxXgy6SkEA3Oje6HhP23py', NULL, '2023-07-01 21:14:43', '2023-07-01 21:14:43'),
(18, 'Miss Dora Glover', 'Santina.Cole@hotmail.com', NULL, '$2y$10$JrvMrfU5NYt03jRntNbXIuNuLmRIbcw2nRXqmhM/oeiGhOk9rY9nq', NULL, '2023-07-01 21:15:12', '2023-07-01 21:15:12'),
(19, '12312312312', '1231231231@gmail.ru2', NULL, '$2y$10$Svy42MEW0IhV.tC1RE3XieSr2rPt.Ziypw7iXjZPnhcOOK2WNGEhG', NULL, '2023-07-01 21:18:00', '2023-07-01 21:18:00'),
(20, 'Angela Lubowitz', 'Robert_Paucek@hotmail.com', NULL, '$2y$10$70HGUa1TAJozjU.ruR/YyuFjMiSLj.R9UlJLSskYBTh5UQMWhclVS', NULL, '2023-07-01 21:19:54', '2023-07-01 21:19:54'),
(21, '123', '123@2.22', NULL, '$2y$10$6QoiC8pHoObhi1AgUBXCTuvhApA0mAbNgOWZXw4ZX/MF4FxHQfeKS', NULL, '2023-07-01 21:23:16', '2023-07-01 21:23:16'),
(22, '1231231232', '321@321.32', NULL, '$2y$10$LkT67QFP14idw0vYaQ1RzObOrRLw3VqPreiArK55A3aS3k8soVptm', NULL, '2023-07-01 21:30:11', '2023-07-01 21:30:11'),
(23, '444444', '555@gail.com', NULL, '$2y$10$srIHqmzecUXoXmSYH6attOM6wTrNUr6O3/OMG3KFcXKb4Yg9bpcjG', NULL, '2023-07-01 21:33:01', '2023-07-01 21:33:01'),
(24, '123312', '312231@3333.3333', NULL, '$2y$10$ndrXdakGqWFfRPn2iQKBoe6eL9bTs9AeytNBxjGUbIXKj66MHRwTy', NULL, '2023-07-01 21:39:10', '2023-07-01 21:39:10'),
(25, '131313', '131313@31313.31', NULL, '$2y$10$UtVjJZfFf.1PZI50zBqkE.ejPhVbWR4xAzUx9VRTeNOBvqv86Rrle', NULL, '2023-07-01 21:47:01', '2023-07-01 21:47:01'),
(26, '12313133', '313131313@333.33', NULL, '$2y$10$LzHqNoZaTmSG0x5U1RjsVuSRhduNsQ3uDMNZZxNpmMcPPDrg97nD2', NULL, '2023-07-01 21:54:17', '2023-07-01 21:54:17'),
(27, '3333', '3333333@hhh.re', NULL, '$2y$10$vxVPYKWjdQYw63rNEXmyE.iMAycQgUoqFHcUlGZ/fptHCjaf.3ZBa', NULL, '2023-07-01 21:56:03', '2023-07-01 21:56:03'),
(28, 'qwe', 'qweqeq@dsfgsd.rt', NULL, '$2y$10$Ni0UcMLJZ.ZQ/CHugv8PR.waz541iskCApI0Inqfl5eci2heAhQ4u', NULL, '2023-07-01 21:58:22', '2023-07-01 21:58:22'),
(37, 'YaPidarok', 'pidorik@p.p', NULL, '$2y$10$S0Uwo4IbbyED4eO5Kw9e9OHU0Leeu21nMXJbcbQr3avwKmBXeazku', NULL, '2023-07-02 07:04:40', '2023-07-02 07:04:40'),
(38, 'newUser', 'newuser@gmail.com', NULL, '$2y$10$HJvKquVPh3rL9RmE/iy0y.sQxVogkgf.N.ecRDx5rh26EFwc4485e', NULL, '2023-07-02 23:46:43', '2023-07-02 23:46:43');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_game_id_foreign` (`game_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_name_unique` (`name`),
  ADD UNIQUE KEY `games_link_unique` (`link`),
  ADD KEY `games_rating_index` (`rating`),
  ADD KEY `games_price_index` (`price`);

--
-- Индексы таблицы `game_genre`
--
ALTER TABLE `game_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_genre_game_id_foreign` (`game_id`),
  ADD KEY `game_genre_genre_id_foreign` (`genre_id`);

--
-- Индексы таблицы `game_platform`
--
ALTER TABLE `game_platform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_platform_game_id_foreign` (`game_id`),
  ADD KEY `game_platform_platform_id_foreign` (`platform_id`);

--
-- Индексы таблицы `game_team`
--
ALTER TABLE `game_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_team_game_id_foreign` (`game_id`),
  ADD KEY `game_team_team_id_foreign` (`team_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `images_imgpath_unique` (`imgPath`),
  ADD UNIQUE KEY `images_imgurl_unique` (`imgURL`),
  ADD KEY `images_game_id_foreign` (`game_id`);

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
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
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
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `game_genre`
--
ALTER TABLE `game_genre`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT для таблицы `game_platform`
--
ALTER TABLE `game_platform`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `game_team`
--
ALTER TABLE `game_team`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `game_genre`
--
ALTER TABLE `game_genre`
  ADD CONSTRAINT `game_genre_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `game_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `game_platform`
--
ALTER TABLE `game_platform`
  ADD CONSTRAINT `game_platform_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `game_platform_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `game_team`
--
ALTER TABLE `game_team`
  ADD CONSTRAINT `game_team_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `game_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
