-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 02 Agu 2022 pada 10.13
-- Versi server: 10.5.15-MariaDB-cll-lve
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1093537_db_spdm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `id_session` char(100) NOT NULL,
  `no_telp` int(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`, `id_session`, `no_telp`, `email`, `role`) VALUES
('admin', 'admin', 'My Coding', '9apvdai889k2t7ti765dh9s8j9', 2147483647, '401xdssh@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `id_aturan` int(4) NOT NULL,
  `kd_penyakit` char(2) NOT NULL,
  `kd_gejala` char(3) NOT NULL,
  `nilai_probabilitas` double(6,6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id_aturan`, `kd_penyakit`, `kd_gejala`, `nilai_probabilitas`) VALUES
(127, 'P1', 'G14', 0.190000),
(126, 'P1', 'G13', 0.250000),
(125, 'P1', 'G12', 0.430000),
(123, 'P1', 'G10', 0.480000),
(124, 'P1', 'G11', 0.600000),
(132, 'P2', 'G05', 0.320000),
(131, 'P2', 'G04', 0.420000),
(130, 'P2', 'G03', 0.300000),
(118, 'P1', 'G05', 0.680000),
(129, 'P2', 'G02', 0.250000),
(119, 'P1', 'G06', 0.260000),
(128, 'P2', 'G01', 0.410000),
(120, 'P1', 'G07', 0.550000),
(121, 'P1', 'G08', 0.480000),
(122, 'P1', 'G09', 0.340000),
(114, 'P1', 'G01', 0.590000),
(133, 'P2', 'G06', 0.740000),
(115, 'P1', 'G02', 0.750000),
(116, 'P1', 'G03', 0.700000),
(117, 'P1', 'G04', 0.580000),
(134, 'P2', 'G07', 0.450000),
(135, 'P2', 'G08', 0.520000),
(136, 'P2', 'G09', 0.660000),
(137, 'P2', 'G10', 0.520000),
(138, 'P2', 'G11', 0.400000),
(139, 'P2', 'G12', 0.570000),
(140, 'P2', 'G13', 0.750000),
(141, 'P2', 'G14', 0.810000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukutamu`
--

CREATE TABLE `bukutamu` (
  `id_bukutamu` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bukutamu`
--

INSERT INTO `bukutamu` (`id_bukutamu`, `nama`, `email`, `pesan`, `tanggal`) VALUES
(15, 'Febrero', 'Febrero@gmail.com', 'coba', '2022-07-25'),
(12, 'rendi', 'asdad@gmail.com', 'assdfsgaer', '2022-07-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
--

CREATE TABLE `diagnosa` (
  `kd_diagnosa` int(11) NOT NULL,
  `kd_gejala` char(3) NOT NULL,
  `kd_penyakit` char(2) NOT NULL,
  `idpasien` int(10) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `usia` varchar(50) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `nilai` double(6,6) NOT NULL,
  `tgl_diagnosa` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa`
--

INSERT INTO `diagnosa` (`kd_diagnosa`, `kd_gejala`, `kd_penyakit`, `idpasien`, `nama`, `jenis_kelamin`, `usia`, `alamat`, `nilai`, `tgl_diagnosa`) VALUES
(918, 'G02', 'P2', 685, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso', 0.250000, '2022-07-23'),
(919, 'G04', 'P2', 685, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso', 0.420000, '2022-07-23'),
(920, 'G06', 'P2', 685, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso', 0.740000, '2022-07-23'),
(921, 'G08', 'P2', 685, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso', 0.520000, '2022-07-23'),
(922, 'G09', 'P2', 685, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso', 0.660000, '2022-07-23'),
(923, 'G13', 'P2', 685, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(924, 'G01', 'P1', 686, 'Kasus 2', 'Laki-laki', '23', 'Bondowoso', 0.590000, '2022-07-23'),
(925, 'G07', 'P1', 686, 'Kasus 2', 'Laki-laki', '23', 'Bondowoso', 0.550000, '2022-07-23'),
(926, 'G12', 'P1', 686, 'Kasus 2', 'Laki-laki', '23', 'Bondowoso', 0.430000, '2022-07-23'),
(927, 'G01', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.590000, '2022-07-23'),
(928, 'G02', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(929, 'G07', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.550000, '2022-07-23'),
(930, 'G08', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(931, 'G10', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(932, 'G11', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.600000, '2022-07-23'),
(933, 'G12', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.430000, '2022-07-23'),
(934, 'G13', 'P1', 687, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso', 0.250000, '2022-07-23'),
(935, 'G05', 'P2', 688, 'Kasus 4', 'Laki-laki', '23', 'Bondowoso', 0.320000, '2022-07-23'),
(936, 'G06', 'P2', 688, 'Kasus 4', 'Laki-laki', '23', 'Bondowoso', 0.740000, '2022-07-23'),
(937, 'G08', 'P2', 688, 'Kasus 4', 'Laki-laki', '23', 'Bondowoso', 0.520000, '2022-07-23'),
(938, 'G10', 'P2', 688, 'Kasus 4', 'Laki-laki', '23', 'Bondowoso', 0.520000, '2022-07-23'),
(939, 'G13', 'P2', 688, 'Kasus 4', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(940, 'G04', 'P2', 689, 'Kasus 5', 'Laki-laki', '23', 'Bondowoso', 0.420000, '2022-07-23'),
(941, 'G14', 'P2', 689, 'Kasus 5', 'Laki-laki', '23', 'Bondowoso', 0.810000, '2022-07-23'),
(942, 'G05', 'P2', 690, 'Kasus 6', 'Laki-laki', '23', 'Bondowoso', 0.320000, '2022-07-23'),
(943, 'G08', 'P2', 690, 'Kasus 6', 'Laki-laki', '23', 'Bondowoso', 0.520000, '2022-07-23'),
(944, 'G10', 'P2', 690, 'Kasus 6', 'Laki-laki', '23', 'Bondowoso', 0.520000, '2022-07-23'),
(945, 'G12', 'P2', 690, 'Kasus 6', 'Laki-laki', '23', 'Bondowoso', 0.570000, '2022-07-23'),
(946, 'G13', 'P2', 690, 'Kasus 6', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(947, 'G02', 'P1', 691, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(948, 'G03', 'P1', 691, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso', 0.700000, '2022-07-23'),
(949, 'G04', 'P1', 691, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso', 0.580000, '2022-07-23'),
(950, 'G05', 'P1', 691, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso', 0.680000, '2022-07-23'),
(951, 'G07', 'P1', 691, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso', 0.550000, '2022-07-23'),
(952, 'G11', 'P1', 691, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso', 0.600000, '2022-07-23'),
(953, 'G14', 'P1', 691, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso', 0.190000, '2022-07-23'),
(954, 'G01', 'P1', 692, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso', 0.590000, '2022-07-23'),
(955, 'G02', 'P1', 692, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(956, 'G03', 'P1', 692, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso', 0.700000, '2022-07-23'),
(957, 'G04', 'P1', 692, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso', 0.580000, '2022-07-23'),
(958, 'G05', 'P1', 692, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso', 0.680000, '2022-07-23'),
(959, 'G11', 'P1', 692, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso', 0.600000, '2022-07-23'),
(960, 'G01', 'P1', 693, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso', 0.590000, '2022-07-23'),
(961, 'G02', 'P1', 693, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(962, 'G03', 'P1', 693, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso', 0.700000, '2022-07-23'),
(963, 'G04', 'P1', 693, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso', 0.580000, '2022-07-23'),
(964, 'G08', 'P1', 693, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(965, 'G10', 'P1', 693, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(966, 'G11', 'P1', 693, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso', 0.600000, '2022-07-23'),
(967, 'G01', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.590000, '2022-07-23'),
(968, 'G02', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(969, 'G03', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.700000, '2022-07-23'),
(970, 'G04', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.580000, '2022-07-23'),
(971, 'G05', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.680000, '2022-07-23'),
(972, 'G08', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(973, 'G09', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.340000, '2022-07-23'),
(974, 'G10', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(975, 'G11', 'P1', 694, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso', 0.600000, '2022-07-23'),
(976, 'G05', 'P1', 695, 'Kasus 15', 'Laki-laki', '23', 'Bondowoso', 0.680000, '2022-07-23'),
(977, 'G08', 'P1', 695, 'Kasus 15', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(978, 'G10', 'P1', 695, 'Kasus 15', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(979, 'G13', 'P1', 695, 'Kasus 15', 'Laki-laki', '23', 'Bondowoso', 0.250000, '2022-07-23'),
(980, 'G01', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.590000, '2022-07-23'),
(981, 'G05', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.680000, '2022-07-23'),
(982, 'G07', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.550000, '2022-07-23'),
(983, 'G08', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(984, 'G10', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(985, 'G11', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.600000, '2022-07-23'),
(986, 'G12', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.430000, '2022-07-23'),
(987, 'G13', 'P1', 696, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso', 0.250000, '2022-07-23'),
(988, 'G13', 'P2', 697, 'Kasus 17', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(989, 'G01', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.590000, '2022-07-23'),
(990, 'G02', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-23'),
(991, 'G03', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.700000, '2022-07-23'),
(992, 'G04', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.580000, '2022-07-23'),
(993, 'G05', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.680000, '2022-07-23'),
(994, 'G07', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.550000, '2022-07-23'),
(995, 'G11', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.600000, '2022-07-23'),
(996, 'G12', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.430000, '2022-07-23'),
(997, 'G14', 'P1', 698, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso', 0.190000, '2022-07-23'),
(998, 'G05', 'P1', 699, 'Kasus 19', 'Laki-laki', '23', 'Bondowoso', 0.680000, '2022-07-23'),
(999, 'G07', 'P1', 699, 'Kasus 19', 'Laki-laki', '23', 'Bondowoso', 0.550000, '2022-07-23'),
(1000, 'G08', 'P1', 699, 'Kasus 19', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(1001, 'G10', 'P1', 699, 'Kasus 19', 'Laki-laki', '23', 'Bondowoso', 0.480000, '2022-07-23'),
(1002, 'G13', 'P1', 699, 'Kasus 19', 'Laki-laki', '23', 'Bondowoso', 0.250000, '2022-07-23'),
(1003, 'G01', 'P1', 700, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.590000, '2022-07-25'),
(1004, 'G02', 'P1', 700, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.750000, '2022-07-25'),
(1005, 'G04', 'P1', 700, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.580000, '2022-07-25'),
(1006, 'G06', 'P1', 700, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.260000, '2022-07-25'),
(1007, 'G01', 'P1', 701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.590000, '2022-07-25'),
(1008, 'G03', 'P1', 701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.700000, '2022-07-25'),
(1009, 'G05', 'P1', 701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.680000, '2022-07-25'),
(1010, 'G07', 'P1', 701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.550000, '2022-07-25'),
(1011, 'G09', 'P1', 701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.340000, '2022-07-25'),
(1012, 'G11', 'P1', 701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.600000, '2022-07-25'),
(1013, 'G13', 'P1', 701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi', 0.250000, '2022-07-25'),
(1014, 'G01', 'P1', 702, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.590000, '2022-07-28'),
(1015, 'G02', 'P1', 702, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.750000, '2022-07-28'),
(1016, 'G03', 'P1', 702, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.700000, '2022-07-28'),
(1017, 'G11', 'P1', 702, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.600000, '2022-07-28'),
(1018, 'G12', 'P1', 702, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.430000, '2022-07-28'),
(1019, 'G13', 'P1', 702, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.250000, '2022-07-28'),
(1020, 'G14', 'P1', 702, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.190000, '2022-07-28'),
(1021, 'G08', 'P2', 703, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.520000, '2022-07-28'),
(1022, 'G09', 'P2', 703, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.660000, '2022-07-28'),
(1023, 'G11', 'P2', 703, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.400000, '2022-07-28'),
(1024, 'G12', 'P2', 703, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.570000, '2022-07-28'),
(1025, 'G13', 'P2', 703, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.750000, '2022-07-28'),
(1026, 'G14', 'P2', 703, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.810000, '2022-07-28'),
(1027, 'G01', 'P1', 704, 'Jeni', 'Perempuan', '30', 'Kertosari', 0.590000, '2022-07-28'),
(1028, 'G09', 'P2', 705, 'Jeni', 'Perempuan', '30', 'Kertosari', 0.660000, '2022-07-28'),
(1029, 'G08', 'P2', 706, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.520000, '2022-07-28'),
(1030, 'G09', 'P2', 706, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.660000, '2022-07-28'),
(1031, 'G11', 'P2', 706, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.400000, '2022-07-28'),
(1032, 'G12', 'P2', 706, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.570000, '2022-07-28'),
(1033, 'G13', 'P2', 706, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.750000, '2022-07-28'),
(1034, 'G14', 'P2', 706, 'Irfan', 'Laki-laki', '23', 'Madiun', 0.810000, '2022-07-28'),
(1035, 'G13', 'P2', 707, 'rendi', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-28'),
(1036, 'G12', 'P2', 708, 'rendi', 'Laki-laki', '23', 'Bondowoso', 0.570000, '2022-07-28'),
(1037, 'G14', 'P2', 708, 'rendi', 'Laki-laki', '23', 'Bondowoso', 0.810000, '2022-07-28'),
(1038, 'G02', 'P1', 709, 'rendi', 'Laki-laki', '23', 'Bondowoso', 0.750000, '2022-07-28'),
(1039, 'G01', 'P1', 710, 'sss', 'Laki-laki', '11', 'wer', 0.590000, '2022-07-29'),
(1040, 'G02', 'P1', 710, 'sss', 'Laki-laki', '11', 'wer', 0.750000, '2022-07-29'),
(1041, 'G01', 'P1', 711, 'bima', 'Laki-laki', '56', 'bagahah', 0.590000, '2022-07-29'),
(1042, 'G03', 'P1', 711, 'bima', 'Laki-laki', '56', 'bagahah', 0.700000, '2022-07-29'),
(1043, 'G05', 'P1', 711, 'bima', 'Laki-laki', '56', 'bagahah', 0.680000, '2022-07-29'),
(1044, 'G07', 'P1', 711, 'bima', 'Laki-laki', '56', 'bagahah', 0.550000, '2022-07-29'),
(1045, 'G01', 'P1', 712, 'bima', 'Laki-laki', '56', 'bagahah', 0.590000, '2022-07-29'),
(1046, 'G03', 'P1', 712, 'bima', 'Laki-laki', '56', 'bagahah', 0.700000, '2022-07-29'),
(1047, 'G05', 'P1', 712, 'bima', 'Laki-laki', '56', 'bagahah', 0.680000, '2022-07-29'),
(1048, 'G07', 'P1', 712, 'bima', 'Laki-laki', '56', 'bagahah', 0.550000, '2022-07-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` varchar(64) NOT NULL,
  `nm_gejala` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `nm_gejala`) VALUES
('G01', 'Banyak makan (Polyphagia)'),
('G02', 'Banyak kencing (Polyuria)'),
('G03', 'Banyak minum (Polydipsia)'),
('G04', 'Berat badan turun tanpa alasan yang jelas (Sudden Weight Loss)'),
('G05', 'Badan lemas (Weakness)'),
('G06', 'Gatal didaerah kemaluan (Genital thrush)'),
('G07', 'Mata kabur (Visual Blurring)'),
('G08', 'Gatal-gatal seluruh tubuh (Itching)'),
('G09', 'Sensitif / mudah emosional (Irritability)'),
('G10', 'Luka sukar sembuh (Delayed Healing)'),
('G11', 'Kebas / Kesemutan setengah badan (Partial Paresis)'),
('G12', 'Nyeri otot (Muscle Stiffness)'),
('G13', 'Mengalami kebotakan (Alopecia)'),
('G14', 'Obesitas (Obesity)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `idpasien` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `usia` varchar(50) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`idpasien`, `nama`, `jenis_kelamin`, `usia`, `alamat`) VALUES
(625, 'marpoyah', 'Laki-laki', '26', 'bogor'),
(624, 'irul', 'Laki-laki', '15', 'bandung'),
(622, 'dewi', 'Laki-laki', '14', 'jambi'),
(621, 'gunawan', 'Laki-laki', '25', 'jambi'),
(620, 'dewi', 'Perempuan', '13', 'bandung barat'),
(618, 'indah', 'Perempuan', '35', 'mana aja'),
(617, 'rikko', 'Laki-laki', '15', 'jambi'),
(616, 'dewita', 'Laki-laki', '13', 'padang'),
(626, 'Bawik Ardiyan Ramadhan ', 'Laki-laki', '23', 'Jember'),
(627, 'Bawik Ardiyan Ramadhan ', 'Laki-laki', '13', 'Jember'),
(628, 'Bawik Ardiyan Ramadhan ', 'Laki-laki', '23', 'Jember'),
(629, 'Bawik Ardiyan Ramadhan ', 'Laki-laki', '23', 'Jember'),
(630, 'Bawik Ardiyan Ramadhan ', 'Laki-laki', '23', 'Jember'),
(631, 'Bawik Ardiyan Ramadhan ', 'Laki-laki', '23', 'Jember'),
(632, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(633, 'Febrero Araya', 'Laki-laki', '23', 'Jember'),
(634, 'Febrero Araya', 'Laki-laki', '23', 'Jember'),
(635, 'Febrero Araya', 'Laki-laki', '21', 'Banyuwangi'),
(636, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(637, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(638, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(639, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(640, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(641, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(642, 'Febrero Araya', 'Laki-laki', '23', 'Banyuwangi'),
(643, 'asdf', 'Laki-laki', '34', 'jhba cabc'),
(644, 'Aji Pratama', 'Laki-laki', '22', 'Jember'),
(645, 'asdads', NULL, '45', 'asdsdsdfsvv'),
(646, 'ascsa', 'Laki-laki', '19', 'asdassdfs'),
(647, 'asdadsdf', 'Laki-laki', '66', 'hjvakdhas'),
(648, 'dfsdfcsd', NULL, '33', 'asdassdfs'),
(649, 'dsdfa', 'Laki-laki', '45', 'asdafw'),
(650, 'adasdasd', 'Laki-laki', '33', 'asdsdsdfsvv'),
(651, 'asdasdad', 'Laki-laki', '45', 'dfgag'),
(652, 'acbascbB', 'Laki-laki', '56', 'hjvakdhas'),
(653, 'asdsaf', NULL, '32', 'AdwFEE'),
(654, 'abc', 'Laki-laki', '21', 'Jl. Ahmad yani VII'),
(655, 'rendi', 'Perempuan', '32', 'asdassdfs'),
(656, 'rendi', 'Perempuan', '19', 'AdwFEE'),
(657, 'Febrero Araya', 'Laki-laki', '21', 'Jember'),
(658, 'ryan', 'Laki-laki', '22', 'stb'),
(659, 'Fahrizal Azi Ferdiansyah', 'Laki-laki', '22', 'Jember'),
(660, 'asdads', 'Laki-laki', '56', 'bws'),
(661, 'Ayun', 'Perempuan', '32', 'Sobo'),
(662, 'ryan', 'Laki-laki', '22', 'situbondo'),
(663, 'Aji Pratama', 'Laki-laki', '23', 'Surabaya'),
(664, 'Fahrizal Azi Ferdiansyah', 'Laki-laki', '23', 'Banyuwangi'),
(665, 'fadil', 'Laki-laki', '22', 'Jenggawah, Jember'),
(666, 'riski', 'Laki-laki', '33', 'tuban'),
(667, 'ryan', 'Perempuan', '33', 'bws'),
(668, 'Ayun', 'Perempuan', '32', 'Sobo'),
(669, 'Ayun', 'Perempuan', '32', 'Sobo'),
(670, 'Ayun', 'Perempuan', '32', 'Sobo'),
(671, 'Ayun', 'Perempuan', '32', 'Sobo'),
(672, 'Ayun', 'Perempuan', '32', 'Sobo'),
(673, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso'),
(674, 'Kasus 2', 'Laki-laki', '23', 'Bondowoso'),
(675, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso'),
(676, 'Kasus 4', 'Laki-laki', '23', 'Bondowoso'),
(677, 'Kasus 5', 'Laki-laki', '23', 'Bondowoso'),
(678, 'Kasus 6', 'Laki-laki', '23', 'Bondowoso'),
(679, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso'),
(680, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso'),
(681, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso'),
(682, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso'),
(683, 'Kasus 11', 'Laki-laki', '23', 'Bondowoso'),
(684, 'Kasus 12', 'Laki-laki', '23', 'Bondowoso'),
(685, 'Kasus 13', 'Laki-laki', '23', 'Bondowoso'),
(686, 'Kasus 1', 'Laki-laki', '23', 'Bondowoso'),
(687, 'Kasus 2', 'Laki-laki', '23', 'Bondowoso'),
(688, 'Kasus 3', 'Laki-laki', '23', 'Bondowoso'),
(689, 'Kasus 4', 'Laki-laki', '23', 'Bondowoso'),
(690, 'Kasus 5', 'Laki-laki', '23', 'Bondowoso'),
(691, 'Kasus 6', 'Laki-laki', '23', 'Bondowoso'),
(692, 'Kasus 7', 'Laki-laki', '23', 'Bondowoso'),
(693, 'Kasus 8', 'Laki-laki', '23', 'Bondowoso'),
(694, 'Kasus 9', 'Laki-laki', '23', 'Bondowoso'),
(695, 'Kasus 10', 'Laki-laki', '23', 'Bondowoso'),
(696, 'Kasus 15', 'Laki-laki', '23', 'Bondowoso'),
(697, 'Kasus 16', 'Laki-laki', '23', 'Bondowoso'),
(698, 'Kasus 17', 'Laki-laki', '23', 'Bondowoso'),
(699, 'Kasus 18', 'Laki-laki', '23', 'Bondowoso'),
(700, 'Kasus 19', 'Laki-laki', '23', 'Bondowoso'),
(701, 'Febrero', 'Laki-laki', '23', 'Banyuwangi'),
(702, 'Febrero', 'Laki-laki', '23', 'Banyuwangi'),
(703, 'Irfan', 'Laki-laki', '23', 'Madiun'),
(704, 'Irfan', 'Laki-laki', '23', 'Madiun'),
(705, 'Jeni', 'Perempuan', '30', 'Kertosari'),
(706, 'Jeni', 'Perempuan', '30', 'Kertosari'),
(707, 'Irfan', 'Laki-laki', '23', 'Madiun'),
(708, 'rendi', 'Laki-laki', '23', 'Bondowoso'),
(709, 'rendi', 'Laki-laki', '23', 'Bondowoso'),
(710, 'rendi', 'Laki-laki', '23', 'Bondowoso'),
(711, 'sss', 'Laki-laki', '11', 'wer'),
(712, 'bima', 'Laki-laki', '56', 'bagahah'),
(713, 'bima', 'Laki-laki', '56', 'bagahah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kd_penyakit` char(2) NOT NULL,
  `nm_penyakit` varchar(255) NOT NULL,
  `pencegahan` text NOT NULL,
  `np_populasi` double(6,6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kd_penyakit`, `nm_penyakit`, `pencegahan`, `np_populasi`) VALUES
('P1', 'Diabetes Mellitus', 'Konsumsi suplemen mineral, Rajin cek kadar gula darah, Hindari stress, Pola makan sehat, Rajin olahraga, Mempertahankan BB ideal, Cek kolesterol, jantung, dan mata (1x per 6 bulan), Kontrol gula secara berkala (1x perbulan).', 0.630000),
('P2', 'Non-Diabetes Mellitus', '-', 0.370000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_diagnosa`
--

CREATE TABLE `tmp_diagnosa` (
  `ID` varchar(100) NOT NULL,
  `kd_penyakit` char(2) NOT NULL,
  `hasil_hitung` double(6,6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_diagnosa`
--

INSERT INTO `tmp_diagnosa` (`ID`, `kd_penyakit`, `hasil_hitung`) VALUES
('::1', 'H4', 0.324324),
('::1', 'H3', 0.084084),
('::1', 'H2', 0.567568),
('::1', 'H1', 0.024024),
('127001', 'P2', 0.000064),
('127001', 'P1', 0.999936),
('103226232162', 'P2', 0.000489),
('103226232162', 'P1', 0.999511),
('118998348', 'P1', 0.996433),
('118998348', 'P2', 0.003567),
('125166119172', 'P1', 0.999937),
('1145108191', 'P1', 0.999963),
('1145108191', 'P2', 0.000037),
('1145108191', 'P3', 0.000000),
('36905745', 'P1', 0.999996),
('125166119172', 'P2', 0.000063),
('36905745', 'P2', 0.000004),
('2001:448a:5122:8354:9ce4:e154:e17d:5f8f', 'P1', 0.999956),
('2001:448a:5122:8354:9ce4:e154:e17d:5f8f', 'P2', 0.000044),
('366822245', 'P1', 0.999954),
('366822245', 'P2', 0.000046),
('118998354', 'P1', 0.999511),
('118998354', 'P2', 0.000489),
('103144221180', 'P2', 0.000894),
('103144221180', 'P1', 0.999106),
('3690179220', 'P2', 0.072620),
('3690179220', 'P1', 0.927380),
('2001:448a:5122:cb5d:cc81:f324:5d54:3521', 'P2', 0.029292),
('2001:448a:5122:cb5d:cc81:f324:5d54:3521', 'P1', 0.970708),
('2001:448a:5122:f232:34b7:a5c9:7b62:79b2', 'P2', 0.443255),
('2001:448a:5122:f232:34b7:a5c9:7b62:79b2', 'P1', 0.556745),
('103109209244', 'P2', 0.207267),
('103109209244', 'P1', 0.792733),
('2001:448a:5122:6a16:7152:db6f:a66e:6565', 'P2', 0.163717),
('2001:448a:5122:6a16:7152:db6f:a66e:6565', 'P1', 0.836283),
('11412510262', 'P2', 0.532723),
('11412510262', 'P1', 0.467277),
('2001:448a:5122:98d5:2458:5cbe:bcf2:a1af', 'P2', 0.063096),
('2001:448a:5122:98d5:2458:5cbe:bcf2:a1af', 'P1', 0.936904);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`id_aturan`);

--
-- Indeks untuk tabel `bukutamu`
--
ALTER TABLE `bukutamu`
  ADD PRIMARY KEY (`id_bukutamu`);

--
-- Indeks untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`kd_diagnosa`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idpasien`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturan`
--
ALTER TABLE `aturan`
  MODIFY `id_aturan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT untuk tabel `bukutamu`
--
ALTER TABLE `bukutamu`
  MODIFY `id_bukutamu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `kd_diagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idpasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=714;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
