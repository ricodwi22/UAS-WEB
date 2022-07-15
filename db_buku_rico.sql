-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 16.03
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buku_rico`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(2, 'Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_ketegori` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `halaman` varchar(5) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `stok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_ketegori`, `judul`, `gambar`, `penerbit`, `pengarang`, `halaman`, `harga`, `stok`) VALUES
(21, 14, ' PKN', '20170217164334.jpg', '  PT. Sapi Bentong', 'Bang Bokep', ' 100', ' 1000000', '69'),
(22, 14, 'B. Inggris', '20170217164457.jpg', 'CV. Kurang Ngondol', 'Atok', '200', '2000000', '55'),
(23, 14, 'Kimia', '20170217164635.png', 'Firma Kurang Belaian', 'Nopal', '10', '500000', '0'),
(24, 15, 'PHP', '20170217164739.jpg', 'CV. nguntul', 'abdul', '100', '5000000', '23'),
(25, 16, 'Bisnis Online', '20170217164900.jpg', 'PT. Sok Ganteng', 'yahya', '10', '100000', '50'),
(26, 14, ' Base COC', '20170217202459.jpg', ' PT. Kurang Turu', ' prof. Ir. Dr. Diko s.kom', ' 20', ' 99000000', '51'),
(27, 15, 'Sistem Operasi', '20170221040107.jpg', 'smk al kh', 'guru', '100', '200000', '39'),
(28, 15, 'Desain Grafis', '20170221040253.jpg', 'Pt. morak marek', 'sayonggg', '50', '100000', '15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chekout`
--

CREATE TABLE `chekout` (
  `id_chekout` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_tlp` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `status_terima` enum('belum di terima','sudah diterima') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chekout`
--

INSERT INTO `chekout` (`id_chekout`, `id_pembeli`, `nama`, `alamat`, `nomor_tlp`, `tanggal`, `status_terima`) VALUES
(22, 26, 'Windu Wibisono', 'sambas', '0888', '01-09-2019', 'belum di terima'),
(23, 27, 'aku', 'aku', '088', '01-09-2019', 'belum di terima'),
(25, 29, 'rico ', 'solo', '098783738', '11-07-2022', 'sudah diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_pembeli`, `nama`, `username`, `password`) VALUES
(26, 'Windu Wibisono', 'windu_wibisono', 'kalajengking'),
(27, 'aku', 'aku', 'aku'),
(28, 'betran', 'defa', '12345'),
(29, 'rico ', 'tuyulrico', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_ketegori` int(11) NOT NULL,
  `kategori` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_ketegori`, `kategori`) VALUES
(14, 'Pendidikan'),
(15, 'Tehnologi Informatika'),
(16, 'Kewirausahaan'),
(17, 'COC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `total_harga` varchar(50) NOT NULL,
  `total_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_pembeli`, `id_buku`, `qty`, `harga`, `total_harga`, `total_bayar`) VALUES
(16, 27, 26, '2', ' 99000000', '198000000', ''),
(17, 11, 25, '1', '100000', '100000', ''),
(30, 15, 22, '1', '2000000', '2000000', ''),
(38, 20, 23, '44', '500000', '22000000', ''),
(42, 23, 24, '5', '5000000', '25000000', ''),
(48, 29, 27, '1', '200000', '200000', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `chekout`
--
ALTER TABLE `chekout`
  ADD PRIMARY KEY (`id_chekout`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_ketegori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `chekout`
--
ALTER TABLE `chekout`
  MODIFY `id_chekout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_ketegori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
