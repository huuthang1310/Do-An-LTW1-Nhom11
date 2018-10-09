-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 09, 2018 lúc 06:57 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl_mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'APPLE', 'apple.jpg'),
(2, 'SAMSUNG', 'samsung.jpg'),
(3, 'HUAWEI', 'huawei.jpg'),
(4, 'NOKIA', 'nokia.jpg'),
(5, 'SONY', 'sony.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `Name`, `image`, `description`, `Price`, `manu_id`, `type_id`) VALUES
(1, 'IPHONE X', 'iphonex.jpg', 'Màn hình:\r\nOLED, 5.8\", Super Retina\r\nHệ điều hành:\r\niOS 11\r\nCamera sau:\r\n2 camera 12 MP\r\nCamera trước:\r\n7 MP\r\nCPU:\r\nApple A11 Bionic 6 nhân\r\nRAM:\r\n3 GB\r\nBộ nhớ trong:\r\n256 GB\r\nThẻ nhớ:\r\nKhông\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:\r\n2716 mAh, có sạc nhanh', 26990000, 1, 1),
(2, 'IPHONE XS', 'iphonexs.jpg', 'Hãng sản xuất: Apple\r\n3G: HSPA 42.2/5.76 Mbps\r\n4G: LTE-A (6CA) Cat18 1200/200 Mbps\r\nKích thước: 143.6 x 70.9 x 7.7 mm\r\nTrọng lượng: 177g\r\nLoại SIM: Nano-SIM\r\nLoại màn hình: Super Retina OLED\r\nKích thước màn hình: 5.8 inches\r\nĐộ phân giải màn hình: 1125 x 2436 pixels\r\nHệ điều hành: iOS\r\nPhiên bản hệ điều hành:	12\r\nChipset: Apple A12 Bionic 6 nhân\r\nGPU: Apple GPU 4 nhân\r\nKhe cắm thẻ nhớ: Không\r\nBộ nhớ đệm / Ram: 64 GB, 4 GB RAM\r\nCamera sau: 12 MP\r\nCamera trước: 7 MP', 28000000, 1, 1),
(3, 'IPHONE 8', 'iphone8.jpg', 'Màn hình : 1920 x 1080 pixels\r\nCamera trước : 7.0 MP\r\nCamera sau : Dual 12.0 MP\r\nRAM : 3 GB\r\nBộ nhớ trong : 64 GB\r\nCPU : Apple A11 Bionic, 6\r\nGPU : Apple GPU (three-core graphics)\r\nDung lượng pin : 2675 mAh\r\n', 20999000, 1, 1),
(4, 'IPHONE 7', 'iphone7.jpg', 'Màn hình:	LED-backlit IPS LCD, 4.7\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A10 Fusion 4 nhân 64-bit\r\nRAM:	2 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	1960 mAh', 14687000, 1, 1),
(5, 'IPHONE 6', 'iphone6.jpg', 'Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD\r\nHệ điều hành: iOS 11\r\nCamera sau: 8 MP\r\nCamera trước: 1.2 MP\r\nCPU: Apple A8 2 nhân 64-bit\r\nRAM: 1 GB\r\nBộ nhớ trong: 32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	1810 mAh', 8700000, 1, 1),
(6, 'SAMSUNG GALAXY NOTE 9', 'samsunggalaxynote9.jpg', 'Màn hình: Super AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành: Android 8.1 (Oreo)\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 8 MP\r\nCPU: Exynos 9810 8 nhân 64 bit\r\nRAM: 6 GB\r\nBộ nhớ trong: 128 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 22990000, 2, 2),
(7, 'SAMSUNG GALAXY J6', 'samsunggalaxyj6.jpg', 'Màn hình: Super AMOLED, 5.6\", HD+\r\nHệ điều hành: Android 8.0 (Oreo)\r\nCamera sau: 16 MP\r\nCamera trước: 16 MP\r\nCPU: Exynos 7870 8 nhân 64-bit\r\nRAM: 3 GB\r\nBộ nhớ trong: 32 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	3000 mAh', 5400000, 2, 2),
(8, 'SAMSUNG GALAXY S9', 'samsunggalaxys9.jpg', 'Màn hình:	Super AMOLED, 5.8\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	3000 mAh, có sạc nhanh', 19900000, 2, 2),
(9, 'SAMSUNG GALAXY A8', 'samsunggalaxya8.jpg', 'Màn hình: Super AMOLED, 5.6\", Full HD+\r\nHệ điều hành: Android 7.1 (Nougat)\r\nCamera sau: 16 MP\r\nCamera trước: 16 MP và 8 MP\r\nCPU: Exynos 7885 8 nhân 64-bit\r\nRAM: 4 GB\r\nBộ nhớ trong: 32 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	3000 mAh, có sạc nhanh', 10990000, 2, 2),
(10, 'SAMSUNG GALAXY J7', 'samsunggalaxyj7.jpg', 'Màn hình: Super AMOLED, 5.5\", Full HD\r\nHệ điều hành: Android 7.0 (Nougat)\r\nCamera sau: 13 MP và 5 MP (2 camera)\r\nCamera trước:	16 MP\r\nCPU: Mediatek Helio P25 Lite 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	3000 mAh', 6990000, 2, 2),
(11, 'HUAWEI 3I', 'huawei3i.jpg', 'Màn hình: LTPS LCD, 6.3\", Full HD+\r\nHệ điều hành: Android 8.1 (Oreo)\r\nCamera sau: 16 MP và 2 MP (2 camera)\r\nCamera trước: 24 MP và 2 MP (2 camera)\r\nCPU: HiSilicon Kirin 710\r\nRAM: 4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	3340 mAh', 6990000, 3, 5),
(12, 'HUAWEI 3E', 'huawei3e.jpg', 'Màn hình: IPS LCD, 5.84\", Full HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau: 16 MP và 2 MP (2 camera)\r\nCamera trước: 16 MP\r\nCPU: HiSilicon Kirin 659 8 nhân\r\nRAM: 4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	3000 mAh, có sạc nhanh', 5990000, 3, 5),
(13, 'NOKIA LUMIA 1020', 'nokialumia1020.jpg', 'Màn hình: AMOLED, 4.5\", WXGA\r\nHệ điều hành: Windows Phone 8\r\nCamera sau: 41 MP\r\nCamera trước: 1.2 MP\r\nCPU: Qualcomm MSM8960\r\nBộ nhớ trong: 32 GB\r\nThẻ SIM: 1 Micro SIM, Hỗ trợ 4G\r\nDung lượng pin:	2000 mAh\r\n', 2100000, 3, 4),
(14, 'NOKIA LUMIA 930', 'nokialumia930.jpg', 'Màn hình:	AMOLED, 5\", Full HD\r\nHệ điều hành:	Windows Phone 8.1 (Nâng cấp lên Windows 10)\r\nCamera sau:	20 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Qualcomm Snapdragon 800\r\nRAM:	2 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2420 mAh', 2100000, 3, 4),
(15, 'NOKIA LUMIA 1020', 'nokialumia1020.jpg', 'Màn hình:	AMOLED, 4.5\", WXGA\r\nHệ điều hành:	Windows Phone 8\r\nCamera sau:	41 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Qualcomm MSM8960\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:	1 Micro SIM, Hỗ trợ 4G\r\nDung lượng pin:	2000 mAh\r\n', 900000, 3, 4),
(16, 'HUAWEI 2I', 'huawei2i.jpg', 'Màn hình: IPS LCD, 5.9\", Full HD+\r\nHệ điều hành: Android 7.0 (Nougat)\r\nCamera sau: 16 MP và 2 MP (2 camera)\r\nCamera trước: 13 MP và 2 MP\r\nCPU: HiSilicon Kirin 659 8 nhân\r\nRAM: 4 GB\r\nBộ nhớ trong: 64 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	3340 mAh', 4990000, 3, 5),
(17, 'HUAWEI P20 PRO', 'huaweip20pro.jpg', 'Màn hình: OLED, 6.1\", Full HD+\r\nHệ điều hành: Android 8.1 (Oreo)\r\nCamera sau: 40 MP, 20 MP và 8 MP (3 camera)\r\nCamera trước: 24 MP\r\nCPU: Hisilicon Kirin 970 8 nhân\r\nRAM:  6 GB\r\nBộ nhớ trong: 128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 16990000, 3, 5),
(18, 'HUAWEI NOVA 3', 'huaweinova3.jpg', 'Màn hình: LTPS LCD, 6.3\", Full HD+\r\nHệ điều hành: Android 8.1 (Oreo)\r\nCamera sau: 24 MP và 16 MP (2 camera)\r\nCamera trước: 24 MP và 2 MP (2 camera)\r\nCPU: Hisilicon Kirin 970 8 nhân\r\nRAM: 6 GB\r\nBộ nhớ trong: 128 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	3750 mAh, có sạc nhanh', 11990000, 3, 5),
(19, 'NOKIA 6', 'nokia6.jpg', 'Màn hình: IPS LCD, 5.5\", Full HD\r\nHệ điều hành: Android 7.0 (Nougat)\r\nCamera sau: 16 MP\r\nCamera trước: 8 MP\r\nCPU: Qualcomm Snapdragon 430 8 nhân 64 bit\r\nRAM: 3 GB\r\nBộ nhớ trong: 32 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3000 mAh', 3100000, 3, 2),
(20, 'NOKIA 5', 'nokia5.jpg', 'Màn hình:	IPS LCD, 5.2\", HD\r\nHệ điều hành:	Android 7.1 (Nougat)\r\nCamera sau:	13 MP\r\nCamera trước:	8 MP\r\nCPU:	Qualcomm Snapdragon 430 8 nhân 64 bit\r\nRAM:	2 GB\r\nBộ nhớ trong:	16 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3000 mAh', 3000000, 3, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`, `type_img`) VALUES
(1, 'IOS11', 'ios11.jpg'),
(2, 'ANDROID7.0', 'android7.0.jpg'),
(3, 'WINDOWPHONE', 'windowphone.jpg'),
(4, 'ANDROID7.1', 'android7.1.jpg'),
(5, 'ANDROI8.0', 'androi8.0.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
