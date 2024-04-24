-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2024 lúc 04:51 AM
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
-- Cơ sở dữ liệu: `shop_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`) VALUES
(42, 42, 45, 1, 338000),
(60, 58, 45, 1, 338000),
(62, 60, 45, 1, 338000),
(67, 65, 45, 1, 338000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(42, 'aaaaaaaa', '08320123029301', 'tp sai gon', 'qui@gmail.com.vn', 'sghdj', '2024-05-18 05:35:29', '2024-04-21 14:23:48'),
(58, 'ádsad', '3892832', 'dksjagk', 'sadhg@gmail.com', 'sahdgkas', '2024-04-18 16:53:47', '2024-04-18 16:53:47'),
(60, 'sadsad', 'a1231231', '12312', 'sdasd@gmail.com', 'sadjsadl', '2024-04-18 17:27:27', '2024-04-18 17:27:27'),
(65, 'nguyen van a', '0938736526', 'long an', 'nguyenvan@gmail.com', 'admin', '2024-04-21 14:27:01', '2024-04-21 14:27:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(2, 'default', '{\"uuid\":\"35ed80cd-bcc8-40f8-9a3f-3ba60cd0c7b5\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"hua@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-09 08:45:47.821478\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1712652347, 1712652346),
(3, 'default', '{\"uuid\":\"f17cc370-9367-4d55-889d-e91b7303fc0c\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:17:\\\"huynaho@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-14 14:58:52.858030\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713106732, 1713106731),
(4, 'default', '{\"uuid\":\"09fe3ea3-fbba-4004-bc44-7b79cf734fb7\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"ggu@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 04:34:15.103098\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713414855, 1713414853),
(5, 'default', '{\"uuid\":\"cd2ad0f7-057f-4b4e-a378-59db38dc2789\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:12:\\\"gu@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 04:36:03.171400\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713414963, 1713414961),
(6, 'default', '{\"uuid\":\"79ebd2ee-cc25-4027-83e5-318511871b7d\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:14:\\\"huy@gmail..com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:03:57.405480\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713416637, 1713416636),
(7, 'default', '{\"uuid\":\"f8d62fb7-932b-4041-8525-5cf43fbdc1f4\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:3:\\\"124\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:14:51.509986\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713417291, 1713417289),
(8, 'default', '{\"uuid\":\"738ae33f-018c-489c-ac86-1596a2a33c4b\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:4:\\\"2523\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:15:29.776766\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713417329, 1713417327),
(9, 'default', '{\"uuid\":\"fbb808f6-177a-468c-9a4b-a8b1ffec95df\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:4:\\\"2523\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:15:38.840267\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713417338, 1713417336),
(10, 'default', '{\"uuid\":\"d6471a85-b4a8-4974-926b-34b5f7415150\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:4:\\\"2352\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:16:16.780998\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713417376, 1713417374),
(11, 'default', '{\"uuid\":\"9b8b0cca-bb3e-4abb-a1d6-1d6f73560f79\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:5:\\\"23523\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:22:27.363416\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713417747, 1713417745),
(12, 'default', '{\"uuid\":\"47ffcc84-af8a-4be8-8a5d-f6c7209fdec3\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:18:\\\"23532523@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:22:48.691431\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713417768, 1713417766),
(13, 'default', '{\"uuid\":\"2511928c-87b3-4fd3-814e-ca63a74b3678\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:6:\\\"235235\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:23:53.484844\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713417833, 1713417831),
(14, 'default', '{\"uuid\":\"5a2d4df3-d2a7-450a-ab3d-0c1fd90ebf77\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:14:\\\"3242@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:28:04.411515\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713418084, 1713418082),
(15, 'default', '{\"uuid\":\"6157a285-ffbe-4f03-854a-1ac8ddc86ab1\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"23423@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:28:28.951278\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713418108, 1713418106),
(16, 'default', '{\"uuid\":\"79c24fb3-0aa1-49ea-8899-7071f96797f3\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"234@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:29:25.541426\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713418165, 1713418163),
(17, 'default', '{\"uuid\":\"80283245-1822-4e50-a117-4f9250366891\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:16:\\\"huisdy@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:29:51.608329\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713418191, 1713418189),
(18, 'default', '{\"uuid\":\"bf6ecb20-0e09-48da-943d-5b0b87668c3c\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"huy@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:33:35.607429\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713418415, 1713418413),
(19, 'default', '{\"uuid\":\"0e124575-b649-45e8-83ae-f220bce56bf8\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"qui@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 05:34:34.452245\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713418474, 1713418472),
(20, 'default', '{\"uuid\":\"a64216b5-d548-4b87-aee7-38bdbf77ea30\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:14:\\\"huyf@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 07:00:16.779130\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713423616, 1713423615),
(21, 'default', '{\"uuid\":\"6623a76b-29c2-49e0-8dba-9eb951787039\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"huynh@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 11:34:48.270976\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713440088, 1713440087),
(22, 'default', '{\"uuid\":\"d9f51257-c5a5-4f29-8c4b-c49645a158be\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"huynh@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 11:36:31.791456\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713440191, 1713440189),
(23, 'default', '{\"uuid\":\"38d6830e-6575-4a1a-bea0-d3754f9e306a\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"huynh@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 11:43:13.551347\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713440593, 1713440591),
(24, 'default', '{\"uuid\":\"2f899e1a-f259-40fe-bd19-7103635ab048\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"huynh@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 12:09:01.330019\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713442141, 1713442139),
(25, 'default', '{\"uuid\":\"4e522ac0-5523-4748-94bc-31ee02b4fb44\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:14:\\\"huya@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 12:12:21.565821\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713442341, 1713442339),
(26, 'default', '{\"uuid\":\"decff4af-26d0-4e67-b02a-2ee2353a92c1\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"huy@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 12:26:32.462310\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713443192, 1713443190),
(27, 'default', '{\"uuid\":\"0e7758ed-7e17-4896-adea-373792c20883\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"huy@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 13:49:13.615465\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713448153, 1713448151),
(28, 'default', '{\"uuid\":\"2b3b4858-dcca-4f1d-86d4-254c9b2387d3\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"shgdj@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 14:46:54.753481\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713451614, 1713451612),
(29, 'default', '{\"uuid\":\"8227e2d3-89d5-4a9b-ad4c-947e75faa46b\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:16:\\\"dsaasd@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 14:50:33.863571\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713451833, 1713451831),
(30, 'default', '{\"uuid\":\"ae2834dc-de3e-4c34-81a1-0a20894c036f\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:16:\\\"ashjdv@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 16:23:18.852514\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713457398, 1713457396),
(31, 'default', '{\"uuid\":\"1b03e080-12d3-40ed-9c93-7854c5120b05\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"asdfd@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 16:43:28.501091\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713458608, 1713458606),
(32, 'default', '{\"uuid\":\"7930479d-8050-48d8-ad83-7e4256dd356a\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"sadhg@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 16:53:49.653826\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713459229, 1713459227),
(33, 'default', '{\"uuid\":\"6cdfe586-b44d-431e-88d6-7b4bc4715d7f\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:18:\\\"hasgkadg@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 17:07:40.210757\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713460060, 1713460058),
(34, 'default', '{\"uuid\":\"b84267a8-781c-46da-ad1b-8595e0e2a4ec\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"sdasd@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 17:27:29.720853\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713461249, 1713461247),
(35, 'default', '{\"uuid\":\"40f04a98-83a7-42de-9e48-01c847fa7ff2\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:18:\\\"akssahdk@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 17:30:50.426133\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713461450, 1713461448),
(36, 'default', '{\"uuid\":\"040e22ab-859f-4f13-a94d-c3e5c1f15710\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:15:\\\"sdjgk@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-18 18:06:39.200656\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713463599, 1713463598),
(37, 'default', '{\"uuid\":\"4570b6eb-edb3-44c7-8239-6e01a2d43545\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:14:\\\"hadg@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-21 05:56:43.048680\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713679003, 1713679002),
(38, 'default', '{\"uuid\":\"4f3e6f3a-ee03-45ae-9bf1-aa6f6e2ad4ef\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:13:\\\"sda@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-21 05:58:13.885953\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713679093, 1713679091),
(39, 'default', '{\"uuid\":\"89c0275e-ee8c-4c4f-852b-455975c9d5ac\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:19:\\\"nguyenvan@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-04-21 14:27:04.128483\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1713709624, 1713709623);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `paren_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `paren_id`, `description`, `content`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(55, 'Phụ kiện', 0, '', '', NULL, 1, '2024-04-04 21:00:52', '2024-04-04 21:00:52'),
(56, 'Quần Nam', 0, '', '', NULL, 1, '2024-04-04 21:01:04', '2024-04-04 21:01:04'),
(57, 'Áo Nam', 0, '', '', NULL, 1, '2024-04-04 21:01:13', '2024-04-04 21:01:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_06_085925_create_menus_table', 2),
(6, '2024_03_14_074129_create_products_table', 3),
(7, '2024_03_14_074843_update_table_product', 3),
(8, '2024_03_20_095347_create_silers_table', 4),
(9, '2024_03_20_095347_create_sliders_table', 5),
(10, '2024_03_31_144701_create_customers_table', 6),
(11, '2024_03_31_145129_create_carts_table', 7),
(12, '2024_03_31_152644_create_customers_table', 8),
(13, '2024_03_31_152842_create_carts_table', 9),
(17, '2019_08_19_000000_create_failed_jobs_table', 10),
(18, '2024_04_02_143733_create_jobs_table', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(36, 'Áo Bomber Nam 5S Fasion, Thiết Kế Jaglan AKB23013', 'ÁO KHOÁC BOMBER NAM TAY RAGLAN TRẺ TRUNG', 'Áo khoác nam 5S FASHION hai lớp cản gió, hạn chế bám bụi, thuộc top áo khoác bomber bán chạy nhất với thiết kế trẻ trung dễ mặc, tay áo raglan phối màu, phần bo co giãn, dày dặn dệt kẻ nổi bật. Túi kéo khóa sâu rộng, phom Slimfit vừa vặn. Một item năng động, phong cách và thời trang!', 57, 845000, 425000, 1, '2024-04-04 22:02:13', '2024-04-04 22:02:13', '/storage/uploads/2024/04/05/XHx5TY9p18I1RvRuPcLPvYCPAzbHcvTIKxSRK6qZ.jpg'),
(37, 'Áo Khoác Bomber Nam 5S Fashion, Cản Gió, Trượt Nước AKB23005', 'ÁO KHOÁC BOMBER TÚI HỘP', 'Áo khoác bomber thiết kế túi hộp trẻ trung, tạo điểm nhấn cùng ứng dụng tiện lợi với diện tích túi lớn để đồ cá nhân nhỏ như ví da, chìa khoá, điện thoại..\r\n\r\nChất liệu sử dụng công nghệ trượt nước, hạn chế thấm ngược ở bề mặt vải ngoài và lớp lót nỉ mềm mỏng, giữ ấm tối ưu. Một chiếc áo khoác vừa thời trang, vừa thích hợp cho những ngày mưa lạnh.', 57, 890000, 525000, 1, '2024-04-04 22:04:21', '2024-04-04 22:04:21', '/storage/uploads/2024/04/05/3b13kf2SWF6nbhN1vjD4MT4wGpuiL2maS4foOpBt.jpg'),
(38, 'Áo Khoác Bomber Nam 5S Fashion, Lót Lông, Dày Dặn AKB23009', 'ÁO KHOÁC BOMBER NAM LÓT LÔNG & CHẦN CHỈ NỔI', 'ÁO KHOÁC BOMBER NAM LÓT LÔNG & CHẦN CHỈ NỔI. Mang đến cho bạn một chiếc áo khoác dày dặn, ấm áp với chất liệu Polyester cao cấp cản gió, trượt nước, lớp lót lông mềm mịn Extra-warm ấm áp tức thì, tỏa nhiệt, giữ nhiệt tốt. Thiết kế khỏe khoắn trẻ trung với đường line chần chỉ nổi tinh tế mang đến cho bạn một phong cách hoàn toàn mới, gọn gàng, thanh lịch, thời trang!', 57, 800000, 325000, 1, '2024-04-04 22:05:53', '2024-04-04 22:05:53', '/storage/uploads/2024/04/05/BcoXSdKwZGQXBr8jMoRPsqwTwQbjKwZJ9GXVvuMd.jpg'),
(39, 'Quần Âu Nam 5S Fashion, Màu Đen Basic QAU23063', 'Quần Âu Nam 5S Fashion, Màu Đen Basic QAU23063', 'Quần Âu Nam 5S Fashion, Màu Đen Basic QAU23063 sở hữu kiểu dáng Slim fit vừa vặn, tôn dáng. Thiết kế basic, dễ mặc, dễ phối với hầu hết các kiểu áo như áo thun, áo polo, áo T-shirt giúp mẫu quần âu basic đen này là item yêu thích trong dòng sản phẩm công sở đến từ nhà 5S Fashion. Công nghệ ép ly vĩnh cửu giúp quần luôn giữ phom dáng thanh lịch, không cần là ủi giúp nam giới thiết kiệm được tối đa thời gian.\r\n\r\nChất vải Polyester là loại sợi có độ bền cơ lý rất cao, khả năng chống nhăn, chống mài mòn cao, độ bóng sắc nét, độ bền màu cao và màu sắc của sản phẩm làm từ sợi Polyester cũng rất bắt mắt. Với kết cấu vững chắc nên sản phẩm quần âu/short âu vải Polyester rất đứng form và đẹp.\r\n\r\nKết hợp với sợi Rayon là một loại sợi bán tổng hợp chất xơ của sợi cellulose làm từ bột gỗ như cây sồi, thông, bạch đàn, cây tre… chúng có hết những đặc tính của các chất liệu khác như lụa, cotton hay vải linen,… giúp khắc phục được nhược điểm của Polyester. Vải Rayon thường có tính linh hoạt cao, rất mềm mại, mang lại cảm giác thoải mái trong sử dụng. Bên cạnh đó, loại vải này còn có tính kháng khuẩn, vô cùng bền bỉ, có thể sử dụng lâu dài. Kết hợp với 3% Spandex giúp sản phẩm có độ đàn hồi nhẹ  giúp người mặc thoải mái hơn.', 56, 525000, 252000, 1, '2024-04-04 22:07:08', '2024-04-04 22:07:08', '/storage/uploads/2024/04/05/XTEx1VLj9LFBfpdV0QJdFYAB8bvfmnXBTNsgLTQy.jpg'),
(40, 'Quần Kaki Dài Nam 5S Fashion, Đứng Phom, Tôn Dáng QKD23005', 'Quần Kaki Dài Nam 5S Fashion, Đứng Phom, Tôn Dáng QKD23005', 'Quần Kaki Dài Nam 5S Fashion, Đứng Phom, Tôn Dáng QKD23005 nổi bật với kiểu dáng Slim fit vừa vặn, tôn dáng mà vẫn đảm bảo cảm giác thoải mái khi mặc. Độ dài quần vừa phải, bảng màu đâ dạng, phù hợp với mọi lứa tuổi. Với chất liệu 97% Cotton, quần dài kaki giúp giải quyết nỗi lo nóng bí, khó khăn khi vận động, nhất là trong những ngày tiết trời mùa hè oi bức. Đặc biệt, việc bổ sung thêm 3% thành phần Spandex giúp nâng cao trải nghiệm về độ co giãn, đem tới cảm giác thoải mái khi mặc. Đây là một trong những mẫu quần công sở bán chạy nhất tại 5S Fashion mà các chàng trai không nên bỏ lỡ.', 56, 625000, 325000, 1, '2024-04-04 22:08:07', '2024-04-04 22:08:07', '/storage/uploads/2024/04/05/aTx8xbtft6he23XCknuespx7sqsZ8y8oyhYiyIhx.jpg'),
(41, 'Quần Short Thể Thao Nam 5S Fashion, Cạp Cúc, Phối Màu Trẻ Trung QST23015', 'Quần Short Thể Thao Nam 5S Fashion, Cạp Cúc, Phối Màu Trẻ Trung QST23015', 'Quần Short Thể Thao Nam 5S Fashion, Cạp Cúc, Phối Màu Trẻ Trung QST23015 có phom dáng Slim fit vừa vặn, tôn dáng nhưng vẫn vô cùng thoải mái khi mặc. Thiết kế đơn giản, đường may tinh tế, tỉ mỉ mang tới diện mạo chỉn chu, nam tính cho anh chàng. Quần có túi xẻ hai bên, túi phụ phía sau có khuy cài vô cùng tiện lợi. Đây là mẫu quần short thể thao thuộc top bán chạy tại 5S Fashion.\r\n\r\nQuần được làm từ Polyamide thường được dùng cho dòng quần short nhờ những ưu điểm mềm mướt, bề mặt sáng bóng và nhẵn mịn, sợi vải mát lạnh, nhuộm màu sắc nét và tính đàn hồi tự nhiên cao. Kết hợp với', 56, 469000, 232000, 1, '2024-04-04 22:09:20', '2024-04-04 22:09:20', '/storage/uploads/2024/04/05/RRmDUWWNzNoiHxt2ZzAXGnk8q0ratFwNR0Q27oGj.jpg'),
(42, 'Tất Nam 5S Fashion, Kháng Khuẩn, Khử Mùi TAT23016', 'Tất Nam 5S Fashion, Kháng Khuẩn, Khử Mùi TAT23016', 'Tất Nam TAT23016 sử dụng chất liệu Cotton mềm mại, thấm hút mồ tốt, sản phẩm giữ cho đôi chân luôn thoáng mát nên rất phù hợp với những ai thường mang giày cả ngày. Sản phẩm được dệt bo tròn cổ đảm bảo không bị tụt trong suốt quá trình vận động, đi lại. Thiết kế basic với đa dạng các màu sắc cho bạn lựa chọn như: Trắng - Đen - Ghi - Ghi Sáng.', 55, 80000, 40000, 1, '2024-04-04 22:11:32', '2024-04-04 22:11:32', '/storage/uploads/2024/04/05/DvipDZ6lN4TUsDah2YCuFUfNXVRW9536wZkikDsu.jpg'),
(43, 'Áo Khoác Bomber Nam 5S Fashion, Thiết Kế Phối Màu AKB23015', 'Áo Khoác Bomber Nam 5S Fashion, Thiết Kế Phối Màu AKB23015', 'ÁO KHOÁC BOMBER NAM CAN PHỐI IN CHỮ TRẺ TRUNG\r\n\r\n5S FASHION mang đến cho bạn một outfit mới phong cách với sự kết hợp của áo khoác bomber hai lớp can phối in chữ cách điệu. Vẫn ấm áp với lớp Poly cản gió hiệu quả, trượt nước, trượt bụi, dày dặn. Trẻ trung với thiết kế nổi bật in chữ ngực, đường line tay áo khỏe khoắn, bo cổ dệt phối màu. Với 2 màu sắc cơ bản, nam tính, dễ mặc dễ phối đồ thì đây là item không thể thiếu trong mùa đông này!', 57, 800000, 425000, 1, '2024-04-04 22:15:41', '2024-04-04 22:15:41', '/storage/uploads/2024/04/05/PleCNgueGdGeeANkMFpWepon1rf4IjpGo327CKBq.jpg'),
(44, 'Áo Khoác Gió Nam Lót Nỉ, Mũ Rời, Can Phối Thể Thao AKG23008', 'Áo Khoác Gió Nam Lót Nỉ, Mũ Rời, Can Phối Thể Thao AKG23008', 'ÁO KHOÁC GIÓ NAM WINDPROOF LÓT NỈ MŨ RỜI CAO CẤP\r\n\r\nÁo khoác gió nam KEEP WARM cao cấp nằm trong BST Thu đông 2023 của 5S FASHION. Chất liệu hoàn toàn từ Polyester với 2 lớp, lớp ngoài mềm mịn, cản gió, hạn chế bám bụi, trượt nước nhẹ; lớp trong lót nỉ mềm mịn, tỏa nhiệt ấm áp tức thì.\r\n\r\nThiết kế can phối nổi bật in chữ trước túi ngực cao cấp. Mũ rời tháo được có chốt cố định dễ dàng điều chỉnh, khóa kéo cao cấp trơn tru có vạt che bấm cúc tinh tế.\r\n\r\nMột item khỏe khoắn, nổi bật, thể thao. 4 màu đa dạng giúp bạn lên đồ thật phong cách và năng động.', 57, 789000, 365000, 1, '2024-04-04 22:17:10', '2024-04-04 22:19:21', '/storage/uploads/2024/04/05/MxZOPNkHg8szjNphrFk2TEuhy5gS5EPs6GQ1WMGG.jpg'),
(45, 'Áo Gió Nam 5S Fashion, Cản Gió, Trượt Nước AKG23021', 'Áo Gió Nam 5S Fashion, Cản Gió, Trượt Nước AKG23021', 'ÁO KHOÁC NAM CỔ TRỤ THIẾT KẾ HỌA TIẾT HÌNH THOI\r\n\r\nÁo khoác nam vải gió 2 lớp dày dặn, một thiết kế mang phong cách hoàn toàn mới lạ, độc đáo và trẻ trung của 5S FASHION. Cổ trụ cao giữ ấm, tay và gấu áo bo chun hạn chế gió lùa, nổi bật là phần thiết kế dệt line nổi từ tay và thân áo ghép thành hình thoi đầy cá tính. Một item hoàn hảo vừa giữ ấm vừa thời trang và năng động!', 57, 880000, 338000, 1, '2024-04-04 22:18:15', '2024-04-18 04:34:01', '/storage/uploads/2024/04/05/g3IijFWGnCq3zPJ7eVes5ke2tbiBwjYNBHU3rAif.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(14, 'HOT 2024', 'https://ao.vn', '/storage/uploads/2024/04/14/slide-02.jpg', 1, 1, '2024-04-14 08:10:12', '2024-04-14 08:10:12'),
(15, 'HOT 2024', 'https://hht.vn', '/storage/uploads/2024/04/14/slide-03.jpg', 1, 1, '2024-04-14 08:11:30', '2024-04-14 08:11:30'),
(18, 'HOT2024', 'www.vn', '/storage/uploads/2024/04/14/slide-06.jpg', 1, 1, '2024-04-14 08:14:23', '2024-04-14 08:14:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2024-03-21 07:57:57', '$2y$12$QN2Qirs.laVmTYJSftlL.ejgWIdP1ZaUbnynGQbvhikeHQrl2CIYm', '49sNGv1i40eQfeneOQXMU0yMwKlA7LSBVctSDpgHvt6DvrIMfL2GBw7m0KOI', NULL, NULL),
(5, 'user', 'user@gmail.com', NULL, '$2y$12$QN2Qirs.laVmTYJSftlL.ejgWIdP1ZaUbnynGQbvhikeHQrl2CIYm', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
