-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2025 at 12:56 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pembayaran_spp_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `sandi_bank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `sandi_bank`, `nama_bank`) VALUES
(1, '014', 'BANK BCA (BANK CENTR'),
(2, '008', 'BANK MANDIRI'),
(3, '009', 'BANK BNI (BANK NEGAR'),
(4, '427', 'BANK SYARIAH INDONES'),
(5, '002', 'BANK BRI (BANK RAKYA'),
(6, '451', 'BANK SYARIAH INDONES'),
(7, '022', 'BANK CIMB NIAGA'),
(8, '022', 'BANK CIMB NIAGA SYAR'),
(9, '147', 'BANK MUAMALAT'),
(10, '213', 'BANK BTPN (BANK TABU'),
(11, '547', 'BANK BTPN SYARIAH'),
(12, '213', 'JENIUS'),
(13, '422', 'BANK SYARIAH INDONES'),
(14, '200', 'BANK TABUNGAN NEGARA'),
(15, '013', 'PERMATA BANK'),
(16, '011', 'BANK DANAMON'),
(17, '016', 'BANK BII MAYBANK'),
(18, '426', 'BANK MEGA'),
(19, '153', 'BANK SINARMAS'),
(20, '950', 'BANK COMMONWEALTH'),
(21, '028', 'BANK OCBC NISP'),
(22, '441', 'BANK BUKOPIN'),
(23, '521', 'BANK BUKOPIN SYARIAH'),
(24, '536', 'BANK BCA SYARIAH'),
(25, '026', 'BANK LIPPO'),
(26, '031', 'CITIBANK'),
(27, '789', 'INDOSAT DOMPETKU'),
(28, '911', 'TELKOMSEL TCASH'),
(29, '911', 'LINKAJA'),
(30, '046', 'BANK DBS INDONESIA'),
(31, '046', 'DIGIBANK'),
(32, '535', 'SEABANK (Eks BANK KE'),
(33, '542', 'BANK JAGO (Eks BANK '),
(34, '023', 'BANK UOB INDONESIA'),
(35, '023', 'TMRW by UOB INDONESI'),
(36, '490', 'BANK NEO COMMERCE (A'),
(37, '567', 'ALLO BANK (Eks BANK '),
(38, '947', 'BANK ALADIN (Eks BAN'),
(39, '110', 'BANK JABAR dan BANTE'),
(40, '111', 'BANK DKI JAKARTA'),
(41, '112', 'BPD DIY (YOGYAKARTA)'),
(42, '113', 'BANK JATENG (JAWA TE'),
(43, '114', 'BANK JATIM (JAWA BAR'),
(44, '115', 'BPD JAMBI'),
(45, '116', 'BPD ACEH'),
(46, '116', 'BPD ACEH SYARIAH'),
(47, '117', 'BANK SUMUT'),
(48, '118', 'BANK NAGARI (BANK SU'),
(49, '119', 'BANK RIAU KEPRI'),
(50, '120', 'BANK SUMSEL BABEL'),
(51, '121', 'BANK LAMPUNG'),
(52, '122', 'BANK KALSEL (BANK KA'),
(53, '123', 'BANK KALBAR (BANK KA'),
(54, '124', 'BANK KALTIMTARA (BAN'),
(55, '125', 'BANK KALTENG (BANK K'),
(56, '126', 'BANK SULSELBAR (BANK'),
(57, '127', 'BANK SULUTGO (BANK S'),
(58, '128', 'BANK NTB'),
(59, '128', 'BANK NTB SYARIAH'),
(60, '129', 'BANK BPD BALI'),
(61, '130', 'BANK NTT'),
(62, '131', 'BANK MALUKU MALUT'),
(63, '132', 'BANK PAPUA'),
(64, '133', 'BANK BENGKULU'),
(65, '134', 'BANK SULTENG (BANK S'),
(66, '135', 'BANK SULTRA'),
(67, '137', 'BANK BPD BANTEN'),
(68, '003', 'BANK EKSPOR INDONESI'),
(69, '019', 'BANK PANIN'),
(70, '517', 'BANK PANIN DUBAI SYA'),
(71, '020', 'BANK ARTA NIAGA KENC'),
(72, '023', 'BANK UOB INDONESIA ('),
(73, '030', 'AMERICAN EXPRESS BAN'),
(74, '031', 'CITIBANK N.A.'),
(75, '032', 'JP. MORGAN CHASE BAN'),
(76, '033', 'BANK OF AMERICA, N.A'),
(77, '034', 'ING INDONESIA BANK'),
(78, '036', 'BANK MULTICOR'),
(79, '037', 'BANK ARTHA GRAHA INT'),
(80, '039', 'BANK CREDIT AGRICOLE'),
(81, '040', 'THE BANGKOK BANK COM'),
(82, '041', 'THE HONGKONG & SHANG'),
(83, '042', 'THE BANK OF TOKYO MI'),
(84, '045', 'BANK SUMITOMO MITSUI'),
(85, '047', 'BANK RESONA PERDANIA'),
(86, '048', 'BANK MIZUHO INDONESI'),
(87, '050', 'STANDARD CHARTERED B'),
(88, '052', 'BANK ABN AMRO'),
(89, '053', 'BANK KEPPEL TATLEE B'),
(90, '054', 'BANK CAPITAL INDONES'),
(91, '057', 'BANK BNP PARIBAS IND'),
(92, '023', 'BANK UOB INDONESIA'),
(93, '059', 'KOREA EXCHANGE BANK '),
(94, '060', 'RABOBANK INTERNASION'),
(95, '061', 'BANK ANZ INDONESIA'),
(96, '068', 'BANK WOORI SAUDARA'),
(97, '069', 'BANK OF CHINA'),
(98, '076', 'BANK BUMI ARTA'),
(99, '087', 'BANK EKONOMI'),
(100, '088', 'BANK ANTARDAERAH'),
(101, '089', 'BANK HAGA'),
(102, '093', 'BANK IFI'),
(103, '095', 'BANK CENTURY'),
(104, '097', 'BANK MAYAPADA'),
(105, '145', 'BANK NUSANTARA PARAH'),
(106, '146', 'BANK SWADESI (BANK O'),
(107, '151', 'BANK MESTIKA DHARMA'),
(108, '152', 'BANK SHINHAN INDONES'),
(109, '157', 'BANK MASPION INDONES'),
(110, '159', 'BANK HAGAKITA'),
(111, '161', 'BANK GANESHA'),
(112, '162', 'BANK WINDU KENTJANA'),
(113, '164', 'BANK ICBC INDONESIA '),
(114, '166', 'BANK HARMONI INTERNA'),
(115, '167', 'BANK QNB KESAWAN (BA'),
(116, '212', 'BANK HIMPUNAN SAUDAR'),
(117, '405', 'BANK SWAGUNA'),
(118, '459', 'BANK BISNIS INTERNAS'),
(119, '466', 'BANK SRI PARTHA'),
(120, '472', 'BANK JASA JAKARTA'),
(121, '484', 'BANK BINTANG MANUNGG'),
(122, '485', 'BANK MNC INTERNASION'),
(123, '490', 'BANK YUDHA BHAKTI'),
(124, '491', 'BANK MITRANIAGA'),
(125, '494', 'BANK BRI AGRO NIAGA'),
(126, '498', 'BANK SBI INDONESIA ('),
(127, '501', 'BANK ROYAL INDONESIA'),
(128, '503', 'BANK NATIONAL NOBU ('),
(129, '506', 'BANK MEGA SYARIAH'),
(130, '513', 'BANK INA PERDANA'),
(131, '517', 'BANK HARFA'),
(132, '520', 'PRIMA MASTER BANK'),
(133, '521', 'BANK PERSYARIKATAN I'),
(134, '525', 'BANK AKITA'),
(135, '526', 'LIMAN INTERNATIONAL '),
(136, '531', 'ANGLOMAS INTERNASION'),
(137, '523', 'BANK SAHABAT SAMPEOR'),
(138, '547', 'BANK PURBA DANARTA'),
(139, '548', 'BANK MULTI ARTA SENT'),
(140, '553', 'BANK MAYORA INDONESI'),
(141, '555', 'BANK INDEX SELINDO'),
(142, '566', 'BANK VICTORIA INTERN'),
(143, '558', 'BANK EKSEKUTIF'),
(144, '559', 'CENTRATAMA NASIONAL '),
(145, '562', 'BANK FAMA INTERNASIO'),
(146, '564', 'BANK MANDIRI TASPEN '),
(147, '945', 'BANK AGRIS (BANK FIN'),
(148, '946', 'BANK MERINCORP'),
(149, '948', 'BANK OCBC – INDONESI'),
(150, '949', 'BANK CTBC (CHINA TRU'),
(151, '425', 'BANK BJB SYARIAH'),
(152, '688', 'BPR KS (KARYAJATNIKA');

-- --------------------------------------------------------

--
-- Table structure for table `bank_sekolahs`
--

CREATE TABLE `bank_sekolahs` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rekening` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekening` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_sekolahs`
--

