-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2022 pada 11.25
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kontruksi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontraktor`
--

CREATE TABLE `kontraktor` (
  `id_kontraktor` varchar(10) NOT NULL,
  `nama_pt` varchar(50) NOT NULL,
  `ijin_usaha` varchar(50) NOT NULL,
  `akta_notaris` varchar(50) NOT NULL,
  `no_npwp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_client` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `perkerjaan` varchar(50) NOT NULL,
  `luas_tanah` varchar(50) NOT NULL,
  `no_npwp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_client`, `nama`, `alamat`, `no_tlp`, `perkerjaan`, `luas_tanah`, `no_npwp`) VALUES
('1001', 'fikri', 'banjarbaru', '012345678901', 'TNI', '5 HEKTAR', '10001'),
('1002', 'amin', 'banajrbaru', '012345678901', 'PNS', '3 HEKTAR', '20001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kontraktor`
--
ALTER TABLE `kontraktor`
  ADD PRIMARY KEY (`id_kontraktor`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
