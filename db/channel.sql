-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-10-19 08:40:32
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `data_dt`
--

-- --------------------------------------------------------

--
-- 資料表結構 `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `channel` decimal(2,1) DEFAULT NULL,
  `mean` float DEFAULT NULL,
  `rms` float DEFAULT NULL,
  `std` float DEFAULT NULL,
  `fft_1` float DEFAULT NULL,
  `fft_2` float DEFAULT NULL,
  `fft_3` float DEFAULT NULL,
  `fft_4` float DEFAULT NULL,
  `fft_5` float DEFAULT NULL,
  `fft_6` float DEFAULT NULL,
  `fft_7` float DEFAULT NULL,
  `fft_8` float DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `channel`
--

INSERT INTO `channel` (`id`, `channel`, `mean`, `rms`, `std`, `fft_1`, `fft_2`, `fft_3`, `fft_4`, `fft_5`, `fft_6`, `fft_7`, `fft_8`, `time`) VALUES
(114, 1.2, 32, 50, 50, 100, 100, 100, 100, 100, 100, 100, 100, '2024-06-24 23:42:40'),
(115, 1.2, 33, 50, 50, 100, 100, 100, 100, 100, 100, 100, 100, '2024-06-24 23:42:42'),
(116, 1.2, 34, 50, 50, 100, 100, 100, 100, 100, 100, 100, 100, '2024-06-24 23:42:44'),
(117, 1.2, 34, 50, 50, 100, 100, 100, 100, 100, 100, 100, 100, '2024-06-24 23:42:46'),
(118, 1.2, 50, 50, 50, 100, 100, 100, 100, 100, 100, 100, 100, '2024-06-24 23:42:48'),
(227, 1.0, 50, 60, 50, 50, 90, 90, 90, 90, 90, 90, 90, '2024-05-14 10:09:17'),
(228, 1.0, 50, 60, 50, 50, 90, 90, 90, 90, 90, 90, 90, '2024-05-14 10:09:18');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
