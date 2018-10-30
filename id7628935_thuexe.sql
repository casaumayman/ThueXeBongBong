-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 30, 2018 lúc 04:28 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id7628935_thuexe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `days` date NOT NULL,
  `id_products` int(11) NOT NULL,
  `sl` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `id_users`, `days`, `id_products`, `sl`, `status`) VALUES
(12, 17, '2018-10-26', 230, 1, 'Đã Nhận Xe'),
(17, 22, '2018-10-27', 162, 1, 'Ðã nhận đơn hàng'),
(19, 22, '2018-10-27', 219, 4, 'Ðã nhận đơn hàng'),
(20, 17, '2018-10-28', 231, 1, 'Ðã nhận đơn hàng'),
(21, 25, '2018-10-28', 170, 1, 'Ðã nhận đơn hàng'),
(22, 19, '2018-10-29', 218, 1, 'Ðã nhận đơn hàng'),
(23, 19, '2018-10-29', 234, 1, 'Ðã nhận đơn hàng'),
(24, 19, '2018-10-29', 242, 1, 'Ðã nhận đơn hàng'),
(25, 19, '2018-10-29', 163, 1, 'Ðã nhận đơn hàng'),
(26, 19, '2018-10-29', 173, 1, 'Ðã nhận đơn hàng'),
(27, 19, '2018-10-29', 164, 1, 'Ðã nhận đơn hàng'),
(28, 19, '2018-10-29', 176, 1, 'Ðã nhận đơn hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `caterogies`
--

CREATE TABLE `caterogies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `caterogies`
--

INSERT INTO `caterogies` (`id`, `name`, `order`, `hide`) VALUES
(2, 'Xe Tay Ga', 2, 0),
(3, 'Xe Số', 3, 0),
(4, 'khuyến mãi', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `subject`, `content`, `status`) VALUES
(5, '2. Pháº£n há»“i vá» cháº¥t lÆ°á»£ng xe', '<p>xe tá»‘t Ä‘áº¹p cháº¥t lÆ°á»£ng</p>\r\n', 'ÄÃ£ Nháº­n ThÃ´ng Tin'),
(6, '2. Phản hồi về chất lượng xe', '<p>asdadasd</p>\r\n', 'Đã Nhận Thông Tin'),
(7, '1. Phản hồi về thái độ phục vụ', '<p>kh&ocirc;ng th&acirc;n thi&ecirc;̣n</p>\r\n', 'Đã Nhận Thông Tin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `id_cate` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `img`, `detail`, `id_cate`, `hide`) VALUES
(163, 'HonDa Xe Ga 07', 150000, 'honda-xega (7).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(164, 'HonDa Xe Ga 08', 150000, 'honda-xega (8).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(165, 'HonDa Xe Ga 09', 150000, 'honda-xega (9).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(166, 'HonDa Xe Ga 10', 150000, 'honda-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(167, 'HonDa Xe Ga 11', 150000, 'honda-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(168, 'HonDa Xe Ga 12', 150000, 'honda-xega (8).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(169, 'HonDa Xe Ga 13', 150000, 'honda-xega (7).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(170, 'HonDa Xe Ga 14', 150000, 'honda-xega (6).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(171, 'HonDa Xe Ga 15', 150000, 'honda-xega (9).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(173, 'SuZuKi Xe Ga 02', 150000, 'suzuki-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(174, 'SuZuKi Xe Ga 03', 150000, 'suzuki-xega (3).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(175, 'SuZuKi Xe Ga 04', 150000, 'suzuki-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(176, 'SuZuKi Xe Ga 05', 150000, 'suzuki-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(177, 'SuZuKi Xe Ga 06', 150000, 'suzuki-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(178, 'SuZuKi Xe Ga 07', 150000, 'suzuki-xega (3).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(179, 'SuZuKi Xe Ga 08', 150000, 'suzuki-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(180, 'SuZuKi Xe Ga 09', 150000, 'suzuki-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(181, 'SuZuKi Xe Ga 10', 150000, 'suzuki-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(182, 'SuZuKi Xe Ga 11', 150000, 'suzuki-xega (3).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(183, 'SuZuKi Xe Ga 12', 150000, 'suzuki-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(184, 'SuZuKi Xe Ga 13', 150000, 'suzuki-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(185, 'SuZuKi Xe Ga 14', 150000, 'suzuki-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(186, 'SuZuKi Xe Ga 15', 150000, 'suzuki-xega (3).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(187, 'Sym Xe Ga 01', 150000, 'sym-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(188, 'Sym Xe Ga 02', 150000, 'sym-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(191, 'Sym Xe Ga 05', 150000, 'sym-xega (5).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(192, 'Sym Xe Ga 06', 150000, 'sym-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(193, 'Sym Xe Ga 07', 150000, 'sym-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(195, 'Sym Xe Ga 09', 150000, 'sym-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(196, 'Sym Xe Ga 10', 150000, 'sym-xega (5).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(197, 'Sym Xe Ga 11', 150000, 'sym-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(198, 'Sym Xe Ga 12', 150000, 'sym-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(199, 'Sym Xe Ga 13', 150000, 'sym-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(200, 'Sym Xe Ga 14', 150000, 'sym-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(201, 'Sym Xe Ga 15', 150000, 'sym-xega (5).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(202, 'YaMaHa Xe Ga 01', 150000, 'yamaha-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(203, 'YaMaHa Xe Ga 02', 150000, 'yamaha-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(204, 'YaMaHa Xe Ga 03', 150000, 'yamaha-xega (3).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(205, 'YaMaHa Xe Ga 04', 150000, 'yamaha-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(206, 'YaMaHa Xe Ga 05', 150000, 'yamaha-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(207, 'YaMaHa Xe Ga 06', 150000, 'yamaha-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(208, 'YaMaHa Xe Ga 07', 150000, 'yamaha-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(209, 'YaMaHa Xe Ga 08', 150000, 'yamaha-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(210, 'YaMaHa Xe Ga 09', 150000, 'yamaha-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(211, 'YaMaHa Xe Ga 10', 150000, 'yamaha-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(212, 'YaMaHa Xe Ga 11', 150000, 'yamaha-xega (3).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(213, 'YaMaHa Xe Ga 12', 150000, 'yamaha-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(214, 'YaMaHa Xe Ga 13', 150000, 'yamaha-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(215, 'YaMaHa Xe Ga 14', 150000, 'yamaha-xega (2).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(216, 'YaMaHa Xe Ga 15', 150000, 'yamaha-xega (3).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(218, 'Khuyến Mãi 01', 70000, 'khuyenmai (1).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(219, 'Khuyến Mãi 02', 70000, 'khuyenmai (2).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(220, 'Khuyến Mãi 03', 70000, 'khuyenmai (3).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(221, 'Khuyến Mãi 04', 70000, 'khuyenmai (4).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(222, 'Khuyến Mãi 05', 70000, 'khuyenmai (5).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(223, 'Khuyến Mãi 06', 70000, 'khuyenmai (6).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(224, 'Khuyến Mãi 07', 70000, 'khuyenmai (1).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(225, 'Khuyến Mãi 08', 70000, 'khuyenmai (2).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(226, 'Khuyến Mãi 09', 70000, 'khuyenmai (3).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(227, 'Khuyến Mãi 10', 70000, 'khuyenmai (4).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(228, 'Khuyến Mãi 11', 70000, 'khuyenmai (5).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(229, 'Khuyến Mãi 12', 70000, 'khuyenmai (6).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(230, 'Khuyến Mãi 13', 70000, 'khuyenmai (1).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(231, 'Khuyến Mãi 14', 70000, 'khuyenmai (2).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(232, 'Khuyến Mãi 15', 70000, 'khuyenmai (3).jpg', 'Với nhu cầu thuê xe của quý khách hàng tăng cao, cửa hàng chúng tôi đã đưa ra một số chương trình khuyến mãi đặc biệt dành cho một số sản phẩm.', 1, 0),
(234, 'HonDa Xe Số 01', 100000, 'honda-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(235, 'HonDa Xe Số 02', 100000, 'honda-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(236, 'HonDa Xe Số 03', 100000, 'honda-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(237, 'HonDa Xe Số 04', 100000, 'honda-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(238, 'HonDa Xe Số 05', 100000, 'honda-xeso (5).jpg', '<p>CHO THU&Ecirc; XE WAVE RSX, S110<br />\r\nKiểu xe:&nbsp;Gear 4 stroke&nbsp;<br />\r\nHiệu xe:&nbsp;Honda&nbsp;<br />\r\nGi&aacute; thu&ecirc; từ:&nbsp;70.000 VNĐ&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Thủ tục gồm :&nbsp;</strong></p>\r\n\r\n<p>- Xem qua giấy tờ t&ugrave;y th&acirc;n bản gốc như&nbsp;<strong>CMND hoặc&nbsp;Passport, hộ khẩu ... v&agrave;&nbsp;bằng l&aacute;i xe</strong>&nbsp;( Sau&nbsp;đ&oacute; giữ lại 1 loại giấy tờ&nbsp;)</p>\r\n\r\n<p>- Tiền đặt cọc : 2 triệu</p>\r\n\r\n<p>- Gi&aacute; thu&ecirc; ng&agrave;y : 100k/ng&agrave;y (Giảm 10% từ 10 ng&agrave;y trở l&ecirc;n)</p>\r\n\r\n<p><strong>- Gi&aacute; thu&ecirc; th&aacute;ng 2,0 triệu</strong></p>\r\n\r\n<p><strong>&nbsp;L<strong>i&ecirc;n hệ :&nbsp;</strong></strong>120 L&yacute; Thường Kiệt, Phường Hải Th&agrave;nh,Tp Đồng Hới, Quảng B&igrave;nh</p>\r\n\r\n<p><strong><strong>Mr T&ugrave;ng :&nbsp;</strong>094 666 6566</strong></p>\r\n\r\n<p><strong>Ms Hoa&nbsp;: 01654036388</strong></p>\r\n', 3, 0),
(239, 'HonDa Xe Số 06', 100000, 'honda-xeso (6).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(240, 'HonDa Xe Số 07', 100000, 'honda-xeso (7).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(241, 'HonDa Xe Số 08', 100000, 'honda-xeso (8).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(242, 'HonDa Xe Số 09', 100000, 'honda-xeso (9).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(244, 'HonDa Xe Số 11', 100000, 'honda-xeso (11).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(245, 'HonDa Xe Số 12', 100000, 'honda-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(246, 'HonDa Xe Số 13', 100000, 'honda-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(247, 'HonDa Xe Số 14', 100000, 'honda-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(248, 'HonDa Xe Số 15', 100000, 'honda-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(264, 'YaMaHa Xe Số 01', 100000, 'yamaha-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(265, 'YaMaHa Xe Số 02', 100000, 'yamaha-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(266, 'YaMaHa Xe Số 03', 100000, 'yamaha-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(267, 'YaMaHa Xe Số 04', 100000, 'yamaha-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(268, 'YaMaHa Xe Số 05', 100000, 'yamaha-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(269, 'YaMaHa Xe Số 06', 100000, 'yamaha-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(270, 'YaMaHa Xe Số 07', 100000, 'yamaha-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(271, 'YaMaHa Xe Số 08', 100000, 'yamaha-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(272, 'YaMaHa Xe Số 09', 100000, 'yamaha-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(273, 'YaMaHa Xe Số 10', 100000, 'yamaha-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(274, 'YaMaHa Xe Số 11', 100000, 'yamaha-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(275, 'YaMaHa Xe Số 12', 100000, 'yamaha-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(276, 'YaMaHa Xe Số 13', 100000, 'yamaha-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(277, 'YaMaHa Xe Số 14', 100000, 'yamaha-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(278, 'YaMaHa Xe Số 15', 100000, 'yamaha-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(279, 'SuZuKi Xe Số 01', 100000, 'suzuki-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(280, 'SuZuKi Xe Số 02', 100000, 'suzuki-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(281, 'SuZuKi Xe Số 03', 100000, 'suzuki-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(282, 'SuZuKi Xe Số 04', 100000, 'suzuki-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(283, 'SuZuKi Xe Số 05', 100000, 'suzuki-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(284, 'SuZuKi Xe Số 06', 100000, 'suzuki-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(285, 'SuZuKi Xe Số 07', 100000, 'suzuki-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(286, 'SuZuKi Xe Số 08', 100000, 'suzuki-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(287, 'SuZuKi Xe Số 09', 100000, 'suzuki-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(288, 'SuZuKi Xe Số 10', 100000, 'suzuki-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(290, 'SuZuKi Xe Số 12', 100000, 'suzuki-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(291, 'SuZuKi Xe Số 13', 100000, 'suzuki-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(292, 'SuZuKi Xe Số 14', 100000, 'suzuki-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(293, 'SuZuKi Xe Số 15', 100000, 'suzuki-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0);
INSERT INTO `products` (`id`, `name`, `price`, `img`, `detail`, `id_cate`, `hide`) VALUES
(294, 'Sym Xe Số 01', 100000, 'sym-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(295, 'Sym Xe Số 02', 100000, 'sym-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(296, 'Sym Xe Số 03', 100000, 'sym-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(297, 'Sym Xe Số 04', 100000, 'sym-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(298, 'Sym Xe Số 05', 100000, 'sym-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(299, 'Sym Xe Số 06', 100000, 'sym-xeso (6).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(300, 'Sym Xe Số 07', 100000, 'sym-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(301, 'Sym Xe Số 08', 100000, 'sym-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(302, 'Sym Xe Số 09', 100000, 'sym-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(303, 'Sym Xe Số 10', 100000, 'sym-xeso (4).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(304, 'Sym Xe Số 11', 100000, 'sym-xeso (5).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(305, 'Sym Xe Số 12', 100000, 'sym-xeso (6).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(306, 'Sym Xe Số 13', 100000, 'sym-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(307, 'Sym Xe Số 14', 100000, 'sym-xeso (2).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(308, 'Sym Xe Số 15', 100000, 'sym-xeso (3).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(309, 'HonDa Xe Ga 04', 150000, 'honda-xega (4).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(312, 'SuZuKi Xe Ga 01', 150000, 'suzuki-xega (1).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(313, 'Sym Xe Ga 05', 150000, 'sym-xega (5).jpg', 'Xe tay ga đã trở nên khá phổ biến trên đường phố hiện nay tại Việt Nam. Không khó để có thể bắt gặp một chiếc xe tay ga đang lưu thông trên đường phố, thậm chí tỉ lệ sử dụng xe tay ga tại các thành phố lớn đã vượt qua xe số. Với kiểu dáng sang trong, dễ lái, xe tay ga đã thu hút được rất nhiều sự quan tâm từ khách hàng, nhưng đi kèm với đó là một số nhược điểm khiến khách hàng khó chịu.', 2, 0),
(314, 'SuZuKi Xe Số 11', 100000, 'suzuki-xeso (1).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0),
(315, 'HonDa Xe Số 10', 100000, 'honda-xeso (10).jpg', ' Xe máy số cũng là một trong những phương tiện di chuyển rất phổ biến hiện nay. Thậm chí ở một số quốc gia, số lượng xe gắn máy còn vượt trội hơn rất nhiều so với các loại xe ô tô và phương tiện công công, Việt Nam cũng là một trong số những quốc gia như vậy. Bên cạnh những ưu điểm như sử dụng tiện lợi, điều khiển dễ dàng, phù hợp với nhiều loại địa hình và đường xá, những chiếc xe máy còn có giá thành rẻ hơn cũng như mức tiêu thụ nhiên liệu thấp hơn khá nhiều so với xe tay ga.', 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `cmnd` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `gplx` varchar(13) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `role`, `cmnd`, `gplx`) VALUES
(17, 'casaumayman', 'e10adc3949ba59abbe56e057f20f883e', 'casaumayman1@gmail.com', '02569857841', 1, '381893000', '36589'),
(19, 'hoa', 'e10adc3949ba59abbe56e057f20f883e', 'phamhoaqqb98@gmail.com', '0354036388', 1, '194638342', '164425618'),
(20, 'nguyenthuyvy', '32825abacdf85b5187839b1a9bdc7fe3', 'nguyenthuyvy159@gmail.com', '0336899670', 0, '026055361', '243423454'),
(21, 'Thuyvy', 'e10adc3949ba59abbe56e057f20f883e', 'xitrum@gmail.com', '0989285600', 0, '235452426', '561285463'),
(22, 'sang', 'e10adc3949ba59abbe56e057f20f883e', 'o@gmail.com', '0135462822', 1, '135642824', '526725628'),
(23, 'Hạnh', 'e10adc3949ba59abbe56e057f20f883e', 'h@gmail.com', '01235462833', 1, '165243987', '162452398'),
(24, 'thuy', 'e10adc3949ba59abbe56e057f20f883e', 'i@gmail.com', '01235614355', 0, '264835123', '234362515'),
(25, 'giang đẹp gái', 'e10adc3949ba59abbe56e057f20f883e', 'a@gmail.com', '0123456789', 0, '124567856', '1234567');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `caterogies`
--
ALTER TABLE `caterogies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `caterogies`
--
ALTER TABLE `caterogies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