INSERT INTO `bank_sekolahs` (`id`, `kode`, `nama_bank`, `nama_rekening`, `nomor_rekening`, `created_at`, `updated_at`) VALUES
(1, '008', 'BANK MANDIRI', 'Rekening Sekolah', '7870598631', '2025-05-21 09:28:57', '2025-05-21 09:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `biayas`
--

CREATE TABLE `biayas` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biayas`
--

INSERT INTO `biayas` (`id`, `parent_id`, `nama`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SPP', 0, 1, '2025-05-21 09:27:16', '2025-05-21 09:27:16'),
(2, 1, 'UKT', 500000, 1, '2025-05-21 09:27:30', '2025-05-21 09:27:30'),
(3, 1, 'Osis', 20000, 1, '2025-05-21 09:27:37', '2025-05-21 09:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
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
-- Table structure for table `job_statuses`
--

CREATE TABLE `job_statuses` (
  `id` int UNSIGNED NOT NULL,
  `job_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int NOT NULL DEFAULT '0',
  `progress_now` int NOT NULL DEFAULT '0',
  `progress_max` int NOT NULL DEFAULT '0',
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'queued',
  `input` longtext COLLATE utf8mb4_unicode_ci,
  `output` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_statuses`
--

INSERT INTO `job_statuses` (`id`, `job_id`, `type`, `queue`, `attempts`, `progress_now`, `progress_max`, `status`, `input`, `output`, `created_at`, `updated_at`, `started_at`, `finished_at`) VALUES
(1, '1', 'App\\Jobs\\ProcessTagihan', 'default', 1, 49, 49, 'finished', NULL, '{\"message\":\"Tagihan Bulan Mei 2025\"}', '2025-05-21 09:29:20', '2025-05-21 09:30:39', '2025-05-21 09:29:24', '2025-05-21 09:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_00_000000_create_settings_table', 1),
(2, '2014_10_00_000001_add_group_column_on_settings_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_05_01_000000_create_job_statuses_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2021_08_08_100000_create_banks_tables', 1),
(9, '2023_03_08_164148_create_siswas_table', 1),
(10, '2023_03_15_185300_add_foto_to_siswas_table', 1),
(11, '2023_04_07_170157_create_biayas_table', 1),
(12, '2023_04_08_160613_create_tagihans_table', 1),
(13, '2023_04_17_014713_create_tagihan_details_table', 1),
(14, '2023_04_19_151354_create_pembayarans_table', 1),
(15, '2023_05_08_232445_create_bank_sekolahs_table', 1),
(16, '2023_05_19_000409_create_wali_banks_table', 1),
(17, '2023_05_19_162657_add_wali_bank_id_and_sekolah_bank_id_to_pembayarans_table', 1),
(18, '2023_05_20_013253_create_notifications_table', 1),
(19, '2023_05_25_012111_add_tanggal_konfirmasi_to_pembayaran_table', 1),
(20, '2023_05_25_015710_drop_status_konfirmasi_to_pembayaran_table', 1),
(21, '2023_06_07_014537_add_parent_id_to_biayas_table', 1),
(22, '2023_06_07_175159_add_biaya_id_to_siswas_table', 1),
(23, '2023_06_08_221742_create_statuses_table', 1),
(24, '2023_06_29_180958_create_jobs_table', 1),
(25, '2023_07_02_033647_add_tanggal_lunas_to_tagihans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('067cd785-1f6d-4d20-9438-6b32813114db', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 27, '{\"tagihan_id\":26,\"title\":\"Tagihan SPP ANGGITA RAHMA MAYLANI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/26\"}', NULL, '2025-05-21 09:30:02', '2025-05-21 09:30:02'),
('0757cd79-22a7-4cc3-ac79-981ac28a52e4', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 9, '{\"tagihan_id\":8,\"title\":\"Tagihan SPP Ajeng Nindya Pratiwi\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/8\"}', NULL, '2025-05-21 09:29:35', '2025-05-21 09:29:35'),
('0c6daf10-6ef3-412b-b485-e3a1c53cf4b0', 'App\\Notifications\\PembayaranKonfirmasiNotification', 'App\\Models\\User', 31, '{\"pembayaran_id\":2,\"title\":\"Konfirmasi Pembayaran\",\"messages\":\"Pembayaran Tagihan SPP atas nama ANJELIKA ORNELATelah Di Konfirmasi\",\"url\":\"http:\\/\\/localhost:8000\\/walimurid\\/pembayaran\\/2\"}', NULL, '2025-05-21 12:46:04', '2025-05-21 12:46:04'),
('122c28d5-953b-434f-ba10-13e5ba31e2bd', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 49, '{\"tagihan_id\":48,\"title\":\"Tagihan SPP BUNGA NAILA PUTRI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/48\"}', NULL, '2025-05-21 09:30:36', '2025-05-21 09:30:36'),
('17c8bd3a-64ec-465a-b386-72234cd63e57', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 18, '{\"tagihan_id\":17,\"title\":\"Tagihan SPP AMELIA CITRA LESTARI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/17\"}', NULL, '2025-05-21 09:29:49', '2025-05-21 09:29:49'),
('1806a9d9-fa41-4a0d-84fd-ae33678bcbbd', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 8, '{\"tagihan_id\":7,\"title\":\"Tagihan SPP AISYAH RAMAH DANI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/7\"}', NULL, '2025-05-21 09:29:34', '2025-05-21 09:29:34'),
('1d10129a-b58d-45b4-b07e-71bb4aadacf8', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 31, '{\"tagihan_id\":30,\"title\":\"Tagihan SPP ANJELIKA ORNELA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/30\"}', NULL, '2025-05-21 09:30:08', '2025-05-21 09:30:08'),
('21c9419d-0382-4520-81d2-bc6e10df836e', 'App\\Notifications\\PembayaranKonfirmasiNotification', 'App\\Models\\User', 39, '{\"pembayaran_id\":1,\"title\":\"Konfirmasi Pembayaran\",\"messages\":\"Pembayaran Tagihan SPP atas nama Ashilah AlbahiraTelah Di Konfirmasi\",\"url\":\"http:\\/\\/localhost:8000\\/walimurid\\/pembayaran\\/1\"}', '2025-05-21 12:38:07', '2025-05-21 12:37:29', '2025-05-21 12:38:07'),
('2719fe40-fbf8-47e8-bd8d-558fcab24b68', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 14, '{\"tagihan_id\":13,\"title\":\"Tagihan SPP Almira Zada Putri\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/13\"}', NULL, '2025-05-21 09:29:43', '2025-05-21 09:29:43'),
('2af411d4-e8a3-4e50-a196-aecd5a8297c0', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 5, '{\"tagihan_id\":4,\"title\":\"Tagihan SPP Adinda Dwi Larasaty\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/4\"}', NULL, '2025-05-21 09:29:29', '2025-05-21 09:29:29'),
('2e936b85-f7b2-4df6-bf4f-9b6078365dce', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 42, '{\"tagihan_id\":41,\"title\":\"Tagihan SPP AUDIA DWI UTARI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/41\"}', NULL, '2025-05-21 09:30:26', '2025-05-21 09:30:26'),
('2fba6578-754b-4316-96a1-f486a429b86a', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 22, '{\"tagihan_id\":21,\"title\":\"Tagihan SPP ANANTA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/21\"}', NULL, '2025-05-21 09:29:55', '2025-05-21 09:29:55'),
('361ee8c9-f600-4f20-a0bb-2976a112e375', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 46, '{\"tagihan_id\":45,\"title\":\"Tagihan SPP BELA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/45\"}', NULL, '2025-05-21 09:30:32', '2025-05-21 09:30:32'),
('37431b24-9c33-4dd8-a82a-973cd84642ad', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 26, '{\"tagihan_id\":25,\"title\":\"Tagihan SPP Angel Stahla nabila Putri\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/25\"}', NULL, '2025-05-21 09:30:01', '2025-05-21 09:30:01'),
('37bfa0d8-611d-443f-9649-311f07d03d87', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 37, '{\"tagihan_id\":36,\"title\":\"Tagihan SPP ARIFAH YUSTRI AULIYAH\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/36\"}', NULL, '2025-05-21 09:30:17', '2025-05-21 09:30:17'),
('386716d8-fbce-4829-acea-640d022fe473', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 47, '{\"tagihan_id\":46,\"title\":\"Tagihan SPP Betrix Grecia E.Siburian\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/46\"}', NULL, '2025-05-21 09:30:33', '2025-05-21 09:30:33'),
('3e18778f-7d22-4b86-b298-dab4c87282f3', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 38, '{\"tagihan_id\":37,\"title\":\"Tagihan SPP ARNANDA DEFIT PRATAMA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/37\"}', NULL, '2025-05-21 09:30:19', '2025-05-21 09:30:19'),
('43b6349f-35a1-4a66-bb96-e3d438e2c458', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 19, '{\"tagihan_id\":18,\"title\":\"Tagihan SPP Amelia Septiana Syah\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/18\"}', NULL, '2025-05-21 09:29:50', '2025-05-21 09:29:50'),
('4779fd9d-d76f-4788-ab45-efd7f5cbfb09', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 12, '{\"tagihan_id\":11,\"title\":\"Tagihan SPP Alif Fathur Jhatiansyah\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/11\"}', NULL, '2025-05-21 09:29:40', '2025-05-21 09:29:40'),
('4f60b34e-8d49-4819-97bb-98df4bf11e02', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 3, '{\"tagihan_id\":2,\"title\":\"Tagihan SPP ADE FITRIANI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/2\"}', NULL, '2025-05-21 09:29:26', '2025-05-21 09:29:26'),
('523ad5ca-b095-4703-80aa-22c5c558017f', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 2, '{\"tagihan_id\":1,\"title\":\"Tagihan SPP ABDUL DEVA PRATAMA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/1\"}', NULL, '2025-05-21 09:29:24', '2025-05-21 09:29:24'),
('52e3dab7-2aff-4d1d-9800-142c6926b2ce', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 34, '{\"tagihan_id\":33,\"title\":\"Tagihan SPP APRIYANTI SAFITRI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/33\"}', NULL, '2025-05-21 09:30:13', '2025-05-21 09:30:13'),
('5332f432-8e7b-46ab-b56e-6270917ffe33', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 25, '{\"tagihan_id\":24,\"title\":\"Tagihan SPP ANESFIONA AFRILIA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/24\"}', NULL, '2025-05-21 09:29:59', '2025-05-21 09:29:59'),
('535b97ee-ce27-45a7-9f9f-891530ac0354', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 23, '{\"tagihan_id\":22,\"title\":\"Tagihan SPP Anastasya Putri\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/22\"}', NULL, '2025-05-21 09:29:56', '2025-05-21 09:29:56'),
('5546a7d8-8186-46d3-879c-3ab1a726d72e', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 4, '{\"tagihan_id\":3,\"title\":\"Tagihan SPP Adelia Zalfa Mumtazah\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/3\"}', NULL, '2025-05-21 09:29:28', '2025-05-21 09:29:28'),
('628eccda-ef97-442f-8015-915587ab8581', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 36, '{\"tagihan_id\":35,\"title\":\"Tagihan SPP ARFIN MAULANA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/35\"}', NULL, '2025-05-21 09:30:16', '2025-05-21 09:30:16'),
('64b6738d-b4b9-4edd-9a1d-4ca20d1d5dc5', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 24, '{\"tagihan_id\":23,\"title\":\"Tagihan SPP ANDRIANI SILVIA YUNANDA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/23\"}', NULL, '2025-05-21 09:29:58', '2025-05-21 09:29:58'),
('6cf83228-4b0d-457e-b216-326e2141973c', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 11, '{\"tagihan_id\":10,\"title\":\"Tagihan SPP Alfira Putri\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/10\"}', NULL, '2025-05-21 09:29:38', '2025-05-21 09:29:38'),
('700f8975-c448-45ce-a16c-e886b30f9d33', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 28, '{\"tagihan_id\":27,\"title\":\"Tagihan SPP Anggun Febriyeni\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/27\"}', NULL, '2025-05-21 09:30:04', '2025-05-21 09:30:04'),
('79fce9d7-56ea-40bc-af45-d019b9aca4ff', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 15, '{\"tagihan_id\":14,\"title\":\"Tagihan SPP Alya\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/14\"}', NULL, '2025-05-21 09:29:44', '2025-05-21 09:29:44'),
('7d78b0eb-3ef9-4789-9bcd-74ced68605bc', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 21, '{\"tagihan_id\":20,\"title\":\"Tagihan SPP ANANDA PUTRI NAILAH\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/20\"}', NULL, '2025-05-21 09:29:53', '2025-05-21 09:29:53'),
('86d9a9d6-56f6-46af-8111-c41a60fdc586', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 17, '{\"tagihan_id\":16,\"title\":\"Tagihan SPP ALYN DELLA HAFITRI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/16\"}', NULL, '2025-05-21 09:29:47', '2025-05-21 09:29:47'),
('879f4237-939c-4083-9169-23b994d39091', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 29, '{\"tagihan_id\":28,\"title\":\"Tagihan SPP Anisa Azzahra\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/28\"}', NULL, '2025-05-21 09:30:05', '2025-05-21 09:30:05'),
('8c606ad4-5d2b-4069-b673-4232277ca6b3', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 45, '{\"tagihan_id\":44,\"title\":\"Tagihan SPP AYU EKA WIJAYANTI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/44\"}', NULL, '2025-05-21 09:30:30', '2025-05-21 09:30:30'),
('963b1eec-8a1e-40f4-95b6-560ee2a671c1', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 16, '{\"tagihan_id\":15,\"title\":\"Tagihan SPP ALYA RIZKITA ARDANA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/15\"}', NULL, '2025-05-21 09:29:46', '2025-05-21 09:29:46'),
('a0059c6e-505b-4a3b-889e-3798db177fb3', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 41, '{\"tagihan_id\":40,\"title\":\"Tagihan SPP Atazila Huzil Afwa\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/40\"}', NULL, '2025-05-21 09:30:24', '2025-05-21 09:30:24'),
('a0994c26-610a-4d25-8efa-e8c20249aa1e', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 43, '{\"tagihan_id\":42,\"title\":\"Tagihan SPP Aurasyahni Ewira\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/42\"}', NULL, '2025-05-21 09:30:27', '2025-05-21 09:30:27'),
('b31271b7-696d-46f7-9bc9-f5a77f92ab4b', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 30, '{\"tagihan_id\":29,\"title\":\"Tagihan SPP Anisyah Palovi Dewi\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/29\"}', NULL, '2025-05-21 09:30:07', '2025-05-21 09:30:07'),
('bb9ff1b6-4e22-4299-873b-5edcb764d1cf', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 10, '{\"tagihan_id\":9,\"title\":\"Tagihan SPP AL HAFIZ JUNH\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/9\"}', NULL, '2025-05-21 09:29:37', '2025-05-21 09:29:37'),
('c1a3928d-dcf9-4b93-9f02-fc61f83a4829', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 39, '{\"tagihan_id\":38,\"title\":\"Tagihan SPP Ashilah Albahira\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/38\"}', NULL, '2025-05-21 09:30:21', '2025-05-21 09:30:21'),
('c975c580-3aba-4711-9643-86bfc7bb1ac7', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 13, '{\"tagihan_id\":12,\"title\":\"Tagihan SPP ALISA DEA PARTIWI\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/12\"}', NULL, '2025-05-21 09:29:41', '2025-05-21 09:29:41'),
('d2c4d7b1-cce5-4b19-936f-63bacf98f8a6', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 33, '{\"tagihan_id\":32,\"title\":\"Tagihan SPP Aprilia Dwi Adinda\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/32\"}', NULL, '2025-05-21 09:30:12', '2025-05-21 09:30:12'),
('dabed920-e716-4f58-82cc-4cbc53340d09', 'App\\Notifications\\PembayaranNotification', 'App\\Models\\User', 1, '{\"tagihan_id\":\"43\",\"wali_id\":44,\"pembayaran_id\":3,\"title\":\"Pembayaran Tagihan Sekolah\",\"messages\":\"Bakri Telah Melakukan Pembayaran Tagihan.\",\"url\":\"http:\\/\\/localhost:8000\\/operator\\/pembayaran\\/3\"}', NULL, '2025-05-21 12:55:41', '2025-05-21 12:55:41'),
('dd6cec66-8ec4-4917-ae45-acf1960d4caa', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 7, '{\"tagihan_id\":6,\"title\":\"Tagihan SPP AIRIN NURFAIZA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/6\"}', NULL, '2025-05-21 09:29:32', '2025-05-21 09:29:32'),
('e1f68cd0-092f-49f9-9c48-611629c2a73e', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 40, '{\"tagihan_id\":39,\"title\":\"Tagihan SPP ASYFI RISADA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/39\"}', NULL, '2025-05-21 09:30:22', '2025-05-21 09:30:22'),
('e6c53010-5cbc-4a40-9bd5-5c652f8c6f32', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 50, '{\"tagihan_id\":49,\"title\":\"Tagihan SPP Bunga Nurwana Susanto\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/49\"}', NULL, '2025-05-21 09:30:38', '2025-05-21 09:30:38'),
('ef209a6c-a2b4-4c68-84dc-2b3fab28771a', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 35, '{\"tagihan_id\":34,\"title\":\"Tagihan SPP ARDIANSYAH\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/34\"}', NULL, '2025-05-21 09:30:15', '2025-05-21 09:30:15'),
('fb031b0a-bc94-4520-b253-09af64952f8f', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 6, '{\"tagihan_id\":5,\"title\":\"Tagihan SPP AFIANA JESSIKA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/5\"}', NULL, '2025-05-21 09:29:31', '2025-05-21 09:29:31'),
('fd3a0e17-038c-4af0-888b-686eedae53a7', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 32, '{\"tagihan_id\":31,\"title\":\"Tagihan SPP ANTAR HUMAIRA\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/31\"}', NULL, '2025-05-21 09:30:10', '2025-05-21 09:30:10'),
('fe6191e2-4688-439f-9437-65ccdebb9102', 'App\\Notifications\\TagihanNotification', 'App\\Models\\User', 20, '{\"tagihan_id\":19,\"title\":\"Tagihan SPP Analia\",\"messages\":\"Tagihan SPP Bulan Mei 2025\",\"url\":\"http:\\/\\/localhost\\/walimurid\\/tagihan\\/19\"}', NULL, '2025-05-21 09:29:52', '2025-05-21 09:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_sekolah_id` bigint UNSIGNED DEFAULT NULL,
  `wali_bank_id` bigint UNSIGNED DEFAULT NULL,
  `tagihan_id` bigint UNSIGNED NOT NULL,
  `wali_id` bigint UNSIGNED NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `tanggal_konfirmasi` datetime DEFAULT NULL,
  `jumlah_dibayar` double NOT NULL,
  `bukti_bayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `bank_sekolah_id`, `wali_bank_id`, `tagihan_id`, `wali_id`, `tanggal_bayar`, `tanggal_konfirmasi`, `jumlah_dibayar`, `bukti_bayar`, `metode_pembayaran`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 38, 39, '2025-05-21', '2025-05-21 19:37:28', 522000, NULL, 'manual', 39, '2025-05-21 12:37:28', '2025-05-21 12:37:28'),
(2, NULL, NULL, 30, 31, '2025-05-21', '2025-05-21 19:46:04', 522000, NULL, 'manual', 31, '2025-05-21 12:46:04', '2025-05-21 12:46:04'),
(3, 1, 1, 43, 44, '2025-05-21', '2025-05-21 19:56:04', 520000, 'public/ocuRRyxjVuXJJ73GpgS0E5u732fFN5bYyu99j1pT.png', 'transfer', 1, '2025-05-21 12:55:41', '2025-05-21 12:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `group`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Baabussalam Al-Islam', 'default', '2025-05-21 12:52:23', '2025-05-21 12:52:43'),
(2, 'app_email', 'ponpesbaabussalam@gmail.com', 'default', '2025-05-21 12:52:23', '2025-05-21 12:52:23'),
(3, 'app_phone', '082180864295', 'default', '2025-05-21 12:52:23', '2025-05-21 12:52:23'),
(4, 'app_address', 'Tebo', 'default', '2025-05-21 12:52:23', '2025-05-21 12:52:31'),
(5, 'app_pagination', '20', 'default', '2025-05-21 12:52:23', '2025-05-21 12:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint UNSIGNED NOT NULL,
  `wali_id` int DEFAULT NULL,
  `wali_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_id` bigint UNSIGNED NOT NULL,
  `nisn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `wali_id`, `wali_status`, `nama`, `biaya_id`, `nisn`, `foto`, `jurusan`, `jenis_kelamin`, `kelas`, `angkatan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'ok', 'ABDUL DEVA PRATAMA', 1, '30491221589', NULL, 'Farmasi Klinis Dan Komunitas', 'Laki-Laki', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(2, 3, 'ok', 'ADE FITRIANI', 1, '30491220436', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(3, 4, 'ok', 'Adelia Zalfa Mumtazah', 1, '30491321481', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(4, 5, 'ok', 'Adinda Dwi Larasaty', 1, '3034520069', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(5, 6, 'ok', 'AFIANA JESSIKA', 1, '30491221553', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(6, 7, 'ok', 'AIRIN NURFAIZA', 1, '30491321486', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(7, 8, 'ok', 'AISYAH RAMAH DANI', 1, '30491221590', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(8, 9, 'ok', 'Ajeng Nindya Pratiwi', 1, '30141020333', NULL, 'Asisten Keperawatan', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(9, 10, 'ok', 'AL HAFIZ JUNH', 1, '30141021384', NULL, 'Asisten Keperawatan', 'Laki-Laki', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(10, 11, 'ok', 'Alfira Putri', 1, '30141021404', NULL, 'Asisten Keperawatan', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(11, 12, 'ok', 'Alif Fathur Jhatiansyah', 1, '3034521103', NULL, 'Teknologi Laboratorium Medik', 'Laki-Laki', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(12, 13, 'ok', 'ALISA DEA PARTIWI', 1, '3034621078', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(13, 14, 'ok', 'Almira Zada Putri', 1, '30491321482', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(14, 15, 'ok', 'Alya', 1, '30491220459', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(15, 16, 'ok', 'ALYA RIZKITA ARDANA', 1, '30491220460', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(16, 17, 'ok', 'ALYN DELLA HAFITRI', 1, '30491321483', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(17, 18, 'ok', 'AMELIA CITRA LESTARI', 1, '30141021385', NULL, 'Asisten Keperawatan', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(18, 19, 'ok', 'Amelia Septiana Syah', 1, '30491321484', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(19, 20, 'ok', 'Analia', 1, '30491221554', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(20, 21, 'ok', 'ANANDA PUTRI NAILAH', 1, '30491221591', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(21, 22, 'ok', 'ANANTA', 1, '3034621079', NULL, 'Teknologi Laboratorium Medik', 'Laki-Laki', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(22, 23, 'ok', 'Anastasya Putri', 1, '3034521104', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(23, 24, 'ok', 'ANDRIANI SILVIA YUNANDA', 1, '3034621080', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(24, 25, 'ok', 'ANESFIONA AFRILIA', 1, '30141021405', NULL, 'Asisten Keperawatan', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(25, 26, 'ok', 'Angel Stahla nabila Putri', 1, '3034520070', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(26, 27, 'ok', 'ANGGITA RAHMA MAYLANI', 1, '30141021386', NULL, 'Asisten Keperawatan', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(27, 28, 'ok', 'Anggun Febriyeni', 1, '30141121364', NULL, 'Asisten Keperawatan', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(28, 29, 'ok', 'Anisa Azzahra', 1, '30491220437', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(29, 30, 'ok', 'Anisyah Palovi Dewi', 1, '30141121365', NULL, 'Asisten Keperawatan', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(30, 31, 'ok', 'ANJELIKA ORNELA', 1, '30491221555', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(31, 32, 'ok', 'ANTAR HUMAIRA', 1, '30491221592', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(32, 33, 'ok', 'Aprilia Dwi Adinda', 1, '30491220461', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(33, 34, 'ok', 'APRIYANTI SAFITRI', 1, '30141021406', NULL, 'Asisten Keperawatan', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(34, 35, 'ok', 'ARDIANSYAH', 1, '30491221556', NULL, 'Farmasi Klinis Dan Komunitas', 'Laki-Laki', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(35, 36, 'ok', 'ARFIN MAULANA', 1, '3034621081', NULL, 'Teknologi Laboratorium Medik', 'Laki-Laki', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(36, 37, 'ok', 'ARIFAH YUSTRI AULIYAH', 1, '30141021387', NULL, 'Asisten Keperawatan', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(37, 38, 'ok', 'ARNANDA DEFIT PRATAMA', 1, '30141020334', NULL, 'Asisten Keperawatan', 'Laki-Laki', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(38, 39, 'ok', 'Ashilah Albahira', 1, '3034520071', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(39, 40, 'ok', 'ASYFI RISADA', 1, '30491220438', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(40, 41, 'ok', 'Atazila Huzil Afwa', 1, '30491321487', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(41, 42, 'ok', 'AUDIA DWI UTARI', 1, '3034521105', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(42, 43, 'ok', 'Aurasyahni Ewira', 1, '30491220462', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(43, 44, 'ok', 'Aysah Pratiwi', 1, '3034621082', NULL, 'Teknologi Laboratorium Medik', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(44, 45, 'ok', 'AYU EKA WIJAYANTI', 1, '30141020335', NULL, 'Asisten Keperawatan', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(45, 46, 'ok', 'BELA', 1, '30491321488', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '11', 2021, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(46, 47, 'ok', 'Betrix Grecia E.Siburian', 1, '30141020363', NULL, 'Asisten Keperawatan', 'Perempuan', '12', 2020, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(47, 48, 'ok', 'BUNGA NABILLA CHERY', 1, '30491221593', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(48, 49, 'ok', 'BUNGA NAILA PUTRI', 1, '30491221557', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(49, 50, 'ok', 'Bunga Nurwana Susanto', 1, '30491221594', NULL, 'Farmasi Klinis Dan Komunitas', 'Perempuan', '10', 2022, 1, '2025-05-21 09:28:13', '2025-05-21 09:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `reason`, `model_type`, `model_id`, `created_at`, `updated_at`) VALUES
(1, 'aktif', NULL, 'App\\Models\\Siswa', 1, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(2, 'aktif', NULL, 'App\\Models\\Siswa', 2, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(3, 'aktif', NULL, 'App\\Models\\Siswa', 3, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(4, 'aktif', NULL, 'App\\Models\\Siswa', 4, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(5, 'aktif', NULL, 'App\\Models\\Siswa', 5, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(6, 'aktif', NULL, 'App\\Models\\Siswa', 6, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(7, 'aktif', NULL, 'App\\Models\\Siswa', 7, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(8, 'aktif', NULL, 'App\\Models\\Siswa', 8, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(9, 'aktif', NULL, 'App\\Models\\Siswa', 9, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(10, 'aktif', NULL, 'App\\Models\\Siswa', 10, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(11, 'aktif', NULL, 'App\\Models\\Siswa', 11, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(12, 'aktif', NULL, 'App\\Models\\Siswa', 12, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(13, 'aktif', NULL, 'App\\Models\\Siswa', 13, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(14, 'aktif', NULL, 'App\\Models\\Siswa', 14, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(15, 'aktif', NULL, 'App\\Models\\Siswa', 15, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(16, 'aktif', NULL, 'App\\Models\\Siswa', 16, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(17, 'aktif', NULL, 'App\\Models\\Siswa', 17, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(18, 'aktif', NULL, 'App\\Models\\Siswa', 18, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(19, 'aktif', NULL, 'App\\Models\\Siswa', 19, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(20, 'aktif', NULL, 'App\\Models\\Siswa', 20, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(21, 'aktif', NULL, 'App\\Models\\Siswa', 21, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(22, 'aktif', NULL, 'App\\Models\\Siswa', 22, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(23, 'aktif', NULL, 'App\\Models\\Siswa', 23, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(24, 'aktif', NULL, 'App\\Models\\Siswa', 24, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(25, 'aktif', NULL, 'App\\Models\\Siswa', 25, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(26, 'aktif', NULL, 'App\\Models\\Siswa', 26, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(27, 'aktif', NULL, 'App\\Models\\Siswa', 27, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(28, 'aktif', NULL, 'App\\Models\\Siswa', 28, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(29, 'aktif', NULL, 'App\\Models\\Siswa', 29, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(30, 'aktif', NULL, 'App\\Models\\Siswa', 30, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(31, 'aktif', NULL, 'App\\Models\\Siswa', 31, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(32, 'aktif', NULL, 'App\\Models\\Siswa', 32, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(33, 'aktif', NULL, 'App\\Models\\Siswa', 33, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(34, 'aktif', NULL, 'App\\Models\\Siswa', 34, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(35, 'aktif', NULL, 'App\\Models\\Siswa', 35, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(36, 'aktif', NULL, 'App\\Models\\Siswa', 36, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(37, 'aktif', NULL, 'App\\Models\\Siswa', 37, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(38, 'aktif', NULL, 'App\\Models\\Siswa', 38, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(39, 'aktif', NULL, 'App\\Models\\Siswa', 39, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(40, 'aktif', NULL, 'App\\Models\\Siswa', 40, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(41, 'aktif', NULL, 'App\\Models\\Siswa', 41, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(42, 'aktif', NULL, 'App\\Models\\Siswa', 42, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(43, 'aktif', NULL, 'App\\Models\\Siswa', 43, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(44, 'aktif', NULL, 'App\\Models\\Siswa', 44, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(45, 'aktif', NULL, 'App\\Models\\Siswa', 45, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(46, 'aktif', NULL, 'App\\Models\\Siswa', 46, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(47, 'aktif', NULL, 'App\\Models\\Siswa', 47, '2025-05-21 09:28:12', '2025-05-21 09:28:12'),
(48, 'aktif', NULL, 'App\\Models\\Siswa', 48, '2025-05-21 09:28:13', '2025-05-21 09:28:13'),
(49, 'aktif', NULL, 'App\\Models\\Siswa', 49, '2025-05-21 09:28:13', '2025-05-21 09:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `tagihans`
--

CREATE TABLE `tagihans` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `angkatan` int DEFAULT NULL,
  `kelas` int DEFAULT NULL,
  `tanggal_tagihan` date NOT NULL,
  `tanggal_lunas` date DEFAULT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denda` double NOT NULL,
  `status` enum('baru','angsur','lunas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihans`
--

INSERT INTO `tagihans` (`id`, `siswa_id`, `user_id`, `angkatan`, `kelas`, `tanggal_tagihan`, `tanggal_lunas`, `tanggal_jatuh_tempo`, `keterangan`, `denda`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:24', '2025-05-21 09:29:24'),
(2, 2, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:26', '2025-05-21 09:29:26'),
(3, 3, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:28', '2025-05-21 09:29:28'),
(4, 4, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:29', '2025-05-21 09:29:29'),
(5, 5, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:31', '2025-05-21 09:29:31'),
(6, 6, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:32', '2025-05-21 09:29:32'),
(7, 7, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:34', '2025-05-21 09:29:34'),
(8, 8, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:35', '2025-05-21 09:29:35'),
(9, 9, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:37', '2025-05-21 09:29:37'),
(10, 10, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:38', '2025-05-21 09:29:38'),
(11, 11, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:40', '2025-05-21 09:29:40'),
(12, 12, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:41', '2025-05-21 09:29:41'),
(13, 13, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:43', '2025-05-21 09:29:43'),
(14, 14, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:44', '2025-05-21 09:29:44'),
(15, 15, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:46', '2025-05-21 09:29:46'),
(16, 16, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:47', '2025-05-21 09:29:47'),
(17, 17, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:49', '2025-05-21 09:29:49'),
(18, 18, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:50', '2025-05-21 09:29:50'),
(19, 19, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:52', '2025-05-21 09:29:52'),
(20, 20, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:53', '2025-05-21 09:29:53'),
(21, 21, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:55', '2025-05-21 09:29:55'),
(22, 22, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:56', '2025-05-21 09:29:56'),
(23, 23, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:58', '2025-05-21 09:29:58'),
(24, 24, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:29:59', '2025-05-21 09:29:59'),
(25, 25, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:01', '2025-05-21 09:30:01'),
(26, 26, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:02', '2025-05-21 09:30:02'),
(27, 27, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:04', '2025-05-21 09:30:04'),
(28, 28, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:05', '2025-05-21 09:30:05'),
(29, 29, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:07', '2025-05-21 09:30:07'),
(30, 30, 1, NULL, NULL, '2025-05-01', '2025-05-21', '2025-05-30', 'Tagihan Baru', 0, 'lunas', '2025-05-21 09:30:08', '2025-05-21 12:46:04'),
(31, 31, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:10', '2025-05-21 09:30:10'),
(32, 32, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:12', '2025-05-21 09:30:12'),
(33, 33, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:13', '2025-05-21 09:30:13'),
(34, 34, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:14', '2025-05-21 09:30:14'),
(35, 35, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:16', '2025-05-21 09:30:16'),
(36, 36, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:17', '2025-05-21 09:30:17'),
(37, 37, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:19', '2025-05-21 09:30:19'),
(38, 38, 1, NULL, NULL, '2025-05-01', '2025-05-21', '2025-05-30', 'Tagihan Baru', 0, 'lunas', '2025-05-21 09:30:21', '2025-05-21 12:37:28'),
(39, 39, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:22', '2025-05-21 09:30:22'),
(40, 40, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:24', '2025-05-21 09:30:24'),
(41, 41, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:26', '2025-05-21 09:30:26'),
(42, 42, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:27', '2025-05-21 09:30:27'),
(43, 43, 1, NULL, NULL, '2025-05-01', '2025-05-21', '2025-05-30', 'Tagihan Baru', 0, 'lunas', '2025-05-21 09:30:29', '2025-05-21 12:56:04'),
(44, 44, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:30', '2025-05-21 09:30:30'),
(45, 45, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:32', '2025-05-21 09:30:32'),
(46, 46, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:33', '2025-05-21 09:30:33'),
(47, 47, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:35', '2025-05-21 09:30:35'),
(48, 48, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:36', '2025-05-21 09:30:36'),
(49, 49, 1, NULL, NULL, '2025-05-01', NULL, '2025-05-30', 'Tagihan Baru', 0, 'baru', '2025-05-21 09:30:38', '2025-05-21 09:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `tagihan_details`
--

CREATE TABLE `tagihan_details` (
  `id` bigint UNSIGNED NOT NULL,
  `tagihan_id` bigint UNSIGNED NOT NULL,
  `nama_biaya` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_biaya` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihan_details`
--

INSERT INTO `tagihan_details` (`id`, `tagihan_id`, `nama_biaya`, `jumlah_biaya`, `created_at`, `updated_at`) VALUES
(1, 1, 'UKT', 500000, '2025-05-21 09:29:25', '2025-05-21 09:29:25'),
(2, 1, 'Osis', 20000, '2025-05-21 09:29:25', '2025-05-21 09:29:25'),
(3, 2, 'UKT', 500000, '2025-05-21 09:29:26', '2025-05-21 09:29:26'),
(4, 2, 'Osis', 20000, '2025-05-21 09:29:26', '2025-05-21 09:29:26'),
(5, 3, 'UKT', 500000, '2025-05-21 09:29:28', '2025-05-21 09:29:28'),
(6, 3, 'Osis', 20000, '2025-05-21 09:29:28', '2025-05-21 09:29:28'),
(7, 4, 'UKT', 500000, '2025-05-21 09:29:30', '2025-05-21 09:29:30'),
(8, 4, 'Osis', 20000, '2025-05-21 09:29:30', '2025-05-21 09:29:30'),
(9, 5, 'UKT', 500000, '2025-05-21 09:29:31', '2025-05-21 09:29:31'),
(10, 5, 'Osis', 20000, '2025-05-21 09:29:31', '2025-05-21 09:29:31'),
(11, 6, 'UKT', 500000, '2025-05-21 09:29:33', '2025-05-21 09:29:33'),
(12, 6, 'Osis', 20000, '2025-05-21 09:29:33', '2025-05-21 09:29:33'),
(13, 7, 'UKT', 500000, '2025-05-21 09:29:34', '2025-05-21 09:29:34'),
(14, 7, 'Osis', 20000, '2025-05-21 09:29:34', '2025-05-21 09:29:34'),
(15, 8, 'UKT', 500000, '2025-05-21 09:29:36', '2025-05-21 09:29:36'),
(16, 8, 'Osis', 20000, '2025-05-21 09:29:36', '2025-05-21 09:29:36'),
(17, 9, 'UKT', 500000, '2025-05-21 09:29:37', '2025-05-21 09:29:37'),
(18, 9, 'Osis', 20000, '2025-05-21 09:29:37', '2025-05-21 09:29:37'),
(19, 10, 'UKT', 500000, '2025-05-21 09:29:39', '2025-05-21 09:29:39'),
(20, 10, 'Osis', 20000, '2025-05-21 09:29:39', '2025-05-21 09:29:39'),
(21, 11, 'UKT', 500000, '2025-05-21 09:29:40', '2025-05-21 09:29:40'),
(22, 11, 'Osis', 20000, '2025-05-21 09:29:40', '2025-05-21 09:29:40'),
(23, 12, 'UKT', 500000, '2025-05-21 09:29:42', '2025-05-21 09:29:42'),
(24, 12, 'Osis', 20000, '2025-05-21 09:29:42', '2025-05-21 09:29:42'),
(25, 13, 'UKT', 500000, '2025-05-21 09:29:43', '2025-05-21 09:29:43'),
(26, 13, 'Osis', 20000, '2025-05-21 09:29:43', '2025-05-21 09:29:43'),
(27, 14, 'UKT', 500000, '2025-05-21 09:29:45', '2025-05-21 09:29:45'),
(28, 14, 'Osis', 20000, '2025-05-21 09:29:45', '2025-05-21 09:29:45'),
(29, 15, 'UKT', 500000, '2025-05-21 09:29:46', '2025-05-21 09:29:46'),
(30, 15, 'Osis', 20000, '2025-05-21 09:29:46', '2025-05-21 09:29:46'),
(31, 16, 'UKT', 500000, '2025-05-21 09:29:48', '2025-05-21 09:29:48'),
(32, 16, 'Osis', 20000, '2025-05-21 09:29:48', '2025-05-21 09:29:48'),
(33, 17, 'UKT', 500000, '2025-05-21 09:29:49', '2025-05-21 09:29:49'),
(34, 17, 'Osis', 20000, '2025-05-21 09:29:49', '2025-05-21 09:29:49'),
(35, 18, 'UKT', 500000, '2025-05-21 09:29:51', '2025-05-21 09:29:51'),
(36, 18, 'Osis', 20000, '2025-05-21 09:29:51', '2025-05-21 09:29:51'),
(37, 19, 'UKT', 500000, '2025-05-21 09:29:52', '2025-05-21 09:29:52'),
(38, 19, 'Osis', 20000, '2025-05-21 09:29:52', '2025-05-21 09:29:52'),
(39, 20, 'UKT', 500000, '2025-05-21 09:29:54', '2025-05-21 09:29:54'),
(40, 20, 'Osis', 20000, '2025-05-21 09:29:54', '2025-05-21 09:29:54'),
(41, 21, 'UKT', 500000, '2025-05-21 09:29:55', '2025-05-21 09:29:55'),
(42, 21, 'Osis', 20000, '2025-05-21 09:29:55', '2025-05-21 09:29:55'),
(43, 22, 'UKT', 500000, '2025-05-21 09:29:57', '2025-05-21 09:29:57'),
(44, 22, 'Osis', 20000, '2025-05-21 09:29:57', '2025-05-21 09:29:57'),
(45, 23, 'UKT', 500000, '2025-05-21 09:29:58', '2025-05-21 09:29:58'),
(46, 23, 'Osis', 20000, '2025-05-21 09:29:58', '2025-05-21 09:29:58'),
(47, 24, 'UKT', 500000, '2025-05-21 09:30:00', '2025-05-21 09:30:00'),
(48, 24, 'Osis', 20000, '2025-05-21 09:30:00', '2025-05-21 09:30:00'),
(49, 25, 'UKT', 500000, '2025-05-21 09:30:01', '2025-05-21 09:30:01'),
(50, 25, 'Osis', 20000, '2025-05-21 09:30:01', '2025-05-21 09:30:01'),
(51, 26, 'UKT', 500000, '2025-05-21 09:30:03', '2025-05-21 09:30:03'),
(52, 26, 'Osis', 20000, '2025-05-21 09:30:03', '2025-05-21 09:30:03'),
(53, 27, 'UKT', 500000, '2025-05-21 09:30:04', '2025-05-21 09:30:04'),
(54, 27, 'Osis', 20000, '2025-05-21 09:30:04', '2025-05-21 09:30:04'),
(55, 28, 'UKT', 500000, '2025-05-21 09:30:06', '2025-05-21 09:30:06'),
(56, 28, 'Osis', 20000, '2025-05-21 09:30:06', '2025-05-21 09:30:06'),
(57, 29, 'UKT', 500000, '2025-05-21 09:30:07', '2025-05-21 09:30:07'),
(58, 29, 'Osis', 20000, '2025-05-21 09:30:07', '2025-05-21 09:30:07'),
(59, 30, 'UKT', 500000, '2025-05-21 09:30:09', '2025-05-21 09:30:09'),
(60, 30, 'Osis', 20000, '2025-05-21 09:30:09', '2025-05-21 09:30:09'),
(61, 31, 'UKT', 500000, '2025-05-21 09:30:10', '2025-05-21 09:30:10'),
(62, 31, 'Osis', 20000, '2025-05-21 09:30:10', '2025-05-21 09:30:10'),
(63, 32, 'UKT', 500000, '2025-05-21 09:30:12', '2025-05-21 09:30:12'),
(64, 32, 'Osis', 20000, '2025-05-21 09:30:12', '2025-05-21 09:30:12'),
(65, 33, 'UKT', 500000, '2025-05-21 09:30:13', '2025-05-21 09:30:13'),
(66, 33, 'Osis', 20000, '2025-05-21 09:30:13', '2025-05-21 09:30:13'),
(67, 34, 'UKT', 500000, '2025-05-21 09:30:15', '2025-05-21 09:30:15'),
(68, 34, 'Osis', 20000, '2025-05-21 09:30:15', '2025-05-21 09:30:15'),
(69, 35, 'UKT', 500000, '2025-05-21 09:30:16', '2025-05-21 09:30:16'),
(70, 35, 'Osis', 20000, '2025-05-21 09:30:16', '2025-05-21 09:30:16'),
(71, 36, 'UKT', 500000, '2025-05-21 09:30:18', '2025-05-21 09:30:18'),
(72, 36, 'Osis', 20000, '2025-05-21 09:30:18', '2025-05-21 09:30:18'),
(73, 37, 'UKT', 500000, '2025-05-21 09:30:20', '2025-05-21 09:30:20'),
(74, 37, 'Osis', 20000, '2025-05-21 09:30:20', '2025-05-21 09:30:20'),
(75, 38, 'UKT', 500000, '2025-05-21 09:30:21', '2025-05-21 09:30:21'),
(76, 38, 'Osis', 20000, '2025-05-21 09:30:21', '2025-05-21 09:30:21'),
(77, 39, 'UKT', 500000, '2025-05-21 09:30:23', '2025-05-21 09:30:23'),
(78, 39, 'Osis', 20000, '2025-05-21 09:30:23', '2025-05-21 09:30:23'),
(79, 40, 'UKT', 500000, '2025-05-21 09:30:25', '2025-05-21 09:30:25'),
(80, 40, 'Osis', 20000, '2025-05-21 09:30:25', '2025-05-21 09:30:25'),
(81, 41, 'UKT', 500000, '2025-05-21 09:30:26', '2025-05-21 09:30:26'),
(82, 41, 'Osis', 20000, '2025-05-21 09:30:26', '2025-05-21 09:30:26'),
(83, 42, 'UKT', 500000, '2025-05-21 09:30:28', '2025-05-21 09:30:28'),
(84, 42, 'Osis', 20000, '2025-05-21 09:30:28', '2025-05-21 09:30:28'),
(85, 43, 'UKT', 500000, '2025-05-21 09:30:29', '2025-05-21 09:30:29'),
(86, 43, 'Osis', 20000, '2025-05-21 09:30:29', '2025-05-21 09:30:29'),
(87, 44, 'UKT', 500000, '2025-05-21 09:30:31', '2025-05-21 09:30:31'),
(88, 44, 'Osis', 20000, '2025-05-21 09:30:31', '2025-05-21 09:30:31'),
(89, 45, 'UKT', 500000, '2025-05-21 09:30:32', '2025-05-21 09:30:32'),
(90, 45, 'Osis', 20000, '2025-05-21 09:30:32', '2025-05-21 09:30:32'),
(91, 46, 'UKT', 500000, '2025-05-21 09:30:34', '2025-05-21 09:30:34'),
(92, 46, 'Osis', 20000, '2025-05-21 09:30:34', '2025-05-21 09:30:34'),
(93, 47, 'UKT', 500000, '2025-05-21 09:30:35', '2025-05-21 09:30:35'),
(94, 47, 'Osis', 20000, '2025-05-21 09:30:35', '2025-05-21 09:30:35'),
(95, 48, 'UKT', 500000, '2025-05-21 09:30:37', '2025-05-21 09:30:37'),
(96, 48, 'Osis', 20000, '2025-05-21 09:30:37', '2025-05-21 09:30:37'),
(97, 49, 'UKT', 500000, '2025-05-21 09:30:38', '2025-05-21 09:30:38'),
(98, 49, 'Osis', 20000, '2025-05-21 09:30:38', '2025-05-21 09:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` enum('operator','Kepala Sekolah','wali') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_verified_at` datetime DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `akses`, `nohp`, `nohp_verified_at`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'operator', '082184515727', '2025-05-21 16:26:40', 'admin@gmail.com', '2025-05-21 09:26:40', '$2y$10$bUv6RkWUqRHt1vHgnl9ig.K4MdMo3j83qR6SV7LKXaA1Tong19k76', NULL, '2025-05-21 09:26:40', '2025-05-21 09:26:40'),
(2, 'Abdul Khalik', 'wali', '85333284883', '2025-05-21 16:27:52', 'AbdulKhalik@gmail.com', NULL, '$2y$10$UaZX9LmnR3imhh/IhGBIN.rpRfgnn/uxydHS1d0.ddpepPj982bSm', NULL, '2025-05-21 09:27:52', '2025-05-21 09:27:52'),
(3, 'TUGIYONO', 'wali', '88269544990', '2025-05-21 16:27:52', 'TUGIYONO@gmail.com', NULL, '$2y$10$yQwRmtkF39Fq8R7EbRULuOKGwjI83Fpkv29VXDRYrj.i9BFtzf1aa', NULL, '2025-05-21 09:27:52', '2025-05-21 09:27:52'),
(4, 'Indra Gunawan', 'wali', '85381812201', '2025-05-21 16:27:52', 'indrabizgunawan@gmail.com', NULL, '$2y$10$iSfeBE2ckLi7sQucnBv2p.cYONoqB7CUto6cwXZ7UI4DZcXA7A1kO', NULL, '2025-05-21 09:27:52', '2025-05-21 09:27:52'),
(5, 'M. AMIN', 'wali', '88267101912', '2025-05-21 16:27:52', 'M.AMIN@gmail.com', NULL, '$2y$10$T/L08rzpa7FkjPvzgAcJi.0sWbN26khLVRva3RJ7tZg1VZgAb1hu.', NULL, '2025-05-21 09:27:52', '2025-05-21 09:27:52'),
(6, 'SUGIONO', 'wali', '88267110912', '2025-05-21 16:27:52', 'sugiono.militer@gmail.com', NULL, '$2y$10$ZFcU9hn2mKyNXlABJfzkTury9KpSbUcZ.CIsU6KDtvSci1upC.24q', NULL, '2025-05-21 09:27:52', '2025-05-21 09:27:52'),
(7, 'ANDRI', 'wali', '88286991148', '2025-05-21 16:27:52', 'ANDRI@gmail.com', NULL, '$2y$10$nYT7mqYOl38p6/urcPyf4uR7yRMi6cJ8J61kEgkYAWonSHyrSrXE2', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(8, 'Rustomo', 'wali', '83832563744', '2025-05-21 16:27:53', 'Rustomo@gmail.com', NULL, '$2y$10$0Pq4R5YT0dH.U0qu2pb/ce37.4fyObfFWv7o4i6b4MzAt3NP2Gdi.', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(9, 'PUJI SUPRAYITNO', 'wali', '88269545033', '2025-05-21 16:27:53', 'PUJISUPRAYITNO@gmail.com', NULL, '$2y$10$gyt0bJ/vQ3EOXr2Ut8aGseO6PIQdCbromA4wia8JgePSeOzZzwF16', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(10, 'JUNAIDI', 'wali', '81995947046', '2025-05-21 16:27:53', 'JUNAIDI@gmail.com', NULL, '$2y$10$ieOctH/k01XVSHgYrShKi.cZUFuJ2E6So1mhI9jW0cVJl4pOwwIbC', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(11, 'Ilham', 'wali', '82134297528', '2025-05-21 16:27:53', 'Ilham@gmail.com', NULL, '$2y$10$3G9ZT/lxA7/pojdTxAgfrOWL9ckZiY7UwO9r0vg44tOgtOxQQOrMa', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(12, 'Jhon Hendri Alsya', 'wali', '89512377052', '2025-05-21 16:27:53', 'JhonHendriAlsya@gmail.com', NULL, '$2y$10$oRt9ADme0N6E/5h1ryAtMe1zaaKtSLmn6iaPP1dnCWwcuJ3n9KcBC', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(13, 'BUDI YANTO', 'wali', '89514765499', '2025-05-21 16:27:53', 'BUDIYANTO@gmail.com', NULL, '$2y$10$YFbePrmTeLLoamqWMcN4yO8SxQzUmrd7IPgoqCBobzsU7tkkz3.cy', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(14, 'SUKOCO TIRTO SUBAGIYO', 'wali', '88268135647', '2025-05-21 16:27:53', 'SUKOCOTIRTOSUBAGIYO@gmail.com', NULL, '$2y$10$xdD0h35a06p0IBYY3nR4Eu5AMLU35CjB8vjexOPISzNMUjwtvJqx2', NULL, '2025-05-21 09:27:53', '2025-05-21 09:27:53'),
(15, 'IWAN SOPYAN', 'wali', '88269544953', '2025-05-21 16:27:53', 'IWANSOPYAN@gmail.com', NULL, '$2y$10$1Mh5muEniMu53RUGjVVXLOzorMO1BnaymJn/kQningmrTYWM0Wcdm', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(16, 'Ardi Anton', 'wali', '88269544918', '2025-05-21 16:27:54', 'ArdiAnton@gmail.com', NULL, '$2y$10$oE3Q3nEvhMAUP61yiQ/MdOx7s1D5u/qb2FD6Xre6nZY3aOUcV8SUe', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(17, 'Irawan', 'wali', '88267112212', '2025-05-21 16:27:54', 'Irawan@gmail.com', NULL, '$2y$10$6PWHLJMsGm5US1cXiCw2sugODHdfTJDn0u15XHSP9VSDo9WiXy5hC', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(18, 'HISAMUDDIN', 'wali', '88265510912', '2025-05-21 16:27:54', 'HISAMUDDIN@gmail.com', NULL, '$2y$10$NNMijHADm2lUhSevxgzBE.Qp.qxWn0lq.jlgi44Wscoek9zj2mSpu', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(19, 'Heriyansyah', 'wali', '82279899902', '2025-05-21 16:27:54', 'Heriyansyah@gmail.com', NULL, '$2y$10$zfECdGLI2KH4FRdv6G.9oOKClwwAt0Fb.MJf0XQksp7e2SAUax5CO', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(20, 'nasran', 'wali', '85272095294', '2025-05-21 16:27:54', 'nasran@gmail.com', NULL, '$2y$10$AjvBytK2SnLBG/JvoPvTlOfvLgDicITyV5mY2JtMjkXDX7dI26IgC', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(21, 'MARADHONA SAPUTRA', 'wali', '85368833129', '2025-05-21 16:27:54', 'MARADHONASAPUTRA@gmail.com', NULL, '$2y$10$5IFu.cGn11RI2FgvaWGvjeX.HHLcPYBzZv6ND5/4cwek8fK/47XBq', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(22, 'Gunawan', 'wali', '88286534493', '2025-05-21 16:27:54', 'Gunawan@gmail.com', NULL, '$2y$10$zBDldEkvE3zf2Cz9xCpKL.IQg0H9nqpzrREDVr8wcnAC8BxV4kUhi', NULL, '2025-05-21 09:27:54', '2025-05-21 09:27:54'),
(23, 'Jaya Afganistan', 'wali', '88287080454', '2025-05-21 16:27:55', 'JayaAfganistan@gmail.com', NULL, '$2y$10$26vqbQ4c85rVEO8WpAGlBuhhrAcM1JRhnBIerBqbRywsPSHiN2L4O', NULL, '2025-05-21 09:27:55', '2025-05-21 09:27:55'),
(24, 'Maryono', 'wali', '81274585285', '2025-05-21 16:27:55', 'Maryono@gmail.com', NULL, '$2y$10$OEkmI.HzBQx0P5VXt0RzK.MeOfJQlnZM2/1my5RW7XqV7M0QfFUHS', NULL, '2025-05-21 09:27:55', '2025-05-21 09:27:55'),
(25, 'ANTONI RIKAL', 'wali', '81270085285', '2025-05-21 16:27:55', 'ANTONIRIKAL@gmail.com', NULL, '$2y$10$ccuV4gwM.F5vK0kUbSzgTOBJfZTxLZxf4LHPWhYFqmt4wptL3TBZq', NULL, '2025-05-21 09:27:55', '2025-05-21 09:27:55'),
(26, 'Sukismanto', 'wali', '88267101964', '2025-05-21 16:27:55', 'Sukismanto@gmail.com', NULL, '$2y$10$Hsd7OYHPNB0URHUioqBgqu1pI.9vwCabKBQML9dEJxaT/tcgroNsW', NULL, '2025-05-21 09:27:55', '2025-05-21 09:27:55'),
(27, 'ANDRI SUTISNA', 'wali', '88267881964', '2025-05-21 16:27:55', 'ANDRISUTISNA@gmail.com', NULL, '$2y$10$EIdmhX0G6Gqi/hkz9Z7yi.YBP5GtIOaxgeOSqWXBWKTcsgWX1AEAi', NULL, '2025-05-21 09:27:55', '2025-05-21 09:27:55'),
(28, 'Indrahman', 'wali', '83803265192', '2025-05-21 16:27:55', 'Indrahman@gmail.com', NULL, '$2y$10$PtRq1le78wYmCtXjWlMkt.V7xO9Z/R0HPZ3KY3UaIfpAhoJbK4WYa', NULL, '2025-05-21 09:27:55', '2025-05-21 09:27:55'),
(29, 'Sendra Pirgo', 'wali', '88269544935', '2025-05-21 16:27:55', 'SendraPirgo@gmail.com', NULL, '$2y$10$H8I89Qey7tHphfOqHoGgquD.LIYaDmeKYtY4WC7TjQOu0LbAQ1jXK', NULL, '2025-05-21 09:27:55', '2025-05-21 09:27:55'),
(30, 'Buklaini', 'wali', '83121565380', '2025-05-21 16:27:55', 'Buklaini@gmail.com', NULL, '$2y$10$2deWpjUKIZH7oPuY0e4Gsun48d84d0kL3Wny5cOFC8bMmw6L7LFMG', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(31, 'M.ALI', 'wali', '83121577380', '2025-05-21 16:27:56', 'M.ALI@gmail.com', NULL, '$2y$10$g16HNCQBl6/wmGaOFXLSW.gFZamwF9GdBWsuXQAtbUnm8jCnkaCmK', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(32, 'JEPRI', 'wali', '82388947654', '2025-05-21 16:27:56', 'JEPRI@gmail.com', NULL, '$2y$10$lqh0/e8PBQic1KppANqrceUyDFkChuwE/5Sf3.RMfLGw2UrVrxmgm', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(33, 'Legimin', 'wali', '88269532448', '2025-05-21 16:27:56', 'Legimin@gmail.com', NULL, '$2y$10$d7mzJW1IwANyoYrgujh3eeddSn1DvUwYFEsaZSHYyJmcZlz4T8KPy', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(34, 'SUGIANTO', 'wali', '88200532448', '2025-05-21 16:27:56', 'SUGIANTO@gmail.com', NULL, '$2y$10$xtQaHwNCHcmdj4GT0b5fD.QK9Qd8iRhesum5Xrzko1tWY6Yw1MaLO', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(35, 'SEPTIANA', 'wali', '88269552448', '2025-05-21 16:27:56', 'SEPTIANA@gmail.com', NULL, '$2y$10$2zazkQprd/lCS8fQSibeTuGkJQEkLNzXqMLp3B0SEBPoIAtX6haam', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(36, 'Sugiono', 'wali', '82311303651', '2025-05-21 16:27:56', 'Sugiono@gmail.com', NULL, '$2y$10$DF9XGlLZbfd7Xkiut7x.WewxpfZurqoliuwwsJgS3foIFrRcb2kHi', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(37, 'Muh Yusrif Said', 'wali', '82319903651', '2025-05-21 16:27:56', 'MuhYusrifSaid@gmail.com', NULL, '$2y$10$ZXBryT.QJ629oVPqMINia.PjGrrRvztH8pwF3w/7k4qwccb4atpvG', NULL, '2025-05-21 09:27:56', '2025-05-21 09:27:56'),
(38, 'ARMAN', 'wali', '88268049387', '2025-05-21 16:27:56', 'ARMAN@gmail.com', NULL, '$2y$10$BRk7LoarUslnGhcnYMqk3egzFqxrkSHzfBTonpg5dY05dMPu3RenS', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(39, 'Radius Prawiro', 'wali', '88269544915', '2025-05-21 16:27:57', 'RadiusPrawiro@gmail.com', NULL, '$2y$10$9a6RXLcFEQW.Wjyh9iDcouCsh0AbRURbuQpBsu8M2jOhaO5Kaz/y2', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(40, 'SUSWANTO', 'wali', '88269532346', '2025-05-21 16:27:57', 'SUSWANTO@gmail.com', NULL, '$2y$10$llAMbZPP04bGQNe9UwUSOOyGg2S1/Tsz6JfYzEmQIp1JG3BXDCbYq', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(41, 'Indra Gunawan', 'wali', '83167637613', '2025-05-21 16:27:57', 'IndraGunawan@gmail.com', NULL, '$2y$10$T5vOiAgWGmcw.ae356OYDOfBhEM6aLot3U0X8e0ivzX20wYJb2XtO', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(42, 'INDRA TAHYAT', 'wali', '85841946844', '2025-05-21 16:27:57', 'INDRATAHYAT@gmail.com', NULL, '$2y$10$YdYCOV6ucPOgJrFzgeYOmekotpTZDB0bR5kB04Es1SMkhRSSlm5pu', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(43, 'Raflis Oesman', 'wali', '88269532436', '2025-05-21 16:27:57', 'RaflisOesman@gmail.com', NULL, '$2y$10$N2fEQTTEVpm1GrB3hcCLxu5F9zPUbNRPpKULrRY1HffAi6C2Hx3My', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(44, 'Bakri', 'wali', '83165560386', '2025-05-21 16:27:57', 'Bakri@gmail.com', NULL, '$2y$10$OUZOAOL2p9wZ4.w.Pohb/.oSgLmqXXWeMafjAzNQOTTfHGiYqfSZK', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(45, 'BAMBANG MARLIONO', 'wali', '88269532410', '2025-05-21 16:27:57', 'BAMBANGMARLIONO@gmail.com', NULL, '$2y$10$M8yUzWRSRXaCsFk5oQPUU.vHJ8JJntYZPZ5NOiPLxfxuPcQhsQ30m', NULL, '2025-05-21 09:27:57', '2025-05-21 09:27:57'),
(46, 'BAMBANG HARYANTO', 'wali', '88219637838', '2025-05-21 16:27:57', 'BAMBANGHARYANTO@gmail.com', NULL, '$2y$10$2y1W.OY.e5ER9ER7sp9anOXR1OBjK5mK41OQA26iCv8jt0JBsD/Cu', NULL, '2025-05-21 09:27:58', '2025-05-21 09:27:58'),
(47, 'N. Siburian', 'wali', '82289390921', '2025-05-21 16:27:58', 'N.Siburian@gmail.com', NULL, '$2y$10$ShoSg5ybe4njGHnusKcJCekxxhPULGKtYCypdEI3.0k8esUXCUmNS', NULL, '2025-05-21 09:27:58', '2025-05-21 09:27:58'),
(48, 'HENRY YC', 'wali', '83819254280', '2025-05-21 16:27:58', 'HENRYYC@gmail.com', NULL, '$2y$10$LOy8nnRmIxna9cqHn3mLKuD7x7xsyW5dsqrRex6..QydY6uBSH6Zm', NULL, '2025-05-21 09:27:58', '2025-05-21 09:27:58'),
(49, 'CHING HUI', 'wali', '83819994280', '2025-05-21 16:27:58', 'CHINGHUI@gmail.com', NULL, '$2y$10$aZlMtXGgPXQ7C5rs65ovSOA66JsZOO1U6mWtysivkW.AzkWODqpKy', NULL, '2025-05-21 09:27:58', '2025-05-21 09:27:58'),
(50, 'Beni Susanto', 'wali', '82181742081', '2025-05-21 16:27:58', 'BeniSusanto@gmail.com', NULL, '$2y$10$4hAJdgM9yuRhHXfcl9gnzueYUvCPvzKh45L2aomE8P2ysUbJMmi42', NULL, '2025-05-21 09:27:58', '2025-05-21 09:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `wali_banks`
--

CREATE TABLE `wali_banks` (
  `id` bigint UNSIGNED NOT NULL,
  `wali_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'wali_id adalah primary key di user id',
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rekening` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekening` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wali_banks`
--

INSERT INTO `wali_banks` (`id`, `wali_id`, `kode`, `nama_bank`, `nama_rekening`, `nomor_rekening`, `created_at`, `updated_at`) VALUES
(1, '44', '014', 'BANK BCA (BANK CENTR', 'wali', '7870598632', '2025-05-21 12:55:41', '2025-05-21 12:55:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_sekolahs`
--
ALTER TABLE `bank_sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biayas`
--
ALTER TABLE `biayas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_statuses`
--
ALTER TABLE `job_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_statuses_job_id_index` (`job_id`),
  ADD KEY `job_statuses_type_index` (`type`),
  ADD KEY `job_statuses_queue_index` (`queue`),
  ADD KEY `job_statuses_status_index` (`status`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayarans_tagihan_id_index` (`tagihan_id`),
  ADD KEY `pembayarans_wali_id_index` (`wali_id`),
  ADD KEY `pembayarans_user_id_index` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `40` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_nisn_unique` (`nisn`),
  ADD KEY `siswas_wali_id_index` (`wali_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagihans_siswa_id_index` (`siswa_id`),
  ADD KEY `tagihans_user_id_index` (`user_id`);

--
-- Indexes for table `tagihan_details`
--
ALTER TABLE `tagihan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nohp_unique` (`nohp`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wali_banks`
--
ALTER TABLE `wali_banks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `bank_sekolahs`
--
ALTER TABLE `bank_sekolahs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biayas`
--
ALTER TABLE `biayas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_statuses`
--
ALTER TABLE `job_statuses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tagihan_details`
--
ALTER TABLE `tagihan_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wali_banks`
--
ALTER TABLE `wali_banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
