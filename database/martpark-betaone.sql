-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2021 at 06:56 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hajurbuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `photo`, `role_id`, `password`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 'Sushant Poudel', 'admin@martpark.com', '9803834168', '16398324731637085419.png', 0, '$2y$10$rs0SBURVEigNWXePVAqTheIXLukaETXVSGjt/tjd4oaPPmeHtCYmO', NULL, '2018-02-28 23:27:08', '2021-12-18 07:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `url`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', '45% OFF', '#', '163172091306.jpg', ' Banner 1', 1, NULL, NULL),
(2, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', '70% OFF', '#', '163172090805.jpg', 'Banner 2', 1, NULL, NULL),
(3, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', '60% OFF', '#', '163172090304.jpg', 'Banner 3', 1, NULL, NULL),
(5, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '50% OFF', '#', '163172089704.jpg', 'Banner 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Updates', 'updates', 1, NULL, NULL),
(2, 'News', 'news', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `is_popular` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `photo`, `status`, `is_popular`, `created_at`, `updated_at`) VALUES
(11, 'Samsung', 'Samsung', '1632336479samsung.png', 1, 1, NULL, NULL),
(14, 'Yamaha', 'Yamaha', '1636923135FacebookDP.png', 1, 1, NULL, NULL),
(20, 'Lenovo', 'Lenovo', '1637057364unnamed.jpg', 1, 1, NULL, NULL),
(21, 'HP', 'HP', '1637074723IWOPZlgHLOi7WrSEzBHOjwiDftDw2c8DMaEOF4sc.png', 1, 1, NULL, NULL),
(22, 'Dell', 'Dell', '1637138006download.png', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_items`
--

CREATE TABLE `campaign_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `is_feature` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_items`
--

INSERT INTO `campaign_items` (`id`, `item_id`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(43, 609, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `is_feature` tinyint(4) DEFAULT '1',
  `serial` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `meta_keywords`, `meta_descriptions`, `status`, `is_feature`, `serial`, `created_at`, `updated_at`) VALUES
(21, 'Electronics', 'Electronics', '1629616270computer.jpg', NULL, NULL, 1, 1, 1, NULL, NULL),
(24, 'Sports & Entertainment', 'Sports--Entertainment', '1629616243pexels-karolina-grabowska-4498574.jpg', NULL, NULL, 1, 1, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chield_categories`
--

CREATE TABLE `chield_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chield_categories`
--

INSERT INTO `chield_categories` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(27, 'Cellphones', 'Cellphones', 21, 12, 1, NULL, NULL),
(28, 'iPhones', 'iPhones', 21, 12, 1, NULL, NULL),
(29, 'Android Phone', 'Android-Phone', 21, 12, 1, NULL, NULL),
(30, 'Phone Bags & Cases', 'Phone-Bags--Cases', 21, 13, 1, NULL, NULL),
(31, 'Mobile Phone Cables', 'Mobile-Phone-Cables', 21, 13, 1, NULL, NULL),
(32, 'Power Bank', 'Power-Bank', 21, 13, 1, NULL, NULL),
(33, 'Screen Protectors', 'Screen-Protectors', 21, 13, 1, NULL, NULL),
(35, 'Dell', 'Dell', 21, 19, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL),
(2, 'Albania', NULL, NULL),
(3, 'Algeria', NULL, NULL),
(4, 'American Samoa', NULL, NULL),
(5, 'Andorra', NULL, NULL),
(6, 'Angola', NULL, NULL),
(7, 'Anguilla', NULL, NULL),
(8, 'Antarctica', NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL),
(10, 'Argentina', NULL, NULL),
(11, 'Armenia', NULL, NULL),
(12, 'Aruba', NULL, NULL),
(13, 'Australia', NULL, NULL),
(14, 'Austria', NULL, NULL),
(15, 'Azerbaijan', NULL, NULL),
(16, 'Bahamas', NULL, NULL),
(17, 'Bahrain', NULL, NULL),
(18, 'Bangladesh', NULL, NULL),
(19, 'Barbados', NULL, NULL),
(20, 'Belarus', NULL, NULL),
(21, 'Belgium', NULL, NULL),
(22, 'Belize', NULL, NULL),
(23, 'Benin', NULL, NULL),
(24, 'Bermuda', NULL, NULL),
(25, 'Bhutan', NULL, NULL),
(26, 'Bolivia', NULL, NULL),
(27, 'Bosnia and Herzegovina', NULL, NULL),
(28, 'Botswana', NULL, NULL),
(29, 'Bouvet Island', NULL, NULL),
(30, 'Brazil', NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL),
(33, 'Bulgaria', NULL, NULL),
(34, 'Burkina Faso', NULL, NULL),
(35, 'Burundi', NULL, NULL),
(36, 'Cambodia', NULL, NULL),
(37, 'Cameroon', NULL, NULL),
(38, 'Canada', NULL, NULL),
(39, 'Cape Verde', NULL, NULL),
(40, 'Cayman Islands', NULL, NULL),
(41, 'Central African Republic', NULL, NULL),
(42, 'Chad', NULL, NULL),
(43, 'Chile', NULL, NULL),
(44, 'China', NULL, NULL),
(45, 'Christmas Island', NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'Colombia', NULL, NULL),
(48, 'Comoros', NULL, NULL),
(49, 'Democratic Republic of the Congo', NULL, NULL),
(50, 'Republic of Congo', NULL, NULL),
(51, 'Cook Islands', NULL, NULL),
(52, 'Costa Rica', NULL, NULL),
(53, 'Croatia (Hrvatska)', NULL, NULL),
(54, 'Cuba', NULL, NULL),
(55, 'Cyprus', NULL, NULL),
(56, 'Czech Republic', NULL, NULL),
(57, 'Denmark', NULL, NULL),
(58, 'Djibouti', NULL, NULL),
(59, 'Dominica', NULL, NULL),
(60, 'Dominican Republic', NULL, NULL),
(61, 'East Timor', NULL, NULL),
(62, 'Ecuador', NULL, NULL),
(63, 'Egypt', NULL, NULL),
(64, 'El Salvador', NULL, NULL),
(65, 'Equatorial Guinea', NULL, NULL),
(66, 'Eritrea', NULL, NULL),
(67, 'Estonia', NULL, NULL),
(68, 'Ethiopia', NULL, NULL),
(69, 'Falkland Islands (Malvinas)', NULL, NULL),
(70, 'Faroe Islands', NULL, NULL),
(71, 'Fiji', NULL, NULL),
(72, 'Finland', NULL, NULL),
(73, 'France', NULL, NULL),
(74, 'France, Metropolitan', NULL, NULL),
(75, 'French Guiana', NULL, NULL),
(76, 'French Polynesia', NULL, NULL),
(77, 'French Southern Territories', NULL, NULL),
(78, 'Gabon', NULL, NULL),
(79, 'Gambia', NULL, NULL),
(80, 'Georgia', NULL, NULL),
(81, 'Germany', NULL, NULL),
(82, 'Ghana', NULL, NULL),
(83, 'Gibraltar', NULL, NULL),
(84, 'Guernsey', NULL, NULL),
(85, 'Greece', NULL, NULL),
(86, 'Greenland', NULL, NULL),
(87, 'Grenada', NULL, NULL),
(88, 'Guadeloupe', NULL, NULL),
(89, 'Guam', NULL, NULL),
(90, 'Guatemala', NULL, NULL),
(91, 'Guinea', NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL),
(93, 'Guyana', NULL, NULL),
(94, 'Haiti', NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL),
(96, 'Honduras', NULL, NULL),
(97, 'Hong Kong', NULL, NULL),
(98, 'Hungary', NULL, NULL),
(99, 'Iceland', NULL, NULL),
(100, 'India', NULL, NULL),
(101, 'Isle of Man', NULL, NULL),
(102, 'Indonesia', NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL),
(104, 'Iraq', NULL, NULL),
(105, 'Ireland', NULL, NULL),
(106, 'Israel', NULL, NULL),
(107, 'Italy', NULL, NULL),
(108, 'Ivory Coast', NULL, NULL),
(109, 'Jersey', NULL, NULL),
(110, 'Jamaica', NULL, NULL),
(111, 'Japan', NULL, NULL),
(112, 'Jordan', NULL, NULL),
(113, 'Kazakhstan', NULL, NULL),
(114, 'Kenya', NULL, NULL),
(115, 'Kiribati', NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of', NULL, NULL),
(118, 'Kosovo', NULL, NULL),
(119, 'Kuwait', NULL, NULL),
(120, 'Kyrgyzstan', NULL, NULL),
(121, 'Lao People\'s Democratic Republic', NULL, NULL),
(122, 'Latvia', NULL, NULL),
(123, 'Lebanon', NULL, NULL),
(124, 'Lesotho', NULL, NULL),
(125, 'Liberia', NULL, NULL),
(126, 'Libyan Arab Jamahiriya', NULL, NULL),
(127, 'Liechtenstein', NULL, NULL),
(128, 'Lithuania', NULL, NULL),
(129, 'Luxembourg', NULL, NULL),
(130, 'Macau', NULL, NULL),
(131, 'North Macedonia', NULL, NULL),
(132, 'Madagascar', NULL, NULL),
(133, 'Malawi', NULL, NULL),
(134, 'Malaysia', NULL, NULL),
(135, 'Maldives', NULL, NULL),
(136, 'Mali', NULL, NULL),
(137, 'Malta', NULL, NULL),
(138, 'Marshall Islands', NULL, NULL),
(139, 'Martinique', NULL, NULL),
(140, 'Mauritania', NULL, NULL),
(141, 'Mauritius', NULL, NULL),
(142, 'Mayotte', NULL, NULL),
(143, 'Mexico', NULL, NULL),
(144, 'Micronesia, Federated States of', NULL, NULL),
(145, 'Moldova, Republic of', NULL, NULL),
(146, 'Monaco', NULL, NULL),
(147, 'Mongolia', NULL, NULL),
(148, 'Montenegro', NULL, NULL),
(149, 'Montserrat', NULL, NULL),
(150, 'Morocco', NULL, NULL),
(151, 'Mozambique', NULL, NULL),
(152, 'Myanmar', NULL, NULL),
(153, 'Namibia', NULL, NULL),
(154, 'Nauru', NULL, NULL),
(155, 'Nepal', NULL, NULL),
(156, 'Netherlands', NULL, NULL),
(157, 'Netherlands Antilles', NULL, NULL),
(158, 'New Caledonia', NULL, NULL),
(159, 'New Zealand', NULL, NULL),
(160, 'Nicaragua', NULL, NULL),
(161, 'Niger', NULL, NULL),
(162, 'Nigeria', NULL, NULL),
(163, 'Niue', NULL, NULL),
(164, 'Norfolk Island', NULL, NULL),
(165, 'Northern Mariana Islands', NULL, NULL),
(166, 'Norway', NULL, NULL),
(167, 'Oman', NULL, NULL),
(168, 'Pakistan', NULL, NULL),
(169, 'Palau', NULL, NULL),
(170, 'Palestine', NULL, NULL),
(171, 'Panama', NULL, NULL),
(172, 'Papua New Guinea', NULL, NULL),
(173, 'Paraguay', NULL, NULL),
(174, 'Peru', NULL, NULL),
(175, 'Philippines', NULL, NULL),
(176, 'Pitcairn', NULL, NULL),
(177, 'Poland', NULL, NULL),
(178, 'Portugal', NULL, NULL),
(179, 'Puerto Rico', NULL, NULL),
(180, 'Qatar', NULL, NULL),
(181, 'Reunion', NULL, NULL),
(182, 'Romania', NULL, NULL),
(183, 'Russian Federation', NULL, NULL),
(184, 'Rwanda', NULL, NULL),
(185, 'Saint Kitts and Nevis', NULL, NULL),
(186, 'Saint Lucia', NULL, NULL),
(187, 'Saint Vincent and the Grenadines', NULL, NULL),
(188, 'Samoa', NULL, NULL),
(189, 'San Marino', NULL, NULL),
(190, 'Sao Tome and Principe', NULL, NULL),
(191, 'Saudi Arabia', NULL, NULL),
(192, 'Senegal', NULL, NULL),
(193, 'Serbia', NULL, NULL),
(194, 'Seychelles', NULL, NULL),
(195, 'Sierra Leone', NULL, NULL),
(196, 'Singapore', NULL, NULL),
(197, 'Slovakia', NULL, NULL),
(198, 'Slovenia', NULL, NULL),
(199, 'Solomon Islands', NULL, NULL),
(200, 'Somalia', NULL, NULL),
(201, 'South Africa', NULL, NULL),
(202, 'South Georgia South Sandwich Islands', NULL, NULL),
(203, 'South Sudan', NULL, NULL),
(204, 'Spain', NULL, NULL),
(205, 'Sri Lanka', NULL, NULL),
(206, 'St. Helena', NULL, NULL),
(207, 'St. Pierre and Miquelon', NULL, NULL),
(208, 'Sudan', NULL, NULL),
(209, 'Suriname', NULL, NULL),
(210, 'Svalbard and Jan Mayen Islands', NULL, NULL),
(211, 'Swaziland', NULL, NULL),
(212, 'Sweden', NULL, NULL),
(213, 'Switzerland', NULL, NULL),
(214, 'Syrian Arab Republic', NULL, NULL),
(215, 'Taiwan', NULL, NULL),
(216, 'Tajikistan', NULL, NULL),
(217, 'Tanzania, United Republic of', NULL, NULL),
(218, 'Thailand', NULL, NULL),
(219, 'Togo', NULL, NULL),
(220, 'Tokelau', NULL, NULL),
(221, 'Tonga', NULL, NULL),
(222, 'Trinidad and Tobago', NULL, NULL),
(223, 'Tunisia', NULL, NULL),
(224, 'Turkey', NULL, NULL),
(225, 'Turkmenistan', NULL, NULL),
(226, 'Turks and Caicos Islands', NULL, NULL),
(227, 'Tuvalu', NULL, NULL),
(228, 'Uganda', NULL, NULL),
(229, 'Ukraine', NULL, NULL),
(230, 'United Arab Emirates', NULL, NULL),
(231, 'United Kingdom', NULL, NULL),
(232, 'United States', NULL, NULL),
(233, 'United States minor outlying islands', NULL, NULL),
(234, 'Uruguay', NULL, NULL),
(235, 'Uzbekistan', NULL, NULL),
(236, 'Vanuatu', NULL, NULL),
(237, 'Vatican City State', NULL, NULL),
(238, 'Venezuela', NULL, NULL),
(239, 'Vietnam', NULL, NULL),
(240, 'Virgin Islands (British)', NULL, NULL),
(241, 'Virgin Islands (U.S.)', NULL, NULL),
(242, 'Wallis and Futuna Islands', NULL, NULL),
(243, 'Western Sahara', NULL, NULL),
(244, 'Yemen', NULL, NULL),
(245, 'Zambia', NULL, NULL),
(246, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'NPR', 'Rs.', 1, 1, NULL, NULL),
(10, 'USD', '$', 0.0084, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'Your Have Successfully Placed The Order', '<p><span style=\"font-family: undefined;\">﻿</span>Hello {user_name},</p><p><b>Your Order Has Been Placed Successfully.</b></p><h2>Your Order Number is&nbsp;<b>{transaction_number}</b>.</h2><h3>The Total Cost is&nbsp;<span style=\"color: rgb(85, 85, 85);\"><b>{order_cost}</b>.</span></h3><h3><span style=\"color: rgb(85, 85, 85);\"><br></span></h3><p>Thank You.</p><p><span style=\"color: rgb(85, 85, 85);\">{site_title}</span><br></p>', NULL, NULL),
(2, 'Registration', 'Welcome To Hajurbuy', '<p>Hello&nbsp; {user_name},</p><p>You have successfully registered to <b>{website_title}.</b></p><p>&nbsp;We wish you will have a wonderful experience using our service.</p><p>Thank You.<br><span style=\"color: rgb(85, 85, 85);\"><b>{site_title}</b></span><br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extra_settings`
--

CREATE TABLE `extra_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_t4_slider` tinyint(4) DEFAULT '1',
  `is_t4_featured_banner` tinyint(4) DEFAULT '1',
  `is_t4_specialpick` tinyint(4) DEFAULT '1',
  `is_t4_3_column_banner_first` tinyint(4) DEFAULT '1',
  `is_t4_flashdeal` tinyint(4) DEFAULT '1',
  `is_t4_3_column_banner_second` tinyint(4) DEFAULT '1',
  `is_t4_popular_category` tinyint(4) DEFAULT '1',
  `is_t4_2_column_banner` tinyint(4) DEFAULT '1',
  `is_t4_blog_section` tinyint(4) DEFAULT '1',
  `is_t4_brand_section` tinyint(4) DEFAULT '1',
  `is_t4_service_section` tinyint(4) DEFAULT '1',
  `is_t3_slider` tinyint(4) DEFAULT '1',
  `is_t3_service_section` tinyint(4) DEFAULT '1',
  `is_t3_3_column_banner_first` tinyint(4) DEFAULT '1',
  `is_t3_popular_category` tinyint(4) DEFAULT '1',
  `is_t3_flashdeal` tinyint(4) DEFAULT '1',
  `is_t3_3_column_banner_second` tinyint(4) DEFAULT '1',
  `is_t3_pecialpick` tinyint(4) DEFAULT '1',
  `is_t3_brand_section` tinyint(4) DEFAULT '1',
  `is_t3_2_column_banner` tinyint(4) DEFAULT '1',
  `is_t3_blog_section` tinyint(4) DEFAULT '1',
  `is_t2_slider` tinyint(4) DEFAULT '1',
  `is_t2_service_section` tinyint(4) DEFAULT '1',
  `is_t2_3_column_banner_first` tinyint(4) DEFAULT '1',
  `is_t2_flashdeal` tinyint(4) DEFAULT '1',
  `is_t2_new_product` tinyint(4) DEFAULT '1',
  `is_t2_3_column_banner_second` tinyint(4) DEFAULT '1',
  `is_t2_featured_product` tinyint(4) DEFAULT '1',
  `is_t2_bestseller_product` tinyint(4) DEFAULT '1',
  `is_t2_toprated_product` tinyint(4) DEFAULT '1',
  `is_t2_2_column_banner` tinyint(4) DEFAULT '1',
  `is_t2_blog_section` tinyint(4) DEFAULT '1',
  `is_t2_brand_section` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_settings`
--

INSERT INTO `extra_settings` (`id`, `is_t4_slider`, `is_t4_featured_banner`, `is_t4_specialpick`, `is_t4_3_column_banner_first`, `is_t4_flashdeal`, `is_t4_3_column_banner_second`, `is_t4_popular_category`, `is_t4_2_column_banner`, `is_t4_blog_section`, `is_t4_brand_section`, `is_t4_service_section`, `is_t3_slider`, `is_t3_service_section`, `is_t3_3_column_banner_first`, `is_t3_popular_category`, `is_t3_flashdeal`, `is_t3_3_column_banner_second`, `is_t3_pecialpick`, `is_t3_brand_section`, `is_t3_2_column_banner`, `is_t3_blog_section`, `is_t2_slider`, `is_t2_service_section`, `is_t2_3_column_banner_first`, `is_t2_flashdeal`, `is_t2_new_product`, `is_t2_3_column_banner_second`, `is_t2_featured_product`, `is_t2_bestseller_product`, `is_t2_toprated_product`, `is_t2_2_column_banner`, `is_t2_blog_section`, `is_t2_brand_section`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `title`, `details`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(15, 1, 'How can I purchase it ?', 'Voluptatibus enim, aut natus sint porro veniam atque obcaecati ullam, consequatur laboriosam laborum corrupti autem fugit', NULL, NULL, NULL, NULL),
(25, 1, 'Anim pariatur cliche reprehenderit ?', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus.', NULL, NULL, NULL, NULL),
(27, 1, 'Smartphones in Every Day Life ?', 'afdads', '[{\"value\":\"ad\"},{\"value\":\"fd\"}]', 'dfa', NULL, NULL),
(28, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing  ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, NULL, NULL),
(29, 3, 'But I must explain to you how all this mistaken idea ?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, cons', NULL, NULL, NULL, NULL),
(30, 3, 'Where does it come from ?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', NULL, NULL, NULL, NULL),
(31, 4, 'Where can I get some ?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', NULL, NULL, NULL, NULL),
(32, 4, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(33, 4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(34, 4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(35, 5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(36, 5, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(37, 5, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(38, 6, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(39, 6, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(40, 6, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(41, 7, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(42, 7, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(43, 7, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcategories`
--

CREATE TABLE `fcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcategories`
--

INSERT INTO `fcategories` (`id`, `name`, `text`, `slug`, `meta_keywords`, `meta_descriptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Electronics-', NULL, NULL, 1, NULL, NULL),
(3, 'Poroduct Delevery !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Poroduct-Delevery-', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', 'It is a long established fact that a r', 1, NULL, NULL),
(4, 'Discount Policy !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Discount-Policy-', NULL, NULL, 1, NULL, NULL),
(5, 'Vat Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Vat-Information-', NULL, NULL, 1, NULL, NULL),
(6, 'Coupon  Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Coupon--Information-', NULL, NULL, 1, NULL, NULL),
(7, 'Offer Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Offer-Information-', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_cutomizes`
--

CREATE TABLE `home_cutomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_first` text COLLATE utf8mb4_unicode_ci,
  `banner_secend` text COLLATE utf8mb4_unicode_ci,
  `banner_third` text COLLATE utf8mb4_unicode_ci,
  `popular_category` text COLLATE utf8mb4_unicode_ci,
  `two_column_category` text COLLATE utf8mb4_unicode_ci,
  `feature_category` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page4` text COLLATE utf8mb4_unicode_ci,
  `home_4_popular_category` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cutomizes`
--

INSERT INTO `home_cutomizes` (`id`, `banner_first`, `banner_secend`, `banner_third`, `popular_category`, `two_column_category`, `feature_category`, `created_at`, `updated_at`, `home_page4`, `home_4_popular_category`) VALUES
(1, '{\"firsturl1\":\"#\",\"firsturl2\":\"#\",\"firsturl3\":\"#\",\"img1\":\"16341397291.jpg\",\"img2\":\"16341397292.jpg\",\"img3\":\"16341397293.jpg\"}', '{\"url1\":\"#\",\"url2\":\"#\",\"url3\":\"#\",\"img2\":\"16341404975.jpg\",\"img3\":\"16341404806.jpg\",\"img1\":\"16341402354.jpg\"}', '{\"url1\":\"#\",\"url2\":\"#\",\"img1\":\"1634141357b1.jpg\",\"img2\":\"1634141357b2.jpg\"}', '{\"popular_title\":\"Popular Categories\",\"category_id1\":\"21\",\"subcategory_id1\":\"12\",\"childcategory_id1\":null,\"category_id2\":\"24\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":null,\"subcategory_id4\":null,\"childcategory_id4\":null}', '{\"category_id1\":\"21\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null}', '{\"feature_title\":\"Featured Categories\",\"category_id1\":\"21\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":null,\"subcategory_id4\":null,\"childcategory_id4\":null}', NULL, NULL, '{\"label1\":\"FORMAL\",\"url1\":\"#\",\"label2\":\"LIMITEN EDITION\",\"url2\":\"#\",\"label3\":\"WOMEN\'S COLLECTION\",\"url3\":\"#\",\"label4\":\"SMART CASUALS\",\"url4\":\"#\",\"label5\":\"POLO\",\"url5\":\"#\",\"img1\":\"16342181791.jpg\",\"img2\":\"16342181792.jpg\",\"img3\":\"16342181793.jpeg\",\"img4\":\"16342181794.jpg\",\"img5\":\"16342181795.jpg\"}', '[\"21\"]');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `subcategory_id` int(11) DEFAULT '0',
  `childcategory_id` int(11) DEFAULT '0',
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `video` text COLLATE utf8mb4_unicode_ci,
  `sort_details` text COLLATE utf8mb4_unicode_ci,
  `specification_name` text COLLATE utf8mb4_unicode_ci,
  `specification_description` text COLLATE utf8mb4_unicode_ci,
  `is_specification` tinyint(4) DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double DEFAULT '0',
  `previous_price` double DEFAULT '0',
  `stock` int(11) DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `file_type` enum('file','link') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_name` text COLLATE utf8mb4_unicode_ci,
  `license_key` text COLLATE utf8mb4_unicode_ci,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'normal',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`) VALUES
(591, 21, 19, 35, 1, 22, 'Inspiron 15 3000 Laptop', 'Inspiron---------Laptop', 'HB001', 'dell,inspirion,15\\ laptop', 'https://www.dell.com/en-in/shop/2-in-1-pcs/inspiron-15-3000-laptop/spd/inspiron-15-3505-laptop/d560338win9s', '38.1cm (15 inch) laptop with responsive performance in a sleek design with 2-sided narrow borders, optional PCIe SSDs, Express Charge*, and an AMD Ryzen™ 5 3450U Mobile Processor.', '[null]', '[null]', 1, '<h2 class=\"pd-bottom-title\" style=\"margin-bottom: 10px; line-height: 1.25; color: rgb(68, 68, 68); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 20px !important;\">Elevated essentials</h2><div class=\"pd-item-desc\" style=\"color: rgb(68, 68, 68); font-family: roboto, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"font-weight: 700;\">Light it up:</span>&nbsp;An optional backlit keyboard means that you can keep working no matter what the lighting conditions are.<br><br><span style=\"font-weight: 700;\">Ports and more:</span>&nbsp;Connect to a TV or monitor with the HDMI port, download photos via the SD card slot or enjoy fast transfer speeds from all your accessories with two USB 3.2 Gen 1 ports.<br><br><span style=\"font-weight: 700;\">Numeric keypad:</span>&nbsp;Budgeting and other calculations are just a press away with the numeric keypad.<br><br><span style=\"font-weight: 700;\">Inspired by nature:</span>&nbsp;Add a sense of nature to your daily life with calming color options like Accent Black, Soft Mint and Quarry Blue<a class=\"technote microcontent\" rel=\"technotes:inspiron-15-3501-laptop-elevated\" style=\"cursor: pointer; color: rgb(0, 107, 189);\">*</a>.</div>', '1637141864Dell Inspiron 15 3505.webp', 61900, 0, 2, 'dell,inspirion,15\\ laptop', 'Dell Inspirion 15\" Laptop', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 14:37:44', '2021-11-17 14:37:44', NULL, NULL, 'normal', 'PfQ8t7aZ.webp'),
(592, 21, 19, 35, 1, 22, 'Dell Inspiron 13 5310 - i7 11370H|16GB|512SSD', 'Dell-Inspiron-----------i-------H---GB----SSD', 'HB018', 'Dell Inspiron,i7 laptop,14\\ laptop', 'https://youtu.be/eVPWHwY8m8o', 'Dell Inspiron 13 5310 | i7-11370H | 16GB | 512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD\r\n13.3-inch QHD Display\r\n16 GB Ram\r\n512 GB SSD\r\nNVIDIA GeForce MX450 2GB', '[null]', '[null]', 1, '<p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\"><a href=\"https://www.dell.com/en-us/shop/dell-laptops/sr/laptops/inspiron-laptops\" style=\"color: rgb(13, 110, 253);\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Inspiron</span></a><span style=\"font-weight: bolder; margin-bottom: 0px;\">&nbsp;13 5310 i7</span>&nbsp;helps to Enjoy a gorgeous QHD+ experience with Dolby Vision on a 16:10 panel with more screens to browse, read, or stream. All contained in slim, four-sided tight boundaries for an infinity view. Plus, thanks to the built-in TUV Low Blue Light Hardware Solution. So, you can enjoy the stunning image for longer without creating eye problems.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Portability made simple</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Travel Light</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Stay flexible with an ultra-portable 13.3\" form factor that starts at only 1.25 kgs. And also is designed to stay light.</p>', '1637142279Dell Inspiron 13 5310 - i7.jpg', 160900, 0, 2, 'dell,inspirion,13\\ laptop', 'Dell Inspiron 13 5310, 13.3 inch QH', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 14:44:39', '2021-11-17 14:45:50', NULL, NULL, 'normal', 'GiFp0Lvu.jpg'),
(593, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3505 - AMD Ryzen 7 3700U 8GB 512SSD Radeon Vega 10 Graphics FHD-Soft Mint', 'Dell-Inspiron-----------AMD-Ryzen-------U--GB----SSD-Radeon-Vega----Graphics-FHD-Soft-Mint', 'HB002', 'dell,laptop,inspiron 15,4GB,512GB', NULL, 'Dell Inspiron 15 3505 - AMD Ryzen 7 3700U 8GB 512SSD Radeon Vega 10 Graphics FHD-Soft Mint', '[\"Microprocessor\",\"Brand\",\"RAM\",\"SSD\"]', '[\"Ryzen\",\"Dell\",\"8GB\",\"512GB\"]', 1, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Processor:AMD Ryzen 7 3700U Mobile Processor with Radeon Vega 10 Graphics</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Memory &amp; Storage:8GB, 1x8GB, DDR4, 2400MHz | 512GB M.2 PCIe NVMe Solid State Drive</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Display:15.6-inch FHD (1920 x 1080) Anti-glare LED Backlight Narrow Border WVA Display</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Graphics:AMD Radeon RX Vega 10 Graphics</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Operating System &amp; Software:Windows 10 Home Single Language | Microsoft Office Home and Student 2019</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">I/O ports:USB 3.2 Gen 1 (x2), USB2.0 (x1), HDMI 1.4, SD Media Card Reader (SD, SDHC, SDXC), RJ45 - 10/100Mbps</span></li></ul>', '163714250071jegdF7unL._SL1500_.jpg', 100900, 102000, 10, 'dell,inspiron,laptop', 'Dell Inspiron 15 3505 - AMD Ryzen 7 3700U 8GB 512SSD Radeon Vega 10 Graphics FHD-Soft Mint', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 14:48:20', '2021-11-17 14:48:20', NULL, NULL, 'normal', 'EiqtFq8P.jpg'),
(594, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i3 1115G4 4GB 1TB Intel UHD FHD UBT Silver, Black, Blue', 'Dell-Inspiron-----------i------G---GB--TB-Intel-UHD-FHD-UBT-Silver--Black--Blue', 'HB003', 'dell,laptop,inspiron 15,4GB,1TB', NULL, 'Dell Inspiron 15 3511 - i3 1115G4 4GB 1TB Intel UHD FHD UBT Silver, Black, Blue', '[\"Display Size\",\"Generation\",\"Graphics\",\"Maximum Display Resolution\",\"Ports and Connectivity\",\"Processor\",\"Processor Speed\",\"Ram\",\"HDD\",\"Touch Screen\",\"Battery\",\"Color\"]', '[\"15.6 FHD\",\"11th Gen\",\"Intel UHD\",\"1920 x 1080\",\"SD Card Reader, USB 2.0, Audio Jack, Power Jack, HDMI 1.4, USB 3.2, USB 3.2\",\"Intel\\u00ae Core i3-1115G4\",\"6MB Cache, up to 4.1 GHz\",\"4GB, 4Gx1, DDR4, 2666MHz\",\"1TB\",\"No\",\"3-Cell Battery, 41WHr\",\"Silver, Black, Blue\"]', 1, '<h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">The speed you need</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With the latest 11th generation Intel® Core&nbsp;processor options and PCIe SSD options, you get a responsive but quiet performance.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Just your type</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Get a keyboard with a numeric keypad, 6.4 percent larger keycaps, and a huge touchpad to make navigating your content easier.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">All-day, any day</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Work in the ease with a lift hinge that lifts your tablet to an ergonomic angle, allowing for more comfortable typing.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Easy on the eyes</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Dell ComfortView Low Blue Light Software reduces harmful blue light emissions and improves eye comfort throughout long periods of viewing.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">More to use</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">A 15.6\" laptop with three-side narrow borders provides an extra screen for an immersive FHD viewing experience.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">A modern, thoughtful design</span></h3><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Connect with confidence</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">A built-in HD webcam that enhances your appearance.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Everyday considerations</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With tiny rubber feet and bumpers on the hinge that keeps it from skidding and provide added stability when on hard surfaces, it\'s built to last.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Easy-to-use technology</span></h3><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Ready, Set, Charge</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">ExpressCharge&nbsp;capabilities reduce the amount of time you are linked to an outlet by up to 80% in 60 minutes.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Thoughtful design. Purposeful features</span></h3><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">A second life</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">These laptops take a step toward being socially friendly and sustainable by including post-consumer recycled plastics, which helps to keep plastic out of landfills.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Dell Mobile Connect App</span></h3><p style=\"margin-bottom: 0px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Everything you love about Dell Mobile Connect&nbsp;is now available in an easier-to-use app. Take phone calls right from your computer. Transfer images, videos, music, and documents between your PC and phone without using bulky wires or expensive cloud storage. Interact with your favorite apps on your PC by mirroring your Android or iOS screen.</p>', '16371434943511_-3.jpg', 64900, 68000, 10, 'dell,laptop,inspiron,4GB,1TB,electronics', 'Dell Inspiron 15 3511 - i3 1115G4 4GB 1TB Intel UHD FHD UBT Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 15:04:54', '2021-11-17 15:04:54', NULL, NULL, 'normal', 'UM6lYtYg.jpg'),
(595, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i3 1115G4 | 4GB | 256SSD | Intel UHD | FHD | Blue, Black, Sliver', 'Dell-Inspiron-----------i------G-----GB------SSD---Intel-UHD---FHD---Blue--Black--Sliver', 'HB004', 'dell,SSD,laptop,inspiron 15', NULL, 'Dell Inspiron 15 3511 - i3 1115G4 | 4GB | 256SSD | Intel UHD | FHD | Blue, Black, Sliver', '[\"RAM\",\"SSD\",\"Display Size\",\"Generation\",\"Graphics\",\"Maximum Display Resolution\",\"Processor\",\"Ram\",\"Battery\"]', '[\"4GB\",\"256GB\",\"15.6 FHD\",\"11th Gen\",\"Intel UHD\",\"1920 x 1080\",\"Intel\\u00ae Core i3-1115G4\",\"4GB, 4Gx1, DDR4, 2666MHz\",\"3-Cell Battery, 41WHr\"]', 1, '<h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Daily to do\'s, Done</span></h3><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">The speed you need</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With the latest 11th generation Intel® Core&nbsp;processor options and PCIe SSD options, you get a responsive but quiet performance.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Just your type</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Get a keyboard with a numeric keypad, 6.4 percent larger keycaps, and a huge touchpad to make navigating your content easier.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">All-day, any day</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Work in the ease with a lift hinge that lifts your tablet to an ergonomic angle, allowing for more comfortable typing.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Easy on the eyes</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Dell ComfortView Low Blue Light Software reduces harmful blue light emissions and improves eye comfort throughout long periods of viewing.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">More to use</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">A 15.6\" laptop with three-side narrow borders provides an extra screen for an immersive FHD viewing experience.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">A modern, thoughtful design</span></h3><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Connect with confidence</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">A built-in HD webcam that enhances your appearance.</p><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Everyday considerations</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With tiny rubber feet and bumpers on the hinge that keeps it from skidding and provide added stability when on hard surfaces, it\'s built to last.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Easy-to-use technology</span></h3><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Ready, Set, Charge</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">ExpressCharge&nbsp;capabilities reduce the amount of time you are linked to an outlet by up to 80% in 60 minutes.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Thoughtful design. Purposeful features</span></h3><h4 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">A second life</span></h4><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">These laptops take a step toward being socially friendly and sustainable by including post-consumer recycled plastics, which helps to keep plastic out of landfills.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Dell Mobile Connect App</span></h3><p style=\"margin-bottom: 0px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Everything you love about Dell Mobile Connect&nbsp;is now available in an easier-to-use app. Take phone calls right from your computer. Transfer images, videos, music, and documents between your PC and phone without using bulky wires or expensive cloud storage. Interact with your favorite apps on your PC by mirroring your Android or iOS screen.</p>', '16371440473511_-3.jpg', 66900, 0, 10, 'dell,SSD,4GB,laptop,inspiron 15', 'Dell Inspiron 15 3511 | i3 1115G4 | 4GB | 256SSD | Intel UHD | FHD. Latest Operating System.\r\nWith three colors: BLUE ,BLACK and SILVER', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 15:14:07', '2021-11-17 15:14:07', NULL, NULL, 'normal', 'GciEKHvZ.jpg'),
(596, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i3 1115G4 | 4GB | 256SSD | Intel UHD | FHD | Office | Silver, Black, Blue', 'Dell-Inspiron-----------i------G-----GB------SSD---Intel-UHD---FHD---Office---Silver--Black--Blue', 'HB005', 'dell,laptop,electronics,4GB,256SSD,i3,Dell Inspiron 15 3511', NULL, 'Dell Inspiron 15 3511 - i3 1115G4 | 4GB | 256SSD | Intel UHD | FHD | Office | Silver, Black, Blue', '[\"Microprocessor\",\"RAM\",\"SSD\",\"Color\",\"Generation\",\"Graphics\",\"Maximum Display Resolution\",\"Battery\"]', '[\"Intel\",\"4GB\",\"256GB\",\"Silver, Black, Blue\",\"11th\",\"Intel UHD\",\"1920 x 1080\",\"3-Cell Battery, 41WHr\"]', 1, '<h3 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Daily to do\'s, Done</span></h3><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">The speed you need</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">With the latest 11th generation Intel® Core&nbsp;processor options and PCIe SSD options, you get a responsive but quiet performance.</p><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Just your type</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Get a keyboard with a numeric keypad, 6.4 percent larger keycaps, and a huge touchpad to make navigating your content easier.</p><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">All-day, any day</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Work in the ease with a lift hinge that lifts your tablet to an ergonomic angle, allowing for more comfortable typing.</p><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Easy on the eyes</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Dell ComfortView Low Blue Light Software reduces harmful blue light emissions and improves eye comfort throughout long periods of viewing.</p><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">More to use</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">A 15.6\" laptop with three-side narrow borders provides an extra screen for an immersive FHD viewing experience.</p><h3 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">A modern, thoughtful design</span></h3><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Connect with confidence</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">A built-in HD webcam that enhances your appearance.</p><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Everyday considerations</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">With tiny rubber feet and bumpers on the hinge that keeps it from skidding and provide added stability when on hard surfaces, it\'s built to last.</p><h3 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Easy-to-use technology</span></h3><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Ready, Set, Charge</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">ExpressCharge&nbsp;capabilities reduce the amount of time you are linked to an outlet by up to 80% in 60 minutes.</p><h3 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Thoughtful design. Purposeful features</span></h3><h4 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">A second life</span></h4><p style=\"margin-right: 0px; margin-bottom: 2.857em; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">These laptops take a step toward being socially friendly and sustainable by including post-consumer recycled plastics, which helps to keep plastic out of landfills.</p><h3 style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; line-height: 1.043em; font-size: 1.643em; text-rendering: optimizelegibility; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; font-weight: bolder; margin-bottom: 0px;\">Dell Mobile Connect App</span></h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-size: 14px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Everything you love about Dell Mobile Connect&nbsp;is now available in an easier-to-use app. Take phone calls right from your computer. Transfer images, videos, music, and documents between your PC and phone without using bulky wires or expensive cloud storage. Interact with your favorite apps on your PC by mirroring your Android or iOS screen.</p>', '163714474271jegdF7unL._SL1500_.jpg', 68900, 0, 10, 'dell,laptop,electronics,4GB,256SSD,i3,Dell Inspiron 15 3511', 'Dell Inspiron 15 3511 - i3 1115G4 | 4GB | 256SSD | Intel UHD | FHD | Office | Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 15:25:42', '2021-11-17 15:25:42', NULL, NULL, 'normal', 'oGdYrZ2n.jpg'),
(597, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3501 - i5 1135G7 | 4GB | 1TB | NVIDIA MX 330 2GB GDDR5 | FHD-Silver, black, Blue', 'Dell-Inspiron-----------i------G-----GB----TB---NVIDIA-MX------GB-GDDR----FHD-Silver--black--Blue', 'HB006', 'dell,Dell Inspiron 15 3501,i5,4GB,1TB', NULL, 'Dell Inspiron 15 3501 - i5 1135G7 | 4GB | 1TB | NVIDIA MX 330 2GB GDDR5 | FHD-Silver, black, Blue', '[\"RAM\",\"HDD\",\"Color\",\"Intel core\"]', '[\"4GB\",\"1TB\",\"Silver, Black,Blue\",\"i5\"]', 1, '<span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Dell Inspiron 15 3501 - i5 1135G7 | 4GB | 1TB | NVIDIA MX 330 2GB GDDR5 | FHD-Silver, black, Blue&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:513,&quot;3&quot;:{&quot;1&quot;:0},&quot;12&quot;:0}\" style=\"font-size: 10pt; font-family: Arial;\">Dell Inspiron 15 3501 - i5 1135G7 with 4GB of RAM and 1TB of HDD NVIDIA MX 330 2GB GDDR5&nbsp; FHD<br>Comes in color Silver, black, Blue</span>', '1637170064619xt676CIL._SL1088_.jpg', 88900, 0, 10, 'dell,Dell Inspiron 15 3501,i5,4GB,1TB,HDD,laptop', 'Dell Inspiron 15 3501 - i5 1135G7 | 4GB | 1TB | NVIDIA MX 330 2GB GDDR5 | FHD-Silver, black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 22:27:44', '2021-11-17 22:27:44', NULL, NULL, 'normal', 'skCKjf99.jpg'),
(598, 21, 19, 35, 3, 22, 'Dell Inspiroin 3501| i5-1135G7 8GB|512GB | NVIDIA GeForce MX330 2GB | W10 | Soft Mint', 'Dell-Inspiroin-------i------G---GB----GB---NVIDIA-GeForce-MX-----GB---W-----Soft-Mint', 'HB007', 'dell,laptop,Dell Inspiroin 3501,i5,8GB,512GB,SSD', NULL, 'Dell Inspiroin 3501| i5-1135G7 8GB|512GB | NVIDIA GeForce MX330 2GB | W10 | Soft Mint', '[\"RAM\",\"SSD\",\"Intel Core\",\"Color\"]', '[\"8GB\",\"512GB\",\"i5\",\"Soft Mint\"]', 1, '<p><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">Planning to buy a new laptop with exceptional features and specifications? Dell Inspiron 15 3501 D560438WIN9SE Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 8GB 512GB SSD Windows 10 is a good choice that you can go for. The laptop is equipped with a Intel Core i5-1135G7 (11th Gen) with 2.4 GHz clock speed that lets you multitask with ease and experience faster performance</span><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">The sturdy, full-length, and ergonomically designed English Non Keyboard in this laptop will let you work with utmost convenience for a longer time duration. Furthermore, the Dell Inspiron 15 3501 D560438WIN9SE Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 8GB 512GB SSD Windows 10 is housed with a high-quality Li-Po that does not heat up or swell</span><br></p>', '163717042771jegdF7unL._SL1500_.jpg', 109900, 0, 10, 'dell,Dell Inspiroin 3501,laptop,i5,8GB,512GB,SSD', 'Dell Inspiroin 3501| i5-1135G7 8GB|512GB | NVIDIA GeForce MX330 2GB | W10 | Soft Mint', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 22:33:47', '2021-11-17 22:33:47', NULL, NULL, 'normal', 'q1MFixnL.jpg'),
(599, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i5 1135G7 | 4GB| 1TB | NVIDIA MX 350 2GB GDDR5 | FHD | Office 2019 | Silver, Black, Blue', 'Dell-Inspiron-----------i------G-----GB---TB---NVIDIA-MX------GB-GDDR----FHD---Office--------Silver--Black--Blue', 'HB008', 'dell,laptop,Dell Inspiron 15 3511,i5,4GB,1TB,HDD', NULL, 'Dell Inspiron 15 3511 - i5 1135G7 | 4GB| 1TB | NVIDIA MX 350 2GB GDDR5 | FHD | Office 2019 | Silver, Black, Blue', '[\"Brand\",\"Intel Core\",\"RAM\",\"HDD\",\"Color\"]', '[\"Dell\",\"i5\",\"4GB\",\"1TB\",\"Silver, Black, Blue\"]', 1, '<p><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">Planning to buy a new laptop with exceptional features and specifications? Dell Inspiron 15 3511 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 4GB 1TB HDD Windows 10 is a good choice that you can go for. The laptop is equipped with a Intel Core i5-1135G7 (11th Gen) with 2.4 GHz clock speed that lets you multitask with ease and experience faster performance</span><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">The sturdy, full-length, and ergonomically designed English Non Keyboard in this laptop will let you work with utmost convenience for a longer time duration. Furthermore, the Dell Inspiron 15 3501 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 4GB 1TB HDD&nbsp; Windows 10 is housed with a high-quality Li-Po that does not heat up or swell</span><br></p>', '163717080161G2gpHZB9L._SL1086_.jpg', 94900, 0, 10, 'dell,laptop,Dell Inspiron 15 3511,i5,4GB,1TB,HDD', 'Dell Inspiron 15 3511 - i5 1135G7 | 4GB| 1TB | NVIDIA MX 350 2GB GDDR5 | FHD | Office 2019 | Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 22:40:01', '2021-11-17 22:40:01', NULL, NULL, 'normal', 'sZuEHQDc.jpg'),
(600, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i5 1135G7 | 4GB | 1TB | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', 'Dell-Inspiron-----------i------G-----GB----TB---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue', 'HB009', 'dell,laptop,4GB,1TB,HDD,Dell Inspiron 15 3511', NULL, 'Dell Inspiron 15 3511 - i5 1135G7 | 4GB | 1TB | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', '[\"Brand\",\"RAM\",\"HDD\",\"Intel Core\",\"Color\"]', '[\"Dell\",\"4GB\",\"1TB\",\"i5\",\"Silver, Black, Blue\"]', 1, '<p><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">Planning to buy a new laptop with exceptional features and specifications? Dell Inspiron 15 3511 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 4GB 1TB HDD Windows 10 is a good choice that you can go for. The laptop is equipped with a Intel Core i5-1135G7 (11th Gen) with 2.4 GHz clock speed that lets you multitask with ease and experience faster performance</span><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">The sturdy, full-length, and ergonomically designed English Non Keyboard in this laptop will let you work with utmost convenience for a longer time duration. Furthermore, the Dell Inspiron 15 3511 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 4GB 1TB HDD Windows 10 is housed with a high-quality Li-Po that does not heat up or swell</span><br></p>', '163717105971jegdF7unL._SL1500_.jpg', 92900, 0, 10, 'dell,laptop,4GB,1TB,HDD,Dell Inspiron 15 3511', 'Dell Inspiron 15 3511 - i5 1135G7 | 4GB | 1TB | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 22:44:19', '2021-11-17 22:44:19', NULL, NULL, 'normal', '2BjfN1Ot.jpg'),
(601, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 1TB | Intel Iris Xe | FHD | Silver, Black, Blue', 'Dell-Inspiron-----------i------G-----GB----TB---Intel-Iris-Xe---FHD---Silver--Black--Blue', 'HB010', 'dell,laptop,Dell Inspiron 15 3511,8GB,1TB,HDD', NULL, 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 1TB | Intel Iris Xe | FHD | Silver, Black, Blue', '[\"Brand\",\"RAM\",\"Intel Core\",\"HDD\",\"Ports and Connectivity\"]', '[\"Dell\",\"8GB\",\"i5\",\"1TB\",\"SD Card Reader, USB 2.0, Audio Jack, Power Jack, HDMI 1.4, USB 3.2, USB 3.2\"]', 1, '<h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Daily Long Day Work</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">You love it:</span>&nbsp;</h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Choose a keyboard with a numeric keypad, 6.4 percent larger keycaps, and a large touchpad to make it easy to traverse your content.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Any time, any day:&nbsp;</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Work comfortably with a lift hinge that lifts your tablet to an ergonomic position for more secure typing.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Comfortable on eyes:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Dell ComfortView Low Blue Light Software helps reduce harmful blue light emissions while enhancing eye comfort over time.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">More to look at:</span>&nbsp;</h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">An extra screen is added to a 15.6\" laptop with three small boundaries on three sides for an immersive FHD viewing experience.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">A modern, thoughtful design</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Connect With Friends</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">A built-in HD webcam that enhances your image quality.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Everyday considerations</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">It\'s built to last, with little rubber feet and hinge bumpers that keep it from sliding and provide stability on hard surfaces.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Dell Mobile Connect</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Everything you love about Dell Mobile Connect is now in an easier-to-use app. You may use your computer to make phone calls. You may use your computer to make phone calls. Transfer photos, videos, music, and documents from your PC to your phone without having to use bulky cables or pay for cloud storage.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Their latest, Our greatest</span></h2><p style=\"margin-bottom: 0px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">This duo is vivacious, to say the least. Dell PCs and Windows 11 work together to give you the best experience possible. A more comfortable atmosphere is created with a fresh look and feel. Using a snap assist might help you focus on your job. Or Switch between desktops to better manage your open windows.</p>', '1637171387718ihdS3GZL._SL1500_.jpg', 87900, 0, 10, 'dell,laptop,Dell Inspiron 15 3511,8GB,1TB,HDD', 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 1TB | Intel Iris Xe | FHD | Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 22:49:47', '2021-11-17 22:49:47', NULL, NULL, 'normal', 'YTNVMgy9.jpg');
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`) VALUES
(602, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i5 1135G7 8GB 1TB| Intel Iris Xe| FHD Office Silver, Black, Blue', 'Dell-Inspiron-----------i------G---GB--TB--Intel-Iris-Xe--FHD-Office-Silver--Black--Blue', 'HB011', 'dell,laptop,i5,8GB,1TB,HDD,Dell Inspiron 15 3511', NULL, 'Dell Inspiron 15 3511 - i5 1135G7 8GB 1TB| Intel Iris Xe| FHD Office Silver, Black, Blue', '[\"Brand\",\"RAM\",\"HDD\",\"Intel Core\",\"Color\"]', '[\"Dell\",\"8GB\",\"1TB\",\"i5\",\"Silver, Black, Blue\"]', 1, '<h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Daily Long Day Work</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">You love it:</span>&nbsp;</h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Choose a keyboard with a numeric keypad, 6.4 percent larger keycaps, and a large touchpad to make it easy to traverse your content.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Any time, any day:&nbsp;</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Work comfortably with a lift hinge that lifts your tablet to an ergonomic position for more secure typing.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Comfortable on eyes:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Dell ComfortView Low Blue Light Software helps reduce harmful blue light emissions while enhancing eye comfort over time.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">More to look at:</span>&nbsp;</h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">An extra screen is added to a 15.6\" laptop with three small boundaries on three sides for an immersive FHD viewing experience.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">A modern, thoughtful design</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Connect With Friends</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">A built-in HD webcam that enhances your image quality.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Everyday considerations</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">It\'s built to last, with little rubber feet and hinge bumpers that keep it from sliding and provide stability on hard surfaces.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Dell Mobile Connect</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Everything you love about Dell Mobile Connect is now in an easier-to-use app. You may use your computer to make phone calls. You may use your computer to make phone calls. Transfer photos, videos, music, and documents from your PC to your phone without having to use bulky cables or pay for cloud storage.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Their latest, Our greatest</span></h2><p style=\"margin-bottom: 0px; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">This duo is vivacious, to say the least. Dell PCs and Windows 11 work together to give you the best experience possible. A more comfortable atmosphere is created with a fresh look and feel. Using a snap assist might help you focus on your job. Or Switch between desktops to better manage your open windows.</p>', '16371716533511_-3.jpg', 89900, 90000, 10, 'dell,laptop,i5,8GB,HDD,Dell Inspiron 15 3511', 'Dell Inspiron 15 3511 - i5 1135G7 8GB 1TB| Intel Iris Xe| FHD Office Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 22:54:13', '2021-11-17 22:54:13', NULL, NULL, 'normal', 'tgJWxeqX.jpg'),
(603, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', 'Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue', 'HB012', 'dell,laptop,8GB,512GB,SSD,Dell Inspiron 15 3511,i5', NULL, 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', '[\"Brand\",\"RAM\",\"SSD\",\"Intel Core\",\"Color\"]', '[\"Dell\",\"8GB\",\"512\",\"i5\",\"Silver, Black, Blue\"]', 1, '<p><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">Planning to buy a new laptop with exceptional features and specifications? Dell Inspiron 15 3511 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 8GB 512GB SSD Windows 10 is a good choice that you can go for. The laptop is equipped with a Intel Core i5-1135G7 (11th Gen) with 2.4 GHz clock speed that lets you multitask with ease and experience faster performance</span><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">The sturdy, full-length, and ergonomically designed English Non Keyboard in this laptop will let you work with utmost convenience for a longer time duration. Furthermore, the Dell Inspiron 15 3511 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 8GB 512GB SSD Windows 10 is housed with a high-quality Li-Po that does not heat up or swell</span><br></p>', '1637171979619xt676CIL._SL1088_.jpg', 107900, 0, 10, 'dell,laptop,8GB,512GB,SSD,Dell Inspiron 15 3511,i5', 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 22:59:39', '2021-11-17 22:59:39', NULL, NULL, 'normal', 'uLgtfH8x.jpg'),
(604, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Office | Silver, Black, Blue', 'Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Office---Silver--Black--Blue', 'HB013', 'dell,laptop,8GB,512GB,i5,Dell Inspiron 15 3511', NULL, 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Office | Silver, Black, Blue', '[\"Brand\",\"RAM\",\"SSD\",\"Intel Core\",\"Color\"]', '[\"Dell\",\"8GB\",\"512GB\",\"i5\",\"Silver, Black, Blue\"]', 1, '<p><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">Planning to buy a new laptop with exceptional features and specifications? Dell Inspiron 15 3511 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 8GB 512GB SSD Windows 10 is a good choice that you can go for. The laptop is equipped with a Intel Core i5-1135G7 (11th Gen) with 2.4 GHz clock speed that lets you multitask with ease and experience faster performance</span><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">The sturdy, full-length, and ergonomically designed English Non Keyboard in this laptop will let you work with utmost convenience for a longer time duration. Furthermore, the Dell Inspiron 15 3511 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX330, 8GB 512GB SSD Windows 10 is housed with a high-quality Li-Po that does not heat up or swell</span><br></p>', '163717223361G2gpHZB9L._SL1086_.jpg', 109900, 0, 10, 'dell,laptop,8GB,512GB,i5,Dell Inspiron 15 3511', 'Dell Inspiron 15 3511 - i5 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Office | Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 23:03:53', '2021-11-17 23:03:53', NULL, NULL, 'normal', 'GjzL5NWB.jpg'),
(605, 21, 19, 35, 3, 22, 'Dell Inspiron 15 5510 - i5 11300H| 8GB|512SSD | NVIDIA GeForce MX450 2GB GDDR5 | FHD WVA| BKL KB+FPR-SLV', 'Dell-Inspiron-----------i-------H---GB----SSD---NVIDIA-GeForce-MX-----GB-GDDR----FHD-WVA--BKL-KB-FPR-SLV', 'HB014', 'dell,laptop,8GB,512Gb,SSD,Dell Inspiron 15 5510,i5', NULL, 'Dell Inspiron 15 5510 - i5 11300H| 8GB|512SSD | NVIDIA GeForce MX450 2GB GDDR5 | FHD WVA| BKL KB+FPR-SLV', '[\"Brand\",\"RAM\",\"SSD\",\"Intel COre\"]', '[\"Dell\",\"8GB\",\"512GB\",\"i5\"]', 1, '<p><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">Planning to buy a new laptop with exceptional features and specifications? Dell Inspiron 15 5510 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX450, 8GB 512GB SSD Windows 10 is a good choice that you can go for. The laptop is equipped with a Intel Core i5-5510 (11th Gen) with 2.4 GHz clock speed that lets you multitask with ease and experience faster performance</span><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><br style=\"margin: 8px 0px; padding: 0px; outline: none; content: &quot;&quot;; display: flex; color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgb(26, 26, 26); font-family: Montserrat, Tahoma, sans-serif; font-size: 14px;\">The sturdy, full-length, and ergonomically designed English Non Keyboard in this laptop will let you work with utmost convenience for a longer time duration. Furthermore, the Dell Inspiron 15 5510 Laptop Intel Core i5-1135G7 (11th Gen) NVIDIA GeForce MX450, 8GB 512GB SSD Windows 10 is housed with a high-quality Li-Po that does not heat up or swell</span><br></p>', '163717262871jegdF7unL._SL1500_.jpg', 124900, 0, 10, 'dell,laptop,8GB,512Gb,SSD,Dell Inspiron 15 5510,i5', 'Dell Inspiron 15 5510 - i5 11300H| 8GB|512SSD | NVIDIA GeForce MX450 2GB GDDR5 | FHD WVA| BKL KB+FPR-SLV', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 23:10:28', '2021-11-17 23:10:28', NULL, NULL, 'normal', 'N2jQanQe.jpg'),
(606, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3501- i7 1165G7 | 8GB | 512SSD | NVIDIA MX 330 2GB GDDR5 | FHD | BKL KB-Black', 'Dell-Inspiron----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---BKL-KB-Black', 'HB015', 'dell,i7,8GB,512GB,Dell Inspiron 15 3501,SSD', NULL, 'Dell Inspiron 15 3501- i7 1165G7 | 8GB | 512SSD | NVIDIA MX 330 2GB GDDR5 | FHD | BKL KB-Black', '[\"Brand\",\"RAM\",\"SSD\",\"Intel Core\",\"Color\"]', '[\"Dell\",\"8GB\",\"512GB\",\"i7\",\"Black\"]', 1, '<h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Dell Inspiron 15 3501 With the powerful i7: 11th Gen Processor!</h2><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Storage Galore:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">When compared to traditional hard disk drives (HDDs), 512GB PCIe NVMe solid-state drives (SSDs) that come with&nbsp;<span style=\"font-weight: bolder;\">Dell&nbsp;</span><a href=\"https://neostore.com.np/?s=3501&amp;post_type=product&amp;type_aws=true\" style=\"color: rgb(13, 110, 253);\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">&nbsp;Inspiron 15 3501</span></a><span style=\"font-weight: bolder;\">&nbsp;i7</span>&nbsp;11th Gen&nbsp;<a href=\"https://neostore.com.np/product-category/laptops-computers/\" style=\"color: rgb(13, 110, 253); margin-bottom: 0px;\">laptop</a>&nbsp;features a more responsive, quieter performance, and enhanced shock resistance. Optional Dual drives combine the performance advantages of SSDs with the storage capacity advantages of HDDs.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Memorable power:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">View, read, watch, stream, listen, and learn with the latest Intel® 11th Gen processors, which provide a wide range of multimedia features to keep you entertained and enticed throughout the day. You can quickly multitask and switch between open applications thanks to the 8GB DDR4&nbsp;<a href=\"https://neostore.com.np/product-category/computer-parts/ram/\" style=\"color: rgb(13, 110, 253);\">memory</a>&nbsp;that comes with your&nbsp;<span style=\"font-weight: bolder;\">Dell</span>&nbsp;<span style=\"font-weight: bolder; margin-bottom: 0px;\">Inspiron 15 3501 i7</span>.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Ready and waiting:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With the touch of a button or a swipe of your touchpad, you can get to what you need quickly. Your laptop wakes up quickly with Modern Standby, allowing you to resume whatever job you\'re working on.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Designed to keep you moving</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Travel light:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">At approximately 11.88% lighter than its previous generation, the<span style=\"font-weight: bolder;\">&nbsp;Dell&nbsp;</span><a href=\"https://neostore.com.np/?s=Inspiron&amp;post_type=product&amp;type_aws=true\" style=\"color: rgb(13, 110, 253);\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Inspiron</span></a><span style=\"font-weight: bolder; margin-bottom: 0px;\">&nbsp;15 3501</span>&nbsp;is ready to go whenever you are.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Better view:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With two-sided narrow borders that allow for a more wide viewing experience, you may enjoy more screens. The FHD and anti-glare display, which is encased in attractively slim borders, provides a clear, bright image that is easy on the eyes.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Ports &amp; Slots</h2><ol style=\"padding-left: 2rem; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\"><li style=\"margin-bottom: 0px;\">SD Card Reader │ 2. USB 2.0 Gen 1 Type-A │ 3. Wedge-shaped lock slot │ 4. Power-in │ 5. Optional USB 3.2 Gen 1 Type-C with Data Transfer (Available only on configurations with 11th gen processors &amp; NVIDIA® graphics) │ 6. HDMI 1.4 │ 7. RJ45 │ 8. USB 3.2 Gen 1 Type-A │ 9. USB 3.2 Gen 1 Type-A │ 10. Audio Jack&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></ol>', '16371729173511_-3.jpg', 120900, 0, 10, 'Dell Inspiron 15 3501,dell,laptop,i7,8GB,SSD', 'Dell Inspiron 15 3501- i7 1165G7 | 8GB | 512SSD | NVIDIA MX 330 2GB GDDR5 | FHD | BKL KB-Black', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 23:15:17', '2021-11-17 23:15:17', NULL, NULL, 'normal', 'VgUlb0YQ.jpg'),
(607, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', 'Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue', 'HB016', 'dell,i7,laptop,8Gb,512GB,SSD,Dell Inspiron 15 3511', NULL, 'Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', '[\"Brand\",\"RAM\",\"SSD\",\"Intel Core\",\"Color\"]', '[\"Dell\",\"8GB\",\"512GB\",\"i7\",\"Silver, Black, Blue\"]', 1, '<h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Dell Inspiron 15 3511 With the powerful i7: 11th Gen Processor!</h2><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Storage Galore:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">When compared to traditional hard disk drives (HDDs), 512GB PCIe NVMe solid-state drives (SSDs) that come with&nbsp;<span style=\"font-weight: bolder;\">Dell&nbsp;</span><a href=\"https://neostore.com.np/?s=3501&amp;post_type=product&amp;type_aws=true\" style=\"color: rgb(13, 110, 253);\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">&nbsp;Inspiron 15 3511</span></a><span style=\"font-weight: bolder;\">&nbsp;i7</span>&nbsp;11th Gen&nbsp;<a href=\"https://neostore.com.np/product-category/laptops-computers/\" style=\"color: rgb(13, 110, 253); margin-bottom: 0px;\">laptop</a>&nbsp;features a more responsive, quieter performance, and enhanced shock resistance. Optional Dual drives combine the performance advantages of SSDs with the storage capacity advantages of HDDs.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Memorable power:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">View, read, watch, stream, listen, and learn with the latest Intel® 11th Gen processors, which provide a wide range of multimedia features to keep you entertained and enticed throughout the day. You can quickly multitask and switch between open applications thanks to the 8GB DDR4&nbsp;<a href=\"https://neostore.com.np/product-category/computer-parts/ram/\" style=\"color: rgb(13, 110, 253);\">memory</a>&nbsp;that comes with your&nbsp;<span style=\"font-weight: bolder;\">Dell</span>&nbsp;<span style=\"font-weight: bolder; margin-bottom: 0px;\">Inspiron 15 3511 i7</span>.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Ready and waiting:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With the touch of a button or a swipe of your touchpad, you can get to what you need quickly. Your laptop wakes up quickly with Modern Standby, allowing you to resume whatever job you\'re working on.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Designed to keep you moving</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Travel light:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">At approximately 11.88% lighter than its previous generation, the<span style=\"font-weight: bolder;\">&nbsp;Dell&nbsp;</span><a href=\"https://neostore.com.np/?s=Inspiron&amp;post_type=product&amp;type_aws=true\" style=\"color: rgb(13, 110, 253);\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Inspiron</span></a><span style=\"font-weight: bolder; margin-bottom: 0px;\">&nbsp;15 3511</span>&nbsp;is ready to go whenever you are.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Better view:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With two-sided narrow borders that allow for a more wide viewing experience, you may enjoy more screens. The FHD and anti-glare display, which is encased in attractively slim borders, provides a clear, bright image that is easy on the eyes.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Ports &amp; Slots</h2><ol style=\"padding-left: 2rem; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\"><li style=\"margin-bottom: 0px;\">SD Card Reader │ 2. USB 2.0 Gen 1 Type-A │ 3. Wedge-shaped lock slot │ 4. Power-in │ 5. Optional USB 3.2 Gen 1 Type-C with Data Transfer (Available only on configurations with 11th gen processors &amp; NVIDIA® graphics) │ 6. HDMI 1.4 │ 7. RJ45 │ 8. USB 3.2 Gen 1 Type-A │ 9. USB 3.2 Gen 1 Type-A │ 10. Audio Jack</li></ol>', '1637173164619xt676CIL._SL1088_.jpg', 125900, 0, 10, 'dell,Dell Inspiron 15 3511,laptop,8GB,512GB,SSD', 'Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 23:19:24', '2021-11-17 23:19:24', NULL, NULL, 'normal', 'agZhz7Or.jpg'),
(608, 21, 19, 35, 3, 22, 'Dell Inspiron 15 3511 - i7 1165G7 8GB 512SSD NVIDIA MX 350 2GB GDDR5 FHD Office Silver, Black, Blue', 'Dell-Inspiron-----------i------G---GB----SSD-NVIDIA-MX------GB-GDDR--FHD-Office-Silver--Black--Blue', 'HB017', 'dell,laptop,i7,8GB,512GB,Dell Inspiron 15 3511', NULL, 'Dell Inspiron 15 3511 - i7 1165G7 8GB 512SSD NVIDIA MX 350 2GB GDDR5 FHD Office Silver, Black, Blue', '[\"Brand\",\"RAM\",\"Intel Core\",\"SSD\",\"Color\"]', '[\"Dell\",\"8GB\",\"i7\",\"512GB\",\"Silver, Black, Blue\"]', 1, '<h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Dell Inspiron 15 3511 With the powerful i7: 11th Gen Processor!</h2><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Storage Galore:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">When compared to traditional hard disk drives (HDDs), 512GB PCIe NVMe solid-state drives (SSDs) that come with&nbsp;<span style=\"font-weight: bolder;\">Dell&nbsp;</span><a href=\"https://neostore.com.np/?s=3501&amp;post_type=product&amp;type_aws=true\" style=\"color: rgb(13, 110, 253);\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">&nbsp;Inspiron 15 3511</span></a><span style=\"font-weight: bolder;\">&nbsp;i7</span>&nbsp;11th Gen&nbsp;<a href=\"https://neostore.com.np/product-category/laptops-computers/\" style=\"color: rgb(13, 110, 253); margin-bottom: 0px;\">laptop</a>&nbsp;features a more responsive, quieter performance, and enhanced shock resistance. Optional Dual drives combine the performance advantages of SSDs with the storage capacity advantages of HDDs.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Memorable power:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">View, read, watch, stream, listen, and learn with the latest Intel® 11th Gen processors, which provide a wide range of multimedia features to keep you entertained and enticed throughout the day. You can quickly multitask and switch between open applications thanks to the 8GB DDR4&nbsp;<a href=\"https://neostore.com.np/product-category/computer-parts/ram/\" style=\"color: rgb(13, 110, 253);\">memory</a>&nbsp;that comes with your&nbsp;<span style=\"font-weight: bolder;\">Dell</span>&nbsp;<span style=\"font-weight: bolder; margin-bottom: 0px;\">Inspiron 15 3511 i7</span>.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Ready and waiting:</span></h2><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With the touch of a button or a swipe of your touchpad, you can get to what you need quickly. Your laptop wakes up quickly with Modern Standby, allowing you to resume whatever job you\'re working on.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Designed to keep you moving</span></h2><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Travel light:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">At approximately 11.88% lighter than its previous generation, the<span style=\"font-weight: bolder;\">&nbsp;Dell&nbsp;</span><a href=\"https://neostore.com.np/?s=Inspiron&amp;post_type=product&amp;type_aws=true\" style=\"color: rgb(13, 110, 253);\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Inspiron</span></a><span style=\"font-weight: bolder; margin-bottom: 0px;\">&nbsp;15 3511</span>&nbsp;is ready to go whenever you are.</p><h3 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\"><span style=\"font-weight: bolder; margin-bottom: 0px;\">Better view:</span></h3><p style=\"margin-bottom: 2.857em; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">With two-sided narrow borders that allow for a more wide viewing experience, you may enjoy more screens. The FHD and anti-glare display, which is encased in attractively slim borders, provides a clear, bright image that is easy on the eyes.</p><h2 style=\"margin-bottom: 1em; line-height: 1.043em; font-size: 1.643em; color: rgb(51, 62, 72); font-family: &quot;DM Sans&quot;, sans-serif; letter-spacing: -0.14px;\">Ports &amp; Slots</h2><ol style=\"padding-left: 2rem; color: rgb(104, 108, 111); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\"><li style=\"margin-bottom: 0px;\">SD Card Reader │ 2. USB 2.0 Gen 1 Type-A │ 3. Wedge-shaped lock slot │ 4. Power-in │ 5. Optional USB 3.2 Gen 1 Type-C with Data Transfer (Available only on configurations with 11th gen processors &amp; NVIDIA® graphics) │ 6. HDMI 1.4 │ 7. RJ45 │ 8. USB 3.2 Gen 1 Type-A │ 9. USB 3.2 Gen 1 Type-A │ 10. Audio Jack</li></ol>', '1637173403619xt676CIL._SL1088_.jpg', 128900, 0, 10, 'dell,laptop,i7,8GB,Dell Inspiron 15 3511', 'Dell Inspiron 15 3511 - i7 1165G7 8GB 512SSD NVIDIA MX 350 2GB GDDR5 FHD Office Silver, Black, Blue', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 23:23:23', '2021-11-17 23:23:23', NULL, NULL, 'normal', 'IcV72mZ2.jpg'),
(609, 21, 19, 35, 3, 22, 'Dell Inspiron 13 5310 - i7 11370H|16GB|512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD+WVA|BKLKB+FPR-SLV', 'Dell-Inspiron-----------i-------H---GB----SSD---NVIDIA-GeForce-MX-----GB-GDDR----QHD-WVA-BKLKB-FPR-SLV', 'HB018', 'dell,i7,16GB,512GB,SSD,Dell Inspiron 13 5310', NULL, 'Dell Inspiron 13 5310 - i7 11370H|16GB|512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD+WVA|BKLKB+FPR-SLV', '[\"Brand\",\"RAM\",\"SSD\",\"Intel Core\",\"Graphics\",\"Battery\"]', '[\"Dell\",\"16GB\",\"512GB\",\"i7\",\"NVIDIA GeForce MX450 2GB GDDR6\",\"4-cell, 54 WHr polymer\"]', 1, '<h2 class=\"product_title entry-title\" style=\"line-height: 1.1; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-size: 24px; font-family: Oswald, sans-serif; color: rgb(45, 45, 45); clear: none; padding: 0px;\">Dell Inspiron 13 5310 | i7-11370H | 16GB | 512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD</h2><div class=\"woocommerce-product-details__short-description\" style=\"color: rgb(45, 45, 45); font-size: 14px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li>13.3-inch QHD Display</li><li>16 GB Ram</li><li>512 GB SSD</li><li>NVIDIA GeForce MX450 2GB</li></ul></div>', '163717371861G2gpHZB9L._SL1086_.jpg', 160900, 0, 10, 'dell,i7,16GB,512G,SSD,Dell Inspiron 13 5310', 'Dell Inspiron 13 5310 - i7 11370H|16GB|512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD+WVA|BKLKB+FPR-SLV', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-17 23:28:38', '2021-11-17 23:28:38', NULL, NULL, 'normal', '7Qu4RW23.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `file`, `name`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', '1632074091n5DwjCPM.json', '1632074091n5DwjCPM', 1, 0, NULL, NULL),
(2, 'Arabic', '1632074095lDZUdxU2.json', '1632074095lDZUdxU2', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_21_073142_create_admins_table', 1),
(2, '2021_08_21_073507_create_users_table', 1),
(3, '2021_09_20_144419_create_items_table', 1),
(4, '2021_09_20_151605_create_settings_table', 1),
(5, '2021_09_21_073848_create_attributes_table', 1),
(6, '2021_09_21_073951_create_attribute_options_table', 1),
(7, '2021_09_21_074028_create_banners_table', 1),
(8, '2021_09_21_074231_create_bcategories_table', 1),
(9, '2021_09_21_074309_create_brands_table', 1),
(10, '2021_09_21_074412_create_campaign_items_table', 1),
(11, '2021_09_21_074536_create_categories_table', 1),
(12, '2021_09_21_074744_create_chield_categories_table', 1),
(13, '2021_09_21_074952_create_countries_table', 1),
(14, '2021_09_21_075024_create_currencies_table', 1),
(15, '2021_09_21_075231_create_email_templates_table', 1),
(16, '2021_09_21_075346_create_faqs_table', 1),
(17, '2021_09_21_075642_create_fcategories_table', 1),
(18, '2021_09_21_080223_create_galleries_table', 1),
(19, '2021_09_21_080320_create_home_cutomizes_table', 1),
(20, '2021_09_21_080454_create_languages_table', 1),
(21, '2021_09_21_080652_create_messages_table', 1),
(22, '2021_09_21_080805_create_notifications_table', 1),
(23, '2021_09_21_090957_create_orders_table', 1),
(25, '2021_09_21_092255_create_payment_settings_table', 1),
(26, '2021_09_21_092722_create_posts_table', 1),
(27, '2021_09_21_092801_create_promo_codes_table', 1),
(28, '2021_09_21_093709_create_reviews_table', 1),
(29, '2021_09_21_093833_create_roles_table', 1),
(30, '2021_09_21_094020_create_services_table', 1),
(31, '2021_09_21_094413_create_shipping_services_table', 1),
(32, '2021_09_21_094517_create_sliders_table', 1),
(33, '2021_09_21_094630_create_socials_table', 1),
(34, '2021_09_21_094739_create_subcategories_table', 1),
(35, '2021_09_21_094831_create_subscribers_table', 1),
(36, '2021_09_21_094903_create_taxes_table', 1),
(37, '2021_09_21_095021_create_tickets_table', 1),
(38, '2021_09_21_095605_create_track_orders_table', 1),
(39, '2021_09_21_095650_create_transactions_table', 1),
(40, '2021_09_21_095836_create_wishlists_table', 1),
(41, '2021_09_21_091316_create_pages_table', 2),
(42, '2021_09_22_095954_add_extra_visibility_to_settings_table', 3),
(43, '2021_09_29_075836_add_theme_to_settings_table', 4),
(44, '2021_09_30_103035_google_chapcha_to_settings__table', 5),
(45, '2021_10_04_141643_add_currency_deraction_to_settings_table', 6),
(46, '2021_10_08_135417_add_theme_field_to_sliders_table', 7),
(51, '2021_10_09_153059_license_to_items_table', 8),
(56, '2021_10_09_173004_remove_item_type_to_items_table', 9),
(57, '2021_10_09_173038_set_item_type_to_items_table', 9),
(58, '2021_10_10_051502_add_scrript_to_settings_table', 10),
(59, '2021_10_10_142339_thumbnail_to_items_table', 11),
(61, '2021_10_10_163455_home_page4_to_home_cutomizes_table', 12),
(62, '2021_10_11_090243_create_extra_settings_table', 13),
(63, '2021_10_12_145150_add_home4populer_category_to_home_cutomizes_table', 14),
(64, '2021_10_13_100048_create_sitemaps_table', 15),
(65, '2021_10_15_140708_add_type_to_promo_codes_table', 16),
(66, '2021_10_15_163958_add_announcement_link_to_settings_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` text COLLATE utf8mb4_unicode_ci,
  `shipping` text COLLATE utf8mb4_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_info` text COLLATE utf8mb4_unicode_ci,
  `billing_info` text COLLATE utf8mb4_unicode_ci,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `currency_sign`, `currency_value`, `discount`, `shipping`, `payment_method`, `txnid`, `tax`, `charge_id`, `transaction_number`, `order_status`, `shipping_info`, `billing_info`, `payment_status`, `created_at`, `updated_at`) VALUES
(74, 3, '{\"609-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 13 5310 - i7 11370H|16GB|512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD+WVA|BKLKB+FPR-SLV\",\"slug\":\"Dell-Inspiron-----------i-------H---GB----SSD---NVIDIA-GeForce-MX-----GB-GDDR----QHD-WVA-BKLKB-FPR-SLV\",\"qty\":\"1\",\"price\":160900,\"main_price\":\"160900\",\"photo\":\"163717371861G2gpHZB9L._SL1086_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '{\"id\":4,\"title\":\"Free Delevery\",\"price\":\"0\",\"status\":\"1\",\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'HElCUDMsyX', 'Delivered', '{\"ship_first_name\":\"Jiwanta\",\"ship_last_name\":\"Dhital\",\"ship_email\":\"darktornado42@gmail.com\",\"ship_phone\":\"darktornado42@gmail.com\",\"ship_company\":\"orchid\",\"ship_address1\":\"gausala\",\"ship_address2\":\"gausala\",\"ship_zip\":\"4460\",\"ship_city\":\"kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"iJotEicmo8Fagv8JMHY3SdSAVIaARNfGAzhC27gd\",\"bill_first_name\":\"Jiwanta\",\"bill_last_name\":\"Dhital\",\"bill_email\":\"darktornado42@gmail.com\",\"bill_phone\":\"darktornado42@gmail.com\",\"bill_company\":\"orchid\",\"bill_address1\":\"gausala\",\"bill_address2\":\"gausala\",\"bill_zip\":\"4460\",\"bill_city\":\"kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Paid', '2021-11-18 13:31:36', '2021-11-18 13:32:16'),
(75, 4, '{\"608-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1165G7 8GB 512SSD NVIDIA MX 350 2GB GDDR5 FHD Office Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G---GB----SSD-NVIDIA-MX------GB-GDDR--FHD-Office-Silver--Black--Blue\",\"qty\":2,\"price\":128900,\"main_price\":\"128900\",\"photo\":\"1637173403619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '[]', 'Cash On Delivery', NULL, 0, NULL, 'ArCDP3jHLD', 'Delivered', '{\"_token\":\"MWFKWN3Oqdd3YSxAvfo9pShmYQxMSIViRtBZv4VA\",\"ship_first_name\":\"HTN\",\"ship_last_name\":\"Tester\",\"ship_email\":\"uddhabusa@gmail.com\",\"ship_phone\":\"9828729896\",\"ship_company\":null,\"ship_address1\":\"Dakshindhoka\",\"ship_address2\":null,\"ship_zip\":null,\"ship_city\":\"Kathmandu\",\"ship_country\":\"Choose Country\"}', '{\"_token\":\"MWFKWN3Oqdd3YSxAvfo9pShmYQxMSIViRtBZv4VA\",\"bill_first_name\":\"HTN\",\"bill_last_name\":\"Tester\",\"bill_email\":\"uddhabusa@gmail.com\",\"bill_phone\":\"9828729896\",\"bill_company\":null,\"bill_address1\":\"Dakshindhoka\",\"bill_address2\":null,\"bill_zip\":null,\"bill_city\":\"Kathmandu\",\"bill_country\":\"Choose Country\"}', 'Paid', '2021-11-18 14:49:38', '2021-11-18 14:53:46'),
(76, 2, '{\"606-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3501- i7 1165G7 | 8GB | 512SSD | NVIDIA MX 330 2GB GDDR5 | FHD | BKL KB-Black\",\"slug\":\"Dell-Inspiron----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---BKL-KB-Black\",\"qty\":\"2\",\"price\":120900,\"main_price\":120900,\"photo\":\"16371729173511_-3.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":125900,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Bank Transfer', 'abc', 0, NULL, '8GYqaDw1JK', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":null,\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":null,\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 14:25:29', '2021-11-18 14:25:29'),
(77, 2, '{\"609-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 13 5310 - i7 11370H|16GB|512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD+WVA|BKLKB+FPR-SLV\",\"slug\":\"Dell-Inspiron-----------i-------H---GB----SSD---NVIDIA-GeForce-MX-----GB-GDDR----QHD-WVA-BKLKB-FPR-SLV\",\"qty\":\"1\",\"price\":160900,\"main_price\":160900,\"photo\":\"163717371861G2gpHZB9L._SL1086_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 't8YvvtNvtF', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":null,\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":null,\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 14:41:13', '2021-11-18 14:41:13'),
(78, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":125900,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"591-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Inspiron 15 3000 Laptop\",\"slug\":\"Inspiron---------Laptop\",\"qty\":\"1\",\"price\":61900,\"main_price\":61900,\"photo\":\"1637141864Dell Inspiron 15 3505.webp\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 8047, NULL, 'Qqz5DUgK6H', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:18:51', '2021-11-18 17:18:51'),
(79, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":125900,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"591-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Inspiron 15 3000 Laptop\",\"slug\":\"Inspiron---------Laptop\",\"qty\":\"1\",\"price\":61900,\"main_price\":61900,\"photo\":\"1637141864Dell Inspiron 15 3505.webp\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 8047, NULL, 'GNoocNqJ4g', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:19:20', '2021-11-18 17:19:20'),
(80, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":125900,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"591-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Inspiron 15 3000 Laptop\",\"slug\":\"Inspiron---------Laptop\",\"qty\":\"1\",\"price\":61900,\"main_price\":61900,\"photo\":\"1637141864Dell Inspiron 15 3505.webp\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 8047, NULL, 'nnCge3hTDn', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:20:10', '2021-11-18 17:20:10'),
(81, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":125900,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"591-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Inspiron 15 3000 Laptop\",\"slug\":\"Inspiron---------Laptop\",\"qty\":\"1\",\"price\":61900,\"main_price\":61900,\"photo\":\"1637141864Dell Inspiron 15 3505.webp\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 8047, NULL, 'IdTPlj4KTV', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:20:34', '2021-11-18 17:20:34'),
(82, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":1057.56,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, '9vy9xbwmop', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:22:12', '2021-11-18 17:22:12'),
(83, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":1057.56,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'EUQTbG9hNP', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:22:59', '2021-11-18 17:22:59'),
(84, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":1057.56,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'IujDSvB3H8', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:23:05', '2021-11-18 17:23:05'),
(85, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":1057.56,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'fINiHoMZHU', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:23:38', '2021-11-18 17:23:38'),
(86, 2, '{\"609-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 13 5310 - i7 11370H|16GB|512SSD | NVIDIA GeForce MX450 2GB GDDR6 | QHD+WVA|BKLKB+FPR-SLV\",\"slug\":\"Dell-Inspiron-----------i-------H---GB----SSD---NVIDIA-GeForce-MX-----GB-GDDR----QHD-WVA-BKLKB-FPR-SLV\",\"qty\":\"1\",\"price\":1351.56,\"main_price\":160900,\"photo\":\"163717371861G2gpHZB9L._SL1086_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '0.0084', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Bank Transfer', 'Verified Test.', 0, NULL, 'Sg8MTX11O8', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:33:19', '2021-11-18 17:33:19'),
(87, 2, '{\"608-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1165G7 8GB 512SSD NVIDIA MX 350 2GB GDDR5 FHD Office Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G---GB----SSD-NVIDIA-MX------GB-GDDR--FHD-Office-Silver--Black--Blue\",\"qty\":\"1\",\"price\":128900,\"main_price\":128900,\"photo\":\"1637173403619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Bank Transfer', 'Verified Test.', 0, NULL, 'YcyKNoiDN6', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:40:43', '2021-11-18 17:40:43'),
(88, 2, '{\"607-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i7 1135G7 | 8GB | 512SSD | NVIDIA MX 350 2GB GDDR5 | FHD | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB------SSD---NVIDIA-MX------GB-GDDR----FHD---Silver--Black--Blue\",\"qty\":\"1\",\"price\":125900,\"main_price\":125900,\"photo\":\"1637173164619xt676CIL._SL1088_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Bank Transfer', 'Verified Test.', 0, NULL, 'FUG4lD80Du', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:49:39', '2021-11-18 17:49:39'),
(89, 2, '{\"602-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i5 1135G7 8GB 1TB| Intel Iris Xe| FHD Office Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G---GB--TB--Intel-Iris-Xe--FHD-Office-Silver--Black--Blue\",\"qty\":\"1\",\"price\":89900,\"main_price\":89900,\"photo\":\"16371716533511_-3.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"599-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Dell Inspiron 15 3511 - i5 1135G7 | 4GB| 1TB | NVIDIA MX 350 2GB GDDR5 | FHD | Office 2019 | Silver, Black, Blue\",\"slug\":\"Dell-Inspiron-----------i------G-----GB---TB---NVIDIA-MX------GB-GDDR----FHD---Office--------Silver--Black--Blue\",\"qty\":\"1\",\"price\":94900,\"main_price\":94900,\"photo\":\"163717080161G2gpHZB9L._SL1086_.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"591-\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Inspiron 15 3000 Laptop\",\"slug\":\"Inspiron---------Laptop\",\"qty\":\"1\",\"price\":61900,\"main_price\":61900,\"photo\":\"1637141864Dell Inspiron 15 3505.webp\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'Rs.', '1', '[]', '{\"id\":5,\"title\":\"Inside Valley\",\"price\":100,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Bank Transfer', 'Verified Test.', 8047, NULL, 'oPuhNEDs9V', 'Pending', '{\"ship_first_name\":\"Sushant\",\"ship_last_name\":\"Poudel\",\"ship_email\":\"sushantpoudelofficial@gmail.com\",\"ship_phone\":\"9860489494\",\"ship_company\":\"Compro International\",\"ship_address1\":\"Durbar Marg\",\"ship_address2\":null,\"ship_zip\":\"44600\",\"ship_city\":\"Kathmandu\",\"ship_country\":\"Nepal\"}', '{\"_token\":\"NucEHVg09aN3ZA3SnCcA8IBIvEHgLBzWRiNtEJ9O\",\"bill_first_name\":\"Sushant\",\"bill_last_name\":\"Poudel\",\"bill_email\":\"sushantpoudelofficial@gmail.com\",\"bill_phone\":\"9860489494\",\"bill_company\":\"Compro International\",\"bill_address1\":\"Durbar Marg\",\"bill_address2\":null,\"bill_zip\":\"44600\",\"bill_city\":\"Kathmandu\",\"bill_country\":\"Nepal\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-11-18 17:51:48', '2021-11-18 17:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_keywords`, `meta_descriptions`, `pos`, `created_at`, `updated_at`) VALUES
(7, 'About Us', 'about-us', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(10, 'Privacy Policy', 'privacy-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(11, 'Terms & Service', 'terms-and-service', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(12, 'Return Policy', 'return-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `unique_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `information`, `unique_keyword`, `photo`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, 'cod', '1631032407index.png', 'Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.', 1, NULL, NULL),
(14, 'Stripe', '{\"key\":\"pk_test_51HZI80H3jdWvr8gEn3oRtFlnJTqRpecXGQueOyngEArTyF6gjjfOVqbFeFMpAMRoQmKwPPrh81OiWzhDlqtS5nGs00gKycg4Oa\",\"secret\":\"sk_test_51HZI80H3jdWvr8gErqdNWpqUkAgHMQdw7uug1mfUY38vIUfodsAWj4hoBK43rBvHebYETVX4ZCne03o3Ifco1qkR00dhrdpPsh\"}', 'stripe', '1601930611stripe-logo-blue.png', 'Stripe is the faster & safer way to send money. Make an online payment via Stripe.', 0, NULL, NULL),
(15, 'Paypal', '{\"client_id\":null,\"client_secret\":null,\"check_sandbox\":0}', 'paypal', '16218678201601930675paypal-784404_960_720.png', 'PayPal is the faster & safer way to send money. Make an online payment via PayPal.', 0, NULL, NULL),
(17, 'Mollie', '{\"key\":\"adfadsftkogux4998504763dfa8244sdddddsadsfadfadffaaaaa\"}', 'mollie', '1621785282Mollie.jpeg', 'Mollie is a Payment Provider for Belgium and the Netherlands, offering payment methods such as credit card, iDEAL, Bancontact/Mister cash, PayPal, SCT, SDD and others.', 0, NULL, NULL),
(18, 'Paytm', '{\"mercent\":\"tkogux49985047638244\",\"client_secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"is_paytm\":\"1\",\"paytm_mode\":\"sandbox\"}', 'paytm', '1631978815images.png', 'Paytm is the faster & safer way to send money. Make an online payment via Paytm.', 0, NULL, NULL),
(19, 'SSLCommerz', '{\"store_id\":\"na\",\"store_password\":\"na\",\"check_sandbox\":0}', 'sslcommerz', '1631978716ssl-thumb.jpeg', 'SSL commerz is the faster & safer way to send money. Make an online payment via SSL commerz.', 0, NULL, NULL),
(24, 'Mercadopago', '{\"public_key\":\"na\",\"token\":\"na\",\"check_sandbox\":0}', 'mercadopago', '1633085560unnamed.jpeg', 'Mercadopago is the faster & safer way to send money. Make an online payment via Mercadopago.', 0, NULL, NULL),
(25, 'Authorize.Net', '{\"login_id\":\"na\",\"txn_key\":\"na\",\"check_sandbox\":0}', 'authorize', '1633100640seal2.png', 'Authorize.Net is the faster & safer way to send money. Make an online payment via Authorize.Net', 0, NULL, NULL),
(26, 'Paystack', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"hajurbuy@gmail.com\"}', 'paystack', '1634237632paystack-opengraph.png', 'Paystack is the faster & safer way to send money. Make an online payment via Paystack.', 0, NULL, NULL),
(27, 'Bank Transfer', NULL, 'bank', '1636923220fonepay_logo.png', '<p>Account Number : 434 3434 3334</p><p>Pay With Bank Transfer.</p><p>Account Name : Hajurbuy</p><p>Account Email : sales@hajurbuy.com</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `details`, `photo`, `category_id`, `tags`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(59, 'Fashion and Tech Series 1', 'fashion-and-tech-series-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1636923649rvZ9CQUF9qFVHHRRFvmJfWjDQqh00IkMoM4wqVyY.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"lapop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-11-14 15:15:49'),
(61, 'Fashion and Tech Series 2', 'fashion-and-tech-series-2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"16369236420kkzxvBcZ7zfpa5Kimgzz4udtkO2vHbGfBvTOhXf (1).webp\"]', 2, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-11-14 15:15:42'),
(62, 'Fashion and Tech Series 3', 'fashion-and-tech-series-3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1636923635rvJB7GrvMucOu977NIDbXRROHdK8M3sNVPyVYi2L.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-11-14 15:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `title`, `code_name`, `no_of_times`, `discount`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Flash Discount', 'HAJUR11', 95, 2, 1, NULL, NULL, 'percentage'),
(4, 'Sales', '3233321', 34, 10, 1, NULL, NULL, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `item_id`, `review`, `subject`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 609, 'Best Product.', 'About this product', 4, 1, '2021-11-18 14:00:30', '2021-11-18 16:18:24'),
(3, 4, 608, 'Delivery was very quick. This is the best laptop in the market. Highly recommend.', 'Very fast and reliable laptop', 5, 1, '2021-11-18 14:55:04', '2021-11-18 13:27:28'),
(4, 2, 609, 'This is what the great.', 'Welcome To Hajurbuy', 1, 1, '2021-11-18 16:20:15', '2021-11-18 16:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'user', '[\"Ecommerce\"]', '2021-11-16 16:01:49', '2021-11-16 16:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(31, 'Secure Online Payment', 'We posess SSL / Secure Certificate', '162196474904.png', NULL, NULL),
(32, '24/7 Customer Support', 'Friendly 24/7 customer support', '162196471103.png', NULL, NULL),
(33, 'Money Back Guarantee', 'We return money within 30 days', '162196467602.png', NULL, NULL),
(34, 'Free Worldwide Shipping', 'Free shipping for all orders over $100 Contrary to popular belie', '162196463701.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT '1',
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT '0',
  `email_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overlay` text COLLATE utf8mb4_unicode_ci,
  `google_analytics_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `is_shop` tinyint(4) DEFAULT '1',
  `is_blog` tinyint(4) DEFAULT '1',
  `is_faq` tinyint(4) DEFAULT '1',
  `is_contact` tinyint(4) DEFAULT '1',
  `facebook_check` tinyint(4) DEFAULT '1',
  `facebook_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT '1',
  `google_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_price` double DEFAULT '0',
  `max_price` double DEFAULT '100000',
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_gateway_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` text COLLATE utf8mb4_unicode_ci,
  `friday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT '1',
  `is_category` tinyint(4) DEFAULT '1',
  `is_product` tinyint(4) DEFAULT '1',
  `is_top_banner` tinyint(4) DEFAULT '1',
  `is_recent` tinyint(4) DEFAULT '1',
  `is_top` tinyint(4) DEFAULT '1',
  `is_best` tinyint(4) DEFAULT '1',
  `is_flash` tinyint(4) DEFAULT '1',
  `is_brand` tinyint(4) DEFAULT '1',
  `is_blogs` tinyint(4) DEFAULT '1',
  `is_campaign` tinyint(4) DEFAULT '1',
  `is_brands` tinyint(4) DEFAULT '1',
  `is_bottom_banner` tinyint(4) DEFAULT '1',
  `is_service` tinyint(4) DEFAULT '1',
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT '1',
  `twilio_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_form_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT '1',
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT '0.00',
  `is_maintainance` tinyint(4) DEFAULT '1',
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_text` text COLLATE utf8mb4_unicode_ci,
  `is_twilio` tinyint(4) DEFAULT '0',
  `twilio_section` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT '1',
  `is_popular_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT '1',
  `is_highlighted` tinyint(4) NOT NULL DEFAULT '1',
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT '1',
  `is_featured_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT '1',
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha` tinyint(4) DEFAULT '0',
  `currency_direction` tinyint(4) DEFAULT '1',
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `google_adsense` text COLLATE utf8mb4_unicode_ci,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci,
  `facebook_messenger` text COLLATE utf8mb4_unicode_ci,
  `is_google_analytics` tinyint(4) DEFAULT '0',
  `is_google_adsense` tinyint(4) DEFAULT '0',
  `is_facebook_pixel` tinyint(4) DEFAULT '0',
  `is_facebook_messenger` tinyint(4) DEFAULT '0',
  `announcement_link` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `loader`, `is_loader`, `feature_image`, `primary_color`, `smtp_check`, `email_host`, `email_port`, `email_encryption`, `email_user`, `email_pass`, `email_from`, `email_from_name`, `contact_email`, `version`, `overlay`, `google_analytics_id`, `meta_keywords`, `meta_description`, `is_shop`, `is_blog`, `is_faq`, `is_contact`, `facebook_check`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect`, `google_check`, `google_client_id`, `google_client_secret`, `google_redirect`, `min_price`, `max_price`, `footer_phone`, `footer_address`, `footer_email`, `footer_gateway_img`, `social_link`, `friday_start`, `friday_end`, `satureday_start`, `satureday_end`, `copy_right`, `is_slider`, `is_category`, `is_product`, `is_top_banner`, `is_recent`, `is_top`, `is_best`, `is_flash`, `is_brand`, `is_blogs`, `is_campaign`, `is_brands`, `is_bottom_banner`, `is_service`, `campaign_title`, `campaign_end_date`, `campaign_status`, `twilio_sid`, `twilio_token`, `twilio_form_number`, `twilio_country_code`, `is_announcement`, `announcement`, `announcement_delay`, `is_maintainance`, `maintainance_image`, `maintainance_text`, `is_twilio`, `twilio_section`, `created_at`, `updated_at`, `is_three_c_b_first`, `is_popular_category`, `is_three_c_b_second`, `is_highlighted`, `is_two_column_category`, `is_popular_brand`, `is_featured_category`, `is_two_c_b`, `theme`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `recaptcha`, `currency_direction`, `google_analytics`, `google_adsense`, `facebook_pixel`, `facebook_messenger`, `is_google_analytics`, `is_google_adsense`, `is_facebook_pixel`, `is_facebook_messenger`, `announcement_link`) VALUES
(1, 'MartPark eCommerce', '1639832607sushantbiglogo.png', '16398326211637085419.png', '1637075641spinn.gif', 0, '1600622296topic.jpg', '#62D2A1', 1, 'smtp.gmail.com', '465', 'ssl', 'skillparknepal@gmail.com', 'zbtrjrftdlxobxfw', 'no-reply@martpark.com', 'Martpark eCommerce', 'sales@martpark.com', '4.0', NULL, 'UA-106757798-1', 'ecommerce,laptop,technology,best laptops,i5,i7,martpark', 'Martpark eCommerce Platform.', 1, 0, 1, 1, 0, NULL, NULL, 'https://martpark.test/auth/facebook/callback', 0, NULL, NULL, 'https://martpark.test/auth/google/callback', 0, 100000, '+977 1 428530', 'Kathmandu, Nepal', 'no-reply@sushantp.com.np', '16305963101621960148credit-cards-footer.png', '{\"icons\":[\"fab fa-facebook-f\",\"fab fa-twitter\",\"fab fa-youtube\",\"fab fa-linkedin-in\"],\"links\":[\"https:\\/\\/www.facebook.com\",\"https:\\/\\/www.twitter.com\",\"https:\\/\\/www.youtube.com\",\"https:\\/\\/www.linkedin.com\"]}', '9:00 AM', '6:00 PM', '10:00 AM', '5:00 PM', '<p>Hajurbuy © All rights reserved.&nbsp;<b>Powered by </b><a href=\"https://sushantp.com.np\">Sushant Poudel</a><b>.</b></p>', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'Deals Of The Week', '12/09/2021', 1, 'AC73e54518487ad4e26da8b465a7614f1f0', '300d787df0c398ae46b84b74ea86f59c', '+15612793758', '+880', 0, '1636923418NhO2es4a7SDIvmaVTiIOEof9CTMvMF3k6esajieT.jpg', '2.00', 0, '16323327831619241714761747856.jpg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', 1, '{\"\'purchase\'\":\"Your Order Purchase Successfully....\",\"\'order_status\'\":\"Your Order status update....\"}', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 'theme2', '6LdG0DcdAAAAAL7zug14D6vzGcZvRP5xcJPpJAkU', '6LdG0DcdAAAAALlHiYuq6XU2EWiAbHNbCHwzlna8', 1, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '#test');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `title`, `price`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Free Delevery', 0, 0, NULL, NULL),
(5, 'Inside Valley', 100, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'theme1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title`, `link`, `logo`, `details`, `created_at`, `updated_at`, `home_page`) VALUES
(8, '1634222112h3s.jpg', '40% OFF', '#', '1634222436Untitled-1.png', 'Smart Watch New healthy life sleep heart rate blood pressure monitor popular products touch screen.', NULL, NULL, 'theme3');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-square', NULL, NULL),
(2, 'https://twitter.com/', 'fab fa-twitter-square', NULL, NULL),
(3, 'https://www.instagram.com/', 'fab fa-instagram', NULL, NULL),
(10, 'https://www.pinterest.com/', 'fab fa-pinterest-square', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Mobile Phones', 'Mobile-Phones', 21, 1, NULL, NULL),
(13, 'Mobile Phone Accessories', 'Mobile-Phone-Accessories', 21, 1, NULL, NULL),
(19, 'Laptop', 'Laptop', 21, 1, NULL, NULL),
(22, 'DSLR', 'DSLR', 21, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', NULL, NULL),
(3, 'sushantpaudel@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 13, 1, NULL, NULL),
(3, 'No Tax', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_orders`
--

CREATE TABLE `track_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_orders`
--

INSERT INTO `track_orders` (`id`, `order_id`, `title`, `created_at`, `updated_at`) VALUES
(176, 318, 'Pending', '2021-09-12 06:07:09', '2021-09-12 06:07:09'),
(177, 1, 'Pending', '2021-09-13 07:11:25', '2021-09-13 07:11:25'),
(178, 22, 'Pending', '2021-09-13 09:13:48', '2021-09-13 09:13:48'),
(179, 22, 'Pending', '2021-09-13 09:14:34', '2021-09-13 09:14:34'),
(180, 23, 'Pending', '2021-09-13 09:15:09', '2021-09-13 09:15:09'),
(182, 25, 'Pending', '2021-09-13 09:22:56', '2021-09-13 09:22:56'),
(187, 30, 'Pending', '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(249, 74, 'Pending', '2021-11-18 13:31:36', '2021-11-18 13:31:36'),
(250, 74, 'In Progress', '2021-11-18 13:32:16', '2021-11-18 13:32:16'),
(251, 74, 'Delivered', '2021-11-18 13:32:16', '2021-11-18 13:32:16'),
(252, 75, 'Pending', '2021-11-18 14:49:38', '2021-11-18 14:49:38'),
(253, 75, 'In Progress', '2021-11-18 14:51:00', '2021-11-18 14:51:00'),
(254, 75, 'Delivered', '2021-11-18 14:51:32', '2021-11-18 14:51:32'),
(255, 76, 'Pending', '2021-11-18 14:25:29', '2021-11-18 14:25:29'),
(256, 77, 'Pending', '2021-11-18 14:41:13', '2021-11-18 14:41:13'),
(257, 78, 'Pending', '2021-11-18 17:18:51', '2021-11-18 17:18:51'),
(258, 79, 'Pending', '2021-11-18 17:19:20', '2021-11-18 17:19:20'),
(259, 80, 'Pending', '2021-11-18 17:20:10', '2021-11-18 17:20:10'),
(260, 81, 'Pending', '2021-11-18 17:20:34', '2021-11-18 17:20:34'),
(261, 82, 'Pending', '2021-11-18 17:22:12', '2021-11-18 17:22:12'),
(262, 83, 'Pending', '2021-11-18 17:23:00', '2021-11-18 17:23:00'),
(263, 84, 'Pending', '2021-11-18 17:23:05', '2021-11-18 17:23:05'),
(264, 85, 'Pending', '2021-11-18 17:23:38', '2021-11-18 17:23:38'),
(265, 86, 'Pending', '2021-11-18 17:33:19', '2021-11-18 17:33:19'),
(266, 87, 'Pending', '2021-11-18 17:40:43', '2021-11-18 17:40:43'),
(267, 88, 'Pending', '2021-11-18 17:49:39', '2021-11-18 17:49:39'),
(268, 89, 'Pending', '2021-11-18 17:51:49', '2021-11-18 17:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `txn_id`, `amount`, `user_email`, `currency_sign`, `currency_value`, `created_at`, `updated_at`) VALUES
(47, '74', 'HElCUDMsyX', 160900, 'darktornado42@gmail.com', 'Rs.', 1, '2021-11-18 13:31:36', '2021-11-18 13:31:36'),
(48, '75', 'ArCDP3jHLD', 257800, 'uddhabusa@gmail.com', 'Rs.', 1, '2021-11-18 14:49:38', '2021-11-18 14:49:38'),
(49, '76', '8GYqaDw1JK', 367800, 'sushantpoudelofficial@gmail.com', 'Rs.', 1, '2021-11-18 14:25:29', '2021-11-18 14:25:29'),
(50, '77', 't8YvvtNvtF', 161000, 'sushantpoudelofficial@gmail.com', 'Rs.', 1, '2021-11-18 14:41:13', '2021-11-18 14:41:13'),
(51, '81', 'IdTPlj4KTV', 195946, 'sushantpoudelofficial@gmail.com', '$', 0.0084, '2021-11-18 17:20:34', '2021-11-18 17:20:34'),
(52, '85', 'fINiHoMZHU', 126000, 'sushantpoudelofficial@gmail.com', '$', 0.0084, '2021-11-18 17:23:38', '2021-11-18 17:23:38'),
(53, '86', 'Sg8MTX11O8', 161000, 'sushantpoudelofficial@gmail.com', '$', 0.0084, '2021-11-18 17:33:19', '2021-11-18 17:33:19'),
(54, '87', 'YcyKNoiDN6', 129000, 'sushantpoudelofficial@gmail.com', 'Rs.', 1, '2021-11-18 17:40:43', '2021-11-18 17:40:43'),
(55, '88', 'FUG4lD80Du', 126000, 'sushantpoudelofficial@gmail.com', 'Rs.', 1, '2021-11-18 17:49:39', '2021-11-18 17:49:39'),
(56, '89', 'oPuhNEDs9V', 254847, 'sushantpoudelofficial@gmail.com', 'Rs.', 1, '2021-11-18 17:51:49', '2021-11-18 17:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `photo`, `email_token`, `password`, `ship_address1`, `ship_address2`, `ship_zip`, `ship_city`, `ship_country`, `ship_company`, `bill_address1`, `bill_address2`, `bill_zip`, `bill_city`, `bill_country`, `bill_company`, `created_at`, `updated_at`) VALUES
(2, 'Sushant', 'Poudel', '9860489494', 'sushantpoudelofficial@gmail.com', '1637132207SushantPoudel-Profile.jpg', NULL, '$2y$10$VqqPEhrhq0Mx45XMmWdkJOCGigMJxLnZpal5Fr/gb6Aa2gg05HaMO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-17 11:56:00', '2021-11-18 15:29:13'),
(3, 'Jiwanta', 'Dhital', 'darktornado42@gmail.com', 'darktornado42@gmail.com', NULL, 'e15912dfd51c4658a335fb7e0ae639f3', '$2y$10$BuYkQtMRmKbPs0NIwRL/oevRsj41fv5KmIBm/zLheGgCk0bM58JRi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-17 12:41:32', '2021-11-18 14:36:30'),
(4, 'HTN', 'Tester', '9828729896', 'uddhabusa@gmail.com', NULL, 'GX4ta2', '$2y$10$0ONa6nLddtfY4m8/RZsMgebXvHMq1HHQk3IPh.OCy4mg0F1tqmZmG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-18 14:41:40', '2021-11-18 14:41:40'),
(5, 'manish', 'dhital', '9876767676', 'darktornado41@gmail.com', NULL, 'AA6Pmj', '$2y$10$adUuX4K0ZEqj1H.PlEFwlelmy2fpPGLcA2RAT8E.yilaynmwtpQsK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-18 15:26:41', '2021-11-18 15:26:41'),
(6, 'Rasu', 'Khadka', '98152725167', 'shawolrasu22@gmail.com', NULL, 'NpsA7K', '$2y$10$6xGf3ZcDjIVGw4p7H7CTZ.yI6rGsRDAWDIcG4OGbr4V/iIwHaKGCq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-18 15:29:28', '2021-11-18 15:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 3, 609, NULL, NULL),
(2, 2, 605, NULL, NULL),
(3, 2, 594, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_items`
--
ALTER TABLE `campaign_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chield_categories`
--
ALTER TABLE `chield_categories`
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
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_settings`
--
ALTER TABLE `extra_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcategories`
--
ALTER TABLE `fcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_orders`
--
ALTER TABLE `track_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `campaign_items`
--
ALTER TABLE `campaign_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `chield_categories`
--
ALTER TABLE `chield_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extra_settings`
--
ALTER TABLE `extra_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fcategories`
--
ALTER TABLE `fcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_orders`
--
ALTER TABLE `track_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
