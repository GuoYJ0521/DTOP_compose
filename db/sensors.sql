-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-10-19 08:41:07
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
-- 資料表結構 `sensors`
--

CREATE TABLE `sensors` (
  `id` int(11) NOT NULL,
  `sensor_id` int(11) NOT NULL,
  `machine` int(11) NOT NULL,
  `channel_id` decimal(2,1) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `location_x` float DEFAULT NULL,
  `location_y` float DEFAULT NULL,
  `location_z` float DEFAULT NULL,
  `safelimit_mean` float DEFAULT NULL,
  `safelimit_rms` float DEFAULT NULL,
  `safelimit_std` float DEFAULT NULL,
  `lowerlimit_mean` float DEFAULT NULL,
  `lowerlimit_rms` float DEFAULT NULL,
  `lowerlimit_std` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `sensors`
--

INSERT INTO `sensors` (`id`, `sensor_id`, `machine`, `channel_id`, `location`, `location_x`, `location_y`, `location_z`, `safelimit_mean`, `safelimit_rms`, `safelimit_std`, `lowerlimit_mean`, `lowerlimit_rms`, `lowerlimit_std`) VALUES
(1, 1, 1, 1.0, '主軸上方', 1150, 1100, 1000, 60, 70, 60, 30, 40, 20),
(2, 2, 1, 1.0, '載台', 1150, 950, 1000, 100, 150, 150, 20, 20, 20),
(3, 1, 1, 1.2, '主軸下方', 1150, 500, 1000, 60, 130, 130, 40, 20, 20);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sensor_id` (`sensor_id`),
  ADD KEY `machine` (`machine`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sensors`
--
ALTER TABLE `sensors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `sensors`
--
ALTER TABLE `sensors`
  ADD CONSTRAINT `sensors_ibfk_1` FOREIGN KEY (`sensor_id`) REFERENCES `sensor_list` (`id`),
  ADD CONSTRAINT `sensors_ibfk_2` FOREIGN KEY (`machine`) REFERENCES `machines` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
