-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2021 pada 22.33
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `stok`, `gambar`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(3, 'Tv Samsung', 5500000, 100, '1616711278_e2853a887c6c7bc483e2.jpg', 1, '2021-03-25 17:27:58', 406, '2021-05-04 13:11:13'),
(4, 'Laptop Asus ROG', 21000000, 49, '1616711465_c8bfe3d0aeb49af21403.jpg', 1, '2021-03-25 17:31:05', NULL, NULL),
(5, 'Hp Iphone 12 Pro', 26000000, 29, '1616711508_e20251e63c4a9369fa5a.jpg', 1, '2021-03-25 17:31:48', NULL, NULL),
(7, 'Nike Air Jordan', 1500000, 500, '1616715811_9d33d04c863e394de010.jpg', 1, '2021-03-25 18:43:31', NULL, NULL),
(8, 'Helmet INK', 1200000, 200, '1616715905_614868ff5aa61fd37372.jpg', 1, '2021-03-25 18:45:05', NULL, NULL),
(9, 'Headset Gaming Rexus', 1200000, 298, '1619734406_d85269182b004e337fbf.png', 406, '2021-04-29 17:13:26', 406, '2021-04-29 17:14:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `komentar` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `id_barang`, `id_user`, `komentar`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(3, 3, 407, '<p><strong>Barangnya </strong>bagus</p>', 407, '2021-04-29 17:20:45', NULL, NULL),
(4, 9, 407, '<p>Murah <i><strong>banget </strong></i>harganya</p>', 407, '2021-04-29 17:22:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-03-25-031938', 'App\\Database\\Migrations\\User', 'default', 'App', 1616645247, 1),
(2, '2021-03-25-035352', 'App\\Database\\Migrations\\Barang', 'default', 'App', 1616645247, 1),
(3, '2021-03-25-035832', 'App\\Database\\Migrations\\Transaksi', 'default', 'App', 1616645248, 1),
(4, '2021-03-25-040335', 'App\\Database\\Migrations\\Komentar', 'default', 'App', 1616645248, 1),
(5, '2021-03-25-224703', 'App\\Database\\Migrations\\TransaksiAlterAlamat', 'default', 'App', 1616712765, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `id_pembeli` int(11) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `alamat` text,
  `ongkir` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `id_pembeli`, `jumlah`, `total_harga`, `created_by`, `created_date`, `updated_by`, `updated_date`, `alamat`, `ongkir`, `status`) VALUES
(5, 9, 407, 1, 1224000, 407, '2021-04-29 17:30:31', NULL, NULL, 'Jl.Belok Bali Timur', 24000, 0),
(6, 4, 407, 1, 21023000, 407, '2021-05-04 11:44:20', NULL, NULL, 'jl.jalan', 23000, 0),
(7, 5, 407, 1, 26018000, 407, '2021-05-04 14:31:29', NULL, NULL, 'jl.konoha', 18000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `avatar` text,
  `role` int(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `avatar`, `role`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(306, 'philpert', 'iO7w%<wpb6vUs', '/L4zm&P8Z^}L#', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(307, 'stehr.don', 'j_9Tbi\"i@sV:cD9', '15nehb8/#F&you', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(308, 'tremblay.cleo', 'zS#9-Nx~h', 'Z%i*\'7ccz:0ZSzJ\"', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(309, 'adelle.lockman', 'U~Do},J.?BNH2^qnv', 'UCJ+sj\\g#Nw@v<Q8K', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(310, 'torrey06', '*b}M<WM!9,*G|Z.[a', 'jv8b!i!w,', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(311, 'kadin71', 'Vj|s1g<(]+Cw0S', '2?5|)zq0yARA', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(312, 'marvin61', '/jNSco`H#[yRL\'V*E', 'Bw$_29E3R^u?pXoK)Xp', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(313, 'ahoeger', 'wZtd~zBq[YKKtK,C}', 'dnKZ#.1X1', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(314, 'leffler.deshaun', '7VF._@ihF}uuqI', 'b6h^AXP@bEZ}qAhc/', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(315, 'queen.luettgen', '[/V&|kk', 'xV~LlB(oM', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(316, 'adams.carmela', 'eId<,Ay-VDx-4P<(y?0Q', 'b={9HybuF', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(317, 'blick.ellen', 'HMCP/#2E\':', '6U1i`Gr.4~.', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(318, 'leannon.ahmad', 'Okj2%2>O((*zd7KD4', '\\BAhravz+!5', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(319, 'cartwright.amiya', 'G%@4yHghS', 'fkL!QD', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(320, 'lrussel', '#!y_yki+L(%|', '.Pl-TE,Q\"qE3', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(321, 'uullrich', '=EUU0gz>B:', 'x3x7O5t!:TP4rab/', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(322, 'julien39', 'x`b%\\tY\'H`Qt\\Rkn+M', '0Y<$#L', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(323, 'uledner', '|:G[)DTM)C*?WzO4Us', 'P]||$DQ.v1\'xn1', NULL, 1, 0, '2021-04-29 17:07:02', NULL, NULL),
(324, 'aortiz', '%s,\'V\'Zrx[}~Z3+e`Ma', 'Nx6OplQR3aV', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(325, 'sarai96', 'xgK\"}AE:nl;~', 'r!*dmF_z\"{9', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(326, 'jimmy29', ',!Q$8M{A.3Q0eAlS`,bd', 'D+h}~(OtVIOT', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(327, 'rasheed36', '|~e$;%wA', '/rd~ST|4/\"4g[iccF', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(328, 'arlene20', 'e[}F5`c6VG[}_qr);)', 'u3C}LNp-lAWyn<', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(329, 'cooper.jacobs', 'YqA@*<K>&DqEKmB', 'k~ed&|$\',,w', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(330, 'skerluke', '.x+$!3&^KKam#CmeHb', 'f-e-f\\\\>1lF', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(331, 'amya.kautzer', 'iopl(qMa7lb1be', '{Fk]VT/YpsKeF', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(332, 'ortiz.dedrick', 'J`5-j+L|;)ygV$MNN\'', ']\'sinNaO*,Y{S^u', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(333, 'jones.eugene', 'NI_a>zpXJTQw)f\\EB', 'W*NvZf', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(334, 'kuhn.ervin', 'kun8k6Y', '(\\v6`Ln{', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(335, 'gilda.sipes', 'l>y4awmhXM\'oLW1', 'oX-]HSnm/L3b', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(336, 'carroll37', 'X#tb=re7^4', 'O(t4~%tdOV59x{3&z', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(337, 'agrant', 'sR\'ux4){TFip', 'P]T8K.VMnOhhaqrb/', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(338, 'davin.nader', 'e-RU]/=T_hm1p`(=;b', 'xn=V>V?~.oa', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(339, 'cremin.rachelle', '\\UYOsVr%', '\'2*!H<z[Gu', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(340, 'jedediah87', 'T\\q=!GG&pVBFS-//z', 'w^G}S\\eL?SL\".', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(341, 'hand.candido', '78+U;=Wk@', 'Wa\"sfCY^>9u2_', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(342, 'trevor92', 'NXL&jz%o8', 't&BLry.O', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(343, 'ihomenick', 'Y|K)@6hWms', '#usy\"nhJ', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(344, 'katherine.nitzsche', 'IPs\\K1z`nZJv4g#j', '>Zx36IV', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(345, 'kirk.kutch', 'sH)#2RsMdpu', 'p*KSEV\'\"T\"Q}g/{J+>g', NULL, 1, 0, '2021-04-29 17:07:03', NULL, NULL),
(346, 'nrolfson', 'TFAcm,Y1', '/DpPa~wxTZC', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(347, 'mwyman', 'xF5@Px^%JVBp{\"M', 'W<$gye=H', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(348, 'ayden.fahey', 'Xa)HX\\DhvJ=<8CaX', '1oS]cB9g:', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(349, 'camryn.will', '{=}U04n', 'WC(3!wps2+v@:+p`4RaI', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(350, 'pwyman', 'OHW-XaMC637yE1w\'YQv#', '9/#M@[h,d)Sb4LE', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(351, 'elissa83', '7FIOUR~,QRdSP@,ES', '3%gPCO/\\\'kA[3>>1$', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(352, 'adolfo.swift', 'A@P\\TxP{{6', 'Z_STb(|^@ua%Nh8Mx\"n1', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(353, 'ullrich.odessa', '%-ZG2_A-wt\"', '`=Qvx{q\\3]i', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(354, 'becker.buster', 't5%t_\"6A}NaM&-~E0A)', 'Oy}oSpc', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(355, 'haley.kaela', 'QZvgSUMV\']7#', 'PmRQ<W)\'Sc?i', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(356, 'verdie.huels', '!q{.dS@i.^', 'DEbpE*EA', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(357, 'mreynolds', '|e\'4SE3^L|', '74kH/p', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(358, 'maymie.turner', '+HVM\'<t,X10]u>c,R', 'AOe@|-V/>nSZ`[', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(359, 'elmer21', 'DjMeRa00}dB_TS3', 'SQ/7|v|/5OtQ', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(360, 'emerson.walsh', 'Y}|0-+!aARfv+E{j', 'M\\4j!w1z!-b1pq<', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(361, 'kareem98', '?KXtkPD~?Ek$+Xv8Rr~f', 's;.nZ@G93cv:S', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(362, 'cdaniel', '20Y;82', '}ZUv,x_aZ9yu]y56', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(363, 'kuhic.giles', '/J\'3H}t%>', 'GS7X\'b.{', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(364, 'makenzie.torphy', 'c-k)j(*,s`a-', '|d-~)ms:i\\/', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(365, 'kellie.von', ';E~l^O\\B/v', 'NT%V=RMGDv\\?', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(366, 'edward32', '@A>r{V$r|[w4', 'FYk$i%rM', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(367, 'devan82', ']^H1A-XJL;x}1zc$&-E', 'z[ayHhk8\\[yh', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(368, 'xnienow', 'Fw~SKh{E|0+i[A9_BmC^', 'BSWMh#', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(369, 'jazmin.metz', '=TPGDcNNj\"Z\\`xH', '<rbQa-$>', NULL, 1, 0, '2021-04-29 17:07:04', NULL, NULL),
(370, 'haley.arch', 'GWjW.;vF{ig~X#oSct,m', 'CV(d?K', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(371, 'titus.kunze', ']N!s`EU&AdqVXm|f:y', '\\*,+,@gM-K%,(S', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(372, 'lhammes', 'bQJnf;qg;sX[-]a9V\'', '83`H^I%RHsC$@P(', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(373, 'mozelle.johnston', 'mLsO9>c7|^8cd--I.Yul', '+D?zqb?3iil', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(374, 'ohammes', 'T_Mp5iw!oV', '7M\\d_?,#', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(375, 'susanna88', '}\"9uq4oN1>#IOr@', '|eVA\"qQn', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(376, 'lea.flatley', 'K[.&x$', '2ri~^?cyaL{_V\"Z', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(377, 'xzieme', '=o,*TRi2pc?', '463V7>z(ltI1gq', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(378, 'carroll.stuart', 'Gd>w}tkgvpcfA/', 'cR;VdbHOBZo]y', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(379, 'jpowlowski', 'Pm@L8(K+\"s', '}k_eFs]czytMY=e', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(380, 'maymie.kirlin', '%><li+Ls)MW6/x&', '$M8^_a\\', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(381, 'ransom87', 'Me<\"c1cE)%3f@5:', '4}vXA<y#gL8Dx&', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(382, 'bankunding', 'Yk-rSBcEZB.', '<Q}E,\\r6g9i\\', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(383, 'mustafa.cronin', 'ka~X>V@tPh[', '$k^S$O|iuj,roB|0', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(384, 'chauncey84', 'hR1Ub,cu?', 'H5{yP[bhP3[m^NmZ.m-S', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(385, 'arthur.ryan', '=3j8.{J],^Shk+Q', 'S2?D^g!sgq', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(386, 'macy66', 'n!~l&Gg;]2[:RG=b', '}y7,H.E=', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(387, 'kenneth81', 'DP3S1kGpd', 'K}PwW|', NULL, 1, 0, '2021-04-29 17:07:05', NULL, NULL),
(388, 'bohara', '~ENZ/b.p.]:D', '0t6UOp\\$cS8I-n,D$', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(389, 'shanahan.vella', '_<&Ox0W+', '<L|g=Enr*rSX<^.>*', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(390, 'rodriguez.ewald', 'Ps+#7Y2>UgR;qglKn]7Q', '8w-SG8oI[R\\;y`uZ3Br.', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(391, 'ludwig75', 'reIs3.E7', 'KMY=4IguxDxhQ%(kkpw', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(392, 'eschmidt', '!Q;9%!9', 'gb)\'h</^BLi', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(393, 'kirlin.neva', '>!O=Ez#', 'ktC1>E', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(394, 'georgiana08', 'mf_s,r', '_v0^}o,m5', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(395, 'stehr.edmond', 'qLq)`ePoWNWTeF;g{3J0', 'q1>v4);kP', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(396, 'pwintheiser', '~i1B`1', 'v&\\\\O\\\'', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(397, 'carmelo78', 'tl8#\"U?;o', 'SUa@+H', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(398, 'umcglynn', '\',[kq\\-i', '>5zSp~OJ', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(399, 'deondre20', ';He\'6)2Y[7Cw7ku\"r3F', 'x@dP5J0\\\'H1a*d2\\VW', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(400, 'norbert84', '&).Gst-3qL,.M3qzQ.HD', 'gHwSPWuh-`Lh%I+~uU7', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(401, 'jacques.barton', 'hzQ<ScBrHZ+TSz', 'WWY`9[Vp0F=E8WG', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(402, 'sophie05', 'pdXfq$946', 'm{I<3yXxSXK<<pOC\\\"Ny', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(403, 'russ.sauer', '#&/swc', 'O6>4\\aBf\';', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(404, 'brennon.rice', ':,U~gxz-S,#8y', '>o>!gM~]l$P', NULL, 1, 0, '2021-04-29 17:07:06', NULL, NULL),
(405, 'lboyer', 'w[w`/R:\\', 'wnyhRzO', NULL, 1, 0, '2021-04-29 17:07:07', NULL, NULL),
(406, 'rezal_firmansyah', 'afa4e07678d4f42c27a18c7151730194', '608b2e313beb22.42860322', NULL, 0, 0, '2021-04-29 17:07:45', NULL, NULL),
(407, 'naruto', '60da29b4c04a8758e9f64705834591fe', '608b308250bc80.46168635', NULL, 1, 0, '2021-04-29 17:17:38', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_id_user_foreign` (`id_user`),
  ADD KEY `komentar_id_barang_foreign` (`id_barang`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id_pembeli_foreign` (`id_pembeli`),
  ADD KEY `transaksi_id_barang_foreign` (`id_barang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `komentar_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `transaksi_id_pembeli_foreign` FOREIGN KEY (`id_pembeli`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
