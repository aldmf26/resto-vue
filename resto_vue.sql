-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 08:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawans`
--

CREATE TABLE `karyawans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_035557_create_karyawans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_distribusi`
--

CREATE TABLE `tb_distribusi` (
  `id_distribusi` int(11) NOT NULL,
  `nm_distribusi` varchar(20) NOT NULL,
  `service` enum('Y','T') NOT NULL,
  `ongkir` enum('Y','T') NOT NULL,
  `tax` enum('T','Y') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_distribusi`
--

INSERT INTO `tb_distribusi` (`id_distribusi`, `nm_distribusi`, `service`, `ongkir`, `tax`, `created_at`, `updated_at`) VALUES
(1, 'Dine-In / Takeway', 'Y', 'T', 'Y', NULL, '2022-03-07 20:22:43'),
(2, 'Gojek', 'T', 'T', 'T', NULL, '2022-03-07 20:22:38'),
(3, 'Delivery', 'Y', 'Y', 'Y', NULL, '2022-03-01 23:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `tb_handicap`
--

CREATE TABLE `tb_handicap` (
  `id_handicap` int(11) NOT NULL,
  `handicap` varchar(200) NOT NULL,
  `point` int(11) NOT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `id_lokasi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_handicap`
--

INSERT INTO `tb_handicap` (`id_handicap`, `handicap`, `point`, `ket`, `id_lokasi`, `created_at`, `updated_at`) VALUES
(1, 'L1', 1, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(2, 'L2', 2, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(3, 'L1', 1, 'mix vegetable', 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(4, 'L2', 2, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(5, 'L3', 3, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(6, 'L4', 4, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(7, 'L5', 5, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(8, 'L3', 3, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(9, 'L4', 4, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(10, 'L5', 5, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(11, 'L6', 6, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(12, 'L7', 7, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(13, 'L8', 8, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(14, 'L9', 9, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(15, 'L10', 10, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(16, 'L11', 11, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(17, 'L12', 12, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(18, 'L13', 13, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(19, 'L14', 14, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(20, 'L15', 15, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(21, 'L16', 16, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(22, 'L6', 6, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(23, 'L7', 7, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(24, 'L8', 8, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(25, 'L9', 9, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(26, 'L10', 10, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(27, 'L11', 11, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(28, 'L12', 12, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(29, 'L13', 13, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(30, 'L14', 14, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(31, 'L15', 15, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(32, 'L16', 16, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(33, 'L17', 17, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(34, 'L18', 18, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(35, 'L19', 19, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(36, 'L 20', 20, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(37, 'L 21', 21, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(38, 'L30', 30, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(39, 'L50', 50, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(40, 'L30', 30, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(41, 'L50', 50, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(43, 'L20', 20, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(44, 'L100', 100, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(45, 'L60', 60, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(46, 'L24', 24, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(85, '3', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(86, '4', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(87, '5', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(88, '6', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(89, '7', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(90, '11', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(91, '12', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(92, '13', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(93, '14', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(94, '15', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(95, '16', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(96, '17', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(97, '18', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(98, '19', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(99, '20', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(100, '21', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(101, '38', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(102, '39', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(103, '43', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(104, '44', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(105, '45', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(106, '46', 0, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(107, 'L100', 100, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(108, 'L60', 60, NULL, 2, '2022-12-19 13:40:59', '2022-12-19 13:40:59'),
(109, 'L70', 70, NULL, 1, '2022-12-19 13:40:59', '2022-12-19 13:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kd_kategori` int(11) NOT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`kd_kategori`, `kategori`, `lokasi`, `created_at`, `updated_at`, `id`) VALUES
(1, 'Agemono dan Yakimono', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(2, 'Ala Carte', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(3, 'Appetizer dan Salad', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(4, 'Bento', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(5, 'Beverages', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(6, 'Bibimbap', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(7, 'Donburi', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(8, 'Grill', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(9, 'Menu Baru (Tkm)', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(10, 'Menu Baru (Sdb)', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(11, 'Ongkir', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(12, 'Paket', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(13, 'Ramen dan Udon', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(14, 'Set Shabu-shabu dan Sukiyaki', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(15, 'Shabu-shabu Kaldu', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(16, 'Soup', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(17, 'Sukiyaki dan Shabu - Shabu (Tambahan)', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(18, 'Sushi Rolls', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(19, 'Tambahan', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(23, 'Beverages', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(24, 'Ongkir', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(25, 'Soondobu Express', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(26, 'Chirashi & Hampers', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(27, 'prepare', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(28, 'prepare', 'SOONDOBU', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0),
(29, 'Topping', 'TAKEMORI', '2022-12-19 13:40:59', '2022-12-19 13:40:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kd_menu` int(11) NOT NULL,
  `nm_menu` varchar(120) NOT NULL,
  `tipe` enum('food','drink') NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `lokasi` tinyint(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `aktif` enum('on','off') NOT NULL,
  `tgl_sold` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_handicap` int(11) DEFAULT NULL,
  `id_station` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `id_kategori`, `kd_menu`, `nm_menu`, `tipe`, `jenis`, `lokasi`, `image`, `aktif`, `tgl_sold`, `created_at`, `updated_at`, `id_handicap`, `id_station`) VALUES
(1, 3, 1101, 'Chawan mushi', 'food', 'menu', 1, 'CHAWAN MUSHI 1.jpg', 'off', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 5, 16),
(2, 14, 1102, 'Edamame tkmr', 'food', 'menu', 1, 'EDAMAME.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 18),
(3, 3, 1103, 'Ikan salmon skin furai', 'food', 'menu', 1, 'SALMON SKIN FURAI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 16),
(6, 3, 1106, 'Crispy gyoza', 'food', 'menu', 1, 'CRISPY GYOZA.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 16),
(7, 3, 1107, 'Yaki gyoza', 'food', 'menu', 1, 'YAKI GYOZA.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(8, 1, 1108, 'Ikan salmon teriyaki', 'food', 'menu', 1, 'SALMON TERIYAKI 1.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(11, 1, 1111, 'Chicken katsu', 'food', 'menu', 1, 'CHICKEN KATSU.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(12, 1, 1112, 'Tori karage', 'food', 'menu', 1, 'TORI KARAGE.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(14, 1, 1114, 'Chicken teriyaki', 'food', 'menu', 1, 'CHICKEN TERIYAKI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(16, 1, 1116, 'Ebi tempura', 'food', 'menu', 1, 'EBI TEMPURA.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 15, 16),
(18, 14, 1118, 'Beef udon', 'food', 'menu', 1, 'BEEF UDON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(20, 14, 1120, 'Shoyu beef ramen', 'food', 'menu', 1, 'SHOYU BEEF RAMEN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(21, 14, 1121, 'Spicy beef ramen', 'food', 'menu', 1, 'DRY SPICY BEEF RAMEN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(22, 14, 1122, 'Shoyu seafood ramen', 'food', 'menu', 1, 'SHOYU BEEF RAMEN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(23, 14, 1123, 'Spicy seafood ramen', 'food', 'menu', 1, 'SPICY SEAFOOD RAMEN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(24, 7, 1124, 'Gyutama don', 'food', 'menu', 1, 'GYUTAMA DON 1.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(25, 7, 1125, 'Oyako don', 'food', 'menu', 1, 'OYAKO DON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(26, 7, 1126, 'Dori don', 'food', 'menu', 1, 'DORI DON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(28, 7, 1128, 'Salmon fried rice', 'food', 'menu', 1, 'SALMON FRIED RICE.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(29, 14, 1129, 'Dynamite', 'food', 'menu', 1, 'DYNAMITE.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(30, 18, 1130, 'Aburi salmon nigiri sushi', 'food', 'menu', 1, 'ABURI SALMON NIGIRI SUSHI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(31, 18, 1131, 'Spicy aburi salmon', 'food', 'menu', 1, 'SPICY ABURI SALMON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(32, 18, 1132, 'Spicy salmon gunkan', 'food', 'menu', 1, 'SPICY SALMON GUNKAN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(33, 18, 1133, 'Volcano roll', 'food', 'menu', 1, 'VOLCANO ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(34, 1, 1134, 'Crunchy beef roll', 'food', 'menu', 1, 'CRUNCHY BEEF ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 16),
(35, 1, 1135, 'Crunchy salmon roll', 'food', 'menu', 1, 'CRUNCHY SALMON ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 16),
(36, 1, 1136, 'Crunchy chicken roll', 'food', 'menu', 1, 'CRUNCHY CHICKEN ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 16),
(37, 18, 1137, 'Merapi roll', 'food', 'menu', 1, 'MERAPI ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(38, 18, 1138, 'Birthday wans roll', 'food', 'menu', 1, 'BIRTHDAY WANS ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(39, 18, 1139, 'Philly roll', 'food', 'menu', 1, 'PHILLY ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(40, 18, 1140, 'Moss roll', 'food', 'menu', 1, 'MOSS ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(41, 18, 1141, 'California roll', 'food', 'menu', 1, 'CALIFORNIA ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(42, 18, 1142, 'Pollo roll', 'food', 'menu', 1, 'POLLO ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(43, 18, 1143, 'Kamikaze roll', 'food', 'menu', 1, 'KAMIKAZE ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(44, 18, 1144, 'Ken salmon roll', 'food', 'menu', 1, 'KEN SALMON ROLL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(46, 14, 1147, 'Mix seafood set', 'food', 'menu', 1, 'MIX SEAFOOD SET.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 14),
(52, 14, 1153, 'Wagyu rib eye set large 100 gr', 'food', 'menu', 1, 'WAGYU.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(53, 17, 1155, 'So tsukune', 'food', 'menu', 1, 'SO TSUKUNE 1.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(56, 17, 1158, 'So soun', 'food', 'menu', 1, 'SO SOUN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(57, 17, 1159, 'So udon mie besar', 'food', 'menu', 1, 'SO UDON MIE BESAR.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(58, 17, 1160, 'So raw egg (telur mentah)', 'food', 'menu', 1, 'SO RAW EGG (TELUR MENTAH).jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(59, 17, 1161, 'So prawn', 'food', 'menu', 1, 'SO PRAWN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(60, 17, 1162, 'So ikan salmon', 'food', 'menu', 1, 'SO IKAN SALMON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(61, 17, 1163, 'So saos ponzu', 'drink', 'menu', 1, 'SO SAOS POUNZU.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 15),
(62, 5, 1164, 'So gohan nasi putih', 'drink', 'menu', 1, 'SO GOHAN NASI PUTIH.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 15),
(63, 17, 1165, 'So standart us beef 100 gr', 'food', 'menu', 1, 'SO STANDART US BEEF 100 GR.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(64, 17, 1166, 'So australian rib eye 100 gr', 'food', 'menu', 1, 'SO AUSTRALIAN RIB EYE 100 GR.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(65, 17, 1167, 'So wagyu rib eye 100 gr', 'food', 'menu', 1, 'WAGYU.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(66, 17, 1168, 'So mixed vegetables', 'food', 'menu', 1, 'SO MIXED VEGETABLES.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(67, 29, 1169, 'Topping Taamago', 'food', 'menu', 1, 'SO GARLIC DAN ONION.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 18),
(70, 17, 1172, 'So mixed seafood', 'food', 'menu', 1, 'SO MIXED SEAFOOD.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 14),
(74, 4, 1177, 'Chicken teriyaki bento dan ebi tempura', 'food', 'menu', 1, 'YAKINIKU BENTO, EBI TEMPURA, SALMON HARUMAKI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(76, 4, 1179, 'Salmon teriyaki bento dan ebi tempura', 'food', 'menu', 1, 'YAKINIKU BENTO, EBI TEMPURA, SALMON HARUMAKI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(80, 1, 1199, 'Chicken namban', 'food', 'menu', 1, 'CHICKEN NAMBAN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(81, 14, 1200, 'Grilled chicken ramen', 'food', 'menu', 1, 'GRILLED CHICKEN RAMEN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(82, 18, 1201, 'Corn gunkan', 'food', 'menu', 1, 'CORN GUNKAN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(83, 14, 1202, 'Spicy beef udon', 'food', 'menu', 1, 'SPICY BEEF UDON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 18),
(87, 15, 1206, 'Kaldu original', 'food', 'menu', 1, 'KALDU ORIGINAL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', NULL, 14),
(88, 15, 1207, 'Kaldu tomyam', 'food', 'menu', 1, 'KALDU TOMYAM.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', NULL, 14),
(89, 15, 1208, 'Kaldu mix original dan tomyam ', 'food', 'menu', 1, 'KALDU MIX ORIGINAL DAN TOMYAM.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', NULL, 14),
(90, 15, 1209, 'Free saos ponzu', 'drink', 'menu', 1, 'FREE SAOS PONZU.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', NULL, 15),
(91, 15, 1210, 'Free saos thai suki', 'drink', 'menu', 1, 'FREE SAOS THAI SUKI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', NULL, 15),
(92, 17, 1211, 'Free saos sukiyaki', 'drink', 'menu', 1, 'SUKIYAKI KONDIMEN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 15),
(93, 17, 1212, 'So tomyam', 'food', 'menu', 1, 'SO TOMYAM.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(94, 17, 1213, 'So butter', 'food', 'menu', 1, 'SO BUTTER.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(96, 17, 1215, 'So saos thai suki', 'drink', 'menu', 1, 'SO SAOS SUKI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 15),
(97, 17, 1216, 'So saos sukiyaki', 'drink', 'menu', 1, 'SO SAOS SUKIYAKI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 15),
(99, 17, 1465, 'So boiled egg (telur mateng 1 butir)', 'food', 'menu', 1, 'SO BOILED EGG (TELUR MATENG).jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 18),
(100, 14, 1218, 'Dry spicy beef ramen', 'food', 'menu', 1, 'DRY SPICY BEEF RAMEN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 18),
(106, 18, 1138, 'free birthday wans roll ms', 'food', 'menu', 1, 'FREE BIRTHDAY WANS ROLL MS.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 15, 17),
(111, 17, 1461, 'So meatball xl', 'food', 'menu', 1, 'SO MEATBALL XL.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(122, 15, 1481, 'Free saos goma', 'drink', 'menu', 1, 'FREE SAOS GOMA.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', NULL, 15),
(123, 15, 1481, 'So Saos goma', 'drink', 'menu', 1, 'SAOS GOMA SO.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 15),
(132, 7, 3011, 'Una don', 'food', 'menu', 1, 'UNA DON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 16),
(133, 18, 3012, 'Unagi nigiri sushi', 'food', 'menu', 1, 'UNAGI NIGIRI SUSHI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(134, 18, 3013, 'Spicy unagi nigiri sushi', 'food', 'menu', 1, 'SPICY UNAGI NIGIRI SUSHI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(141, 18, 3020, 'Tuna gunkan', 'food', 'menu', 1, 'TUNA GUNKAN.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 17),
(142, 17, 3021, 'So mie ramyon', 'food', 'menu', 1, 'SO MIE RAMYON.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 4, 14),
(147, 14, 1149, 'Standart us beef set large 100 gr a', 'food', 'menu', 1, 'STANDART US BEEF SET LARGE 100 GR A.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(150, 14, 1151, 'australian rib eye set large 100 gr a', 'food', 'menu', 1, 'AUSTRALIAN RIB EYE SET LARGE 100 GR A.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 6, 14),
(153, 1, 1115, 'beef teriyaki a', 'food', 'menu', 1, 'BEEF TERIYAKI A.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(154, 7, 1127, 'yakiniku don a', 'food', 'menu', 1, 'YAKINIKU DON A.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(155, 4, 1175, 'yakiniku bento dan ebi tempura a', 'food', 'menu', 1, 'YAKINIKU BENTO, EBI TEMPURA, SALMON HARUMAKI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:56', '2022-12-19 13:40:56', 11, 16),
(157, 11, 11, 'Ongkir delivery', 'food', 'menu', 1, 'ONGKIR DELIVERY.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 13),
(159, 5, 3025, 'ice tea (tawar)', 'drink', 'menu', 1, 'ICE TEA (TAWAR).jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(160, 5, 3026, 'ice tea (manis)', 'drink', 'menu', 1, 'ICE TEA (MANIS).jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(161, 5, 3027, 'hot tea (tawar)', 'drink', 'menu', 1, 'HOT TEA (TAWAR).jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(162, 5, 3028, 'hot tea (manis)', 'drink', 'menu', 1, 'HOT TEA (MANIS).jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(164, 5, 1479, 'oreo tempura ice cream', 'drink', 'menu', 1, 'OREO TEMPURA ICE CREAM.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 15),
(167, 18, 3031, 'Mango sushi roll', 'food', 'menu', 1, 'WhatsApp_Image_2021-09-29_at_16_10_11.jpeg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(169, 18, 3033, 'Ika aburi shimeji', 'food', 'menu', 1, 'IKA ABURI SHIMEJI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 15, 17),
(170, 18, 3035, 'Ebi aburi beef', 'food', 'menu', 1, 'EBI ABURI BEEF.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 15, 17),
(171, 18, 3037, 'inari', 'food', 'menu', 1, 'INARI.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 17),
(172, 18, 3039, 'inari tamago', 'food', 'menu', 1, 'INARI TAMAGO.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 17),
(173, 18, 3041, 'inari chuka idako salad', 'food', 'menu', 1, 'INARI CHUKA IDAKO SALAD.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 17),
(174, 18, 3043, 'inari jellyfish', 'food', 'menu', 1, 'INARI JELLYFISH.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 17),
(175, 18, 3045, 'inari chuka wakame salad', 'food', 'menu', 1, 'INARI CHUKA WAKAME SALAD.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 17),
(176, 18, 3047, 'inari kyuri kani salad', 'food', 'menu', 1, 'INARI KYURI KANI SALAD.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 17),
(178, 3, 3051, 'chawan mushi unagi', 'food', 'menu', 1, 'CHAWAN MUSHI UNAGI.jpg', 'off', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 16),
(179, 3, 3053, 'chawan mushi ebi', 'food', 'menu', 1, 'CHAWAN MUSHI EBI.jpg', 'off', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 16),
(180, 14, 3055, 'chuka wakame salad', 'food', 'menu', 1, 'CHUKA WAKAME SALAD.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 18),
(181, 14, 3057, 'jellyfish salad', 'food', 'menu', 1, 'JELLYFISH SALAD.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 18),
(182, 14, 3059, 'chuka idako salad', 'food', 'menu', 1, 'CHUKA IDAKO SALAD.jpg', 'on', '0000-00-00', '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 18),
(183, 5, 1475, 'DRINK AT BAR TAKEMORI', 'drink', 'menu', 1, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(184, 5, 1466, 'AVOCADO JUICE', 'drink', 'menu', 1, 'AVOCADO JUICE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 15),
(185, 5, 1468, 'GREEN TEA ICE CREAM', 'drink', 'menu', 1, 'GREEN TEA ICE CREAM.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(186, 5, 1469, 'GREEN TEA MILKSHAKE', 'drink', 'menu', 1, 'GREEN TEA MILKSHAKE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 15),
(187, 5, 1470, 'ICE LEMON TEA', 'drink', 'menu', 1, 'ICE LEMON TEA.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 15),
(188, 5, 1471, 'LEMON JUICE', 'drink', 'menu', 1, 'LEMON JUICE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 15),
(190, 5, 1473, 'STRAWBERRY JUICE', 'drink', 'menu', 1, 'STRAWBERRY JUICE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 15),
(191, 5, 1474, 'BIRDNEST COLLAGEN', 'food', 'menu', 1, 'BIRDNEST COLLAGEN SDB.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 15),
(205, 16, 2111, 'KIMCHI JIGAE', 'food', 'menu', 2, 'KIMCHI JIGAE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(206, 16, 2112, 'CHICKEN COLLAGEN SOUP', 'food', 'menu', 2, 'CHICKEN COLLAGEN SOUP.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(207, 16, 2113, 'KOMUTAN SOUP', 'food', 'menu', 2, 'KOMUTAN SOUP.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(208, 16, 2114, 'SOONDOBU JIGAE', 'food', 'menu', 2, 'SOONDOBU JIGAE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(216, 8, 2123, 'EBI SHIO', 'food', 'menu', 2, 'EBI SHIO.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(217, 8, 2124, 'CHICKEN BULGOGI', 'food', 'menu', 2, 'CHICKEN BULGOGI.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(218, 2, 2125, 'CHILLY SEAFOOD RAMEN', 'food', 'menu', 2, 'CHILLY SEAFOOD RAMEN.jpg', 'off', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(230, 2, 2146, 'RICE', 'food', 'menu', 2, 'RICE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(231, 2, 2147, 'TEBASAKI', 'food', 'menu', 2, 'TEBASAKI.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(249, 8, 2165, 'CHICKEN ORIGINAL SAUCE', 'food', 'menu', 2, 'CHICKEN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(250, 8, 2166, 'CHICKEN SHIO', 'food', 'menu', 2, 'CHICKEN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(251, 8, 2167, 'CHICKEN SPICY SAUCE', 'food', 'menu', 2, 'CHICKEN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(253, 8, 2122, 'dori grill spicy sauce', 'food', 'menu', 2, 'SPICY DORI.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(254, 6, 2133, 'BIBIMBAP', 'food', 'menu', 2, 'BIBIMBAP II.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 26, 20),
(255, 6, 2169, 'TAMAGO YAKI', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(265, 2, 2106, 'FREE JAPCHAE BIRTHDAY', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(274, 2, 2196, 'SAMOSA', 'food', 'menu', 2, 'SAMOSA.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(280, 2, 2238, 'SELADA', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(282, 8, 3010, 'silk fish', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(283, 8, 3011, 'SALMON', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(284, 8, 3012, 'SILK FISH SHIO', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(310, 8, 2121, 'rosu bulgogi', 'food', 'menu', 2, 'TENDERLOIN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(311, 8, 2162, 'rosu original sauce', 'food', 'menu', 2, 'TENDERLOIN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(312, 8, 2163, 'rosu shio A', 'food', 'menu', 2, 'TENDERLOIN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(313, 8, 2164, 'rosu spicy sauce', 'food', 'menu', 2, 'TENDERLOIN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(314, 8, 2119, 'yakibelly bulgogi', 'food', 'menu', 2, 'YAKIBELLY.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(315, 8, 2157, 'yakibelly original sauce', 'food', 'menu', 2, 'YAKIBELLY.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(316, 8, 2158, 'yakibelly shio A', 'food', 'menu', 2, 'YAKIBELLY.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(317, 12, 2130, 'Set B : (7 items)', 'food', 'menu', 2, 'PAKET B.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(318, 12, 2129, 'SET A: (7 Items)', 'food', 'menu', 2, 'PAKET A.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(319, 8, 2160, 'gyu tan-shio A', 'food', 'menu', 2, 'GYU TAN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(320, 8, 2120, 'gyu tan-negi A', 'food', 'menu', 2, 'GYU TAN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(321, 8, 2161, 'gyu tan-tare A', 'food', 'menu', 2, 'GYU TAN.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(323, 8, 2159, 'yakibelly spicy sauce', 'food', 'menu', 2, 'YAKIBELLY.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(328, 23, 1479, 'oreo tempura ice cream', 'drink', 'menu', 2, 'OREO TEMPURA ICE CREAM.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 21),
(329, 8, 2118, 'saikoro bulgogi', 'food', 'menu', 2, 'SAIKORO.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(330, 8, 2154, 'saikoro original sauce', 'food', 'menu', 2, 'SAIKORO.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(331, 8, 2155, 'saikoro shio A', 'food', 'menu', 2, 'SAIKORO.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(332, 8, 2156, 'saikoro spicy sauce', 'food', 'menu', 2, 'SAIKORO.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(333, 8, 2116, 'wagyu bulgogi', 'food', 'menu', 2, 'WAGYU.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(334, 8, 2148, 'wagyu original sauce', 'food', 'menu', 2, 'WAGYU.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(335, 8, 2149, 'wagyu shio A', 'food', 'menu', 2, 'WAGYU.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(336, 8, 2150, 'wagyu spicy sauce', 'food', 'menu', 2, 'WAGYU.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(337, 12, 2168, 'Set C : (5 Items)', 'food', 'menu', 2, 'SUMO BEEF.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(345, 8, 3043, 'karubi shio', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(346, 8, 3044, 'karubi original sauce', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(347, 8, 3045, 'karubi spicy sauce', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(348, 8, 3046, 'karubi bulgogi', 'food', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(355, 23, 2180, 'GENMAICHA REFILL SDB', 'drink', 'menu', 2, 'GENMAICHA.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 21),
(356, 23, 2170, 'AVOCADO JUICE SDB', 'drink', 'menu', 2, 'AVOCADO JUICE SDB.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(358, 23, 2172, 'GREEN TEA ICE CREAM SDB', 'drink', 'menu', 2, 'GREEN TEA ICE CREAM.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 21),
(359, 23, 2173, 'GREEN TEA MILKSHAKE SDB', 'drink', 'menu', 2, 'GREEN TEA MILKSHAKE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(360, 23, 2174, 'ICE LEMON TEA SDB', 'drink', 'menu', 2, 'ICE LEMON TEA.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(361, 23, 2175, 'LEMON JUICE SDB', 'drink', 'menu', 2, 'LEMON JUICE.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(362, 23, 2176, 'MINERAL WATER SDB', 'drink', 'menu', 2, 'MINERAL WATER.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 21),
(368, 23, 2179, 'DRINK AT BAR SDB', 'drink', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 21),
(369, 23, 2184, 'COFFEE LATTE HOT', 'drink', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(370, 23, 2185, 'COFFEE LATTE COLD', 'drink', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(371, 23, 2186, 'COFFEE HITAM HOT', 'drink', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(372, 23, 2187, 'COFFEE HITAM COLD', 'drink', 'menu', 2, 'notfound.png', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(374, 23, 3033, 'GENMAICHA 1 LITRE', 'food', 'menu', 2, 'GENMAICHA.jpg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(376, 1, 3061, 'chicken katsu curry', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 16),
(377, 1, 3062, 'grilled chicken curry', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 16),
(378, 1, 3063, 'beef curry', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 16),
(379, 1, 3064, 'silk fish curry', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 16),
(380, 17, 3065, 'so beef enoki roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 14),
(381, 2, 2101, 'NAMURU MORI', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(382, 2, 2102, 'CHIJIMI', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(383, 2, 2103, 'kimchi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(386, 2, 2106, 'JAPCHAE', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(387, 8, 3056, 'Beef Enoki Roll', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(390, 8, 3057, 'Marshmallow', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(391, 18, 3067, 'fortune boat', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 46, 17),
(399, 8, 3058, 'Squid', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(400, 8, 3059, 'garlic satay', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(402, 8, 3061, 'onion satay', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(403, 2, 3062, 'Calamari', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(404, 2, 3063, 'Potato wedges', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(411, 8, 3064, 'hampers', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(413, 2, 3066, 'oi muchim (cucumber)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(414, 12, 3067, 'Banchan jangmi 6', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(415, 2, 3068, 'B.jangmi selada (1)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(417, 2, 3070, 'B.jangmi kimchi (2)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(420, 2, 3073, 'B.jangmi namuru mori (3)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(423, 2, 3076, 'B.jangmi oi muchim (4)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(424, 8, 3077, 'Sausage', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(426, 2, 3078, 'B.jangmi gamja jorim (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(427, 12, 3079, 'Set D: (21 items)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(428, 12, 3080, 'Set.D rice/bubur (1-4) (kasi ket jumlah)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(430, 12, 3082, 'Set.D selada (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(431, 12, 3083, 'Set.D kimchi 2 buah (6 & 7) ', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(432, 12, 3084, 'Set.D namoru mori (8)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(433, 12, 3085, 'Set.D Gamja Jarim (9)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(434, 12, 3086, 'Set.D Komutan Soup (10)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(435, 12, 3087, 'Set.D Wagyu (11)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(436, 12, 3088, 'Set.D saikiro (12)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(437, 12, 3089, 'Set.D Yakibelly (13)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(438, 12, 3090, 'Set.D ebi shio (14)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(439, 12, 3091, 'Set.D sausage (15)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(440, 12, 3092, 'Set.D silk fish (16)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(441, 12, 3093, 'Set.D marshmallow (17)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(453, 12, 3100, 'Set E: (21 items)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(454, 12, 3101, 'Set.E rice/bubur (1-4) (kasi ket jumlah)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(456, 12, 3103, 'Set.E selada (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(457, 12, 3104, 'Set.E kimchi 2 buah (6 & 7)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(458, 12, 3105, 'Set.E namoru mori (8)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(460, 12, 3107, 'Set.E oi muchim (9)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(461, 12, 3108, 'Set.E japchae (10)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(462, 12, 3109, 'Set.E ebi shio (11)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(463, 12, 3110, 'Set.E silk fish (12)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(464, 12, 3111, 'Set.E squid (13)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(465, 12, 3112, 'Set.E dori (14)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(466, 12, 3113, 'Set.E salmon (15)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(467, 12, 3114, 'Set.E marshmallow (16)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(468, 12, 3115, 'Set.E onion satay (17)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(473, 12, 3120, 'Set F: (20 items)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(474, 12, 3121, 'Set.F rice/bubur (1-4) (kasi ket jumlah)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(476, 12, 3123, 'Set.F selada (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(477, 12, 3124, 'Set.F kimchi 2 buah (6 & 7)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(478, 12, 3125, 'Set.F namoru mori (8)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(480, 12, 3127, 'Set.F oi muchim (9)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(481, 12, 3128, 'Set.F Kimchi Jigae (10)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(483, 12, 3130, 'Set.F cheese gimbap (11)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(484, 12, 3131, 'Set.F yakibelly (12)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(485, 12, 3132, 'Set.F karubi (13)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(486, 12, 3133, 'Set.F beef enoki roll (14)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(487, 12, 3134, 'Set.F Salmon (15)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(488, 12, 3135, 'Set.F silk fish (16)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(489, 12, 3136, 'Set.F Chiken Bulgogi (17)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(490, 12, 3137, 'Set.F Onion Satay (18)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(493, 7, 3074, 'Ebi don', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 16),
(498, 2, 3142, 'gyoza fried (10 pcs)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(499, 2, 3143, 'Gyoza steam (10pcs)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(500, 8, 3144, 'Sweet corn', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(501, 8, 3145, 'Salty corn', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(502, 8, 3146, 'Gamja jorim', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(504, 8, 3148, 'Oi mucim', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(505, 12, 3149, 'set.A rice/porridge (1-2)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(506, 12, 3150, 'set.A grill chicken (3)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(507, 12, 3151, 'set.A grill rosu(4)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(508, 12, 3152, 'set.A grill yakibelly(5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(509, 12, 3153, 'set.A kimchi(6)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(510, 12, 3154, 'set.A Tauge(7)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(511, 12, 3155, 'set.B rosu(1)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(512, 12, 3156, 'set.B dori (2)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(513, 12, 3157, 'set.B ebi (3)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(514, 12, 3158, 'set.B rice/porridge (4-5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(515, 12, 3159, 'set.B toge (6)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(516, 12, 3160, 'set.B kimchi (7)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(517, 12, 3161, 'set.C Sumo Beef (1)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(518, 12, 3162, 'set.C rice/porridge (2-3)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(519, 12, 3163, 'set.C moyashi namuru / tauge (4)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(520, 12, 3164, 'set.C kimchi (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(527, 5, 3080, 'Es batu', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(528, 5, 3166, 'Es batu', 'drink', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 21),
(529, 17, 3081, 'Nasi Bar', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(530, 2, 3167, 'Kimchi Bar', 'drink', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 21),
(531, 2, 3168, 'Nasi Bar', 'drink', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 21),
(532, 5, 3082, 'Refill Ocha', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(533, 5, 3169, 'Refill Genmaicha', 'drink', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 21),
(538, 27, 3084, 'Potong salmon 1 Porsi 100gr', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 13),
(539, 27, 3085, 'prepare mix vegetable', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(541, 27, 3086, 'Prepare Pounzu', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 15, 13),
(542, 27, 3087, 'Prepare Kaldu Tomyam', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(543, 27, 3088, 'Prepare Kaldu Original', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(544, 27, 3089, 'Prepare Salmon/200gr', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(545, 27, 3090, 'prepare potong ayam/200gr (super)', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(546, 27, 3091, 'prepare potong ayam/100gr', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 13),
(547, 27, 3092, 'Prepare Potong Patin/100gr', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 13),
(548, 27, 3093, 'Prepare Potong Patin/200gr (super)', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(549, 27, 3094, 'Prepare crunchy chiken roll / porsi', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(550, 27, 3095, 'Prepare crunchy beef roll / porse', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(551, 27, 3096, 'Prepare crunchy salmon roll / porse', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(552, 27, 3097, 'prepare gyoza 1 porsi', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(553, 27, 3098, 'Prepare Salmon /100gr', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 13),
(554, 5, 3099, 'Prepare minuman gojek', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 13),
(561, 27, 3100, 'Prepare cuci piring E', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 45, 13),
(562, 27, 3101, 'Prepare cuci piring M', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 45, 13),
(563, 27, 3102, 'Prepare Checker M', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 39, 13),
(564, 27, 3103, 'Prepare Checker E', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 39, 13),
(565, 27, 3104, 'Prepare masak nasi /receive', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 15, 13),
(566, 27, 3105, 'Prepare belanja pasar', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 43, 13),
(567, 27, 3106, 'Prepare namikaze roll /porsi', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 13),
(568, 27, 3107, 'prepare enoki roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 14),
(571, 28, 3171, 'Prepare arang bakar', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(572, 28, 3172, 'preapre chijimi /porsi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(573, 28, 3173, 'prepare tempe /receive', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 26, 20),
(574, 28, 3174, 'Prepare kaldu sapi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 40, 20),
(575, 28, 3175, 'prepare daging komutan /porsi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(576, 28, 3176, 'preapre kimchi /receive', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 36, 20),
(577, 28, 3177, 'prepare momokusi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(578, 28, 3178, 'prepare daging', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(579, 28, 3179, 'preapre fresto jagung', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 26, 20),
(580, 28, 3180, 'prepare tauge /kg', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 26, 20),
(581, 28, 3181, 'prepare daging sikoro /porsi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(582, 28, 3182, 'prepare potong ayam paket /porsi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(583, 28, 3183, 'prepare potong patin /porsi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(584, 28, 3184, 'prepare masak nasi /receive', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 26, 20),
(585, 28, 3185, 'prepare cabe korea /receive', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 26, 20),
(586, 28, 3186, 'Prepare cuci piring E', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 108, 20),
(587, 28, 3187, 'Prepare cuci piring M', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 108, 20),
(588, 28, 3188, 'Prepare Checker E', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 107, 20),
(589, 28, 3189, 'Prepare Checker M', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 107, 20),
(591, 5, 3108, 'Free Ocha Bento', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(592, 2, 3191, 'Porridge(bubur)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 20),
(593, 14, 3109, 'Ramen Shio', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 18),
(594, 14, 3110, 'Tori Paitan Ramen', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 18),
(595, 14, 3111, 'Gyusuzi Ramen', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 18),
(596, 14, 3112, 'Chili Seafood Ramen', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 18),
(598, 29, 3114, 'Topping Pai Tori (Chicken)', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 18),
(599, 29, 3115, 'Topping Tamago ramen', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 18),
(600, 29, 3116, 'Topping Jagung', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 18),
(601, 29, 3117, 'Topping Chasio', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 18),
(602, 29, 3118, 'Topping Smoked Chasio', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 18),
(603, 29, 3119, 'Topping Ebi Furai', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 18),
(604, 29, 3120, 'Topping Telur', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 18),
(605, 28, 3192, 'Prepare belanja pasar', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 36, 20),
(607, 8, 3193, 'Assorted beef foil', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(608, 2, 3194, 'Beef Soboro Don', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(609, 2, 3195, 'Koro - Koro Don', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(611, 5, 3121, 'free gohan', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 15),
(612, 17, 3122, 'Pan sukiyaki (Dry/Soup)', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 14),
(613, 23, 3196, 'Free Arang', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(614, 27, 3123, 'beef aburi dan ramen /porsi', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 13),
(615, 5, 3124, 'Birdnest Collagen dine in', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 15),
(616, 23, 3197, 'Birdnest Collagen dine in', 'drink', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21),
(617, 8, 3198, 'Us beef prime spicy sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(618, 8, 3199, 'Us Beef Prime original sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(619, 8, 3200, 'Us Beef Prime Shio', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(620, 8, 3201, 'Us Beef Prime Bulgogi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(621, 19, 3202, 'Paket Banchan 8 Kind', 'food', '', 2, 'WhatsApp Image 2022-08-17 at 10.08.12 AM.jpeg', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(622, 12, 3203, 'Wagyu Set : (6 items)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 20),
(623, 12, 3204, 'Us Beef Prime Set : (6 Items)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 20),
(624, 12, 3205, 'Set.Wagyu marshmallow(1)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(625, 12, 3206, 'Set.Us Beef Prime Marshmallow (1)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(626, 12, 3207, 'Set.Us Beef Prime Namuru 8 Kind (2)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(627, 12, 3208, 'Set.Us Beef Prime Chicken Collagen Soup (3)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(628, 12, 3209, 'Set.wagyu Namuru Mori 8 Kind(2)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(629, 12, 3210, 'Set.Us Beef Prime Us Beef Prime Bulgogi (4)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(630, 12, 3211, 'Set.wagyu Chicken collagen soup (3)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(631, 12, 3212, 'Set.Us Beef Prime Chicken Bulgogi (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(632, 12, 3213, 'Set.wagyu Patin Grill (4)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(633, 12, 3214, 'Set.Us Beef Prime Yakibelly Bulgogi (6)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(634, 12, 3215, 'Set.wagyu Wagyu Bulgogi (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(635, 12, 3216, 'Set.wagyu YakibellyBulgogi (6)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(636, 12, 3217, 'Premium Cut Set : (7 Items)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 22),
(637, 12, 3218, 'Set.Premium Cut Set Chicken Collagen Soup (3)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 22),
(638, 12, 3219, 'Set.premium cut set Marshmallow (1)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 2, 22),
(639, 12, 3220, 'Set.premium Cut Set Namuru 8 Kind(2)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(640, 12, 3221, 'Set.Premium Cut Set Us Beef Prime Bulgogi (4)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(641, 12, 3222, 'Set.premium Cut Set Wagyu Bulgogi (5)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(642, 12, 3223, 'Set.Premium Cut Set Karubi Bulgogi (6)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(643, 12, 3224, 'Set.Premium Cut Set Rosu Bulgogi (7)', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(644, 11, 3125, 'Hampers custom', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 13),
(645, 26, 3126, 'Chirashi Custom', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 13),
(646, 27, 3127, 'Prepare Server M', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 45, 13),
(647, 27, 3128, 'Prepare Server E', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 45, 13),
(648, 28, 3225, 'Prepare Server M', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 41, 20),
(649, 28, 3226, 'Prepare Server E', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 41, 20);
INSERT INTO `tb_menu` (`id_menu`, `id_kategori`, `kd_menu`, `nm_menu`, `tipe`, `jenis`, `lokasi`, `image`, `aktif`, `tgl_sold`, `created_at`, `updated_at`, `id_handicap`, `id_station`) VALUES
(650, 7, 3129, 'Beef Original Don', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 13),
(651, 8, 3227, 'Authentic Japan Wagyu Bulgogi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(652, 8, 3228, 'Authentic Japan Wagyu Spicy Sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(653, 8, 3229, 'Authentic Japan Wagyu Original Sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(654, 8, 3230, 'Authentic Japan Wagyu Shio', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(655, 8, 3231, 'Wagyu Ribeye A5 Bulgogi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(656, 8, 3232, 'Wagyu Ribeye A5 Spicy Sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(657, 8, 3233, 'Wagyu Ribeye A5 Original Sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(658, 8, 3234, 'Wagyu Ribeye A5 Shio', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(659, 8, 3235, 'Tbone Bulgogi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(660, 8, 3236, 'Tbone Spicy Sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(661, 8, 3237, 'Tbone Original sauce', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(662, 8, 3238, 'Tbone Shio', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 22),
(663, 29, 3130, 'Fish ball', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 13),
(664, 26, 3131, 'Chirashi Philly roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(665, 26, 3132, 'chirashi tuna gunkan', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(666, 26, 3133, 'Chirashi Pollo roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(667, 26, 3134, 'chirashi ken salmon roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(668, 26, 3135, 'Chirashi Birhday wan s roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(669, 26, 3136, 'chirashi spicy salmon gunkan', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(670, 26, 3137, 'chirashi inari wakame salad', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(671, 26, 3138, 'Chirashi Aburi nigiri sushi', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(672, 26, 3139, 'chirashi Inari chuka idako salad', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(673, 26, 3140, 'Chirashi California', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(674, 26, 3141, 'Chirashi Ebi tempura', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(675, 26, 3142, 'chirashi Inari tamago', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(676, 26, 3143, 'Chirashi Moss roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(677, 26, 3144, 'Chirashi Crunchy beef roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(678, 26, 3145, 'chirashi inari kyuri kani salad', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(679, 26, 3146, 'Chirashi Mango roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(680, 26, 3147, 'chirashi inari original', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(681, 26, 3148, 'Chirashi Kamikaze roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(682, 26, 3149, 'chirashi merapi roll', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(684, 26, 3151, 'Chirashi Unagi nigiri sushi', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(685, 26, 3152, 'chirashi yaki gyoza', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(686, 26, 3153, 'Chirashi Ika aburi shimeji', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(687, 26, 3154, 'chirashi chicken namban', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(688, 2, 3239, 'Kimbab', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 22, 20),
(689, 2, 3240, 'Kimchi Chijimi', 'food', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 20),
(690, 5, 3155, 'bawa minuman dari luar per botol', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 15),
(691, 23, 3241, 'bawa minuman dari luar per botol', 'drink', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', NULL, 21),
(692, 15, 3156, 'kaldu mala', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 14),
(693, 15, 3157, 'kaldu mix mala dan original', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 4, 14),
(694, 26, 3158, 'Chirashi corn gunkan', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 13),
(695, 26, 3159, 'Ebi aburi beef', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 17),
(696, 17, 3160, 'Fishball', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 14),
(697, 7, 3161, 'Beef Original Don', 'food', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 11, 16),
(698, 5, 3162, 'Strawberry Juice', 'drink', '', 1, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 6, 15),
(699, 23, 3242, 'Strawberry Juice', 'drink', '', 2, '', 'on', NULL, '2022-12-19 13:40:57', '2022-12-19 13:40:57', 9, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tb_station`
--

CREATE TABLE `tb_station` (
  `id_station` int(11) NOT NULL,
  `nm_station` varchar(100) NOT NULL,
  `id_lokasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_station`
--

INSERT INTO `tb_station` (`id_station`, `nm_station`, `id_lokasi`) VALUES
(13, 'Food', 1),
(14, 'Shabu - Shabu & Sukiyaki', 1),
(15, 'Beverages / Bar', 1),
(16, 'Agemono', 1),
(17, 'Sushi', 1),
(18, 'Ramen', 1),
(20, 'Food', 2),
(21, 'Beverages / Bar', 2),
(22, 'Grill', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Bennie Powlowski Sr.', 'rachelle85@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mPBskV5r1STmH0TFTzwLgCW1qC8PtpqS25yRPknzi7vPabfonB3rtyoeK3aF', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(2, 'Chris Torphy', 'legros.rhea@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GzO1Yl77Xr', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(3, 'Gail Klocko', 'ewill@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '25DiBiP6hX', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(4, 'Freddy McCullough', 'lacy57@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TPWXHCMbGF', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(5, 'Ms. Sophie Haley', 'elehner@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ebs1ttJWXg', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(6, 'Emily King', 'kobe84@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OhqoT0a4My', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(7, 'Mrs. Cydney Conroy', 'meta97@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JM8akz5Ipv', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(8, 'Paolo Kerluke', 'brannon.feeney@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sm0vUcJIhp', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(9, 'Jadyn Feeney', 'rvon@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BvUplaQX2g', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(10, 'Dr. Seamus Fritsch', 'zspinka@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IEizrxtZxu', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(11, 'Prof. Bradly Rutherford Jr.', 'dkulas@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'orf5GjCIwt', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(12, 'Vickie Prosacco II', 'charley.kuhic@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hOqYeJkbx2', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(13, 'Simone Purdy', 'jast.alfonzo@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KqfkjcPVRQ', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(14, 'Prof. Domingo Reilly II', 'einar94@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ne30SWEzyK', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(15, 'Mr. Coy Johnston DVM', 'vena.jacobs@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hoo00mbvb7', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(16, 'Bertha Shields', 'ueffertz@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '78sGsAIQtN', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(17, 'Reba VonRueden', 'meggie78@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uQ8BMnv85i', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(18, 'Sincere Carroll', 'wilkinson.rosemarie@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rhrGD74vFT', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(19, 'Ms. Dayna Hodkiewicz', 'klocko.audie@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2NXipPyACE', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(20, 'Mrs. Nora Kemmer', 'fidel50@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's6hQfUED5I', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(21, 'Lucie Muller PhD', 'plegros@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EyI3tSbY64', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(22, 'Kelton Wiza MD', 'josiane31@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VF2U5NNdUI', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(23, 'Glenda Hudson', 'cruz11@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJ3jtCep3c', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(24, 'Rahul Rau', 'yzemlak@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QsYKtNUNjG', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(25, 'Seth Schoen', 'roberts.hester@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ADw8QcxYse', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(26, 'Mr. Greg Batz', 'awalter@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ISjiFyP4AL', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(27, 'Prof. Mozelle Steuber', 'deja08@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lx2YUcCPZ5', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(28, 'Melvin Abshire', 'clyde11@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJg5cA67UE', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(29, 'Sylvan Champlin', 'carleton16@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nJQnxiuvPO', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(30, 'Mr. Anderson Gerhold MD', 'mark.hickle@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fzt0f9t7rm', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(31, 'Ignacio Collins', 'simeon19@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fmsKsKrtqb', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(32, 'Lawrence Langosh', 'kevin58@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IoXqI0ZpNA', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(33, 'Jack Williamson V', 'xsenger@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3yOxs7UJjI', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(34, 'Preston Becker', 'bednar.keith@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ORUTButlek', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(35, 'Adelbert Murray', 'randy48@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CWD8eJKUkD', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(36, 'Dr. Doug Schuppe', 'wlangosh@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '50gnDXIXyy', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(37, 'Freida Prohaska', 'cary35@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Ssy4NeSyC', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(38, 'Mrs. Katheryn O\'Reilly', 'gkunde@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FXje2WISDr', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(39, 'Prof. Estelle Olson', 'jfriesen@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o8v0rgqUaN', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(40, 'Roderick Crist', 'nhowe@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8lNzJDSJXg', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(41, 'Winnifred Hintz', 'schimmel.mittie@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NDp5f1N2JT', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(42, 'Lorine Labadie', 'autumn.keeling@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U1REkaIROa', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(43, 'Gladyce Howe', 'heidi17@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j0BhRVifBa', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(44, 'Stone Cronin', 'towne.johnathan@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CjXNRLrSYJ', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(45, 'Modesto Quitzon', 'akeeling@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hoqNpbGgB9', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(46, 'Ayana Pfeffer', 'kreiger.trevor@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aWkAYKqFO7', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(47, 'Percival Walter III', 'blanche49@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GWekfIMqLK', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(48, 'Ettie Collins', 'price.marilyne@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LcK68OnBcP', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(49, 'Dr. Tia Rice MD', 'bwalter@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YMk8g0RPtP', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(50, 'Arthur Ledner', 'owalker@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c9RDFvchDk', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(51, 'Prof. Pearl Mueller', 'hodkiewicz.justen@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gdNj577Xpy', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(52, 'Frankie Stracke', 'cecelia02@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'filD91AXsE', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(53, 'Allan Leannon Jr.', 'gregory62@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B7PycH8wpJ', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(54, 'Travon Cummerata Sr.', 'myrtie46@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ii5ESFosYU', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(55, 'Coleman Rogahn', 'miles.simonis@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '93x6lxBagK', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(56, 'Ruthie Klein', 'haylee63@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xfn6SVJbbY', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(57, 'Gilbert Bogisich MD', 'verdie.hoppe@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LgKF9gRMfo', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(58, 'Mr. Greg Carroll Sr.', 'wmann@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ccziuLUddK', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(59, 'Ms. Maribel Donnelly', 'sawayn.eric@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZvSuFypFtL', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(60, 'Prof. Faye Schneider', 'bill59@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lX4WLSGcCI', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(61, 'Hollie Vandervort', 'loraine.corkery@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hWW3khvcvZ', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(62, 'Ayla Gusikowski', 'christ.ledner@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J2qBniLXFd', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(63, 'Dr. Micheal Flatley', 'grimes.elfrieda@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oLrbBp1RQg', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(64, 'Favian Jerde', 'julien.waelchi@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sPtFmb2Ga9', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(65, 'Rollin Jenkins I', 'marina.cassin@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fgZZjX2HI3', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(66, 'Prof. Matteo Kilback I', 'toy.destini@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FpZcYmG3MZ', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(67, 'Freida O\'Hara', 'kennedi.little@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0PFWQ1qEvD', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(68, 'Katarina Haag', 'osborne91@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JkUA12r3OT', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(69, 'Hollis Olson', 'xstreich@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BgQVxqbsTf', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(70, 'Jarvis Ledner', 'torp.marion@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2pEHpxv7JL', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(71, 'Moses Langworth', 'nienow.reinhold@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iWrkcWF8Ol', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(72, 'Crawford Wyman', 'ihane@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qjuI921Lu5', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(73, 'Prof. Ed Wunsch', 'qfadel@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oa2e4wZOU8', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(74, 'Evie Bruen', 'anderson.tyson@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FhzvWVDjrk', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(75, 'Gaylord Lang MD', 'nikolas13@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wdWdNKg8Wx', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(76, 'Ms. Earnestine Kub', 'cbailey@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y96P2RVb0Z', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(77, 'Prof. Jevon Sauer', 'kylie.hodkiewicz@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qf1nebwfjp', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(78, 'Ms. Marlene Hermann', 'wkreiger@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h2ZwJW7E7A', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(79, 'Gillian Pollich', 'lorenz88@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cc9kmhyqsp', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(80, 'Lera Roberts', 'flatley.cheyenne@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ja8PYhy87I', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(81, 'Mrs. Alanis Roob', 'lhuels@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7FdLe2aPE6', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(82, 'London Casper', 'fisher.mazie@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jE3FgfthBh', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(83, 'Israel Heathcote', 'bonita.yundt@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cVBPDutPdv', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(84, 'Stephan Bogisich', 'aniyah.bosco@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vyBkVBINxV', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(85, 'Mallie Russel', 'iwintheiser@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aK0YrFV4tU', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(86, 'Marielle Williamson', 'cvonrueden@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OmR8awbQMj', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(87, 'Stephanie Kuvalis', 'sshields@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P0sXhCDJ4y', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(88, 'Hailee Shanahan', 'schaefer.herman@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2v6F418p6A', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(89, 'Allie Macejkovic', 'orolfson@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q21KAw3YzV', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(90, 'Cruz Barrows', 'kris.jordan@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R4xAoWAn0W', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(91, 'Wiley Koch', 'dennis.ziemann@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mQyjAIdvII', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(92, 'Cristina Buckridge', 'helen37@example.org', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6v60eDm86N', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(93, 'Margarete Greenholt', 'ddickens@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BVG8RQpF3c', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(94, 'Carlie Quigley', 'richmond52@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uCN5g4SeAB', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(95, 'Nathen Hauck', 'gussie.dooley@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dtzLSSD4ng', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(96, 'Cayla Denesik', 'mozell61@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9GgcOCowI0', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(97, 'Laney Klein', 'audreanne.stokes@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zp94gMEtHJ', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(98, 'Lucile Gutmann', 'brakus.clemmie@example.com', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T7tPOKhhMF', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(99, 'Prof. Lacy Stehr III', 'lila29@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a7TRqbN34p', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(100, 'Miss Eulah Franecki', 'bryce.price@example.net', '2023-03-15 16:40:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wBBY2t7CQJ', '2023-03-15 16:40:07', '2023-03-15 16:40:07'),
(101, 'aldi', 'aldi@gmail.com', NULL, '$2y$10$ZVBiIfNDoNp1CDxyQ9cdyeUKYP1WRwnG3jkRm9Jj3.jbIMGT3dExG', NULL, '2023-03-15 18:28:05', '2023-03-15 18:28:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
