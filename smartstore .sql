-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2017 at 11:33 PM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE IF NOT EXISTS `advertises` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `num_click` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertise_blogs`
--

CREATE TABLE IF NOT EXISTS `advertise_blogs` (
  `id` int(10) unsigned NOT NULL,
  `advertise_id` int(10) unsigned NOT NULL,
  `blog_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Color', 'a:8:{i:0;s:4:"Red ";i:1;s:6:" Blue ";i:2;s:7:" Green ";i:3;s:7:" White ";i:4;s:7:" Brown ";i:5;s:7:" Black ";i:6;s:6:" Pink ";i:7;s:7:" Yellow";}', NULL, '2017-07-02 08:40:37', '2017-07-02 09:32:11'),
(4, 'Size', 'a:7:{i:0;s:2:"X ";i:1;s:4:" XL ";i:2;s:5:" 4XL ";i:3;s:5:" 5XL ";i:4;s:4:" XM ";i:5;s:5:" XXL ";i:6;s:5:" XXXL";}', NULL, '2017-07-02 08:41:45', '2017-07-02 08:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_attribute_types`
--

CREATE TABLE IF NOT EXISTS `attribute_attribute_types` (
  `id` int(10) unsigned NOT NULL,
  `is_multi` int(11) NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  `attribute_type_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_attribute_values`
--

CREATE TABLE IF NOT EXISTS `attribute_attribute_values` (
  `id` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  `attribute_value_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE IF NOT EXISTS `attribute_categories` (
  `id` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_types`
--

CREATE TABLE IF NOT EXISTS `attribute_types` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE IF NOT EXISTS `attribute_values` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `name`, `is_default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Clothing', 'a:2:{i:0;s:1:"3";i:1;s:1:"4";}', '2017-07-02 08:42:52', '2017-07-02 08:42:52', NULL),
(2, 'Mobile', 'a:1:{i:0;s:1:"3";}', '2017-07-02 15:09:12', '2017-07-02 15:09:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE IF NOT EXISTS `business_types` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vvvvvvvvvvvvvvvvv', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE IF NOT EXISTS `carts` (
  `id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `stock_id` int(10) unsigned NOT NULL,
  `payment_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `inherit_attr` int(11) NOT NULL,
  `stock_type_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `level`, `meta_key`, `ordering`, `status`, `inherit_attr`, `stock_type_id`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Clothing', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 06:15:22', '2017-07-02 06:15:22', NULL),
(3, 'Sports', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 07:18:47', '2017-07-02 07:18:47', NULL),
(4, 'Industrial Parts', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 07:36:52', '2017-07-02 07:36:52', NULL),
(5, 'Electrical Equipment', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 07:37:33', '2017-07-02 07:37:33', NULL),
(6, 'Technology', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 07:38:46', '2017-07-02 07:38:46', NULL),
(7, 'Women’s Clothing', '', 'ad.png', 0, '', 0, 1, 0, 1, 1, '2017-07-02 07:43:28', '2017-07-02 07:43:28', NULL),
(8, 'Men’s Clothing', '', 'cat4.png', 0, '', 0, 1, 0, 1, 1, '2017-07-02 07:44:19', '2017-07-02 07:44:19', NULL),
(9, 'Phones & Accessories', '', 'cat1.png', 0, '', 0, 1, 0, 1, 6, '2017-07-02 07:44:42', '2017-07-02 07:44:42', NULL),
(10, 'Computer & Office', '', 'cat2.png', 0, '', 0, 1, 0, 1, 6, '2017-07-02 07:45:11', '2017-07-02 07:45:11', NULL),
(11, 'Fashion', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 07:48:08', '2017-07-02 07:48:08', NULL),
(12, 'Jewelry & Watches', '', 'cat6.png', 0, '', 0, 1, 0, 1, 11, '2017-07-02 07:48:54', '2017-07-02 07:48:54', NULL),
(13, 'House', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 07:49:54', '2017-07-02 07:49:54', NULL),
(14, 'Home & Garden, Furniture', '', 'cat8.png', 0, '', 0, 1, 0, 1, 13, '2017-07-02 07:50:13', '2017-07-02 07:50:13', NULL),
(15, 'Bags & Shoes', '', 'cat11.png', 0, '', 0, 1, 0, 1, 11, '2017-07-02 07:50:54', '2017-07-02 07:50:54', NULL),
(16, 'Toys, Kids & Baby', '', 'cat7.png', 0, '', 0, 1, 0, 1, 1, '2017-07-02 07:52:47', '2017-07-02 07:52:47', NULL),
(17, 'Sports & Outdoors', '', 'cat10.png', 0, '', 0, 1, 0, 1, 3, '2017-07-02 07:53:26', '2017-07-02 07:53:26', NULL),
(18, ' Auto & Transportation', '', 'cat12.png', 0, '', 0, 1, 0, 1, 5, '2017-07-02 07:56:50', '2017-07-02 07:56:50', NULL),
(19, 'Health & Beauty', '', '', 0, '', 0, 1, 0, 1, 0, '2017-07-02 07:58:19', '2017-07-02 07:58:19', NULL),
(20, 'Health & Beauty, Hair', '', 'cat13.png', 0, '', 0, 1, 0, 1, 19, '2017-07-02 07:58:54', '2017-07-02 07:58:54', NULL),
(21, 'Hot Categories', '', '', 0, '', 0, 1, 0, 1, 7, '2017-07-02 08:05:09', '2017-07-02 08:05:09', NULL),
(22, 'Intimates & Sleepwear', '', '', 0, '', 0, 1, 0, 1, 7, '2017-07-02 08:05:38', '2017-07-02 08:05:38', NULL),
(23, 'Weddings & Events', '', '', 0, '', 0, 1, 0, 1, 7, '2017-07-02 08:06:01', '2017-07-02 08:06:01', NULL),
(24, 'Bottoms', '', '', 0, '', 0, 1, 0, 1, 7, '2017-07-02 08:06:31', '2017-07-02 08:06:31', NULL),
(25, 'Dresses', '', '', 0, '', 0, 1, 0, 1, 21, '2017-07-02 08:07:42', '2017-07-02 08:07:42', NULL),
(26, 'Blouses & Shirts', '', '', 0, '', 0, 1, 0, 1, 21, '2017-07-02 08:08:09', '2017-07-02 08:08:09', NULL),
(27, 'T-Shirts', '', '', 0, '', 0, 1, 0, 1, 21, '2017-07-02 08:08:18', '2017-07-02 08:08:18', NULL),
(28, 'Jumpsuits', '', '', 0, '', 0, 1, 0, 1, 21, '2017-07-02 08:08:27', '2017-07-02 08:08:27', NULL),
(29, 'Rompers', '', '', 0, '', 0, 1, 0, 1, 21, '2017-07-02 08:08:37', '2017-07-02 08:08:37', NULL),
(30, 'Socks', '', '', 0, '', 0, 1, 0, 1, 21, '2017-07-02 08:08:47', '2017-07-02 08:08:47', NULL),
(31, 'Bras', '', '', 0, '', 0, 1, 0, 1, 22, '2017-07-02 08:09:11', '2017-07-02 08:09:11', NULL),
(32, 'Bra & Brief Sets', '', '', 0, '', 0, 1, 0, 1, 22, '2017-07-02 08:09:21', '2017-07-02 08:09:21', NULL),
(33, 'Bustiers & Corsets', '', '', 0, '', 0, 1, 0, 1, 22, '2017-07-02 08:09:32', '2017-07-02 08:09:32', NULL),
(34, 'Panties', '', '', 0, '', 0, 1, 0, 1, 22, '2017-07-02 08:09:42', '2017-07-02 08:09:42', NULL),
(35, 'Nightgowns & Sleepshirts', '', '', 0, '', 0, 1, 0, 1, 22, '2017-07-02 08:09:53', '2017-07-02 08:09:53', NULL),
(36, 'Pajama Sets', '', '', 0, '', 0, 1, 0, 1, 22, '2017-07-02 08:10:04', '2017-07-02 08:10:04', NULL),
(37, 'Wedding Dresses', '', '', 0, '', 0, 1, 0, 1, 23, '2017-07-02 08:10:46', '2017-07-02 08:10:46', NULL),
(38, 'Evening Dresses', '', '', 0, '', 0, 1, 0, 1, 23, '2017-07-02 08:10:59', '2017-07-02 08:10:59', NULL),
(39, 'Prom Dresses', '', '', 0, '', 0, 1, 0, 1, 23, '2017-07-02 08:11:09', '2017-07-02 08:11:09', NULL),
(40, 'Bridesmaid Dresses', '', '', 0, '', 0, 1, 0, 1, 23, '2017-07-02 08:11:19', '2017-07-02 08:11:19', NULL),
(41, 'Flower Girl Dresses', '', '', 0, '', 0, 1, 0, 1, 23, '2017-07-02 08:11:28', '2017-07-02 08:11:28', NULL),
(42, 'Cocktail Dresses', '', '', 0, '', 0, 1, 0, 1, 23, '2017-07-02 08:11:48', '2017-07-02 08:11:48', NULL),
(43, 'Skirts', '', '', 0, '', 0, 1, 0, 1, 24, '2017-07-02 08:12:19', '2017-07-02 08:12:19', NULL),
(44, 'Shorts', '', '', 0, '', 0, 1, 0, 1, 24, '2017-07-02 08:12:28', '2017-07-02 08:12:28', NULL),
(45, 'Leggings', '', '', 0, '', 0, 1, 0, 1, 24, '2017-07-02 08:12:37', '2017-07-02 08:12:37', NULL),
(46, 'Jeans', '', '', 0, '', 0, 1, 0, 1, 24, '2017-07-02 08:12:46', '2017-07-02 08:12:46', NULL),
(47, 'Hot Sale', '', '', 0, '', 0, 1, 0, 1, 8, '2017-07-02 13:24:49', '2017-07-02 13:24:49', NULL),
(48, 'Outerwear & Jackets', '', '', 0, '', 0, 1, 0, 1, 8, '2017-07-02 13:25:13', '2017-07-02 13:25:13', NULL),
(49, 'Accessories', '', '', 0, '', 0, 1, 0, 1, 8, '2017-07-02 13:25:27', '2017-07-02 13:25:27', NULL),
(50, 'T-Shirts', '', '', 0, '', 0, 1, 0, 1, 47, '2017-07-02 13:26:21', '2017-07-02 14:34:18', NULL),
(51, 'Jackets', '', '', 0, '', 0, 1, 0, 1, 48, '2017-07-02 13:27:12', '2017-07-02 13:27:12', NULL),
(52, ' Eyewear Frames', '', '', 0, '', 0, 1, 0, 1, 49, '2017-07-02 13:28:42', '2017-07-02 13:30:01', NULL),
(53, 'Baby Clothing', '', '', 0, '', 0, 1, 0, 1, 16, '2017-07-02 13:30:51', '2017-07-02 13:30:51', NULL),
(54, 'Girls Clothing', '', '', 0, '', 0, 1, 0, 1, 16, '2017-07-02 13:31:08', '2017-07-02 13:31:08', NULL),
(55, 'Boys Clothing', '', '', 0, '', 0, 1, 0, 1, 16, '2017-07-02 13:31:27', '2017-07-02 13:31:27', NULL),
(56, ' Baby Dresses', '', '', 0, '', 0, 1, 0, 1, 53, '2017-07-02 13:32:50', '2017-07-02 13:35:31', NULL),
(57, ' Baby Rompers', '', '', 0, '', 0, 1, 0, 1, 53, '2017-07-02 13:33:15', '2017-07-02 13:35:21', NULL),
(58, 'Clothing Sets', '', '', 0, '', 0, 1, 0, 1, 54, '2017-07-02 13:42:27', '2017-07-02 13:42:27', NULL),
(59, 'Tops & Tees', '', '', 0, '', 0, 1, 0, 1, 54, '2017-07-02 13:42:39', '2017-07-02 13:42:39', NULL),
(60, 'Sleepwear & Robes', '', '', 0, '', 0, 1, 0, 1, 54, '2017-07-02 13:42:48', '2017-07-02 13:42:48', NULL),
(61, 'Clothing Sets', '', '', 0, '', 0, 1, 0, 1, 55, '2017-07-02 13:45:54', '2017-07-02 13:45:54', NULL),
(62, 'T-Shirts', '', '', 0, '', 0, 1, 0, 1, 55, '2017-07-02 13:46:47', '2017-07-02 13:46:47', NULL),
(63, 'Hoodies & Sweatshirts', '', '', 0, '', 0, 1, 0, 1, 55, '2017-07-02 13:47:00', '2017-07-02 13:47:00', NULL),
(64, 'Swimming', '', '', 0, '', 0, 1, 0, 1, 17, '2017-07-02 13:47:33', '2017-07-02 13:47:33', NULL),
(65, 'Sneakers', '', '', 0, '', 0, 1, 0, 1, 17, '2017-07-02 13:47:48', '2017-07-02 13:47:48', NULL),
(66, 'Sportswear', '', '', 0, '', 0, 1, 0, 1, 17, '2017-07-02 13:48:02', '2017-07-02 13:48:02', NULL),
(67, 'Bikini Set', '', '', 0, '', 0, 1, 0, 1, 64, '2017-07-02 13:48:46', '2017-07-02 13:48:46', NULL),
(68, 'One-Piece Suits', '', '', 0, '', 0, 1, 0, 1, 64, '2017-07-02 13:48:56', '2017-07-02 13:48:56', NULL),
(69, 'Two-Piece Suits', '', '', 0, '', 0, 1, 0, 1, 64, '2017-07-02 13:49:08', '2017-07-02 13:49:08', NULL),
(70, 'Running Shoes', '', '', 0, '', 0, 1, 0, 1, 65, '2017-07-02 13:49:27', '2017-07-02 13:49:27', NULL),
(71, 'Hiking Shoes', '', '', 0, '', 0, 1, 0, 1, 65, '2017-07-02 13:49:36', '2017-07-02 13:49:36', NULL),
(72, 'Skateboarding Shoes', '', '', 0, '', 0, 1, 0, 1, 65, '2017-07-02 13:49:48', '2017-07-02 13:49:48', NULL),
(73, 'Transportation', '', '', 0, '', 0, 1, 0, 1, 18, '2017-07-02 13:51:42', '2017-07-02 13:51:42', NULL),
(74, ' Motorcycles', '', '', 0, '', 0, 1, 0, 1, 18, '2017-07-02 13:51:59', '2017-07-02 13:53:17', NULL),
(75, 'Automobiles', '', '', 0, '', 0, 1, 0, 1, 18, '2017-07-02 13:53:01', '2017-07-02 13:53:01', NULL),
(76, 'Bicycle', '', '', 0, '', 0, 1, 0, 1, 73, '2017-07-02 13:54:01', '2017-07-02 13:54:01', NULL),
(77, 'Bicycle Parts', '', '', 0, '', 0, 1, 0, 1, 73, '2017-07-02 13:54:14', '2017-07-02 13:54:14', NULL),
(78, 'Boats & Ships', '', '', 0, '', 0, 1, 0, 1, 73, '2017-07-02 13:54:28', '2017-07-02 13:54:28', NULL),
(79, 'Auto Electronics', '', '', 0, '', 0, 1, 0, 1, 75, '2017-07-02 13:55:53', '2017-07-02 13:59:17', NULL),
(80, 'Auto Electrical System', '', '', 0, '', 0, 1, 0, 1, 75, '2017-07-02 13:56:10', '2017-07-02 13:59:40', NULL),
(81, 'Auto Engine', '', '', 0, '', 0, 1, 0, 1, 75, '2017-07-02 13:56:21', '2017-07-02 13:58:53', NULL),
(82, 'Motorcycles', '', '', 0, '', 0, 1, 0, 1, 74, '2017-07-02 13:56:40', '2017-07-02 13:56:40', NULL),
(83, 'Motorcycle Parts', '', '', 0, '', 0, 1, 0, 1, 74, '2017-07-02 13:56:55', '2017-07-02 13:56:55', NULL),
(84, 'Jerseys', '', '', 0, '', 0, 1, 0, 1, 66, '2017-07-02 13:57:41', '2017-07-02 13:57:41', NULL),
(85, ' Hiking Jackets', '', '', 0, '', 0, 1, 0, 1, 66, '2017-07-02 13:57:56', '2017-07-02 13:57:56', NULL),
(86, 'Mobile Phones', '', '', 0, '', 0, 1, 0, 1, 9, '2017-07-02 14:00:19', '2017-07-02 14:00:19', NULL),
(87, '  Phone Bags & Cases', '', '', 0, '', 0, 1, 0, 1, 9, '2017-07-02 14:00:34', '2017-07-02 14:00:34', NULL),
(88, '  Mobile Phone Accessories', '', '', 0, '', 0, 1, 0, 1, 9, '2017-07-02 14:00:57', '2017-07-02 14:00:57', NULL),
(89, 'Octa Core', '', '', 0, '', 0, 1, 0, 1, 86, '2017-07-02 14:02:43', '2017-07-02 14:02:43', NULL),
(90, 'Quad Core', '', '', 0, '', 0, 1, 0, 1, 86, '2017-07-02 14:02:52', '2017-07-02 14:02:52', NULL),
(91, 'Single SIM Card', '', '', 0, '', 0, 1, 0, 1, 86, '2017-07-02 14:03:02', '2017-07-02 14:03:02', NULL),
(92, 'Dual SIM Card', '', '', 0, '', 0, 1, 0, 1, 86, '2017-07-02 14:03:13', '2017-07-02 14:03:13', NULL),
(93, 'Pouches', '', '', 0, '', 0, 1, 0, 1, 87, '2017-07-02 14:03:37', '2017-07-02 14:03:37', NULL),
(94, ' iPhone 7 Cases', '', '', 0, '', 0, 1, 0, 1, 87, '2017-07-02 14:03:49', '2017-07-02 14:03:49', NULL),
(95, ' iPhone 6 Cases', '', '', 0, '', 0, 1, 0, 1, 87, '2017-07-02 14:03:58', '2017-07-02 14:03:58', NULL),
(96, 'Backup Battery Packs', '', '', 0, '', 0, 1, 0, 1, 88, '2017-07-02 14:04:22', '2017-07-02 14:04:22', NULL),
(97, 'Screen Protectors', '', '', 0, '', 0, 1, 0, 1, 88, '2017-07-02 14:04:33', '2017-07-02 14:04:33', NULL),
(98, 'Mobile Phone Cables', '', '', 0, '', 0, 1, 0, 1, 88, '2017-07-02 14:04:43', '2017-07-02 14:04:43', NULL),
(99, 'Laptop & Tablets', '', '', 0, '', 0, 1, 0, 1, 10, '2017-07-02 14:05:29', '2017-07-02 14:05:29', NULL),
(100, ' Security & Protection', '', '', 0, '', 0, 1, 0, 1, 10, '2017-07-02 14:05:42', '2017-07-02 14:05:42', NULL),
(101, 'Office Electronics', '', '', 0, '', 0, 1, 0, 1, 10, '2017-07-02 14:05:53', '2017-07-02 14:05:53', NULL),
(102, ' Laptops', '', '', 0, '', 0, 1, 0, 1, 99, '2017-07-02 14:06:48', '2017-07-02 14:40:03', NULL),
(103, 'Gaming Laptops', '', '', 0, '', 0, 1, 0, 1, 99, '2017-07-02 14:06:58', '2017-07-02 14:06:58', NULL),
(104, 'Tablets', '', '', 0, '', 0, 1, 0, 1, 99, '2017-07-02 14:07:08', '2017-07-02 14:07:08', NULL),
(105, 'Surveillance Products', '', '', 0, '', 0, 1, 0, 1, 100, '2017-07-02 14:07:25', '2017-07-02 14:07:25', NULL),
(106, 'Access Control', '', '', 0, '', 0, 1, 0, 1, 100, '2017-07-02 14:07:33', '2017-07-02 14:07:33', NULL),
(107, ' Fire Protection', '', '', 0, '', 0, 1, 0, 1, 100, '2017-07-02 14:07:42', '2017-07-02 14:07:42', NULL),
(108, 'Printer Supplies', '', '', 0, '', 0, 1, 0, 1, 101, '2017-07-02 14:08:09', '2017-07-02 14:08:09', NULL),
(109, 'Projectors & Accessories', '', '', 0, '', 0, 1, 0, 1, 101, '2017-07-02 14:08:19', '2017-07-02 14:08:19', NULL),
(110, 'Fine Jewelry', '', '', 0, '', 0, 1, 0, 1, 12, '2017-07-02 14:09:04', '2017-07-02 14:09:04', NULL),
(111, 'Men''s Watches', '', '', 0, '', 0, 1, 0, 1, 12, '2017-07-02 14:09:28', '2017-07-02 14:09:28', NULL),
(112, 'Fashion Jewelry', '', '', 0, '', 0, 1, 0, 1, 12, '2017-07-02 14:09:44', '2017-07-02 14:09:44', NULL),
(113, '925 Silver Jewelry ', '', '', 0, '', 0, 1, 0, 1, 110, '2017-07-02 14:11:13', '2017-07-02 14:11:13', NULL),
(114, 'Diamond Jewelry', '', '', 0, '', 0, 1, 0, 1, 110, '2017-07-02 14:11:26', '2017-07-02 14:11:26', NULL),
(115, 'Mechanical Watches', '', '', 0, '', 0, 1, 0, 1, 111, '2017-07-02 14:11:48', '2017-07-02 14:11:48', NULL),
(116, 'Quartz Watches', '', '', 0, '', 0, 1, 0, 1, 111, '2017-07-02 14:11:58', '2017-07-02 14:11:58', NULL),
(117, 'Necklaces & Pendants', '', '', 0, '', 0, 1, 0, 1, 112, '2017-07-02 14:12:20', '2017-07-02 14:12:20', NULL),
(118, 'Hot Rings', '', '', 0, '', 0, 1, 0, 1, 112, '2017-07-02 14:12:30', '2017-07-02 14:12:30', NULL),
(119, 'Trendy Earrings', '', '', 0, '', 0, 1, 0, 1, 112, '2017-07-02 14:12:39', '2017-07-02 14:12:39', NULL),
(120, 'Women''s Luggage & Bags', '', '', 0, '', 0, 1, 0, 1, 15, '2017-07-02 14:13:16', '2017-07-02 14:13:59', NULL),
(121, '  Men''s Luggage & Bags', '', '', 0, '', 0, -1, 0, 1, 15, '2017-07-02 14:14:19', '2017-07-02 14:14:19', NULL),
(122, 'Other Bags & Accessories', '', '', 0, '', 0, -1, 0, 1, 15, '2017-07-02 14:14:31', '2017-07-02 14:14:31', NULL),
(123, 'Fashion Backpacks', '', '', 0, '', 0, 1, 0, 1, 120, '2017-07-02 14:14:59', '2017-07-02 14:14:59', NULL),
(124, 'Totes', '', '', 0, '', 0, 1, 0, 1, 120, '2017-07-02 14:15:09', '2017-07-02 14:15:09', NULL),
(125, ' Men''s Backpacks', '', '', 0, '', 0, 1, 0, 1, 121, '2017-07-02 14:15:37', '2017-07-02 14:15:37', NULL),
(126, ' Crossbody Bags', '', '', 0, '', 0, 1, 0, 1, 121, '2017-07-02 14:16:00', '2017-07-02 14:16:00', NULL),
(127, 'Kids & Baby Bags', '', '', 0, '', 0, 1, 0, 1, 122, '2017-07-02 14:16:23', '2017-07-02 14:16:23', NULL),
(128, 'Kitchen, Dining & Bar', '', '', 0, '', 0, 1, 0, 1, 14, '2017-07-02 14:17:15', '2017-07-02 14:17:15', NULL),
(129, '  Home Storage', '', '', 0, '', 0, 1, 0, 1, 14, '2017-07-02 14:17:31', '2017-07-02 14:17:31', NULL),
(130, '  Home Textiles', '', '', 0, '', 0, 1, 0, 1, 14, '2017-07-02 14:17:53', '2017-07-02 14:17:53', NULL),
(131, ' Bakeware', '', '', 0, '', 0, 1, 0, 1, 128, '2017-07-02 14:18:45', '2017-07-02 14:18:45', NULL),
(132, 'Cooking Tools', '', '', 0, '', 0, 1, 0, 1, 128, '2017-07-02 14:19:03', '2017-07-02 14:19:03', NULL),
(133, 'Clothing & Wardrobe Storage', '', '', 0, '', 0, 1, 0, 1, 129, '2017-07-02 14:19:23', '2017-07-02 14:19:23', NULL),
(134, 'Kitchen Storage', '', '', 0, '', 0, 1, 0, 1, 129, '2017-07-02 14:19:31', '2017-07-02 14:19:31', NULL),
(135, 'Bedding Sets', '', '', 0, '', 0, 1, 0, 1, 130, '2017-07-02 14:19:58', '2017-07-02 14:19:58', NULL),
(136, 'Curtains', '', '', 0, '', 0, 1, 0, 1, 130, '2017-07-02 14:20:09', '2017-07-02 14:20:09', NULL),
(137, 'Hair & Accessories', '', '', 0, '', 0, 1, 0, 1, 20, '2017-07-02 14:20:46', '2017-07-02 14:20:46', NULL),
(138, 'Makeup', '', '', 0, '', 0, 1, 0, 1, 20, '2017-07-02 14:20:59', '2017-07-02 14:20:59', NULL),
(139, 'Beauty Tools', '', '', 0, '', 0, 1, 0, 1, 20, '2017-07-02 14:21:12', '2017-07-02 14:21:12', NULL),
(140, 'Human Hair', '', '', 0, '', 0, 1, 0, 1, 137, '2017-07-02 14:21:49', '2017-07-02 14:21:49', NULL),
(141, 'Fusion Hair Extensions', '', '', 0, '', 0, 1, 0, 1, 137, '2017-07-02 14:22:13', '2017-07-02 14:22:13', NULL),
(142, 'Beauty Essentials', '', '', 0, '', 0, 1, 0, 1, 138, '2017-07-02 14:22:31', '2017-07-02 14:24:38', NULL),
(143, 'Makeup Set', '', '', 0, '', 0, 1, 0, 1, 138, '2017-07-02 14:22:42', '2017-07-02 14:24:08', NULL),
(144, 'Curling Iron', '', '', 0, '', 0, 1, 0, 1, 139, '2017-07-02 14:23:22', '2017-07-02 14:23:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_stocks`
--

CREATE TABLE IF NOT EXISTS `category_stocks` (
  `id` int(10) unsigned NOT NULL,
  `stock_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE IF NOT EXISTS `conditions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ex_rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `ex_rate`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'aaaaaaaaaaa', 'ssssssssss', 'ccccccccccc', 'phnom penh', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `galleryable_id` int(10) unsigned NOT NULL,
  `galleryable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `caption`, `path`, `status`, `created_at`, `updated_at`, `galleryable_id`, `galleryable_type`) VALUES
(119, 'Large-Size-2016-Snow-Winter-Jacket-Women-Fashion-Women-s-90-White-Duck-Down-Jackets-Ultra.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:36:19', '2017-04-11 23:36:19', 99, ''),
(120, 'Manteau-Femme-Stand-Collar-Slim-Short-White-Duck-Ultra-Light-Down-Jacket-Women-Casual-Padded-Coat.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:36:19', '2017-04-11 23:36:19', 99, ''),
(121, '2015-Top-Quality-Brand-Ladies-Long-Winter-Autumn-Overcoat-Women-Ultra-Light-90-White-Duck-Down.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:36:19', '2017-04-11 23:36:19', 99, ''),
(122, '2016-New-Women-Winter-Coat-Ultralight-Slim-90-Duck-Down-Jackets-Plus-Size-Female-Long-Down.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:36:19', '2017-04-11 23:36:19', 99, ''),
(123, 'New-Autumn-Women-Long-Jackets-Coats-Chic-Collarless-Long-Sleeve-Single-Breasted-Solid-Color-Padded-Coat.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:36:19', '2017-04-11 23:36:19', 99, ''),
(124, 'MissFoFo-Women-s-font-b-Down-b-font-font-b-Coats-b-font-and-CLJ-Jackets.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:39:55', '2017-04-11 23:39:55', 100, ''),
(125, 'Elf-SACK-w-oil-painting-lemon-2016-vintage-color-block-decoration-shirt-collar-down-coat-long.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:39:56', '2017-04-11 23:39:56', 100, ''),
(126, 'NEW-2014-Winter-Women-s-Large-Fur-Collar-White-Duck-Down-Coats-Slim-Thickening-Frozen-Down.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:39:56', '2017-04-11 23:39:56', 100, ''),
(127, 'ICEbear-2016-New-Women-Winter-Large-Fur-Collar-Hooded-Woman-Slim-Parka-Womens-Jacket-Coats-Thick.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:44:57', '2017-04-11 23:44:57', 101, ''),
(128, 'New-Womes-s-Coats-Down-Winter-Long-Thick-Black-Solid-Female-Parka-Hooded-Coat-Winter-Coat.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:44:57', '2017-04-11 23:44:57', 101, ''),
(129, 'MIEGOFCE-Brand-New-2015-High-Quality-Warm-Winter-Jacket-And-Coat-For-Women-And-Young-Girl.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:47:35', '2017-04-11 23:47:35', 102, ''),
(130, 'New-Coats-Down-Winter-Short-black-Solid-Female-Parka-Hooded-Coat-winter-jacket-women-2016.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:47:35', '2017-04-11 23:47:35', 102, ''),
(131, 'ICEbear-2016-Slim-Short-Coat-With-Puff-Stand-Collar-Hooded-Wadded-Jacket-Parka-Winter-Coat-Women.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:47:35', '2017-04-11 23:47:35', 102, ''),
(132, 'ICEbear-2016-New-Brand-Clothing-Women-Spring-Autumn-Silm-Long-Thin-Parka-Jacket-With-Hat-Detachable.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:49:06', '2017-04-11 23:49:06', 103, ''),
(133, '2017-Women-Warm-Thin-Coats-Women-s-Parka-Jackets-With-Hood-Women-s-Fashion-Jackets-and.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:49:06', '2017-04-11 23:49:06', 103, ''),
(134, 'ICEbear-2017-Woven-Many-Colors-Women-Coat-font-b-Parkas-b-font-Spring-Autumn-Regular-Warm.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-11 23:49:06', '2017-04-11 23:49:06', 103, ''),
(135, 'BerryGo-Floral-print-halter-chiffon-long-dress-Women-backless-2017-maxi-dresses-vestidos-Sexy-white-split.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:15:39', '2017-04-12 02:15:39', 104, ''),
(136, '2016-Womens-Summer-Elegant-Beach-Chiffon-Clothing-Ladies-Bohemian-Print-Maxi-Long-Dress-Plus-Size-6XL.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:15:40', '2017-04-12 02:15:40', 104, ''),
(137, 'Dotfashion-White-Floral-Maxi-font-b-Dress-b-font-Women-Botanical-Print-Button-Up-Ruffle-Summer.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:15:40', '2017-04-12 02:15:40', 104, ''),
(138, 'Simplee-Boho-style-long-dress-women-Off-shoulder-beach-summer-dress-new-year-Vintage-chifon-white.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:15:40', '2017-04-12 02:15:40', 104, ''),
(139, 'Summer-Dress-2017-Sexy-Elegant-Party-Bodycon-Club-Off-Shoulder-Dress-Red-Black-Blue-Casual-Vintage.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:18:22', '2017-04-12 02:18:22', 105, ''),
(140, 'Veri-Gude-Spring-and-Fall-Fashion-Long-Plaid-Shirt-Dress-Long-Sleeve-Women-Cotton-Shirtdress-Free.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:18:22', '2017-04-12 02:18:22', 105, ''),
(141, 'Simplee-Lace-up-velvet-vintage-women-dress-Backless-short-party-sexy-dress-retro-midi-dress-Pencil.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:18:23', '2017-04-12 02:18:23', 105, ''),
(142, 'T-O-Women-Summer-Elegant-Vintage-Retro-Deep-V-Back-Sleeveless-Solid-Color-Overall-Ruched-Party.jpg_220x220 (1).jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:20:54', '2017-04-12 02:20:54', 106, ''),
(143, 'Reaqka-Women-Summer-Dress-2017-New-Fashion-Hollow-Out-Sleeveless-Pencil-Plus-Size-Dress-Knee-Length.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:20:54', '2017-04-12 02:20:54', 106, ''),
(144, 'BLACK-AND-WHITE-STRIPE-U-WIRE-MIDI-DRESS.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:20:54', '2017-04-12 02:20:54', 106, ''),
(145, 'BEFORW-Summer-Women-Sexy-Sleeveless-Solid-Color-Slim-Large-Size-Dress-Fashion-Casual-Lace-Plus-Size.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:20:54', '2017-04-12 02:20:54', 106, ''),
(146, 'Hot-New-2014-Summer-Women-s-Fashion-O-neck-Milk-Silk-Vintage-Print-One-piece-Dress.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:24:09', '2017-04-12 02:24:09', 107, ''),
(147, 'SheIn-Summer-Short-Dresses-Casual-Womens-New-Arrival-Multicolor-Round-Neck-Floral-Cut-Out-Sleeveless-Shift.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:24:09', '2017-04-12 02:24:09', 107, ''),
(148, 'Simplee-Apparel-Sexy-off-shoulder-sequin-tassel-summer-dress-2016-beach-party-short-dress-Women-backless.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:24:09', '2017-04-12 02:24:09', 107, ''),
(149, 'TFGS-2016-New-Design-Design-summer-new-women-shirts-dress-Cat-footprints-pattern-Show-thin-Shirt.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-12 02:24:09', '2017-04-12 02:24:09', 107, ''),
(150, 'Women-Loose-off-the-Shoulder-Plaid-Striped-Blue-Shirts-Top-Casual-Blouses.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-19 20:20:29', '2017-04-19 20:20:29', 108, ''),
(151, 'Dotfashion-Korean-Style-Women-Blue-Embroidered-Striped-Off-The-Shoulder-Knot-Front-Ruffle-Top-With-Patch.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-19 20:20:29', '2017-04-19 20:20:29', 108, ''),
(152, 'Summer-Women-Striped-Blouses-Sexy-Off-Shoulder-Ruffles-Striped-Shirts-Plus-Size-Girls-Fashion-Blusas-Shirts.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-04-19 20:22:17', '2017-04-19 20:22:17', 109, ''),
(160, 'Backless-7-colors-celebrity-dresses-high-quality-yellow-bodycon-hl-bandage-dress.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:35:45', '2017-07-02 09:35:45', 3, ''),
(161, 'Berydress-Elegant-Womens-Mini-Dress-Sexy-Halter-Neck-Sleeveless-Alluring-Back-Nightclub-Black-Lace-Bodycon-Dresses.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:35:45', '2017-07-02 09:35:45', 3, ''),
(162, 'Vfemage-Women-Elegant-Sexy-Crochet-Lace-Floral-Print-Vintage-Pinup-Slim-Party-Evening-Special-Occasion-Bodycon.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:35:45', '2017-07-02 09:35:45', 3, ''),
(163, 'Women-candy-HL-Bandage-Dress-Lady-Mini-Evening-Dress-prom-club-wear-Summer-Breathable-Girl-Dress.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:35:45', '2017-07-02 09:35:45', 3, ''),
(164, '15.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:40:13', '2017-07-02 09:40:13', 4, ''),
(165, '16.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:40:13', '2017-07-02 09:40:13', 4, ''),
(167, 'Elegant-A-line-Sweetheart-Appliqued-Organza-Bridal-Wedding-Dress-2015.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:50:16', '2017-07-02 09:50:16', 5, ''),
(168, 'free-shipping-2014-new-wedding-dress-belt-romantic-sexy-bridal-gown-brides-dress-lace-fashion-hot.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:50:16', '2017-07-02 09:50:16', 5, ''),
(169, 'Real-Picture-Mermaid-Wedding-dress-2015-Lace-up-Feather-Ruffles-Organza-Full-Ruffles-Bride-dress-sereia.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:50:16', '2017-07-02 09:50:16', 5, ''),
(170, '2016-Pink-Cloud-Photo-Wedding-Dresses-Long-Tulle-Long-Cheap-Sexy-Vestido-De-Noiva-Summer-Puffy.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:50:46', '2017-07-02 09:50:46', 5, ''),
(171, 'FASHION-Women-s-Sexy-V-Neck-Maternity-Dress-Stretchy-Tunic-Short-Sleeve-Office-OL-Dresses-Loose.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 09:56:31', '2017-07-02 09:56:31', 6, ''),
(172, '16.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 10:06:27', '2017-07-02 10:06:27', 7, ''),
(175, '22.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 14:43:44', '2017-07-02 14:43:44', 9, ''),
(176, '2.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 14:44:28', '2017-07-02 14:44:28', 9, ''),
(184, '1.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 14:56:21', '2017-07-02 14:56:21', 11, ''),
(185, '11.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 14:56:57', '2017-07-02 14:56:57', 10, ''),
(186, 'Motorcycle-Leather-Jackets-Men-Autumn-Winter-Leather-Clothing-Men-Leather-Jackets-Male-Business-casual-Coats-New.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 15:02:39', '2017-07-02 15:02:39', 12, ''),
(187, 'CAMEL-Lovers-Men-s-Outdoor-Jacket-Outerwear-Thin-Windproof-Waterproof-Coat-Sportswear-College-Men-Women-s.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 15:04:08', '2017-07-02 15:04:08', 12, ''),
(188, 'Mens-Jackets-And-Coats-Casual-Jacket-Men-Clothes-Cotton-Denim-Jacket-Solid-Zipper-Outdoor-Coat-Men.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 15:04:22', '2017-07-02 15:04:22', 12, ''),
(189, 'Grandwish-2016-New-Men-Bomber-Jacket-Hip-Hop-Patch-Designs-Slim-Fit-Pilot-Bomber-Jacket-Coat.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 15:04:36', '2017-07-02 15:04:36', 12, ''),
(190, 'Dreami-Original-Xiaomi-Redmi-4X-2GB-RAM-16GB-ROM-Official-Global-Rom-Snapdragon-435-Mobile-Phone.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 15:12:30', '2017-07-02 15:12:30', 13, ''),
(191, 'free-shipping-Xiaomi-Redmi-4X-pro-prime-4GB-RAM-64GB-ROM-Fingerprint-Snapdragon-435-OctaCore-5.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 15:12:30', '2017-07-02 15:12:30', 13, ''),
(192, 'Original-Xiaomi-Redmi-4X-2GB-16GB-Mobile-Phone-4100mAh-Snapdragon-435-Octa-Core-Fingerprint-ID-FDD.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 15:12:30', '2017-07-02 15:12:30', 13, ''),
(193, '2013-Elegant-Vintage-Women-Career-OL-Cotton-Shirt-Size-S-2XL-Classic-Design-Lady-Office-Long.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:33:12', '2017-07-02 16:33:12', 14, ''),
(194, '2017-New-slim-formal-long-sleeve-women-shirt-OL-autumn-Elegant-V-neck-lace-Patchwork-chiffon.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:33:12', '2017-07-02 16:33:12', 14, ''),
(195, 'Fashion-V-Neck-short-sleeve-slim-women-shirt-OL-Formal-Business-puff-sleeve-chiffon-blouse-office.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:33:12', '2017-07-02 16:33:12', 14, ''),
(200, '2016-Fashion-one-shoulder-Blue-striped-women-dress-shirt-Sexy-side-split-Elegant-half-sleeve-waistband.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:47:23', '2017-07-02 16:47:23', 16, ''),
(201, '2017-Summer-Women-Sexy-Fashion-Dresses-Straight-Striped-Ruffles-Mini-Butterfly-Sleeve-Slash-Neck-Plus-Size.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:47:23', '2017-07-02 16:47:23', 16, ''),
(204, 'Summer-Dress-2017-Women-Off-Shoulder-Party-Dresses-Red-Blue-Casual-Elegant-Vintage-Midi-Dress-Vestidos.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:48:08', '2017-07-02 16:48:08', 16, ''),
(205, 'Women-Clothing-Dresses-Ever-Pretty-HE05294-Women-V-neck-Sleeveless-High-Stretch-Summer-Casual-Dress-Royal.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:48:08', '2017-07-02 16:48:08', 16, ''),
(207, 'Vfemage-Womens-embroidery-Elegant-Vintage-Dobby-fabric-Hollow-out-embroidered-Ruched-Pencil-Bodycon-Evening-Party-Dress.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:54:55', '2017-07-02 16:54:55', 17, ''),
(208, 'Vfemage-Women-Sexy-Elegant-Floral-Applique-embroidery-Ruched-Party-Sheath-Special-Occasion-Bridemaid-Mother-of-Bride.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:54:55', '2017-07-02 16:54:55', 17, ''),
(209, 'Vfemage-Women-Embroidered-Floral-See-Through-Lace-Party-Evening-Bridemaid-Mother-of-Bride-Special-Occasion-Embroidery.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:55:34', '2017-07-02 16:55:34', 17, ''),
(210, 'Vfemage-Womens-Summer-Elegant-Floral-Butterfly-Print-Charming-Pinup-Cap-Sleeve-Casual-Party-Bodycon-Sheath-Dress.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 16:55:34', '2017-07-02 16:55:34', 17, ''),
(216, 'Simplee-Backless-2017-beach-summer-dress-women-sundress-Bow-casual-linen-sexy-dress-Slim-fit-bodycon.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 17:08:25', '2017-07-02 17:08:25', 18, ''),
(217, '-DEIVE-TEGER-Free-shipping-2013-bandage-Celebrity-dress-Cocktail-Party-Evening-Dresses-5-colors-HL737.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 17:08:54', '2017-07-02 17:08:54', 18, ''),
(218, 'YACKALASI-Women-font-b-Dress-b-font-Metal-Mesh-Party-Slim-Summer-Vestidos-Kendall-Jenner-Sexy.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 17:08:54', '2017-07-02 17:08:54', 18, ''),
(223, 'Summer-new-vest-dress-Women-sleeveless-Slim-lace-dress-2017-Modal-O-collar-fashion-Solid-color.jpg_220x220.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 17:12:55', '2017-07-02 17:12:55', 19, ''),
(224, 'Nadafair-100-Cotton-Spaghetti-Strap-Black-Sexy-Club-Backless-Bodycon-Dress-Women-Summer-Beach-Casual-Mini.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 17:20:28', '2017-07-02 17:20:28', 20, ''),
(225, 'HH.jpg', 'assets/uploads/stocks/alias/', 0, '2017-07-02 17:23:02', '2017-07-02 17:23:02', 21, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_10_10_025109_create-profile-table', 1),
('2016_10_10_031905_create-galleries-table', 1),
('2016_10_15_065621_create_socialAccounts_table', 1),
('2016_11_23_010528_create_conditions_table', 1),
('2016_11_23_010624_create_stock_types_table', 1),
('2016_11_23_010724_create_attributes_table', 1),
('2016_11_23_010903_create_attribute_types_table', 1),
('2016_11_23_011030_create_countries_table', 1),
('2016_11_23_011150_create_attribute_values_table', 1),
('2016_11_23_011323_create_business_types_table', 1),
('2016_11_23_011416_create_staff_ranges_table', 1),
('2016_11_23_011503_create_revenue_ranges_table', 1),
('2016_11_23_012053_create_currencies_table', 1),
('2016_11_23_012341_create_stock_uoms_table', 1),
('2016_11_23_012437_create_blogs_table', 1),
('2016_11_23_012623_create_sections_table', 1),
('2016_11_23_013656_create_payments_table', 1),
('2016_11_23_014137_create_stores_table', 1),
('2016_11_23_014333_create_advertises_table', 1),
('2016_11_23_022758_create_categories_table', 1),
('2016_11_23_033141_create_slideshows_table', 1),
('2016_11_23_033240_create_attribute_categories_table', 1),
('2016_11_23_033810_create_attribute_attribute_types_table', 1),
('2016_11_23_034300_create_attribute_attribute_values_table', 1),
('2016_11_23_034503_create_provinces_table', 1),
('2016_11_23_034723_create_shipping_companies_table', 1),
('2016_11_23_035107_create_shipping_province_prices_table', 1),
('2016_11_23_041339_create_stocks_table', 1),
('2016_11_23_042500_create_stock_balances_table', 1),
('2016_11_23_042555_create_stock_moves_table', 1),
('2016_11_23_042719_create_stock_sections_table', 1),
('2016_11_23_042842_create_category_stocks_table', 1),
('2016_11_23_042956_create_carts_table', 1),
('2016_11_23_050106_create_advertise_blogs_table', 1),
('2016_11_23_062939_create_store_users_table', 1),
('2017_02_24_061525_create_tests_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) unsigned NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `primaryHome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondaryHome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isComplete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revenue_ranges`
--

CREATE TABLE IF NOT EXISTS `revenue_ranges` (
  `id` int(10) unsigned NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `revenue_ranges`
--

INSERT INTO `revenue_ranges` (`id`, `min`, `max`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `front_page_lavel` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_companies`
--

CREATE TABLE IF NOT EXISTS `shipping_companies` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `office_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_province_prices`
--

CREATE TABLE IF NOT EXISTS `shipping_province_prices` (
  `id` int(10) unsigned NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `expected_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handling_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to_province_id` int(10) unsigned DEFAULT NULL,
  `from_province_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE IF NOT EXISTS `slideshows` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_login`
--

CREATE TABLE IF NOT EXISTS `social_login` (
  `id` int(10) unsigned NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socialID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_ranges`
--

CREATE TABLE IF NOT EXISTS `staff_ranges` (
  `id` int(10) unsigned NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff_ranges`
--

INSERT INTO `staff_ranges` (`id`, `min`, `max`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quote_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attribute` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `reorder_qty` double NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `review_num` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `min_order_allow` double NOT NULL,
  `max_order_allow` double NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` double NOT NULL,
  `discount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `stock_uom_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `name`, `stock_code`, `quote_code`, `attribute_value`, `attribute`, `meta_keyword`, `reorder_qty`, `description`, `review_num`, `rating_num`, `expired_date`, `min_order_allow`, `max_order_allow`, `qty`, `cost`, `discount`, `status`, `image`, `category_id`, `currency_id`, `stock_uom_id`, `store_id`, `condition_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'AAMIKAST New Fashion', 'ABCD', 'ABCD123', '1', 'a:2:{i:0;a:1:{i:3;a:4:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"5";i:3;s:1:"7";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '12345', 4, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 5, '2017-07-07', 1, 4, 2, 22.34, 5, 1, 'Women-candy-HL-Bandage-Dress-Lady-Mini-Evening-Dress-prom-club-wear-Summer-Breathable-Girl-Dress.jpg', 25, 1, 1, 1, 1, '2017-07-02 09:35:45', '2017-07-02 09:35:45', NULL),
(4, 'Vfemage Women', 'ADCS', '321AFFS', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"5";i:1;s:1:"6";}}i:1;a:1:{i:4;a:5:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"4";i:4;s:1:"5";}}}', '123456', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 5, '2017-07-07', 2, 5, 1, 21.33, 15, 1, '16.jpg', 27, 1, 1, 1, 1, '2017-07-02 09:40:13', '2017-07-02 09:40:13', NULL),
(5, 'Sexy  Wedding', 'GSHD', '124DHSD', '1', 'a:2:{i:0;a:1:{i:3;a:3:{i:0;s:1:"3";i:1;s:1:"5";i:2;s:1:"6";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '6634535', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 6, '2017-07-07', 2, 5, 2, 126.33, 0, 1, '2016-Pink-Cloud-Photo-Wedding-Dresses-Long-Tulle-Long-Cheap-Sexy-Vestido-De-Noiva-Summer-Puffy.jpg', 37, 1, 1, 1, 1, '2017-07-02 09:50:16', '2017-07-02 09:50:46', NULL),
(6, 'Women Dresses Summer', 'FGGFTH', '231SDFSF', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"0";i:1;s:1:"2";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '33543', 7, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 4, 5, '2017-07-07', 5, 9, 5, 13.39, 0, 1, 'Bodycon-Women-Dresses-V-neck-Short-Sleeve-Knee-length-Casual-Summer-New-Fashion-Party-Cocktail-Dresses.jpg', 25, 1, 1, 1, 1, '2017-07-02 09:56:31', '2017-07-02 16:23:01', NULL),
(7, 'SheIn Ladies New', 'FGGFTH', '231SDFSF', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"5";i:1;s:1:"6";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '33543', 7, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 4, 5, '2017-07-07', 5, 9, 5, 14.39, 5, 1, '15.jpg', 7, 1, 1, 1, 1, '2017-07-02 10:06:27', '2017-07-02 10:06:27', NULL),
(9, 'Men''S T Shirt 2017 Summer ', 'AFDGDG', 'FDDGT', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"1";i:1;s:1:"5";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '4R353', 5, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 6, 6, '2017-07-07', 2, 4, 3, 8.99, 0, 1, '2.jpg', 50, 1, 1, 1, 1, '2017-07-02 14:42:46', '2017-07-02 14:44:28', NULL),
(10, '2017 Brand Men''s Wolf ', 'FFDHGT', 'FGFHT', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"0";i:1;s:1:"5";}}i:1;a:1:{i:4;a:5:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}}}', '23435', 5, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 6, '2017-07-05', 2, 4, 2, 9.88, 0, 1, '1.jpg', 50, 1, 1, 1, 1, '2017-07-02 14:47:30', '2017-07-02 14:56:57', NULL),
(11, '2016 SportWear Men''s', 'FFDHGT', 'FGFHT', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"0";i:1;s:1:"5";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '23435', 5, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 6, '2017-07-05', 2, 4, 2, 21.99, 0, 1, '11.jpg', 51, 1, 1, 1, 1, '2017-07-02 14:51:08', '2017-07-02 14:56:21', NULL),
(12, 'aichAng Motorcycle Leather ', 'DFTFH', 'FDHD', '1', 'a:2:{i:0;a:1:{i:3;a:4:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"3";i:3;s:1:"4";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '3534', 5, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 6, '2017-07-04', 3, 5, 2, 44.4, 0, 1, 'CAMEL-Lovers-Men-s-Outdoor-Jacket-Outerwear-Thin-Windproof-Waterproof-Coat-Sportswear-College-Men-Women-s.jpg', 51, 1, 1, 1, 1, '2017-07-02 15:02:39', '2017-07-02 15:04:36', NULL),
(13, 'Original Xiaomi Redmi 4X 4 X 2GB 16GB', 'FBFGH', 'FBFG', '2', 'a:1:{i:0;a:1:{i:3;a:3:{i:0;s:1:"4";i:1;s:1:"5";i:2;s:1:"6";}}}', 'FGHF54', 5, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe) and receive a full refund. The return shipping fee will be paid by you. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 8, 8, '2017-07-03', 2, 56, 3, 99.99, 5, 1, 'free-shipping-Xiaomi-Redmi-4X-pro-prime-4GB-RAM-64GB-ROM-Fingerprint-Snapdragon-435-OctaCore-5.jpg', 89, 1, 1, 1, 1, '2017-07-02 15:12:30', '2017-07-02 15:12:30', NULL),
(14, 'TLZC Elegant Women Career', 'dfg', 'rgferg', '1', 'a:2:{i:0;a:1:{i:3;a:4:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"3";i:3;s:1:"6";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '456544', 4, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 6, '2017-07-03', 2, 3, 2, 11.12, 5, 1, 'Fashion-clothes-OL-women-long-sleeve-shirt-black-white-slim-Patchwork-Sequined-cotton-blouse-office-ladies.jpg', 26, 1, 1, 1, 1, '2017-07-02 16:33:12', '2017-07-02 16:33:12', NULL),
(16, 'Alisa Pan Hot Sale Summer ', 'gdgr', 'dfgdd', '1', 'a:2:{i:0;a:1:{i:3;a:4:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"3";i:3;s:1:"6";}}i:1;a:1:{i:4;a:5:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}}}', '4534634', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 5, 6, '2017-07-05', 1, 3, 4, 12.22, 0, 1, '3-colour-2017-Summer-Fashion-Women-s-New-Striped-Dresses-Sexy-Ruffle-Dress-Casual-Style-Comfortable.jpg', 25, 1, 1, 1, 1, '2017-07-02 16:47:22', '2017-07-02 16:48:50', NULL),
(17, 'Women Elegant Flower', 'DFDD', 'GFHFHF', '1', 'a:2:{i:0;a:1:{i:3;a:3:{i:0;s:1:"1";i:1;s:1:"4";i:2;s:1:"6";}}i:1;a:1:{i:4;a:5:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}}}', 'FD4335', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 7, 8, '2017-07-04', 2, 4, 4, 9.23, 0, 1, 'Vfemage-Women-Embroidered-Floral-See-Through-Lace-Party-Evening-Bridemaid-Mother-of-Bride-Special-Occasion-Embroidery.jpg', 25, 1, 1, 1, 1, '2017-07-02 16:54:54', '2017-07-02 16:55:34', NULL),
(18, 'DEIVE TEGER new fashion ', 'FBFD', 'DFGDRG', '1', 'a:2:{i:0;a:1:{i:3;a:3:{i:0;s:1:"0";i:1;s:1:"6";i:2;s:1:"7";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '345353', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 7, 8, '2017-07-03', 2, 5, 3, 13.33, 0, 1, '-DEIVE-TEGER-Free-shipping-2013-bandage-Celebrity-dress-Cocktail-Party-Evening-Dresses-5-colors-HL737.jpg', 25, 1, 1, 1, 1, '2017-07-02 17:06:59', '2017-07-02 17:08:53', NULL),
(19, 'New arrive Deep 2017', 'FFFDG', 'DFGDGF', '1', 'a:2:{i:0;a:1:{i:3;a:4:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"5";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '3543564', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 7, 9, '2017-07-05', 3, 4, 4, 10.09, 0, 1, '2017-New-arrive-Deep-V-Neck-Print-Desigual-Dress-Women-Casual-Party-Sexy-Summer-Beach-Dresses.jpg', 25, 1, 1, 1, 1, '2017-07-02 17:12:07', '2017-07-02 17:12:55', NULL),
(20, 'Yissang Sexy Women Summer ', 'DFBFHBF', 'DFGDG', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"4";i:1;s:1:"5";}}i:1;a:1:{i:4;a:5:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}}}', '3453464', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 8, 8, '2017-07-04', 2, 5, 3, 17.97, 15, 1, 'New-arrival-3-color-satin-dress-solid-sexy-backless-halter-sleeveless-party-clubwear-women-above-knee.jpg', 0, 1, 1, 1, 1, '2017-07-02 17:20:28', '2017-07-02 17:20:28', NULL),
(21, 'Womens Elegant', 'DFGDFH', 'DFGDG', '1', 'a:2:{i:0;a:1:{i:3;a:2:{i:0;s:1:"5";i:1;s:1:"7";}}i:1;a:1:{i:4;a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}}}', '23423', 6, 'If the product you receive is not as described or low quality, the seller promises that you may return it before order completion (when you click ‘Confirm Order Received’ or exceed confirmation timeframe), receive a full refund, and that the return shipping fee will be paid by the seller. Details of the shipping method and fee payment should be agreed with the seller in advance. Or, you can choose to keep the product and agree the refund amount directly with the seller.', 6, 6, '2017-07-03', 2, 4, 3, 17.77, 0, 1, 'COLROVIE-Overlap-Front-Slip-Dress-Basic-Wear-2017-Women-Yellow-Sleeveless-Bodycon-Summer-Dresses-Solid-Strap.jpg', 25, 1, 1, 1, 1, '2017-07-02 17:22:01', '2017-07-02 17:23:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_balances`
--

CREATE TABLE IF NOT EXISTS `stock_balances` (
  `id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_moves`
--

CREATE TABLE IF NOT EXISTS `stock_moves` (
  `id` int(10) unsigned NOT NULL,
  `move_date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `oldcost` int(11) NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_properties`
--

CREATE TABLE IF NOT EXISTS `stock_properties` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) unsigned NOT NULL,
  `size` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_sections`
--

CREATE TABLE IF NOT EXISTS `stock_sections` (
  `id` int(10) unsigned NOT NULL,
  `stock_id` int(10) unsigned NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_types`
--

CREATE TABLE IF NOT EXISTS `stock_types` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_types`
--

INSERT INTO `stock_types` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test', 'vvvvvvvvvvvv', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_uoms`
--

CREATE TABLE IF NOT EXISTS `stock_uoms` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_uoms`
--

INSERT INTO `stock_uoms` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'qqqqqqqqqqqqqqqqq', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(10) unsigned NOT NULL,
  `store_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `office_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slowgan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `businese_cert` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `business_type_id` int(10) unsigned NOT NULL,
  `staff_range_id` int(10) unsigned NOT NULL,
  `revenue_range_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `store_name`, `contact_person`, `contact_tel`, `office_phone`, `website`, `email1`, `email2`, `address`, `slowgan`, `status`, `businese_cert`, `deleted_at`, `created_at`, `updated_at`, `business_type_id`, `staff_range_id`, `revenue_range_id`) VALUES
(1, 'test', 'cccccccccccccc', 'dddddddddddddddd', 'weeeeeeeeeeeeee', 'www.bbngroup.com', 'bb@gmail.com', 'bb1@gmail.com', 'N123', 'ffffffffffffff', 1, 'dddddddddddddddddddd', NULL, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_users`
--

CREATE TABLE IF NOT EXISTS `store_users` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `role` enum('customer','seller','moderator','admin') COLLATE utf8_unicode_ci NOT NULL,
  `confirmCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `active`, `role`, `confirmCode`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@gmail.com', '$2y$10$ByUGXxrZhCImbxbD/14EY.XhBlv68K9vBw6k8hCxoyuVer1oTeMVm', 1, 'admin', '', NULL, 'o5yMdZs9SIl0KleOqy2S4BMRhZagT5g7Sf7WwJT7374A0WfqpfDMAuwBpiGw', '2017-04-25 21:29:46', '2017-04-27 18:41:18'),
(5, 'Client', 'client@gmail.com', '$2y$10$JsRcoiohPjPmSVS5Kx5N/uIs1Ce29UcUYmJIDOnoaxsrsHSVzDJTW', 0, 'customer', '', NULL, 'UrcndQWDaPbXSFVhvpFqC6kH73lyEwBFVyPC0wUYcB6otnPI1IzZm4jMLpDT', '2017-04-25 21:34:17', '2017-04-27 18:23:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertises_store_id_foreign` (`store_id`);

--
-- Indexes for table `advertise_blogs`
--
ALTER TABLE `advertise_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertise_blogs_advertise_id_foreign` (`advertise_id`),
  ADD KEY `advertise_blogs_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_attribute_types`
--
ALTER TABLE `attribute_attribute_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_attribute_types_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_attribute_types_attribute_type_id_foreign` (`attribute_type_id`);

--
-- Indexes for table `attribute_attribute_values`
--
ALTER TABLE `attribute_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_attribute_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_categories_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_types`
--
ALTER TABLE `attribute_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_stock_id_foreign` (`stock_id`),
  ADD KEY `carts_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_stock_type_id_foreign` (`stock_type_id`);

--
-- Indexes for table `category_stocks`
--
ALTER TABLE `category_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_stocks_stock_id_foreign` (`stock_id`),
  ADD KEY `category_stocks_category_id_foreign` (`category_id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_galleryable_id_galleryable_type_index` (`galleryable_id`,`galleryable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_users_id_foreign` (`users_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_country_id_foreign` (`country_id`);

--
-- Indexes for table `revenue_ranges`
--
ALTER TABLE `revenue_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_companies_country_id_foreign` (`country_id`);

--
-- Indexes for table `shipping_province_prices`
--
ALTER TABLE `shipping_province_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_province_prices_to_province_id_foreign` (`to_province_id`),
  ADD KEY `shipping_province_prices_from_province_id_foreign` (`from_province_id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshows_store_id_foreign` (`store_id`);

--
-- Indexes for table `social_login`
--
ALTER TABLE `social_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_login_users_id_foreign` (`users_id`);

--
-- Indexes for table `staff_ranges`
--
ALTER TABLE `staff_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_currency_id_foreign` (`currency_id`),
  ADD KEY `stocks_stock_uom_id_foreign` (`stock_uom_id`),
  ADD KEY `stocks_store_id_foreign` (`store_id`),
  ADD KEY `stocks_condition_id_foreign` (`condition_id`);

--
-- Indexes for table `stock_balances`
--
ALTER TABLE `stock_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_balances_store_id_foreign` (`store_id`);

--
-- Indexes for table `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_moves_store_id_foreign` (`store_id`);

--
-- Indexes for table `stock_sections`
--
ALTER TABLE `stock_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_sections_stock_id_foreign` (`stock_id`),
  ADD KEY `stock_sections_section_id_foreign` (`section_id`);

--
-- Indexes for table `stock_types`
--
ALTER TABLE `stock_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_uoms`
--
ALTER TABLE `stock_uoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_business_type_id_foreign` (`business_type_id`),
  ADD KEY `stores_staff_range_id_foreign` (`staff_range_id`),
  ADD KEY `stores_revenue_range_id_foreign` (`revenue_range_id`);

--
-- Indexes for table `store_users`
--
ALTER TABLE `store_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_users_user_id_foreign` (`user_id`),
  ADD KEY `store_users_store_id_foreign` (`store_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advertise_blogs`
--
ALTER TABLE `advertise_blogs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `attribute_attribute_types`
--
ALTER TABLE `attribute_attribute_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attribute_attribute_values`
--
ALTER TABLE `attribute_attribute_values`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attribute_types`
--
ALTER TABLE `attribute_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `category_stocks`
--
ALTER TABLE `category_stocks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `revenue_ranges`
--
ALTER TABLE `revenue_ranges`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping_province_prices`
--
ALTER TABLE `shipping_province_prices`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_login`
--
ALTER TABLE `social_login`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_ranges`
--
ALTER TABLE `staff_ranges`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `stock_balances`
--
ALTER TABLE `stock_balances`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_moves`
--
ALTER TABLE `stock_moves`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_sections`
--
ALTER TABLE `stock_sections`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_types`
--
ALTER TABLE `stock_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stock_uoms`
--
ALTER TABLE `stock_uoms`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_users`
--
ALTER TABLE `store_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertises`
--
ALTER TABLE `advertises`
  ADD CONSTRAINT `advertises_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `advertise_blogs`
--
ALTER TABLE `advertise_blogs`
  ADD CONSTRAINT `advertise_blogs_advertise_id_foreign` FOREIGN KEY (`advertise_id`) REFERENCES `advertises` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertise_blogs_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_attribute_types`
--
ALTER TABLE `attribute_attribute_types`
  ADD CONSTRAINT `attribute_attribute_types_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_attribute_types_attribute_type_id_foreign` FOREIGN KEY (`attribute_type_id`) REFERENCES `attribute_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_attribute_values`
--
ALTER TABLE `attribute_attribute_values`
  ADD CONSTRAINT `attribute_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_stock_type_id_foreign` FOREIGN KEY (`stock_type_id`) REFERENCES `stock_types` (`id`);

--
-- Constraints for table `category_stocks`
--
ALTER TABLE `category_stocks`
  ADD CONSTRAINT `category_stocks_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_stocks_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  ADD CONSTRAINT `shipping_companies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_province_prices`
--
ALTER TABLE `shipping_province_prices`
  ADD CONSTRAINT `shipping_province_prices_from_province_id_foreign` FOREIGN KEY (`from_province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `shipping_province_prices_to_province_id_foreign` FOREIGN KEY (`to_province_id`) REFERENCES `provinces` (`id`);

--
-- Constraints for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD CONSTRAINT `slideshows_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_login`
--
ALTER TABLE `social_login`
  ADD CONSTRAINT `social_login_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_condition_id_foreign` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_stock_uom_id_foreign` FOREIGN KEY (`stock_uom_id`) REFERENCES `stock_uoms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_balances`
--
ALTER TABLE `stock_balances`
  ADD CONSTRAINT `stock_balances_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD CONSTRAINT `stock_moves_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_sections`
--
ALTER TABLE `stock_sections`
  ADD CONSTRAINT `stock_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_sections_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_business_type_id_foreign` FOREIGN KEY (`business_type_id`) REFERENCES `business_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stores_revenue_range_id_foreign` FOREIGN KEY (`revenue_range_id`) REFERENCES `revenue_ranges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stores_staff_range_id_foreign` FOREIGN KEY (`staff_range_id`) REFERENCES `staff_ranges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_users`
--
ALTER TABLE `store_users`
  ADD CONSTRAINT `store_users_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
