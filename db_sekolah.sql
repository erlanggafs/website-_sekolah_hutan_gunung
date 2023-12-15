-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2023 pada 13.35
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'galeri1702384790.jpeg', 'Pendakian Ekspedisi Merah Putih', '2022-07-24 13:02:18', '2023-12-12 19:39:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'Pelantikan Anggota', '<p>Tanggal 18 Desember 2023</p>', 'informasi1702384823.jpg', '2022-07-24 13:40:12', '2023-12-12 19:40:23', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(11, 'Navigasi Darat', 'Navigasi darat adalah ilmu yang mempelajari cara seseorang menentukan suatu tempat dan memberikan bayangan medan, baik keadaan permukaan serta bentang alam dari bumi dengan bantuan minimal peta dan kompas.[1]\r\n\r\nPengetahuan navigasi darat juga diperlukan untuk usaha-usaha pencarian dan penyelamatan korban kecelakaan atau tersesat di gunung dan hutan, dan juga untuk keperluan olahraga antara lain lomba orienteering.', 'jurusan1702384062.jpg', '2022-07-28 13:08:43', '2023-12-12 19:27:42'),
(12, 'Kerja Sama Tim', 'Bagaimana contoh penerapan teamwork?\r\nContoh Kerja Sama Tim yang Baik\r\n\r\nMengambil keputusan bersama secara kolektif. Setiap orang memiliki kesempatan untuk membagikan ide dan gagasan mereka. Menghormati keputusan bersama tanpa ada konflik. Saling support satu sama lain.', 'jurusan1702383172.jpeg', '2022-07-28 13:09:51', '2023-12-12 19:12:52'),
(13, 'Survival', 'Belajar bertahan hidup di alam', 'jurusan1702383045.jpg', '2023-12-12 12:10:45', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'Estungkara', 'EstungkaraMountainJungle@gmail.com', '01239876546', 'Jl. KH Ashari KM 9 Pinang, Kota Tangerang , Banten', 'logo1702381844.jpg', 'favicon1702381844.jpg', '<p>Tentang sekolah <strong>ESTUNGKARA Mountain and Jungle Association</strong></p>', 'sekolah1663856944.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1983.1682497177758!2d106.68646966017303!3d-6.219281107702527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f931f8e73235%3A0xb43b075c755619d0!2sSMP%20KI%20HAJAR%20DEWANTORO!5e0!3m2!1sid!2sid!4v1659618402672!5m2!1sid!2sid', 'Erlangga Firmansyah ', 'kepsek1702385958.jpeg', '<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Assalamu\'alaikum wr.wb.</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Puji syukur kepada Allah SWT, Tuhan Yang Maha Esa yang telah memberikan rahmat dan anugerahNya sehingga website ESTUNGKARA Mountain and Jungle ini dapat terbit. Salah satu tujuan dari website ini adalah untuk menjawab akan setiap kebutuhan informasi dengan memanfaatkan sarana teknologi informasi yang ada. Kami sadar sepenuhnya dalam rangka memajukan pendidikan di era berkembangnya Teknologi Informasi yang begitu pesat, sangat diperlukan berbagai sarana prasarana yang kondusif, kebutuhan berbagai informasi siswa, guru, orangtua maupun masyarakat, sehingga kami berusaha mewujudkan hal tersebut semaksimal mungkin. Semoga dengan adanya website ini dapat membantu dan bermanfaat, terutama informasi yang berhubungan dengan pendidikan, ilmu pengetahuan dan informasi seputar ESTUNGKARA ini.</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Besar harapan kami, sarana ini dapat memberi manfaat bagi semua pihak yang ada dilingkup pendidikan dan pemerhati pendidikan secara khusus bagi&nbsp; ESTUNGKARA Association.</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Akhirnya kami mengharapkan masukan dari berbagai pihak untuk website ini agar kami terus belajar dan meng-update diri, sehingga tampilan, isi dan mutu website akan terus berkembang dan lebih baik nantinya. Terima kasih atas kerjasamanya, maju terus untuk mencapai ESTUNGKARA Association yang lebih baik lagi.</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Wassalamu\'alaikum wr.wb.</p>', '2022-07-26 12:12:59', '2023-12-12 19:59:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Erlangga F', 'SAdmin1', '123', 'Super Admin', '2022-06-05 13:42:06', '2022-06-28 22:42:52'),
(19, 'Angga', 'Admin2', 'admin', 'Super Admin', '2023-03-14 07:41:08', NULL),
(20, 'admin', 'admin', 'admin', 'Admin', '2023-10-10 11:55:56', '2023-10-15 21:10:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
