-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2022 pada 14.31
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbukk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_orders`
--

CREATE TABLE `detail_orders` (
  `id_detail_orders` int(11) NOT NULL,
  `id_orders` varchar(100) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `status_detail_orders` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_orders`
--

INSERT INTO `detail_orders` (`id_detail_orders`, `id_orders`, `id_masakan`, `keterangan`, `status_detail_orders`) VALUES
(1, '0001', 7, '1', 'langsung'),
(2, '0001', 4, '2', 'langsung'),
(3, '0001', 5, '1', 'langsung'),
(4, '0001', 6, '1', 'langsung'),
(5, '0002', 9, '1', 'langsung'),
(6, '0002', 5, '1', 'langsung'),
(7, '0002', 7, '2', 'langsung'),
(8, '0003', 9, '1', 'langsung'),
(9, '0003', 6, '1', 'langsung'),
(10, '0003', 8, '1', 'langsung'),
(11, '0004', 9, '1', 'langsung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Kasir'),
(3, 'Owner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masakan`
--

CREATE TABLE `masakan` (
  `id_masakan` int(11) NOT NULL,
  `nama_masakan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `status_masakan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masakan`
--

INSERT INTO `masakan` (`id_masakan`, `nama_masakan`, `harga`, `status_masakan`) VALUES
(2, 'Mei Mei', 9000, 'pesan'),
(3, 'Nasi Goreng', 10000, 'pesan'),
(4, 'Mei Ayam', 7000, 'langsung'),
(5, 'Susu', 2000, 'langsung'),
(6, 'Teh Manis', 1500, 'langsung'),
(7, 'Jus', 5000, 'langsung'),
(8, 'Cap Cay', 10000, 'langsung'),
(9, 'Teh Dingan', 900, 'langsung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id_orders` char(200) NOT NULL,
  `no_meja` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `status_orders` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_orders`, `no_meja`, `tanggal`, `id_user`, `keterangan`, `status_orders`) VALUES
('0001', '8', '2020-01-13', 1, '-', 'cash'),
('0002', '0', '2022-09-14', 3, '-', 'cash'),
('0003', '0', '2022-09-20', 3, '-', 'cash'),
('0004', '0', '2022-11-24', 3, '-', 'cash');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_orders` char(100) NOT NULL,
  `tanggal` date NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_orders`, `tanggal`, `total_bayar`) VALUES
(1, 1, '0001', '2021-06-04', 22500),
(2, 3, '0002', '2022-09-14', 12900),
(3, 3, '0003', '2022-09-20', 12400),
(4, 3, '0004', '2022-11-24', 900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(1, 'gerand', 'a74b9dc9b207112a2e1c983019cc9593', 'Gerand', 1),
(2, 'afsal', '36f8cc9e2f71abf236d38854503b72bd', 'Afsal maulana', 3),
(3, 'nauval', '6e2feacae7a8c35e202526abcca77c86', 'nauval', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD PRIMARY KEY (`id_detail_orders`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `masakan`
--
ALTER TABLE `masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_orders`
--
ALTER TABLE `detail_orders`
  MODIFY `id_detail_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `masakan`
--
ALTER TABLE `masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
