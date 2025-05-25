-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 25, 2025 lúc 05:17 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotelbooking`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'amey', '12345'),
(2, 'neal', '12345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 1, 'Simple Room', 300, 300, NULL, 'amey', '123', 'ad'),
(2, 2, 'Simple Room', 300, 600, 'a2', 'amey', '123', 'ad'),
(3, 3, 'Simple Room', 300, 1800, NULL, 'amey', '123', 'ad'),
(4, 4, 'Supreme deluxe room', 900, 4500, NULL, 'amey', '123', 'ad'),
(5, 5, 'Supreme deluxe room', 900, 900, NULL, 'amey', '123', 'ad'),
(6, 6, 'Supreme deluxe room', 900, 7200, '52', 'amey', '12323432', 'ad2342343'),
(7, 7, 'Supreme deluxe room', 900, 900, NULL, 'amey', '123', 'ad'),
(8, 8, 'Simple Room', 300, 600, NULL, 'amey', '123', 'ad'),
(9, 9, 'Luxury Room', 600, 3000, '159A', 'amey', '123', 'ad'),
(10, 10, 'Luxury Room', 600, 1800, '15S', 'neal', '123', 'ad'),
(11, 11, 'Supreme deluxe room', 900, 2700, '1', 'neal', '123', 'ad'),
(12, 12, 'Simple Room', 300, 1200, '2', 'neal', '123', 'ad'),
(13, 13, 'Deluxe Room', 500, 3000, '23', 'neal', '123', 'ad'),
(14, 14, 'Luxury Room', 600, 2400, '44', 'neal', '123', 'ad'),
(15, 15, 'Luxury Room', 600, 1200, NULL, 'neal', '123', 'ad'),
(16, 16, 'Luxury Room', 600, 1200, '1', 'neal', '123', 'ad'),
(17, 17, 'Simple Room', 300, 900, '20A', 'neal', '123', 'ad'),
(18, 18, 'Luxury Room', 600, 1200, NULL, 'amey', '1234', 'asd'),
(19, 19, 'Simple Room', 300, 300, NULL, 'neal', '123', 'ad'),
(20, 20, 'Simple Room', 300, 600, NULL, 'neal', '123', 'ad'),
(21, 21, 'Luxury Room', 600, 237000, NULL, 'neal', '123', 'Hanoi'),
(22, 22, 'Luxury Room', 600, 18000, NULL, 'neal', '123', 'Hanoi'),
(23, 23, 'Luxury Room', 600, 219000, NULL, 'asa', '123', 'Hanoi'),
(24, 24, 'Deluxe Room', 500, 182500, '5', '20.000', '10124240', 'âssasa\r\nâs'),
(25, 25, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(26, 26, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(27, 27, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(28, 28, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(29, 29, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(30, 30, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(31, 31, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(32, 32, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(33, 33, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(34, 34, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(35, 35, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(36, 36, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(37, 37, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(38, 38, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(39, 39, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(40, 40, 'Luxury Room', 600, 219000, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(41, 41, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(42, 42, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(43, 43, 'Deluxe Room', 500, 182500, NULL, 'Binh Nguyen', '10124240', 'âssasa\r\nâs'),
(44, 44, 'Deluxe Room', 500, 548000, NULL, 'duc ngu', '0123456', 'ha noi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(1, 2, 3, '2022-12-15', '2022-12-17', 0, NULL, 'pending', 'ORD_21055700', NULL, 0, 'pending', NULL, NULL, '2022-12-10 01:50:12'),
(2, 2, 3, '2022-07-20', '2022-07-22', 1, NULL, 'booked', 'ORD_24215693', '20220720111212800110168128204225279', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:14:44'),
(3, 2, 3, '2022-07-20', '2022-07-26', 0, 0, 'cancelled', 'ORD_26312547', '20220720111212800110168165603901976', 1800, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:19:00'),
(4, 2, 6, '2022-07-20', '2022-07-25', 0, NULL, 'payment failed', 'ORD_28394638', '20220720111212800110168372503893816', 4500, 'TXN_FAILURE', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', NULL, '2022-07-20 02:30:52'),
(5, 2, 6, '2022-07-20', '2022-07-21', 0, 1, 'cancelled', 'ORD_22877860', '20220720111212800110168627705312020', 900, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:32:09'),
(6, 2, 6, '2022-07-20', '2022-07-28', 1, NULL, 'booked', 'ORD_28689687', '20220720111212800110168303704048087', 7200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-07-20 02:34:46'),
(7, 2, 6, '2022-07-29', '2022-07-30', 0, NULL, 'pending', 'ORD_24272313', NULL, 0, 'pending', NULL, NULL, '2022-07-29 01:13:42'),
(8, 2, 3, '2022-08-14', '2022-08-16', 0, 1, 'cancelled', 'ORD_22541670', '20220814111212800110168092803967754', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-08-14 01:16:05'),
(9, 2, 5, '2022-08-15', '2022-08-20', 1, NULL, 'booked', 'ORD_25267746', '20220815111212800110168656003990120', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-15 19:32:05'),
(10, 2, 5, '2022-08-18', '2022-08-21', 1, NULL, 'booked', 'ORD_27668816', '20220815111212800110168905703947446', 1800, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-15 19:32:58'),
(11, 2, 6, '2022-08-20', '2022-08-23', 1, NULL, 'booked', 'ORD_25750549', '20220820111212800110168431303975409', 2700, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:19:57'),
(12, 2, 3, '2022-08-20', '2022-08-24', 1, NULL, 'booked', 'ORD_2445093', '20220820111212800110168173403969278', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:23'),
(13, 2, 4, '2022-08-20', '2022-08-26', 1, NULL, 'booked', 'ORD_29233995', '20220820111212800110168584503978338', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:45'),
(14, 2, 5, '2022-08-20', '2022-08-24', 1, NULL, 'booked', 'ORD_28902800', '20220820111212800110168816503988359', 2400, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:21:06'),
(15, 2, 5, '2022-08-25', '2022-08-27', 0, 1, 'cancelled', 'ORD_2240367', '20220825111212800110168807304010818', 1200, 'TXN_SUCCESS', 'Txn Success', NULL, '2019-08-21 01:51:28'),
(16, 2, 5, '2022-08-26', '2022-08-28', 1, NULL, 'booked', 'ORD_28784829', '20220825111212800110168627505415606', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-25 01:52:04'),
(17, 2, 3, '2022-09-08', '2022-09-11', 1, NULL, 'booked', 'ORD_21289330', '20220908111212800110168809204050263', 900, 'TXN_SUCCESS', 'Txn Success', 0, '2022-09-08 01:15:30'),
(18, 5, 5, '2022-12-14', '2022-12-16', 0, NULL, 'pending', 'ORD_52387163', NULL, 0, 'pending', NULL, NULL, '2022-12-13 03:05:43'),
(19, 2, 3, '2022-12-14', '2022-12-15', 0, NULL, 'pending', 'ORD_28406333', NULL, 0, 'pending', NULL, NULL, '2022-12-13 10:01:15'),
(20, 2, 3, '2022-12-14', '2022-12-16', 0, NULL, 'pending', 'ORD_26701861', NULL, 0, 'pending', NULL, NULL, '2022-12-13 10:03:51'),
(21, 2, 5, '2222-11-21', '2223-12-21', 0, NULL, 'pending', 'ORD_21431473', NULL, 0, 'pending', NULL, NULL, '2025-05-24 00:33:16'),
(22, 2, 5, '2223-11-21', '2223-12-21', 0, NULL, 'pending', 'ORD_24067313', NULL, 0, 'pending', NULL, NULL, '2025-05-24 00:33:39'),
(23, 2, 5, '2222-11-21', '2223-11-21', 0, NULL, 'pending', 'ORD_2622348', NULL, 0, 'pending', NULL, NULL, '2025-05-24 00:37:01'),
(24, 12346, 4, '2026-11-21', '2027-11-21', 1, NULL, 'booked', 'ORD_123464419377', NULL, 0, 'pending', NULL, 0, '2025-05-25 00:25:43'),
(25, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'ORD_123461320363', NULL, 0, 'pending', NULL, NULL, '2025-05-25 00:57:54'),
(26, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123466282536', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:06:55'),
(27, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_12346807410', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:10:15'),
(28, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123461138969', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:17:56'),
(29, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_12346427954', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:19:20'),
(30, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123464586339', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:38:22'),
(31, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123461667984', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:40:21'),
(32, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123466428883', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:40:45'),
(33, 12346, 4, '2025-12-21', '2026-12-21', 0, NULL, 'pending', 'VNP_123462696103', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:42:00'),
(34, 12346, 4, '2025-12-21', '2026-12-21', 0, NULL, 'pending', 'VNP_123469514917', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:44:33'),
(35, 12346, 4, '2025-12-21', '2026-12-21', 0, NULL, 'pending', 'VNP_123461450816', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:47:14'),
(36, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123464531765', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:51:08'),
(37, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123461136973', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:55:07'),
(38, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123464336013', NULL, 0, 'pending', NULL, NULL, '2025-05-25 01:57:22'),
(39, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123462096590', NULL, 0, 'pending', NULL, NULL, '2025-05-25 02:00:22'),
(40, 12346, 5, '2026-02-05', '2027-02-05', 0, NULL, 'pending', 'VNP_123465021029', NULL, 0, 'pending', NULL, NULL, '2025-05-25 02:14:46'),
(41, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123466630050', NULL, 0, 'pending', NULL, NULL, '2025-05-25 17:52:24'),
(42, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'pending', 'VNP_123463314352', NULL, 0, 'pending', NULL, NULL, '2025-05-25 20:58:43'),
(43, 12346, 4, '2025-11-21', '2026-11-21', 0, NULL, 'booked', 'VNP_123463081145', '14978508', 182500, 'TXN_SUCCESS', 'Thanh toán VNPAY thành công', NULL, '2025-05-25 21:08:08'),
(44, 12346, 4, '2025-12-30', '2028-12-30', 0, NULL, 'booked', 'VNP_123466377014', '14978515', 548000, 'TXN_SUCCESS', 'Thanh toán VNPAY thành công', NULL, '2025-05-25 21:11:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(4, 'anh12.jpg'),
(5, 'IMG_93127.png'),
(6, 'IMG_99736.png'),
(8, 'IMG_40905.png'),
(9, 'IMG_55677.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `gmap` varchar(1000) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Hạ Long, Bãi Cháy, Hạ Long, Quảng Ninh, Việt Nam', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.920301678255!2d107.04543457587103!3d20.95571549028224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a58ee204863c7%3A0xa2a9aa71bb0f8e48!2sM%C6%B0%E1%BB%9Dng%20Thanh%20Luxury%20Ha%20Long%20Centre%20Hotel!5e0!3m2!1svi!2s!4v1748017452310!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 123456789, 3122474541, 'binh12345@gmail.com', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.920301678255!2d107.04543457587103!3d20.95571549028224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a58ee204863c7%3A0xa2a9aa71bb0f8e48!2sM%C6%B0%E1%BB%9Dng%20Thanh%20Luxury%20Ha%20Long%20Centre%20Hotel!5e0!3m2!1svi!2s!4v1748017452310!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Stay connected with high-speed WiFi available throughout the hotel, perfect for work or streaming your favorite shows.\n\n'),
(14, 'IMG_49949.svg', 'Air conditioner', 'All rooms are equipped with modern air conditioning units to keep you cool and comfortable during your stay.\n\n'),
(15, 'IMG_41622.svg', 'Television', 'Enjoy your favorite programs with our flat-screen TVs featuring a wide range of local and international channels.\n\n'),
(17, 'IMG_47816.svg', 'Spa', 'Relax and rejuvenate with our in-house spa services offering massages, facials, and wellness treatments.\n\n'),
(18, 'IMG_96423.svg', 'Room Heater', 'Stay warm on chilly days with our in-room heaters, ensuring maximum comfort in all seasons.\n\n'),
(19, 'IMG_27079.svg', 'Geyser', 'Enjoy instant hot water at any time with our modern geyser systems in every bathroom.\n\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(13, 'bedroom'),
(14, 'balcony'),
(15, 'kitchen'),
(17, 'sofa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(4, 14, 5, 2, 5, 'This room exceeded my expectations — clean, spacious, and very well decorated. The bed was incredibly comfortable, and I loved waking up to natural sunlight through the large windows.', 1, '2022-08-20 00:22:25'),
(5, 13, 4, 5, 3, 'Had a wonderful time staying here. The staff was welcoming and the service was prompt. The bathroom was spotless, and the toiletries provided were of high quality.', 1, '2022-08-20 00:22:30'),
(6, 12, 3, 6, 5, 'The overall ambiance of the hotel was peaceful and relaxing. Our room had a nice view of the garden, and the evening lighting around the property made it feel like a resort.', 1, '2022-08-20 00:22:34'),
(8, 14, 5, 7, 5, 'Room was good, though I wish there had been more storage space for luggage. Wi-Fi worked fine, and the AC cooled the room quickly. Decent value for money.', 1, '2022-08-20 00:22:25'),
(9, 12, 3, 8, 1, 'Very clean and modern room. I especially appreciated the USB charging ports near the bed and the soft towels. Would definitely recommend to solo travelers or couples.\"', 1, '2022-08-20 00:22:34'),
(10, 12, 3, 2, 1, 'The location was perfect — just a short walk to cafes and public transport. The room itself was quiet despite being in a busy area, which I really appreciated.', 1, '2022-08-20 00:22:34'),
(11, 16, 5, 5, 3, 'One of the best stays I\'ve had recently. From check-in to checkout, everything was smooth. The complimentary breakfast was surprisingly good!', 1, '2022-09-08 01:14:18'),
(12, 14, 6, 2, 5, 'Beautifully designed interiors with cozy lighting and comfortable furniture. It felt more like a boutique apartment than a hotel room. Definitely coming back.', 1, '2022-08-20 00:22:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'simple room', 159, 58, 56, 12, 2, 'Upgrade your stay in our luxurious Executive Suite, offering a separate living area, king-size bed, and premium amenities. Perfect for business travelers or couples seeking space and privacy, with complimentary breakfast and lounge access included.\n\n', 1, 1),
(2, 'simple room 2', 785, 159, 85, 452, 10, 'Ideal for friends or colleagues, the Superior Twin Room offers two comfortable single beds, ample natural light, and a functional workspace. Enjoy complimentary toiletries, daily housekeeping, and 24/7 room service for a pleasant stay.\n\n', 1, 1),
(3, 'Simple Room', 250, 300, 10, 5, 3, 'Our cozy Standard Single Room is perfect for solo travelers. It features a comfortable single bed, work desk, free Wi-Fi, and an en-suite bathroom with a walk-in shower. Simple, clean, and affordable.\n\n', 1, 0),
(4, 'Deluxe Room', 300, 500, 10, 3, 2, 'Experience comfort in our Deluxe Double Room featuring a plush queen-size bed, modern décor, and a private balcony with city views. The room is equipped with air conditioning, a flat-screen TV, high-speed Wi-Fi, and a spacious en-suite bathroom.', 1, 0),
(5, 'Luxury Room', 600, 600, 2, 8, 6, 'Designed for families, this spacious room includes one double bed and two single beds, with enough room for everyone to relax. Equipped with a mini-fridge, microwave, and child-friendly facilities, ensuring comfort for all ages.\n\n', 1, 0),
(6, 'Supreme deluxe room', 500, 900, 12, 9, 10, 'Wake up to breathtaking views of the sea in our Ocean View Room. This beautifully furnished space includes a king-size bed, floor-to-ceiling windows, a private balcony, and elegant bathroom with a rain shower. Perfect for a romantic getaway or peaceful retreat.\n\n', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(29, 4, 14),
(30, 4, 18),
(31, 4, 19),
(35, 6, 13),
(36, 6, 14),
(37, 6, 18),
(38, 6, 19),
(39, 5, 13),
(40, 5, 14),
(41, 5, 18),
(42, 3, 14),
(43, 3, 15),
(44, 3, 18),
(45, 3, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(16, 4, 13),
(17, 4, 14),
(18, 4, 15),
(22, 6, 13),
(23, 6, 14),
(24, 6, 15),
(25, 5, 13),
(26, 5, 14),
(27, 5, 15),
(28, 3, 13),
(29, 3, 14),
(30, 3, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(15, 3, 'IMG_39782.png', 0),
(16, 3, 'IMG_65019.png', 1),
(17, 4, 'IMG_44867.png', 0),
(18, 4, 'IMG_78809.png', 1),
(19, 4, 'IMG_11892.png', 0),
(21, 5, 'IMG_17474.png', 0),
(22, 5, 'IMG_42663.png', 1),
(23, 5, 'IMG_70583.png', 0),
(24, 6, 'IMG_67761.png', 0),
(25, 6, 'IMG_69824.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Moonlit', 'Each room features plush bedding, high-quality linens, and a selection of ensure a restful night\'s sleep.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(16, 'Leonard', 'CEO.jpg'),
(17, 'Mario', 'CEO4.jpg'),
(18, 'Adamn', 'CEO3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(1, 'annie', 'abcdef@gmail.com', 'aaaa', '123', 0, '0000-00-00', '', '$2y$10$g2FyB9TnyKnKcTQU5wTW4eGhvTxGEXcWyRWkYTr5zgnI0IBU6Ld9u', 1, '250dd45640f7d810313b27e758a267af', NULL, 1, '2025-05-22 00:37:10'),
(2, 'neal', 'neal@gmail.com', 'Hanoi', '123', 123324, '2022-06-12', '3135715.png', '$2y$10$cyaLkmXMqmulE69yW2E8KuxD44j2I37aph4L0yWgwmMvIxJPyl1xe', 1, NULL, NULL, 1, '2022-06-12 16:05:59'),
(5, 'amey', 'helubeti@finews.biz', 'asd', '1234', 123, '2022-12-13', 'IMG_84786.jpeg', '$2y$10$eZj1cPWkr9qpQuZ7puA7c.3D9eZJje2tPQsAZQeYiD6RWn2OAdy7q', 1, '12345', NULL, 1, '2030-12-13 02:37:19'),
(6, 'amey', 'xelih35531@lubde.com', 'asd', '1123', 123, '2022-12-13', '3135716.png', '$2y$10$aoCaCM6Ji3VuZlO0YFl.Y.O4vv2cqJr0HiT2oVH5sy3AWQJqyyQJ6', 1, 'ef6dc7ba39cf4bf844244d3ef927a3e7', NULL, 1, '2022-12-13 02:40:42'),
(7, 'Duc', 'harryd123@gmail.com', 'asd', '12345', 123, '2022-12-13', 'IMG_33353.jpeg', '$2y$10$kiw8LOLFK9e/I4u5i3vO0.GkMpBKAbeZguOqtp1HD0mBoPyAwXFhq', 0, '5c9f04397ff3e693f7cbfccea1044483', NULL, 1, '2022-12-13 02:42:37'),
(8, 'Binh', 'cejika9124@paxven.com', 'a', '12', 1, '2022-12-13', 'IMG_62937.jpeg', '$2y$10$0kAvtcnPie9S0W2DGjxaBuI8rvrC5Zq7BVUyNmST14J25tm2Vzdyu', 0, '250dd45640f7d810313b27e758a267af', NULL, 1, '2022-12-13 02:55:39'),
(12346, 'Test User', 'test@example.com', '123 Main St', '0911222333', 700000, '2000-01-01', 'default.png', '$2y$10$eZj1cPWkr9qpQuZ7puA7c.3D9eZJje2tPQsAZQeYiD6RWn2OAdy7q', 1, NULL, NULL, 1, '2025-05-22 00:44:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(11, 'Amey', 'amey@gmail.com', 'This is one subject', 'orem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates im', '2022-03-11 00:00:00', 1),
(13, 'neal', 'n@gmail.com', '4a2qez', 'watT', '2022-12-13 10:10:48', 1),
(14, 'a', 'a@gmail.com', 'a', 'a', '2025-05-24 00:45:04', 0),
(15, 'Binh Nguyen', '1@GMAIL.COM', '1', '1', '2025-05-25 18:20:30', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Chỉ mục cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Chỉ mục cho bảng `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Chỉ mục cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12347;

--
-- AUTO_INCREMENT cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Các ràng buộc cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Các ràng buộc cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Các ràng buộc cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
