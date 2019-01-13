-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 25, 2016 at 05:46 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kandidat`
--

CREATE TABLE IF NOT EXISTS `tbl_kandidat` (
  `id_kandidat` int(11) NOT NULL AUTO_INCREMENT,
  `ketua` varchar(50) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` varchar(200) NOT NULL,
  PRIMARY KEY (`id_kandidat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_kandidat`
--

INSERT INTO `tbl_kandidat` (`id_kandidat`, `ketua`, `visi`, `misi`, `foto`) VALUES
(8, 'MUHAMMAD YANDI', 'Distinctively pursue cross functional process', 'Credibly grow empowered intellectual capital vis-a-vis premium web-readiness.', 'calon-7789-muhammad-yandiayik-dhian-winarni.jpg'),
(10, 'DWEY ROBBY HENDRAWAN', 'Credibly grow empowered intellectual readiness.', 'Credibly grow empowered intellectual capital vis-a-vis premium web-readiness. Conveniently architect long-term high-impact functionalities through error-free testing procedures. Authoritatively foster team building services with sustainable scenarios. Distinctively myocardinate bleeding-edge data without scalable relationships. Quickly transform superior intellectual capital vis-a-vis pandemic &quot;outside the box&quot; thinking.', 'calon-6336-dwey-robby-hendrawanmahriyana.jpg'),
(11, 'Ahmad Husein', 'Credibly grow empowered intellectual', 'Credibly grow empowered intellectual capital vis-a-vis premium web-readiness. Conveniently architect long-term high-impact functionalities through error-free testing procedures. Authoritatively foster team building services with sustainable scenarios. Distinctively myocardinate bleeding-edge data without scalable relationships. Quickly transform superior intellectual capital vis-a-vis pandemic &quot;outside the box&quot; thinking.', 'calon-4344-ahmad-huseinhusein-ahmad.png'),
(12, 'JIkanamsmaaaa', 'ashdainqaaaa', 'nfiasndfiasndaaaa', 'calon-7581-jikanamsma.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `username`, `nama`, `password`, `jurusan`, `prodi`, `level`) VALUES
(1, 'admin', 'Administrator', '2a24588d01f86c4822d68b5c383cb141', '', '', 1),
(2, 'D002', 'Dwey Robby Hendrawan', '23e590a651f35d7ec249f4c44db89645', 'Administrasi Bisnis', 'Manajemen Informatika', 2),
(8, 'D001', 'RAHMI FEBRIANTY', '23e590a651f35d7ec249f4c44db89645', 'ADMINISTRASI BINIS', 'ADMINISTRASI BISNIS', 2),
(9, 'C001', 'MAHRIYANA', '23e590a651f35d7ec249f4c44db89645', 'ADMINISTRASI BINIS', 'PERBANKAN', 2),
(10, 'B001', 'AYIK DHIAN WINARNI', '23e590a651f35d7ec249f4c44db89645', 'TEKNIK ELEKTRO', 'TEKNIK INFORMATIKA', 2),
(11, 'A003', 'FAHRIZAL RIZALDI', '23e590a651f35d7ec249f4c44db89645', 'TEKNIK SIPIL', 'BANGUNAN RAWA', 2),
(12, 'A002', 'MUHAMMAD YANDI', '23e590a651f35d7ec249f4c44db89645', 'TEKNIK MESIN', 'MESIN PRODUSI', 2),
(13, 'A001', 'RUDINI SAPUTRA', '23e590a651f35d7ec249f4c44db89645', 'AKUNTANSI', 'KOMPUTER AKUNTANSI', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voting`
--

CREATE TABLE IF NOT EXISTS `tbl_voting` (
  `id_voting` int(11) NOT NULL AUTO_INCREMENT,
  `id_kandidat` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `poin` int(11) NOT NULL,
  PRIMARY KEY (`id_voting`),
  KEY `id_kandidat` (`id_kandidat`,`id_login`),
  KEY `id_login` (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_voting`
--

INSERT INTO `tbl_voting` (`id_voting`, `id_kandidat`, `id_login`, `waktu`, `poin`) VALUES
(1, 8, 13, '2016-08-25 22:25:07', 1),
(2, 8, 10, '2016-08-25 22:25:48', 2),
(3, 10, 9, '2016-08-25 22:26:07', 3),
(4, 11, 8, '2016-08-25 22:26:31', 4),
(5, 10, 12, '2016-08-25 22:26:48', 1),
(6, 11, 2, '2016-08-25 22:44:31', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_voting`
--
ALTER TABLE `tbl_voting`
  ADD CONSTRAINT `tbl_voting_ibfk_1` FOREIGN KEY (`id_kandidat`) REFERENCES `tbl_kandidat` (`id_kandidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_voting_ibfk_2` FOREIGN KEY (`id_login`) REFERENCES `tbl_login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
