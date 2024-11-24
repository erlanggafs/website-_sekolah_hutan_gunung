-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2024 pada 08.34
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.25

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
(2, 'galeri1732428397.jpeg', 'Pembinaan Kepada Karang Taruna Di Desa Lengkong ', '2022-07-24 13:02:18', '2024-11-24 13:07:32'),
(3, 'galeri1732430563.jpeg', 'DPMPD Kabupaten Tangerang Dan Camat Cisoka Gelar A', '2024-11-24 06:42:43', NULL);

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
(4, 'Pelepasan Peserta Latihan Dasar Kepemimpinan (LDK) Kepala Desa Terpilih Kabupaten Tangerang Tahun 2023', 'Bapak PJ Bupati Tangerang, pada hari Kamis tanggal 23 November 2023 Jam 09.00 WIB bertempat di kantor DPMPD Kabupaten Tangerang telah melepas sebanyak 20 orang Kepala Desa.\r\n\r\nHasil pemilihan Kepala Desa serentak dan PAW Tahun 2022-2023 untuk melaksanakan latihan dasar kepemimpinan, Berdasarkan peraturan bupati Tangerang Nomor : 17 Tahun 2021 Tentang pengangkatan dan pemberhentian Kepala Desa bahwa Kepala Desa  yang telah dilantik wajib mengikuti latihan dasar kepemimpinan Kepala Desa pada awal masa jabatan yang dilaksanakan oleh pemerintah daerah\r\n\r\nMaksud dan tujuan dari kegiatan latihan Dasar kepemimpinan adalah :\r\n1. Memberikan Pemahaman kepada Kepala Desa mengenai tugas-tuga  Pemerintah Desa dalam penyelenggaraan pemerintahan.\r\n2. Meningkatkan kompetensi Kepala Desa dalam melaksanakan peran dan fungsi serta tanggungjawab dalam memimpin penyelenggaraan Pemerintahan Desa sesuai dengan peraturan dan ketentuan yang berlaku.\r\n3. Memberikan wawasan kebangsaan kepada Kepala Desa guna menumbuhkan nasionalisme dan rasa cinta tanah air dalam memimpin penyelenggaran pemerintahan Desa.\r\n4. Meningkatkan disiplin dan etos kerja serta inovasi Kepala Desa guna mendorong perubahan budaya pemerintahan dan penggalian di tingkat Desa.', 'informasi1732427774.jpeg', '2024-11-24 05:56:14', NULL, 20),
(5, 'DPMPD Memfasilitasi Ketua Panitia Pilkadesa', 'Pada hari Sabtu tanggal 22 Juli 2023 DPMPD Memfasilitasi Ketua Panitia Pilkades di 16 Desa dengan Pihak Independen sekaligus Penanda Tanganan Kerjasama dalam rangka Tes Kompetensi Dasar (TKD) bagi bakal Calon Kepala Desa.\r\n\r\n', 'informasi1732429513.jpeg', '2024-11-24 06:25:13', NULL, 20),
(7, 'Pembagian Benderah Merah Putih Kepada Masyarakat', 'Dpmpd membagikan bendera merah putih kepada masyarakat disekitaran kekurahan kad agung dan masyarakat yg melintas di sekitar kantor dpmpd, Senin (7/8/2023).\r\n\r\nKeiatan ini bertujuan untuk menggugah cinta tanah air dan meningkatkan semangat nasionalisme masyarakat.', 'informasi1732429790.jpeg', '2024-11-24 06:29:50', NULL, 20),
(8, 'DPMPD Kabupaten Tangerang Raih Peringkat Kedua OPD 2021', '<p>DPMPD Kab Tangerang meraih peringkat kedua kategori OPD Tercepat dalam menindaklanjuti hasil pemeriksaan BPK RI Perwakilan Banten. Penghargaan ini secara langsung diterima H. Dadan Gandana, Kepala Dinas DPMPD pada Gelar Pengawasan yang diselenggarakan oleh Inspektorat di Unity Building, Gading Serpong pada hari Rabu, 15 Desember 2021. Gelar pengawasan yang dilaksanakan ditujukan untuk mensosialisasikan kebijakan daerah dalam mendorong tata kelola pemerintahan yang baik sekaligus memberikan motivasi agar OPD semakin baik lagi melaksanakan tugas pokok dan fungsinya dalam rangka mewujudkan pemerintahan yang akuntabel dan transparan. Aparatur diharapkan mampu mencegah kemungkinan penyelewengan anggaran, penyalahgunaan kewenangan dan tidak melaksanakan praktik korupsi dan KKN. Untuk Kategori OPD Tecepat dalam tindak lanjut hasil pemeriksaan : 1. Dinas Perikanan 2. Dinas Pemberdayaan Masyarakat dan Pemerintahan Desa 3. Dinas Perumahan dan Permukiman Selamat bagi OPD yang meraih penghargaan ini semoga menjadi motivasi untuk kita lebih baik lagi</p>', 'informasi1732430047.jpeg', '2024-11-24 06:34:07', '2024-11-24 13:37:40', 20);

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
(1, 'DPMPD Kab Tangerang', 'helpdesk@tangerangkab.go.id', '02136622550', 'Jl. KH. Sarbini No. 2 Komplek Perkantoran Pemda Tigaraksa - Tangerang', 'logo1732423045.png', 'favicon1732423045.png', '<p>Tentang Kami <strong>Dinas Pemberdayaan Masyarakat dan Pemerintahan Desa</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong> Visi dan Misi </strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong> Visi</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Mewujudkan Masyarakat Kabupaten Tangerang yang Religius, Cerdas, Sehat dan Sejahtera</p>\r\n<p>&nbsp;</p>\r\n<p><strong> Misi</strong></p>\r\n<p>1. Meningkatkan penerapan nilai-nilai keagamaan dalam kehidupan bermasyarakat menuju masyarakat yang religious. 2. Meningkatkan akses, mutu dan pemerataan pelayanan pendidikan dan kesehatan untuk mewujudkan masyarakat yang cerdas dan sehat.<br />3. Mengembangkan ekonomi daerah yang kompetitif dan berbasis kerakyatan.<br />4. Meningkatkan kualitas tata kelola pemerintahan yang profesional, transparan dan akuntabel.<br />5. Meningkatkan pemerataan pembangunan infrastruktur yang berkelanjutan dan pengelolaan lingkungan hidup berdasarkan Rencana Tata Ruang wilayah.<br />6. Mengembangkan inovasi daerah dalam rangka meningkatkan kualitas daya saing daerah, masyarakat dan pelaku pembangunan lainnya.</p>', 'sekolah1732429035.jpeg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d507643.50828482094!2d106.20164683281249!3d-6.2683456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e4206ff4f015fb1%3A0x8b4f3babafa1cc45!2sDPMPD%20Kabupaten%20Tangerang!5e0!3m2!1sen!2sid!4v1732424516540!5m2!1sen!2sid', 'H. YAYAT ROHIMAN S.IP., M.Si - Kepala Dinas', 'kepsek1732426921.jpeg', '<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Assalamu\'alaikum wr.wb.</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Salam sejahtera untuk kita semua,\r\n\r\nPuji syukur kita panjatkan ke hadirat Tuhan Yang Maha Esa. Program kerja ini adalah wujud komitmen kita bersama dalam memberdayakan masyarakat dan membangun desa yang mandiri, maju, dan sejahtera.\r\n\r\nMelalui kerja sama dan semangat gotong royong, saya yakin kita dapat menghadirkan perubahan nyata untuk masyarakat desa di Kabupaten Tangerang. Terima kasih atas dukungan semua pihak. Semoga langkah kita senantiasa diberkahi. .</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Melalui program ini, kita akan fokus pada berbagai bidang strategis, seperti peningkatan kapasitas aparat desa, penguatan ekonomi berbasis potensi lokal, serta pengembangan infrastruktur desa yang inklusif dan berkelanjutan. Semua ini adalah bagian dari upaya kita mendukung visi Kabupaten Tangerang sebagai daerah yang unggul dalam segala aspek kehidupan.\r\n\r\nKami percaya, dengan kerja sama yang baik dan semangat gotong royong, kita dapat mencapai tujuan-tujuan mulia ini. Mari kita jadikan program ini sebagai momentum untuk terus berinovasi, beradaptasi, dan memberikan manfaat yang sebesar-besarnya bagi masyarakat desa di Kabupaten Tangerang.</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">Akhir kata, saya mengucapkan terima kasih kepada semua pihak yang telah mendukung dan berpartisipasi dalam penyelenggaraan program kerja ini. Semoga Allah SWT senantiasa membimbing langkah kita dan memberkahi setiap upaya yang kita lakukan.<br>\r\n\r\nWassalamu’alaikum warahmatullahi wabarakatuh</p>\r\n<p style=\"box-sizing: inherit; line-height: 2rem; margin: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\"></p>', '2022-07-26 12:12:59', '2024-11-24 14:23:45');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
