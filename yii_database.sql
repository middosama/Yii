-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 02, 2019 lúc 03:44 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `yii_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doc`
--

CREATE TABLE `doc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dir_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extend` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `des` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doc`
--

INSERT INTO `doc` (`id`, `name`, `dir_name`, `extend`, `user_id`, `des`) VALUES
(10, 'avatar-1577909_640-300x300', 'avatar-1577909_640-300x300_1564564754.png', 'png', 8, 'asdasd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exp`
--

CREATE TABLE `exp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `co_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `exp`
--

INSERT INTO `exp` (`id`, `name`, `user_id`, `start_date`, `end_date`, `co_name`, `des`) VALUES
(105, 'NewExpasdasfasfasdassdfsdfasd', 9, '2000-06-02', '1999-01-01', 'Nhap ten cong tya', 'Mo ta ve cong viec nay'),
(106, 'NewExp', 9, '1999-01-01', '1999-01-01', 'Nhap ten cong ty', 'Mo ta ve cong viec nay'),
(116, 'NewExpasdasd', 8, '1999-01-01', '1999-01-01', 'Nhap ten cong tyasad', 'Mo ta ve cong viec nay'),
(117, 'dsf', 8, '2000-06-02', '1999-01-01', 'Nhap ten cong tya', 'Mo ta ve cong viec nay'),
(119, 'NewExp', 8, '1999-01-01', '1999-01-01', 'Nhap ten cong ty', 'Mo ta ve cong viec nay'),
(120, 'NewExp', 8, '1999-01-01', '1999-01-01', 'Nhap ten cong ty', 'Mo ta ve cong viec nay'),
(121, 'NewExp', 8, '1999-01-01', '1999-01-01', 'Nhap ten cong ty', 'Mo ta ve cong viec nay'),
(122, 'NewExp', 8, '1999-01-01', '1999-01-01', 'Nhap ten cong ty', 'Mo ta ve cong viec nay'),
(123, 'NewExp', 8, '1999-01-01', '1999-01-01', 'Nhap ten cong ty', 'Mo ta ve cong viec nay'),
(124, 'NewExp', 8, '1999-01-01', '1999-01-01', 'Nhap ten cong ty', 'Mo ta ve cong viec nay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1563845936),
('m130524_201442_init', 1563845940),
('m190124_110200_add_verification_token_column_to_user_table', 1563845940),
('m190717_080319_cate', 1563845940);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `firstname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `birthday`, `avatar`, `firstname`, `lastname`, `phone`) VALUES
(1, 'admin@gmail.com', 'oioPCFGJfR_MXKYelRRj74LHACx9q0oQ', '$2y$13$Ter7GIhqdH8x0p8JT/45JuKe5zfK8x7OjiWefJ1xCHeVsc9sMuAW.', NULL, 'admin@gmail.com', 10, 1563846364, 1563846364, 'Cd_fILmkgzleyTgAhGqKC2TJN8vVrJ1c_1563846364', '2019-07-22', 'avatar', '', '', ''),
(8, 'midosamadesu@gmail.com', 'WLyoWxj50Igyi1IprTH6jg3408f-63Sv', '$2y$13$SXW5Qx8kYeLr0YNjhLTuYuu.kqy0v2vYAaU16XDOsO/yMTqYsAxGa', NULL, 'midosamadesu@gmail.com', 10, 1564134339, 1564556707, '27UDUYvqTjbaZ9qr4S9eePUvhJtVNLWJ_1564134339', '2019-07-10', 'Koala_1564556707.jpg', 'safadfadfgafsdg', 'ádtádasdasdasdfgadgasdg', 'sd5f45318654asdasd'),
(9, 'chimsedimid@gmail.com', 'R5A79Fd-M5Bc2QBfebj8I1Eg2bkoOkCC', '$2y$13$iLeJR0mS7F/cIVJcSLI5/OpoohxWzG2.rQsWfBKEyUyShXGmpC9pW', NULL, 'chimsedimid@gmail.com', 10, 1564134350, 1564542577, 'q6T6_hiNyIKtITXyfvcWcbmIXexds4-r_1564134350', '2019-07-19', 'Desert_1564542577.jpg', 'sàd', 'ádtádasdasd', 'sd5f45318654'),
(10, 'admin@gmail.coma', '-nalpEPSwv1ytSNOZMQb8coopHTJsU7I', '$2y$13$yT7TBupDRwQ7OBBqCzrJSOBE4lQHNRfbuHcmE3walCKPilFOv/LzW', NULL, 'admin@gmail.coma', 10, 1564364063, 1564364747, 'KXm_VRCIuHL5Q7YBPTPN07_s6SCP3Kvg_1564364063', '2019-07-16', 'Chrysanthemum_1564364747.jpg', 'asd', 'sdf', 'dsfa');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `exp`
--
ALTER TABLE `exp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `exp`
--
ALTER TABLE `exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `exp`
--
ALTER TABLE `exp`
  ADD CONSTRAINT `exp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
