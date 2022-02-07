-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2022 pada 03.52
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_android`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nasabah`
--

CREATE TABLE `tb_nasabah` (
  `id` char(10) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no_rekening` varchar(16) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `saldo_simpanan` int(11) DEFAULT NULL,
  `saldo_pinjaman` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nasabah`
--

INSERT INTO `tb_nasabah` (`id`, `nama`, `no_rekening`, `alamat`, `kota`, `saldo_simpanan`, `saldo_pinjaman`) VALUES
('1111111111', 'Xavier', '1234567891011121', 'Jl. Kiri Kanan', 'Jakarta', 15000000, 0),
('2222222222', 'Xabiv', '1234567891011222', 'Jl. Kanan Kiri', 'Tangerang', 20000000, 5000000),
('3333333333', 'Susis', '5555567891011222', 'Jl. Maju Kanan', 'Bogor', 90000000, 0),
('4444444444', 'Parman', '0354567891011222', 'Jl. Maju Kiri', 'Depok', 5000000, 0),
('5555555555', 'Paijo', '4534567891011200', 'Jl. Maju Mundur', 'Bekasi', 75000000, 0),
('6666666666', 'Kinem', '154567891011222', 'Jl. Selangkah Lebih Maju', 'Bandung', 3000000, 1000000),
('7777777777', 'Makmur', '7734567891011222', 'Jl. Kebelankang Jauh Sekali', 'Lampung', 1500000, 4000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `gaji` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `nama`, `posisi`, `gaji`) VALUES
(1, 'Damian Smith', 'IT Manager', '8000000'),
(2, 'George Walker', 'System Analyst', '5650000'),
(3, 'John Adriane ', 'Web Developer', '6120000'),
(4, 'Jennifer Moriana ', 'Accounting ', '5910000'),
(5, 'Daniel Xavier', 'Finance Manager', '6200000'),
(6, 'Rizal', 'React Native Specialist', '8500000'),
(9, 'Benazir Shea', 'Marketing Manager', '58000000'),
(10, 'Xavier', 'Mobile Developer', '23000000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_nasabah`
--
ALTER TABLE `tb_nasabah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
