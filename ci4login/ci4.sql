-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2020 pada 07.08
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '8e8c01e276dec6c1e9706b15a5c42845', '2020-10-28 23:51:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'michaelnababan@gmail.com', 1, '2020-10-28 23:30:52', 1),
(2, '::1', 'kaelnababan90@gmail.com', 2, '2020-10-28 23:32:45', 1),
(3, '::1', 'MichaelNababan', NULL, '2020-10-28 23:51:27', 0),
(4, '::1', 'kaelnababan20@gmail.com', 5, '2020-10-28 23:51:40', 1),
(5, '::1', 'kaelnababan20@gmail.com', 5, '2020-10-29 00:40:03', 1),
(6, '::1', 'kaelnababan20@gmail.com', 5, '2020-10-29 00:44:54', 1),
(7, '::1', 'kaelnababan20@gmail.com', 5, '2020-10-29 01:05:22', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Tsubasa Ozoraa', 'Tsubasa', 'Yoichi Takahashi', 'Ozora Namatshuki', '1.jpg', NULL, '2020-10-10 11:57:17'),
(2, 'One Piece', 'one-piece', 'Eichiro Odaa', 'Gramedia', '2.jpg', NULL, '2020-10-10 12:51:44'),
(5, 'Spongebob', 'spongebob', 'Bikini Bottom', 'Nickelodeon', '1602351472_b0db922820b3efc117cf.jpg', '2020-10-10 12:37:52', '2020-10-10 13:28:40'),
(6, 'Doraemon', 'doraemon', 'Fujiko Fujio', 'Fujiko Fujio', '1602917872_2ae353b02738e567e45f.jpg', '2020-10-17 01:57:52', '2020-10-17 01:57:52'),
(7, 'Naruto Shippuden 9', 'naruto-shippuden-9', 'Masashi Kishimoto', 'Masashi Kishimoto', '1602918002_1a35b4463f54f8604af6.jpg', '2020-10-17 02:00:02', '2020-10-17 02:00:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-08-24-061807', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1602904821, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1603941760, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Galur Saputra S.Psi', 'Kpg. Sadang Serang No. 996, Batu 68225, Gorontalo', '1993-05-26 17:05:33', '1982-10-06 13:13:31'),
(2, 'Fitria Pertiwi', 'Jln. Baung No. 139, Ambon 47157, JaBar', '2012-04-02 11:59:03', '2008-12-31 02:55:44'),
(3, 'Banawa Mangunsong', 'Kpg. Cut Nyak Dien No. 861, Manado 18916, KepR', '1992-08-28 18:34:38', '1988-10-11 13:16:41'),
(4, 'Prasetyo Gangsa Sihombing S.IP', 'Dk. Casablanca No. 127, Tidore Kepulauan 70630, PapBar', '1991-05-30 15:41:54', '2012-03-31 05:11:50'),
(5, 'Budi Narpati', 'Jln. Pahlawan No. 532, Manado 86015, Lampung', '1978-12-18 16:21:07', '1999-09-12 06:15:39'),
(6, 'Wisnu Hidayat', 'Psr. Nanas No. 966, Tual 45676, Papua', '2011-03-05 17:31:42', '2007-09-20 22:18:38'),
(7, 'Tugiman Dipa Budiyanto S.Pt', 'Jln. Abdul. Muis No. 848, Bogor 74877, PapBar', '1989-11-24 10:40:44', '2003-10-03 19:02:26'),
(8, 'Rini Betania Yulianti', 'Dk. Hasanuddin No. 974, Payakumbuh 63792, DKI', '1992-09-26 01:03:22', '1990-09-09 08:29:41'),
(9, 'Kamila Farida', 'Gg. Baha No. 316, Bukittinggi 68828, Bengkulu', '1983-05-08 18:46:24', '1976-01-15 10:24:22'),
(10, 'Bagas Pratama', 'Jln. Gajah Mada No. 591, Batu 38722, MalUt', '2009-07-16 15:19:01', '2000-01-22 20:40:39'),
(11, 'Argono Kadir Maulana M.M.', 'Gg. Cut Nyak Dien No. 416, Surakarta 72179, KalUt', '1995-05-16 23:40:04', '2009-03-17 03:59:06'),
(12, 'Ade Citra Haryanti M.Kom.', 'Ki. Setiabudhi No. 473, Pagar Alam 80936, Papua', '2009-04-17 21:29:32', '1978-04-10 07:49:09'),
(13, 'Syahrini Nuraini', 'Psr. Bayan No. 592, Ambon 68673, Banten', '2015-07-15 14:04:36', '2006-02-22 08:18:36'),
(14, 'Raina Umi Namaga M.M.', 'Jr. Sukajadi No. 839, Banda Aceh 33615, KepR', '2007-05-27 10:38:51', '2007-05-26 16:32:55'),
(15, 'Perkasa Pratama', 'Dk. Basudewo No. 938, Kendari 64697, SumSel', '2008-07-20 22:44:26', '2012-03-12 02:26:21'),
(16, 'Maria Astuti M.Pd', 'Jr. Rajawali Timur No. 929, Langsa 22631, JaBar', '1986-05-21 08:48:53', '2006-03-04 21:22:23'),
(17, 'Cinthia Riyanti', 'Gg. Acordion No. 611, Makassar 24216, Lampung', '2009-11-02 08:07:40', '1997-12-16 23:28:54'),
(18, 'Marsito Narji Mahendra M.Pd', 'Gg. Rajawali Timur No. 398, Palopo 82618, SumBar', '2011-12-18 19:24:36', '1992-07-22 20:18:37'),
(19, 'Baktiadi Najmudin', 'Gg. Ters. Jakarta No. 891, Gorontalo 55390, KepR', '1984-03-29 19:51:58', '1972-07-12 23:35:21'),
(20, 'Cakrawangsa Hardiansyah', 'Kpg. Padma No. 57, Bitung 68961, NTT', '2007-06-14 01:07:44', '2007-01-06 03:28:39'),
(21, 'Mutia Tiara Lestari S.Psi', 'Ds. Rajawali Barat No. 524, Palu 13616, KalTim', '1984-08-22 17:10:06', '2012-03-27 19:08:40'),
(22, 'Patricia Wastuti', 'Jr. Bacang No. 377, Tangerang 41352, KalTim', '1995-03-13 15:52:34', '1977-05-03 10:22:54'),
(23, 'Aurora Oktaviani', 'Jln. Yoga No. 726, Madiun 54056, SumSel', '1994-06-21 23:53:44', '1979-07-20 00:16:12'),
(24, 'Jindra Pradipta', 'Kpg. Salam No. 444, Tangerang Selatan 85456, JaTim', '1991-10-30 19:22:45', '2001-11-10 04:28:48'),
(25, 'Naradi Bahuwarna Nugroho', 'Ki. R.E. Martadinata No. 131, Tangerang Selatan 24331, NTT', '1995-08-30 20:21:14', '1971-04-17 13:21:30'),
(26, 'Vinsen Irawan', 'Psr. Padma No. 963, Bima 81953, Bali', '2001-01-12 10:57:46', '1995-05-04 12:05:34'),
(27, 'Wira Hidayanto', 'Psr. Gading No. 50, Palembang 88824, Riau', '2016-07-11 01:03:46', '2009-03-31 01:09:00'),
(28, 'Umaya Praba Mansur', 'Gg. Baha No. 183, Probolinggo 74394, KalTeng', '2006-06-13 20:01:06', '1982-01-20 12:03:19'),
(29, 'Cinthia Nasyidah', 'Ds. Jakarta No. 825, Cimahi 95919, KepR', '1993-10-19 08:02:24', '1980-11-26 04:52:43'),
(30, 'Tugiman Kurniawan', 'Psr. Basuki No. 50, Depok 78900, KepR', '2003-09-21 06:49:53', '2016-10-28 19:18:48'),
(31, 'Eko Sitompul S.IP', 'Jr. Pasir Koja No. 290, Ternate 37795, Bali', '2009-12-17 12:34:18', '2002-01-25 05:11:47'),
(32, 'Putri Hartati S.Kom', 'Kpg. Yohanes No. 581, Palopo 73286, KalBar', '1979-02-19 01:10:01', '2020-05-30 01:51:31'),
(33, 'Bahuwarna Gading Megantara S.Pd', 'Kpg. Hasanuddin No. 663, Serang 26082, JaBar', '1982-06-27 16:48:51', '2006-11-08 12:39:35'),
(34, 'Garan Ramadan', 'Ds. Yos No. 334, Medan 31537, Lampung', '1999-11-15 18:10:16', '2015-07-13 12:09:12'),
(35, 'Yunita Kuswandari', 'Jln. R.M. Said No. 723, Banjarmasin 38969, KalTim', '1979-11-07 07:52:09', '1998-04-01 01:51:18'),
(36, 'Yani Andriani', 'Jr. Madiun No. 461, Cimahi 12346, KepR', '2019-05-27 13:31:45', '1984-10-27 21:54:42'),
(37, 'Among Anggriawan', 'Jr. Bahagia  No. 289, Padangsidempuan 96399, SulUt', '1981-11-16 01:58:06', '2012-07-09 20:33:03'),
(38, 'Asirwanda Siregar', 'Ds. Teuku Umar No. 469, Tanjungbalai 39977, KalBar', '1995-07-19 04:45:56', '2011-09-19 20:33:49'),
(39, 'Opung Gara Saputra', 'Dk. Hang No. 637, Tanjungbalai 76407, JaTeng', '1976-09-03 02:32:48', '1993-01-22 02:55:54'),
(40, 'Edi Wijaya', 'Kpg. Kali No. 153, Surakarta 95817, BaBel', '2020-04-02 00:27:53', '1994-05-08 09:04:21'),
(41, 'Tiara Pertiwi', 'Gg. Babadak No. 373, Jayapura 24203, KalUt', '2012-09-17 03:47:56', '2009-08-28 04:06:33'),
(42, 'Pandu Sihotang', 'Jr. Baya Kali Bungur No. 922, Salatiga 16766, Banten', '1992-02-05 19:24:20', '1994-08-05 19:55:00'),
(43, 'Johan Nashiruddin', 'Psr. Kebangkitan Nasional No. 377, Tidore Kepulauan 87142, Banten', '2011-05-04 06:50:43', '1984-01-23 16:41:07'),
(44, 'Ayu Uli Wulandari', 'Jr. Kiaracondong No. 311, Gunungsitoli 52286, Aceh', '2008-02-14 14:10:43', '2009-02-01 13:52:41'),
(45, 'Capa Wibowo S.H.', 'Kpg. Abdul Muis No. 873, Bekasi 68101, SulUt', '1993-02-10 22:01:53', '1979-09-19 07:47:59'),
(46, 'Ismail Nashiruddin', 'Ki. Bambu No. 700, Banda Aceh 49617, DKI', '2019-03-03 17:00:13', '2019-04-07 18:59:50'),
(47, 'Dadi Napitupulu', 'Ki. Abdul Rahmat No. 741, Pasuruan 42249, SulSel', '1996-06-24 01:17:35', '2014-09-30 09:04:17'),
(48, 'Febi Wulan Mayasari S.Psi', 'Gg. Panjaitan No. 558, Bengkulu 63812, JaBar', '1996-12-23 23:39:33', '1986-09-25 23:20:59'),
(49, 'Ellis Hastuti', 'Psr. Ters. Kiaracondong No. 582, Serang 21261, PapBar', '1997-05-24 06:30:59', '1993-09-08 14:48:32'),
(50, 'Niyaga Ikhsan Salahudin', 'Dk. B.Agam Dlm No. 92, Payakumbuh 47373, Banten', '1987-01-16 16:14:33', '1970-03-16 19:50:27'),
(51, 'Joko Naradi Manullang S.IP', 'Dk. Abdul Muis No. 132, Tangerang Selatan 11595, JaTeng', '1976-04-27 14:53:15', '1972-03-17 22:49:59'),
(52, 'Eman Bahuwirya Suryono S.Sos', 'Psr. Orang No. 985, Payakumbuh 43859, KalTeng', '2002-04-11 22:06:34', '1987-03-08 20:19:34'),
(53, 'Halima Nurdiyanti', 'Psr. Veteran No. 845, Administrasi Jakarta Pusat 79175, BaBel', '1972-10-28 08:20:41', '1980-04-09 18:53:56'),
(54, 'Prasetyo Sihombing', 'Dk. Adisumarmo No. 984, Tanjungbalai 73508, BaBel', '2008-11-18 22:07:25', '1990-01-09 19:19:40'),
(55, 'Titi Ina Namaga', 'Ds. Ketandan No. 271, Gorontalo 70013, KepR', '1995-10-22 02:32:07', '2011-02-08 18:54:38'),
(56, 'Ihsan Saptono', 'Jr. Ki Hajar Dewantara No. 485, Kotamobagu 11833, Jambi', '2000-08-04 09:12:42', '1974-06-04 11:59:08'),
(57, 'Cahya Edi Wahyudin S.H.', 'Ds. Ciwastra No. 726, Jayapura 31082, SulSel', '2002-07-12 05:48:48', '1973-12-13 19:50:54'),
(58, 'Carla Siska Yolanda S.Psi', 'Jr. Muwardi No. 195, Palangka Raya 83661, SulTra', '1993-01-23 04:14:40', '2018-06-09 15:54:27'),
(59, 'Wardaya Hakim', 'Ki. Basuki Rahmat  No. 975, Malang 43638, JaTim', '2001-11-01 13:45:50', '2012-01-16 04:22:38'),
(60, 'Putu Hidayanto', 'Psr. Dr. Junjunan No. 512, Magelang 18805, JaTeng', '1987-11-24 23:37:01', '1974-01-11 20:52:05'),
(61, 'Wani Yolanda', 'Gg. Mulyadi No. 375, Banda Aceh 42538, MalUt', '2009-12-29 18:06:19', '1977-04-09 18:05:52'),
(62, 'Luwar Paiman Firmansyah M.TI.', 'Gg. Bakau No. 157, Kediri 75902, SulTeng', '2016-10-15 21:14:27', '1976-07-25 08:47:29'),
(63, 'Laila Uyainah', 'Ds. Reksoninten No. 846, Tegal 12237, SumUt', '1978-09-15 00:24:09', '2002-09-17 14:48:11'),
(64, 'Bagas Suryono', 'Jln. Agus Salim No. 219, Probolinggo 90819, SulTra', '1992-07-28 02:23:14', '2005-11-02 13:54:28'),
(65, 'Jelita Genta Suartini M.Farm', 'Ki. S. Parman No. 516, Administrasi Jakarta Utara 86385, MalUt', '2008-11-03 03:21:20', '2017-05-25 01:40:44'),
(66, 'Jaya Kajen Tampubolon S.Sos', 'Ki. Basoka Raya No. 106, Mojokerto 43985, KalTeng', '2004-04-12 10:58:19', '1998-01-27 23:10:35'),
(67, 'Uchita Azalea Kusmawati', 'Psr. Cihampelas No. 503, Ambon 40522, SumBar', '1999-09-12 20:37:43', '1970-07-27 05:59:47'),
(68, 'Hasna Genta Pertiwi', 'Jln. Kali No. 516, Tual 18007, Maluku', '1991-10-13 07:04:58', '2012-07-28 12:47:18'),
(69, 'Lanang Wahyu Rajata', 'Jln. Jend. Sudirman No. 126, Singkawang 51372, Lampung', '2001-08-10 03:53:43', '1989-09-14 05:01:45'),
(70, 'Cahyadi Pratama', 'Jr. Adisucipto No. 238, Banjarmasin 70175, DKI', '1977-09-05 03:14:04', '1985-12-20 08:52:54'),
(71, 'Jaeman Suryono S.Kom', 'Kpg. Baranangsiang No. 527, Bandung 68742, DKI', '2011-12-19 01:47:55', '2009-10-09 22:34:38'),
(72, 'Cindy Wijayanti', 'Jln. K.H. Wahid Hasyim (Kopo) No. 737, Gunungsitoli 83068, Papua', '2011-05-30 09:01:32', '1991-09-28 02:23:49'),
(73, 'Latika Kuswandari', 'Kpg. Ir. H. Juanda No. 630, Kediri 28313, Lampung', '1992-10-08 05:45:58', '2008-02-06 00:50:16'),
(74, 'Umaya Naradi Prayoga S.Psi', 'Ds. Padma No. 660, Kupang 12321, JaTim', '1976-02-09 08:25:24', '1975-08-02 16:05:03'),
(75, 'Betania Iriana Yulianti', 'Ds. Baranang No. 323, Kediri 60416, Riau', '1990-12-23 13:39:57', '1976-03-04 14:20:46'),
(76, 'Padmi Agustina S.E.I', 'Jr. Babadan No. 357, Bima 40843, JaTim', '2010-01-10 10:13:29', '1994-05-07 20:16:31'),
(77, 'Ganjaran Prasetyo S.Sos', 'Ki. Bass No. 511, Parepare 53185, KalUt', '1980-05-25 23:41:49', '1999-07-11 07:38:48'),
(78, 'Ulya Nadia Melani S.Pd', 'Ds. Abdul No. 960, Kediri 85890, SulBar', '2018-09-11 14:02:51', '2003-08-24 08:25:59'),
(79, 'Tirtayasa Siregar', 'Gg. Jagakarsa No. 500, Bau-Bau 68377, Gorontalo', '2003-02-04 04:27:22', '1984-05-14 19:07:18'),
(80, 'Chelsea Usada', 'Jr. Barasak No. 706, Surabaya 69196, Aceh', '1998-11-08 18:05:22', '1981-05-12 01:46:22'),
(81, 'Kambali Dongoran', 'Dk. Dipatiukur No. 783, Bogor 88284, JaTim', '1971-07-20 06:02:31', '1970-11-16 18:39:37'),
(82, 'Dasa Situmorang S.Farm', 'Dk. Padma No. 956, Metro 61134, SumSel', '1988-03-20 04:07:10', '2013-06-15 05:05:30'),
(83, 'Kurnia Hutapea', 'Ki. Bawal No. 265, Bontang 51321, KalTim', '1997-11-20 21:39:19', '1987-06-12 07:52:55'),
(84, 'Patricia Laksita', 'Jr. Batako No. 330, Kotamobagu 26284, Bengkulu', '2006-12-09 15:14:23', '2002-04-13 22:51:11'),
(85, 'Paulin Fujiati', 'Dk. Lembong No. 910, Ambon 98763, KalTim', '1994-12-01 17:56:28', '2015-06-11 08:55:55'),
(86, 'Jagaraga Firgantoro', 'Psr. Jamika No. 374, Bontang 71691, Jambi', '2006-01-11 04:08:49', '2005-02-10 12:21:31'),
(87, 'Marwata Hutasoit', 'Ds. Dipatiukur No. 343, Cimahi 56118, JaBar', '1984-07-24 07:15:13', '1992-05-16 16:40:57'),
(88, 'Balamantri Suwarno', 'Ds. Tangkuban Perahu No. 796, Palangka Raya 95923, SulBar', '2001-09-22 18:56:37', '1977-06-26 10:44:28'),
(89, 'Gilda Fitriani Haryanti', 'Psr. Lumban Tobing No. 404, Banda Aceh 62294, Lampung', '1973-01-21 10:02:29', '1989-01-24 13:41:02'),
(90, 'Ridwan Eluh Saefullah', 'Jr. Lada No. 866, Pekanbaru 56152, DKI', '2016-11-12 05:24:19', '1972-10-18 10:08:35'),
(91, 'Kamal Saka Lazuardi S.Kom', 'Psr. Batako No. 672, Banda Aceh 70737, KalTeng', '1976-12-21 15:51:56', '1979-05-18 20:11:50'),
(92, 'Padma Hilda Susanti', 'Gg. Bacang No. 447, Balikpapan 47007, Bengkulu', '2018-12-22 07:19:03', '2009-05-29 07:24:32'),
(93, 'Dewi Sadina Hassanah', 'Gg. Wahidin Sudirohusodo No. 864, Sorong 89866, JaTeng', '2004-01-22 03:09:40', '1993-09-07 20:09:23'),
(94, 'Raisa Rahayu', 'Gg. M.T. Haryono No. 149, Manado 15185, Bengkulu', '1991-06-10 08:31:27', '1980-06-25 07:31:32'),
(95, 'Elvina Andriani', 'Ds. Raya Setiabudhi No. 939, Magelang 36079, SulTra', '2016-12-04 11:45:32', '2009-04-28 16:19:52'),
(96, 'Cecep Sinaga', 'Kpg. Basmol Raya No. 447, Solok 70200, PapBar', '1977-11-30 21:05:58', '1996-05-15 10:04:50'),
(97, 'Lutfan Firmansyah M.Pd', 'Ds. Asia Afrika No. 154, Lubuklinggau 78327, Bengkulu', '1974-08-23 05:22:19', '2016-09-28 05:06:43'),
(98, 'Nilam Purnawati M.Kom.', 'Psr. Baan No. 203, Prabumulih 67785, NTB', '2013-12-12 04:00:53', '2008-05-29 23:50:55'),
(99, 'Galih Elon Gunawan S.I.Kom', 'Dk. Babakan No. 395, Pagar Alam 29190, Papua', '2009-05-06 19:53:25', '2009-11-24 08:57:10'),
(100, 'Melinda Yuni Mayasari', 'Kpg. Dago No. 239, Metro 54015, Maluku', '2015-02-26 17:30:52', '1979-11-22 05:15:24'),
(101, '坂本 英樹', '8637616  神奈川県中津川市北区井上町鈴木6-6-9', '1972-12-17 15:47:45', '2020-10-11 12:33:31'),
(102, '杉山 幹', '5682420  岐阜県加藤市東区田辺町大垣5-3-4', '1989-04-08 22:24:26', '1993-06-14 03:28:16'),
(103, '斉藤 明美', '3635937  福岡県杉山市西区吉田町笹田10-10-3 コーポ中村109号', '1999-12-03 21:40:47', '2009-09-15 11:35:26'),
(104, '宮沢 千代', '7188486  山梨県渡辺市西区伊藤町桐山9-2-2', '1988-10-25 15:59:31', '1977-08-24 16:14:10'),
(105, '笹田 直人', '7352142  北海道青山市東区大垣町小林9-1-7 コーポ浜田103号', '1980-06-19 15:08:30', '2015-09-16 06:46:23'),
(106, '笹田 晃', '9622435  静岡県青田市東区原田町中島5-6-3', '1982-05-08 17:57:21', '1976-01-05 09:53:32'),
(107, '佐藤 裕美子', '1752690  新潟県野村市南区笹田町西之園6-8-7', '2017-12-02 15:25:37', '1975-06-25 03:35:56'),
(108, '斉藤 さゆり', '7766671  秋田県宮沢市中央区中津川町津田7-3-10', '2017-01-20 22:10:03', '1996-08-21 13:54:09'),
(109, '藤本 花子', '2925160  埼玉県田辺市中央区原田町原田10-3-10 ハイツ大垣106号', '1979-09-17 07:06:39', '2006-03-27 00:26:59'),
(110, '中村 花子', '3952806  香川県藤本市東区井上町廣川6-5-7', '1995-11-29 07:22:33', '2012-03-13 04:05:11'),
(111, '佐々木 陽子', '6171955  岩手県坂本市中央区小林町杉山10-2-8', '1978-09-25 02:02:14', '1984-03-07 18:28:50'),
(112, '三宅 充', '5826960  鹿児島県小林市西区杉山町廣川4-2-5 ハイツ浜田106号', '1971-03-11 15:54:14', '1999-08-21 12:20:13'),
(113, '喜嶋 加奈', '3608928  静岡県加藤市中央区渡辺町近藤5-3-3 ハイツ吉田102号', '1983-08-25 15:49:22', '1978-11-19 08:27:32'),
(114, '佐々木 さゆり', '8826172  広島県小泉市西区吉田町近藤4-1-6', '1993-06-11 11:15:15', '1978-06-02 20:54:15'),
(115, '鈴木 桃子', '1924948  岐阜県佐藤市東区佐藤町伊藤4-5-2 コーポ井高109号', '1998-08-19 04:44:40', '1979-04-04 17:57:16'),
(116, '高橋 裕太', '4073286  和歌山県中島市北区松本町若松8-6-8', '2008-07-20 00:25:28', '1981-12-27 04:08:04'),
(117, '山田 涼平', '7177413  富山県佐々木市西区吉本町加納7-6-1', '1982-09-01 05:47:32', '1971-12-18 23:00:31'),
(118, '青山 篤司', '5776598  新潟県中村市南区中村町加納1-4-3', '2003-09-24 11:32:42', '2006-11-25 22:31:01'),
(119, '江古田 直子', '1321763  宮崎県木村市北区喜嶋町吉本7-1-6', '1973-01-25 11:44:20', '1979-09-16 02:34:35'),
(120, '石田 あすか', '3229420  山梨県佐藤市西区大垣町坂本10-3-9 コーポ工藤101号', '1998-10-20 06:07:51', '1990-11-23 17:38:31'),
(121, '伊藤 陽子', '4871956  福岡県工藤市西区三宅町石田10-3-10', '2013-03-18 13:29:10', '1993-11-26 22:13:35'),
(122, '小泉 和也', '6279176  兵庫県佐藤市西区工藤町廣川7-5-5', '1974-09-21 23:58:46', '1975-12-15 10:33:44'),
(123, '大垣 智也', '9269661  鹿児島県西之園市南区佐藤町鈴木5-3-3', '2016-05-12 18:36:56', '1999-02-25 09:16:22'),
(124, '松本 直樹', '9911871  埼玉県宇野市東区田辺町小泉6-9-9', '2011-10-07 16:10:42', '1981-07-12 23:34:56'),
(125, '青田 治', '9809865  兵庫県井上市西区吉田町加藤7-9-10', '1977-08-04 16:11:05', '1982-12-16 17:34:05'),
(126, '伊藤 結衣', '1273773  石川県喜嶋市中央区小泉町浜田4-3-3', '2008-05-28 08:56:28', '2019-09-16 05:11:50'),
(127, '野村 結衣', '2394397  愛知県江古田市北区山田町村山6-2-9', '1987-01-11 17:41:41', '1981-01-04 17:44:46'),
(128, '渚 治', '1618704  奈良県青田市西区喜嶋町三宅3-10-4 ハイツ石田103号', '2009-02-14 17:25:52', '2010-09-14 09:57:46'),
(129, '杉山 舞', '9059983  千葉県佐々木市南区山田町津田6-4-9 コーポ伊藤107号', '2018-04-04 08:03:40', '1990-01-25 18:21:34'),
(130, '伊藤 くみ子', '9481207  長野県浜田市中央区青山町吉田5-4-2', '2006-01-04 11:11:08', '2001-04-21 14:16:09'),
(131, '井上 拓真', '9351646  大阪府山田市北区井上町野村2-9-8 コーポ高橋104号', '1998-08-26 02:09:20', '2005-08-01 02:56:02'),
(132, '若松 京助', '6997003  長野県中村市西区高橋町若松5-6-1 ハイツ木村102号', '1983-06-12 23:23:15', '2009-07-02 22:59:36'),
(133, '渡辺 智也', '7898144  兵庫県山口市西区青田町若松1-2-2 コーポ加藤102号', '1994-09-20 17:17:23', '2018-09-02 07:46:49'),
(134, '津田 洋介', '8987468  山梨県木村市東区斉藤町宮沢6-8-7', '1974-06-09 08:27:14', '1988-11-07 03:26:24'),
(135, '津田 康弘', '8966055  群馬県西之園市西区宇野町加納5-5-10 コーポ野村102号', '2015-01-03 22:45:33', '2008-03-16 10:45:22'),
(136, '木村 京助', '7474079  熊本県伊藤市東区浜田町工藤5-10-2', '1974-03-05 07:30:28', '2011-09-07 12:20:58'),
(137, '藤本 直子', '6868445  岐阜県笹田市西区村山町杉山8-6-5 コーポ木村101号', '2017-07-08 09:13:51', '1978-11-03 07:14:34'),
(138, '佐々木 翔太', '7336596  宮城県佐々木市西区近藤町佐藤9-8-10', '1992-02-03 16:32:17', '1991-08-03 11:16:54'),
(139, '井高 英樹', '3949027  和歌山県中津川市東区青山町伊藤6-4-5', '1974-07-16 17:11:39', '1989-10-01 09:31:48'),
(140, '青山 加奈', '6199826  山梨県斉藤市中央区三宅町鈴木4-1-8 ハイツ吉田104号', '2008-10-11 06:18:46', '1985-01-14 11:19:31'),
(141, '桐山 淳', '8688520  千葉県石田市東区鈴木町井上7-2-10', '2002-09-11 18:34:56', '1983-04-08 20:34:53'),
(142, '廣川 浩', '7719230  三重県加藤市中央区吉田町若松10-6-6', '2013-06-20 06:57:11', '1998-12-26 22:58:30'),
(143, '渡辺 裕樹', '7244197  徳島県西之園市西区松本町大垣3-4-10 ハイツ笹田109号', '2013-11-02 00:36:32', '2013-01-14 23:50:21'),
(144, '浜田 結衣', '4306725  熊本県村山市北区中村町斉藤3-7-7', '1995-10-31 04:32:20', '2003-08-31 00:31:21'),
(145, '青田 七夏', '5768174  栃木県近藤市北区若松町山田1-3-9', '1974-11-11 06:33:03', '2001-04-08 21:33:16'),
(146, '佐々木 七夏', '3206490  東京都山田市南区桐山町伊藤9-9-4', '1978-03-09 00:31:02', '1986-10-30 22:25:08'),
(147, '佐藤 くみ子', '4298921  山形県伊藤市西区藤本町吉田1-1-10 コーポ中津川103号', '2008-11-15 19:17:34', '2014-11-05 11:46:44'),
(148, '江古田 康弘', '7843495  宮城県田辺市西区加納町加藤8-8-6 ハイツ松本104号', '1984-11-26 09:30:21', '2001-03-29 16:13:06'),
(149, '山岸 直人', '1515005  山形県高橋市北区浜田町吉本7-9-6', '2001-04-08 07:31:55', '1992-03-22 19:24:00'),
(150, '山岸 稔', '4176572  長崎県三宅市南区田辺町近藤3-8-8', '2012-05-25 14:06:37', '2020-06-26 11:04:56'),
(151, '若松 桃子', '5315100  埼玉県近藤市南区山岸町石田4-7-9 コーポ田中105号', '1985-12-10 13:34:40', '2003-06-05 16:00:02'),
(152, '小林 里佳', '5941160  栃木県山本市西区三宅町青田9-7-6 ハイツ渡辺104号', '2010-08-17 23:00:13', '2018-02-05 00:25:40'),
(153, '渡辺 充', '4121349  千葉県津田市東区石田町石田10-8-1', '2016-08-10 08:02:36', '2018-08-30 15:58:23'),
(154, '佐藤 康弘', '1189196  沖縄県野村市南区吉田町浜田2-8-7', '2009-12-22 06:06:18', '1980-01-06 02:35:38'),
(155, '原田 結衣', '6063006  滋賀県藤本市西区山本町村山10-8-6', '1970-05-02 05:03:08', '1991-09-24 01:49:29'),
(156, '野村 舞', '3721710  熊本県西之園市中央区佐々木町坂本7-9-4', '2017-09-26 00:49:50', '2009-01-28 23:54:07'),
(157, '渡辺 修平', '4885856  岐阜県鈴木市南区小林町三宅2-7-3 ハイツ松本105号', '1985-02-07 16:44:39', '2007-03-28 09:03:21'),
(158, '木村 七夏', '2283766  和歌山県加納市東区田辺町伊藤4-9-4', '1996-02-22 01:59:47', '2015-08-23 11:26:02'),
(159, '浜田 美加子', '9139707  香川県佐藤市南区野村町三宅3-3-4 ハイツ野村105号', '2003-04-21 04:51:42', '1992-09-28 17:13:29'),
(160, '中島 七夏', '1359926  神奈川県坂本市東区井上町山本6-7-9', '1992-05-20 22:27:41', '1992-08-01 22:02:53'),
(161, '小林 晃', '8196497  山口県佐々木市東区渚町鈴木10-8-2 コーポ斉藤106号', '1980-07-22 23:31:57', '1999-04-03 05:33:21'),
(162, '中津川 裕太', '9414981  三重県青田市中央区山岸町青山9-3-6', '1978-05-30 10:16:43', '1990-04-20 14:32:19'),
(163, '杉山 陽一', '2688452  山形県山岸市西区中村町杉山8-2-5', '1990-07-25 06:09:18', '2019-02-12 11:46:22'),
(164, '加納 桃子', '4711498  愛知県工藤市南区喜嶋町江古田2-3-9 コーポ若松104号', '2015-04-22 19:09:22', '2004-04-10 06:20:36'),
(165, '青山 美加子', '3141868  香川県桐山市西区木村町伊藤4-4-10', '1973-01-21 03:23:04', '2007-01-15 02:05:13'),
(166, '高橋 淳', '9076318  岩手県原田市中央区佐藤町小泉7-7-3', '1995-09-11 04:07:37', '1991-06-11 14:27:14'),
(167, '吉本 太郎', '7435254  岩手県江古田市北区笹田町高橋6-9-4', '1987-08-19 02:39:44', '1974-07-20 03:29:57'),
(168, '若松 里佳', '9671387  大阪府中村市中央区石田町三宅3-7-10 ハイツ井高105号', '1992-04-07 13:48:20', '2015-06-28 14:41:37'),
(169, '三宅 洋介', '4268323  愛媛県村山市北区浜田町佐藤4-2-7 ハイツ田中103号', '1983-05-25 10:07:09', '2016-09-20 02:26:00'),
(170, '若松 結衣', '7293764  富山県野村市南区斉藤町佐々木1-5-4 コーポ加藤107号', '1970-05-08 00:47:19', '1994-11-26 06:12:25'),
(171, '西之園 香織', '2914744  栃木県津田市北区藤本町中津川4-3-1', '1989-11-22 07:45:39', '2018-05-08 16:32:18'),
(172, '斉藤 千代', '6361907  福井県藤本市西区野村町石田3-1-8 ハイツ加藤101号', '1997-10-19 09:48:30', '2009-01-22 16:01:58'),
(173, '松本 修平', '3702181  群馬県伊藤市中央区斉藤町喜嶋2-6-10', '2006-01-16 06:14:15', '2000-08-30 12:20:47'),
(174, '斉藤 くみ子', '5938293  山梨県加納市北区井上町野村8-6-8 ハイツ井高103号', '2006-07-24 18:28:18', '1995-09-13 20:44:40'),
(175, '木村 真綾', '4139865  兵庫県鈴木市西区伊藤町山本7-5-8 コーポ井上110号', '2009-01-01 11:16:05', '1977-01-05 12:54:52'),
(176, '喜嶋 さゆり', '2114243  埼玉県井上市南区吉田町廣川10-4-5', '1981-10-30 20:49:25', '2016-04-30 05:00:29'),
(177, '鈴木 拓真', '1466949  福島県小林市南区浜田町江古田2-6-2 ハイツ田辺110号', '1981-12-12 04:46:28', '2017-09-02 07:17:11'),
(178, '中島 裕太', '9813623  茨城県加藤市東区田辺町渚2-10-3 ハイツ笹田110号', '1991-10-18 16:47:09', '2004-12-21 21:05:28'),
(179, '中村 花子', '6496818  島根県江古田市東区伊藤町吉本9-3-2 コーポ佐藤104号', '1976-12-21 23:45:25', '1998-07-02 06:08:52'),
(180, '吉田 花子', '9886083  長野県佐々木市北区斉藤町鈴木2-9-9', '2012-03-12 22:36:38', '1990-04-04 13:18:36'),
(181, '廣川 太郎', '9837589  群馬県斉藤市南区工藤町近藤10-9-4 コーポ原田101号', '1979-01-07 21:40:29', '2006-08-16 15:36:35'),
(182, '木村 舞', '7429546  高知県佐藤市南区木村町佐藤9-9-10', '1979-12-13 13:50:08', '2020-09-12 04:00:04'),
(183, '小林 花子', '3723258  新潟県加納市東区斉藤町吉本1-6-10', '1979-04-20 15:31:16', '2018-11-05 16:42:36'),
(184, '中村 和也', '5924146  長崎県山田市中央区近藤町江古田9-7-7', '1982-06-03 00:48:33', '1977-08-06 20:03:50'),
(185, '木村 康弘', '5751797  和歌山県桐山市南区藤本町青山9-2-3', '1977-03-22 23:38:33', '2018-04-19 14:23:19'),
(186, '村山 拓真', '9991573  大阪府喜嶋市北区宮沢町小泉1-9-3', '1992-10-28 12:01:29', '1985-02-16 11:43:48'),
(187, '渡辺 直人', '7796754  佐賀県宮沢市西区笹田町中村9-4-8 ハイツ井上101号', '2016-09-21 21:39:36', '2009-12-21 16:04:36'),
(188, '鈴木 千代', '7188785  北海道渡辺市東区田中町津田1-6-6', '2017-03-11 01:26:01', '2010-06-28 04:10:27'),
(189, '近藤 七夏', '3991277  石川県村山市東区鈴木町鈴木5-6-3', '2000-09-08 08:18:50', '1984-05-13 00:37:09'),
(190, '浜田 結衣', '4704415  大分県井高市中央区津田町津田7-10-7 ハイツ江古田106号', '2003-05-24 09:38:57', '1971-02-03 20:30:38'),
(191, '松本 直人', '5928307  新潟県加藤市東区中津川町杉山6-1-9 コーポ高橋105号', '2000-07-07 17:51:54', '1972-08-29 20:56:14'),
(192, '山岸 淳', '6701173  新潟県西之園市中央区松本町宇野9-9-5 ハイツ工藤106号', '1981-01-20 04:30:59', '1985-07-09 04:09:17'),
(193, '中島 明美', '3107090  静岡県野村市中央区喜嶋町坂本1-7-6', '1998-07-23 21:31:50', '1991-11-24 04:35:42'),
(194, '大垣 里佳', '4825883  山口県佐々木市東区西之園町浜田1-7-7 コーポ井高109号', '2002-11-17 09:57:47', '2015-02-08 20:53:29'),
(195, '松本 幹', '7818831  奈良県小林市東区宇野町渚6-5-1', '1993-12-28 07:39:21', '1972-02-05 01:49:45'),
(196, '山口 知実', '7062537  大阪府井高市西区佐藤町吉本9-7-9 ハイツ中津川101号', '1977-08-21 06:09:55', '2003-01-16 10:23:04'),
(197, '石田 加奈', '4167417  大阪府原田市東区桐山町松本1-5-9 コーポ江古田103号', '2011-11-27 09:39:41', '2006-02-22 23:27:04'),
(198, '中津川 陽子', '9167660  福岡県井高市北区加藤町原田5-5-10 ハイツ松本109号', '2004-01-02 20:45:02', '1992-08-25 19:11:36'),
(199, '山岸 春香', '4886235  愛媛県桐山市中央区山田町井上10-7-7', '1985-01-19 16:39:45', '2011-06-29 09:04:49'),
(200, '石田 加奈', '9997719  大分県吉本市北区山本町西之園8-1-2', '1977-10-22 03:07:17', '2006-03-23 22:50:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'kaelnababan20@gmail.com', 'kaelnababan', '$2y$10$BPBon28EjKw8w6mzbVHlWujXY/CSslyySnNyIlZSZmatVv5OhktAm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-10-28 23:50:30', '2020-10-28 23:51:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
