-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 24-05-23 10:38
-- 서버 버전: 8.0.36
-- PHP 버전: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `jukson`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `lockers`
--

CREATE TABLE `lockers` (
  `id` int NOT NULL,
  `status` int DEFAULT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `use_uid` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 테이블의 덤프 데이터 `lockers`
--

INSERT INTO `lockers` (`id`, `status`, `location_name`, `address`, `use_uid`, `end_date`) VALUES
(1, 0, '대동역', '대전 동구 계족로 176', NULL, NULL),
(2, 0, '대동역', '대전 동구 계족로 176', NULL, NULL),
(3, 0, '대동역', '대전 동구 계족로 176', NULL, NULL),
(4, 0, '대동역', '대전 동구 계족로 176', NULL, NULL),
(5, 0, '대동역', '대전 동구 계족로 176', NULL, NULL),
(6, 0, '대동역', '대전 동구 계족로 176', NULL, NULL),
(7, 1, '대전대학교', '대전 동구 대학로 62-18', '7f 25 3d 6f', '2024-05-24'),
(8, 0, '대전대학교', '대전 동구 대학로 62-18', NULL, NULL),
(9, 0, '우송대학교', '대전 동구 우송로 17-2', NULL, NULL),
(10, 0, '대동역', '대전 동구 계족로 176', NULL, NULL);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
