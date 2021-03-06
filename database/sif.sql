-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2021 pada 05.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sif`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gradelevels`
--

CREATE TABLE `gradelevels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gradelevels`
--

INSERT INTO `gradelevels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A', '2021-05-11 18:12:50', NULL),
(2, 'B', '2021-05-11 18:12:50', NULL),
(3, 'C', '2021-05-11 18:13:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `uom_id` bigint(20) UNSIGNED NOT NULL,
  `kode_erp` int(11) DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuantiti` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ingredients`
--

INSERT INTO `ingredients` (`id`, `kategori_id`, `grade_id`, `uom_id`, `kode_erp`, `nama`, `kuantiti`, `created_at`, `updated_at`, `product_id`) VALUES
(3, 1, 1, 1, 4010036, 'Bread Flour Emas / 25 kg', 1, '2021-05-15 14:13:25', NULL, NULL),
(4, 3, 2, 2, 4030009, 'Egg / 15 kg (1 * 15 * 15) / R', 2, '2021-05-15 14:13:25', NULL, NULL),
(5, 1, 2, 2, 4010045, 'Chocolate Filling Tulip / 1 kg', NULL, '2021-05-15 08:08:27', '2021-05-15 08:12:04', NULL),
(6, 1, 2, 2, 4010047, 'Milk Chocolate Compound Coating Colatta / 1 Kg', NULL, '2021-05-15 08:12:30', '2021-05-15 08:12:30', NULL),
(7, 1, 2, 2, 4010142, 'Kaya Filling Morin / 1 Kg', NULL, '2021-05-15 08:13:42', '2021-05-15 08:13:42', NULL),
(8, 1, 3, 2, 4020015, 'Raisin / 1 kg (1 * 10 * 10) / R', NULL, '2021-05-15 08:14:13', '2021-05-15 08:14:13', NULL),
(9, 2, 2, 2, 1010005, 'Bun Topping / 1 kg (1 * 1 * 1) / C', NULL, '2021-05-15 08:14:49', '2021-05-15 08:14:49', NULL),
(10, 3, 2, 2, 1010006, 'Butter Cream Filling / 0.5 kg (0.5 * 0.5 * 0.5)', NULL, '2021-05-15 08:15:18', '2021-05-15 08:15:30', NULL),
(11, 3, 1, 2, 1010010, 'Creamcheese Walnut Filling / 1 kg (1 * 1 * 1)', NULL, '2021-05-15 08:16:03', '2021-05-15 08:16:03', NULL),
(12, 3, 2, 2, 1010012, 'Caramel Filling / 0.5 kg (0.5 * 0.5 * 0.5)', NULL, '2021-05-15 08:16:39', '2021-05-15 08:16:39', NULL),
(13, 2, 1, 1, 3010004, 'Honey-Bon Maman (France-30 Gr) / 15 ea (1 * 15 * 6)', NULL, '2021-05-15 08:17:09', '2021-05-15 08:17:09', NULL),
(14, 2, 3, 1, 3010008, 'Number Candle No. 3 / 40 ea (1 * 40 * 40)', NULL, '2021-05-15 08:17:42', '2021-05-15 08:17:42', NULL),
(16, 2, 3, 1, 5555555, 'tes', NULL, '2021-05-16 20:45:21', '2021-05-16 20:45:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategorilevels`
--

CREATE TABLE `kategorilevels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategorilevels`
--

INSERT INTO `kategorilevels` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Raw Material', '2021-05-11 18:16:01', NULL),
(2, 'Merchendise', '2021-05-11 18:16:01', NULL),
(3, 'Finished Good', '2021-05-11 18:16:01', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_09_065213_create_kategorilevels_table', 1),
(5, '2021_05_09_071139_create_uoms_table', 1),
(6, '2021_05_09_071705_create_grades_table', 1),
(7, '2021_05_09_072741_change_uoms_to_uomlevels_table', 1),
(8, '2021_05_09_073847_change_grades_to_gradelevels_table', 1),
(9, '2021_05_11_180305_create_reports_table', 2),
(10, '2021_05_11_180830_create_ingredients_table', 3),
(11, '2021_05_11_181723_add_column_product_reports_table', 4),
(12, '2021_05_11_183626_drop_column_kategori_uom_grade_ingredients_table', 5),
(13, '2021_05_11_214713_drop_column_report_id_ingredients_table', 6),
(14, '2021_05_11_215815_delete_report_id_ingredients_table', 7),
(15, '2021_05_11_222517_add_column_kuantiti_reports_table', 8),
(16, '2021_05_11_222806_add_column_ingredient_id_reports_table', 9),
(17, '2021_05_12_085312_drop_column_kuantiti_ingredients_table', 10),
(18, '2021_05_12_093258_rename_reports_table_to_products_table', 11),
(19, '2021_05_13_022117_create_column_kuantiti_ingredients_table', 12),
(20, '2021_05_13_023030_drop_column_kuantiti_reports_table', 13),
(21, '2021_05_15_095115_drop_column_product_id_ingredients_table', 14),
(22, '2021_05_15_132108_drop_table_products', 15),
(23, '2021_05_15_132253_create_products_table', 16),
(24, '2021_05_15_133911_add_column_product_id_ingredients_table', 17),
(25, '2021_05_15_134926_drop_table_ingredients', 18),
(26, '2021_05_15_135143_create2_ingredients_table', 19),
(27, '2021_05_15_140552_drop2_column_kategori_uom_grade_ingredients_table', 20),
(28, '2021_05_15_145208_change_column_product_id_ingredients_table', 21),
(29, '2021_05_15_150603_drop2_column_product_id_ingredients_table', 22),
(30, '2021_05_15_150919_add2_column_product_id_ingredients_table', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` int(11) DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `kode`, `product`, `created_at`, `updated_at`) VALUES
(1, 1234567, 'Roti Bagguete', '2021-05-15 14:11:44', NULL),
(2, 2345678, 'Premium Milk Pann Bread', '2021-05-15 14:11:44', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `uomlevels`
--

CREATE TABLE `uomlevels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `uomlevels`
--

INSERT INTO `uomlevels` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'EA', '2021-05-11 18:16:29', NULL),
(2, 'KG', '2021-05-11 18:16:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gradelevels`
--
ALTER TABLE `gradelevels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ingredients_kode_erp_unique` (`kode_erp`),
  ADD KEY `ingredients_kategori_id_foreign` (`kategori_id`),
  ADD KEY `ingredients_grade_id_foreign` (`grade_id`),
  ADD KEY `ingredients_uom_id_foreign` (`uom_id`);

--
-- Indeks untuk tabel `kategorilevels`
--
ALTER TABLE `kategorilevels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_kode_unique` (`kode`);

--
-- Indeks untuk tabel `uomlevels`
--
ALTER TABLE `uomlevels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gradelevels`
--
ALTER TABLE `gradelevels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kategorilevels`
--
ALTER TABLE `kategorilevels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `uomlevels`
--
ALTER TABLE `uomlevels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `gradelevels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ingredients_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategorilevels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ingredients_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `uomlevels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
