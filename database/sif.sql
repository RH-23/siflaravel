-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2021 pada 18.44
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ingredients`
--

INSERT INTO `ingredients` (`id`, `kategori_id`, `grade_id`, `uom_id`, `kode_erp`, `nama`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 4010036, 'Bread Flour Emas / 25 kg', '2021-05-11 15:00:45', '2021-05-12 03:03:32'),
(3, 1, 2, 2, 4030009, 'Egg / 15 kg (1 * 15 * 15) / R', '2021-05-11 15:02:41', '2021-05-11 15:02:41'),
(4, 1, 2, 2, 4010045, 'Chocolate Filling Tulip / 1 kg', '2021-05-11 15:03:27', '2021-05-11 15:03:27'),
(5, 1, 3, 2, 4010047, 'Milk Chocolate Compound Coating Colatta / 1 Kg', '2021-05-11 15:04:01', '2021-05-11 15:04:01'),
(6, 1, 2, 2, 4010142, 'Kaya Filling Morin / 1 Kg', '2021-05-11 15:04:46', '2021-05-11 15:04:46'),
(7, 1, 2, 2, 4020015, 'Raisin / 1 kg (1 * 10 * 10) / R', '2021-05-11 15:06:26', '2021-05-11 15:06:26'),
(8, 3, 2, 2, 1010005, 'Bun Topping / 1 kg (1 * 1 * 1) / C', '2021-05-11 15:07:46', '2021-05-11 15:07:46'),
(9, 1, 2, 2, 1010006, 'Butter Cream Filling / 0.5 kg (0.5 * 0.5 * 0.5) / C', '2021-05-11 15:08:15', '2021-05-11 15:08:15'),
(10, 3, 1, 2, 1010010, 'Creamcheese Walnut Filling / 1 kg (1 * 1 * 1) / C', '2021-05-11 15:08:42', '2021-05-11 15:08:42'),
(11, 3, 2, 2, 1010012, 'Caramel Filling / 0.5 kg (0.5 * 0.5 * 0.5) / C', '2021-05-11 15:09:12', '2021-05-11 15:09:12'),
(12, 2, 2, 1, 3010004, 'Honey-Bon Maman (France-30 Gr) / 15 ea (1 * 15 * 60) / R', '2021-05-11 15:09:56', '2021-05-11 15:09:56'),
(13, 2, 2, 1, 3010008, 'Number Candle No. 3 / 40 ea (1 * 40 * 40) / R', '2021-05-11 15:10:34', '2021-05-11 15:10:34');

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
(18, '2021_05_12_093258_rename_reports_table_to_products_table', 11);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `ingredients_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `reports_ingredients_id_foreign` (`ingredients_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kategorilevels`
--
ALTER TABLE `kategorilevels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `reports_ingredients_id_foreign` FOREIGN KEY (`ingredients_id`) REFERENCES `ingredients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
