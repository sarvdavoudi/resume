-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 07:04 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arzyabi-uni`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_education`
--

CREATE TABLE `all_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_education`
--

INSERT INTO `all_education` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'کل سیستم آموزش', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answerables`
--

CREATE TABLE `answerables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `answerable_id` int(11) NOT NULL,
  `answerable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answerables`
--

INSERT INTO `answerables` (`id`, `user_id`, `question_id`, `answer_id`, `answerable_id`, `answerable_type`) VALUES
(100, 20, 87, 1, 1, 'App\\Models\\College'),
(101, 20, 88, 2, 1, 'App\\Models\\College'),
(102, 20, 89, 2, 1, 'App\\Models\\College'),
(103, 20, 90, 3, 1, 'App\\Models\\College'),
(104, 20, 91, 3, 1, 'App\\Models\\College'),
(125, 16, 87, 1, 1, 'App\\Models\\College'),
(126, 16, 88, 2, 1, 'App\\Models\\College'),
(127, 16, 89, 3, 1, 'App\\Models\\College'),
(128, 16, 90, 2, 1, 'App\\Models\\College'),
(129, 16, 91, 1, 1, 'App\\Models\\College'),
(130, 26, 97, 2, 1, 'App\\Models\\AllEducation'),
(131, 26, 98, 3, 1, 'App\\Models\\AllEducation'),
(132, 26, 99, 2, 1, 'App\\Models\\AllEducation'),
(133, 26, 100, 3, 1, 'App\\Models\\AllEducation'),
(134, 26, 101, 1, 1, 'App\\Models\\AllEducation'),
(135, 13, 87, 1, 1, 'App\\Models\\College'),
(136, 13, 88, 2, 1, 'App\\Models\\College'),
(137, 13, 89, 3, 1, 'App\\Models\\College'),
(138, 13, 90, 2, 1, 'App\\Models\\College'),
(139, 13, 91, 2, 1, 'App\\Models\\College'),
(156, 22, 110, 2, 9, 'App\\Models\\Lesson'),
(157, 22, 111, 3, 9, 'App\\Models\\Lesson'),
(158, 22, 112, 2, 9, 'App\\Models\\Lesson'),
(159, 22, 113, 3, 9, 'App\\Models\\Lesson'),
(160, 22, 87, 1, 2, 'App\\Models\\College'),
(161, 22, 88, 2, 2, 'App\\Models\\College'),
(162, 22, 89, 3, 2, 'App\\Models\\College'),
(163, 22, 90, 2, 2, 'App\\Models\\College'),
(164, 22, 91, 2, 2, 'App\\Models\\College'),
(165, 20, 110, 1, 6, 'App\\Models\\Lesson'),
(166, 20, 111, 2, 6, 'App\\Models\\Lesson'),
(167, 20, 112, 3, 6, 'App\\Models\\Lesson'),
(168, 20, 113, 2, 6, 'App\\Models\\Lesson'),
(169, 20, 110, 2, 8, 'App\\Models\\Lesson'),
(170, 20, 111, 3, 8, 'App\\Models\\Lesson'),
(171, 20, 112, 2, 8, 'App\\Models\\Lesson'),
(172, 20, 113, 2, 8, 'App\\Models\\Lesson'),
(173, 20, 110, 1, 5, 'App\\Models\\Lesson'),
(174, 20, 111, 1, 5, 'App\\Models\\Lesson'),
(175, 20, 112, 1, 5, 'App\\Models\\Lesson'),
(176, 20, 113, 1, 5, 'App\\Models\\Lesson'),
(177, 20, 110, 1, 7, 'App\\Models\\Lesson'),
(178, 20, 111, 3, 7, 'App\\Models\\Lesson'),
(179, 20, 112, 3, 7, 'App\\Models\\Lesson'),
(180, 20, 113, 1, 7, 'App\\Models\\Lesson'),
(181, 16, 110, 2, 6, 'App\\Models\\Lesson'),
(182, 16, 111, 3, 6, 'App\\Models\\Lesson'),
(183, 16, 112, 3, 6, 'App\\Models\\Lesson'),
(184, 16, 113, 3, 6, 'App\\Models\\Lesson'),
(185, 16, 110, 2, 8, 'App\\Models\\Lesson'),
(186, 16, 111, 3, 8, 'App\\Models\\Lesson'),
(187, 16, 112, 3, 8, 'App\\Models\\Lesson'),
(188, 16, 113, 3, 8, 'App\\Models\\Lesson'),
(189, 16, 110, 1, 5, 'App\\Models\\Lesson'),
(190, 16, 111, 1, 5, 'App\\Models\\Lesson'),
(191, 16, 112, 1, 5, 'App\\Models\\Lesson'),
(192, 16, 113, 1, 5, 'App\\Models\\Lesson'),
(193, 16, 110, 2, 7, 'App\\Models\\Lesson'),
(194, 16, 111, 2, 7, 'App\\Models\\Lesson'),
(195, 16, 112, 1, 7, 'App\\Models\\Lesson'),
(196, 16, 113, 2, 7, 'App\\Models\\Lesson'),
(197, 18, 110, 3, 9, 'App\\Models\\Lesson'),
(198, 18, 111, 3, 9, 'App\\Models\\Lesson'),
(199, 18, 112, 3, 9, 'App\\Models\\Lesson'),
(200, 18, 113, 3, 9, 'App\\Models\\Lesson'),
(201, 18, 87, 3, 2, 'App\\Models\\College'),
(202, 18, 88, 3, 2, 'App\\Models\\College'),
(203, 18, 89, 3, 2, 'App\\Models\\College'),
(204, 18, 90, 3, 2, 'App\\Models\\College'),
(205, 18, 91, 3, 2, 'App\\Models\\College'),
(206, 28, 97, 3, 1, 'App\\Models\\AllEducation'),
(207, 28, 98, 3, 1, 'App\\Models\\AllEducation'),
(208, 28, 99, 3, 1, 'App\\Models\\AllEducation'),
(209, 28, 100, 3, 1, 'App\\Models\\AllEducation'),
(210, 28, 101, 3, 1, 'App\\Models\\AllEducation'),
(211, 30, 87, 3, 2, 'App\\Models\\College'),
(212, 30, 88, 3, 2, 'App\\Models\\College'),
(213, 30, 89, 3, 2, 'App\\Models\\College'),
(214, 30, 90, 2, 2, 'App\\Models\\College'),
(215, 30, 91, 2, 2, 'App\\Models\\College'),
(216, 31, 110, 2, 10, 'App\\Models\\Lesson'),
(217, 31, 111, 1, 10, 'App\\Models\\Lesson'),
(218, 31, 112, 2, 10, 'App\\Models\\Lesson'),
(219, 31, 113, 3, 10, 'App\\Models\\Lesson'),
(220, 31, 87, 3, 3, 'App\\Models\\College'),
(221, 31, 88, 3, 3, 'App\\Models\\College'),
(222, 31, 89, 3, 3, 'App\\Models\\College'),
(223, 31, 90, 3, 3, 'App\\Models\\College'),
(224, 31, 91, 3, 3, 'App\\Models\\College'),
(225, 32, 110, 3, 10, 'App\\Models\\Lesson'),
(226, 32, 111, 2, 10, 'App\\Models\\Lesson'),
(227, 32, 112, 1, 10, 'App\\Models\\Lesson'),
(228, 32, 113, 1, 10, 'App\\Models\\Lesson'),
(229, 32, 87, 3, 3, 'App\\Models\\College'),
(230, 32, 88, 3, 3, 'App\\Models\\College'),
(231, 32, 89, 3, 3, 'App\\Models\\College'),
(232, 32, 90, 3, 3, 'App\\Models\\College'),
(233, 32, 91, 3, 3, 'App\\Models\\College'),
(234, 33, 97, 1, 1, 'App\\Models\\AllEducation'),
(235, 33, 98, 1, 1, 'App\\Models\\AllEducation'),
(236, 33, 99, 1, 1, 'App\\Models\\AllEducation'),
(237, 33, 100, 1, 1, 'App\\Models\\AllEducation'),
(238, 33, 101, 1, 1, 'App\\Models\\AllEducation'),
(239, 34, 87, 1, 3, 'App\\Models\\College'),
(240, 34, 88, 1, 3, 'App\\Models\\College'),
(241, 34, 89, 1, 3, 'App\\Models\\College'),
(242, 34, 90, 1, 3, 'App\\Models\\College'),
(243, 34, 91, 1, 3, 'App\\Models\\College'),
(244, 35, 110, 2, 11, 'App\\Models\\Lesson'),
(245, 35, 111, 2, 11, 'App\\Models\\Lesson'),
(246, 35, 112, 3, 11, 'App\\Models\\Lesson'),
(247, 35, 113, 3, 11, 'App\\Models\\Lesson'),
(248, 35, 87, 3, 4, 'App\\Models\\College'),
(249, 35, 88, 3, 4, 'App\\Models\\College'),
(250, 35, 89, 3, 4, 'App\\Models\\College'),
(251, 35, 90, 2, 4, 'App\\Models\\College'),
(252, 35, 91, 2, 4, 'App\\Models\\College'),
(253, 36, 110, 2, 11, 'App\\Models\\Lesson'),
(254, 36, 111, 3, 11, 'App\\Models\\Lesson'),
(255, 36, 112, 2, 11, 'App\\Models\\Lesson'),
(256, 36, 113, 3, 11, 'App\\Models\\Lesson'),
(257, 36, 87, 2, 4, 'App\\Models\\College'),
(258, 36, 88, 2, 4, 'App\\Models\\College'),
(259, 36, 89, 3, 4, 'App\\Models\\College'),
(260, 36, 90, 1, 4, 'App\\Models\\College'),
(261, 36, 91, 3, 4, 'App\\Models\\College'),
(262, 37, 97, 1, 1, 'App\\Models\\AllEducation'),
(263, 37, 98, 2, 1, 'App\\Models\\AllEducation'),
(264, 37, 99, 2, 1, 'App\\Models\\AllEducation'),
(265, 37, 100, 1, 1, 'App\\Models\\AllEducation'),
(266, 37, 101, 2, 1, 'App\\Models\\AllEducation'),
(267, 38, 87, 2, 4, 'App\\Models\\College'),
(268, 38, 88, 1, 4, 'App\\Models\\College'),
(269, 38, 89, 1, 4, 'App\\Models\\College'),
(270, 38, 90, 1, 4, 'App\\Models\\College'),
(271, 38, 91, 2, 4, 'App\\Models\\College');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'مطلوب', 20, '2021-06-05 01:52:20', '2021-06-05 01:53:55'),
(2, 'نسبتا مطلوب', 10, '2021-06-05 01:56:31', '2021-06-05 01:57:46'),
(3, 'نامطلوب', 5, '2021-06-05 01:57:15', '2021-06-05 01:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'دانشکده برق و کامپیوتر', '2021-05-27 09:57:47', '2021-05-31 10:52:59'),
(2, 'دانشکده پدافند غیرعامل', '2021-05-31 10:53:58', '2021-05-31 10:53:58'),
(3, 'دانشکده صنایع', '2021-05-31 10:54:12', '2021-05-31 10:54:12'),
(4, 'دانشکده شیمی', '2021-05-31 10:54:24', '2021-05-31 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `college_master`
--

CREATE TABLE `college_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `college_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `college_master`
--

INSERT INTO `college_master` (`id`, `user_id`, `college_id`) VALUES
(6, 6, 1),
(7, 13, 1),
(8, 14, 1),
(9, 15, 1),
(10, 30, 2),
(11, 34, 3),
(12, 38, 4);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formables`
--

CREATE TABLE `formables` (
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `formable_id` int(11) NOT NULL,
  `formable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formables`
--

INSERT INTO `formables` (`form_id`, `formable_id`, `formable_type`) VALUES
(3, 8, 'App\\Models\\Lesson'),
(3, 7, 'App\\Models\\Lesson'),
(3, 6, 'App\\Models\\Lesson'),
(3, 5, 'App\\Models\\Lesson'),
(2, 4, 'App\\Models\\College'),
(2, 3, 'App\\Models\\College'),
(2, 2, 'App\\Models\\College'),
(2, 1, 'App\\Models\\College'),
(3, 9, 'App\\Models\\Lesson'),
(3, 10, 'App\\Models\\Lesson'),
(3, 11, 'App\\Models\\Lesson');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feds` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `feds`, `created_at`, `updated_at`) VALUES
(2, 'فرم ارزیابی واحد آموزش دانشکده', 0, '2021-06-07 09:40:24', '2021-06-07 18:18:51'),
(3, 'فرم ارزیابی اساتید', 0, '2021-06-07 10:03:41', '2021-06-07 10:03:41'),
(4, 'فرم ارزیابی واحد آموزش کل دانشگاه', 1, '2021-06-07 10:06:01', '2021-06-07 18:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'سیستم های تصمیم یار/ گروه کامپیوتر', '2021-05-31 11:17:44', '2021-06-10 17:01:05'),
(6, 'الگوریتم و محاسبات/ گروه کامپیوتر', '2021-05-31 11:18:04', '2021-06-10 17:01:29'),
(7, 'هوش مصنوعی/ گروه کامپیوتر', '2021-05-31 11:18:18', '2021-06-10 17:00:52'),
(8, 'سمینار/ گروه کامپیوتر', '2021-05-31 11:18:37', '2021-06-10 17:01:18'),
(9, 'مدیریت بحران/ گروه پدافند', '2021-06-10 09:53:45', '2021-06-10 17:00:34'),
(10, 'اتوماسیون صنعتی/ گروه صنایع', '2021-06-10 17:02:03', '2021-06-10 17:02:18'),
(11, 'زیست فناوری/ گروه شیمی', '2021-06-10 17:06:56', '2021-06-10 17:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_master`
--

CREATE TABLE `lesson_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_master`
--

INSERT INTO `lesson_master` (`id`, `user_id`, `lesson_id`) VALUES
(5, 6, 5),
(6, 13, 6),
(7, 15, 7),
(8, 14, 8),
(9, 30, 9),
(10, 34, 10),
(11, 38, 11);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_student`
--

CREATE TABLE `lesson_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_student`
--

INSERT INTO `lesson_student` (`id`, `user_id`, `lesson_id`) VALUES
(3, 20, 6),
(4, 21, 6),
(7, 16, 6),
(8, 17, 6),
(11, 20, 8),
(12, 21, 8),
(15, 16, 8),
(16, 17, 8),
(19, 20, 5),
(20, 21, 5),
(23, 16, 5),
(24, 17, 5),
(27, 20, 7),
(28, 21, 7),
(31, 16, 7),
(32, 17, 7),
(37, 22, 9),
(38, 23, 9),
(39, 18, 9),
(40, 19, 9),
(41, 31, 10),
(42, 32, 10),
(43, 35, 11),
(44, 36, 11);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_24_181334_create_types_table', 1),
(5, '2021_01_24_181424_create_categories_table', 1),
(6, '2021_01_24_181524_create_permissions_table', 1),
(7, '2021_01_24_182049_create_roles_table', 1),
(8, '2021_01_24_182629_create_permission_role_table', 1),
(9, '2021_01_24_182713_create_role_user_table', 1),
(10, '2021_01_24_182751_create_permission_user_table', 1),
(11, '2021_01_24_182901_create_setting_groups_table', 1),
(12, '2021_01_24_182944_create_settings_table', 1),
(13, '2021_05_27_131225_add_type_to_permissions', 2),
(14, '2021_05_27_132111_add_type_to_roles', 3),
(15, '2021_05_27_140305_create_lessons_table', 4),
(16, '2021_05_27_140401_create_colleges_table', 4),
(17, '2021_05_27_140812_create_college_master_table', 5),
(18, '2021_05_27_141002_create_lesson_master_table', 6),
(19, '2021_05_27_141111_create_lesson_student_table', 7),
(24, '2021_05_30_093832_create_forms_table', 8),
(25, '2021_05_30_093930_create_questions_table', 8),
(26, '2021_05_30_102637_create_answers_table', 8),
(27, '2021_05_30_105650_create_formables_table', 8),
(29, '2021_06_05_102112_create_answerables_table', 9),
(30, '2021_06_06_122729_add_for_education_system_to_forms', 10),
(31, '2021_06_06_185445_create_all_education_table', 11),
(33, '2021_06_06_201120_add_id_to_asnwerables', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `english_name`, `persian_name`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'مدیر ها', 1, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(2, 'Category', 'Category', 'دسته بندی ها', 1, '2021-05-27 05:04:27', '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(3, 'User', 'User', 'کاربران', 1, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(4, 'Setting', 'Setting', 'تنظیمات', 1, '2021-05-27 05:04:27', '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(5, 'toMaster', 'toMaster', 'نظر دهی به اساتید', 2, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(6, 'toEducation', 'toEducation', 'نظر دهی به واحد آموزش دانشکده', 2, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(7, 'College', 'College', 'مراکز آموزشی', 1, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(8, 'Answers', 'Answers', 'پاسخ فرم ها', 1, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(9, 'toAllEducation', 'toAllEducation', 'نظردهی به واحد آموزش کل دانشگاه', 2, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(10, 'Forms', 'Forms', 'فرم ها', 1, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 5, 1),
(2, 6, 2),
(3, 5, 3),
(4, 6, 3),
(6, 6, 1),
(8, 9, 4),
(10, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `form_id`, `created_at`, `updated_at`) VALUES
(87, 'نحوه برخورد و مساعدت کارمندان واحد آموزش دانشکده', 2, '2021-06-10 15:35:12', '2021-06-10 15:35:12'),
(88, 'رعایت عدالت و عدم تبعیض بین اساتید و دانشجویان', 2, '2021-06-10 15:35:12', '2021-06-10 15:35:12'),
(89, 'انعکاس نیازها و مسائل به مراجع بالاتر', 2, '2021-06-10 15:35:12', '2021-06-10 15:35:12'),
(90, 'میزان تعهد و مسئولیت پذیری', 2, '2021-06-10 15:35:12', '2021-06-10 15:35:12'),
(91, 'میزان در دسترس بودن و پیشبرد خواسته ها', 2, '2021-06-10 15:35:12', '2021-06-10 15:35:12'),
(97, 'اعلام به موقع ابلاغیه ها به واحد آموزش دانشکده ها', 4, '2021-06-10 15:38:45', '2021-06-10 15:38:45'),
(98, 'داشتن تعامل لازم با دانشکده ها', 4, '2021-06-10 15:38:45', '2021-06-10 15:38:45'),
(99, 'مدیریت مسائل و رفع مشکلات', 4, '2021-06-10 15:38:45', '2021-06-10 15:38:45'),
(100, 'توزیع عادلانه امکانات بین دانشکده ها', 4, '2021-06-10 15:38:45', '2021-06-10 15:38:45'),
(101, 'تدوین و اصلاح شیوه نامه های مربوطه', 4, '2021-06-10 15:38:45', '2021-06-10 15:38:45'),
(110, 'تعامل با دانشجو', 3, '2021-06-10 17:07:25', '2021-06-10 17:07:25'),
(111, 'تدریس مطالب بروز', 3, '2021-06-10 17:07:25', '2021-06-10 17:07:25'),
(112, 'نمره دهی', 3, '2021-06-10 17:07:25', '2021-06-10 17:07:25'),
(113, 'بیان و انتقال مطلب', 3, '2021-06-10 17:07:25', '2021-06-10 17:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'دانشجو', 2, NULL, '2021-05-27 08:57:38', '2021-05-27 08:57:38'),
(2, 'استاد', 2, NULL, '2021-05-27 09:05:11', '2021-05-27 09:05:11'),
(3, 'فارغ التحصیل', 2, NULL, '2021-05-27 09:05:24', '2021-05-31 10:18:07'),
(4, 'کارمند بخش آموزش', 2, NULL, '2021-06-04 00:27:32', '2021-06-04 00:27:32'),
(5, 'مدیر کل واحد آموزش دانشگاه', 1, NULL, '2021-06-10 08:11:47', '2021-06-10 08:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(6, 2),
(13, 2),
(14, 2),
(16, 3),
(17, 3),
(18, 3),
(20, 1),
(21, 1),
(15, 2),
(19, 3),
(22, 1),
(23, 1),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(24, 5),
(30, 2),
(31, 1),
(32, 3),
(33, 4),
(34, 2),
(35, 1),
(36, 3),
(37, 4),
(38, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_group_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `type`, `description`, `value`, `setting_group_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'name', 'string', 'نام وبسایت', 'ارزیابی سیستم آموزش دانشگاه', 1, NULL, '2021-05-27 05:04:27', '2021-05-31 10:36:04'),
(2, 'logo', 'file', 'لوگو', '/uploads/settings/logo.png', 1, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(3, 'url', 'string', 'آدرس وبسایت', 'http://localhost:8000', 1, NULL, '2021-05-27 05:04:27', '2021-05-31 10:36:04'),
(4, 'terms', 'textarea', 'قوانین استفاده از وبسایت', '<p>قوانین استفاده از وبسایت را اینجا بنویسید....</p>', 2, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(5, 'about_us', 'textarea', 'درباره ما', '<p>متن درباره ما ...</p>', 2, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(6, 'contact_us', 'textarea', 'تماس با ما', '<p>متن تماس با ما...</p>', 3, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(7, 'email', 'string', 'ایمیل', 'support@site.com', 2, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(8, 'phone', 'string', 'شماره تماس', '+98 021 123456', 2, NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `setting_groups`
--

CREATE TABLE `setting_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_groups`
--

INSERT INTO `setting_groups` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'وبسایت', NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(2, 'درباره ما', NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(3, 'تماس با ما', NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(4, 'سئو', NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(2, 'Admin', NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27'),
(3, 'User', NULL, '2021-05-27 05:04:27', '2021-05-27 05:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) NOT NULL DEFAULT 3,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile`, `type_id`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'مدیر ارشد(ادمین سایت)', NULL, 1, 'superadmin@yahoo.com', NULL, '$2y$10$z15iPhw3xMD7xxZT/0xy5.JP4bXBC5eV3ZJJxwjStw/.EPFNEJfW2', NULL, NULL, '2021-05-27 05:04:27', '2021-06-12 07:41:58'),
(6, 'شیرازی/گروه کامپیوتر', NULL, 3, 'shirazi@yahoo.com', NULL, '$2y$10$VxlHBOsUF3i8767.DiRmF.tnng/sGFCYAqkHgYp7NaH3I45j1k/5e', NULL, NULL, '2021-05-31 10:19:17', '2021-06-10 15:14:04'),
(13, 'بهجتی/گروه کامپیوتر', NULL, 3, 'behjati@yahoo.com', NULL, '$2y$10$h86CwGw6A//QbOvVDcX65ePBNAjX1FbyCJsBUYP1wpQcIeu50VmXS', NULL, NULL, '2021-05-31 10:58:05', '2021-06-10 15:14:20'),
(14, 'داداش تبار/گروه کامپیوتر', NULL, 3, 'dadashtabar@yahoo.com', NULL, '$2y$10$p1CDWUv3xfvGNQk.HYT51.P6Pc3tpayRgUeUR0AoubMV.IUfjgu52', NULL, NULL, '2021-05-31 10:59:08', '2021-06-10 15:14:35'),
(15, 'کیایی/گروه کامپیوتر', NULL, 3, 'kiaie@yahoo.com', NULL, '$2y$10$Rr21Ey49Sv2EkSPiOQIUlerHSfpsf9fHDp2zYz6CNc0B1ssYO0U7a', NULL, NULL, '2021-05-31 11:00:42', '2021-06-10 15:15:01'),
(16, 'رضایی/گروه کامپیوتر', NULL, 3, 'rezaie@yahoo.com', NULL, '$2y$10$evl83LUGJtj5.9MZY/aNa.LC1FqPm.lIpo42rG2UReK3AA.VsKplq', NULL, NULL, '2021-05-31 11:01:32', '2021-06-10 15:16:04'),
(17, 'امامی/گروه کامپیوتر', NULL, 3, 'emami@yahoo.com', NULL, '$2y$10$oW7eQbikMfMbEDzBn5zGkuRrOtHlTuTNBEKZvrrVAE5AJT.tfbLXW', NULL, NULL, '2021-05-31 11:02:12', '2021-06-10 15:16:16'),
(18, 'اکبری/گروه پدافند', NULL, 3, 'akbari@yahoo.com', NULL, '$2y$10$9V1cte93u8HDOhOSM/7pAOJfDGElJEL299XMNDvZNmMam6DdJzQLy', NULL, NULL, '2021-05-31 11:02:59', '2021-06-10 15:18:30'),
(19, 'رادمنش/گروه پدافند', NULL, 3, 'radmanesh@yahoo.com', NULL, '$2y$10$2DRaMi4K2dyvQbJgpjm/XunUsCV6.lhBtoV.lqlWqXCnS8KERpwem', NULL, NULL, '2021-05-31 11:04:29', '2021-06-10 15:18:43'),
(20, 'حقیقی/گروه کامپیوتر', NULL, 3, 'haghighi@yahoo.com', NULL, '$2y$10$eHuEmkSIrWQWyJAwAU3vG.FbCpPQ17b3l8.CieQU7Sfq1o.jzzs26', NULL, NULL, '2021-05-31 11:06:53', '2021-06-10 15:15:35'),
(21, 'قربانی/گروه کامپیوتر', NULL, 3, 'ghorbani@yahoo.com', NULL, '$2y$10$HXUWnQd1DsxdLdqIuY5mc.GunbhGajMeXZuSSrkGYJIYOq45Qs4m.', NULL, NULL, '2021-05-31 11:07:25', '2021-06-10 15:15:48'),
(22, 'شکری/گروه پدافند', NULL, 3, 'shokri@yahoo.com', NULL, '$2y$10$qgxUvV/E1OV8TPWOaUUq4eRcdFlWLL.6.CINqoA0uLGnFGNSAMiye', NULL, NULL, '2021-05-31 11:13:33', '2021-06-10 15:17:47'),
(23, 'صادقی/گروه پدافند', NULL, 3, 'sadeghi@yahoo.com', NULL, '$2y$10$/ym0mHpEEd6TPDuJVr2C3uds70v8UvvHgW5HHBZ7FLk4ibUjywNrK', NULL, NULL, '2021-05-31 11:14:29', '2021-06-10 15:18:03'),
(24, 'رئیسی /مدیر کل واحد آموزش', NULL, 2, 'reisi@yahoo.com', NULL, '$2y$10$v0pK6yWYKY3z7uWP82mQYu0ZSGBUCQXZBqznDZD8DZLz9nGEzyRZu', NULL, NULL, '2021-06-07 09:15:33', '2021-06-12 07:09:06'),
(25, 'ادمین سایت', NULL, 2, 'Admin@yahoo.com', NULL, '$2y$10$4qqsvKyGbJO2egzFADCSoOLOsjKBBYwhEK6GBrq94uF5eIx41CXcm', NULL, '2021-06-12 07:01:31', '2021-06-07 09:18:27', '2021-06-12 07:01:31'),
(26, 'طوماری/گروه کامپیوتر', NULL, 3, 'tomari@yahoo.com', NULL, '$2y$10$yf7rsVoZd6rJw5A.A9tQFuk7wLB9ky72txQvT0OdP0yC/oNcr3Y0y', NULL, NULL, '2021-06-07 09:42:12', '2021-06-12 11:16:14'),
(27, 'گرگپور/گروه کامپیوتر', NULL, 3, 'gorgpour@yahoo.com', NULL, '$2y$10$V8ZuytawoyIyC7sfjfi.FOC5VRSD2PuvkIKjIG3M0P1si0r7QBEIG', NULL, NULL, '2021-06-07 09:43:15', '2021-06-10 15:16:52'),
(28, 'احمدی/گروه پدافند', NULL, 3, 'ahmadi@yahoo.com', NULL, '$2y$10$07m7LdOvUYYaIVnYkrKsMODL1Bb2luJWjLkTMmN99UhDqM1.HzYHi', NULL, NULL, '2021-06-07 09:44:50', '2021-06-10 15:19:10'),
(29, 'حسینی/گروه پدافند', NULL, 3, 'hosseini@yahoo.com', NULL, '$2y$10$PP6K5FLt75g9W1ixLzx.4exJRWhFIgz0IY06BdSHomjV4g3cqF45G', NULL, NULL, '2021-06-07 09:45:47', '2021-06-10 15:19:23'),
(30, 'پدافندی/گروه پدافند', NULL, 3, 'padafandi@yahoo.com', NULL, '$2y$10$mblaWsVhynWp0TY5.PmKXesEigrGbyakPB0.ICsyq.vxYI7rmWiD.', NULL, NULL, '2021-06-10 09:53:18', '2021-06-10 15:19:54'),
(31, 'نمازی/گروه صنایع', NULL, 3, 'namazi@yahoo.com', NULL, '$2y$10$KkqgLkc8nT9/R8lhtZQqPuceHTnwjGmkzcgxIGkjEu3pfcmxdvF4e', NULL, NULL, '2021-06-10 16:52:17', '2021-06-10 16:52:17'),
(32, 'اسدی/گروه صنایع', NULL, 3, 'asadi@yahoo.com', NULL, '$2y$10$bc7GBDCnkNj8EzNqqutlCuL85NXSt4XUKGW1cWESC4JpbxkuEesKm', NULL, NULL, '2021-06-10 16:53:12', '2021-06-10 16:53:12'),
(33, 'رجبی/گروه صنایع', NULL, 3, 'rajabi@yahoo.com', NULL, '$2y$10$KKK7FqLjmHN3cbvZsK5U8eTvzi0ho2N.nFkgAwfd2GX.NpS5nAh8e', NULL, NULL, '2021-06-10 16:54:02', '2021-06-10 16:54:02'),
(34, 'رستمی/گروه صنایع', NULL, 3, 'rostami@yahoo.com', NULL, '$2y$10$szJWLzklYkQ8d543V6lpGeL1C1xV3FEsDi1kqCOoKwLT/wA9bD0Fa', NULL, NULL, '2021-06-10 16:54:38', '2021-06-10 16:54:38'),
(35, 'کمالی/گروه شیمی', NULL, 3, 'kamali@yahoo.com', NULL, '$2y$10$WmfwXU0MK90RcWZV6HGVVu0e7Nqt5pCm327HU.XsHQ4iyYLtnVNr6', NULL, NULL, '2021-06-10 16:55:20', '2021-06-10 16:55:20'),
(36, 'شریفی/گروه شیمی', NULL, 3, 'sharifi@yahoo.com', NULL, '$2y$10$HYerTng2GTWTpC1811GqkOqji2XQwtipT25tbb7xCI10K8tXyG31e', NULL, NULL, '2021-06-10 16:56:15', '2021-06-10 16:56:15'),
(37, 'شریعتی/گروه شیمی', NULL, 3, 'shariati@yahoo.com', NULL, '$2y$10$XtCw/h6974BXyBtG5DDiZu2fwuzCYoWxIWTiD53UMYTSO7LjYx90u', NULL, NULL, '2021-06-10 16:57:32', '2021-06-10 16:57:32'),
(38, 'نیازی/گروه شیمی', NULL, 3, 'niazi@yahoo.com', NULL, '$2y$10$IfL41uSYQ/YLMULijR8z2emC1HKZOikJn4iaNcPHpZKBGsSBOPxBS', NULL, NULL, '2021-06-10 16:58:09', '2021-06-10 16:58:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_education`
--
ALTER TABLE `all_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answerables`
--
ALTER TABLE `answerables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answerables_user_id_foreign` (`user_id`),
  ADD KEY `answerables_question_id_foreign` (`question_id`),
  ADD KEY `answerables_answer_id_foreign` (`answer_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_master`
--
ALTER TABLE `college_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_master_user_id_foreign` (`user_id`),
  ADD KEY `college_master_college_id_foreign` (`college_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `formables`
--
ALTER TABLE `formables`
  ADD KEY `formables_form_id_foreign` (`form_id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_master`
--
ALTER TABLE `lesson_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_master_user_id_foreign` (`user_id`),
  ADD KEY `lesson_master_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`),
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD KEY `permission_user_user_id_foreign` (`user_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_form_id_foreign` (`form_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`),
  ADD KEY `settings_setting_group_id_foreign` (`setting_group_id`);

--
-- Indexes for table `setting_groups`
--
ALTER TABLE `setting_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_education`
--
ALTER TABLE `all_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answerables`
--
ALTER TABLE `answerables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `college_master`
--
ALTER TABLE `college_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lesson_master`
--
ALTER TABLE `lesson_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lesson_student`
--
ALTER TABLE `lesson_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `setting_groups`
--
ALTER TABLE `setting_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answerables`
--
ALTER TABLE `answerables`
  ADD CONSTRAINT `answerables_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answerables_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answerables_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `college_master`
--
ALTER TABLE `college_master`
  ADD CONSTRAINT `college_master_college_id_foreign` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `college_master_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `formables`
--
ALTER TABLE `formables`
  ADD CONSTRAINT `formables_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_master`
--
ALTER TABLE `lesson_master`
  ADD CONSTRAINT `lesson_master_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_master_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_setting_group_id_foreign` FOREIGN KEY (`setting_group_id`) REFERENCES `setting_groups` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
