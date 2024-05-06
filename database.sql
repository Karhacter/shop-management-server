-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2024 at 03:21 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `0588_duckhanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_banner`
--

CREATE TABLE `2122110588_banner` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '1',
  `description` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_banner`
--

INSERT INTO `2122110588_banner` (`id`, `name`, `link`, `sort_order`, `description`, `position`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Sách mới năm 2024', 'http://localhost:5000/assets/images/sliders/slide_1.jpg', 1, NULL, 'slideshow', 'slide_1.jpg', '2024-01-02 14:07:40', 1, '2024-05-02 05:58:17', 1, 1),
(2, 'Sách tái bản 2024', 'http://localhost:5000/assets/images/sliders/slide_2.jpg', 2, NULL, 'slideshow', 'slide_2.jpg', '2024-01-02 15:39:03', 1, NULL, 1, 1),
(3, 'Sách hay đón hè', 'http://localhost:5000/assets/images/sliders/slide_3.jpg', 3, NULL, 'slideshow', 'slide_3.jpg', '2024-01-02 15:42:30', 1, NULL, 1, 1),
(23, 'asd', 'asd', 1, NULL, 'slideshow', 'wp1825482.jpg', '2024-03-05 09:27:47', 1, '2024-05-01 04:15:23', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_brand`
--

CREATE TABLE `2122110588_brand` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Not Null',
  `slug` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Not Null',
  `image` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default 0',
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT 'Not Null',
  `created_by` int UNSIGNED NOT NULL COMMENT 'Not Null',
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Default 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_brand`
--

INSERT INTO `2122110588_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Kim đồng', 'kim-dong', 'kim-dong.png', 1, 'Nhà xuất bản kim đồng', '2023-12-29 12:10:29', 1, '2024-01-05 09:56:29', 1, 1),
(2, 'Alpha Books', 'alpha-books', 'Alpha-Books.png', 2, 'Nhà xuất bản Alpha Books', '2024-01-04 15:31:04', 1, '2024-01-05 09:56:30', 1, 1),
(3, 'Trẻ', 'tre', 'tre.png', 3, 'Nhà xuất bản Trẻ', '2024-01-04 15:32:25', 1, '2024-01-05 09:56:32', 1, 1),
(4, 'MCBooks', 'MCBooks', 'mcbook.png', 4, 'Nhà xuất bản MCBooks', '2024-01-04 15:33:00', 1, '2024-01-05 09:56:37', 1, 1),
(5, 'Lao Động', 'lao-dong', 'lao-dong.png', 5, 'Nhà xuất bản Lao Động', '2024-01-04 15:34:18', 1, '2024-01-05 09:56:38', 1, 1),
(6, 'Nhã Nam', 'nha-nam', 'nha-nam.png', 6, 'Nhà xuất bản Nhã Nam', '2024-01-04 15:34:52', 1, '2024-01-05 09:56:36', 1, 1),
(7, 'Hội Nhà Văn', 'nha-van', 'nha-van.png', 0, 'nhà xuất bản hội nhà văn ', '2024-01-04 17:35:26', 1, '2024-01-04 17:35:26', NULL, 1),
(8, 'NXB Thanh Niên', 'thanh-nien', 'nha-van.png', 0, 'NXB Thanh Niên', '2024-01-04 17:35:26', 1, '2024-01-04 17:35:26', NULL, 1),
(9, 'NXB Hà Nội', 'ha-noi', 'ha-noi.png', 0, 'NXB Hà Nội', '2024-01-04 17:35:26', 1, '2024-01-04 17:35:26', NULL, 1),
(10, 'Tổng Hợp TPHCM', 'tong-hop-tphcm', 'tong-hop.png', 0, 'Tổng Hợp ', '2024-01-04 17:35:26', 1, '2024-05-02 15:26:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_category`
--

CREATE TABLE `2122110588_category` (
  `id` int UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `name` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `sort_order` int UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_category`
--

INSERT INTO `2122110588_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tiểu thuyết', 'tieu-thuyet', 'tieu-thuyet.png', 0, NULL, 'Tiểu thuyết', '2024-01-02 16:13:04', 1, '2024-01-14 14:21:09', 1, 1),
(2, 'Tâm lý', 'tam-ly', 'tam-ly.png', 0, NULL, 'Thể loại tâm lý', '2024-01-02 16:16:22', 1, '2024-01-15 03:45:27', 1, 1),
(3, 'Kinh tế', 'kinh-te', 'kinh-te.png', 0, NULL, 'Kinh tế', '2024-01-02 16:21:41', 1, '2024-01-15 03:45:29', 1, 1),
(4, 'Truyện tranh', 'truyen-tranh', 'light-novel.webp', 0, NULL, 'Truyện tranh', '2024-01-02 16:22:17', 1, '2024-01-12 10:44:09', 1, 1),
(5, 'Light novel', 'light-novel', NULL, 1, NULL, 'Thể loại tiểu thuyết nhật', '2024-01-09 13:26:13', 1, '2024-01-15 03:45:32', 1, 1),
(6, 'Ngôn tình', 'ngon-tinh', NULL, 1, NULL, 'Thể loại lãng mạn', '2024-01-09 13:27:23', 1, '2024-01-15 03:45:33', 1, 1),
(7, 'Giả tưởng', 'gia-tuong', NULL, 4, NULL, 'Thể loại truyện giả tưởng', '2024-01-09 13:28:24', 1, '2024-01-15 03:45:35', 1, 1),
(8, 'Thể thao', 'the-thao', NULL, 4, NULL, 'Thể loại truyện thể thao', '2024-01-09 13:29:45', 0, '2024-01-15 03:45:34', 1, 1),
(11, 'Kinh tế vi mô', 'kinh-te-vi-mo', NULL, 3, NULL, 'Kinh tế vi mô oke', '2024-01-14 14:25:38', 1, '2024-05-02 15:31:12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_contact`
--

CREATE TABLE `2122110588_contact` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `reply_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_contact`
--

INSERT INTO `2122110588_contact` (`id`, `user_id`, `name`, `email`, `phone`, `title`, `content`, `reply_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 0, 'Nguyễn Văn Toàn', 'nguyenvantoan@gmail.com', '0987654321', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', 0, '2024-03-29 08:08:19', 0, '2024-03-29 15:08:19', 1, 2),
(2, 0, 'Lê Thái Sơn', 'lethaison@gmail.com', '0987667986', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', 0, '2024-03-29 08:08:19', 0, '2024-03-29 15:08:19', 1, 2),
(5, NULL, 'Thế giới', 'khanhduc392@gmail.com', '0378173109', 'asd', 'asd', 0, '2024-05-02 14:25:21', 1, '2024-05-02 14:25:21', NULL, 1),
(6, 1, 'Hội Nhà Văn', 'khanhduc392@gmail.com', '0378173109', 'asd', 'asd', 0, '2024-05-02 14:26:24', 1, '2024-05-02 14:26:24', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_menu`
--

CREATE TABLE `2122110588_menu` (
  `id` int NOT NULL,
  `name` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `table_id` int UNSIGNED DEFAULT NULL,
  `sort_order` int NOT NULL,
  `position` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_menu`
--

INSERT INTO `2122110588_menu` (`id`, `name`, `link`, `table_id`, `sort_order`, `position`, `type`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', 'http://localhost/Litenary_Oasis/index.php', 0, 2, 'mainmenu', 'custom', 0, '2024-01-12 12:11:21', 1, NULL, 1, 1),
(2, 'Giới thiệu', 'http://localhost/Litenary_Oasis/index.php?opt=page&cat=gioi-thieu', 39, 2, 'mainmenu', 'page', 0, '2024-01-12 12:15:16', 1, NULL, 1, 1),
(3, 'Bài viết', 'http://localhost/Litenary_Oasis/index.php?opt=post_topic', 40, 6, 'mainmenu', 'page', 0, '2024-01-12 14:56:55', 1, NULL, 1, 1),
(9, 'Tiểu thuyết', 'http://localhost/Litenary_Oasis/index.php?opt=product&cat=tieu-thuyet', 14, 7, 'mainmenu', 'category', 14, '2024-01-12 14:54:50', 1, NULL, 1, 1),
(10, 'Tâm lý', 'http://localhost/Litenary_Oasis/index.php?opt=product&cat=tam-ly', 6, 13, 'mainmenu', 'category', 14, '2024-01-12 14:53:47', 1, NULL, 1, 1),
(11, 'Tiểu thuyết', 'http://localhost/Litenary_Oasis/index.php?opt=product&cat=tam-ly', 5, 12, 'mainmenu', 'category', 15, '2024-01-12 14:51:22', 1, NULL, 1, 1),
(12, 'Ngôn tình', 'http://localhost/Litenary_Oasis/index.php?opt=product&cat=ngon-tinh', 4, 11, 'mainmenu', 'category', 15, '2024-01-12 14:38:12', 1, NULL, 1, 1),
(13, 'Light novel', 'http://localhost/Litenary_Oasis/index.php?opt=product&cat=light-novel', 3, 10, 'mainmenu', 'category', 15, '2024-01-12 12:33:45', 1, NULL, 1, 1),
(14, 'Danh Mục', 'http://localhost:3000/san-pham/the-loai/truyen-tranh', 2, 4, 'mainmenu', 'category', 0, '2024-01-12 14:24:56', 1, '2024-01-27 04:29:13', 1, 1),
(15, 'Văn học', 'http://localhost:3000/san-pham/the-loai/van-hoc', 1, 5, 'mainmenu', 'category', 0, '2024-01-12 12:27:51', 1, NULL, 1, 1),
(16, 'Giới thiệu', 'http://localhost/Litenary_Oasis/index.php?opt=page&cat=gioi-thieu', 39, 1, 'footermenu', 'page', 0, '2024-01-12 15:01:08', 1, NULL, 1, 1),
(17, 'Chính Sách Hoàn Tiền', 'index.php?opt=page&cat=chinh-sach-hoan-tien', 1, 38, 'footermenu', 'page', 0, '2024-01-12 15:01:55', 1, NULL, 1, 1),
(18, 'Chính sách bảo hành', 'index.php?opt=page&cat=chinh-sach-bao-hanh', 37, 2, 'footermenu', 'page', 0, '2024-01-12 15:02:45', 1, NULL, 1, 1),
(19, 'Chính sách đổi hàng', 'index.php?opt=page&cat=chinh-sach-doi-hang', 36, 2, 'footermenu', 'page', 0, '2024-01-12 15:03:34', 1, NULL, 1, 1),
(414, 'Sản phẩm', 'http://localhost/Litenary_Oasis/index.php?opt=product', 41, 3, 'mainmenu', 'page', 0, '2024-01-12 12:15:16', 1, NULL, 1, 1),
(416, 'Liên hệ', 'http://localhost/Litenary_Oasis/index.php?opt=contact', 42, 7, 'mainmenu', 'page', 0, '2024-01-12 12:15:16', 1, NULL, 1, 1),
(417, ' Phương thức thanh toán', 'index.php?opt=page&cat=chinh-sach-hoan-tien', 1, 38, 'footermenu', 'page', 0, '2024-01-12 15:01:55', 1, NULL, 1, 1),
(418, 'Kinh tế', 'http://localhost/Litenary_Oasis/index.php?opt=product&cat=kinh-te', 6, 13, 'mainmenu', 'category', 14, '2024-01-12 14:53:47', 1, NULL, 1, 1),
(419, 'Truyện tranh', 'http://localhost/Litenary_Oasis/index.php?opt=product&cat=truyen-tranh', 5, 12, 'mainmenu', 'category', 14, '2024-01-12 14:51:22', 1, NULL, 1, 1),
(420, 'Hệ thống ', 'http://localhost/Litenary_Oasis/admin', 42, 8, 'mainmenu', 'page', 0, '2024-01-12 12:15:16', 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_order`
--

CREATE TABLE `2122110588_order` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `deliveryname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `deliveryphone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `deliveryemail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `deliveryaddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` tinyint UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_order`
--

INSERT INTO `2122110588_order` (`id`, `user_id`, `deliveryname`, `deliveryphone`, `deliveryemail`, `deliveryaddress`, `note`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(48, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:17:51', '2024-05-03 17:17:51', NULL, 1),
(49, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:18:51', '2024-05-03 17:18:52', NULL, 1),
(50, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:19:05', '2024-05-03 17:19:05', NULL, 1),
(51, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:19:17', '2024-05-03 17:19:17', NULL, 1),
(52, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:19:28', '2024-05-03 17:19:28', NULL, 1),
(53, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:19:36', '2024-05-03 17:19:36', NULL, 1),
(54, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:19:43', '2024-05-03 17:19:43', NULL, 1),
(55, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:19:50', '2024-05-03 17:19:50', NULL, 1),
(56, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:19:58', '2024-05-03 17:19:58', NULL, 1),
(57, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:20:06', '2024-05-03 17:20:06', NULL, 1),
(58, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:20:16', '2024-05-03 17:20:16', NULL, 1),
(59, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:20:43', '2024-05-03 17:20:43', NULL, 1),
(60, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:21:11', '2024-05-03 17:21:11', NULL, 1),
(61, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:21:19', '2024-05-03 17:21:19', NULL, 1),
(62, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:21:26', '2024-05-03 17:21:26', NULL, 1),
(63, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:21:34', '2024-05-03 17:21:34', NULL, 1),
(64, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:21:43', '2024-05-03 17:21:43', NULL, 1),
(65, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:21:50', '2024-05-03 17:21:50', NULL, 1),
(66, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:21:57', '2024-05-03 17:21:57', NULL, 1),
(67, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:05', '2024-05-03 17:22:05', NULL, 1),
(68, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:12', '2024-05-03 17:22:12', NULL, 1),
(69, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:20', '2024-05-03 17:22:20', NULL, 1),
(70, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:27', '2024-05-03 17:22:27', NULL, 1),
(71, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:35', '2024-05-03 17:22:35', NULL, 1),
(72, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:42', '2024-05-03 17:22:42', NULL, 1),
(73, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:51', '2024-05-03 17:22:51', NULL, 1),
(74, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:22:59', '2024-05-03 17:22:59', NULL, 1),
(75, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:08', '2024-05-03 17:23:08', NULL, 1),
(76, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:15', '2024-05-03 17:23:15', NULL, 1),
(77, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:22', '2024-05-03 17:23:22', NULL, 1),
(78, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:28', '2024-05-03 17:23:28', NULL, 1),
(79, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:35', '2024-05-03 17:23:35', NULL, 1),
(80, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:43', '2024-05-03 17:23:43', NULL, 1),
(81, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:50', '2024-05-03 17:23:50', NULL, 1),
(82, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:23:57', '2024-05-03 17:23:57', NULL, 1),
(83, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:24:08', '2024-05-03 17:24:08', NULL, 1),
(84, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:24:14', '2024-05-03 17:24:14', NULL, 1),
(85, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:24:21', '2024-05-03 17:24:21', NULL, 1),
(86, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:24:28', '2024-05-03 17:24:28', NULL, 1),
(87, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:24:37', '2024-05-03 17:24:37', NULL, 1),
(88, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:24:44', '2024-05-03 17:24:44', NULL, 1),
(89, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:24:51', '2024-05-03 17:24:51', NULL, 1),
(90, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:25:00', '2024-05-03 17:25:00', NULL, 1),
(91, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:25:07', '2024-05-03 17:25:07', NULL, 1),
(92, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:25:14', '2024-05-03 17:25:14', NULL, 1),
(93, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:25:21', '2024-05-03 17:25:21', NULL, 1),
(94, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-03 17:25:28', '2024-05-03 17:25:28', NULL, 1),
(95, 1, 'Trần Đức Khánh ', '01000004', 'karhacter@gmail.com', '8 Dương văn cam', 'Không chú ý', '2024-05-04 01:37:35', '2024-05-04 01:37:36', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_orderdetail`
--

CREATE TABLE `2122110588_orderdetail` (
  `id` int NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_orderdetail`
--

INSERT INTO `2122110588_orderdetail` (`id`, `order_id`, `product_id`, `price`, `qty`, `amount`, `created_at`, `updated_at`) VALUES
(21, 48, 52, 76000, 1, 76000, '2024-05-03 17:17:51', '2024-05-03 17:17:51'),
(22, 49, 51, 135000, 1, 135000, '2024-05-03 17:18:52', '2024-05-03 17:18:52'),
(23, 50, 50, 119000, 1, 119000, '2024-05-03 17:19:05', '2024-05-03 17:19:05'),
(24, 51, 49, 235000, 1, 235000, '2024-05-03 17:19:17', '2024-05-03 17:19:17'),
(25, 52, 48, 170000, 1, 170000, '2024-05-03 17:19:28', '2024-05-03 17:19:28'),
(26, 53, 47, 150000, 1, 150000, '2024-05-03 17:19:36', '2024-05-03 17:19:36'),
(27, 54, 46, 229000, 1, 229000, '2024-05-03 17:19:43', '2024-05-03 17:19:43'),
(28, 55, 45, 105000, 1, 105000, '2024-05-03 17:19:50', '2024-05-03 17:19:50'),
(29, 56, 30, 50000, 1, 50000, '2024-05-03 17:19:58', '2024-05-03 17:19:58'),
(30, 57, 29, 70000, 1, 70000, '2024-05-03 17:20:06', '2024-05-03 17:20:06'),
(31, 58, 28, 30000, 1, 30000, '2024-05-03 17:20:16', '2024-05-03 17:20:16'),
(32, 59, 27, 58000, 1, 58000, '2024-05-03 17:20:43', '2024-05-03 17:20:43'),
(33, 59, 26, 43000, 1, 43000, '2024-05-03 17:20:43', '2024-05-03 17:20:43'),
(34, 60, 27, 58000, 1, 58000, '2024-05-03 17:21:11', '2024-05-03 17:21:11'),
(35, 61, 25, 180000, 1, 180000, '2024-05-03 17:21:19', '2024-05-03 17:21:19'),
(36, 62, 24, 25000, 1, 25000, '2024-05-03 17:21:26', '2024-05-03 17:21:26'),
(37, 63, 23, 25000, 1, 25000, '2024-05-03 17:21:34', '2024-05-03 17:21:34'),
(38, 64, 22, 170000, 1, 170000, '2024-05-03 17:21:43', '2024-05-03 17:21:43'),
(39, 65, 21, 165000, 1, 165000, '2024-05-03 17:21:50', '2024-05-03 17:21:50'),
(40, 66, 19, 139000, 1, 139000, '2024-05-03 17:21:57', '2024-05-03 17:21:57'),
(41, 67, 20, 599000, 1, 599000, '2024-05-03 17:22:05', '2024-05-03 17:22:05'),
(42, 68, 18, 148000, 1, 148000, '2024-05-03 17:22:12', '2024-05-03 17:22:12'),
(43, 69, 17, 189000, 1, 189000, '2024-05-03 17:22:20', '2024-05-03 17:22:20'),
(44, 70, 16, 199000, 1, 199000, '2024-05-03 17:22:27', '2024-05-03 17:22:27'),
(45, 71, 15, 179000, 1, 179000, '2024-05-03 17:22:35', '2024-05-03 17:22:35'),
(46, 72, 14, 86000, 1, 86000, '2024-05-03 17:22:42', '2024-05-03 17:22:42'),
(47, 73, 13, 179000, 1, 179000, '2024-05-03 17:22:51', '2024-05-03 17:22:51'),
(48, 74, 12, 104000, 1, 104000, '2024-05-03 17:22:59', '2024-05-03 17:22:59'),
(49, 75, 11, 128000, 1, 128000, '2024-05-03 17:23:08', '2024-05-03 17:23:08'),
(50, 76, 10, 86000, 1, 86000, '2024-05-03 17:23:15', '2024-05-03 17:23:15'),
(51, 77, 9, 158000, 1, 158000, '2024-05-03 17:23:22', '2024-05-03 17:23:22'),
(52, 78, 8, 69000, 1, 69000, '2024-05-03 17:23:28', '2024-05-03 17:23:28'),
(53, 79, 7, 109000, 1, 109000, '2024-05-03 17:23:35', '2024-05-03 17:23:35'),
(54, 80, 6, 128000, 1, 128000, '2024-05-03 17:23:43', '2024-05-03 17:23:43'),
(55, 81, 5, 150000, 1, 150000, '2024-05-03 17:23:50', '2024-05-03 17:23:50'),
(56, 82, 4, 90000, 1, 90000, '2024-05-03 17:23:57', '2024-05-03 17:23:57'),
(57, 83, 33, 95000, 1, 95000, '2024-05-03 17:24:08', '2024-05-03 17:24:08'),
(58, 84, 3, 95000, 1, 95000, '2024-05-03 17:24:14', '2024-05-03 17:24:14'),
(59, 85, 2, 100000, 1, 100000, '2024-05-03 17:24:21', '2024-05-03 17:24:21'),
(60, 86, 1, 100000, 1, 100000, '2024-05-03 17:24:28', '2024-05-03 17:24:28'),
(61, 87, 52, 76000, 1, 76000, '2024-05-03 17:24:37', '2024-05-03 17:24:37'),
(62, 88, 51, 135000, 1, 135000, '2024-05-03 17:24:44', '2024-05-03 17:24:44'),
(63, 89, 50, 119000, 1, 119000, '2024-05-03 17:24:51', '2024-05-03 17:24:51'),
(64, 90, 49, 235000, 1, 235000, '2024-05-03 17:25:00', '2024-05-03 17:25:00'),
(65, 91, 48, 170000, 1, 170000, '2024-05-03 17:25:07', '2024-05-03 17:25:07'),
(66, 92, 47, 150000, 1, 150000, '2024-05-03 17:25:14', '2024-05-03 17:25:14'),
(67, 93, 46, 229000, 1, 229000, '2024-05-03 17:25:21', '2024-05-03 17:25:21'),
(68, 94, 45, 105000, 1, 105000, '2024-05-03 17:25:28', '2024-05-03 17:25:28'),
(69, 95, 27, 58000, 1, 58000, '2024-05-04 01:37:36', '2024-05-04 01:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_post`
--

CREATE TABLE `2122110588_post` (
  `id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `detail` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_post`
--

INSERT INTO `2122110588_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, NULL, 'CHÍNH SÁCH BẢO HÀNH', 'chinh-sach-bao-hanh', '<p><strong>1. Tôi có thể bảo hành sản phẩm tại đâu?</strong></p>\n<p>- Bảo hành chính hãng: Đối với các sản phẩm điện tử, đồ chơi điện tử,...\ncó tem phiếu cam kết bảo hành từ Hãng, khách hàng có thể\nmang sản phẩm đến trực tiếp Hãng để bảo hành mà không cần thông qua\n<strong></strong><strong>.</strong></p>\n<p>- Bảo hành thông qua : khách hàng liên hotline\n<strong>0378173109</strong> hoặc truy cập <a\n    href=\"http://localhost/TranDucKhanh_2122110588_PHP/index.php?opt=page&cat=chinh-sach-bao-hanh\"><strong>www./chinh-sach-bao-hanh-san-pham</strong></a>\nđể được hỗ trợ tư vấn về thực hiện bảo hành.</p>\n<p><strong>2. Tôi có thể được bảo hành sản phẩm miễn phí\n    không?</strong></p>\n<p>Sản phẩm của quý khách được bảo hành miễn phí chính hãng\nkhi:</p>\n<ul>\n<li>\n    <p>Còn thời hạn bảo hành (dựa trên tem/phiếu bảo hành hoặc thời điểm\n        kích hoạt bảo hành điện tử).</p>\n</li>\n<li>\n    <p>Tem/phiếu bảo hành còn nguyên vẹn.</p>\n</li>\n<li>\n    <p>Sản phẩm bị lỗi kỹ thuật.</p>\n</li>\n</ul>\n<p>Các trường hợp có thể phát sinh phí bảo hành:</p>\n<ul>\n<li>\n    <p>Sản phẩm hết thời hạn bảo hành.</p>\n</li>\n<li>\n    <p>Sản phẩm bị bể, biến dạng, cháy, nổ, ẩm thấp trong động cơ hoặc hư hỏng trong\n        quá trình sử dụng.</p>\n</li>\n<li>\n    <p>Sản phẩm bị hư hỏng do lỗi của người sử dụng, không xuất phát từ lỗi vốn\n        có của hàng hóa.</p>\n</li>\n</ul>\n<p><strong>3. Sau bao lâu tôi có thể nhận lại sản phẩm bảo hành?</strong></p>\n<p>Nếu sản phẩm của quý khách vẫn còn trong thời hạn bảo hành trên\nteam phiếu bảo hành của Hãng, Fahasa khuyến khích quý khách gửi\ntrực tiếp đến trung tâm của Hãng để được hỗ trợ bảo hành trong thời gian nhanh\nnhất.</p>\n<p>Trường hợp quý khách gửi hàng về , thời gian bảo hành dự kiến\ntrong vòng 21- 45 ngày tùy thuộc vào điều kiện sẵn có của linh\nkiện thay thế từ nhà sản xuất/lỗi sản phẩm (không tính thời gian vận chuyển đi\nvà về). Đối với sản phẩm<a style=\"background-color: #ffffff;\" name=\"_GoBack\"></a></p>\n<p><strong>4. </strong><strong></strong><strong> bảo hành bằng các hình\n    thức nào?</strong></p>\n<p>Sản phẩm tại <strong></strong> sẽ được bảo hành bằng 1 trong 4 hình thức sau:\n</p>\n<ul>\n<li>\n    <p>Hóa đơn: khách hàng mang theo hóa đơn trực tiếp hoặc hóa\n        đơn giá trị gia tăng có thông tin của sản phẩm để được bảo hành.\n    </p>\n</li>\n<li>\n    <p>Phiếu bảo hành: đi kèm theo sản phẩm, có đầy đủ thông tin về nơi\n        bảo hành và điều kiện bảo hành.</p>\n</li>\n<li>\n    <p>Tem bảo hành: loại tem đặc biệt chỉ sử dụng một lần, được dán trực tiếp\n        lên sản phẩm. Sản phẩm còn trong thời hạn bảo hành phải thỏa điều kiện\n        tem còn nguyên vẹn và thời gian bảo hành phải trước ngày\n        được viết trên tem.</p>\n</li>\n<li>\n    <p>Điện tử: là chế độ bảo hành sản phẩm trực tuyến thay thế cho phương pháp\n        bảo hành thông thường bằng giấy hay thẻ bảo hành bằng cách: nhắn\n        tin SMS kích hoạt, quét mã QR-Code từ tem nhãn, đăng ký\n        trên website hoặc bằng ứng dụng bảo hành.</p>\n</li>\n</ul>\n<p><strong>5. </strong><strong></strong><strong> có bảo hành quà tặng\n    kèm sản phẩm không?</strong></p>\n<p><strong></strong> rất tiếc hiện chưa hỗ trợ bảo hành quà tặng đi kèm\nsản phẩm chính. </p>\n<p><strong>Lưu ý:</strong> Để đảm bảo quyền lợi khách hàng và\n<strong></strong> có cơ sở làm việc với các bộ phận liên quan,\ntất cả yêu cầu bảo hành quý khách cần cung cấp hình ảnh/clip sản\nphẩm lỗi. <strong></strong> xin phép từ chối khi chưa nhận đủ thông tin\nhình ảnh từ quý khách. </p>\n\n', 'chinh-sach-bao-hanh.png', 'page', 'Chính sách bảo hành', '2024-01-12 04:54:56', 0, '2024-01-27 02:35:31', 1, 1),
(2, NULL, 'CHÍNH SÁCH MUA HÀNG', 'chinh-sach-hoan-tien', '<p><span style=\"font-size: medium;\">Hiện nay, do mức chiết khấu trên  rất cao, đặc biệt vào các thời điểm chạy chương trình. Do đó đối với mỗi chương trình số lượng sản phẩm giảm sốc có giới hạn nhất định, vì vậy để đảm bảo quyền lợi của từng khách hàng, chúng tôi xin thông báo tiêu chí xét “Đơn Hàng Sỉ” và chính sách như sau:</span></p>\n                        <br /><span style=\"font-size: medium;\"> <strong>1. </strong>Đơn hàng được gọi là “đơn hàng sỉ” khi đơn hàng có giá trị: từ <strong>3.000.000</strong> đồng (Ba triệu đồng) trở lên.</span><br />\n                  \n                        <ul>\n                                                   </ul>\n                        <span style=\"font-size: medium;\"> <strong>2. </strong>Ch&iacute;nh s&aacute;ch gi&aacute; (% chiết khấu giảm gi&aacute;). Đ&acirc;y l&agrave; ch&iacute;nh s&aacute;ch chung chỉ mang t&iacute;nh tương đối. Xin qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n lạc với Fahasa để c&oacute; ch&iacute;nh s&aacute;ch gi&aacute; ch&iacute;nh x&aacute;c nhất: </span><br />\n                        <ul>\n                           <li><span style=\"font-size: medium;\">- Đối với Nh&oacute;m h&agrave;ng s&aacute;ch <strong>kinh tế, <strong><strong>Văn học</strong></strong>: </strong>&aacute;p dụng mức giảm gi&aacute; tr&ecirc;n web tối đa kh&ocirc;ng vượt qu&aacute; 30%.</span></li>\n                        </ul>\n                        <ul>\n                           <li><span style=\"font-size: medium;\">- Đối với Nh&oacute;m h&agrave;ng s&aacute;ch <strong>thiếu nhi v&agrave; t&acirc;m l&yacute; kỹ năng: </strong>&aacute;p dụng mức giảm gi&aacute; tr&ecirc;n web tối đa kh&ocirc;ng vượt qu&aacute; 20%.</span></li>\n                        </ul>\n                        <ul>\n                           <li><span style=\"font-size: medium;\">- Đối với Nh&oacute;m h&agrave;ng s&aacute;ch <strong>từ điển v&agrave; s&aacute;ch ngoại văn : </strong>&aacute;p dụng mức giảm gi&aacute; tr&ecirc;n web tối đa kh&ocirc;ng vượt qu&aacute; 10%.</span></li>\n                        </ul>\n                        <ul>\n                           <li><span style=\"font-size: medium;\">- Đối với Nh&oacute;m h&agrave;ng <strong>văn ph&ograve;ng phẩm, đồ chơi, dụng cụ học sinh</strong>: &aacute;p dụng mức giảm gi&aacute; tr&ecirc;n web tối đa kh&ocirc;ng vượt qu&aacute; 15%.</span></li>\n                        </ul>\n                        <ul>\n                           <li><span style=\"font-size: medium;\">- Đối với Nh&oacute;m h&agrave;ng <strong>giấy photo, sản phẩm điện tử, văn h&oacute;a phẩm</strong>: &aacute;p dụng mức giảm gi&aacute; tr&ecirc;n web tối đa kh&ocirc;ng vượt qu&aacute; 5%.</span></li>\n                        </ul>\n                        <br /><span style=\"font-size: medium;\"> Qu&yacute; kh&aacute;ch c&oacute; nhu cầu mua sỉ, vui l&ograve;ng li&ecirc;n hệ phòng kinh doanh : 1900 63 64 67 hoặc Email: <a href=\"mailto:sales@.vn\">sales@.vn</a>.</span>', 'chinh-sach-hoan-tien.jpg', 'page', 'Chính Sách Hoàn Tiền', '2024-01-12 04:56:03', 0, '2024-01-27 02:12:59', 1, 1),
(3, NULL, 'CHÍNH SÁCH ĐỔI HÀNG', 'chinh-sach-doi-hang', '\n				<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n tr&acirc;n trọng sự tin tưởng v&agrave; ủng hộ của qu&yacute; kh&aacute;ch h&agrave;ng khi trải nghiệm mua h&agrave;ng tại <a href=\"http://www./\"><strong></strong></a>. Do đ&oacute; ch&uacute;ng t&ocirc;i lu&ocirc;n cố gắng ho&agrave;n thiện dịch vụ tốt nhất để phục vụ mọi nhu cầu mua sắm của qu&yacute; kh&aacute;ch.</p>\n				<p><a href=\"http://www./\"><strong></strong></a> ch&uacute;ng t&ocirc;i lu&ocirc;n lu&ocirc;n cam kết tất cả c&aacute;c sản phẩm b&aacute;n tại <a href=\"http://www./\"><strong></strong></a> 100% l&agrave; những sản phẩm chất lượng v&agrave; xuất xứ nguồn gốc r&otilde; r&agrave;ng, hợp ph&aacute;p cũng như an to&agrave;n cho người ti&ecirc;u d&ugrave;ng. Để việc mua sắm của qu&yacute; kh&aacute;ch tại <a href=\"http://www./\"><strong></strong></a> l&agrave; trải nghiệm dịch vụ th&acirc;n thiện, ch&uacute;ng t&ocirc;i hy vọng qu&yacute; kh&aacute;ch sẽ kiểm tra kỹ c&aacute;c nội dung sau trước khi nhận h&agrave;ng:&nbsp;</p>\n				<ul>\n					<li>\n						<p>Th&ocirc;ng tin sản phẩm: t&ecirc;n sản phẩm v&agrave; chất lượng sản phẩm.</p>\n					</li>\n					<li>\n						<p>Số lượng sản phẩm.</p>\n					</li>\n					<li>\n					</li>\n				</ul>\n				<p>Trong trường hợp hiếm hoi sản phẩm qu&yacute; kh&aacute;ch nhận được c&oacute; khiếm khuyết, hư hỏng hoặc kh&ocirc;ng như m&ocirc; tả,  cam kết bảo vệ kh&aacute;ch h&agrave;ng bằng ch&iacute;nh s&aacute;ch đổi trả/ ho&agrave;n tiền tr&ecirc;n tinh thần bảo vệ quyền lợi người ti&ecirc;u d&ugrave;ng nhằm cam kết với qu&yacute; kh&aacute;ch về chất lượng sản phẩm v&agrave; dịch vụ của ch&uacute;ng t&ocirc;i.</p>\n				<p>Khi qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; h&agrave;ng h&oacute;a mua tại <a href=\"http://www./\"><strong></strong></a>cần đổi/ trả/bảo h&agrave;nh/ho&agrave;n tiền, xin qu&yacute; kh&aacute;ch h&agrave;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline <strong>0378173109</strong> hoặc truy cập <a href=\"http://www./chinh-sach-doi-tra-hang\"><strong>/chinh-sach-doi-tra-hang</strong></a> để t&igrave;m hiểu th&ecirc;m về ch&iacute;nh s&aacute;ch đổi/trả:<a style=\"background-color: #ffffff;\" name=\"_GoBack\"></a></p>\n				<strong>1. Thời gian &aacute;p dụng đổi/trả</strong><br />\n				<table style=\"width: 772px;\" cellspacing=\"1\" cellpadding=\"1\">\n					<tbody>\n						<tr>\n							<td>\n								<p>&nbsp;</p>\n							</td>\n							<td>\n								<p><strong>KỂ TỪ KHI </strong><strong> </strong><strong>GIAO H&Agrave;NG TH&Agrave;NH C&Ocirc;NG</strong></p>\n							</td>\n							<td>\n								<p><strong>SẢN PHẨM LỖI<br /> (do nh&agrave; cung cấp)</strong></p>\n							</td>\n							<td>\n								<p><strong>SẢN PHẨM KH&Ocirc;NG LỖI&nbsp;(*)</strong></p>\n							</td>\n							<td>\n								<p><strong>SẢN PHẨM LỖI DO NGƯỜI SỬ DỤNG</strong></p>\n							</td>\n						</tr>\n						<tr>\n							<td rowspan=\"4\">\n								<p>Sản phẩm Điện tử, Đồ chơi điện - điện tử, điện gia dụng,... (c&oacute; tem phiếu bảo h&agrave;nh từ nh&agrave; cung cấp)</p>\n							</td>\n							<td rowspan=\"2\">\n								<p>7 ng&agrave;y đầu ti&ecirc;n</p>\n							</td>\n							<td>\n								<p>Đổi mới</p>\n							</td>\n							<td rowspan=\"3\">\n								<p>Trả h&agrave;ng kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n							<td rowspan=\"4\">\n								<p>Bảo h&agrave;nh hoặc sửa chữa c&oacute; thu ph&iacute; theo quy định của nh&agrave; cung cấp.</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>Trả kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>8 - 30 ng&agrave;y</p>\n							</td>\n							<td>\n								<p>Bảo h&agrave;nh</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>30 ng&agrave;y trở đi</p>\n							</td>\n							<td>\n								<p>Bảo h&agrave;nh</p>\n							</td>\n							<td>\n								<p>Kh&ocirc;ng hỗ trợ đổi/ trả</p>\n							</td>\n						</tr>\n						<tr>\n							<td rowspan=\"3\">\n								<p>Voucher/ E-voucher</p>\n							</td>\n							<td rowspan=\"2\">\n								<p>30 ng&agrave;y đầu ti&ecirc;n</p>\n							</td>\n							<td>\n								<p>Đổi mới</p>\n							</td>\n							<td rowspan=\"2\">\n								<p>Kh&ocirc;ng hỗ trợ đổi/ trả</p>\n							</td>\n							<td rowspan=\"2\">\n								<p>Kh&ocirc;ng hỗ trợ đổi/ trả</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>Trả h&agrave;ng kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>30 ng&agrave;y trở đi</p>\n							</td>\n							<td colspan=\"3\">\n								<p>Kh&ocirc;ng hỗ trợ đổi trả</p>\n							</td>\n						</tr>\n						<tr>\n							<td rowspan=\"3\">\n								<p>Đối với c&aacute;c ng&agrave;nh h&agrave;ng c&ograve;n lại</p>\n							</td>\n							<td rowspan=\"2\">\n								<p>30 ng&agrave;y đầu ti&ecirc;n</p>\n							</td>\n							<td>\n								<p>Đổi mới</p>\n							</td>\n							<td rowspan=\"2\">\n								<p>Trả h&agrave;ng kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n							<td rowspan=\"3\">\n								<p>Kh&ocirc;ng hỗ trợ đổi/ trả</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>Trả kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>30 ng&agrave;y trở đi</p>\n							</td>\n							<td colspan=\"2\">\n								<p>Kh&ocirc;ng hỗ trợ đổi/ trả</p>\n							</td>\n						</tr>\n					</tbody>\n				</table>\n				<p>&nbsp;</p>\n				<ul>\n					<li>\n						<p>Quý khách vui lòng thông báo về cho  ngay khi:</p>\n						<p>		+ Kiện hàng giao tới ngoại quan bên ngoài có dấu hiệu hư hại , sản phẩm bên trong trầy xước ,gãy bìa,  rách, móp méo, ướt , bể vỡ...trong vòng 2 ngày kể từ khi nhận hàng thành công.</p>\n						<p>		+ Sản phẩm giao tới bị sai hàng , giao thiếu hàng trong vòng 2 ngày kể từ khi nhận hàng thành công.</p>\n					</li>\n					<li>\n						<p>Sau khi  x&aacute;c nhận mail tiếp nhận y&ecirc;u cầu kiểm tra xử l&yacute;,  sẽ li&ecirc;n hệ đến qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin hoặc nhờ bổ sung th&ocirc;ng tin (nếu c&oacute;). Trường hợp kh&ocirc;ng li&ecirc;n hệ được  rất tiếc xin được ph&eacute;p từ chối xử l&yacute; y&ecirc;u cầu. Thời gian  li&ecirc;n hệ trong giờ h&agrave;nh ch&iacute;nh tối đa 3 lần trong v&ograve;ng 7 ng&agrave;y sau khi nhận th&ocirc;ng tin y&ecirc;u cầu.</p>\n					</li>\n					<li>\n						<p>Ch&uacute;ng t&ocirc;i sẽ kiểm tra c&aacute;c trường hợp tr&ecirc;n v&agrave; giải quyết cho qu&yacute; kh&aacute;ch tối đa trong 30 ng&agrave;y l&agrave;m việc kể từ khi qu&yacute; kh&aacute;ch nhận được h&agrave;ng, qu&aacute; thời hạn tr&ecirc;n rất tiếc ch&uacute;ng t&ocirc;i kh&ocirc;ng giải quyết khiếu nại.</p>\n					</li>\n				</ul>\n				<p style=\"display: inline !important;\"><strong>2. C&aacute;c trường hợp y&ecirc;u cầu đổi trả</strong></p>\n				<ul>\n					<li>\n						<p>Lỗi kỹ thuật của sản phẩm - do nh&agrave; cung cấp (s&aacute;ch thiếu trang, s&uacute;t g&aacute;y, tr&ugrave;ng nội dung, sản phẩm điện tử, đồ chơi điện &ndash; điện tử kh&ocirc;ng hoạt động..)</p>\n					</li>\n					<li>\n						<p>Giao nhầm/ giao thiếu (thiếu sản phẩm đ&atilde; đặt, thiếu phụ kiện, thiếu qu&agrave; tặng k&egrave;m theo)</p>\n					</li>\n					<li>\n						<p>Chất lượng h&agrave;ng h&oacute;a k&eacute;m, hư hại do vận chuyển.</p>\n					</li>\n					<li>\n						<p>H&igrave;nh thức sản phẩm kh&ocirc;ng giống m&ocirc; tả ban đầu.</p>\n					</li>\n					<li>\n						<p>Qu&yacute; kh&aacute;ch đặt nhầm/ kh&ocirc;ng c&ograve;n nhu cầu (*)</p>\n					</li>\n				</ul>\n				<p>(*) Đối với c&aacute;c Sản phẩm kh&ocirc;ng bị lỗi, chỉ &aacute;p dụng khi sản phẩm đ&aacute;p ứng đủ điều kiện sau:</p>\n				<p>Qu&yacute; kh&aacute;ch&nbsp;c&oacute; thể trả lại sản phẩm đ&atilde; mua tại&nbsp;<strong></strong> trong v&ograve;ng 30 ng&agrave;y kể từ khi nhận h&agrave;ng với đa số sản phẩm khi thỏa m&atilde;n c&aacute;c điều kiện sau:</p>\n				<ul>\n					<li>\n						<p>Sản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n tem, m&aacute;c hay ni&ecirc;m phong của nh&agrave; sản xuất.</p>\n					</li>\n					<li>\n						<p>Sản phẩm c&ograve;n đầy đủ phụ kiện hoặc phiếu bảo h&agrave;nh c&ugrave;ng qu&agrave; tặng k&egrave;m theo (nếu c&oacute;).</p>\n					</li>\n					<li>\n						<p>Nếu l&agrave; sản phẩm điện &ndash; điện tử th&igrave; chưa bị k&iacute;ch hoạt, chưa c&oacute; sao ghi dữ liệu v&agrave;o thiết bị.</p>\n					</li>\n				</ul>\n				<strong>3. Điều kiện đổi trả</strong><br />\n				<p><strong></strong> hỗ trợ đổi/ trả sản phẩm cho qu&yacute; kh&aacute;ch nếu:</p>\n				<ul>\n					<li>\n						<p>Sản phẩm c&ograve;n nguy&ecirc;n bao b&igrave; như hiện trạng ban đầu.</p>\n					</li>\n					<li>\n						<p>Sản phầm c&ograve;n đầy đủ phụ kiện, qu&agrave; tặng khuyến m&atilde;i k&egrave;m theo.</p>\n					</li>\n					<li>\n						<p>H&oacute;a đơn GTGT (nếu c&oacute;).</p>\n					</li>\n					<li>\n						<p>Cung cấp đầy đủ th&ocirc;ng tin đối chứng theo y&ecirc;u cầu (điều 4).</p>\n					</li>\n				</ul>\n				<p style=\"display: inline !important;\"><strong>4. Quy tr&igrave;nh đổi trả</strong></p>\n				<ul>\n					<li>\n						<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng tin đơn h&agrave;ng cần hỗ trợ đổi trả theo Hotline 0378173109 hoặc email về địa chỉ: <strong>cskh@.vn</strong> với ti&ecirc;u đề <strong>&ldquo;Đổi Trả Đơn H&agrave;ng \" M&atilde; đơn h&agrave;ng\".</strong></p>\n					</li>\n					<li>\n						<p>Qu&yacute; kh&aacute;ch cần cung cấp đ&iacute;nh k&egrave;m th&ecirc;m c&aacute;c bằng chứng để đối chiếu/ khiếu nại sau:</p>\n					</li>\n				</ul>\n				<p style=\"padding-left: 60px;\">+ Video clip quay rõ các mặt của kiện hàng trước khi khui để thể hiện tình trạng của kiện hàng.</p>\n				<p style=\"padding-left: 60px;\">+ Video clip mở kiện h&agrave;ng từ l&uacute;c bắt đầu khui ngoại quan đến kiểm tra sản phẩm b&ecirc;n trong thùng hàng.</p>\n				<p style=\"padding-left: 60px;\">+ Video quay rõ nét , không mờ , nhoè, thể hiện đầy đủ thông tin mã đơn hàng và quay cận cảnh lỗi của sản phẩm.</p>\n				<p style=\"padding-left: 60px;\">+ H&igrave;nh chụp tem kiện h&agrave;ng c&oacute; thể hiện m&atilde; đơn h&agrave;ng.</p>\n				<p style=\"padding-left: 60px;\">+ H&igrave;nh chụp t&igrave;nh trạng ngoại quan (băng keo, seal, h&igrave;nh dạng th&ugrave;ng h&agrave;ng, bao b&igrave;), đặc biệt c&aacute;c vị tr&iacute; nghi ngờ c&oacute; t&aacute;c động đến sản phẩm (m&oacute;p m&eacute;o, ướt, r&aacute;ch...)</p>\n				<p style=\"padding-left: 60px;\">+ H&igrave;nh chụp t&igrave;nh trạng sản phẩm b&ecirc;n trong, n&ecirc;u r&otilde; lỗi kỹ thuật nếu c&oacute;.</p>\n				<ul>\n					<li>Để đảm bảo quyền lợi kh&aacute;ch h&agrave;ng v&agrave; để <strong></strong> c&oacute; cơ sở l&agrave;m việc với c&aacute;c bộ phận li&ecirc;n quan, tất cả y&ecirc;u cầu đổi/ trả/ bảo h&agrave;nh qu&yacute; kh&aacute;ch cần cung cấp h&igrave;nh ảnh/ clip sản phẩm lỗi. Qu&aacute; thời gian đổi/ trả sản phẩm nếu chưa nhận được đủ h&igrave;nh ảnh/ clip từ qu&yacute; kh&aacute;ch, <strong></strong> xin ph&eacute;p từ chối hỗ trợ.</li>\n				</ul>\n				<table style=\"width: 756px;\" cellspacing=\"0\" cellpadding=\"7\">\n					<tbody>\n						<tr>\n							<td>\n								<p><strong>STT</strong></p>\n							</td>\n							<td>\n								<p><strong>Nội dung</strong></p>\n							</td>\n							<td>\n								<p><strong>C&aacute;ch thức giải quyết</strong></p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>1</p>\n							</td>\n							<td>\n								<p>Lỗi kỹ thuật của sản phẩm - do nh&agrave; cung cấp (s&aacute;ch thiếu trang, s&uacute;t g&aacute;y, tr&ugrave;ng nội dung, sản phẩm điện tử kh&ocirc;ng hoạt động..)</p>\n							</td>\n							<td>\n								<p> c&oacute; sản phẩm&rarr; đổi mới c&ugrave;ng sản phẩm</p>\n								<p> hết h&agrave;ng&rarr; Ho&agrave;n tiền hoặc qu&yacute; kh&aacute;ch c&oacute; thể chọn mặt h&agrave;ng kh&aacute;c <span style=\"text-decoration: underline;\"></span>.</p>\n								<p>Đổi/trả kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>2</p>\n							</td>\n							<td>\n								<p>Sản phẩm hỏng do qu&yacute; kh&aacute;ch</p>\n							</td>\n							<td>\n								<p>Kh&ocirc;ng hỗ trợ đổi/ trả</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>3</p>\n							</td>\n							<td>\n								<p>L&yacute; do đổi/trả sản phẩm như: kh&aacute;ch đặt nhầm hoặc kh&ocirc;ng c&ograve;n nhu cầu.</p>\n							</td>\n							<td>\n								<p>&nbsp;</p>\n								<p>Hỗ trợ thu hồi v&agrave; ho&agrave;n tiền 100% gi&aacute; trị sản phẩm cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>\n								<p>**Lưu &yacute;:  rất tiếc sẽ kh&ocirc;ng hỗ trợ ho&agrave;n lại chi ph&iacute; vận chuyển trong đơn h&agrave;ng cho trường hợp n&agrave;y.</p>\n								<p>Đổi /trả kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>4</p>\n							</td>\n							<td>\n								<p>Giao nhầm/ giao thiếu (thiếu sản phẩm đ&atilde; đặt, thiếu phụ kiện, thiếu qu&agrave; tặng k&egrave;m theo)</p>\n							</td>\n							<td>\n								<p>Giao nhầm &rarr; Đổi lại đ&uacute;ng sản phẩm đ&atilde; đặt.</p>\n								<p>Giao thiếu &rarr; Giao b&ugrave; th&ecirc;m số lượng c&ograve;n thiếu theo đơn h&agrave;ng.</p>\n								<p>Đổi /trả kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>5</p>\n							</td>\n							<td>\n								<p>Chất lượng h&agrave;ng h&oacute;a k&eacute;m do vận chuyển</p>\n							</td>\n							<td>\n								<p>Khi qu&yacute; kh&aacute;ch h&agrave;ng nhận g&oacute;i h&agrave;ng bị m&oacute;p m&eacute;o, ướt, ch&uacute;ng t&ocirc;i khuyến c&aacute;o kh&aacute;ch h&agrave;ng n&ecirc;n kiểm tra thực tế h&agrave;ng h&oacute;a b&ecirc;n trong ngay thời điểm nhận h&agrave;ng, vui l&ograve;ng phản ảnh hiện trang h&agrave;ng h&oacute;a l&ecirc;n bill nhận h&agrave;ng từ ph&iacute;a nh&acirc;n vi&ecirc;n giao nhận v&agrave; li&ecirc;n lạc với ch&uacute;ng t&ocirc;i về hotline 1900-636467 trong v&ograve;ng 48 giờ để được hỗ trợ giải quyết cụ thể.</p>\n								<p>Đổi /trả kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>6</p>\n							</td>\n							<td>\n								<p>H&igrave;nh thức sản phẩm kh&ocirc;ng giống m&ocirc; tả ban đầu</p>\n							</td>\n							<td>\n								<p>H&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số hotline 0378173109, ch&uacute;ng t&ocirc;i sẵn s&agrave;ng lắng nghe v&agrave; giải quyết cho bạn (cụ thể theo từng trường hợp).</p>\n								<p>Đổi /trả kh&ocirc;ng thu ph&iacute;</p>\n							</td>\n						</tr>\n					</tbody>\n				</table>\n				<p>&nbsp;</p>\n				<p style=\"display: inline !important;\"><strong>5. C&aacute;ch thức chuyển sản phẩm đổi trả về </strong><a href=\"http://www./\"><strong></strong></a></p>\n				<ul>\n					<li>\n						<p>Khi y&ecirc;u cầu đổi trả được giải quyết, qu&yacute; kh&aacute;ch vui l&ograve;ng đ&oacute;ng g&oacute;i sản phẩm như hiện trạng khi nhận h&agrave;ng ban đầu (bao gồm sản phẩm, qu&agrave; tặng, phụ kiện k&egrave;m theo sản phẩm,&hellip;nếu c&oacute;).</p>\n					</li>\n					<li>\n						<p>H&oacute;a đơn gi&aacute; trị gia tăng của <a href=\"http://www./\"><strong></strong></a> (nếu c&oacute;).</p>\n					</li>\n					<li>\n						<p>Phụ kiện đi k&egrave;m sản phẩm v&agrave; qu&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;).</p>\n					</li>\n					<li>\n						<p>Qu&yacute; kh&aacute;ch cần quay video clip đ&oacute;ng g&oacute;i sản phẩm để l&agrave;m bằng chứng đối chiếu/ khiếu nại li&ecirc;n quan đến đổi trả về sau (nếu cần).</p>\n					</li>\n					<li>\n						<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chịu tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm khi gửi về <a href=\"http://www./\"><strong></strong></a><strong>.</strong><strong>&nbsp;</strong></p>\n					</li>\n					<li>\n						<p>Sau khi nhận được sản phẩm qu&yacute; kh&aacute;ch gởi về, <a href=\"http://www./\"><strong></strong></a> sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến qu&yacute; kh&aacute;ch qua điện thoại/email .</p>\n					</li>\n				</ul>\n				<p><strong>Lưu &yacute; kh&aacute;c:</strong></p>\n				<p>(*) C&aacute;c sản phẩm thuộc \"Phi&ecirc;n chợ s&aacute;ch cũ\", \"Sách cũ đồng giá\" sẽ kh&ocirc;ng được &aacute;p dụng ch&iacute;nh s&aacute;ch đổi trả của <strong></strong>.</p>\n				<p>(*) Nếu qu&yacute; kh&aacute;ch hủy đơn h&agrave;ng cũ, đ&atilde; thanh to&aacute;n th&agrave;nh c&ocirc;ng, m&agrave; kh&ocirc;ng c&oacute; nhu cầu đặt lại đơn h&agrave;ng kh&aacute;c, hoặc qu&yacute; kh&aacute;ch y&ecirc;u cầu trả h&agrave;ng ho&agrave;n tiền &rarr; ch&uacute;ng t&ocirc;i sẽ ho&agrave;n tiền lại cho qu&yacute; kh&aacute;ch qua h&igrave;nh thức thanh to&aacute;n ban đầu, đối với c&aacute;c đơn h&agrave;ng qu&yacute; kh&aacute;ch thanh to&aacute;n bằng tiền mặt sẽ được ho&agrave;n qua t&agrave;i khoản Ng&acirc;n h&agrave;ng do qu&yacute; kh&aacute;ch chỉ định</p>\n				<p>Thời gian ho&agrave;n tiền được quy định tại Điều 6.</p>\n				<p>(*) Kh&ocirc;ng &aacute;p dụng đổi / trả / ho&agrave;n tiền đối với mặt h&agrave;ng Chăm S&oacute;c C&aacute; Nh&acirc;n v&agrave; c&aacute;c Đơn H&agrave;ng B&aacute;n Sỉ.</p>\n				<p><strong>6. Thời gian ho&agrave;n tiền</strong></p>\n				<ul>\n					<li>\n						<p>Đối với những đơn h&agrave;ng thanh to&aacute;n trả trước: sau khi cập nhật hủy, thời gian ho&agrave;n tiền sẽ t&ugrave;y thuộc v&agrave;o phương thức thanh to&aacute;n. Qu&yacute; kh&aacute;ch vui l&ograve;ng tham khảo thời gian ho&agrave;n tiền như sau:<br /> &nbsp;</p>\n					</li>\n				</ul>\n				<table style=\"width: 508px;\" cellspacing=\"1\" cellpadding=\"1\">\n					<tbody>\n						<tr>\n							<td>\n								<p><strong>Phương thức thanh to&aacute;n</strong></p>\n							</td>\n							<td>\n								<p><strong>Thời gian ho&agrave;n tiền</strong></p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>ATM nội địa/ Cổng Zalo Pay/ Cổng VNPay</p>\n							</td>\n							<td>\n								<p>5 - 7 ng&agrave;y l&agrave;m việc</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>Chuyển khoản</p>\n							</td>\n							<td>\n								<p>5 - 7 ng&agrave;y l&agrave;m việc</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>Visa/ Master/ JCB</p>\n							</td>\n							<td>\n								<p>5 - 7 ng&agrave;y l&agrave;m việc (*)</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>V&iacute; Momo/ Moca/Zalopay/ShopeePay</p>\n							</td>\n							<td>\n								<p>1 - 3 ng&agrave;y l&agrave;m việc</p>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<p>Fpoint</p>\n							</td>\n							<td>\n								<p>24 giờ</p>\n							</td>\n						</tr>\n					</tbody>\n				</table>\n				<p><br /> (*) Lưu &yacute;:<br /> - Đối với thẻ Visa/ Master/ JCB,&nbsp; số tiền ho&agrave;n sẽ được ng&acirc;n h&agrave;ng chuyển v&agrave;o t&agrave;i khoản qu&yacute; kh&aacute;ch dao động 1-3 tuần l&agrave;m việc (t&ugrave;y theo ch&iacute;nh s&aacute;ch của từng ng&acirc;n h&agrave;ng).&nbsp;<br /> - Ng&agrave;y l&agrave;m việc kh&ocirc;ng bao gồm thứ 7, chủ nhật v&agrave; ng&agrave;y lễ.</p>\n				<ul>\n					<li>\n						<p>Đối với những đơn h&agrave;ng trả h&agrave;ng ho&agrave;n tiền:</p>\n					</li>\n					<li>\n						<p>Thời gian ho&agrave;n tiền được bắt đầu t&iacute;nh kể từ thời điểm  nhận được h&agrave;ng ho&agrave;n trả v&agrave; x&aacute;c nhận với qu&yacute; kh&aacute;ch về việc h&agrave;ng ho&agrave;n trả đ&aacute;p ứng c&aacute;c điều kiện trả h&agrave;ng được quy định tại ch&iacute;nh s&aacute;ch n&agrave;y. Thời gian ho&agrave;n tiền tu&acirc;n thủ theo quy định tại Mục 6 n&agrave;y.</p>\n					</li>\n					<li>\n						<p>Đối với c&aacute;c đơn h&agrave;ng ho&agrave;n tiền, h&igrave;nh thức thanh to&aacute;n của qu&yacute; kh&aacute;ch l&agrave; tiền mặt (COD):  sẽ ho&agrave;n tiền qua t&agrave;i khoản Ng&acirc;n h&agrave;ng do qu&yacute; kh&aacute;ch chỉ định.</p>\n					</li>\n				</ul>\n				<p>Trong trường hợp đ&atilde; qu&aacute; thời gian tr&ecirc;n qu&yacute; kh&aacute;ch chưa nhận được tiền ho&agrave;n, vui l&ograve;ng li&ecirc;n hệ ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ hoặc li&ecirc;n hệ bộ phận Chăm s&oacute;c kh&aacute;ch h&agrave;ng của  .&nbsp;</p>\n				<p><strong>Nếu cần hỗ trợ th&ecirc;m</strong><strong> bất k&igrave; th&ocirc;ng tin n&agrave;o, Fahasa nhờ</strong><strong> qu&yacute; kh&aacute;ch li&ecirc;n hệ trực tiếp qua</strong><strong>hotline 0378173109</strong><strong>để được hỗ trợ nhanh ch&oacute;ng.</strong></p>\n				<p>&nbsp;</p>\n				', 'chinh-sach-doi-hang.jpg', 'page', 'Chính sách đổi hàng', '2024-01-12 04:56:41', 0, '2024-01-12 04:57:53', 1, 1),
(11, NULL, 'GIỚI THIỆU', 'gioi-thieu', ' <p>\n\n               Chào mừng bạn đến với trang web bán sách của chúng tôi - nơi tận hưởng niềm đam mê đọc sách và khám phá thế giới văn hóa đa dạng. Tại đây, chúng tôi tự hào mang đến cho bạn một trải nghiệm mua sắm sách trực tuyến độc đáo, phong cách và tiện lợi.\n            </p>\n            <p>\n               Với một thư viện sách đa dạng từ các thể loại văn học, khoa học, kinh doanh đến sách thiếu nhi và nhiều hơn nữa, chúng tôi cam kết cung cấp những tác phẩm chất lượng từ các tác giả nổi tiếng cũng như những tên tuổi mới xuất sắc. Bạn có thể dễ dàng tìm kiếm, so sánh và chọn lựa những cuốn sách phù hợp với sở thích và nhu cầu của mình.\n            </p>\n            <p>\n               Ngoài ra, chúng tôi không chỉ là nơi mua sắm, mà còn là cộng đồng yêu sách, nơi bạn có thể chia sẻ đánh giá, gợi ý và thảo luận với những người đồng điệu về văn hóa đọc. Chúng tôi cam kết mang đến cho bạn không gian tương tác và trải nghiệm mua sắm trực tuyến thú vị.\n            </p>\n            <p>\n               Hãy bắt đầu hành trình đọc sách của bạn tại trang web của chúng tôi, nơi mà chúng tôi kết nối đam mê và tri thức. Cảm ơn bạn đã ghé thăm và mong rằng bạn sẽ tận hưởng mỗi chuyến phiêu lưu qua từng trang sách với chúng tôi.\n            </p>', 'post_page.png', 'page', 'Giới thiệu', '2024-01-14 14:47:41', 1, '2024-01-27 02:36:28', 1, 1),
(12, NULL, 'CHÍNH SÁCH VẬN CHUYỂN', 'chinh-sach-van-chuyen', '<p><strong>1. Một số lưu &yacute; khi nhận h&agrave;ng:</strong></p>\n<ul>\n<li>\n<p>Trước khi tiến h&agrave;nh giao h&agrave;ng cho Qu&yacute; kh&aacute;ch, bưu t&aacute; của Đối t&aacute;c vận chuyển sẽ li&ecirc;n hệ qua số điện thoại của Qu&yacute; kh&aacute;ch trước khoảng 3 đến 5 ph&uacute;t để x&aacute;c nhận giao h&agrave;ng.</p>\n</li>\n</ul>\n<ul>\n<li>\n<p>Nếu Qu&yacute; kh&aacute;ch kh&ocirc;ng thể c&oacute; mặt trong đợt nhận h&agrave;ng thứ nhất, <strong></strong> sẽ cố gắng li&ecirc;n lạc lại th&ecirc;m &iacute;t nhất 2 lần nữa (trong 02 ca giao h&agrave;ng kh&aacute;c nhau) để sắp xếp thời gian giao h&agrave;ng, Qu&yacute; kh&aacute;ch vui l&ograve;ng để &yacute; điện thoại để li&ecirc;n hệ được với bưu t&aacute; giao h&agrave;ng.</p>\n</li>\n</ul>\n<ul>\n<li>\n<p>Nếu qua 3 lần li&ecirc;n hệ giao h&agrave;ng, <strong></strong> vẫn kh&ocirc;ng thể li&ecirc;n lạc được với Qu&yacute; kh&aacute;ch để giao h&agrave;ng,  sẽ th&ocirc;ng b&aacute;o cho Qu&yacute; kh&aacute;ch về việc hủy đơn h&agrave;ng. Trong trường hợp Qu&yacute; kh&aacute;ch đ&atilde; thanh to&aacute;n trước cho đơn h&agrave;ng, Qu&yacute; kh&aacute;ch sẽ nhận lại tiền v&agrave;o t&agrave;i khoản trong v&ograve;ng 5 - 7 ng&agrave;y l&agrave;m việc, phụ thuộc v&agrave;o tiến độ xử l&yacute; của ng&acirc;n h&agrave;ng. Số tiền Qu&yacute; kh&aacute;ch nhận lại sẽ trừ lại chi ph&iacute; vận chuyển ph&aacute;t sinh từ việc giao h&agrave;ng nhưng Qu&yacute; kh&aacute;ch kh&ocirc;ng nhận h&agrave;ng.</p>\n</li>\n</ul>\n<ul>\n<li>\n<p>Trong trường hợp Qu&yacute; kh&aacute;ch kh&ocirc;ng đồng &yacute; nhận h&agrave;ng với xuất ph&aacute;t nguy&ecirc;n nh&acirc;n từ h&agrave;ng h&oacute;a của <strong></strong> kh&ocirc;ng đảm bảo, kh&ocirc;ng đ&uacute;ng như m&ocirc; tả, giao trễ so với cam kết,... Đơn h&agrave;ng của Qu&yacute; kh&aacute;ch sẽ được ho&agrave;n lại cho ch&uacute;ng t&ocirc;i v&agrave; được hủy tr&ecirc;n hệ thống <strong></strong>. Nếu Qu&yacute; kh&aacute;ch đ&atilde; thanh to&aacute;n trước cho đơn h&agrave;ng, Qu&yacute; kh&aacute;ch sẽ nhận lại tiền v&agrave;o t&agrave;i khoản trong v&ograve;ng 5 - 7 ng&agrave;y l&agrave;m việc, phụ thuộc v&agrave;o tiến độ xử l&yacute; của ng&acirc;n h&agrave;ng. Số tiền Qu&yacute; kh&aacute;ch nhận lại sẽ l&agrave; to&agrave;n bộ số tiền đ&atilde; thanh to&aacute;n cho đơn h&agrave;ng (bao gồm ph&iacute; vận chuyển).</p>\n</li>\n</ul>\n<ul>\n<li>\n<p>Trong trường hợp đơn h&agrave;ng đang giao đến Qu&yacute; kh&aacute;ch c&oacute; ngoại quan b&ecirc;n ngo&agrave;i hộp h&agrave;ng h&oacute;a c&oacute; dấu hiệu bị r&aacute;ch, m&oacute;p, ướt, thủng, mất ni&ecirc;m phong,&hellip;Qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra kỹ chất lượng sản phẩm b&ecirc;n trong trước khi nhận h&agrave;ng. Qu&yacute; kh&aacute;ch ho&agrave;n to&agrave;n c&oacute; quyền từ chối nhận h&agrave;ng v&agrave; b&aacute;o về cho ch&uacute;ng t&ocirc;i qua hotline 0378173109 để được hỗ trợ giao lại đơn h&agrave;ng mới hoặc hủy đơn h&agrave;ng, ho&agrave;n tiền.</p>\n</li>\n</ul>\n<ul>\n<li>\n<p>Trong trường hợp Qu&yacute; kh&aacute;ch kh&ocirc;ng c&oacute; nhu cầu nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; thể b&aacute;o với b&ecirc;n vận chuyển v&agrave;/hoặc CSKH (qua Hotline 0378173109) về việc n&agrave;y. Đơn h&agrave;ng của Qu&yacute; kh&aacute;ch sẽ được ho&agrave;n lại cho ch&uacute;ng t&ocirc;i v&agrave; được hủy tr&ecirc;n hệ thống. Trong trường hợp Qu&yacute; kh&aacute;ch đ&atilde; thanh to&aacute;n trước cho đơn h&agrave;ng, Qu&yacute; kh&aacute;ch sẽ nhận lại tiền v&agrave;o t&agrave;i khoản trong v&ograve;ng 5 - 7 ng&agrave;y l&agrave;m việc, phụ thuộc v&agrave;o tiến độ xử l&yacute; của ng&acirc;n h&agrave;ng. Số tiền Qu&yacute; kh&aacute;ch nhận lại sẽ trừ lại chi ph&iacute; vận chuyển ph&aacute;t sinh từ việc giao h&agrave;ng nhưng Qu&yacute; kh&aacute;ch kh&ocirc;ng nhận.</p>\n</li>\n</ul>\n<ul>\n<li>\n<p><strong></strong> sẽ th&ocirc;ng b&aacute;o ngay đến Qu&yacute; kh&aacute;ch nếu c&oacute; sự chậm chễ về thời gian giao h&agrave;ng so với thời gian dự kiến ở tr&ecirc;n. Trong phạm vi ph&aacute;p luật cho ph&eacute;p, ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm cho bất cứ tổn thất n&agrave;o, c&aacute;c khoản nợ, thiệt hại hoặc chi ph&iacute; ph&aacute;t sinh từ việc giao h&agrave;ng trễ. Trường hợp ph&aacute;t sinh chậm trễ trong việc giao h&agrave;ng, nếu Qu&yacute; kh&aacute;ch kh&ocirc;ng c&ograve;n nhu cầu nhận h&agrave;ng, <strong></strong> cam kết sẽ hỗ trợ Qu&yacute; kh&aacute;ch hủy đơn h&agrave;ng, nếu Qu&yacute; kh&aacute;ch đ&atilde; thanh to&aacute;n trước cho đơn h&agrave;ng, Qu&yacute; kh&aacute;ch sẽ nhận lại tiền v&agrave;o t&agrave;i khoản trong v&ograve;ng 5 - 7 ng&agrave;y l&agrave;m việc, phụ thuộc v&agrave;o tiến độ xử l&yacute; của ng&acirc;n h&agrave;ng. Số tiền Qu&yacute; kh&aacute;ch nhận lại sẽ l&agrave; to&agrave;n bộ số tiền đ&atilde; thanh to&aacute;n cho đơn h&agrave;ng (bao gồm ph&iacute; vận chuyển).</p>\n</li>\n</ul>\n<ul>\n<li>\n<p>Sản phẩm được đ&oacute;ng g&oacute;i theo ti&ecirc;u chuẩn đ&oacute;ng g&oacute;i của <strong></strong>, nếu Qu&yacute; kh&aacute;ch c&oacute; nhu cầu đ&oacute;ng g&oacute;i đặc biệt kh&aacute;c, vui l&ograve;ng b&aacute;o trước cho ch&uacute;ng t&ocirc;i khi đặt h&agrave;ng h&agrave;ng v&agrave; cho ph&eacute;p ch&uacute;ng t&ocirc;i được t&iacute;nh th&ecirc;m ph&iacute; cho nhu cầu đặc biệt n&agrave;y.</p>\n</li>\n</ul>\n<ul>\n<li>\n<p>Mọi th&ocirc;ng tin về việc thay đổi sản phẩm hay hủy bỏ đơn h&agrave;ng, đề nghị Qu&yacute; kh&aacute;ch th&ocirc;ng b&aacute;o sớm để <strong></strong> c&oacute; thể điều chỉnh lại đơn h&agrave;ng. Qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua số điện thoại hotline: 0378173109 hoặc qua địa chỉ email <a href=\"mailto:cskh@.vn\">cskh@.vn</a>.</p>\n</li>\n</ul>\n<p>&nbsp;</p>\n<strong>2. Tra cứu th&ocirc;ng tin vận chuyển đơn h&agrave;ng</strong><strong>:</strong><strong><br /></strong>\n<p>&nbsp;<strong></strong> sử dụng dịch vụ giao h&agrave;ng của c&aacute;c Đối t&aacute;c vận chuyển để thực hiện giao đơn h&agrave;ng đến Qu&yacute; kh&aacute;ch.</p>\n<p>Qu&yacute; kh&aacute;ch ho&agrave;n to&agrave;n c&oacute; thể tự tra cứu th&ocirc;ng tin lộ tr&igrave;nh vận chuyển Đơn h&agrave;ng bằng 02 c&aacute;ch sau đ&acirc;y:</p>\n<ul>\n<li>\n<p>Qu&yacute; kh&aacute;ch tự truy cập trang web tra cứu th&ocirc;ng tin của c&aacute;c Đối t&aacute;c vận chuyển, nhập m&atilde; vận đơn để tiến h&agrave;nh tra cứu.</p>\n</li>\n<li>\n<p>Qu&yacute; kh&aacute;ch li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của <strong></strong> qua hotline 0378173109 để được hỗ trợ tra cứu t&igrave;nh h&igrave;nh vận chuyển đơn h&agrave;ng.</p>\n</li>\n</ul>\n<p><strong></strong> cung cấp địa chỉ website của c&aacute;c Đối t&aacute;c vận chuyển để Qu&yacute; kh&aacute;ch tra cứu t&igrave;nh h&igrave;nh vận chuyển đơn h&agrave;ng:</p>\n<ul>\n<li>\n<p><strong>C&ocirc;ng ty Cổ Phần dịch vụ Giao h&agrave;ng nhanh</strong></p>\n</li>\n<li>\n<p><strong>C&ocirc;ng ty Cổ phần chuyển ph&aacute;t nhanh Snappy</strong></p>\n</li>\n<li>\n<p><strong>Tổng c&ocirc;ng ty Bưu Điện Việt Nam &ndash; Vietnam Post</strong></p>\n</li>\n<li>\n<p><strong>C&ocirc;ng ty Cổ phần Dịch Vụ Tức Thời &ndash; Ahamove</strong></p>\n</li>\n<li>\n<p><strong>C&ocirc;ng Ty TNHH Nin Sing Logistics (NINJA VAN)</strong></p>\n</li>\n</ul>', '', 'page', NULL, '2024-01-16 13:26:22', 1, NULL, 1, 1),
(16, 1, 'Lễ hội Đường sách Tết sẽ có lì xì sách', 'duong-sach', '<div>\r\n    <h4>Tiếp nối thành công sau 13 năm tổ chức, Lễ hội Đường sách tết Giáp Thìn năm 2024 tại TP.HCM với chủ đề \'Xuân yêu thương - Tết sum vầy\' sẽ có 52 hoạt động, trong đó có nhiều chương trình chưa từng có..</h4>\r\n    <p>Theo Ban tổ chức, Lễ hội Đường sách tết Giáp Thìn sẽ khai mạc vào 17 giờ ngày 7.2 (nhằm ngày 28 tháng chạp) và kéo dài xuyên suốt đến hết ngày 14.2 (mùng 5 tết) tại tuyến đường Lê Lợi (từ Nguyễn Huệ đến bùng binh Quách Thị Trang), Q.1, TP.HCM.</p>\r\n    <img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/1/9/linh-vat1-17047979227791564276153.png\" style=\"max-width: 800px; align-items: center;\">\r\n    <p>Lễ hội Đường sách tết Giáp Thìn 2024 mở rộng quy mô so với năm 2023, với tổng diện tích lên đến 11.200 m2, được chia thành 3 khu vực chính:</p>\r\n    <p>Khu A (từ đường Nguyễn Huệ đến Pasteur): diễn ra lễ khai mạc và nhiều nội dung trưng bày, triển lãm đặc sắc như triển lãm, giới thiệu các tác phẩm, bài thơ chúc tết, bài báo của Chủ tịch Hồ Chí Minh được viết vào năm 1954, năm 1964; các tác phẩm đạt giải thưởng sáng tác, quảng bá tác phẩm văn học, nghệ thuật, báo chí với chủ đề Học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh; trưng bày, triển lãm các tác phẩm, sách của các nhà cách mạng tiền bối, các đồng chí lãnh đạo Đảng và nhà nước các thời kỳ; triển lãm báo xuân và giới thiệu sách của các cơ quan báo chí và những người làm báo đến người dân và du khách; triển lãm tư liệu, hình ảnh, tác phẩm nhân kỷ niệm 70 năm chiến thắng Điện Biên Phủ, 80 năm ngày thành lập Quân đội nhân dân Việt Nam, 120 năm ngày sinh đồng chí Trần Phú và giới thiệu các tác phẩm đặc sắc đoạt giải của chương trình Người Việt yêu sử Việt.</p>\r\n    <h4>Nhiều hoạt động hấp dẫn trong những ngày xuân</h4>\r\n    <p>Tại lễ hội còn có triển lãm những hình ảnh, tư liệu, ấn phẩm mới về những công trình tiêu biểu của TP.HCM; giới thiệu, trưng bày những tác phẩm đạt giải, tác phẩm ấn tượng trong hội thi Công dân thành phố với hành trình văn hóa TP.HCM năm 2023; giới thiệu, trưng bày những tác phẩm đạt giải, tác phẩm ấn tượng trong hội thi thiết kế sản phẩm đồ họa thông tin tuyên truyền nghị quyết 98/2023/QH15 của Quốc hội về thí điểm một số cơ chế, chính sách đặc thù phát triển TP.HCM; cuộc thi Lắng nghe người dân hiến kế lần 5 của Báo Người Lao động.</p>\r\n    <img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/1/9/screenshot-455-1704797922724121141819.png\" style=\"max-width: 800px; align-items: center;\">\r\n    </div>\r\n', 'post-3.jpg', 'post', '', '2024-01-16 13:26:22', 1, NULL, 1, 1),
(17, 1, 'Đưa sách hay đến với học sinh', 'sach-hay', '<div>\r\n    <h3>Hầu như trường nào cũng có thư viện nhưng danh mục sách vẫn còn nghèo nàn. Vì thế, những chương trình vận động đóng góp sách để xây dựng tủ sách là rất cần thiết.</h3>\r\n    <p>Là một thành viên trong nhóm những người vận động xây dựng chuỗi Thư viện Đặng Thùy Trâm, tôi rất cảm kích trước sáng kiến này của những anh chị em khởi xướng. Tôi rất vinh dự được giới thiệu câu chuyện này qua các phương tiện truyền thông báo chí để mọi người có cơ hội hưởng ứng và đóng góp xây dựng những thư viện sách, cho học sinh và mọi người yêu sách có thể đọc được những quyển sách hay nhất, bổ ích nhất.</p>\r\n    <img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/9/thu-vien-1-1704780019244593873921.jpg\" style=\"max-width: 800px;\">\r\n    <p>Hiện hầu như trường nào cũng có thư viện, nhưng danh mục sách ở đó rất nghèo nàn. Mục đích của chúng tôi khi vận động xây dựng chuỗi thư viện Đặng Thùy Trâm không phải là xây cất ngoại thất và nội thất thư viện, mà chủ yếu là tặng những quyển sách hay, đáng đọc cho các em học sinh đọc sách, lâu dần sẽ tạo cho các em thói quen đọc sách. Đọc một quyển sách hay có thể thay đổi cả cuộc đời, đó là câu chuyện có thật từ cựu Tổng thống Mỹ Barack Obama.</p>\r\n    <p>Khi Việt Nam chúng ta đã có \"Ngày sách\", ngày đọc sách, thì không phải chỉ đọc sách trong ngày ấy, những ngày khác lại không đọc. Đọc sách là một thói quen được xây dựng một cách kiên trì, và người đọc cũng phải yêu sách, thích đọc sách thường xuyên, mới xây dựng được văn hóa đọc sách cho một quốc gia.</p>\r\n\r\n    <p>Vừa rồi, gia đình tôi đã mua sách đủ trang bị cho một thư viện ở Trường THCS Nam Đàn huyện Mộ Đức (Quảng Ngãi), quê hương tôi. Sự nhiệt tình của lãnh đạo huyện Mộ Đức, của Hiệu trưởng Trường Nam Đàn đã cổ vũ chúng tôi làm công việc này rất nhanh và có hiệu quả cao.</p>\r\n    <p>Mới đây, gia đình tôi tiếp tục tặng \"Tủ sách Đặng Thùy Trâm\" cho Trường THCS Lê Hồng Phong thuộc phường Hương Long, TP.Huế, từ một lý do rất tình cảm vì trường này ở ngay trên làng quê vợ tôi.</p>\r\n    <img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/9/thu-vien-2-17047800601681261655859.jpg\" style=\"max-width: 800px;\">\r\n    </div>\r\n<div>\r\n    <h3>Hầu như trường nào cũng có thư viện nhưng danh mục sách vẫn còn nghèo nàn. Vì thế, những chương trình vận động đóng góp sách để xây dựng tủ sách là rất cần thiết.</h3>\r\n    <p>Là một thành viên trong nhóm những người vận động xây dựng chuỗi Thư viện Đặng Thùy Trâm, tôi rất cảm kích trước sáng kiến này của những anh chị em khởi xướng. Tôi rất vinh dự được giới thiệu câu chuyện này qua các phương tiện truyền thông báo chí để mọi người có cơ hội hưởng ứng và đóng góp xây dựng những thư viện sách, cho học sinh và mọi người yêu sách có thể đọc được những quyển sách hay nhất, bổ ích nhất.</p>\r\n    <img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/9/thu-vien-1-1704780019244593873921.jpg\" style=\"max-width: 800px; align-items: center;\">\r\n    <p>Hiện hầu như trường nào cũng có thư viện, nhưng danh mục sách ở đó rất nghèo nàn. Mục đích của chúng tôi khi vận động xây dựng chuỗi thư viện Đặng Thùy Trâm không phải là xây cất ngoại thất và nội thất thư viện, mà chủ yếu là tặng những quyển sách hay, đáng đọc cho các em học sinh đọc sách, lâu dần sẽ tạo cho các em thói quen đọc sách. Đọc một quyển sách hay có thể thay đổi cả cuộc đời, đó là câu chuyện có thật từ cựu Tổng thống Mỹ Barack Obama.</p>\r\n    <p>Khi Việt Nam chúng ta đã có \"Ngày sách\", ngày đọc sách, thì không phải chỉ đọc sách trong ngày ấy, những ngày khác lại không đọc. Đọc sách là một thói quen được xây dựng một cách kiên trì, và người đọc cũng phải yêu sách, thích đọc sách thường xuyên, mới xây dựng được văn hóa đọc sách cho một quốc gia.</p>\r\n\r\n    <p>Vừa rồi, gia đình tôi đã mua sách đủ trang bị cho một thư viện ở Trường THCS Nam Đàn huyện Mộ Đức (Quảng Ngãi), quê hương tôi. Sự nhiệt tình của lãnh đạo huyện Mộ Đức, của Hiệu trưởng Trường Nam Đàn đã cổ vũ chúng tôi làm công việc này rất nhanh và có hiệu quả cao.</p>\r\n    <p>Mới đây, gia đình tôi tiếp tục tặng \"Tủ sách Đặng Thùy Trâm\" cho Trường THCS Lê Hồng Phong thuộc phường Hương Long, TP.Huế, từ một lý do rất tình cảm vì trường này ở ngay trên làng quê vợ tôi.</p>\r\n    <img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/9/thu-vien-2-17047800601681261655859.jpg\" style=\"max-width: 800px; align-items: center;\">\r\n    </div>\r\n', 'post-2.jpg', 'post', NULL, '2024-04-19 17:31:39', 1, NULL, 1, 1),
(18, 2, 'Năm 2024, sẽ in khoảng 30.000 sách cho trẻ em vùng núi, vùng sâu vùng xa', 'sach-moi-nam-2024', '<div>\r\n    <h5><b>Chủ tịch Hội Nhà văn Việt Nam Nguyễn Quang Thiều cho biết, năm 2024, Hội dự kiến sẽ in và tổ chức tặng 30.000 bản sách thiếu nhi cho trẻ em miền núi, vùng sâu vùng xa.</b></h5>\r\n    <img src=\"https://imgchinhsachcuocsong.vnanet.vn/MediaUpload/Org/2024/01/26/200637-hoi-nv-260124.jpg\" style=\"max-width: 800px; align-items: center;\">\r\n    <br>\r\n    <p>TTXVN - Ngày 26/1, tại Hội nghị triển khai công tác văn học năm 2024 và Lễ kết nạp hội viên Hội Nhà văn Việt Nam, Chủ tịch Hội Nhà văn Việt Nam Nguyễn Quang Thiều cho biết: Trong năm 2024, Hội sẽ triển khai nhiều hoạt động cụ thể. Trước mắt, Hội đang tập trung chuẩn bị cho Ngày thơ Việt Nam lần thứ 22 diễn ra vào Rằm tháng Giêng năm Giáp Thìn tại Hoàng thành Thăng Long. Tiếp đó là trao Giải thưởng Hội Nhà văn Việt Nam năm 2023, Giải Tác giả Trẻ năm 2023, Giải Nhà văn nữ ấn tượng năm 2023; tổng kết và trao giải \"Cuộc vận động sáng tác văn học về đề tài thiếu nhi\" đợt 1 và phát động \"Cuộc vận động sáng tác văn học về đề tài thiếu nhỉ\" đợt 2 đến tháng 8/2025. Trong quý I năm 2024, Hội Nhà văn Việt Nam sẽ kiện toàn tổ chức Báo Văn nghệ, Nhà xuất bản Hội nhà văn, Bảo tàng Văn học Việt Nam, Hãng phim Hội nhà văn.</p>\r\n    <p>Theo Chủ tịch Hội Nhà văn Việt Nam Nguyễn Quang Thiều, Hội sẽ tiếp tục “Dự án sách miễn phí cho trẻ em miền núi và vùng sâu, vùng xa\" khởi xướng từ năm 2021, dự kiến in và tổ chức tặng 30.000 (3 vạn) bản sách thiếu nhi cho trẻ em miền núi, vùng sâu vùng xa trong năm 2024. Đồng thời, Hội triển khai và tổ chức hội thảo tổng kết 50 năm văn học Việt Nam kể từ ngày đất nước thống nhất bằng nhiều hình thức xuất bản, hội thảo, in sách..; tiến hành dự án in 50 tác phẩm văn học xuất sắc trong 50 năm qua.</p>\r\n    <p>Trong năm 2024, Hội Nhà văn Việt Nam dự kiến tổ chức Hội nghị văn học sông Mekong vào tháng 10/2024 tại Hà Nội với thành phần là Chủ tịch hoặc Phó Chủ tịch các Hội Nhà văn, nước thành viên trong tổ chức \"Giải thưởng văn học sông Mekong\" nhằm đánh giá hoạt động của tổ chức này sau 16 năm hoạt động và hoạch định chương trình cho giải thưởng này trong xu thế mới. Đồng thời, Hội Nhà văn Việt Nam cùng Hội nhà văn Trung Quốc tổ chức hội thảo văn học \"Viết trước những thay đổi của thế giới\"; đón đoàn nhà văn Cuba, Palestine, Hàn Quốc, Colombia...</p>\r\n    <p>Đặc biệt, năm 2024, Hội Nhà văn Việt Nam sẽ thực hiện dự án trợ giúp in sách cho các nhà văn Cuba. Dự kiến, bắt đầu từ năm 2024, Hội sẽ in mỗi năm 5 tác phẩm tiêu biểu của văn học Cuba do Hội Nhà văn Cuba tuyển chọn. Mỗi tác phẩm dự kiến in 2.000 bản và gửi tới Cuba bằng đường tàu biển.</p>\r\n    <img src=\"https://imgchinhsachcuocsong.vnanet.vn/MediaUpload/Org/2024/01/26/200739-hoi-vien2-260124.jpg\" style=\"max-width: 800px; align-items: center;\">\r\n    <br>\r\n    \r\n</div>\r\n  ', 'post-1.jpg', 'post', '', '2024-04-19 17:31:39', 1, NULL, 1, 1);
INSERT INTO `2122110588_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(19, 2, 'Lựa chọn sách giáo khoa theo quy định mới', 'lua-chon-sach-giao-khoa-theo-quy-dinh-moi', '<div>\r\n    <p><b>Theo Thông tư số 27, ngày 28-12-2023 của Bộ Giáo dục và Đào tạo (GD-ĐT) quy định việc lựa chọn sách giáo khoa (SGK) trong các cơ sở giáo dục phổ thông (có hiệu lực từ ngày 12-2), quyền lựa chọn, quyết định SGK sẽ được trao lại cho các nhà trường. Sở GD-ĐT sẽ tổ chức triển khai công tác lựa chọn SGK sau khi UBND tỉnh ban hành các tiêu chí lựa chọn.</b></p>\r\n    <p><b>Nhà trường quyết định lựa chọn sách giáo khoa</b></p>\r\n    <p>Tính từ khi triển khai Chương trình Giáo dục phổ thông 2018 đến nay, Bộ GD-ĐT đã 3 lần thay đổi quy định chọn SGK. Cụ thể, theo Thông tư số 01, ngày 30-1-2020 hướng dẫn lựa chọn SGK trong các cơ sở giáo dục phổ thông, quyền lựa chọn, quyết định SGK là của các trường, thực hiện từ năm học 2020-2021. Sau đó, Thông tư số 25, ngày 26-8-2020 (thay thế cho Thông tư 01) quy định, hội đồng lựa chọn SGK do UBND cấp tỉnh thành lập, áp dụng từ năm học 2021 - 2022. Tuy nhiên, theo kết luận của Đoàn giám sát của Ủy ban Thường vụ Quốc hội về đổi mới chương trình, SGK, quy định lựa chọn SGK phổ thông tại Thông tư số 25 chưa chặt chẽ, dẫn tới cách thức triển khai không thống nhất giữa các địa phương; tạo kẽ hở để trục lợi, cạnh tranh không lành mạnh. Vì thế, Thông tư số 27 ra đời, thay thế Thông tư số 25 đã trao lại quyền lựa chọn SGK cho các nhà trường, UBND tỉnh chỉ phê duyệt danh mục do các trường lựa chọn. Thông tư mới sẽ được áp dụng từ năm học 2024 - 2025 để lựa chọn SGK cho khối 5, 9 và 12, những khối lớp cuối cùng trong lộ trình triển khai Chương trình Giáo dục phổ thông 2018 ở các cấp học.</p>\r\n    \r\n    <img src=\"https://baokhanhhoa.vn/file/e7837c02857c8ca30185a8c39b582c03/012024/hoc_sinh_lop_9_5_thcens_ngo_quye_20240125093709_20240125163143.jpg\" style=\"max-width: 800px; align-items: center;\">\r\n    <br>\r\n    <p>Cụ thể, theo Thông tư số 27, hội đồng lựa chọn SGK của cơ sở giáo dục do người đứng đầu (hiệu trưởng nhà trường hoặc giám đốc trung tâm giáo dục thường xuyên...) thành lập, bao gồm: Người đứng đầu, cấp phó người đứng đầu, tổ trưởng tổ chuyên môn, nhóm chuyên môn, phòng chuyên môn, đại diện giáo viên, đại diện ban đại diện cha mẹ học sinh. Số lượng thành viên hội đồng là số lẻ, tối thiểu 11 người. Đối với cơ sở giáo dục có quy mô dưới 10 lớp, số lượng thành viên hội đồng tối thiểu là 5 người. Hội đồng sẽ tổ chức thẩm định biên bản các cuộc họp của tổ chuyên môn; các phiếu nhận xét, đánh giá SGK của giáo viên; danh mục SGK do các tổ chuyên môn lựa chọn; sau đó tổng hợp, đề xuất danh mục SGK với người đứng đầu. SGK được lựa chọn phải bảo đảm có từ 1/2 số giáo viên môn học trở lên bỏ phiếu lựa chọn. Nếu không đạt, tổ chuyên môn phải thảo luận, bỏ phiếu lựa chọn lại. Phòng GD-ĐT hoặc Sở GD-ĐT có trách nhiệm thẩm định hồ sơ lựa chọn SGK của các cơ sở giáo dục thuộc phạm vi quản lý. UBND tỉnh sẽ xem xét, phê duyệt danh mục SGK do các cơ sở giáo dục lựa chọn. Trước ngày 30-4 hàng năm, các cơ sở giáo dục phải thông báo danh mục SGK được phê duyệt đến giáo viên, học sinh, cha mẹ học sinh được biết.</p>\r\n    <p><b>Mong sớm có sách để nghiên cứu, lựa chọn</b></p>\r\n    <p>Vừa qua, Bộ GD-ĐT đã phê duyệt danh mục 41 SGK lớp 5; 48 SGK lớp 9 và 39 SGK lớp 12, đồng thời vẫn đang tiếp tục nhận hồ sơ đề nghị thẩm định SGK theo Chương trình Giáo dục phổ thông 2018 sử dụng từ năm học 2024 - 2025. Ông Lê Đình Thuần - Phó Giám đốc Sở GD-ĐT cho biết, các phòng GD-ĐT và cơ sở giáo dục có nhiệm vụ phổ biến, quán triệt Thông tư số 27 đến cán bộ quản lý, giáo viên để chủ động nghiên cứu. Mới đây, sở đã có văn bản đề nghị UBND tỉnh xem xét, chấp thuận để sở hoàn thiện dự thảo Quyết định quy định tiêu chí lựa chọn SGK trong cơ sở giáo dục phổ thông trên địa bàn tỉnh, dự kiến ban hành trong quý I/2024. Sau khi có quyết định của UBND tỉnh, sở sẽ tổ chức hội nghị triển khai, hướng dẫn công tác lựa chọn SGK theo quy định mới.</p>\r\n    <img src=\"https://baokhanhhoa.vn/file/e7837c02857c8ca30185a8c39b582c03/012024/img_0871_20240125093730_20240125163203.jpg\" style=\"max-width: 800px; align-items: center;\">\r\n    <p>Theo thầy Nguyễn Anh Tuấn - Hiệu trưởng Trường THCS Ngô Quyền (huyện Diên Khánh), việc trao quyền cho nhà trường lựa chọn SGK sẽ phát huy sự chủ động, nâng cao tinh thần trách nhiệm của cán bộ quản lý, giáo viên trong việc nghiên cứu, lựa chọn SGK phù hợp với điều kiện, đặc điểm từng trường. Nhà trường đã yêu cầu cán bộ, giáo viên chủ động nghiên cứu kỹ Thông tư số 27. Sau khi Phòng GD-ĐT huyện tổ chức tập huấn, trường sẽ triển khai các bước lựa chọn SGK lớp 9 theo quy định. Cô Võ Trần Thu Ngân - giáo viên Trường Tiểu học Xuân Sơn (huyện Vạn Ninh) cho rằng: “Để lựa chọn SGK lớp 5 phù hợp, giáo viên còn phải nghiên cứu SGK từ lớp 1 đến lớp 4 trong chương trình mới, từ đó có sự đối chiếu, so sánh giữa cái mới và cũ để chọn SGK lớp 5 đảm bảo tính kết nối, liên thông với các khối lớp trước. Giáo viên mong muốn sớm có sách để có thời gian đọc, nghiên cứu kỹ lưỡng, cùng nhau thảo luận để tìm ra những điểm phù hợp và chưa phù hợp với trường mình”.</p>\r\n    <br>\r\n    \r\n</div>\r\n  ', 'post-4.jpg', 'post', NULL, '2024-04-19 17:32:51', 1, NULL, 1, 1),
(20, 2, 'Mãn nhãn với những bản sách nghệ thuật', 'man-nhan-voi-nhung-ban-sach-nghe-thuat', '<div>\r\n    <p><b><i>Gần 30 ấn bản sách đẹp hiện đang được trưng bày tại Bookbinders (211 - 213 Võ Văn Tần, phường 5, quận 3, TPHCM). Chương trình mở cửa tự do để bạn đọc có cơ hội xem và thưởng thức các ấn bản giới hạn do Đông A thực hiện từ năm 2021 đến nay.</i></b></p>\r\n    <p><b>Đây là lần thứ hai Đông A tổ chức hoạt động trưng bày nhằm giới thiệu rộng rãi tới độc giả các ấn bản sách được chế tác với nhiều công đoạn thủ công. Đầu năm 2023, lần đầu tiên, Đông A trưng bày, giới thiệu các ấn bản sách giới hạn, đặc biệt (thường được gọi chung là sách S - viết tắt của từ special) tới đông đảo bạn đọc, các nhà sưu tầm và khách tham quan tại nhà sách Cá Chép (TPHCM).</b></p>\r\n    \r\n    <img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/naeyut/2024_01_25/2-khong-gian-trung-bay-3583.jpg.webp\" style=\"max-width: 800px; align-items: center;\">\r\n    <br>\r\n    <p>Trong khuôn khổ sự kiện, có gần 30 ấn bản sách đẹp được trưng bày. Trong đó, có 7 ấn bản đặc biệt S100 phát hành năm 2023 là Hoàng tử bé, Nghìn lẻ một đêm (2 tập), Gió đầu mùa & Hà Nội băm sáu phố phường, Đôi lứa xứng đôi - Nửa đêm - Cười, Việt Nam văn hóa sử cương, Ngụ ngôn La Fontaine, Đại Việt sử ký toàn thư.</p>\r\n    <p><b>Ngoài ra, ấn bản Nghệ thuật Dessin ký hiệu chữ A cũng được trưng bày trong dịp này. Đây là cuốn sách của họa sĩ Nguyễn Đình Đăng, mang đến các kiến thức về nghệ thuật và chất liệu vẽ dessin, kể từ thế kỷ XIII - XV, được tổng hợp và hệ thống hóa trong mối liên hệ mật thiết với lịch sử mỹ thuật, triết học và khoa học trong cùng một cuốn sách. Ấn phẩm này vừa được trao Giải thưởng Sách Quốc gia cuối tháng 12-2023.</b></p>\r\n    <p>Mỗi ấn bản đều có quy cách khác nhau. Đơn cử như ấn bản đặc biệt Đại Việt sử ký toàn thư có hộp sơn mài màu đỏ, bìa sách bọc bằng da dê Pháp màu vàng nghệ Curri của hãng Alran Sully...</p>\r\n    <img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/naeyut/2024_01_25/img-0505-1547.jpg.webp\" style=\"max-width: 800px; align-items: center;\">\r\n    <p>Sự kiện trưng bày sách S tại Bookbinders mở cửa từ 10 giờ đến 17 giờ hàng ngày, từ ngày 25 đến 28-1. Riêng ngày Chủ nhật (28-1), tại fanpage Đông A Gallery, Đông A sẽ tổ chức phiên đấu giá trực tuyến 8 ấn bản đặc biệt ký hiệu chữ A.</p>\r\n    <p>Một số ấn phẩm đang được trưng bày tại Bookbinders:</p>\r\n\r\n<img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/naeyut/2024_01_25/13-an-ban-dac-biet-hoang-tu-be-5891.jpg.webp\" style=\"max-width: 800px; align-items: center;\">\r\n<img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/naeyut/2024_01_25/10-an-ban-dac-biet-doi-lua-xung-doi-nua-dem-cuoi-6412.jpg.webp\" style=\"max-width: 800px; align-items: center;\">\r\n<img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/naeyut/2024_01_25/9-an-ban-dac-biet-ngu-ngon-la-fontaine-8250.jpg.webp\" style=\"max-width: 800px; align-items: center;\">\r\n<img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/naeyut/2024_01_25/8-an-ban-dac-biet-so-do-8529.jpg.webp\" style=\"max-width: 800px; align-items: center;\">\r\n<img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/naeyut/2024_01_25/5-an-ban-dac-biet-dai-viet-su-ky-toan-thu-8952.jpg.webp\" style=\"max-width: 800px; align-items: center;\">\r\n</div>\r\n  ', 'post-5.jpg', 'post', NULL, '2024-04-19 17:32:51', 1, NULL, 1, 1),
(21, 1, 'Giáo sư 86 tuổi ra mắt sách bảo vệ sức khoẻ', 'giao-su-86-tuoi-ra-mat-sach-bao-ve-suc-khoe-tu-ben-trong', '<div>\r\n    <p><b>Lễ ra mắt cuốn sách \'Dưỡng sinh phân tử\' (Nhà xuất bản Thanh Niên) của tác giả GS.TSKH Lê Đình Phái vừa diễn ra tại Hà Nội.</b></p>\r\n    <p>GS.TSKH Lê Đình Phái từ nhỏ rất hay ốm. Cuốn sách là kết quả nghiên cứu từ nhiều năm của vị giáo sư gần 90 tuổi từ thực tế bản thân.</p>\r\n    <p>“Tôi muốn tìm một phương pháp giữ gìn sức khỏe, từ đó tìm hiểu những phương pháp dưỡng sinh từ hóa sinh, kết hợp với dinh dưỡng học hiện đại để cho ra những cách thức giữ sức khỏe phù hợp nhất\", GS.TSKH Lê Đình Phái chia sẻ.</p>\r\n    <img src=\"https://static-images.vnncdn.net/files/publish/2024/1/26/af0i0404-777.jpg?width=768&s=4lpfTvsx91uyOMTXEkdplg\" style=\"max-width: 800px; align-items: center;\">\r\n    <br>\r\n    <p>Dưỡng sinh phân tử là phép chăm sóc sức khỏe phi truyền thống vì nó quan tâm bảo vệ sự sống đến tận cùng, cụ thể là bảo vệ các phân tử enzyme và protein của các màng nguyên sinh chất, màng nhân và màng ty thể các kháng thể và các hormone protein... bằng cách hạn chế tác hại thường trực của gốc acid, gốc tự do và các ion kim loại nặng.</p>\r\n    <p>Nội dung cuốn sách đề cập đến 2 vấn đề chính gồm: Đề xuất nguyên lý dưỡng sinh căn cứ trên nền tảng phân tử của sự sống và phát hiện con đường phi truyền thống để khai phá các tư tưởng tinh hoa về y học của người Việt trong các chữ Nôm.</p>\r\n    <img src=\"https://static-images.vnncdn.net/files/publish/2024/1/26/w-z5105238256252-d86dc92f3862413465e48689169fc7c4-1-778.jpg?width=768&s=pRdaDmpiI8m5T2id4Q_8lw\" style=\"max-width: 800px; align-items: center;\">\r\n    <p>Cơ sở tư tưởng của Dưỡng sinh phân tử được bắt nguồn từ nghĩa lý và triết lý, đến từ hai chữ Nôm là chữ DƯỠNG và chữ SINH. Sự phá vỡ cấu trúc các nét của hai chữ trên đã cho tác giả phát hiện được bốn viên ngọc quý. Đó cũng chính là “bảo bối” để duy trì, bảo vệ sự sống của con người gồm: dinh dưỡng, cách sống, môi trường, tâm trí.</p>\r\n\r\n</div>', 'post-6.jpg', 'post', NULL, '2024-04-19 17:33:34', 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_product`
--

CREATE TABLE `2122110588_product` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` float(12,2) NOT NULL,
  `pricesale` float(12,3) DEFAULT NULL,
  `image` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image2` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image3` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `qty` int UNSIGNED NOT NULL,
  `detail` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_product`
--

INSERT INTO `2122110588_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `pricesale`, `image`, `image2`, `image3`, `qty`, `detail`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, 1, 'Nhà giả kim (2024)', 'nha-gia-kim-2024', 100000.00, 40000.000, 'tieu-thuyet-1.jpg', 'tieu-thuyet-1_2.jpg', 'tieu-thuyet-1_3.jpg', 1, 'tiểu thuyết được xuất bản lần đầu ở Brasil ', 'tiểu thuyết được xuất bản lần đầu ở Brasil ', '2024-01-09 13:50:32', 0, '2024-05-02 15:21:51', 1, 1),
(2, 1, 1, 'Cây Cam Ngọt Của Tôi', 'cay-cam-ngot-cua-toi', 100000.00, 50000.000, 'tieu-thuyet-2.jpg', 'tieu-thuyet-2_1.jpg', NULL, 1, 'Công ty phát hành Nhã Nam\r\nKích thước 14 x 20.5 cm\r\nSố trang 244\r\nNhà Xuất Bản Hội Nhà Văn', 'Công ty phát hành Nhã Nam\r\nKích thước 14 x 20.5 cm\r\nSố trang 244\r\nNhà Xuất Bản Hội Nhà Văn', '2024-01-09 13:54:14', 0, '2024-01-15 15:14:11', 1, 1),
(3, 5, 1, 'Arya Bàn Bên Thỉnh Thoảng Lại Trêu Ghẹo Tôi Bằng Tiếng Nga', 'arya-san', 95000.00, 80750.000, 'tieu-thuyet-6.jpg', '', NULL, 20, 'Arya Bàn Bên Thỉnh Thoảng Lại Trêu Ghẹo Tôi Bằng Tiếng Nga', 'Arya Bàn Bên Thỉnh Thoảng Lại Trêu Ghẹo Tôi Bằng Tiếng Nga', '2024-01-15 15:05:56', 1, '2024-01-27 09:48:16', 1, 1),
(4, 1, 7, 'Tuổi Trẻ Đáng Giá Bao Nhiêu', 'tuoi-tre', 90000.00, 70200.000, 'tieu-thuyet-4.jpg', '', NULL, 30, 'Tuổi Trẻ Đáng Giá Bao Nhiêu', 'Tuổi Trẻ Đáng Giá Bao Nhiêu', '2024-01-15 15:16:20', 1, NULL, 1, 1),
(5, 5, 7, 'Sword Art Online Progressive 002', 's-a-o', 150000.00, 127500.000, 'tieu-thuyet-5.jpg', '', NULL, 10, 'Sword Art Online Progressive 002', 'Sword Art Online Progressive 002', '2024-01-15 15:17:50', 1, '2024-01-15 18:27:00', 1, 1),
(6, 1, 8, 'Cậu Nhóc Gặt Gió', 'cau-nhoc-gat-gio', 128000.00, 115200.000, 'tieu-thuyet-3.jpg', '', NULL, 10, 'Cậu Nhóc Gặt Gió', 'Cậu Nhóc Gặt Gió', '2024-01-15 15:19:09', 1, NULL, 1, 1),
(7, 5, 9, 'Đường Hầm Tới Mùa Hạ - Lối Thoát Của Biệt Ly', 'duong-ham-toi-mua-ha', 109000.00, 92650.000, 'tieu-thuyet-7.jpg', '', NULL, 10, 'Đường Hầm Tới Mùa Hạ - Lối Thoát Của Biệt Ly', 'Đường Hầm Tới Mùa Hạ - Lối Thoát Của Biệt Ly', '2024-01-15 15:22:00', 1, '2024-01-15 18:26:58', 1, 1),
(8, 1, 8, 'Từ Điển Tiếng “Em” ', 'tieng-em', 69000.00, 52440.000, 'tieu-thuyet-8.jpg', '', NULL, 10, 'Từ Điển Tiếng “Em”', 'Từ Điển Tiếng “Em”', '2024-01-15 15:24:46', 1, NULL, 1, 1),
(9, 2, 10, 'Hiểu Về Trái Tim', 'hieu-ve-trai-tim', 158000.00, 135880.000, 'tam-ly-1.jpg', '', NULL, 10, 'Hiểu Về Trái Tim', 'Hiểu Về Trái Tim', '2024-01-15 17:41:40', 1, NULL, 1, 1),
(10, 2, 2, 'Hành Tinh Của Một Kẻ Nghĩ Nhiều', 'hanh-tinh-cua-ke-nghi-nhieu', 86000.00, 62780.000, 'tam-ly-2.jpg', '', NULL, 10, 'Hành Tinh Của Một Kẻ Nghĩ Nhiều', 'Hành Tinh Của Một Kẻ Nghĩ Nhiều', '2024-01-15 17:52:55', 1, NULL, 1, 1),
(11, 2, 2, 'Không Phải Sói Nhưng Cũng Đừng Là Cừu', 'khong-phai-soi-cung-dung-la-cuu', 128000.00, 97280.000, 'tam-ly-3.jpg', '', NULL, 10, 'Không Phải Sói Nhưng Cũng Đừng Là Cừu', 'Không Phải Sói Nhưng Cũng Đừng Là Cừu', '2024-01-15 17:55:06', 1, NULL, 1, 1),
(12, 2, 2, 'Sức Mạnh Của Sự Tử Tế (Tái Bản 2023)', 'suc-manh-cua-su-tu-te', 104000.00, 93600.000, 'tam-ly-4.jpg', '', NULL, 10, 'Sức Mạnh Của Sự Tử Tế (Tái Bản 2023)', 'Sức Mạnh Của Sự Tử Tế (Tái Bản 2023)', '2024-01-15 17:56:39', 1, NULL, 1, 1),
(13, 2, 2, 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải', 'thien-tai-ben-trai-ke-dien-ben-phai', 179000.00, 130670.000, 'tam-ly-5.jpg', '', NULL, 10, 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải', 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải', '2024-01-15 17:59:39', 1, NULL, 1, 1),
(14, 2, 10, 'Đắc Nhân Tâm', 'dac-nhan-tam', 86000.00, 62780.000, 'tam-ly-6.jpg', '', NULL, 10, 'Đắc Nhân Tâm', 'Đắc Nhân Tâm', '2024-01-15 18:01:28', 1, NULL, 1, 1),
(15, 2, 5, 'Think Clean - Đừng Tin Vào Tất Cả Những Gì Bạn Nghĩ', 'think-clean-dung-tin-vao-tat-ca-nhung-gi-ban-nghi', 179000.00, NULL, 'tam-ly-7.jpg', '', NULL, 10, 'Think Clean - Đừng Tin Vào Tất Cả Những Gì Bạn Nghĩ', 'Think Clean - Đừng Tin Vào Tất Cả Những Gì Bạn Nghĩ', '2024-01-15 18:01:28', 1, NULL, 1, 1),
(16, 3, 2, 'Kế Toán Vỉa Hè - Thực Hành Báo Cáo Tài Chính Căn Bản Từ Quầy Bán Nước Chanh', 'ke-toan-via-he-thuc-hanh-bao-cao-tai-chinh-can-ban-tu-quay-ban-nuoc-chanh', 199000.00, NULL, 'kinh-te-1.jpg', '', NULL, 10, 'Kế Toán Vỉa Hè - Thực Hành Báo Cáo Tài Chính Căn Bản Từ Quầy Bán Nước Chanh', 'Kế Toán Vỉa Hè - Thực Hành Báo Cáo Tài Chính Căn Bản Từ Quầy Bán Nước Chanh', '2024-01-15 18:20:48', 1, NULL, 1, 1),
(17, 3, 2, 'Giải Mã Copywriting - Write Your Brand Lit', 'giai-ma-copywriting-write-your-brand-lit', 189000.00, 137970.000, 'kinh-te-2.jpg', '', NULL, 10, 'Giải Mã Copywriting - Write Your Brand Lit', 'Giải Mã Copywriting - Write Your Brand Lit', '2024-01-15 18:20:48', 1, NULL, 1, 1),
(18, 3, 10, 'Người Bán Hàng Vĩ Đại Nhất Thế Giới', 'nguoi-ban-hang-vi-dai-nhat-the-gioi', 148000.00, 103600.000, 'kinh-te-3.jpg', '', NULL, 10, 'Người Bán Hàng Vĩ Đại Nhất Thế Giới', 'Người Bán Hàng Vĩ Đại Nhất Thế Giới', '2024-01-15 18:27:13', 1, NULL, 1, 1),
(19, 3, 5, 'Những Đòn Tâm Lý Trong Bán Hàng (Tái Bản)', 'nhung-don-tam-ly-trong-ban-hang-tai-ban', 139000.00, NULL, 'kinh-te-4.jpg', '', NULL, 10, 'Những Đòn Tâm Lý Trong Bán Hàng (Tái Bản)', 'Những Đòn Tâm Lý Trong Bán Hàng (Tái Bản)', '2024-01-15 18:29:04', 1, NULL, 1, 1),
(20, 3, 2, 'Bloomberg Tự Truyện', 'bloomberg-tu-truyen', 599000.00, 539100.000, 'kinh-te-5.jpg', '', NULL, 10, 'Bloomberg Tự Truyện', 'Bloomberg Tự Truyện', '2024-01-15 18:29:04', 1, NULL, 1, 1),
(21, 3, 5, 'Chiến Tranh Tiền Tệ - Phần 1 - Ai Thực Sự Là Người Giàu Nhất Thế Giới?', 'chien-tranh-tien-te-phan-1-ai-thuc-su-la-nguoi-giau-nhat-the-gioi', 165000.00, 107250.000, 'kinh-te-6.jpg', '', NULL, 10, 'Chiến Tranh Tiền Tệ - Phần 1 - Ai Thực Sự Là Người Giàu Nhất Thế Giới?', 'Chiến Tranh Tiền Tệ - Phần 1 - Ai Thực Sự Là Người Giàu Nhất Thế Giới?', '2024-01-16 05:31:53', 1, NULL, 1, 1),
(22, 3, 5, 'Chiến Tranh Tiền Tệ - Phần 2 - Sự Thống Trị Của Quyền Lực Tài Chính', 'chien-tranh-tien-te-phan-2-su-thong-tri-cua-quyen-luc-tai-chinh', 170000.00, 110500.000, 'kinh-te-7.jpg', '', NULL, 10, 'Chiến Tranh Tiền Tệ - Phần 2 - Sự Thống Trị Của Quyền Lực Tài Chính', 'Chiến Tranh Tiền Tệ - Phần 2 - Sự Thống Trị Của Quyền Lực Tài Chính', '2024-01-16 05:31:53', 1, NULL, 1, 1),
(23, 4, 1, 'Thám Tử Lừng Danh Conan - Tập 102', 'tham-tu-lung-danh-conan-tap-102', 25000.00, NULL, 'truyen-tranh-1.jpg', '', NULL, 10, 'Thám Tử Lừng Danh Conan - Tập 102\n\nJugo Yokomizo tình cờ gặp Chihaya Hagiwara tại bữa tiệc mai mối!\n\nĐiều gì hiện lên trong tâm trí Chihaya khi cô chăm chú nhìn Wataru Takagi!?\n\nChí nguyện “hoa anh đào” được tiếp nối qua bao thế hệ...\n\nVà...\n\nChẳng hề báo trước, tập truyện này sẽ mở ra những diễn biến đầy bất ngờ.', 'Thám Tử Lừng Danh Conan - Tập 102', '2024-01-16 05:37:40', 1, '2024-01-17 16:13:30', 1, 1),
(24, 4, 1, 'Dr.STONE - Tập 23: Động Cơ Của Tương Lai', 'dr-stone-tap-23-dong-co-cua-tuong-lai', 25000.00, NULL, 'truyen-tranh-2.jpg', '', NULL, 10, 'Dr.STONE - Tập 23: Động Cơ Của Tương Lai', 'Dr.STONE - Tập 23: Động Cơ Của Tương Lai', '2024-01-16 05:37:40', 1, NULL, 1, 1),
(25, 4, 9, 'Mùa Hè Hikaru Chết - Tập 2 - Bản Sưu Tầm', 'mua-he-hikaru-chet-tap-2-ban-suu-tam', 180000.00, 162000.000, 'truyen-tranh-3.jpg', '', NULL, 10, 'Mùa Hè Hikaru Chết - Tập 2 - Bản Sưu Tầm - Tặng Kèm Postcard + Bìa Đặc Biệt Hai Mặt + Bùa Vải + Shikishi + Leaflet Ngoại Truyện', 'Mùa Hè Hikaru Chết - Tập 2 - Bản Sưu Tầm - Tặng Kèm Postcard + Bìa Đặc Biệt Hai Mặt + Bùa Vải + Shikishi + Leaflet Ngoại Truyện', '2024-01-16 05:45:08', 1, NULL, 1, 1),
(26, 4, 3, 'Fire Force - Tập 18', 'fire-force-tap-18', 43000.00, 40850.000, 'truyen-tranh-4.jpg', '', NULL, 10, 'Fire Force - Tập 18', 'Fire Force - Tập 18', '2024-01-16 05:45:08', 1, NULL, 1, 1),
(27, 4, 2, 'Poco Ở Thế Giới Udon - Tập 10 - Tặng Kèm Bookmark Hai Mặt', 'poco-o-the-gioi-udon-tap-10-tang-kem-bookmark-hai-mat', 58000.00, 48140.000, 'truyen-tranh-5.jpg', '', NULL, 10, '<p style=\"text-align: justify;\"><strong><em>Poco ở thế giới Udon 10 - Hơi ấm của những c&aacute;i nắm tay</em></strong></p>\n<p style=\"text-align: justify;\">Sau khi gặp gỡ ch&uacute; chồn nhỏ Poco, Souta đ&atilde; nghỉ việc ở th&agrave;nh phố v&agrave; trở về qu&ecirc; để bắt đầu cuộc sống mới. Trải qua những th&aacute;ng ng&agrave;y vui vẻ b&ecirc;n bạn b&egrave; v&agrave; người quen, Souta đ&atilde; được chứng kiến Poco đang dần dần trưởng th&agrave;nh.</p>\n<p style=\"text-align: justify;\">Ở tập 10 n&agrave;y, chị g&aacute;i đang mang thai của Souta - Rin c&ugrave;ng chồng m&igrave;nh l&agrave; Kouichirou sẽ quay trở về Kagawa. Bốn người Souta, Poco v&agrave; vợ chồng Rinko đến ch&ugrave;a Zentsuu để cầu mong cho c&ocirc; được mẹ tr&ograve;n con vu&ocirc;ng. Ở nơi đ&oacute;, Souta đ&atilde; biết được l&iacute; do v&igrave; sao Kouichirou l&uacute;c n&agrave;o cũng đeo mấy chiếc c&agrave; vạt c&oacute; họa tiết kỳ lạ. Qu&aacute; khứ ẩn sau những chiếc c&agrave; vạt đ&oacute; của cặp vợ chồng Rinko l&agrave; g&igrave;&hellip;?</p>\n<p style=\"text-align: justify;\">Poco đ&atilde; ch&iacute;nh thức đi học tại trường mẫu gi&aacute;o, dẫu vẫn m&iacute;t ướt kh&ocirc;ng nỡ rời xa Souta nhưng đ&atilde; cứng cỏi hơn rất nhiều. Tại buổi d&atilde; ngoại c&ugrave;ng phụ huynh do nh&agrave; trường tổ chức, Poco đ&atilde; vui vẻ c&ugrave;ng c&aacute;c bạn biểu diễn ca h&aacute;t v&agrave; chơi nhạc cụ. Nh&igrave;n thấy phụ huynh kh&aacute;c cảm động rơi nước mắt trước buổi biển diễn của con m&igrave;nh, Souta chợt nhận ra, anh chưa từng nghĩ đến việc một ng&agrave;y n&agrave;o đ&oacute; Poco sẽ trưởng th&agrave;nh&hellip;</p>\n<p style=\"text-align: justify;\">&ldquo;Poco ở thế giới Udon&rdquo; tập 10 sẽ khắc họa sợi d&acirc;y gắn kết mọi người trong gia đ&igrave;nh, nơi hơi ấm của những c&aacute;i nắm tay sẽ tiếp th&ecirc;m dũng kh&iacute; cho ch&uacute;ng ta tiếp bước trong cuộc sống n&agrave;y.</p>', '“Poco ở thế giới Udon” tập 10 sẽ khắc họa sợi dây gắn kết mọi người trong gia đình, nơi hơi ấm của những cái nắm tay sẽ tiếp thêm dũng khí cho chúng ta tiếp bước trong cuộc sống này.', '2024-01-16 05:49:14', 1, NULL, 1, 1),
(28, 4, 1, 'Doraemon Movie Story: Nobita Và Hòn Đảo Diệu Kì - Cuộc Phiêu Lưu Của Loài Thú', 'doraemon-movie-story-nobita-va-hon-dao-dieu-ki-cuoc-phieu-luu-cua-loai-thu', 30000.00, NULL, 'truyen-tranh-6.jpg', '', NULL, 10, 'Doraemon Movie Story: Nobita Và Hòn Đảo Diệu Kì - Cuộc Phiêu Lưu Của Loài Thú', 'Doraemon Movie Story: Nobita Và Hòn Đảo Diệu Kì - Cuộc Phiêu Lưu Của Loài Thú', '2024-01-16 05:49:14', 1, NULL, 1, 1),
(29, 4, 1, 'Bộ Sách One Piece - Episode A - Tập 1 + Tập 2 (Bộ 2 Cuốn) - Tặng Kèm PVC Card', 'bo-sach-one-piece-episode-a-tap-1-tap-2-bo-2-cuon-tang-kem-pvc-card', 70000.00, 66500.000, 'truyen-tranh-7.jpg', '', NULL, 10, 'Bộ Sách One Piece - Episode A - Tập 1 + Tập 2 (Bộ 2 Cuốn) - Tặng Kèm PVC Card', 'Bộ Sách One Piece - Episode A - Tập 1 + Tập 2 (Bộ 2 Cuốn) - Tặng Kèm PVC Card', '2024-01-16 05:53:39', 1, NULL, 1, 1),
(30, 4, 1, 'Hôn Nhân Hạnh Phúc Của Tôi - Tập 1 (Tái Bản 2023)', 'hon-nhan-hanh-phuc-cua-toi-tap-1-tai-ban-2023', 50000.00, 47500.000, 'truyen-tranh-8.jpg', '', NULL, 10, 'Hôn Nhân Hạnh Phúc Của Tôi - Tập 1 (Tái Bản 2023)', 'Hôn Nhân Hạnh Phúc Của Tôi - Tập 1 (Tái Bản 2023)', '2024-01-16 05:53:39', 1, NULL, 1, 1),
(33, 5, 1, '86-EIGHTY SIX - Ep.10: Muôn Mảnh Ký Ức', '86-eighty-six-ep-10-muon-manh-ky-uc', 95000.00, 80750.000, 'tieu-thuyet-9.jpg', '', NULL, 20, '86-EIGHTY SIX - Ep.10: Muôn Mảnh Ký Ức', '86-EIGHTY SIX - Ep.10: Muôn Mảnh Ký Ức', '2024-01-15 15:05:56', 1, '2024-01-27 09:48:16', 1, 1),
(45, 7, 9, 'Tam Thể 1 (Tái Bản 2021)', 'tam-the-1-tai-ban-2021', 105000.00, 150000.000, 'image_233636.jpg', NULL, NULL, 10, 'Uông Diểu, vị giáo sư về vật liệu nano ngày nào cũng đăng nhập vào “Tam Thể”. Tại trò chơi online đó, anh đắm chìm trong một thế giới khác, nơi một nền văn minh có thể chỉ kéo dài vài ngày, bầu trời có thể xuất hiện ba mặt trời cùng lúc và con người còn phải biến thành xác khô để sinh tồn.\n\nNhưng anh không thể ngờ, thế giới khắc nghiệt trong Tam Thể là có thực, chỉ cách trái đất chừng bốn năm ánh sáng, và trò chơi ảo kia lại là một cánh cửa để những sinh vật của thế giới ấy bước đến xâm chiếm địa cầu này. Kinh hoàng, Uông Diểu tìm mọi cách ngăn chặn điều đó. Nhưng anh, cũng như cả địa cầu, không biết rằng, cánh cửa nọ đã được mở toang, từ mấy chục năm về trước...\n\nHùng tráng, kịch tính, triết lý, nên thơ, với những tri thức khoa học thú vị, Tam thể là phần mở đầu mang cảm hứng sử thi cho tam bộ khúc của Lưu Từ Hân. Sau tất cả những mưu toan ly kỳ, nham hiểm, những nỗ lực tưởng chừng tuyệt vọng để sinh tồn, câu hỏi còn đọng lại, không phải \'Loài người nên làm gì để đối phó với sự xâm lăng của Tam Thể?\', mà là \'Loài người đã làm gì chính mình?\'\n\nMã hàng	8935235230309\nTên Nhà Cung Cấp	Nhã Nam\nTác giả	Lưu Từ Hân\nNgười Dịch	Lục Hương\nNXB	NXB Hà Nội\nNăm XB	2021\nTrọng lượng (gr)	580\nKích Thước Bao Bì	24 x 15 cm\nSố trang	365\nHình thức	Bìa Mềm\nSản phẩm bán chạy nhất	Top 100 sản phẩm Huyền Bí - Giả Tưởng - Kinh Dị bán chạy của tháng\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\nUông Diểu, vị giáo sư về vật liệu nano ngày nào cũng đăng nhập vào “Tam Thể”. Tại trò chơi online đó, anh đắm chìm trong một thế giới khác, nơi một nền văn minh có thể chỉ kéo dài vài ngày, bầu trời có thể xuất hiện ba mặt trời cùng lúc và con người còn phải biến thành xác khô để sinh tồn.\n\nNhưng anh không thể ngờ, thế giới khắc nghiệt trong Tam Thể là có thực, chỉ cách trái đất chừng bốn năm ánh sáng, và trò chơi ảo kia lại là một cánh cửa để những sinh vật của thế giới ấy bước đến xâm chiếm địa cầu này. Kinh hoàng, Uông Diểu tìm mọi cách ngăn chặn điều đó. Nhưng anh, cũng như cả địa cầu, không biết rằng, cánh cửa nọ đã được mở toang, từ mấy chục năm về trước...\n\nHùng tráng, kịch tính, triết lý, nên thơ, với những tri thức khoa học thú vị, Tam thể là phần mở đầu mang cảm hứng sử thi cho tam bộ khúc của Lưu Từ Hân. Sau tất cả những mưu toan ly kỳ, nham hiểm, những nỗ lực tưởng chừng tuyệt vọng để sinh tồn, câu hỏi còn đọng lại, không phải \'Loài người nên làm gì để đối phó với sự xâm lăng của Tam Thể?\', mà là \'Loài người đã làm gì chính mình?\'', 'Uông Diểu, vị giáo sư về vật liệu nano ngày nào cũng đăng nhập vào “Tam Thể”. Tại trò chơi online đó, anh đắm chìm trong một thế giới khác', '2024-05-03 16:08:17', 1, NULL, NULL, 1),
(46, 7, 8, 'Dê Mắt Quỷ\r\n', 'de-mat-quy', 229000.00, 148850.000, 'd_-m_t-qu_-2.jpg', NULL, NULL, 10, 'Dê Mắt Quỷ\r\n\r\nDiệp – nhân vật chính của tác phẩm – là một cậu sinh viên mới chân ướt chân ráo buổi đầu đến ký túc xá một trường đại học để nhận phòng tại Norfolk. Nhưng ngay đêm đầu tiên chuyển vào ký túc xá, cậu và nhóm bạn đã bị “nhắm tới”. Có lẽ họ không nên bàn tán về những truyền thuyết kinh hoàng trong ký túc xá vào lúc nửa đêm, không nên khám phá căn hầm, nơi người ta đồn đại có một quý tộc người Anh đã thực hiện các nghi lễ ma quỷ từ trăm năm trước, càng không nên liều lĩnh chơi trò chơi gọi hồn ở nơi ấy.\r\n\r\nNhưng đã quá muộn để quay lại, một bạn nữ trong nhóm bỗng biến mất sau trò chơi, và người bạn nam giúp đỡ tìm kiếm cũng mất tích không để lại dấu vết. Không ai biết được chuyện gì đã xảy ra. Nỗi sợ hãi không tên bao trùm, Diệp mơ hồ cảm thấy một công tắc cấm kỵ nào đó đã được bật lên, cậu chỉ muốn cứu những người bạn đang trong lằn ranh sinh tử và ngăn chặn “Bảy câu chuyện ma” của Norfolk xảy ra thêm lần nữa!\r\n\r\nVề tác giả:\r\n\r\nChan Ho Kei tốt nghiệp khoa Khoa học máy tính trường Đại học Trung văn Hồng Kông và là thành viên Hiệp hội các nhà văn viết truyện trinh thám Đài Loan.\r\n\r\nAnh là tác giả liên tục tạo ra những kỷ lục mới ấn tượng với việc bán bản quyền cho nhiều quốc gia trên thế giới và được đông đảo các độc giả yêu thích và ủng hộ nhiệt liệt.\r\n\r\nCác tác phẩm khác của Chan Ho Kei: “Người trong lưới”, “Người bóng bay”, “Ma trùng nhân gian”...\r\n\r\nMã hàng	8936066698191\r\nTên Nhà Cung Cấp	1980 Books\r\nTác giả	Chan-Ho-Kei\r\nNgười Dịch	Lê Hồng\r\nNXB	Thanh Niên\r\nNăm XB	2024\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	570\r\nKích Thước Bao Bì	20.5 x 14 x 2.7 cm\r\nSố trang	556\r\nHình thức	Bìa Mềm\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Huyền Bí - Giả Tưởng - Kinh Dị bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nDê Mắt Quỷ\r\n\r\nDiệp – nhân vật chính của tác phẩm – là một cậu sinh viên mới chân ướt chân ráo buổi đầu đến ký túc xá một trường đại học để nhận phòng tại Norfolk. Nhưng ngay đêm đầu tiên chuyển vào ký túc xá, cậu và nhóm bạn đã bị “nhắm tới”. Có lẽ họ không nên bàn tán về những truyền thuyết kinh hoàng trong ký túc xá vào lúc nửa đêm, không nên khám phá căn hầm, nơi người ta đồn đại có một quý tộc người Anh đã thực hiện các nghi lễ ma quỷ từ trăm năm trước, càng không nên liều lĩnh chơi trò chơi gọi hồn ở nơi ấy.\r\n\r\nNhưng đã quá muộn để quay lại, một bạn nữ trong nhóm bỗng biến mất sau trò chơi, và người bạn nam giúp đỡ tìm kiếm cũng mất tích không để lại dấu vết. Không ai biết được chuyện gì đã xảy ra. Nỗi sợ hãi không tên bao trùm, Diệp mơ hồ cảm thấy một công tắc cấm kỵ nào đó đã được bật lên, cậu chỉ muốn cứu những người bạn đang trong lằn ranh sinh tử và ngăn chặn “Bảy câu chuyện ma” của Norfolk xảy ra thêm lần nữa!\r\n\r\nVề tác giả:\r\n\r\nChan Ho Kei tốt nghiệp khoa Khoa học máy tính trường Đại học Trung văn Hồng Kông và là thành viên Hiệp hội các nhà văn viết truyện trinh thám Đài Loan.\r\n\r\nAnh là tác giả liên tục tạo ra những kỷ lục mới ấn tượng với việc bán bản quyền cho nhiều quốc gia trên thế giới và được đông đảo các độc giả yêu thích và ủng hộ nhiệt liệt.\r\n\r\nCác tác phẩm khác của Chan Ho Kei: “Người trong lưới”, “Người bóng bay”, “Ma trùng nhân gian”...', 'Diệp – nhân vật chính của tác phẩm – là một cậu sinh viên mới chân ướt chân ráo buổi đầu đến ký túc xá một trường đại học để nhận phòng tại Norfolk.', '2024-05-03 16:13:23', 1, NULL, NULL, 1),
(47, 7, 3, 'Harry Potter Và Hòn Đá Phù Thuỷ - Tập 1 (Tái Bản)\r\n', 'harry-potter-va-hon-da-phu-thuy-tap-1-tai-ban', 150000.00, 108000.000, '8934974179672.jpg', NULL, NULL, 10, 'Khi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.', 'Khi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ.', '2024-05-03 16:13:23', 1, NULL, NULL, 1),
(48, 7, 3, 'Harry Potter Và Đứa Trẻ Bị Nguyền Rủa: Phần Một Và Hai (Tái Bản)\r\n', 'harry-potter-va-dua-tre-bi-nguyen-rua-phan-mot-va-hai-tai-ban', 170000.00, 122000.398, 'z3435499789423_53ccbba48e7d5c7a4aa51534ee1760f8.jpg', '', '', 10, 'Kịch bản Harry Potter và Đứa trẻ bị nguyền rủa được viết dựa trên câu chuyện của J.K. Rowling, Jack Thorne và John Tiffany.\r\n\r\nTừ những nhân vật quen thuộc trong bộ Harry Potter, kịch bản nói về cuộc phiêu lưu của những hậu duệ, sự can thiệp vào dòng thời gian đã gây ra những thay đổi không ngờ cho tương lai tưởng chừng đã yên ổn sau khi vắng bóng chúa tể Voldermort', 'Kịch bản Harry Potter và Đứa trẻ bị nguyền rủa được viết dựa trên câu chuyện của J.K. Rowling, Jack Thorne và John Tiffany.', '2024-05-03 16:18:53', 1, NULL, NULL, 1),
(49, 7, 6, 'Trại Trẻ Đặc Biệt Của Cô Peregrine - Tập 6 - Đồng Ma Tiêu Điều\r\n', 'trai-tre-dac-biet-cua-co-peregrine-tap-6-dong-ma-tieu-dieu', 235000.00, 188000.000, '8935235240858.jpg', NULL, NULL, 10, 'Trại Trẻ Đặc Biệt Của Cô Peregrine - Tập 6 - Đồng Ma Tiêu Điều\r\n\r\nPHẦN KẾT ĐẦY HÀO HÙNG CỦA BỘ SÁCH ĂN KHÁCH TRẠI TRẺ ĐẶC BIỆT CỦA CÔ PEREGRINE!!!\r\n\r\nĐiều cuối cùng Jacob Portman thấy trước khi thế giới trở nên tối đen là một gương mặt quen thuộc và đáng sợ.\r\n\r\nCậu và Noor đột nhiên lại trở về nơi tất cả mọi thứ bắt đầu: ngôi nhà của ông nội Jacob tại tiểu bang Florida. Jacob không biết làm cách nào mình đã thoát khỏi Vòng Thời Gian của bà V, nhưng cậu biết chắc chắn một điều: Caul đã trở lại!\r\n\r\nHơn thế nữa, Đồng Ma – nơi trú ẩn cuối cùng của người đặc biệt – đang chìm trong cảnh tiêu điều: từ trời đổ xuống những cơn mưa tro, xương và máu, còn hình bóng Caul lởn vởn khắp mọi nơi, kích động người đặc biệt đứng dậy chống lại các Chủ Vòng.\r\n\r\nHọ chỉ còn duy nhất một hy vọng: Đưa Noor đến tụ họp cùng sáu người còn lại trong lời tiên tri. Nếu như họ có thể tìm ra địa điểm gặp mặt ở đâu.\r\n\r\nĐối mặt với những kẻ thù hung tàn, vượt qua những Vòng Thời Gian nguy hiểm nhất trong lịch sử, Jacob Portman cùng cô Peregrine và nhóm trẻ đặc biệt sẽ tụ họp tại Đồng Ma trong trận chiến cuối cùng với Caul để đem lại hòa bình cho giới người đặc biệt, một lần và mãi mãi.\r\n\r\n', 'PHẦN KẾT ĐẦY HÀO HÙNG CỦA BỘ SÁCH ĂN KHÁCH TRẠI TRẺ ĐẶC BIỆT CỦA CÔ PEREGRINE!!!', '2024-05-03 16:18:53', 1, NULL, NULL, 1),
(50, 6, 7, 'All In Love - Ngập Tràn Yêu Thương (Tái Bản 2020)\r\n', 'all-in-love-ngap-tran-yeu-thuong-tai-ban-2020', 119000.00, 79730.000, 'image_195509_1_38340.jpg', NULL, NULL, 10, 'Từ Vi Vũ hơi mắc bệnh sạch sẽ, có chút bỉ ổi, có chút mặt dày, tuy nhiên trước mặt người ngoài anh luôn hào hoa phong nhã, sống tách biệt, độc lập, lạnh lùng mà kiêu ngạo, lạnh lùng mà xa cách, trong sự xa cách ấy lại toát lên sự cao quý. Nhưng cứ về đến nhà, anh liền biến thành quý ông “thích cởi”, luôn miệng kêu: “Tắm, tắm, tắm! Cố Thanh Khê, em có muốn đến chà đạp anh không?”\r\n\r\nCố Thanh Khê luôn nghĩ, con người này còn có thể bỉ ổi hơn được nữa không?\r\n\r\nNếu không sẽ là:\r\n\r\n“Vợ ơi, mau nấu cơm cho anh, yêu cầu hợp pháp đấy!”\r\n\r\n“Vợ ơi, hôm nay đi xem phim nhé! Yêu cầu hợp pháp đấy!”\r\n\r\n“Thanh Khê, hát tặng anh một bài đi, yêu cầu hợp pháp đấy!”\r\n\r\nMỗi lần như thế, bạn Cố Thanh Khê lại phải cố kiềm chế không xử lý anh một cách phi pháp.\r\n\r\nHạnh phúc là gì?\r\n\r\nHạnh phúc là mười ba năm trước, cứ tan học về, có một cậu bé lại đi hình chữ S đến trước mặt bạn.\r\n\r\nMười ba năm sau, vẫn cậu bé đó ôm bạn vào lòng, thủ thỉ: “Cố Thanh Khê, cả tuổi thanh xuân của anh đều dành hết cho em, thế nên em phải có trách nhiệm với anh đấy!”\r\n\r\nMã hàng	8935212349215\r\nTên Nhà Cung Cấp	Đinh Tị\r\nTác giả	Cố Tây Tước\r\nNgười Dịch	Hà Giang\r\nNXB	NXB Phụ Nữ\r\nNăm XB	2020\r\nTrọng lượng (gr)	450\r\nKích Thước Bao Bì	20.5 x 14.5 cm\r\nSố trang	416\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐinh Tị\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Ngôn Tình bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nTừ Vi Vũ hơi mắc bệnh sạch sẽ, có chút bỉ ổi, có chút mặt dày, tuy nhiên trước mặt người ngoài anh luôn hào hoa phong nhã, sống tách biệt, độc lập, lạnh lùng mà kiêu ngạo, lạnh lùng mà xa cách, trong sự xa cách ấy lại toát lên sự cao quý. Nhưng cứ về đến nhà, anh liền biến thành quý ông “thích cởi”, luôn miệng kêu: “Tắm, tắm, tắm! Cố Thanh Khê, em có muốn đến chà đạp anh không?”\r\n\r\nCố Thanh Khê luôn nghĩ, con người này còn có thể bỉ ổi hơn được nữa không?\r\n\r\nNếu không sẽ là:\r\n\r\n“Vợ ơi, mau nấu cơm cho anh, yêu cầu hợp pháp đấy!”\r\n\r\n“Vợ ơi, hôm nay đi xem phim nhé! Yêu cầu hợp pháp đấy!”\r\n\r\n“Thanh Khê, hát tặng anh một bài đi, yêu cầu hợp pháp đấy!”\r\n\r\nMỗi lần như thế, bạn Cố Thanh Khê lại phải cố kiềm chế không xử lý anh một cách phi pháp.\r\n\r\nHạnh phúc là gì?\r\n\r\nHạnh phúc là mười ba năm trước, cứ tan học về, có một cậu bé lại đi hình chữ S đến trước mặt bạn.\r\n\r\nMười ba năm sau, vẫn cậu bé đó ôm bạn vào lòng, thủ thỉ: “Cố Thanh Khê, cả tuổi thanh xuân của anh đều dành hết cho em, thế nên em phải có trách nhiệm với anh đấy!”\r\n\r\n', 'Từ Vi Vũ hơi mắc bệnh sạch sẽ, có chút bỉ ổi, có chút mặt dày, tuy nhiên trước mặt người ngoài anh luôn hào hoa phong nhã, sống tách biệt, độc lập, lạnh lùng mà kiêu ngạo trong sự xa cách ấy lại toát lên sự cao quý.', '2024-05-03 16:22:18', 1, NULL, NULL, 1),
(51, 6, 8, 'Mãi Mãi Là Bao Xa (Tái Bản)\r\n', 'mai-mai-la-bao-xa-tai-ban', 135000.00, 90450.000, '8935212358231.jpg', NULL, NULL, 10, '\"Em là cây hoa loa kèn hoang dã mãi mãi chỉ vì chính mình mà nở hoa, rời khỏi đất mẹ là cái giá phải trả khi yêu anh.\"\r\n\r\n-------\r\n\r\nBạch Lăng Lăng, nữ sinh khoa Điện khí, trẻ trung, xinh đẹp và rất tự hào khi quen được một người bạn lý tưởng qua mạng, chàng du học sinh của một trường nổi tiếng của Mỹ, người mang biệt danh “nhà khoa học”: Mãi Mãi Là Bao Xa. Qua những cuộc chuyện trò trên QQ, Lăng Lăng đã gắn bó với chàng trai đó lúc nào cô cũng không hay, cảm xúc lớn dần, sự chia sẻ lớn dần và đến một ngày cô phát hiện ra mình đã yêu người con trai “tài giỏi” và không một chút khuyết điểm ấy.\r\n\r\nNhưng sự tỉnh táo giúp cô ý thức được rằng, thế giới mạng chỉ là ảo, họ ở cách nhau cả một đại dương mênh mông, anh lại quá xuất sắc và ưu tú, mối quan hệ của họ sẽ không có kết quả gì. Nhất là khi anh thông báo, nếu anh tiếp tục sự nghiệp nghiên cứu lần này, rất có thể anh phải định cư bên Mỹ, mãi mãi không trở về. Khi nghe tin đó, cô đã gục xuống trước màn hình máy tính và khóc. Tất cả như sụp đổ, tia hy vọng cuối cùng dập tắt, anh sẽ không về nước nữa, khoảng cách giữa họ là mãi mãi… Cô cay đắng nói với anh lời từ biệt và đưa nick của anh vào danh sách đen, không bao giờ xuất hiện khi cô đăng nhập QQ nữa…\r\n\r\nMột năm trôi qua, Lăng Lăng tưởng đã quên đi “nhà khoa học” ở bên kia thế giới của mình, bên cô đã có Uông Đào, bạn trai, người mang lại cho cô cảm giác an toàn, người cô muốn lấy làm chồng dù cảm xúc dành cho anh chưa hẳn là tình yêu. Cô bảo vệ đề án tốt nghiệp, Uông Đào luôn quấn quýt bên cô… Và điều bất ngờ trong buổi bảo vệ đề án, Dương Lam Hàng, một giảng viên trẻ vừa trở về từ MIT, trường đại học danh tiếng của Mỹ, xuất thân từ một gia đình danh giá, đã tới tham dự buổi bảo vệ của cô và đưa ra những câu hỏi phản biện thật “khó chịu”.\r\n\r\nVới cô, Tất cả các nữ sinh trong trường đều ngưỡng mỗ và ao ước được trở thành bóng hồng trong trái tim của Dương Lam Hàng, nhưng với cô, đó đúng là ông thầy “biến thái”. Sự trớ trêu của số phận đun đẩy khiến cô ngày càng tiếp xúc với anh nhiều hơn, và chính anh là người gợi ý và nâng đỡ cho cô học tiếp thạc sĩ để có cơ hội ở lại trường.\r\n\r\nTrở thành học viên của khoa Vật liệu, bao thách thức và khó khăn chờ đón cô, dưới sự dìu dắt và yêu cầu quá cao của thầy hướng dẫn, cô dần dần làm quen với công việc… Những buổi thảo luận, những lần thí nghiệm, những sự giúp đỡ, những lời quan tâm chân thành, và cộng thêm vẻ ngoài lạnh lùng, điễm tĩnh, rất đẹp của Dương Lam Hàng, trái tim Lăng Lăng cũng xao động.\r\n\r\nMột bên là người gần gũi với cô hằng ngày, chăm lo cho cô, nâng đỡ cô từng chút một, một bên là chàng trai ở mãi tận nơi xa, chưa một lần gặp mặt. Lăng Lăng giằng xé và không biết trái tim mình nghiêng về bên nào nhiều hơn. Đến khi cảm xúc vỡ òa, cô quyết định dừng học bởi không muốn gặp người thầy đã chiếm giữ vị trí trong trái tim cô, cô muốn chung thủy với tình cảm cho chàng trai Mãi Mãi Là Bao Xa, người chia sẻ và dành cho cô tình cảm chân thành, thì cũng là lúc cô phát hiện ra hình như Dương Lam Hàng và người cô yêu có thật nhiều điểm tương đồng. Mãi Mãi Là Bao Xa nói anh đã về nước và sẽ đến gặp cô… Vậy người thầy bên cô bấy lâu nay là ai?\r\n\r\nMã hàng	8935212358231\r\nTên Nhà Cung Cấp	Đinh Tị\r\nTác giả	Diệp Lạc Vô Tâm\r\nNgười Dịch	Nguyễn Thị Thại\r\nNXB	Thanh Niên\r\nNăm XB	2022\r\nTrọng lượng (gr)	600\r\nKích Thước Bao Bì	24 x 16 x 2.7 cm\r\nSố trang	590\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐinh Tị\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Ngôn Tình bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\n\"Em là cây hoa loa kèn hoang dã mãi mãi chỉ vì chính mình mà nở hoa, rời khỏi đất mẹ là cái giá phải trả khi yêu anh.\"\r\n\r\n-------\r\n\r\nBạch Lăng Lăng, nữ sinh khoa Điện khí, trẻ trung, xinh đẹp và rất tự hào khi quen được một người bạn lý tưởng qua mạng, chàng du học sinh của một trường nổi tiếng của Mỹ, người mang biệt danh “nhà khoa học”: Mãi Mãi Là Bao Xa. Qua những cuộc chuyện trò trên QQ, Lăng Lăng đã gắn bó với chàng trai đó lúc nào cô cũng không hay, cảm xúc lớn dần, sự chia sẻ lớn dần và đến một ngày cô phát hiện ra mình đã yêu người con trai “tài giỏi” và không một chút khuyết điểm ấy.\r\n\r\nNhưng sự tỉnh táo giúp cô ý thức được rằng, thế giới mạng chỉ là ảo, họ ở cách nhau cả một đại dương mênh mông, anh lại quá xuất sắc và ưu tú, mối quan hệ của họ sẽ không có kết quả gì. Nhất là khi anh thông báo, nếu anh tiếp tục sự nghiệp nghiên cứu lần này, rất có thể anh phải định cư bên Mỹ, mãi mãi không trở về. Khi nghe tin đó, cô đã gục xuống trước màn hình máy tính và khóc. Tất cả như sụp đổ, tia hy vọng cuối cùng dập tắt, anh sẽ không về nước nữa, khoảng cách giữa họ là mãi mãi… Cô cay đắng nói với anh lời từ biệt và đưa nick của anh vào danh sách đen, không bao giờ xuất hiện khi cô đăng nhập QQ nữa…\r\n\r\nMột năm trôi qua, Lăng Lăng tưởng đã quên đi “nhà khoa học” ở bên kia thế giới của mình, bên cô đã có Uông Đào, bạn trai, người mang lại cho cô cảm giác an toàn, người cô muốn lấy làm chồng dù cảm xúc dành cho anh chưa hẳn là tình yêu. Cô bảo vệ đề án tốt nghiệp, Uông Đào luôn quấn quýt bên cô… Và điều bất ngờ trong buổi bảo vệ đề án, Dương Lam Hàng, một giảng viên trẻ vừa trở về từ MIT, trường đại học danh tiếng của Mỹ, xuất thân từ một gia đình danh giá, đã tới tham dự buổi bảo vệ của cô và đưa ra những câu hỏi phản biện thật “khó chịu”.\r\n\r\nVới cô, Tất cả các nữ sinh trong trường đều ngưỡng mỗ và ao ước được trở thành bóng hồng trong trái tim của Dương Lam Hàng, nhưng với cô, đó đúng là ông thầy “biến thái”. Sự trớ trêu của số phận đun đẩy khiến cô ngày càng tiếp xúc với anh nhiều hơn, và chính anh là người gợi ý và nâng đỡ cho cô học tiếp thạc sĩ để có cơ hội ở lại trường.\r\n\r\nTrở thành học viên của khoa Vật liệu, bao thách thức và khó khăn chờ đón cô, dưới sự dìu dắt và yêu cầu quá cao của thầy hướng dẫn, cô dần dần làm quen với công việc… Những buổi thảo luận, những lần thí nghiệm, những sự giúp đỡ, những lời quan tâm chân thành, và cộng thêm vẻ ngoài lạnh lùng, điễm tĩnh, rất đẹp của Dương Lam Hàng, trái tim Lăng Lăng cũng xao động.\r\n\r\nMột bên là người gần gũi với cô hằng ngày, chăm lo cho cô, nâng đỡ cô từng chút một, một bên là chàng trai ở mãi tận nơi xa, chưa một lần gặp mặt. Lăng Lăng giằng xé và không biết trái tim mình nghiêng về bên nào nhiều hơn. Đến khi cảm xúc vỡ òa, cô quyết định dừng học bởi không muốn gặp người thầy đã chiếm giữ vị trí trong trái tim cô, cô muốn chung thủy với tình cảm cho chàng trai Mãi Mãi Là Bao Xa, người chia sẻ và dành cho cô tình cảm chân thành, thì cũng là lúc cô phát hiện ra hình như Dương Lam Hàng và người cô yêu có thật nhiều điểm tương đồng. Mãi Mãi Là Bao Xa nói anh đã về nước và sẽ đến gặp cô… Vậy người thầy bên cô bấy lâu nay là ai?', '\"Em là cây hoa loa kèn hoang dã mãi mãi chỉ vì chính mình mà nở hoa, rời khỏi đất mẹ là cái giá phải trả khi yêu anh.\"', '2024-05-03 16:22:18', 1, NULL, NULL, 1),
(52, 6, 7, 'Bến Xe (Tái Bản 2020)\r\n', 'ben-xe-tai-ban-2020', 76000.00, 50920.000, '8935212349208.jpg', NULL, NULL, 10, 'Bến Xe (Tái Bản 2020)\r\n\r\nBến Xe\r\n\r\nThứ tôi có thể cho em trong cuộc đời này\r\n\r\nchỉ là danh dự trong sạch\r\n\r\nvà một tương lai tươi đẹp mà thôi.\r\n\r\nThế nhưng, nếu chúng ta có kiếp sau,\r\n\r\nnếu kiếp sau tôi có đôi mắt sáng,\r\n\r\ntôi sẽ ở bến xe này… đợi em.\r\n', 'Thứ tôi có thể cho em trong cuộc đời này\r\n\r\nchỉ là danh dự trong sạch\r\n\r\nvà một tương lai tươi đẹp mà thôi.', '2024-05-03 16:25:53', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_topic`
--

CREATE TABLE `2122110588_topic` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tên chủ đề',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Sắp xếp',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` datetime NOT NULL COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_topic`
--

INSERT INTO `2122110588_topic` (`id`, `name`, `slug`, `sort_order`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'tin-tuc', 1, 'Từ khóa SEO', '2020-07-03 16:14:39', 1, '2020-07-03 16:14:39', 1, 1),
(2, 'Dịch vụ', 'dich-vu', 2, 'Từ khóa SEO', '2020-07-03 16:14:39', 1, '2020-07-03 16:14:39', 1, 1),
(3, 'ádsxcxc', 'adsxcxc', 0, 'dsadasx', '2022-09-01 14:44:20', 1, '2022-09-01 14:46:30', 1, 0),
(9, 'Công nghệ', 'cong-nghe', 3, 'mọi bài viết về tin công nghệ sẽ được mô tả ở đây', '2024-05-01 04:18:13', 1, '2024-05-01 04:18:13', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `2122110588_user`
--

CREATE TABLE `2122110588_user` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `roles` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0' COMMENT 'admin or customer',
  `created_at` datetime NOT NULL,
  `created_by` tinyint UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` tinyint UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2122110588_user`
--

INSERT INTO `2122110588_user` (`id`, `name`, `email`, `gender`, `phone`, `username`, `password`, `address`, `image`, `roles`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trần Đức Khánh ', 'karhacter@gmail.com', 0, '01000004', 'admin', 'f8be6395feef6a5a26168beb782bd7204ec095ad', '8 Dương văn cam', 'karhacter.jpg', 'admin', '2024-01-12 05:17:01', 1, '2024-01-26 06:57:32', 1, 1),
(2, 'Lê Minh Tuấn', 'minhtuan04042004@gmail.com', 0, '0797044165', 'leminhtuan123', '8c73f5147184f5a1975dc9c2ce8a5dad7ef16693', '55/13 lò lu', 'tuan.jpg', 'customer', '2024-01-25 11:33:40', 1, '2024-01-27 05:15:38', 1, 1),
(13, 'Thế giới', 'khanhduc392@gmail.com', 1, '0378173109', 'asd', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '88 duong van cam', NULL, 'customer', '2024-01-26 05:37:07', 1, '2024-01-27 05:15:37', 1, 1),
(14, 'Karhacter', 'Karhacter120@gmail.com', 0, '087645644', 'Karhacter213', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Tam ha street', NULL, 'admin', '2024-03-29 08:04:24', 1, NULL, 1, 1),
(26, 'asd', 'khanhduc392@gmail.com', 1, '0378173109', 'asd', '123', '8 Dương văn cam', '20240502154519.jpg', 'admin', '2024-05-02 15:45:19', 1, '2024-05-02 15:45:19', NULL, 1),
(27, 'Hội Nhà Văn', 'khanhduc392@gmail.com', 1, '0378173109', 'asd', '123', '8 Dương văn cam', NULL, 'admin', '2024-05-02 15:51:12', 1, '2024-05-02 15:51:12', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2122110588_banner`
--
ALTER TABLE `2122110588_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_brand`
--
ALTER TABLE `2122110588_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_category`
--
ALTER TABLE `2122110588_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_contact`
--
ALTER TABLE `2122110588_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_menu`
--
ALTER TABLE `2122110588_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_order`
--
ALTER TABLE `2122110588_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_orderdetail`
--
ALTER TABLE `2122110588_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_post`
--
ALTER TABLE `2122110588_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_product`
--
ALTER TABLE `2122110588_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2122110588_topic`
--
ALTER TABLE `2122110588_topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2122110588_user`
--
ALTER TABLE `2122110588_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2122110588_banner`
--
ALTER TABLE `2122110588_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `2122110588_brand`
--
ALTER TABLE `2122110588_brand`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `2122110588_category`
--
ALTER TABLE `2122110588_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `2122110588_contact`
--
ALTER TABLE `2122110588_contact`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `2122110588_menu`
--
ALTER TABLE `2122110588_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `2122110588_order`
--
ALTER TABLE `2122110588_order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `2122110588_orderdetail`
--
ALTER TABLE `2122110588_orderdetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `2122110588_post`
--
ALTER TABLE `2122110588_post`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `2122110588_product`
--
ALTER TABLE `2122110588_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `2122110588_topic`
--
ALTER TABLE `2122110588_topic`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `2122110588_user`
--
ALTER TABLE `2122110588_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
