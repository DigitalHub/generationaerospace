-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 03:57 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `generationaerospace`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_st`
--

CREATE TABLE `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_cf7dbplugin_st`
--

INSERT INTO `wp_cf7dbplugin_st` (`submit_time`) VALUES
('1515171529.8382'),
('1515171839.6126');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_submits`
--

CREATE TABLE `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-20 10:26:42', '2017-12-20 10:26:42', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_genaero_favourite_videos`
--

CREATE TABLE `wp_genaero_favourite_videos` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_genaero_favourite_videos`
--

INSERT INTO `wp_genaero_favourite_videos` (`id`, `member_id`, `video_id`, `create_date`) VALUES
(2, 1, 3, '2018-01-05 16:30:25'),
(3, 2, 1, '2018-01-05 16:58:31'),
(8, 3, 4, '2018-01-07 10:10:02'),
(9, 1, 4, '2018-01-07 10:10:16'),
(10, 3, 3, '2018-01-07 10:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_genaero_members`
--

CREATE TABLE `wp_genaero_members` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fb_user` tinyint(1) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_genaero_members`
--

INSERT INTO `wp_genaero_members` (`id`, `username`, `email`, `password`, `fullname`, `school`, `phone`, `address`, `country`, `birthdate`, `facebook`, `instagram`, `bio`, `photo`, `is_fb_user`, `create_date`, `update_date`) VALUES
(1, 'stef', 'test@test.com', '$P$BrxG0OLDTsd2pUbyLf7q.hrJUaqYO50', 'Stefanie C', '', '', '', '', '', '', '', '', NULL, 0, '2018-01-03 22:57:21', '2018-01-03 23:26:08'),
(2, 'stefanie_chong', 'stef_c85@yahoo.com', '$P$BOmMo0KETNdbaJx/VXbMpa8pnAAPqV.', 'Stefanie Chong', NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/app_scoped_user_id/10155809819150569/', NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.136.136/1923336_20386450568_5553_n.jpg?oh=d8ddac814aec13089093ac07aee98425&oe=5AEF864E', 1, '2018-01-04 11:45:53', '0000-00-00 00:00:00'),
(3, 'asdf', 'asdf@test.com', '$P$B.IAjxDfAiv4EaeJYHCY2PvuLyEAfY0', 'Stef', '', '', '', '', '', '', '', '', NULL, 0, '2018-01-04 11:49:53', '2018-01-04 11:50:49'),
(4, 'asdfasdf', 'asdf@test.com', '$P$B6FVewo95rB61qSAq4E7rSW7qkVLtx/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-01-05 11:39:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_genaero_videos`
--

CREATE TABLE `wp_genaero_videos` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_genaero_videos`
--

INSERT INTO `wp_genaero_videos` (`id`, `member_id`, `title`, `description`, `youtube`, `approved`, `create_date`, `update_date`) VALUES
(1, 3, 'asdf', 'asdf', 'https://www.youtube.com/watch?v=oFfMN6lPnlA', 0, '2018-01-05 11:01:24', '0000-00-00 00:00:00'),
(3, 2, 'Gummi Bear Sacrifice Video', 'Craig Beals shows how much energy is stored up as calories in a gummy bear. The reaction involves sucrose from the gummy bear and sodium chlorate (potassium chlorate can be used as well). Craig then shows the energy in an entire serving of gummy bears and the experiment erupts into a fireball of as the sugar calories undergo a combustion reaction. This science demonstration is also known as \\\\\\"Dancing Gummy Bears\\\\\\".', 'https://www.youtube.com/watch?v=z7ZuBjPRFUk', 1, '2018-01-05 11:23:49', '2018-01-05 15:44:46'),
(4, 2, 'DIY Baking Soda & Vinegar Rocket!', 'Most fun thing in the world is to shoot something up into the air! Right? Andrew W.K. teaches Reckers how to make a Do-It-Yourself rocket that will blast your party into the next galaxy. Party on!', 'https://www.youtube.com/watch?v=vTlvkXWzfXk', 0, '2018-01-05 16:09:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/generationaerospace', 'yes'),
(2, 'home', 'http://localhost/generationaerospace', 'yes'),
(3, 'blogname', 'Generation Aerospace', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'devs@text100.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:35:"genaero-members/genaero-members.php";i:3;s:69:"wonderm00ns-simple-facebook-open-graph-tags/wonderm00n-open-graph.php";i:4;s:44:"wp-native-php-sessions/pantheon-sessions.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'understrap', 'yes'),
(41, 'stylesheet', 'understrap', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:69:"wonderm00ns-simple-facebook-open-graph-tags/wonderm00n-open-graph.php";s:21:"webdados_fb_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:66:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"restrict_content";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:12:"delete_roles";b:1;s:10:"edit_roles";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:6:"member";a:2:{s:4:"name";s:6:"Member";s:12:"capabilities";a:1:{s:4:"read";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:0:{}s:12:"left-sidebar";a:1:{i:0;s:10:"nav_menu-2";}s:4:"hero";a:0:{}s:10:"statichero";a:0:{}s:10:"footerfull";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:"nav_menu";i:2;}s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:7:{i:1515342414;a:1:{s:26:"um_hourly_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1515364002;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1515367614;a:1:{s:30:"um_twicedaily_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1515407281;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515408843;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515410814;a:1:{s:25:"um_daily_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1513765684;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1515329272;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(137, 'current_theme', 'UnderStrap', 'yes'),
(138, 'theme_mods_understrap', 'a:6:{i:0;b:0;s:28:"understrap_posts_index_style";s:7:"default";s:27:"understrap_sidebar_position";s:5:"right";s:25:"understrap_container_type";s:9:"container";s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:6:"Footer";i:4;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(142, 'recently_activated', 'a:2:{s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:1515335724;s:33:"alka-facebook-2/alka-facebook.php";i:1514868706;}', 'yes'),
(174, 'redux-framework-tracking', 'a:3:{s:8:"dev_mode";b:0;s:4:"hash";s:32:"deaf14d6fd5c7faa638c7dec7d860691";s:14:"allow_tracking";s:2:"no";}', 'yes'),
(175, 'um_version', '1.3.88', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(176, 'um_cache_fonticons', 'a:1218:{i:0;s:13:"um-icon-alert";i:1;s:21:"um-icon-alert-circled";i:2;s:19:"um-icon-android-add";i:3;s:26:"um-icon-android-add-circle";i:4;s:27:"um-icon-android-alarm-clock";i:5;s:21:"um-icon-android-alert";i:6;s:20:"um-icon-android-apps";i:7;s:23:"um-icon-android-archive";i:8;s:26:"um-icon-android-arrow-back";i:9;s:26:"um-icon-android-arrow-down";i:10;s:30:"um-icon-android-arrow-dropdown";i:11;s:37:"um-icon-android-arrow-dropdown-circle";i:12;s:30:"um-icon-android-arrow-dropleft";i:13;s:37:"um-icon-android-arrow-dropleft-circle";i:14;s:31:"um-icon-android-arrow-dropright";i:15;s:38:"um-icon-android-arrow-dropright-circle";i:16;s:28:"um-icon-android-arrow-dropup";i:17;s:35:"um-icon-android-arrow-dropup-circle";i:18;s:29:"um-icon-android-arrow-forward";i:19;s:24:"um-icon-android-arrow-up";i:20;s:22:"um-icon-android-attach";i:21;s:19:"um-icon-android-bar";i:22;s:23:"um-icon-android-bicycle";i:23;s:20:"um-icon-android-boat";i:24;s:24:"um-icon-android-bookmark";i:25;s:20:"um-icon-android-bulb";i:26;s:19:"um-icon-android-bus";i:27;s:24:"um-icon-android-calendar";i:28;s:20:"um-icon-android-call";i:29;s:22:"um-icon-android-camera";i:30;s:22:"um-icon-android-cancel";i:31;s:19:"um-icon-android-car";i:32;s:20:"um-icon-android-cart";i:33;s:20:"um-icon-android-chat";i:34;s:24:"um-icon-android-checkbox";i:35;s:30:"um-icon-android-checkbox-blank";i:36;s:32:"um-icon-android-checkbox-outline";i:37;s:38:"um-icon-android-checkbox-outline-blank";i:38;s:32:"um-icon-android-checkmark-circle";i:39;s:25:"um-icon-android-clipboard";i:40;s:21:"um-icon-android-close";i:41;s:21:"um-icon-android-cloud";i:42;s:28:"um-icon-android-cloud-circle";i:43;s:26:"um-icon-android-cloud-done";i:44;s:29:"um-icon-android-cloud-outline";i:45;s:29:"um-icon-android-color-palette";i:46;s:23:"um-icon-android-compass";i:47;s:23:"um-icon-android-contact";i:48;s:24:"um-icon-android-contacts";i:49;s:24:"um-icon-android-contract";i:50;s:22:"um-icon-android-create";i:51;s:22:"um-icon-android-delete";i:52;s:23:"um-icon-android-desktop";i:53;s:24:"um-icon-android-document";i:54;s:20:"um-icon-android-done";i:55;s:24:"um-icon-android-done-all";i:56;s:24:"um-icon-android-download";i:57;s:22:"um-icon-android-drafts";i:58;s:20:"um-icon-android-exit";i:59;s:22:"um-icon-android-expand";i:60;s:24:"um-icon-android-favorite";i:61;s:32:"um-icon-android-favorite-outline";i:62;s:20:"um-icon-android-film";i:63;s:22:"um-icon-android-folder";i:64;s:27:"um-icon-android-folder-open";i:65;s:22:"um-icon-android-funnel";i:66;s:21:"um-icon-android-globe";i:67;s:20:"um-icon-android-hand";i:68;s:23:"um-icon-android-hangout";i:69;s:21:"um-icon-android-happy";i:70;s:20:"um-icon-android-home";i:71;s:21:"um-icon-android-image";i:72;s:22:"um-icon-android-laptop";i:73;s:20:"um-icon-android-list";i:74;s:22:"um-icon-android-locate";i:75;s:20:"um-icon-android-lock";i:76;s:20:"um-icon-android-mail";i:77;s:19:"um-icon-android-map";i:78;s:20:"um-icon-android-menu";i:79;s:26:"um-icon-android-microphone";i:80;s:30:"um-icon-android-microphone-off";i:81;s:31:"um-icon-android-more-horizontal";i:82;s:29:"um-icon-android-more-vertical";i:83;s:24:"um-icon-android-navigate";i:84;s:29:"um-icon-android-notifications";i:85;s:34:"um-icon-android-notifications-none";i:86;s:33:"um-icon-android-notifications-off";i:87;s:20:"um-icon-android-open";i:88;s:23:"um-icon-android-options";i:89;s:22:"um-icon-android-people";i:90;s:22:"um-icon-android-person";i:91;s:26:"um-icon-android-person-add";i:92;s:31:"um-icon-android-phone-landscape";i:93;s:30:"um-icon-android-phone-portrait";i:94;s:19:"um-icon-android-pin";i:95;s:21:"um-icon-android-plane";i:96;s:25:"um-icon-android-playstore";i:97;s:21:"um-icon-android-print";i:98;s:32:"um-icon-android-radio-button-off";i:99;s:31:"um-icon-android-radio-button-on";i:100;s:23:"um-icon-android-refresh";i:101;s:22:"um-icon-android-remove";i:102;s:29:"um-icon-android-remove-circle";i:103;s:26:"um-icon-android-restaurant";i:104;s:19:"um-icon-android-sad";i:105;s:22:"um-icon-android-search";i:106;s:20:"um-icon-android-send";i:107;s:24:"um-icon-android-settings";i:108;s:21:"um-icon-android-share";i:109;s:25:"um-icon-android-share-alt";i:110;s:20:"um-icon-android-star";i:111;s:25:"um-icon-android-star-half";i:112;s:28:"um-icon-android-star-outline";i:113;s:25:"um-icon-android-stopwatch";i:114;s:22:"um-icon-android-subway";i:115;s:21:"um-icon-android-sunny";i:116;s:20:"um-icon-android-sync";i:117;s:23:"um-icon-android-textsms";i:118;s:20:"um-icon-android-time";i:119;s:21:"um-icon-android-train";i:120;s:22:"um-icon-android-unlock";i:121;s:22:"um-icon-android-upload";i:122;s:27:"um-icon-android-volume-down";i:123;s:27:"um-icon-android-volume-mute";i:124;s:26:"um-icon-android-volume-off";i:125;s:25:"um-icon-android-volume-up";i:126;s:20:"um-icon-android-walk";i:127;s:23:"um-icon-android-warning";i:128;s:21:"um-icon-android-watch";i:129;s:20:"um-icon-android-wifi";i:130;s:16:"um-icon-aperture";i:131;s:15:"um-icon-archive";i:132;s:20:"um-icon-arrow-down-a";i:133;s:20:"um-icon-arrow-down-b";i:134;s:20:"um-icon-arrow-down-c";i:135;s:20:"um-icon-arrow-expand";i:136;s:29:"um-icon-arrow-graph-down-left";i:137;s:30:"um-icon-arrow-graph-down-right";i:138;s:27:"um-icon-arrow-graph-up-left";i:139;s:28:"um-icon-arrow-graph-up-right";i:140;s:20:"um-icon-arrow-left-a";i:141;s:20:"um-icon-arrow-left-b";i:142;s:20:"um-icon-arrow-left-c";i:143;s:18:"um-icon-arrow-move";i:144;s:20:"um-icon-arrow-resize";i:145;s:25:"um-icon-arrow-return-left";i:146;s:26:"um-icon-arrow-return-right";i:147;s:21:"um-icon-arrow-right-a";i:148;s:21:"um-icon-arrow-right-b";i:149;s:21:"um-icon-arrow-right-c";i:150;s:20:"um-icon-arrow-shrink";i:151;s:18:"um-icon-arrow-swap";i:152;s:18:"um-icon-arrow-up-a";i:153;s:18:"um-icon-arrow-up-b";i:154;s:18:"um-icon-arrow-up-c";i:155;s:16:"um-icon-asterisk";i:156;s:10:"um-icon-at";i:157;s:17:"um-icon-backspace";i:158;s:25:"um-icon-backspace-outline";i:159;s:11:"um-icon-bag";i:160;s:24:"um-icon-battery-charging";i:161;s:21:"um-icon-battery-empty";i:162;s:20:"um-icon-battery-full";i:163;s:20:"um-icon-battery-half";i:164;s:19:"um-icon-battery-low";i:165;s:14:"um-icon-beaker";i:166;s:12:"um-icon-beer";i:167;s:17:"um-icon-bluetooth";i:168;s:15:"um-icon-bonfire";i:169;s:16:"um-icon-bookmark";i:170;s:14:"um-icon-bowtie";i:171;s:17:"um-icon-briefcase";i:172;s:11:"um-icon-bug";i:173;s:18:"um-icon-calculator";i:174;s:16:"um-icon-calendar";i:175;s:14:"um-icon-camera";i:176;s:12:"um-icon-card";i:177;s:12:"um-icon-cash";i:178;s:15:"um-icon-chatbox";i:179;s:23:"um-icon-chatbox-working";i:180;s:17:"um-icon-chatboxes";i:181;s:18:"um-icon-chatbubble";i:182;s:26:"um-icon-chatbubble-working";i:183;s:19:"um-icon-chatbubbles";i:184;s:17:"um-icon-checkmark";i:185;s:25:"um-icon-checkmark-circled";i:186;s:23:"um-icon-checkmark-round";i:187;s:20:"um-icon-chevron-down";i:188;s:20:"um-icon-chevron-left";i:189;s:21:"um-icon-chevron-right";i:190;s:18:"um-icon-chevron-up";i:191;s:17:"um-icon-clipboard";i:192;s:13:"um-icon-clock";i:193;s:13:"um-icon-close";i:194;s:21:"um-icon-close-circled";i:195;s:19:"um-icon-close-round";i:196;s:25:"um-icon-closed-captioning";i:197;s:13:"um-icon-cloud";i:198;s:12:"um-icon-code";i:199;s:21:"um-icon-code-download";i:200;s:20:"um-icon-code-working";i:201;s:14:"um-icon-coffee";i:202;s:15:"um-icon-compass";i:203;s:15:"um-icon-compose";i:204;s:23:"um-icon-connection-bars";i:205;s:16:"um-icon-contrast";i:206;s:12:"um-icon-crop";i:207;s:12:"um-icon-cube";i:208;s:12:"um-icon-disc";i:209;s:16:"um-icon-document";i:210;s:21:"um-icon-document-text";i:211;s:12:"um-icon-drag";i:212;s:13:"um-icon-earth";i:213;s:13:"um-icon-easel";i:214;s:12:"um-icon-edit";i:215;s:11:"um-icon-egg";i:216;s:13:"um-icon-eject";i:217;s:13:"um-icon-email";i:218;s:20:"um-icon-email-unread";i:219;s:24:"um-icon-erlenmeyer-flask";i:220;s:32:"um-icon-erlenmeyer-flask-bubbles";i:221;s:11:"um-icon-eye";i:222;s:20:"um-icon-eye-disabled";i:223;s:14:"um-icon-female";i:224;s:14:"um-icon-filing";i:225;s:19:"um-icon-film-marker";i:226;s:16:"um-icon-fireball";i:227;s:12:"um-icon-flag";i:228;s:13:"um-icon-flame";i:229;s:13:"um-icon-flash";i:230;s:17:"um-icon-flash-off";i:231;s:14:"um-icon-folder";i:232;s:12:"um-icon-fork";i:233;s:17:"um-icon-fork-repo";i:234;s:15:"um-icon-forward";i:235;s:14:"um-icon-funnel";i:236;s:14:"um-icon-gear-a";i:237;s:14:"um-icon-gear-b";i:238;s:12:"um-icon-grid";i:239;s:14:"um-icon-hammer";i:240;s:13:"um-icon-happy";i:241;s:21:"um-icon-happy-outline";i:242;s:17:"um-icon-headphone";i:243;s:13:"um-icon-heart";i:244;s:20:"um-icon-heart-broken";i:245;s:12:"um-icon-help";i:246;s:17:"um-icon-help-buoy";i:247;s:20:"um-icon-help-circled";i:248;s:12:"um-icon-home";i:249;s:16:"um-icon-icecream";i:250;s:13:"um-icon-image";i:251;s:14:"um-icon-images";i:252;s:19:"um-icon-information";i:253;s:27:"um-icon-information-circled";i:254;s:13:"um-icon-ionic";i:255;s:17:"um-icon-ios-alarm";i:256;s:25:"um-icon-ios-alarm-outline";i:257;s:18:"um-icon-ios-albums";i:258;s:26:"um-icon-ios-albums-outline";i:259;s:28:"um-icon-ios-americanfootball";i:260;s:36:"um-icon-ios-americanfootball-outline";i:261;s:21:"um-icon-ios-analytics";i:262;s:29:"um-icon-ios-analytics-outline";i:263;s:22:"um-icon-ios-arrow-back";i:264;s:22:"um-icon-ios-arrow-down";i:265;s:25:"um-icon-ios-arrow-forward";i:266;s:22:"um-icon-ios-arrow-left";i:267;s:23:"um-icon-ios-arrow-right";i:268;s:27:"um-icon-ios-arrow-thin-down";i:269;s:27:"um-icon-ios-arrow-thin-left";i:270;s:28:"um-icon-ios-arrow-thin-right";i:271;s:25:"um-icon-ios-arrow-thin-up";i:272;s:20:"um-icon-ios-arrow-up";i:273;s:14:"um-icon-ios-at";i:274;s:22:"um-icon-ios-at-outline";i:275;s:19:"um-icon-ios-barcode";i:276;s:27:"um-icon-ios-barcode-outline";i:277;s:20:"um-icon-ios-baseball";i:278;s:28:"um-icon-ios-baseball-outline";i:279;s:22:"um-icon-ios-basketball";i:280;s:30:"um-icon-ios-basketball-outline";i:281;s:16:"um-icon-ios-bell";i:282;s:24:"um-icon-ios-bell-outline";i:283;s:16:"um-icon-ios-body";i:284;s:24:"um-icon-ios-body-outline";i:285;s:16:"um-icon-ios-bolt";i:286;s:24:"um-icon-ios-bolt-outline";i:287;s:16:"um-icon-ios-book";i:288;s:24:"um-icon-ios-book-outline";i:289;s:21:"um-icon-ios-bookmarks";i:290;s:29:"um-icon-ios-bookmarks-outline";i:291;s:15:"um-icon-ios-box";i:292;s:23:"um-icon-ios-box-outline";i:293;s:21:"um-icon-ios-briefcase";i:294;s:29:"um-icon-ios-briefcase-outline";i:295;s:20:"um-icon-ios-browsers";i:296;s:28:"um-icon-ios-browsers-outline";i:297;s:22:"um-icon-ios-calculator";i:298;s:30:"um-icon-ios-calculator-outline";i:299;s:20:"um-icon-ios-calendar";i:300;s:28:"um-icon-ios-calendar-outline";i:301;s:18:"um-icon-ios-camera";i:302;s:26:"um-icon-ios-camera-outline";i:303;s:16:"um-icon-ios-cart";i:304;s:24:"um-icon-ios-cart-outline";i:305;s:21:"um-icon-ios-chatboxes";i:306;s:29:"um-icon-ios-chatboxes-outline";i:307;s:22:"um-icon-ios-chatbubble";i:308;s:30:"um-icon-ios-chatbubble-outline";i:309;s:21:"um-icon-ios-checkmark";i:310;s:27:"um-icon-ios-checkmark-empty";i:311;s:29:"um-icon-ios-checkmark-outline";i:312;s:25:"um-icon-ios-circle-filled";i:313;s:26:"um-icon-ios-circle-outline";i:314;s:17:"um-icon-ios-clock";i:315;s:25:"um-icon-ios-clock-outline";i:316;s:17:"um-icon-ios-close";i:317;s:23:"um-icon-ios-close-empty";i:318;s:25:"um-icon-ios-close-outline";i:319;s:17:"um-icon-ios-cloud";i:320;s:26:"um-icon-ios-cloud-download";i:321;s:34:"um-icon-ios-cloud-download-outline";i:322;s:25:"um-icon-ios-cloud-outline";i:323;s:24:"um-icon-ios-cloud-upload";i:324;s:32:"um-icon-ios-cloud-upload-outline";i:325;s:18:"um-icon-ios-cloudy";i:326;s:24:"um-icon-ios-cloudy-night";i:327;s:32:"um-icon-ios-cloudy-night-outline";i:328;s:26:"um-icon-ios-cloudy-outline";i:329;s:15:"um-icon-ios-cog";i:330;s:23:"um-icon-ios-cog-outline";i:331;s:24:"um-icon-ios-color-filter";i:332;s:32:"um-icon-ios-color-filter-outline";i:333;s:22:"um-icon-ios-color-wand";i:334;s:30:"um-icon-ios-color-wand-outline";i:335;s:19:"um-icon-ios-compose";i:336;s:27:"um-icon-ios-compose-outline";i:337;s:19:"um-icon-ios-contact";i:338;s:27:"um-icon-ios-contact-outline";i:339;s:16:"um-icon-ios-copy";i:340;s:24:"um-icon-ios-copy-outline";i:341;s:16:"um-icon-ios-crop";i:342;s:23:"um-icon-ios-crop-strong";i:343;s:20:"um-icon-ios-download";i:344;s:28:"um-icon-ios-download-outline";i:345;s:16:"um-icon-ios-drag";i:346;s:17:"um-icon-ios-email";i:347;s:25:"um-icon-ios-email-outline";i:348;s:15:"um-icon-ios-eye";i:349;s:23:"um-icon-ios-eye-outline";i:350;s:23:"um-icon-ios-fastforward";i:351;s:31:"um-icon-ios-fastforward-outline";i:352;s:18:"um-icon-ios-filing";i:353;s:26:"um-icon-ios-filing-outline";i:354;s:16:"um-icon-ios-film";i:355;s:24:"um-icon-ios-film-outline";i:356;s:16:"um-icon-ios-flag";i:357;s:24:"um-icon-ios-flag-outline";i:358;s:17:"um-icon-ios-flame";i:359;s:25:"um-icon-ios-flame-outline";i:360;s:17:"um-icon-ios-flask";i:361;s:25:"um-icon-ios-flask-outline";i:362;s:18:"um-icon-ios-flower";i:363;s:26:"um-icon-ios-flower-outline";i:364;s:18:"um-icon-ios-folder";i:365;s:26:"um-icon-ios-folder-outline";i:366;s:20:"um-icon-ios-football";i:367;s:28:"um-icon-ios-football-outline";i:368;s:29:"um-icon-ios-game-controller-a";i:369;s:37:"um-icon-ios-game-controller-a-outline";i:370;s:29:"um-icon-ios-game-controller-b";i:371;s:37:"um-icon-ios-game-controller-b-outline";i:372;s:16:"um-icon-ios-gear";i:373;s:24:"um-icon-ios-gear-outline";i:374;s:19:"um-icon-ios-glasses";i:375;s:27:"um-icon-ios-glasses-outline";i:376;s:21:"um-icon-ios-grid-view";i:377;s:29:"um-icon-ios-grid-view-outline";i:378;s:17:"um-icon-ios-heart";i:379;s:25:"um-icon-ios-heart-outline";i:380;s:16:"um-icon-ios-help";i:381;s:22:"um-icon-ios-help-empty";i:382;s:24:"um-icon-ios-help-outline";i:383;s:16:"um-icon-ios-home";i:384;s:24:"um-icon-ios-home-outline";i:385;s:20:"um-icon-ios-infinite";i:386;s:28:"um-icon-ios-infinite-outline";i:387;s:23:"um-icon-ios-information";i:388;s:29:"um-icon-ios-information-empty";i:389;s:31:"um-icon-ios-information-outline";i:390;s:25:"um-icon-ios-ionic-outline";i:391;s:18:"um-icon-ios-keypad";i:392;s:26:"um-icon-ios-keypad-outline";i:393;s:21:"um-icon-ios-lightbulb";i:394;s:29:"um-icon-ios-lightbulb-outline";i:395;s:16:"um-icon-ios-list";i:396;s:24:"um-icon-ios-list-outline";i:397;s:20:"um-icon-ios-location";i:398;s:28:"um-icon-ios-location-outline";i:399;s:18:"um-icon-ios-locked";i:400;s:26:"um-icon-ios-locked-outline";i:401;s:16:"um-icon-ios-loop";i:402;s:23:"um-icon-ios-loop-strong";i:403;s:19:"um-icon-ios-medical";i:404;s:27:"um-icon-ios-medical-outline";i:405;s:18:"um-icon-ios-medkit";i:406;s:26:"um-icon-ios-medkit-outline";i:407;s:15:"um-icon-ios-mic";i:408;s:19:"um-icon-ios-mic-off";i:409;s:23:"um-icon-ios-mic-outline";i:410;s:17:"um-icon-ios-minus";i:411;s:23:"um-icon-ios-minus-empty";i:412;s:25:"um-icon-ios-minus-outline";i:413;s:19:"um-icon-ios-monitor";i:414;s:27:"um-icon-ios-monitor-outline";i:415;s:16:"um-icon-ios-moon";i:416;s:24:"um-icon-ios-moon-outline";i:417;s:16:"um-icon-ios-more";i:418;s:24:"um-icon-ios-more-outline";i:419;s:24:"um-icon-ios-musical-note";i:420;s:25:"um-icon-ios-musical-notes";i:421;s:20:"um-icon-ios-navigate";i:422;s:28:"um-icon-ios-navigate-outline";i:423;s:21:"um-icon-ios-nutrition";i:424;s:29:"um-icon-ios-nutrition-outline";i:425;s:17:"um-icon-ios-paper";i:426;s:25:"um-icon-ios-paper-outline";i:427;s:22:"um-icon-ios-paperplane";i:428;s:30:"um-icon-ios-paperplane-outline";i:429;s:23:"um-icon-ios-partlysunny";i:430;s:31:"um-icon-ios-partlysunny-outline";i:431;s:17:"um-icon-ios-pause";i:432;s:25:"um-icon-ios-pause-outline";i:433;s:15:"um-icon-ios-paw";i:434;s:23:"um-icon-ios-paw-outline";i:435;s:18:"um-icon-ios-people";i:436;s:26:"um-icon-ios-people-outline";i:437;s:18:"um-icon-ios-person";i:438;s:26:"um-icon-ios-person-outline";i:439;s:21:"um-icon-ios-personadd";i:440;s:29:"um-icon-ios-personadd-outline";i:441;s:18:"um-icon-ios-photos";i:442;s:26:"um-icon-ios-photos-outline";i:443;s:15:"um-icon-ios-pie";i:444;s:23:"um-icon-ios-pie-outline";i:445;s:16:"um-icon-ios-pint";i:446;s:24:"um-icon-ios-pint-outline";i:447;s:16:"um-icon-ios-play";i:448;s:24:"um-icon-ios-play-outline";i:449;s:16:"um-icon-ios-plus";i:450;s:22:"um-icon-ios-plus-empty";i:451;s:24:"um-icon-ios-plus-outline";i:452;s:20:"um-icon-ios-pricetag";i:453;s:28:"um-icon-ios-pricetag-outline";i:454;s:21:"um-icon-ios-pricetags";i:455;s:29:"um-icon-ios-pricetags-outline";i:456;s:19:"um-icon-ios-printer";i:457;s:27:"um-icon-ios-printer-outline";i:458;s:17:"um-icon-ios-pulse";i:459;s:24:"um-icon-ios-pulse-strong";i:460;s:17:"um-icon-ios-rainy";i:461;s:25:"um-icon-ios-rainy-outline";i:462;s:21:"um-icon-ios-recording";i:463;s:29:"um-icon-ios-recording-outline";i:464;s:16:"um-icon-ios-redo";i:465;s:24:"um-icon-ios-redo-outline";i:466;s:19:"um-icon-ios-refresh";i:467;s:25:"um-icon-ios-refresh-empty";i:468;s:27:"um-icon-ios-refresh-outline";i:469;s:18:"um-icon-ios-reload";i:470;s:26:"um-icon-ios-reverse-camera";i:471;s:34:"um-icon-ios-reverse-camera-outline";i:472;s:18:"um-icon-ios-rewind";i:473;s:26:"um-icon-ios-rewind-outline";i:474;s:16:"um-icon-ios-rose";i:475;s:24:"um-icon-ios-rose-outline";i:476;s:18:"um-icon-ios-search";i:477;s:25:"um-icon-ios-search-strong";i:478;s:20:"um-icon-ios-settings";i:479;s:27:"um-icon-ios-settings-strong";i:480;s:19:"um-icon-ios-shuffle";i:481;s:26:"um-icon-ios-shuffle-strong";i:482;s:24:"um-icon-ios-skipbackward";i:483;s:32:"um-icon-ios-skipbackward-outline";i:484;s:23:"um-icon-ios-skipforward";i:485;s:31:"um-icon-ios-skipforward-outline";i:486;s:17:"um-icon-ios-snowy";i:487;s:23:"um-icon-ios-speedometer";i:488;s:31:"um-icon-ios-speedometer-outline";i:489;s:16:"um-icon-ios-star";i:490;s:21:"um-icon-ios-star-half";i:491;s:24:"um-icon-ios-star-outline";i:492;s:21:"um-icon-ios-stopwatch";i:493;s:29:"um-icon-ios-stopwatch-outline";i:494;s:17:"um-icon-ios-sunny";i:495;s:25:"um-icon-ios-sunny-outline";i:496;s:21:"um-icon-ios-telephone";i:497;s:29:"um-icon-ios-telephone-outline";i:498;s:22:"um-icon-ios-tennisball";i:499;s:30:"um-icon-ios-tennisball-outline";i:500;s:24:"um-icon-ios-thunderstorm";i:501;s:32:"um-icon-ios-thunderstorm-outline";i:502;s:16:"um-icon-ios-time";i:503;s:24:"um-icon-ios-time-outline";i:504;s:17:"um-icon-ios-timer";i:505;s:25:"um-icon-ios-timer-outline";i:506;s:18:"um-icon-ios-toggle";i:507;s:26:"um-icon-ios-toggle-outline";i:508;s:17:"um-icon-ios-trash";i:509;s:25:"um-icon-ios-trash-outline";i:510;s:16:"um-icon-ios-undo";i:511;s:24:"um-icon-ios-undo-outline";i:512;s:20:"um-icon-ios-unlocked";i:513;s:28:"um-icon-ios-unlocked-outline";i:514;s:18:"um-icon-ios-upload";i:515;s:26:"um-icon-ios-upload-outline";i:516;s:20:"um-icon-ios-videocam";i:517;s:28:"um-icon-ios-videocam-outline";i:518;s:23:"um-icon-ios-volume-high";i:519;s:22:"um-icon-ios-volume-low";i:520;s:21:"um-icon-ios-wineglass";i:521;s:29:"um-icon-ios-wineglass-outline";i:522;s:17:"um-icon-ios-world";i:523;s:25:"um-icon-ios-world-outline";i:524;s:12:"um-icon-ipad";i:525;s:14:"um-icon-iphone";i:526;s:12:"um-icon-ipod";i:527;s:11:"um-icon-jet";i:528;s:11:"um-icon-key";i:529;s:13:"um-icon-knife";i:530;s:14:"um-icon-laptop";i:531;s:12:"um-icon-leaf";i:532;s:14:"um-icon-levels";i:533;s:17:"um-icon-lightbulb";i:534;s:12:"um-icon-link";i:535;s:14:"um-icon-load-a";i:536;s:14:"um-icon-load-b";i:537;s:14:"um-icon-load-c";i:538;s:14:"um-icon-load-d";i:539;s:16:"um-icon-location";i:540;s:24:"um-icon-lock-combination";i:541;s:14:"um-icon-locked";i:542;s:14:"um-icon-log-in";i:543;s:15:"um-icon-log-out";i:544;s:12:"um-icon-loop";i:545;s:14:"um-icon-magnet";i:546;s:12:"um-icon-male";i:547;s:11:"um-icon-man";i:548;s:11:"um-icon-map";i:549;s:14:"um-icon-medkit";i:550;s:13:"um-icon-merge";i:551;s:13:"um-icon-mic-a";i:552;s:13:"um-icon-mic-b";i:553;s:13:"um-icon-mic-c";i:554;s:13:"um-icon-minus";i:555;s:21:"um-icon-minus-circled";i:556;s:19:"um-icon-minus-round";i:557;s:15:"um-icon-model-s";i:558;s:15:"um-icon-monitor";i:559;s:12:"um-icon-more";i:560;s:13:"um-icon-mouse";i:561;s:18:"um-icon-music-note";i:562;s:15:"um-icon-navicon";i:563;s:21:"um-icon-navicon-round";i:564;s:16:"um-icon-navigate";i:565;s:15:"um-icon-network";i:566;s:18:"um-icon-no-smoking";i:567;s:15:"um-icon-nuclear";i:568;s:14:"um-icon-outlet";i:569;s:18:"um-icon-paintbrush";i:570;s:19:"um-icon-paintbucket";i:571;s:22:"um-icon-paper-airplane";i:572;s:17:"um-icon-paperclip";i:573;s:13:"um-icon-pause";i:574;s:14:"um-icon-person";i:575;s:18:"um-icon-person-add";i:576;s:22:"um-icon-person-stalker";i:577;s:17:"um-icon-pie-graph";i:578;s:11:"um-icon-pin";i:579;s:16:"um-icon-pinpoint";i:580;s:13:"um-icon-pizza";i:581;s:13:"um-icon-plane";i:582;s:14:"um-icon-planet";i:583;s:12:"um-icon-play";i:584;s:19:"um-icon-playstation";i:585;s:12:"um-icon-plus";i:586;s:20:"um-icon-plus-circled";i:587;s:18:"um-icon-plus-round";i:588;s:14:"um-icon-podium";i:589;s:13:"um-icon-pound";i:590;s:13:"um-icon-power";i:591;s:16:"um-icon-pricetag";i:592;s:17:"um-icon-pricetags";i:593;s:15:"um-icon-printer";i:594;s:20:"um-icon-pull-request";i:595;s:18:"um-icon-qr-scanner";i:596;s:13:"um-icon-quote";i:597;s:19:"um-icon-radio-waves";i:598;s:14:"um-icon-record";i:599;s:15:"um-icon-refresh";i:600;s:13:"um-icon-reply";i:601;s:17:"um-icon-reply-all";i:602;s:16:"um-icon-ribbon-a";i:603;s:16:"um-icon-ribbon-b";i:604;s:11:"um-icon-sad";i:605;s:19:"um-icon-sad-outline";i:606;s:16:"um-icon-scissors";i:607;s:14:"um-icon-search";i:608;s:16:"um-icon-settings";i:609;s:13:"um-icon-share";i:610;s:15:"um-icon-shuffle";i:611;s:21:"um-icon-skip-backward";i:612;s:20:"um-icon-skip-forward";i:613;s:22:"um-icon-social-android";i:614;s:30:"um-icon-social-android-outline";i:615;s:22:"um-icon-social-angular";i:616;s:30:"um-icon-social-angular-outline";i:617;s:20:"um-icon-social-apple";i:618;s:28:"um-icon-social-apple-outline";i:619;s:22:"um-icon-social-bitcoin";i:620;s:30:"um-icon-social-bitcoin-outline";i:621;s:21:"um-icon-social-buffer";i:622;s:29:"um-icon-social-buffer-outline";i:623;s:21:"um-icon-social-chrome";i:624;s:29:"um-icon-social-chrome-outline";i:625;s:22:"um-icon-social-codepen";i:626;s:30:"um-icon-social-codepen-outline";i:627;s:19:"um-icon-social-css3";i:628;s:27:"um-icon-social-css3-outline";i:629;s:27:"um-icon-social-designernews";i:630;s:35:"um-icon-social-designernews-outline";i:631;s:23:"um-icon-social-dribbble";i:632;s:31:"um-icon-social-dribbble-outline";i:633;s:22:"um-icon-social-dropbox";i:634;s:30:"um-icon-social-dropbox-outline";i:635;s:19:"um-icon-social-euro";i:636;s:27:"um-icon-social-euro-outline";i:637;s:23:"um-icon-social-facebook";i:638;s:31:"um-icon-social-facebook-outline";i:639;s:25:"um-icon-social-foursquare";i:640;s:33:"um-icon-social-foursquare-outline";i:641;s:28:"um-icon-social-freebsd-devil";i:642;s:21:"um-icon-social-github";i:643;s:29:"um-icon-social-github-outline";i:644;s:21:"um-icon-social-google";i:645;s:29:"um-icon-social-google-outline";i:646;s:25:"um-icon-social-googleplus";i:647;s:33:"um-icon-social-googleplus-outline";i:648;s:25:"um-icon-social-hackernews";i:649;s:33:"um-icon-social-hackernews-outline";i:650;s:20:"um-icon-social-html5";i:651;s:28:"um-icon-social-html5-outline";i:652;s:24:"um-icon-social-instagram";i:653;s:32:"um-icon-social-instagram-outline";i:654;s:25:"um-icon-social-javascript";i:655;s:33:"um-icon-social-javascript-outline";i:656;s:23:"um-icon-social-linkedin";i:657;s:31:"um-icon-social-linkedin-outline";i:658;s:23:"um-icon-social-markdown";i:659;s:21:"um-icon-social-nodejs";i:660;s:22:"um-icon-social-octocat";i:661;s:24:"um-icon-social-pinterest";i:662;s:32:"um-icon-social-pinterest-outline";i:663;s:21:"um-icon-social-python";i:664;s:21:"um-icon-social-reddit";i:665;s:29:"um-icon-social-reddit-outline";i:666;s:18:"um-icon-social-rss";i:667;s:26:"um-icon-social-rss-outline";i:668;s:19:"um-icon-social-sass";i:669;s:20:"um-icon-social-skype";i:670;s:28:"um-icon-social-skype-outline";i:671;s:23:"um-icon-social-snapchat";i:672;s:31:"um-icon-social-snapchat-outline";i:673;s:21:"um-icon-social-tumblr";i:674;s:29:"um-icon-social-tumblr-outline";i:675;s:18:"um-icon-social-tux";i:676;s:21:"um-icon-social-twitch";i:677;s:29:"um-icon-social-twitch-outline";i:678;s:22:"um-icon-social-twitter";i:679;s:30:"um-icon-social-twitter-outline";i:680;s:18:"um-icon-social-usd";i:681;s:26:"um-icon-social-usd-outline";i:682;s:20:"um-icon-social-vimeo";i:683;s:28:"um-icon-social-vimeo-outline";i:684;s:23:"um-icon-social-whatsapp";i:685;s:31:"um-icon-social-whatsapp-outline";i:686;s:22:"um-icon-social-windows";i:687;s:30:"um-icon-social-windows-outline";i:688;s:24:"um-icon-social-wordpress";i:689;s:32:"um-icon-social-wordpress-outline";i:690;s:20:"um-icon-social-yahoo";i:691;s:28:"um-icon-social-yahoo-outline";i:692;s:18:"um-icon-social-yen";i:693;s:26:"um-icon-social-yen-outline";i:694;s:22:"um-icon-social-youtube";i:695;s:30:"um-icon-social-youtube-outline";i:696;s:16:"um-icon-soup-can";i:697;s:24:"um-icon-soup-can-outline";i:698;s:20:"um-icon-speakerphone";i:699;s:19:"um-icon-speedometer";i:700;s:13:"um-icon-spoon";i:701;s:12:"um-icon-star";i:702;s:18:"um-icon-stats-bars";i:703;s:13:"um-icon-steam";i:704;s:12:"um-icon-stop";i:705;s:19:"um-icon-thermometer";i:706;s:18:"um-icon-thumbsdown";i:707;s:16:"um-icon-thumbsup";i:708;s:14:"um-icon-toggle";i:709;s:21:"um-icon-toggle-filled";i:710;s:19:"um-icon-transgender";i:711;s:15:"um-icon-trash-a";i:712;s:15:"um-icon-trash-b";i:713;s:14:"um-icon-trophy";i:714;s:14:"um-icon-tshirt";i:715;s:22:"um-icon-tshirt-outline";i:716;s:16:"um-icon-umbrella";i:717;s:18:"um-icon-university";i:718;s:16:"um-icon-unlocked";i:719;s:14:"um-icon-upload";i:720;s:11:"um-icon-usb";i:721;s:19:"um-icon-videocamera";i:722;s:19:"um-icon-volume-high";i:723;s:18:"um-icon-volume-low";i:724;s:21:"um-icon-volume-medium";i:725;s:19:"um-icon-volume-mute";i:726;s:12:"um-icon-wand";i:727;s:17:"um-icon-waterdrop";i:728;s:12:"um-icon-wifi";i:729;s:17:"um-icon-wineglass";i:730;s:13:"um-icon-woman";i:731;s:14:"um-icon-wrench";i:732;s:12:"um-icon-xbox";i:733;s:15:"um-faicon-glass";i:734;s:15:"um-faicon-music";i:735;s:16:"um-faicon-search";i:736;s:20:"um-faicon-envelope-o";i:737;s:15:"um-faicon-heart";i:738;s:14:"um-faicon-star";i:739;s:16:"um-faicon-star-o";i:740;s:14:"um-faicon-user";i:741;s:14:"um-faicon-film";i:742;s:18:"um-faicon-th-large";i:743;s:12:"um-faicon-th";i:744;s:17:"um-faicon-th-list";i:745;s:15:"um-faicon-check";i:746;s:15:"um-faicon-times";i:747;s:21:"um-faicon-search-plus";i:748;s:22:"um-faicon-search-minus";i:749;s:19:"um-faicon-power-off";i:750;s:16:"um-faicon-signal";i:751;s:13:"um-faicon-cog";i:752;s:17:"um-faicon-trash-o";i:753;s:14:"um-faicon-home";i:754;s:16:"um-faicon-file-o";i:755;s:17:"um-faicon-clock-o";i:756;s:14:"um-faicon-road";i:757;s:18:"um-faicon-download";i:758;s:29:"um-faicon-arrow-circle-o-down";i:759;s:27:"um-faicon-arrow-circle-o-up";i:760;s:15:"um-faicon-inbox";i:761;s:23:"um-faicon-play-circle-o";i:762;s:16:"um-faicon-repeat";i:763;s:17:"um-faicon-refresh";i:764;s:18:"um-faicon-list-alt";i:765;s:14:"um-faicon-lock";i:766;s:14:"um-faicon-flag";i:767;s:20:"um-faicon-headphones";i:768;s:20:"um-faicon-volume-off";i:769;s:21:"um-faicon-volume-down";i:770;s:19:"um-faicon-volume-up";i:771;s:16:"um-faicon-qrcode";i:772;s:17:"um-faicon-barcode";i:773;s:13:"um-faicon-tag";i:774;s:14:"um-faicon-tags";i:775;s:14:"um-faicon-book";i:776;s:18:"um-faicon-bookmark";i:777;s:15:"um-faicon-print";i:778;s:16:"um-faicon-camera";i:779;s:14:"um-faicon-font";i:780;s:14:"um-faicon-bold";i:781;s:16:"um-faicon-italic";i:782;s:21:"um-faicon-text-height";i:783;s:20:"um-faicon-text-width";i:784;s:20:"um-faicon-align-left";i:785;s:22:"um-faicon-align-center";i:786;s:21:"um-faicon-align-right";i:787;s:23:"um-faicon-align-justify";i:788;s:14:"um-faicon-list";i:789;s:17:"um-faicon-outdent";i:790;s:16:"um-faicon-indent";i:791;s:22:"um-faicon-video-camera";i:792;s:19:"um-faicon-picture-o";i:793;s:16:"um-faicon-pencil";i:794;s:20:"um-faicon-map-marker";i:795;s:16:"um-faicon-adjust";i:796;s:14:"um-faicon-tint";i:797;s:25:"um-faicon-pencil-square-o";i:798;s:24:"um-faicon-share-square-o";i:799;s:24:"um-faicon-check-square-o";i:800;s:16:"um-faicon-arrows";i:801;s:23:"um-faicon-step-backward";i:802;s:23:"um-faicon-fast-backward";i:803;s:18:"um-faicon-backward";i:804;s:14:"um-faicon-play";i:805;s:15:"um-faicon-pause";i:806;s:14:"um-faicon-stop";i:807;s:17:"um-faicon-forward";i:808;s:22:"um-faicon-fast-forward";i:809;s:22:"um-faicon-step-forward";i:810;s:15:"um-faicon-eject";i:811;s:22:"um-faicon-chevron-left";i:812;s:23:"um-faicon-chevron-right";i:813;s:21:"um-faicon-plus-circle";i:814;s:22:"um-faicon-minus-circle";i:815;s:22:"um-faicon-times-circle";i:816;s:22:"um-faicon-check-circle";i:817;s:25:"um-faicon-question-circle";i:818;s:21:"um-faicon-info-circle";i:819;s:20:"um-faicon-crosshairs";i:820;s:24:"um-faicon-times-circle-o";i:821;s:24:"um-faicon-check-circle-o";i:822;s:13:"um-faicon-ban";i:823;s:20:"um-faicon-arrow-left";i:824;s:21:"um-faicon-arrow-right";i:825;s:18:"um-faicon-arrow-up";i:826;s:20:"um-faicon-arrow-down";i:827;s:15:"um-faicon-share";i:828;s:16:"um-faicon-expand";i:829;s:18:"um-faicon-compress";i:830;s:14:"um-faicon-plus";i:831;s:15:"um-faicon-minus";i:832;s:18:"um-faicon-asterisk";i:833;s:28:"um-faicon-exclamation-circle";i:834;s:14:"um-faicon-gift";i:835;s:14:"um-faicon-leaf";i:836;s:14:"um-faicon-fire";i:837;s:13:"um-faicon-eye";i:838;s:19:"um-faicon-eye-slash";i:839;s:30:"um-faicon-exclamation-triangle";i:840;s:15:"um-faicon-plane";i:841;s:18:"um-faicon-calendar";i:842;s:16:"um-faicon-random";i:843;s:17:"um-faicon-comment";i:844;s:16:"um-faicon-magnet";i:845;s:20:"um-faicon-chevron-up";i:846;s:22:"um-faicon-chevron-down";i:847;s:17:"um-faicon-retweet";i:848;s:23:"um-faicon-shopping-cart";i:849;s:16:"um-faicon-folder";i:850;s:21:"um-faicon-folder-open";i:851;s:18:"um-faicon-arrows-v";i:852;s:18:"um-faicon-arrows-h";i:853;s:19:"um-faicon-bar-chart";i:854;s:24:"um-faicon-twitter-square";i:855;s:25:"um-faicon-facebook-square";i:856;s:22:"um-faicon-camera-retro";i:857;s:13:"um-faicon-key";i:858;s:14:"um-faicon-cogs";i:859;s:18:"um-faicon-comments";i:860;s:21:"um-faicon-thumbs-o-up";i:861;s:23:"um-faicon-thumbs-o-down";i:862;s:19:"um-faicon-star-half";i:863;s:17:"um-faicon-heart-o";i:864;s:18:"um-faicon-sign-out";i:865;s:25:"um-faicon-linkedin-square";i:866;s:20:"um-faicon-thumb-tack";i:867;s:23:"um-faicon-external-link";i:868;s:17:"um-faicon-sign-in";i:869;s:16:"um-faicon-trophy";i:870;s:23:"um-faicon-github-square";i:871;s:16:"um-faicon-upload";i:872;s:17:"um-faicon-lemon-o";i:873;s:15:"um-faicon-phone";i:874;s:18:"um-faicon-square-o";i:875;s:20:"um-faicon-bookmark-o";i:876;s:22:"um-faicon-phone-square";i:877;s:17:"um-faicon-twitter";i:878;s:18:"um-faicon-facebook";i:879;s:16:"um-faicon-github";i:880;s:16:"um-faicon-unlock";i:881;s:21:"um-faicon-credit-card";i:882;s:13:"um-faicon-rss";i:883;s:15:"um-faicon-hdd-o";i:884;s:18:"um-faicon-bullhorn";i:885;s:14:"um-faicon-bell";i:886;s:21:"um-faicon-certificate";i:887;s:22:"um-faicon-hand-o-right";i:888;s:21:"um-faicon-hand-o-left";i:889;s:19:"um-faicon-hand-o-up";i:890;s:21:"um-faicon-hand-o-down";i:891;s:27:"um-faicon-arrow-circle-left";i:892;s:28:"um-faicon-arrow-circle-right";i:893;s:25:"um-faicon-arrow-circle-up";i:894;s:27:"um-faicon-arrow-circle-down";i:895;s:15:"um-faicon-globe";i:896;s:16:"um-faicon-wrench";i:897;s:15:"um-faicon-tasks";i:898;s:16:"um-faicon-filter";i:899;s:19:"um-faicon-briefcase";i:900;s:20:"um-faicon-arrows-alt";i:901;s:15:"um-faicon-users";i:902;s:14:"um-faicon-link";i:903;s:15:"um-faicon-cloud";i:904;s:15:"um-faicon-flask";i:905;s:18:"um-faicon-scissors";i:906;s:17:"um-faicon-files-o";i:907;s:19:"um-faicon-paperclip";i:908;s:18:"um-faicon-floppy-o";i:909;s:16:"um-faicon-square";i:910;s:14:"um-faicon-bars";i:911;s:17:"um-faicon-list-ul";i:912;s:17:"um-faicon-list-ol";i:913;s:23:"um-faicon-strikethrough";i:914;s:19:"um-faicon-underline";i:915;s:15:"um-faicon-table";i:916;s:15:"um-faicon-magic";i:917;s:15:"um-faicon-truck";i:918;s:19:"um-faicon-pinterest";i:919;s:26:"um-faicon-pinterest-square";i:920;s:28:"um-faicon-google-plus-square";i:921;s:21:"um-faicon-google-plus";i:922;s:15:"um-faicon-money";i:923;s:20:"um-faicon-caret-down";i:924;s:18:"um-faicon-caret-up";i:925;s:20:"um-faicon-caret-left";i:926;s:21:"um-faicon-caret-right";i:927;s:17:"um-faicon-columns";i:928;s:14:"um-faicon-sort";i:929;s:19:"um-faicon-sort-desc";i:930;s:18:"um-faicon-sort-asc";i:931;s:18:"um-faicon-envelope";i:932;s:18:"um-faicon-linkedin";i:933;s:14:"um-faicon-undo";i:934;s:15:"um-faicon-gavel";i:935;s:20:"um-faicon-tachometer";i:936;s:19:"um-faicon-comment-o";i:937;s:20:"um-faicon-comments-o";i:938;s:14:"um-faicon-bolt";i:939;s:17:"um-faicon-sitemap";i:940;s:18:"um-faicon-umbrella";i:941;s:19:"um-faicon-clipboard";i:942;s:21:"um-faicon-lightbulb-o";i:943;s:18:"um-faicon-exchange";i:944;s:24:"um-faicon-cloud-download";i:945;s:22:"um-faicon-cloud-upload";i:946;s:17:"um-faicon-user-md";i:947;s:21:"um-faicon-stethoscope";i:948;s:18:"um-faicon-suitcase";i:949;s:16:"um-faicon-bell-o";i:950;s:16:"um-faicon-coffee";i:951;s:17:"um-faicon-cutlery";i:952;s:21:"um-faicon-file-text-o";i:953;s:20:"um-faicon-building-o";i:954;s:20:"um-faicon-hospital-o";i:955;s:19:"um-faicon-ambulance";i:956;s:16:"um-faicon-medkit";i:957;s:21:"um-faicon-fighter-jet";i:958;s:14:"um-faicon-beer";i:959;s:18:"um-faicon-h-square";i:960;s:21:"um-faicon-plus-square";i:961;s:27:"um-faicon-angle-double-left";i:962;s:28:"um-faicon-angle-double-right";i:963;s:25:"um-faicon-angle-double-up";i:964;s:27:"um-faicon-angle-double-down";i:965;s:20:"um-faicon-angle-left";i:966;s:21:"um-faicon-angle-right";i:967;s:18:"um-faicon-angle-up";i:968;s:20:"um-faicon-angle-down";i:969;s:17:"um-faicon-desktop";i:970;s:16:"um-faicon-laptop";i:971;s:16:"um-faicon-tablet";i:972;s:16:"um-faicon-mobile";i:973;s:18:"um-faicon-circle-o";i:974;s:20:"um-faicon-quote-left";i:975;s:21:"um-faicon-quote-right";i:976;s:17:"um-faicon-spinner";i:977;s:14:"um-faicon-spin";i:978;s:16:"um-faicon-circle";i:979;s:15:"um-faicon-reply";i:980;s:20:"um-faicon-github-alt";i:981;s:18:"um-faicon-folder-o";i:982;s:23:"um-faicon-folder-open-o";i:983;s:17:"um-faicon-smile-o";i:984;s:17:"um-faicon-frown-o";i:985;s:15:"um-faicon-meh-o";i:986;s:17:"um-faicon-gamepad";i:987;s:20:"um-faicon-keyboard-o";i:988;s:16:"um-faicon-flag-o";i:989;s:24:"um-faicon-flag-checkered";i:990;s:18:"um-faicon-terminal";i:991;s:14:"um-faicon-code";i:992;s:19:"um-faicon-reply-all";i:993;s:21:"um-faicon-star-half-o";i:994;s:24:"um-faicon-location-arrow";i:995;s:14:"um-faicon-crop";i:996;s:19:"um-faicon-code-fork";i:997;s:22:"um-faicon-chain-broken";i:998;s:18:"um-faicon-question";i:999;s:14:"um-faicon-info";i:1000;s:21:"um-faicon-exclamation";i:1001;s:21:"um-faicon-superscript";i:1002;s:19:"um-faicon-subscript";i:1003;s:16:"um-faicon-eraser";i:1004;s:22:"um-faicon-puzzle-piece";i:1005;s:20:"um-faicon-microphone";i:1006;s:26:"um-faicon-microphone-slash";i:1007;s:16:"um-faicon-shield";i:1008;s:20:"um-faicon-calendar-o";i:1009;s:27:"um-faicon-fire-extinguisher";i:1010;s:16:"um-faicon-rocket";i:1011;s:16:"um-faicon-maxcdn";i:1012;s:29:"um-faicon-chevron-circle-left";i:1013;s:30:"um-faicon-chevron-circle-right";i:1014;s:27:"um-faicon-chevron-circle-up";i:1015;s:29:"um-faicon-chevron-circle-down";i:1016;s:15:"um-faicon-html5";i:1017;s:14:"um-faicon-css3";i:1018;s:16:"um-faicon-anchor";i:1019;s:20:"um-faicon-unlock-alt";i:1020;s:18:"um-faicon-bullseye";i:1021;s:20:"um-faicon-ellipsis-h";i:1022;s:20:"um-faicon-ellipsis-v";i:1023;s:20:"um-faicon-rss-square";i:1024;s:21:"um-faicon-play-circle";i:1025;s:16:"um-faicon-ticket";i:1026;s:22:"um-faicon-minus-square";i:1027;s:24:"um-faicon-minus-square-o";i:1028;s:18:"um-faicon-level-up";i:1029;s:20:"um-faicon-level-down";i:1030;s:22:"um-faicon-check-square";i:1031;s:23:"um-faicon-pencil-square";i:1032;s:30:"um-faicon-external-link-square";i:1033;s:22:"um-faicon-share-square";i:1034;s:17:"um-faicon-compass";i:1035;s:29:"um-faicon-caret-square-o-down";i:1036;s:27:"um-faicon-caret-square-o-up";i:1037;s:30:"um-faicon-caret-square-o-right";i:1038;s:13:"um-faicon-eur";i:1039;s:13:"um-faicon-gbp";i:1040;s:13:"um-faicon-usd";i:1041;s:13:"um-faicon-inr";i:1042;s:13:"um-faicon-jpy";i:1043;s:13:"um-faicon-rub";i:1044;s:13:"um-faicon-krw";i:1045;s:13:"um-faicon-btc";i:1046;s:14:"um-faicon-file";i:1047;s:19:"um-faicon-file-text";i:1048;s:24:"um-faicon-sort-alpha-asc";i:1049;s:25:"um-faicon-sort-alpha-desc";i:1050;s:25:"um-faicon-sort-amount-asc";i:1051;s:26:"um-faicon-sort-amount-desc";i:1052;s:26:"um-faicon-sort-numeric-asc";i:1053;s:27:"um-faicon-sort-numeric-desc";i:1054;s:19:"um-faicon-thumbs-up";i:1055;s:21:"um-faicon-thumbs-down";i:1056;s:24:"um-faicon-youtube-square";i:1057;s:17:"um-faicon-youtube";i:1058;s:14:"um-faicon-xing";i:1059;s:21:"um-faicon-xing-square";i:1060;s:22:"um-faicon-youtube-play";i:1061;s:17:"um-faicon-dropbox";i:1062;s:24:"um-faicon-stack-overflow";i:1063;s:19:"um-faicon-instagram";i:1064;s:16:"um-faicon-flickr";i:1065;s:13:"um-faicon-adn";i:1066;s:19:"um-faicon-bitbucket";i:1067;s:26:"um-faicon-bitbucket-square";i:1068;s:16:"um-faicon-tumblr";i:1069;s:23:"um-faicon-tumblr-square";i:1070;s:25:"um-faicon-long-arrow-down";i:1071;s:23:"um-faicon-long-arrow-up";i:1072;s:25:"um-faicon-long-arrow-left";i:1073;s:26:"um-faicon-long-arrow-right";i:1074;s:15:"um-faicon-apple";i:1075;s:17:"um-faicon-windows";i:1076;s:17:"um-faicon-android";i:1077;s:15:"um-faicon-linux";i:1078;s:18:"um-faicon-dribbble";i:1079;s:15:"um-faicon-skype";i:1080;s:20:"um-faicon-foursquare";i:1081;s:16:"um-faicon-trello";i:1082;s:16:"um-faicon-female";i:1083;s:14:"um-faicon-male";i:1084;s:16:"um-faicon-gittip";i:1085;s:15:"um-faicon-sun-o";i:1086;s:16:"um-faicon-moon-o";i:1087;s:17:"um-faicon-archive";i:1088;s:13:"um-faicon-bug";i:1089;s:12:"um-faicon-vk";i:1090;s:15:"um-faicon-weibo";i:1091;s:16:"um-faicon-renren";i:1092;s:19:"um-faicon-pagelines";i:1093;s:24:"um-faicon-stack-exchange";i:1094;s:30:"um-faicon-arrow-circle-o-right";i:1095;s:29:"um-faicon-arrow-circle-o-left";i:1096;s:29:"um-faicon-caret-square-o-left";i:1097;s:22:"um-faicon-dot-circle-o";i:1098;s:20:"um-faicon-wheelchair";i:1099;s:22:"um-faicon-vimeo-square";i:1100;s:13:"um-faicon-try";i:1101;s:23:"um-faicon-plus-square-o";i:1102;s:23:"um-faicon-space-shuttle";i:1103;s:15:"um-faicon-slack";i:1104;s:25:"um-faicon-envelope-square";i:1105;s:19:"um-faicon-wordpress";i:1106;s:16:"um-faicon-openid";i:1107;s:20:"um-faicon-university";i:1108;s:24:"um-faicon-graduation-cap";i:1109;s:15:"um-faicon-yahoo";i:1110;s:16:"um-faicon-google";i:1111;s:16:"um-faicon-reddit";i:1112;s:23:"um-faicon-reddit-square";i:1113;s:28:"um-faicon-stumbleupon-circle";i:1114;s:21:"um-faicon-stumbleupon";i:1115;s:19:"um-faicon-delicious";i:1116;s:14:"um-faicon-digg";i:1117;s:20:"um-faicon-pied-piper";i:1118;s:24:"um-faicon-pied-piper-alt";i:1119;s:16:"um-faicon-drupal";i:1120;s:16:"um-faicon-joomla";i:1121;s:18:"um-faicon-language";i:1122;s:13:"um-faicon-fax";i:1123;s:18:"um-faicon-building";i:1124;s:15:"um-faicon-child";i:1125;s:13:"um-faicon-paw";i:1126;s:15:"um-faicon-spoon";i:1127;s:14:"um-faicon-cube";i:1128;s:15:"um-faicon-cubes";i:1129;s:17:"um-faicon-behance";i:1130;s:24:"um-faicon-behance-square";i:1131;s:15:"um-faicon-steam";i:1132;s:22:"um-faicon-steam-square";i:1133;s:17:"um-faicon-recycle";i:1134;s:13:"um-faicon-car";i:1135;s:14:"um-faicon-taxi";i:1136;s:14:"um-faicon-tree";i:1137;s:17:"um-faicon-spotify";i:1138;s:20:"um-faicon-deviantart";i:1139;s:20:"um-faicon-soundcloud";i:1140;s:18:"um-faicon-database";i:1141;s:20:"um-faicon-file-pdf-o";i:1142;s:21:"um-faicon-file-word-o";i:1143;s:22:"um-faicon-file-excel-o";i:1144;s:27:"um-faicon-file-powerpoint-o";i:1145;s:22:"um-faicon-file-image-o";i:1146;s:24:"um-faicon-file-archive-o";i:1147;s:22:"um-faicon-file-audio-o";i:1148;s:22:"um-faicon-file-video-o";i:1149;s:21:"um-faicon-file-code-o";i:1150;s:14:"um-faicon-vine";i:1151;s:17:"um-faicon-codepen";i:1152;s:18:"um-faicon-jsfiddle";i:1153;s:19:"um-faicon-life-ring";i:1154;s:24:"um-faicon-circle-o-notch";i:1155;s:15:"um-faicon-rebel";i:1156;s:16:"um-faicon-empire";i:1157;s:20:"um-faicon-git-square";i:1158;s:13:"um-faicon-git";i:1159;s:21:"um-faicon-hacker-news";i:1160;s:23:"um-faicon-tencent-weibo";i:1161;s:12:"um-faicon-qq";i:1162;s:16:"um-faicon-weixin";i:1163;s:21:"um-faicon-paper-plane";i:1164;s:23:"um-faicon-paper-plane-o";i:1165;s:17:"um-faicon-history";i:1166;s:21:"um-faicon-circle-thin";i:1167;s:16:"um-faicon-header";i:1168;s:19:"um-faicon-paragraph";i:1169;s:17:"um-faicon-sliders";i:1170;s:19:"um-faicon-share-alt";i:1171;s:26:"um-faicon-share-alt-square";i:1172;s:14:"um-faicon-bomb";i:1173;s:18:"um-faicon-futbol-o";i:1174;s:13:"um-faicon-tty";i:1175;s:20:"um-faicon-binoculars";i:1176;s:14:"um-faicon-plug";i:1177;s:20:"um-faicon-slideshare";i:1178;s:16:"um-faicon-twitch";i:1179;s:14:"um-faicon-yelp";i:1180;s:21:"um-faicon-newspaper-o";i:1181;s:14:"um-faicon-wifi";i:1182;s:20:"um-faicon-calculator";i:1183;s:16:"um-faicon-paypal";i:1184;s:23:"um-faicon-google-wallet";i:1185;s:17:"um-faicon-cc-visa";i:1186;s:23:"um-faicon-cc-mastercard";i:1187;s:21:"um-faicon-cc-discover";i:1188;s:17:"um-faicon-cc-amex";i:1189;s:19:"um-faicon-cc-paypal";i:1190;s:19:"um-faicon-cc-stripe";i:1191;s:20:"um-faicon-bell-slash";i:1192;s:22:"um-faicon-bell-slash-o";i:1193;s:15:"um-faicon-trash";i:1194;s:19:"um-faicon-copyright";i:1195;s:12:"um-faicon-at";i:1196;s:20:"um-faicon-eyedropper";i:1197;s:21:"um-faicon-paint-brush";i:1198;s:23:"um-faicon-birthday-cake";i:1199;s:20:"um-faicon-area-chart";i:1200;s:19:"um-faicon-pie-chart";i:1201;s:20:"um-faicon-line-chart";i:1202;s:16:"um-faicon-lastfm";i:1203;s:23:"um-faicon-lastfm-square";i:1204;s:20:"um-faicon-toggle-off";i:1205;s:19:"um-faicon-toggle-on";i:1206;s:17:"um-faicon-bicycle";i:1207;s:13:"um-faicon-bus";i:1208;s:17:"um-faicon-ioxhost";i:1209;s:19:"um-faicon-angellist";i:1210;s:12:"um-faicon-cc";i:1211;s:13:"um-faicon-ils";i:1212;s:18:"um-faicon-meanpath";i:1213;s:14:"um-faicon-spin";i:1214;s:14:"um-faicon-spin";i:1215;s:14:"um-faicon-spin";i:1216;s:14:"um-faicon-spin";i:1217;s:14:"um-faicon-spin";}', 'yes'),
(177, 'widget_um_search_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'um_cached_role_admin', 'a:15:{s:4:"core";s:5:"admin";s:18:"can_access_wpadmin";i:1;s:20:"can_not_see_adminbar";i:0;s:17:"can_edit_everyone";i:1;s:19:"can_delete_everyone";i:1;s:16:"can_edit_profile";i:1;s:18:"can_delete_profile";i:1;s:12:"can_view_all";i:1;s:24:"can_make_private_profile";i:1;s:26:"can_access_private_profile";i:1;s:16:"default_homepage";i:1;s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"after_login";s:14:"redirect_admin";s:12:"after_logout";s:13:"redirect_home";}', 'yes'),
(179, 'um_cache_userdata_1', 'a:95:{s:2:"ID";i:1;s:10:"user_login";s:13:"genaero_admin";s:9:"user_pass";s:34:"$P$BLo2u/dF5dEyCAsaSEv9nR6ChXSdbq1";s:13:"user_nicename";s:13:"genaero_admin";s:10:"user_email";s:16:"devs@text100.com";s:8:"user_url";s:0:"";s:15:"user_registered";s:19:"2017-12-20 10:26:42";s:11:"user_status";s:1:"0";s:12:"display_name";s:13:"genaero_admin";s:13:"administrator";b:1;s:8:"wp_roles";s:13:"administrator";s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;s:8:"nickname";s:13:"genaero_admin";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:11:"description";s:0:"";s:12:"rich_editing";s:4:"true";s:19:"syntax_highlighting";s:4:"true";s:17:"comment_shortcuts";s:5:"false";s:11:"admin_color";s:5:"fresh";s:7:"use_ssl";s:1:"0";s:20:"show_admin_bar_front";s:4:"true";s:6:"locale";s:0:"";s:18:"show_welcome_panel";s:1:"1";s:37:"wp_dashboard_quick_press_last_post_id";s:1:"3";s:25:"community-events-location";s:24:"a:1:{s:2:"ip";s:2:"::";}";s:14:"account_status";s:8:"approved";s:19:"account_status_name";s:8:"Approved";s:4:"core";s:5:"admin";s:18:"can_access_wpadmin";i:1;s:20:"can_not_see_adminbar";i:0;s:17:"can_edit_everyone";i:1;s:19:"can_delete_everyone";i:1;s:16:"can_edit_profile";i:1;s:18:"can_delete_profile";i:1;s:12:"can_view_all";i:1;s:24:"can_make_private_profile";i:1;s:26:"can_access_private_profile";i:1;s:16:"default_homepage";i:1;s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"after_login";s:14:"redirect_admin";s:12:"after_logout";s:13:"redirect_home";s:11:"super_admin";i:1;}', 'yes'),
(180, '__ultimatemember_sitekey', 'localhost/generationaerospace-lYqnGeUYPcqxL2v1TTRl', 'yes'),
(181, 'um_is_installed', '1', 'yes'),
(182, 'um_core_forms', 'a:3:{i:19;i:19;i:20;i:20;i:21;i:21;}', 'yes'),
(183, 'um_core_directories', 'a:1:{i:22;i:22;}', 'yes'),
(184, 'um_core_pages', 'a:7:{s:4:"user";s:2:"68";s:5:"login";s:2:"76";s:8:"register";s:2:"74";s:7:"members";s:2:"72";s:6:"logout";s:2:"78";s:7:"account";s:2:"70";s:14:"password-reset";s:2:"80";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(185, 'um_options', 'a:201:{s:8:"last_tab";s:0:"";s:9:"core_user";s:2:"68";s:12:"core_account";s:2:"70";s:12:"core_members";s:2:"72";s:13:"core_register";s:2:"74";s:10:"core_login";s:2:"76";s:11:"core_logout";s:2:"78";s:19:"core_password-reset";s:2:"80";s:12:"default_role";s:6:"member";s:14:"permalink_base";s:7:"user_id";s:12:"display_name";s:8:"username";s:18:"display_name_field";s:0:"";s:29:"force_display_name_capitlized";s:1:"1";s:15:"author_redirect";s:1:"1";s:12:"members_page";s:1:"1";s:13:"use_gravatars";s:1:"0";s:37:"use_um_gravatar_default_builtin_image";s:7:"default";s:29:"use_um_gravatar_default_image";s:1:"0";s:24:"reset_require_strongpass";s:1:"0";s:33:"editable_primary_email_in_profile";s:1:"0";s:20:"account_tab_password";s:1:"1";s:19:"account_tab_privacy";s:1:"1";s:25:"account_tab_notifications";s:1:"1";s:18:"account_tab_delete";s:1:"1";s:19:"delete_account_text";s:150:"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below";s:12:"account_name";s:1:"1";s:20:"account_name_disable";s:1:"0";s:20:"account_name_require";s:1:"1";s:13:"account_email";s:1:"1";s:25:"account_hide_in_directory";s:1:"1";s:26:"account_require_strongpass";s:1:"0";s:9:"panic_key";s:10:"xRmjXthR0M";s:10:"accessible";s:1:"0";s:15:"access_redirect";s:0:"";s:20:"home_page_accessible";s:1:"1";s:24:"category_page_accessible";s:1:"1";s:13:"wpadmin_login";s:1:"1";s:25:"deny_admin_frontend_login";s:1:"0";s:22:"wpadmin_login_redirect";s:13:"um_login_page";s:26:"wpadmin_login_redirect_url";s:0:"";s:16:"wpadmin_register";s:1:"1";s:25:"wpadmin_register_redirect";s:16:"um_register_page";s:29:"wpadmin_register_redirect_url";s:0:"";s:24:"access_widget_admin_only";s:1:"1";s:27:"enable_reset_password_limit";s:1:"1";s:27:"reset_password_limit_number";s:1:"3";s:34:"disable_admin_reset_password_limit";s:1:"0";s:17:"wpadmin_allow_ips";s:0:"";s:11:"blocked_ips";s:0:"";s:14:"blocked_emails";s:0:"";s:13:"blocked_words";s:47:"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff";s:9:"mail_from";s:20:"Generation Aerospace";s:14:"mail_from_addr";s:16:"devs@text100.com";s:10:"email_html";s:1:"0";s:16:"welcome_email_on";s:1:"1";s:17:"welcome_email_sub";s:23:"Welcome to {site_name}!";s:13:"welcome_email";s:306:"Hi {display_name},\r\n\r\nThank you for signing up with {site_name}! Your account is now active.\r\n\r\nTo login please visit the following url:\r\n\r\n{login_url}\r\n\r\nYour account e-mail: {email}\r\nYour account username: {username}\r\n\r\nIf you have any problems, please contact us at {admin_email}\r\n\r\nThanks,\r\n{site_name}";s:18:"checkmail_email_on";s:1:"1";s:19:"checkmail_email_sub";s:28:"Please activate your account";s:15:"checkmail_email";s:266:"Hi {display_name},\r\n\r\nThank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:\r\n\r\n{account_activation_link}\r\n\r\nIf you have any problems, please contact us at {admin_email}\r\n\r\nThanks,\r\n{site_name}";s:16:"pending_email_on";s:1:"1";s:17:"pending_email_sub";s:30:"Your account is pending review";s:13:"pending_email";s:272:"Hi {display_name},\r\n\r\nThank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.\r\n\r\nPlease allow us some time to process your request.\r\n\r\nIf you have any problems, please contact us at {admin_email}\r\n\r\nThanks,\r\n{site_name}";s:17:"approved_email_on";s:1:"1";s:18:"approved_email_sub";s:41:"Your account at {site_name} is now active";s:14:"approved_email";s:378:"Hi {display_name},\r\n\r\nThank you for signing up with {site_name}! Your account has been approved and is now active.\r\n\r\nTo login please visit the following url:\r\n\r\n{login_url}\r\n\r\nYour account e-mail: {email}\r\nYour account username: {username}\r\nSet your account password: {password_reset_link}\r\n\r\nIf you have any problems, please contact us at {admin_email}\r\n\r\nThanks,\r\n{site_name}";s:17:"rejected_email_on";s:1:"1";s:18:"rejected_email_sub";s:30:"Your account has been rejected";s:14:"rejected_email";s:260:"Hi {display_name},\r\n\r\nThank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.\r\n\r\nPlease feel free to apply again at a future date.\r\n\r\nThanks,\r\n{site_name}";s:17:"inactive_email_on";s:1:"1";s:18:"inactive_email_sub";s:33:"Your account has been deactivated";s:14:"inactive_email";s:222:"Hi {display_name},\r\n\r\nThis is an automated email to let you know your {site_name} account has been deactivated.\r\n\r\nIf you would like your account to be reactivated please contact us at {admin_email}\r\n\r\nThanks,\r\n{site_name}";s:17:"deletion_email_on";s:1:"1";s:18:"deletion_email_sub";s:29:"Your account has been deleted";s:14:"deletion_email";s:332:"Hi {display_name},\r\n\r\nThis is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.\r\n\r\nIf your account has been deleted by accident please contact us at {admin_email}\r\n\r\nThanks,\r\n{site_name}";s:16:"resetpw_email_on";s:1:"1";s:17:"resetpw_email_sub";s:19:"Reset your password";s:13:"resetpw_email";s:266:"Hi {display_name},\r\n\r\nWe received a request to reset the password for your account. If you made this request, click the link below to change your password:\r\n\r\n{password_reset_link}\r\n\r\nIf you didn\'t make this request, you can ignore this email\r\n\r\nThanks,\r\n{site_name}";s:18:"changedpw_email_on";s:1:"1";s:19:"changedpw_email_sub";s:42:"Your {site_name} password has been changed";s:15:"changedpw_email";s:279:"Hi {display_name},\r\n\r\nYou recently changed the password associated with your {site_name} account.\r\n\r\nIf you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}\r\n\r\nThanks,\r\n{site_name}";s:11:"admin_email";s:16:"devs@text100.com";s:24:"notification_new_user_on";s:1:"1";s:25:"notification_new_user_sub";s:30:"[{site_name}] New user account";s:21:"notification_new_user";s:187:"{display_name} has just created an account on {site_name}. To view their profile click here:\r\n\r\n{user_profile_link}\r\n\r\nHere is the submitted registration form:\r\n\r\n{submitted_registration}";s:22:"notification_review_on";s:1:"0";s:23:"notification_review_sub";s:38:"[{site_name}] New user awaiting review";s:19:"notification_review";s:245:"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.\r\n\r\nTo review this member please click the following link:\r\n\r\n{user_profile_link}\r\n\r\nHere is the submitted registration form:\r\n\r\n{submitted_registration}";s:24:"notification_deletion_on";s:1:"0";s:25:"notification_deletion_sub";s:29:"[{site_name}] Account deleted";s:21:"notification_deletion";s:58:"{display_name} has just deleted their {site_name} account.";s:22:"profile_photo_max_size";s:0:"";s:20:"cover_photo_max_size";s:0:"";s:17:"photo_thumb_sizes";a:3:{i:0;s:2:"40";i:1;s:2:"80";i:2;s:3:"190";}s:17:"cover_thumb_sizes";a:2:{i:0;s:3:"300";i:1;s:3:"600";}s:17:"image_compression";s:2:"60";s:15:"image_max_width";s:4:"1000";s:15:"cover_min_width";s:4:"1000";s:13:"profile_title";s:37:"{display_name} | Generation Aerospace";s:12:"profile_desc";s:83:"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile";s:18:"directory_template";s:7:"members";s:12:"active_color";s:7:"#3ba1da";s:15:"secondary_color";s:7:"#44b0ec";s:17:"primary_btn_color";s:7:"#3ba1da";s:17:"primary_btn_hover";s:7:"#44b0ec";s:16:"primary_btn_text";s:7:"#ffffff";s:19:"secondary_btn_color";s:7:"#eeeeee";s:19:"secondary_btn_hover";s:7:"#e5e5e5";s:18:"secondary_btn_text";s:7:"#666666";s:14:"help_tip_color";s:7:"#cccccc";s:16:"form_field_label";s:7:"#555555";s:11:"form_border";s:14:"2px solid #ddd";s:17:"form_border_hover";s:14:"2px solid #bbb";s:13:"form_bg_color";s:7:"#ffffff";s:19:"form_bg_color_focus";s:7:"#ffffff";s:15:"form_text_color";s:7:"#666666";s:16:"form_placeholder";s:7:"#aaaaaa";s:15:"form_icon_color";s:7:"#aaaaaa";s:13:"form_asterisk";s:1:"0";s:19:"form_asterisk_color";s:7:"#aaaaaa";s:16:"profile_template";s:7:"profile";s:17:"profile_max_width";s:6:"1000px";s:22:"profile_area_max_width";s:5:"600px";s:13:"profile_align";s:6:"center";s:13:"profile_icons";s:5:"label";s:24:"profile_primary_btn_word";s:14:"Update Profile";s:21:"profile_secondary_btn";s:1:"1";s:26:"profile_secondary_btn_word";s:6:"Cancel";s:12:"profile_role";s:1:"0";s:15:"profile_main_bg";s:0:"";s:17:"profile_header_bg";s:0:"";s:14:"default_avatar";a:5:{s:3:"url";s:101:"http://localhost/generationaerospace/wp-content/plugins/ultimate-member/assets/img/default_avatar.jpg";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:13:"default_cover";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:17:"profile_photosize";s:5:"190px";s:19:"profile_photocorner";s:1:"1";s:21:"profile_cover_enabled";s:1:"1";s:19:"profile_cover_ratio";s:5:"2.7:1";s:21:"profile_show_metaicon";s:1:"0";s:19:"profile_header_text";s:7:"#999999";s:25:"profile_header_link_color";s:7:"#555555";s:26:"profile_header_link_hcolor";s:7:"#444444";s:25:"profile_header_icon_color";s:7:"#aaaaaa";s:26:"profile_header_icon_hcolor";s:7:"#3ba1da";s:17:"profile_show_name";s:1:"1";s:25:"profile_show_social_links";s:1:"0";s:16:"profile_show_bio";s:1:"1";s:21:"profile_show_html_bio";s:0:"";s:20:"profile_bio_maxchars";s:3:"180";s:19:"profile_header_menu";s:2:"bc";s:18:"profile_empty_text";s:1:"1";s:22:"profile_empty_text_emo";s:1:"1";s:12:"profile_menu";s:1:"1";s:16:"profile_tab_main";s:1:"1";s:24:"profile_tab_main_privacy";s:1:"0";s:17:"profile_tab_posts";s:1:"1";s:25:"profile_tab_posts_privacy";s:1:"0";s:20:"profile_tab_comments";s:1:"1";s:28:"profile_tab_comments_privacy";s:1:"0";s:24:"profile_menu_default_tab";s:4:"main";s:18:"profile_menu_icons";s:1:"1";s:17:"register_template";s:8:"register";s:18:"register_max_width";s:5:"450px";s:14:"register_align";s:6:"center";s:14:"register_icons";s:5:"label";s:25:"register_primary_btn_word";s:8:"Register";s:22:"register_secondary_btn";s:1:"1";s:27:"register_secondary_btn_word";s:5:"Login";s:26:"register_secondary_btn_url";s:0:"";s:13:"register_role";s:1:"0";s:14:"login_template";s:5:"login";s:15:"login_max_width";s:5:"450px";s:11:"login_align";s:6:"center";s:11:"login_icons";s:5:"label";s:22:"login_primary_btn_word";s:5:"Login";s:19:"login_secondary_btn";s:1:"1";s:24:"login_secondary_btn_word";s:8:"Register";s:23:"login_secondary_btn_url";s:0:"";s:22:"login_forgot_pass_link";s:1:"1";s:21:"login_show_rememberme";s:1:"1";s:28:"um_profile_object_cache_stop";s:1:"1";s:13:"um_flush_stop";s:1:"0";s:29:"um_generate_slug_in_directory";s:1:"0";s:18:"current_url_method";s:11:"SERVER_NAME";s:22:"um_port_forwarding_url";s:1:"0";s:21:"um_force_utf8_strings";s:1:"0";s:14:"enable_timebot";s:1:"1";s:14:"disable_minify";s:1:"0";s:12:"disable_menu";s:1:"0";s:19:"js_css_exlcude_home";s:1:"0";s:17:"enable_custom_css";s:1:"0";s:14:"allow_tracking";s:1:"0";s:24:"addon_bp_avatar_transfer";s:0:"";s:23:"addon_gravatar_transfer";s:0:"";s:27:"addon_generate_random_users";s:0:"";s:18:"addon_install_info";s:0:"";s:19:"access_exclude_uris";a:0:{}s:22:"profile_tab_main_roles";s:0:"";s:23:"profile_tab_posts_roles";s:0:"";s:26:"profile_tab_comments_roles";s:0:"";s:14:"js_css_exclude";a:0:{}s:14:"js_css_include";a:0:{}}', 'yes'),
(186, 'um_first_setup_roles', '1', 'yes'),
(187, 'um_hashed_passwords_fix', '1', 'yes'),
(189, 'redux_version_upgraded_from', '3.6.2', 'yes'),
(192, 'um_options-transients', 'a:3:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1514305914;s:13:"last_compiler";i:1514305752;}', 'yes'),
(195, 'um_cached_role_member', 'a:16:{s:4:"role";s:6:"member";s:4:"core";s:6:"member";s:18:"can_access_wpadmin";s:1:"0";s:20:"can_not_see_adminbar";s:1:"1";s:17:"can_edit_everyone";s:1:"0";s:19:"can_delete_everyone";s:1:"0";s:16:"can_edit_profile";s:1:"1";s:18:"can_delete_profile";s:1:"1";s:12:"can_view_all";s:1:"1";s:24:"can_make_private_profile";s:1:"0";s:26:"can_access_private_profile";s:1:"0";s:16:"default_homepage";s:1:"1";s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"after_login";s:16:"redirect_profile";s:12:"after_logout";s:13:"redirect_home";}', 'yes'),
(200, 'WPLANG', '', 'yes'),
(201, 'new_admin_email', 'devs@text100.com', 'yes'),
(208, 'um_tracking_notice', '1', 'yes'),
(219, 'um_existing_rows_19', 'a:1:{i:0;s:9:"_um_row_1";}', 'yes'),
(220, 'um_form_rowdata_19', 'a:1:{s:9:"_um_row_1";a:5:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";s:6:"origin";s:9:"_um_row_1";}}', 'yes'),
(291, 'nav_menu_roles_db_version', '1.9.1', 'yes'),
(292, 'widget_wppb-login-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(293, 'wppb_version', '2.7.2', 'yes'),
(294, 'wppb_manage_fields', 'a:3:{i:0;a:21:{s:2:"id";i:8;s:5:"field";s:16:"Default - E-mail";s:9:"meta-name";s:0:"";s:11:"field-title";s:6:"E-mail";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:1;a:21:{s:2:"id";i:2;s:5:"field";s:18:"Default - Username";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Username";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:2;a:21:{s:2:"id";i:12;s:5:"field";s:18:"Default - Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}}', 'yes'),
(295, 'wppb_general_settings', 'a:8:{s:17:"extraFieldsLayout";s:7:"default";s:17:"emailConfirmation";s:2:"no";s:21:"activationLandingPage";s:0:"";s:11:"rolesEditor";s:2:"no";s:18:"contentRestriction";s:2:"no";s:9:"loginWith";s:8:"username";s:23:"minimum_password_length";s:1:"6";s:25:"minimum_password_strength";s:3:"bad";}', 'yes'),
(298, 'wppb_display_admin_settings', 'a:6:{s:13:"Administrator";s:7:"default";s:6:"Editor";s:7:"default";s:6:"Author";s:7:"default";s:11:"Contributor";s:7:"default";s:10:"Subscriber";s:7:"default";s:6:"Member";s:4:"hide";}', 'yes'),
(388, 'members_settings', 'a:12:{s:12:"role_manager";b:1;s:11:"multi_roles";b:1;s:20:"explicit_denied_caps";b:1;s:15:"show_human_caps";b:1;s:19:"content_permissions";b:1;s:25:"content_permissions_error";s:59:"Sorry, but you do not have permission to view this content.";s:12:"private_blog";b:1;s:18:"private_feed_error";s:54:"You must be logged into the site to view this content.";s:17:"login_form_widget";b:0;s:12:"users_widget";b:0;s:16:"private_rest_api";b:0;s:12:"private_feed";b:0;}', 'yes'),
(401, 'mtral_settings', 'a:11:{s:25:"mtral_field_administrator";s:9:"index.php";s:36:"mtral_field_custom_url_administrator";s:0:"";s:18:"mtral_field_editor";s:9:"index.php";s:29:"mtral_field_custom_url_editor";s:0:"";s:18:"mtral_field_author";s:9:"index.php";s:29:"mtral_field_custom_url_author";s:0:"";s:23:"mtral_field_contributor";s:9:"index.php";s:34:"mtral_field_custom_url_contributor";s:0:"";s:22:"mtral_field_subscriber";s:9:"index.php";s:33:"mtral_field_custom_url_subscriber";s:0:"";s:29:"mtral_field_custom_url_member";s:17:"members-dashboard";}', 'yes'),
(473, 'um_existing_rows_20', 'a:1:{i:0;s:9:"_um_row_1";}', 'yes'),
(474, 'um_form_rowdata_20', 'a:1:{s:9:"_um_row_1";a:4:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";}}', 'yes'),
(478, 'um_existing_rows_21', 'a:1:{i:0;s:9:"_um_row_1";}', 'yes'),
(479, 'um_form_rowdata_21', 'a:1:{s:9:"_um_row_1";a:4:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";}}', 'yes'),
(499, 'um_cached_users_queue', '0', 'no'),
(502, 'pantheon_session_version', '0.6.2', 'yes'),
(524, 'wonderm00n_open_graph_settings', 'a:74:{s:17:"settings_last_tab";i:1;s:17:"fb_image_min_size";i:200;s:13:"fb_desc_chars";i:300;s:16:"fb_desc_homepage";s:0:"";s:27:"fb_desc_homepage_customtext";s:0:"";s:22:"fb_desc_default_option";s:0:"";s:15:"fb_desc_default";s:0:"";s:8:"fb_image";s:0:"";s:21:"fb_image_use_specific";i:1;s:21:"fb_image_use_featured";i:1;s:20:"fb_image_use_default";i:1;s:22:"fb_image_overlay_image";s:0:"";s:22:"fb_keep_data_uninstall";i:1;s:13:"fb_title_show";i:1;s:16:"fb_sitename_show";i:1;s:11:"fb_url_show";i:1;s:12:"fb_desc_show";i:1;s:13:"fb_image_show";i:1;s:12:"fb_type_show";i:1;s:16:"fb_type_homepage";s:7:"website";s:14:"fb_author_show";i:1;s:21:"fb_article_dates_show";i:1;s:24:"fb_article_sections_show";i:1;s:17:"fb_publisher_show";i:1;s:12:"fb_publisher";s:42:"https://www.facebook.com/RollsRoyceinAsia/";s:14:"fb_locale_show";i:1;s:9:"fb_locale";s:0:"";s:11:"fb_admin_id";s:0:"";s:9:"fb_app_id";s:0:"";s:21:"fb_declaration_method";s:6:"prefix";s:16:"fb_adv_notify_fb";i:1;s:23:"fb_adv_notify_fb_app_id";s:15:"381256678999175";s:27:"fb_adv_notify_fb_app_secret";s:32:"a3343888ed15f157da70d60979c0c5b8";s:21:"fb_title_show_twitter";i:1;s:19:"fb_url_show_twitter";i:1;s:20:"fb_desc_show_twitter";i:1;s:21:"fb_image_show_twitter";i:1;s:22:"fb_author_show_twitter";i:1;s:25:"fb_publisher_show_twitter";i:1;s:24:"fb_publisher_twitteruser";s:0:"";s:20:"fb_twitter_card_type";s:19:"summary_large_image";s:20:"fb_title_show_schema";i:1;s:19:"fb_desc_show_schema";i:1;s:20:"fb_image_show_schema";i:1;s:23:"fb_type_schema_homepage";s:7:"WebSite";s:19:"fb_type_schema_post";s:7:"Article";s:24:"fb_author_show_linkrelgp";i:0;s:24:"fb_publisher_show_schema";i:1;s:19:"fb_publisher_schema";s:0:"";s:15:"fb_show_aioseop";i:0;s:14:"fb_app_id_show";i:0;s:16:"fb_admin_id_show";i:0;s:16:"fb_url_canonical";i:0;s:19:"fb_url_add_trailing";i:0;s:19:"fb_type_show_schema";i:0;s:19:"fb_author_show_meta";i:0;s:23:"fb_author_hide_on_pages";i:0;s:17:"fb_desc_show_meta";i:0;s:18:"fb_image_size_show";i:0;s:12:"fb_image_rss";i:0;s:20:"fb_image_use_content";i:0;s:18:"fb_image_use_media";i:0;s:25:"fb_adv_disable_image_size";i:0;s:18:"fb_show_wpseoyoast";i:0;s:18:"fb_show_subheading";i:0;s:22:"fb_subheading_position";s:0:"";s:31:"fb_show_businessdirectoryplugin";i:0;s:18:"fb_adv_force_local";i:0;s:24:"fb_adv_supress_fb_notice";i:0;s:19:"fb_wc_usecategthumb";i:0;s:23:"fb_wc_useproductgallery";i:0;s:23:"fb_wc_usepg_png_overlay";i:0;s:16:"fb_image_overlay";i:0;s:22:"fb_publisher_show_meta";i:0;}', 'yes'),
(525, 'wonderm00n_open_graph_version', '2.2.1', 'yes'),
(573, 'alka_facebook', 'a:2:{s:6:"app_id";s:15:"381256678999175";s:10:"app_secret";s:32:"a3343888ed15f157da70d60979c0c5b8";}', 'yes'),
(609, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(610, 'acf_version', '5.6.1', 'yes'),
(702, '_site_transient_timeout_browser_da4804949398f905dcef757ac82cf2c1', '1515774742', 'no'),
(703, '_site_transient_browser_da4804949398f905dcef757ac82cf2c1', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"63.0.3239.84";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(705, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1515170036;s:7:"version";s:5:"4.9.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(725, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(726, 'CF7DBPlugin__version', '2.10.25', 'yes'),
(727, 'CF7DBPlugin__installed', '1', 'yes'),
(728, 'CF7DBPlugin_IntegrateWithCF7', 'true', 'yes'),
(729, 'CF7DBPlugin_GenerateSubmitTimeInCF7Email', 'false', 'yes'),
(730, 'CF7DBPlugin_IntegrateWithFSCF', 'true', 'yes'),
(731, 'CF7DBPlugin_IntegrateWithJetPackContactForm', 'true', 'yes'),
(732, 'CF7DBPlugin_IntegrateWithGravityForms', 'true', 'yes'),
(733, 'CF7DBPlugin_IntegrateWithFormidableForms', 'true', 'yes'),
(734, 'CF7DBPlugin_IntegrateWithWrContactForms', 'true', 'yes'),
(735, 'CF7DBPlugin_IntegrateWithQuform', 'true', 'yes'),
(736, 'CF7DBPlugin_IntegrateWithNinjaForms', 'true', 'yes'),
(737, 'CF7DBPlugin_IntegrateWithCalderaForms', 'true', 'yes'),
(738, 'CF7DBPlugin_IntegrateWithEnfoldThemForms', 'true', 'yes'),
(739, 'CF7DBPlugin_IntegrateWithCFormsII', 'true', 'yes'),
(740, 'CF7DBPlugin_IntegrateWithFormCraft', 'true', 'yes'),
(741, 'CF7DBPlugin_IntegrateWithVerySimpleContactForm', 'true', 'yes'),
(742, 'CF7DBPlugin_IntegrateWithFMS', 'true', 'yes'),
(743, 'CF7DBPlugin_HideAdminPanelFromNonAdmins', 'true', 'yes'),
(744, 'CF7DBPlugin_IntegrateWithCF7SavePageTitle', 'false', 'yes'),
(745, 'CF7DBPlugin_IntegrateWithCF7SavePageUrl', 'false', 'yes'),
(746, 'CF7DBPlugin_SaveCookieData', 'false', 'yes'),
(747, 'CF7DBPlugin_UseDataTablesJS', 'true', 'yes'),
(748, 'CF7DBPlugin_Donated', 'false', 'yes'),
(749, 'CF7DBPlugin_HorizontalScroll', 'true', 'yes'),
(750, 'CF7DBPlugin_MaxRows', '100', 'yes'),
(751, 'CF7DBPlugin_SubmitDateTimeFormat', 'Y-m-d H:i:s P', 'yes'),
(752, 'CF7DBPlugin_ShowQuery', 'false', 'yes'),
(764, '_site_transient_timeout_theme_roots', '1515331075', 'no'),
(765, '_site_transient_theme_roots', 'a:2:{s:5:"basic";s:7:"/themes";s:10:"understrap";s:7:"/themes";}', 'no'),
(766, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1515329285;s:7:"checked";a:2:{s:5:"basic";s:5:"1.4.0";s:10:"understrap";s:6:"0.6.12";}s:8:"response";a:1:{s:10:"understrap";a:4:{s:5:"theme";s:10:"understrap";s:11:"new_version";s:5:"0.7.0";s:3:"url";s:40:"https://wordpress.org/themes/understrap/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/understrap.0.7.0.zip";}}s:12:"translations";a:0:{}}', 'no'),
(767, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1515372476', 'no'),
(768, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:0:{}}', 'no'),
(769, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1515335701;s:7:"checked";a:12:{s:25:"adminimize/adminimize.php";s:6:"1.11.4";s:33:"admin-menu-editor/menu-editor.php";s:5:"1.8.1";s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.6.1";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.9.2";s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";s:7:"2.10.25";s:69:"wonderm00ns-simple-facebook-open-graph-tags/wonderm00n-open-graph.php";s:5:"2.2.1";s:35:"genaero-members/genaero-members.php";s:3:"1.0";s:50:"google-analytics-for-wordpress/googleanalytics.php";s:5:"6.2.6";s:25:"login-logo/login-logo.php";s:3:"0.7";s:44:"wp-native-php-sessions/pantheon-sessions.php";s:5:"0.6.4";s:27:"wp-pagenavi/wp-pagenavi.php";s:4:"2.92";s:24:"wordpress-seo/wp-seo.php";s:3:"6.0";}s:8:"response";a:2:{s:69:"wonderm00ns-simple-facebook-open-graph-tags/wonderm00n-open-graph.php";O:8:"stdClass":11:{s:2:"id";s:57:"w.org/plugins/wonderm00ns-simple-facebook-open-graph-tags";s:4:"slug";s:43:"wonderm00ns-simple-facebook-open-graph-tags";s:6:"plugin";s:69:"wonderm00ns-simple-facebook-open-graph-tags/wonderm00n-open-graph.php";s:11:"new_version";s:5:"2.2.2";s:3:"url";s:74:"https://wordpress.org/plugins/wonderm00ns-simple-facebook-open-graph-tags/";s:7:"package";s:91:"http://downloads.wordpress.org/plugin/wonderm00ns-simple-facebook-open-graph-tags.2.2.2.zip";s:5:"icons";a:3:{s:2:"1x";s:96:"https://ps.w.org/wonderm00ns-simple-facebook-open-graph-tags/assets/icon-128x128.png?rev=1036283";s:2:"2x";s:96:"https://ps.w.org/wonderm00ns-simple-facebook-open-graph-tags/assets/icon-256x256.png?rev=1036283";s:7:"default";s:96:"https://ps.w.org/wonderm00ns-simple-facebook-open-graph-tags/assets/icon-256x256.png?rev=1036283";}s:7:"banners";a:3:{s:2:"2x";s:99:"https://ps.w.org/wonderm00ns-simple-facebook-open-graph-tags/assets/banner-1544x500.jpg?rev=1773921";s:2:"1x";s:98:"https://ps.w.org/wonderm00ns-simple-facebook-open-graph-tags/assets/banner-772x250.jpg?rev=1773921";s:7:"default";s:99:"https://ps.w.org/wonderm00ns-simple-facebook-open-graph-tags/assets/banner-1544x500.jpg?rev=1773921";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.6.7";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.0";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:25:"adminimize/adminimize.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/adminimize";s:4:"slug";s:10:"adminimize";s:6:"plugin";s:25:"adminimize/adminimize.php";s:11:"new_version";s:6:"1.11.4";s:3:"url";s:41:"https://wordpress.org/plugins/adminimize/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/adminimize.1.11.4.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/adminimize/assets/banner-772x250.png?rev=1118207";s:7:"default";s:65:"https://ps.w.org/adminimize/assets/banner-772x250.png?rev=1118207";}s:11:"banners_rtl";a:0:{}}s:33:"admin-menu-editor/menu-editor.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/admin-menu-editor";s:4:"slug";s:17:"admin-menu-editor";s:6:"plugin";s:33:"admin-menu-editor/menu-editor.php";s:11:"new_version";s:5:"1.8.1";s:3:"url";s:48:"https://wordpress.org/plugins/admin-menu-editor/";s:7:"package";s:65:"http://downloads.wordpress.org/plugin/admin-menu-editor.1.8.1.zip";s:5:"icons";a:2:{s:2:"1x";s:70:"https://ps.w.org/admin-menu-editor/assets/icon-128x128.png?rev=1418604";s:7:"default";s:70:"https://ps.w.org/admin-menu-editor/assets/icon-128x128.png?rev=1418604";}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/admin-menu-editor/assets/banner-772x250.png?rev=1419590";s:7:"default";s:72:"https://ps.w.org/admin-menu-editor/assets/banner-772x250.png?rev=1419590";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.9.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}}s:50:"google-analytics-for-wordpress/googleanalytics.php";O:8:"stdClass":9:{s:2:"id";s:44:"w.org/plugins/google-analytics-for-wordpress";s:4:"slug";s:30:"google-analytics-for-wordpress";s:6:"plugin";s:50:"google-analytics-for-wordpress/googleanalytics.php";s:11:"new_version";s:5:"6.2.6";s:3:"url";s:61:"https://wordpress.org/plugins/google-analytics-for-wordpress/";s:7:"package";s:78:"http://downloads.wordpress.org/plugin/google-analytics-for-wordpress.6.2.6.zip";s:5:"icons";a:4:{s:2:"1x";s:83:"https://ps.w.org/google-analytics-for-wordpress/assets/icon-128x128.png?rev=1598927";s:2:"2x";s:83:"https://ps.w.org/google-analytics-for-wordpress/assets/icon-256x256.png?rev=1598927";s:3:"svg";s:75:"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927";s:7:"default";s:75:"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927";}s:7:"banners";a:3:{s:2:"2x";s:86:"https://ps.w.org/google-analytics-for-wordpress/assets/banner-1544x500.png?rev=1598927";s:2:"1x";s:85:"https://ps.w.org/google-analytics-for-wordpress/assets/banner-772x250.png?rev=1598927";s:7:"default";s:86:"https://ps.w.org/google-analytics-for-wordpress/assets/banner-1544x500.png?rev=1598927";}s:11:"banners_rtl";a:0:{}}s:25:"login-logo/login-logo.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/login-logo";s:4:"slug";s:10:"login-logo";s:6:"plugin";s:25:"login-logo/login-logo.php";s:11:"new_version";s:3:"0.7";s:3:"url";s:41:"https://wordpress.org/plugins/login-logo/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/login-logo.0.7.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:64:"https://ps.w.org/login-logo/assets/banner-772x250.png?rev=479545";s:7:"default";s:64:"https://ps.w.org/login-logo/assets/banner-772x250.png?rev=479545";}s:11:"banners_rtl";a:0:{}}s:44:"wp-native-php-sessions/pantheon-sessions.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/wp-native-php-sessions";s:4:"slug";s:22:"wp-native-php-sessions";s:6:"plugin";s:44:"wp-native-php-sessions/pantheon-sessions.php";s:11:"new_version";s:5:"0.6.4";s:3:"url";s:53:"https://wordpress.org/plugins/wp-native-php-sessions/";s:7:"package";s:70:"http://downloads.wordpress.org/plugin/wp-native-php-sessions.0.6.4.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/wp-native-php-sessions/assets/icon-128x128.png?rev=1322577";s:2:"2x";s:75:"https://ps.w.org/wp-native-php-sessions/assets/icon-256x256.png?rev=1322577";s:7:"default";s:75:"https://ps.w.org/wp-native-php-sessions/assets/icon-256x256.png?rev=1322577";}s:7:"banners";a:2:{s:2:"1x";s:77:"https://ps.w.org/wp-native-php-sessions/assets/banner-772x250.png?rev=1322078";s:7:"default";s:77:"https://ps.w.org/wp-native-php-sessions/assets/banner-772x250.png?rev=1322078";}s:11:"banners_rtl";a:0:{}}s:27:"wp-pagenavi/wp-pagenavi.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/wp-pagenavi";s:4:"slug";s:11:"wp-pagenavi";s:6:"plugin";s:27:"wp-pagenavi/wp-pagenavi.php";s:11:"new_version";s:4:"2.92";s:3:"url";s:42:"https://wordpress.org/plugins/wp-pagenavi/";s:7:"package";s:58:"http://downloads.wordpress.org/plugin/wp-pagenavi.2.92.zip";s:5:"icons";a:2:{s:3:"svg";s:55:"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997";s:7:"default";s:55:"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758";s:2:"1x";s:66:"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758";s:7:"default";s:67:"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758";}s:11:"banners_rtl";a:0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"6.0";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/wordpress-seo.6.0.zip";s:5:"icons";a:4:{s:2:"1x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1550389";s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1550389";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";s:7:"default";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112";s:7:"default";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";}s:11:"banners_rtl";a:3:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112";s:7:"default";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";}}}}', 'no'),
(770, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1515372485', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(771, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:34:"\n	Thu, 04 Jan 2018 06:37:41 +0000	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=5.0-alpha-42426";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"The Month in WordPress: December 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2018/01/the-month-in-wordpress-december-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 03 Jan 2018 10:00:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:13:"Uncategorized";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5424";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:311:"Activity slowed down in December in the WordPress community, particularly in the last two weeks. However, the month started off with a big event and work pushed forward in a number of key areas of the project. Read on to find out more about what transpired in the WordPress community as 2017 came to a [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4744:"\n<p>Activity slowed down in December in the WordPress community, particularly in the last two weeks. However, the month started off with a big event and work pushed forward in a number of key areas of the project. Read on to find out more about what transpired in the WordPress community as 2017 came to a close.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>WordCamp US 2017 Brings the Community Together</h2>\n\n\n\n<p>The latest edition of <a href="https://2017.us.wordcamp.org/">WordCamp US</a> took place last month in Nashville on December 1-3. The event brought together over 1,400 WordPress enthusiasts from around the world, fostering a deeper, more engaged global community.</p>\n\n\n\n<p>While attending a WordCamp is always a unique experience, you can catch up on <a href="https://wordpress.tv/event/wordcamp-us-2017/">the sessions on WordPress.tv</a> and look through <a href="https://www.facebook.com/pg/WordCampUSA/photos/?tab=albums">the event photos on Facebook</a> to get a feel for how it all happened. Of course, <a href="https://wordpress.tv/2017/12/04/matt-mullenweg-state-of-the-word-2017/">Matt Mullenweg’s State of the Word</a> talk is always one of the highlights at this event.</p>\n\n\n\n<p>The next WordCamp US will be held in Nashville again in 2018, but if you would like to see it hosted in your city in 2019 and 2020, then <a href="https://make.wordpress.org/community/2017/12/19/apply-to-host-wordcamp-us-2019-2020/">you have until February 2 to apply</a>.</p>\n\n\n\n<h2>WordPress User Survey Data Is Published</h2>\n\n\n\n<p>Over the last few years, tens of thousands of WordPress users all over the world have filled out the annual WordPress user survey. The results of that survey are used to improve the WordPress project, but that data has mostly remained private. This has changed now and <a href="https://wordpress.org/news/2017/12/wordpress-user-survey-data-for-2015-2017/">the results from the last three surveys are now publicly available</a> for everyone to analyze.</p>\n\n\n\n<p>The data will be useful to anyone involved in WordPress since it provides a detailed look at who uses WordPress and what they do with it — information that can help inform product development decisions across the board.</p>\n\n\n\n<h2>New WordPress.org Team for the Tide Project</h2>\n\n\n\n<p>As announced at WordCamp US, <a href="https://make.wordpress.org/tide/2017/12/02/new-home/">the Tide project is being brought under the WordPress.org umbrella</a> to be managed and developed by the community.</p>\n\n\n\n<p>Tide is a series of automated tests run against every plugin and theme in the directory to help WordPress users make informed decisions about the plugins and themes that they choose to install.</p>\n\n\n\n<p>To get involved in developing Tide, jump into the #tide channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>, and follow <a href="https://make.wordpress.org/tide/">the Tide team blog</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li>If you’re following the development of Gutenberg, or if you want a primer on where it’s headed, then <a href="https://wordpress.tv/2017/12/10/morten-rand-hendriksen-gutenberg-and-the-wordpress-of-tomorrow/">Morten Rand-Hendriksen’s talk from WordCamp US</a> is a must watch.</li>\n    <li>The annual surveys for WordPress <a href="https://wordpressdotorg.polldaddy.com/s/2017-annual-meetup-member-survey">meetup members</a> and <a href="https://wordpressdotorg.polldaddy.com/s/2017-annual-meetup-organizer-survey">meetup organizers</a> are available for people to fill out — if you’re involved in or attend your local meetup group then be sure to complete those.</li>\n    <li>10up has <a href="https://distributorplugin.com/">a brand new plugin in beta</a> that will assist with powerful and flexible content publishing and syndication across WordPress sites.</li>\n    <li><a href="https://make.wordpress.org/community/2017/12/07/should-we-change-the-default-wordcamp-theme-to-campsite-2017/">The Community Team is exploring a move</a> to make the recently developed CampSite theme the default theme for all new WordCamp websites. This is the theme that was developed and employed for <a href="https://2017.europe.wordcamp.org">WordCamp Europe 2017</a>.</li>\n    <li>The team working on the multisite features of WordPress Core has recently published <a href="https://make.wordpress.org/core/2017/12/19/multisite-roadmap-published/">their planned roadmap for development</a>.</li>\n</ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5424";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"WordPress User Survey Data for 2015-2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/news/2017/12/wordpress-user-survey-data-for-2015-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Dec 2017 21:40:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:6:"WrapUp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:6:"survey";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5310";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:321:"For many years, we&#8217;ve invited folks to tell us how they use WordPress by filling out an annual survey. In the past, interesting results from this survey have been shared in the annual State of the Word address. This year, for the first time, the results of the 2017 survey are being published on WordPress [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:64131:"<p>For many years, we&#8217;ve invited folks to tell us how they use WordPress by filling out an annual survey. In the past, interesting results from this survey have been shared in the annual <a href="https://ma.tt/2017/12/state-of-the-word-2017/">State of the Word</a> address. This year, for the first time, the results of the 2017 survey are being published on WordPress News, along with the results of the 2015 and 2016 survey.</p>\n<p>So that information from the survey doesn&#8217;t reveal anything that respondents might consider private, we do not publish a full export of the raw data. We’d love to make this information as accessible as possible, though, so if you have a suggestion for an OS project or tool we can put the data into that allows people to play with it that still protects individual response privacy, please leave a comment on this post!</p>\n<h4>Major Groups</h4>\n<p>This survey features multiple groups, dividing respondents at the first question:</p>\n<blockquote><p>Which of the following best describes how you use WordPress? (<em>Mandatory</em>)</p></blockquote>\n<p>Those who selected &#8220;I&#8217;m a designer or developer, or I work for a company that designs/develops websites; I use WordPress to build websites and/or blogs for others. (This might include theme development, writing plugins, or other custom work.)&#8221; were served questions from what we&#8217;ll call the &#8220;WordPress Professionals&#8221; group.</p>\n<p>This &#8220;WordPress Professionals&#8221; group is further divided into WordPress Company and WordPress Freelancer/Hobbyist groups, based on how the respondent answered the question, &#8220;Which of the following best describes your involvement with WordPress? (2015) / Do you work for a company, or on your own? (2016-17).&#8221;</p>\n<p>Those who selected &#8220;I own, run, or contribute to a blog or website that is built with WordPress.&#8221; were served questions in what we&#8217;re calling the &#8220;WordPress Users&#8221; group.</p>\n<p>The relevant survey group is noted in each table below. In the case of questions that were served to different groups in 2015 but then served to all respondents in 2016 and 2017, the group responses from 2015 have been consolidated into one set of data for easier comparison between years.</p>\n<h4>Survey results</h4>\n<p><a href="#pro">Jump to answers from WordPress Professionals</a></p>\n<p><a href="#user">Jump to answers from WordPress Users</a></p>\n<p><a href="#all">Jump to answers from All Respondents</a></p>\n<p><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></p>\n<h3>Which of the following best describes how you use WordPress? (Mandatory)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td>Number of responses (since this question was mandatory, the number of responses here is the total number for the survey)</td>\n<td>45,995</td>\n<td></td>\n<td>15,585</td>\n<td></td>\n<td>16,029</td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;m a designer or developer, or I work for a company that designs/develops websites; I use WordPress to build websites and/or blogs for others. (This might include theme development, writing plugins, other custom work.)</td>\n<td>26,662</td>\n<td>58%</td>\n<td>8,838</td>\n<td>57%</td>\n<td>9,099</td>\n<td>57%</td>\n</tr>\n<tr>\n<td>I own, run, or contribute to a blog or website that is built with WordPress.</td>\n<td>16,130</td>\n<td>35%</td>\n<td>5,293</td>\n<td>34%</td>\n<td>5,625</td>\n<td>35%</td>\n</tr>\n<tr>\n<td>Neither of the above.</td>\n<td>3,204</td>\n<td>7%</td>\n<td>1,460</td>\n<td>9%</td>\n<td>1,306</td>\n<td>8%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="pro">WordPress Professionals</h2>\n<h3><strong>Which of the following best describes your involvement with WordPress? (Mandatory, 2015) / Do you work for a company, or on your own? (Mandatory, 2016-17)</strong></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>26,699</td>\n<td></td>\n<td>8,838</td>\n<td></td>\n<td>9,101</td>\n<td></td>\n</tr>\n<tr>\n<td>My primary job is working for a company or organization that uses WordPress.</td>\n<td>9,505</td>\n<td>36%</td>\n<td>3,529</td>\n<td>40%</td>\n<td>3,660</td>\n<td>40%</td>\n</tr>\n<tr>\n<td>My primary job is as a self-employed designer or developer that uses WordPress.</td>\n<td>9,310</td>\n<td>35%</td>\n<td>3,188</td>\n<td>36%</td>\n<td>3,440</td>\n<td>38%</td>\n</tr>\n<tr>\n<td>I earn money from part-time or occasional freelance work involving WordPress.</td>\n<td>5,954</td>\n<td>22%</td>\n<td>1,633</td>\n<td>18%</td>\n<td>1,590</td>\n<td>17%</td>\n</tr>\n<tr>\n<td>Work that I do involving WordPress is just a hobby, I don&#8217;t make money from it.</td>\n<td>1,930</td>\n<td>7%</td>\n<td>491</td>\n<td>6%</td>\n<td>411</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>How does your company or organization work with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,342</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for other people, companies, or organizations.</td>\n<td>7,772</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Develop or customize themes.</td>\n<td>5,404</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for my own use.</td>\n<td>4,733</td>\n<td>16%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Host websites for customers.</td>\n<td>4,397</td>\n<td>15%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Develop or distribute plugins.</td>\n<td>3,181</td>\n<td>11%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Provide educational resources to help others to use WordPress.</td>\n<td>1,349</td>\n<td>5%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Sponsor and/or attend WordCamps.</td>\n<td>1,127</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Contribute bug reports and/or patches to WordPress core.</td>\n<td>914</td>\n<td>3%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>182</td>\n<td> 1%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>3,457</td>\n<td></td>\n<td>3,598</td>\n<td></td>\n</tr>\n<tr>\n<td>We make websites for others.</td>\n<td></td>\n<td></td>\n<td>2,695</td>\n<td>24%</td>\n<td>2,722</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>We make websites for ourselves.</td>\n<td></td>\n<td></td>\n<td>2,355</td>\n<td>21%</td>\n<td>2,470</td>\n<td>21%</td>\n</tr>\n<tr>\n<td>We develop or customize themes.</td>\n<td></td>\n<td></td>\n<td>1,866</td>\n<td>16%</td>\n<td>1,910</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>We host websites for others.</td>\n<td></td>\n<td></td>\n<td>1,564</td>\n<td>14%</td>\n<td>1,595</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>We develop or distribute plugins.</td>\n<td></td>\n<td></td>\n<td>1,283</td>\n<td>11%</td>\n<td>1,342</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>We provide educational resources to help others to use WordPress.</td>\n<td></td>\n<td></td>\n<td>581</td>\n<td>5%</td>\n<td>631</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>We sponsor and/or attend WordCamps.</td>\n<td></td>\n<td></td>\n<td>561</td>\n<td>5%</td>\n<td>579</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>We contribute bug reports and/or patches to WordPress core.</td>\n<td></td>\n<td></td>\n<td>444</td>\n<td>4%</td>\n<td>468</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td></td>\n<td></td>\n<td>98</td>\n<td>1%</td>\n<td>96</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>How would you describe the business of your typical client(s)? (2015) / How would you describe the business of your typical client/customer? (2016, 2017)</strong></p>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,154</td>\n<td></td>\n<td>3,317</td>\n<td></td>\n<td>3,498</td>\n<td></td>\n</tr>\n<tr>\n<td>Small business</td>\n<td>6,893</td>\n<td>32%</td>\n<td>2,398</td>\n<td>31%</td>\n<td>2,510</td>\n<td>31%</td>\n</tr>\n<tr>\n<td>Large business or Enterprise</td>\n<td>3,635</td>\n<td>17%</td>\n<td>1,361</td>\n<td>18%</td>\n<td>1,447</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>Non-profit</td>\n<td>2,644</td>\n<td>12%</td>\n<td>934</td>\n<td>12%</td>\n<td>992</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Individual</td>\n<td>2,600</td>\n<td>12%</td>\n<td>888</td>\n<td>12%</td>\n<td>1,022</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Education</td>\n<td>2,344</td>\n<td>11%</td>\n<td>854</td>\n<td>11%</td>\n<td>966</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>Website development (sub-contracting)</td>\n<td>2,065</td>\n<td>10%</td>\n<td>637</td>\n<td>8%</td>\n<td>677</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>Government</td>\n<td>1,410</td>\n<td>6%</td>\n<td>524</td>\n<td>7%</td>\n<td>552</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>127</td>\n<td>1%</td>\n<td>66</td>\n<td>1%</td>\n<td>64</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>How does your company or organization use WordPress when developing websites? (2015) / When making websites, how does your company or organization use WordPress? (2016, 2017)</strong></p>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,078</td>\n<td></td>\n<td>3,369</td>\n<td></td>\n<td>3,552</td>\n<td></td>\n</tr>\n<tr>\n<td>Mostly as a content management system (CMS)</td>\n<td>6,361</td>\n<td>70%</td>\n<td>2,482</td>\n<td>74%</td>\n<td>2,640</td>\n<td>74%</td>\n</tr>\n<tr>\n<td>About half the time as a blogging platform and half the time as a CMS</td>\n<td>1,222</td>\n<td>13%</td>\n<td>370</td>\n<td>11%</td>\n<td>383</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Mostly as a blogging platform</td>\n<td>721</td>\n<td>8%</td>\n<td>137</td>\n<td>4%</td>\n<td>129</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Mostly as an application framework</td>\n<td>629</td>\n<td>7%</td>\n<td>303</td>\n<td>9%</td>\n<td>303</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>145</td>\n<td>2%</td>\n<td>78</td>\n<td>2%</td>\n<td>97</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>How much is your average WordPress site customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,054</td>\n<td></td>\n<td>3,302</td>\n<td></td>\n<td>3,473</td>\n<td></td>\n</tr>\n<tr>\n<td>A lot of work has been done, the front end is unrecognizable, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>5,651</td>\n<td>62%</td>\n<td>2,025</td>\n<td>61%</td>\n<td>2,105</td>\n<td>61%</td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>2,230</td>\n<td>25%</td>\n<td>799</td>\n<td>24%</td>\n<td>905</td>\n<td>26%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as the original download.</td>\n<td>756</td>\n<td>8%</td>\n<td>302</td>\n<td>9%</td>\n<td>298</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything (including the admin) has been customized.</td>\n<td>417</td>\n<td>5%</td>\n<td>177</td>\n<td>5%</td>\n<td>165</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly how many currently active WordPress sites has your company or organization built?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>8,801</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>200 +</td>\n<td>1,074</td>\n<td>12%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>51 &#8211; 200</td>\n<td>1,721</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>21 &#8211; 50</td>\n<td>1,718</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>11 &#8211; 20</td>\n<td>1,284</td>\n<td>15%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>6 &#8211; 10</td>\n<td>1,109</td>\n<td>13%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>2 &#8211; 5</td>\n<td>1,418</td>\n<td>16%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>1</td>\n<td>390</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>0</td>\n<td>87</td>\n<td>1%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>3,358</td>\n<td></td>\n<td>3,540</td>\n<td></td>\n</tr>\n<tr>\n<td>Thousands.</td>\n<td></td>\n<td></td>\n<td>291</td>\n<td>9%</td>\n<td>331</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Hundreds.</td>\n<td></td>\n<td></td>\n<td>770</td>\n<td>23%</td>\n<td>894</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>Fewer than a hundred.</td>\n<td></td>\n<td></td>\n<td>1,144</td>\n<td>34%</td>\n<td>1,177</td>\n<td>33%</td>\n</tr>\n<tr>\n<td>Just a few, but they are really great.</td>\n<td></td>\n<td></td>\n<td>926</td>\n<td>28%</td>\n<td>896</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>Prefer not to answer.</td>\n<td></td>\n<td></td>\n<td>228</td>\n<td>7%</td>\n<td>242</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many person-hours (of your company&#8217;s work) does the typical site take to complete?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>9,091</td>\n<td></td>\n<td>3,353</td>\n<td></td>\n<td>3,522</td>\n<td></td>\n</tr>\n<tr>\n<td>More than 200</td>\n<td>939</td>\n<td>10%</td>\n<td>309</td>\n<td>9%</td>\n<td>325</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>100 &#8211; 200</td>\n<td>1080</td>\n<td>12%</td>\n<td>329</td>\n<td>10%</td>\n<td>367</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>60 &#8211; 100</td>\n<td>1541</td>\n<td>17%</td>\n<td>527</td>\n<td>16%</td>\n<td>513</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>40 &#8211; 60</td>\n<td>1854</td>\n<td>20%</td>\n<td>583</td>\n<td>17%</td>\n<td>620</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>20 &#8211; 40</td>\n<td>2066</td>\n<td>23%</td>\n<td>691</td>\n<td>21%</td>\n<td>685</td>\n<td>19%</td>\n</tr>\n<tr>\n<td>Fewer than 20</td>\n<td>1611</td>\n<td>18%</td>\n<td>479</td>\n<td>14%</td>\n<td>519</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>Prefer not to answer (2016, 2017)</td>\n<td></td>\n<td></td>\n<td>436</td>\n<td>13%</td>\n<td>493</td>\n<td>14%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly what percentage of your company or organization&#8217;s output is based around WordPress (as opposed to other platforms or software)?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Company</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>8,950</td>\n<td></td>\n<td>3,345</td>\n<td></td>\n<td>3,503</td>\n<td></td>\n</tr>\n<tr>\n<td>100 %</td>\n<td>1,089</td>\n<td>12%</td>\n<td>438</td>\n<td>13%</td>\n<td>480</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>90 %</td>\n<td>1,043</td>\n<td>12%</td>\n<td>417</td>\n<td>12%</td>\n<td>459</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>80 %</td>\n<td>955</td>\n<td>11%</td>\n<td>367</td>\n<td>11%</td>\n<td>424</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>70 %</td>\n<td>831</td>\n<td>9%</td>\n<td>305</td>\n<td>9%</td>\n<td>344</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>60 %</td>\n<td>534</td>\n<td>6%</td>\n<td>246</td>\n<td>7%</td>\n<td>226</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>50 %</td>\n<td>973</td>\n<td>11%</td>\n<td>335</td>\n<td>10%</td>\n<td>338</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>40 %</td>\n<td>613</td>\n<td>7%</td>\n<td>245</td>\n<td>7%</td>\n<td>202</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>30 %</td>\n<td>877</td>\n<td>10%</td>\n<td>335</td>\n<td>10%</td>\n<td>310</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>20 %</td>\n<td>806</td>\n<td>9%</td>\n<td>242</td>\n<td>7%</td>\n<td>280</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>10 %</td>\n<td>1,039</td>\n<td>12%</td>\n<td>344</td>\n<td>10%</td>\n<td>348</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>0 %</td>\n<td>190</td>\n<td>2%</td>\n<td>72</td>\n<td>2%</td>\n<td>92</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>In which of the following ways do you work with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>17,009</td>\n<td></td>\n<td>5,221</td>\n<td></td>\n<td>5,425</td>\n<td></td>\n</tr>\n<tr>\n<td>Build/design and/or maintain websites or blogs for other people, companies, or organizations</td>\n<td>15,342</td>\n<td>34%</td>\n<td>4,795</td>\n<td>34%</td>\n<td>5,064</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Develop or customize themes</td>\n<td>10,549</td>\n<td>24%</td>\n<td>2,997</td>\n<td>21%</td>\n<td>3,021</td>\n<td>20%</td>\n</tr>\n<tr>\n<td>Host websites for customers</td>\n<td>8,142</td>\n<td>18%</td>\n<td>2,466</td>\n<td>17%</td>\n<td>2,728</td>\n<td>18%</td>\n</tr>\n<tr>\n<td>Develop or distribute plugins</td>\n<td>4,125</td>\n<td>9%</td>\n<td>1,395</td>\n<td>10%</td>\n<td>1,416</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Provide educational resources to help others to use WordPress</td>\n<td>3,276</td>\n<td>7%</td>\n<td>1,187</td>\n<td>8%</td>\n<td>1,308</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Sponsor and/or attend WordCamps</td>\n<td>1,559</td>\n<td>4%</td>\n<td>648</td>\n<td>5%</td>\n<td>724</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>Contribute bug reports and/or patches to WordPress core</td>\n<td>1,107</td>\n<td>2%</td>\n<td>381</td>\n<td>3%</td>\n<td>393</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>389</td>\n<td>1%</td>\n<td>243</td>\n<td>2%</td>\n<td>299</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3>How would you describe the business of your typical client(s)?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,863</td>\n<td></td>\n<td>5,151</td>\n<td></td>\n<td>5,353</td>\n<td></td>\n</tr>\n<tr>\n<td>Small business</td>\n<td>14,185</td>\n<td>35%</td>\n<td>4,342</td>\n<td>35%</td>\n<td>4,622</td>\n<td>36%</td>\n</tr>\n<tr>\n<td>Individual</td>\n<td>8,513</td>\n<td>21%</td>\n<td>2,581</td>\n<td>21%</td>\n<td>2,583</td>\n<td>20%</td>\n</tr>\n<tr>\n<td>Non-profit</td>\n<td>6,585</td>\n<td>16%</td>\n<td>2,004</td>\n<td>16%</td>\n<td>2,113</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>Website development (sub-contracting)</td>\n<td>4,301</td>\n<td>11%</td>\n<td>1,258</td>\n<td>10%</td>\n<td>1,216</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Education</td>\n<td>3,458</td>\n<td>8%</td>\n<td>1,049</td>\n<td>8%</td>\n<td>1,139</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Large business or Enterprise</td>\n<td>2,391</td>\n<td>6%</td>\n<td>805</td>\n<td>6%</td>\n<td>857</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Government</td>\n<td>1,150</td>\n<td>3%</td>\n<td>300</td>\n<td>2%</td>\n<td>329</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>173</td>\n<td>0%</td>\n<td>101</td>\n<td>1%</td>\n<td>99</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>How do you use WordPress in your development?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,768</td>\n<td></td>\n<td>5,145</td>\n<td></td>\n<td>5,372</td>\n<td></td>\n</tr>\n<tr>\n<td>Mostly as a content management system (CMS)</td>\n<td>11,754</td>\n<td>70%</td>\n<td>3,641</td>\n<td>71%</td>\n<td>3,959</td>\n<td>74%</td>\n</tr>\n<tr>\n<td>About half the time as a blogging platform and half the time as a CMS</td>\n<td>2,825</td>\n<td>17%</td>\n<td>812</td>\n<td>16%</td>\n<td>721</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>Mostly as an application framework</td>\n<td>1,012</td>\n<td>6%</td>\n<td>343</td>\n<td>7%</td>\n<td>344</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Mostly as a blogging platform</td>\n<td>992</td>\n<td>6%</td>\n<td>246</td>\n<td>5%</td>\n<td>226</td>\n<td>4%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>185</td>\n<td>1%</td>\n<td>105</td>\n<td>2%</td>\n<td>122</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3>How much is your average WordPress site customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,699</td>\n<td></td>\n<td>5,131</td>\n<td></td>\n<td>5,317</td>\n<td></td>\n</tr>\n<tr>\n<td>A lot of work has been done, the front end is unrecognizable, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>9,457</td>\n<td>57%</td>\n<td>2,837</td>\n<td>55%</td>\n<td>2,998</td>\n<td>56%</td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>5,526</td>\n<td>33%</td>\n<td>1,694</td>\n<td>33%</td>\n<td>1,781</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as the original download.</td>\n<td>977</td>\n<td>6%</td>\n<td>341</td>\n<td>7%</td>\n<td>310</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything (including the admin) has been customized.</td>\n<td>739</td>\n<td>4%</td>\n<td>261</td>\n<td>5%</td>\n<td>228</td>\n<td>4%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many currently active WordPress sites have you built? (2015) / Roughly how many currently active WordPress sites have you built? (2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,690</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>200 +</td>\n<td>514</td>\n<td>3%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>51 &#8211; 200</td>\n<td>1,728</td>\n<td>10%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>21 &#8211; 50</td>\n<td>3,000</td>\n<td>18%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>11 &#8211; 20</td>\n<td>3,146</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>6 &#8211; 10</td>\n<td>3,405</td>\n<td>20%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>2 &#8211; 5</td>\n<td>3,838</td>\n<td>23%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>1</td>\n<td>698</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>0</td>\n<td>361</td>\n<td>2%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>5,165</td>\n<td></td>\n<td>5367</td>\n<td></td>\n</tr>\n<tr>\n<td>Thousands.</td>\n<td></td>\n<td></td>\n<td>110</td>\n<td>2%</td>\n<td>104</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Hundreds.</td>\n<td></td>\n<td></td>\n<td>603</td>\n<td>12%</td>\n<td>713</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>Fewer than a hundred.</td>\n<td></td>\n<td></td>\n<td>2,264</td>\n<td>44%</td>\n<td>2,457</td>\n<td>46%</td>\n</tr>\n<tr>\n<td>Just a few, but they are really great.</td>\n<td></td>\n<td></td>\n<td>1,871</td>\n<td>36%</td>\n<td>1,813</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Prefer not to answer.</td>\n<td></td>\n<td></td>\n<td>319</td>\n<td>6%</td>\n<td>280</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>Roughly what percentage of your working time is spent working with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,658</td>\n<td></td>\n<td>5,039</td>\n<td></td>\n<td>5,241</td>\n<td></td>\n</tr>\n<tr>\n<td>100 %</td>\n<td>949</td>\n<td>6%</td>\n<td>459</td>\n<td>9%</td>\n<td>461</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>90 %</td>\n<td>1,300</td>\n<td>8%</td>\n<td>527</td>\n<td>10%</td>\n<td>540</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>80 %</td>\n<td>1,784</td>\n<td>11%</td>\n<td>637</td>\n<td>13%</td>\n<td>711</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>70 %</td>\n<td>1,850</td>\n<td>11%</td>\n<td>608</td>\n<td>12%</td>\n<td>627</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>60 %</td>\n<td>1,313</td>\n<td>8%</td>\n<td>438</td>\n<td>9%</td>\n<td>465</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>50 %</td>\n<td>2,095</td>\n<td>13%</td>\n<td>612</td>\n<td>12%</td>\n<td>639</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>40 %</td>\n<td>1,438</td>\n<td>9%</td>\n<td>391</td>\n<td>8%</td>\n<td>384</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>30 %</td>\n<td>2,076</td>\n<td>12%</td>\n<td>530</td>\n<td>11%</td>\n<td>511</td>\n<td>10%</td>\n</tr>\n<tr>\n<td>20 %</td>\n<td>1,743</td>\n<td>10%</td>\n<td>445</td>\n<td>9%</td>\n<td>429</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>10 %</td>\n<td>1,819</td>\n<td>11%</td>\n<td>342</td>\n<td>7%</td>\n<td>419</td>\n<td>8%</td>\n</tr>\n<tr>\n<td>0 %</td>\n<td>291</td>\n<td>2%</td>\n<td>52</td>\n<td>1%</td>\n<td>55</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>How many hours of your work does the typical site take to complete? (2015) / How many hours of work does your typical WordPress project take to launch? (2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Freelancer/Hobbyist</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>16,670</td>\n<td></td>\n<td>5,164</td>\n<td></td>\n<td>5,378</td>\n<td></td>\n</tr>\n<tr>\n<td>More than 200</td>\n<td>503</td>\n<td>3%</td>\n<td>222</td>\n<td>4%</td>\n<td>245</td>\n<td>5%</td>\n</tr>\n<tr>\n<td>100 &#8211; 200</td>\n<td>973</td>\n<td>6%</td>\n<td>386</td>\n<td>7%</td>\n<td>393</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>60 &#8211; 100</td>\n<td>2,277</td>\n<td>14%</td>\n<td>788</td>\n<td>15%</td>\n<td>815</td>\n<td>15%</td>\n</tr>\n<tr>\n<td>40 &#8211; 60</td>\n<td>3,896</td>\n<td>23%</td>\n<td>1,153</td>\n<td>22%</td>\n<td>1,216</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>20 &#8211; 40</td>\n<td>6,068</td>\n<td>36%</td>\n<td>1,487</td>\n<td>29%</td>\n<td>1,582</td>\n<td>29%</td>\n</tr>\n<tr>\n<td>Fewer than 20</td>\n<td>2,953</td>\n<td>18%</td>\n<td>712</td>\n<td>14%</td>\n<td>751</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>418</td>\n<td>8%</td>\n<td>376</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>Which of the following have you done with WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" /> </colgroup>\n</table>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional (Company/Freelancer/Hobbyist)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>20,687</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I’ve written a theme from scratch.</td>\n<td>11,894</td>\n<td>25%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I’ve written a plugin.</td>\n<td>9,719</td>\n<td>21%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve answered a question in the WordPress forum.</td>\n<td>8,805</td>\n<td>19%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve attended a WordPress meetup.</td>\n<td>4,062</td>\n<td>9%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve submitted a WordPress bug report.</td>\n<td>4,062</td>\n<td>9%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve attended a WordCamp.</td>\n<td>3,571</td>\n<td>8%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve contributed to WordPress documentation.</td>\n<td>1,778</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>1,739</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;ve contributed a WordPress core patch.</td>\n<td>1,055</td>\n<td>2%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the best thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>22,718</td>\n<td></td>\n<td>7,891</td>\n<td></td>\n<td>8,267</td>\n<td></td>\n</tr>\n<tr>\n<td>Easy/simple/user-friendly</td>\n<td>9,450</td>\n<td>42%</td>\n<td>3,454</td>\n<td>44%</td>\n<td>3,852</td>\n<td>47%</td>\n</tr>\n<tr>\n<td>Customizable/extensible/modular/plugins/themes</td>\n<td>8,601</td>\n<td>38%</td>\n<td>3,116</td>\n<td>39%</td>\n<td>3,555</td>\n<td>43%</td>\n</tr>\n<tr>\n<td>Community/support/documentation/help</td>\n<td>3,806</td>\n<td>17%</td>\n<td>1,211</td>\n<td>15%</td>\n<td>1,340</td>\n<td>16%</td>\n</tr>\n<tr>\n<td>Free/open/open source</td>\n<td>2,291</td>\n<td>10%</td>\n<td>802</td>\n<td>10%</td>\n<td>908</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Popular/ubiquitous</td>\n<td>249</td>\n<td>1%</td>\n<td>86</td>\n<td>1%</td>\n<td>187</td>\n<td>2%</td>\n</tr>\n</tbody>\n</table>\n<h3> What&#8217;s the most frustrating thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>21,144</td>\n<td></td>\n<td>7,294</td>\n<td></td>\n<td>7,691</td>\n<td></td>\n</tr>\n<tr>\n<td>Plugins &amp; themes (abandoned/conflicts/coding standards)</td>\n<td>6,122</td>\n<td>29%</td>\n<td>2,194</td>\n<td>30%</td>\n<td>2,187</td>\n<td>28%</td>\n</tr>\n<tr>\n<td>Security/vulnerabilities/hacks</td>\n<td>2,321</td>\n<td>11%</td>\n<td>712</td>\n<td>10%</td>\n<td>829</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Updates</td>\n<td>1,544</td>\n<td>7%</td>\n<td>422</td>\n<td>6%</td>\n<td>508</td>\n<td>7%</td>\n</tr>\n<tr>\n<td>Nothing/I don&#8217;t know/can&#8217;t think of anything</td>\n<td>1,276</td>\n<td>6%</td>\n<td>344</td>\n<td>5%</td>\n<td>476</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Speed/performance/slow/heavy</td>\n<td>1,196</td>\n<td>6%</td>\n<td>644</td>\n<td>9%</td>\n<td>516</td>\n<td>7%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress is as good as, or better than, its main competitors.</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress Professional</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (this question was not asked in the 2015 survey)</td>\n<td></td>\n<td></td>\n<td>8,672</td>\n<td></td>\n<td>9,059</td>\n<td></td>\n</tr>\n<tr>\n<td>Agree</td>\n<td></td>\n<td></td>\n<td>7551</td>\n<td>87%</td>\n<td>7836</td>\n<td>87%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>754</td>\n<td>9%</td>\n<td>795</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Disagree</td>\n<td></td>\n<td></td>\n<td>370</td>\n<td>4%</td>\n<td>428</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="user">WordPress Users</h2>\n<h3>Which of the following describes how you use WordPress?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>15,169</td>\n<td></td>\n<td>5,043</td>\n<td></td>\n<td>5,521</td>\n<td></td>\n</tr>\n<tr>\n<td>My personal blog (or blogs) uses WordPress.</td>\n<td>9,395</td>\n<td>36%</td>\n<td>3,117</td>\n<td>36%</td>\n<td>3,424</td>\n<td>36%</td>\n</tr>\n<tr>\n<td>My company or organization&#8217;s website is built with WordPress software.</td>\n<td>7,480</td>\n<td>29%</td>\n<td>2,519</td>\n<td>29%</td>\n<td>2,841</td>\n<td>30%</td>\n</tr>\n<tr>\n<td>I have a hobby or side project that has a website built with WordPress.</td>\n<td>6,112</td>\n<td>23%</td>\n<td>1,973</td>\n<td>23%</td>\n<td>2,200</td>\n<td>23%</td>\n</tr>\n<tr>\n<td>I write (or otherwise work) for an online publication that uses WordPress.</td>\n<td>2,329</td>\n<td>9%</td>\n<td>806</td>\n<td>9%</td>\n<td>821</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>872</td>\n<td>3%</td>\n<td>234</td>\n<td>3%</td>\n<td>288</td>\n<td>3%</td>\n</tr>\n</tbody>\n</table>\n<h3>Who installed your WordPress website?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>15,055</td>\n<td></td>\n<td>5,020</td>\n<td></td>\n<td>5,523</td>\n<td></td>\n</tr>\n<tr>\n<td>I did.</td>\n<td>11,216</td>\n<td>66%</td>\n<td>3,659</td>\n<td>73%</td>\n<td>4,129</td>\n<td>75%</td>\n</tr>\n<tr>\n<td>My hosting provider</td>\n<td>2,236</td>\n<td>13%</td>\n<td>667</td>\n<td>13%</td>\n<td>767</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>An external company</td>\n<td>909</td>\n<td>5%</td>\n<td>182</td>\n<td>4%</td>\n<td>178</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>An internal web person/team or a colleague</td>\n<td>874</td>\n<td>5%</td>\n<td>178</td>\n<td>4%</td>\n<td>191</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>A friend or family member</td>\n<td>787</td>\n<td>5%</td>\n<td>192</td>\n<td>4%</td>\n<td>172</td>\n<td>3%</td>\n</tr>\n<tr>\n<td>I don&#8217;t know</td>\n<td>502</td>\n<td>3%</td>\n<td>145</td>\n<td>3%</td>\n<td>87</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>345</td>\n<td>2%</td>\n<td>n/a</td>\n<td>n/a</td>\n<td>n/a</td>\n<td>n/a</td>\n</tr>\n</tbody>\n</table>\n<h3>How much has the site been customized from the original WordPress installation?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>14,789</td>\n<td></td>\n<td>4,997</td>\n<td></td>\n<td>5,494</td>\n<td></td>\n</tr>\n<tr>\n<td>There&#8217;s a different theme and some plugins have been added.</td>\n<td>7,465</td>\n<td>50%</td>\n<td>2,337</td>\n<td>47%</td>\n<td>2,660</td>\n<td>48%</td>\n</tr>\n<tr>\n<td>A lot of work has been done, the site itself is unrecognizable from the original theme, but the Dashboard still looks like the usual WordPress interface.</td>\n<td>4,715</td>\n<td>32%</td>\n<td>1,707</td>\n<td>34%</td>\n<td>1,872</td>\n<td>34%</td>\n</tr>\n<tr>\n<td>Not at all, it&#8217;s still pretty much the same as it was when I started out.</td>\n<td>1,841</td>\n<td>12%</td>\n<td>635</td>\n<td>13%</td>\n<td>673</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>You&#8217;d never know this was a WordPress installation, everything has been customized.</td>\n<td>768</td>\n<td>5%</td>\n<td>321</td>\n<td>6%</td>\n<td>290</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the best thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>14,328</td>\n<td></td>\n<td>4,613</td>\n<td></td>\n<td>5,076</td>\n<td></td>\n</tr>\n<tr>\n<td>Easy/simple/user-friendly</td>\n<td>7,391</td>\n<td>52%</td>\n<td>2,276</td>\n<td>49%</td>\n<td>2,511</td>\n<td>49%</td>\n</tr>\n<tr>\n<td>Customizable/extensible/modular/plugins/themes</td>\n<td>4,219</td>\n<td>29%</td>\n<td>1,569</td>\n<td>34%</td>\n<td>1,632</td>\n<td>32%</td>\n</tr>\n<tr>\n<td>Free/open/open source</td>\n<td>1,586</td>\n<td>11%</td>\n<td>493</td>\n<td>11%</td>\n<td>538</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>Community/support/documentation/help</td>\n<td>1,085</td>\n<td>8%</td>\n<td>388</td>\n<td>8%</td>\n<td>458</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Popular/ubiquitous</td>\n<td>223</td>\n<td>2%</td>\n<td>74</td>\n<td>2%</td>\n<td>48</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>What&#8217;s the most frustrating thing about WordPress?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td>13,681</td>\n<td></td>\n<td>4,287</td>\n<td></td>\n<td>4,758</td>\n<td></td>\n</tr>\n<tr>\n<td>Plugins &amp; themes (abandoned/conflicts/coding standards)</td>\n<td>2,531</td>\n<td>19%</td>\n<td>1,183</td>\n<td>28%</td>\n<td>1,300</td>\n<td>27%</td>\n</tr>\n<tr>\n<td>Customization/design/look/template</td>\n<td>1,273</td>\n<td>9%</td>\n<td>381</td>\n<td>9%</td>\n<td>408</td>\n<td>9%</td>\n</tr>\n<tr>\n<td>Code/coding/PHP</td>\n<td>931</td>\n<td>7%</td>\n<td>306</td>\n<td>7%</td>\n<td>277</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Updates</td>\n<td>926</td>\n<td>7%</td>\n<td>209</td>\n<td>5%</td>\n<td>296</td>\n<td>6%</td>\n</tr>\n<tr>\n<td>Security/vulnerabilites/hacks</td>\n<td>785</td>\n<td>6%</td>\n<td>255</td>\n<td>6%</td>\n<td>292</td>\n<td>6%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress is as good as, or better than, its main competitors.</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: WordPress User</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>5,026</td>\n<td></td>\n<td>5,498</td>\n<td></td>\n</tr>\n<tr>\n<td>Agree</td>\n<td></td>\n<td></td>\n<td>4,038</td>\n<td>80%</td>\n<td>4,462</td>\n<td>81%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>737</td>\n<td>15%</td>\n<td>782</td>\n<td>14%</td>\n</tr>\n<tr>\n<td>Disagree</td>\n<td></td>\n<td></td>\n<td>254</td>\n<td>5%</td>\n<td>255</td>\n<td>5%</td>\n</tr>\n</tbody>\n</table>\n<h2 id="all">All Respondents</h2>\n<h3>Can you (truthfully!) say &#8220;I make my living from WordPress&#8221;?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups from 2015; this question was not broken out by group in 2016-2017)</td>\n<td>42,236</td>\n<td></td>\n<td>14,906</td>\n<td></td>\n<td>15,616</td>\n<td></td>\n</tr>\n<tr>\n<td>Not really, but I do get some or all of my income as a result of working with WordPress.</td>\n<td>16,607</td>\n<td>39%</td>\n<td>5,408</td>\n<td>36%</td>\n<td>5,702</td>\n<td>37%</td>\n</tr>\n<tr>\n<td>Yes.</td>\n<td>9,635</td>\n<td>23%</td>\n<td>4,791</td>\n<td>32%</td>\n<td>5,033</td>\n<td>32%</td>\n</tr>\n<tr>\n<td>No.</td>\n<td>15,995</td>\n<td>38%</td>\n<td>4,713</td>\n<td>32%</td>\n<td>4,882</td>\n<td>31%</td>\n</tr>\n</tbody>\n</table>\n<h3>Which devices do you access WordPress on?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups from 2015; this question was not broken out by group in 2016-2017)</td>\n<td>42,433</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Web</td>\n<td>40,503</td>\n<td>95%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Android phone</td>\n<td>15,396</td>\n<td>36%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>iPhone</td>\n<td>12,353</td>\n<td>29%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>iPad</td>\n<td>11,748</td>\n<td>28%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Android tablet</td>\n<td>9,223</td>\n<td>22%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Desktop app, like MarsEdit</td>\n<td>6,018</td>\n<td>14%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td>1837</td>\n<td>4%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (this question was not broken out by group in 2016-2017)</td>\n<td></td>\n<td></td>\n<td>14,840</td>\n<td></td>\n<td>15,597</td>\n<td></td>\n</tr>\n<tr>\n<td>Web browser on a desktop or laptop</td>\n<td></td>\n<td></td>\n<td>14,160</td>\n<td>54%</td>\n<td>15,052</td>\n<td>55%</td>\n</tr>\n<tr>\n<td>Web browser on a mobile device (tablet or phone)</td>\n<td></td>\n<td></td>\n<td>7,952</td>\n<td>30%</td>\n<td>8,248</td>\n<td>30%</td>\n</tr>\n<tr>\n<td>An app on a mobile device (table or phone)</td>\n<td></td>\n<td></td>\n<td>3,309</td>\n<td>13%</td>\n<td>3,311</td>\n<td>12%</td>\n</tr>\n<tr>\n<td>A desktop app like MarsEdit</td>\n<td></td>\n<td></td>\n<td>517</td>\n<td>2%</td>\n<td>498</td>\n<td>2%</td>\n</tr>\n<tr>\n<td>Other Option</td>\n<td></td>\n<td></td>\n<td>282</td>\n<td>1%</td>\n<td>240</td>\n<td>1%</td>\n</tr>\n</tbody>\n</table>\n<h3>WordPress now updates minor &amp; security releases automatically for you. Check all that apply: (question not asked in 2016, 2017)</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="36" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (combination of all three groups)</td>\n<td>39,726</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I love auto-updates.</td>\n<td>17,367</td>\n<td>44%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto-updates for plugins.</td>\n<td>12,796</td>\n<td>32%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Initially, I was nervous about auto updates.</td>\n<td>11,868</td>\n<td>30%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Auto updates still make me nervous.</td>\n<td>10,809</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Auto updates don&#8217;t make me nervous now.</td>\n<td>10,708</td>\n<td>27%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto-updates for themes.</td>\n<td>10,449</td>\n<td>26%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I&#8217;d like to see auto updates for major versions of WordPress.</td>\n<td>10,225</td>\n<td>26%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>This is the first I&#8217;ve heard of auto-updates.</td>\n<td>8,660</td>\n<td>22%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>I hate auto-updates.</td>\n<td>3,293</td>\n<td>8%</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n</tbody>\n</table>\n<h3>What is your gender?<a href="#text">*</a></h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All respondents (This question was not asked in the 2015 survey.)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>13,953</td>\n<td></td>\n<td>14,680</td>\n<td></td>\n</tr>\n<tr>\n<td>Male</td>\n<td></td>\n<td></td>\n<td>10,978</td>\n<td>78.68%</td>\n<td>11,570</td>\n<td>78.81%</td>\n</tr>\n<tr>\n<td>Female</td>\n<td></td>\n<td></td>\n<td>2,340</td>\n<td>16.77%</td>\n<td>2,511</td>\n<td>21.70%</td>\n</tr>\n<tr>\n<td>Prefer not to answer</td>\n<td></td>\n<td></td>\n<td>601</td>\n<td>4.31%</td>\n<td>562</td>\n<td>3.83%</td>\n</tr>\n<tr>\n<td>Transgender</td>\n<td></td>\n<td></td>\n<td>11</td>\n<td>0.08%</td>\n<td>8</td>\n<td>0.05%</td>\n</tr>\n<tr>\n<td>Nonbinary</td>\n<td></td>\n<td></td>\n<td>8</td>\n<td>0.06%</td>\n<td>17</td>\n<td>0.12%</td>\n</tr>\n<tr>\n<td>Genderqueer</td>\n<td></td>\n<td></td>\n<td>4</td>\n<td>0.03%</td>\n<td>3</td>\n<td>0.02%</td>\n</tr>\n<tr>\n<td>Androgynous</td>\n<td></td>\n<td></td>\n<td>6</td>\n<td>0.04%</td>\n<td>5</td>\n<td>0.03%</td>\n</tr>\n<tr>\n<td>Fluid</td>\n<td></td>\n<td></td>\n<td>3</td>\n<td>0.02%</td>\n<td>4</td>\n<td>0.03%</td>\n</tr>\n<tr>\n<td>Demimale</td>\n<td></td>\n<td></td>\n<td>2</td>\n<td>0.01%</td>\n<td>0</td>\n<td>0</td>\n</tr>\n</tbody>\n</table>\n<h3>Where are you located?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All respondents (This question was not asked in the 2015 survey.)</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses</td>\n<td></td>\n<td></td>\n<td>14,562</td>\n<td></td>\n<td>15,343</td>\n<td></td>\n</tr>\n<tr>\n<td>United States</td>\n<td></td>\n<td></td>\n<td>3,770</td>\n<td>25.89%</td>\n<td>4,067</td>\n<td>26.51%</td>\n</tr>\n<tr>\n<td>India</td>\n<td></td>\n<td></td>\n<td>1,456</td>\n<td>10.00%</td>\n<td>1,424</td>\n<td>9.28%</td>\n</tr>\n<tr>\n<td>United Kingdom</td>\n<td></td>\n<td></td>\n<td>810</td>\n<td>5.56%</td>\n<td>900</td>\n<td>5.87%</td>\n</tr>\n<tr>\n<td>Germany</td>\n<td></td>\n<td></td>\n<td>555</td>\n<td>3.81%</td>\n<td>729</td>\n<td>4.75%</td>\n</tr>\n<tr>\n<td>Canada</td>\n<td></td>\n<td></td>\n<td>511</td>\n<td>3.51%</td>\n<td>599</td>\n<td>3.90%</td>\n</tr>\n<tr>\n<td>Australia</td>\n<td></td>\n<td></td>\n<td>389</td>\n<td>2.67%</td>\n<td>460</td>\n<td>3.00%</td>\n</tr>\n<tr>\n<td>Italy</td>\n<td></td>\n<td></td>\n<td>298</td>\n<td>2.05%</td>\n<td>356</td>\n<td>2.32%</td>\n</tr>\n<tr>\n<td>Netherlands</td>\n<td></td>\n<td></td>\n<td>343</td>\n<td>2.36%</td>\n<td>350</td>\n<td>2.28%</td>\n</tr>\n<tr>\n<td>France</td>\n<td></td>\n<td></td>\n<td>232</td>\n<td>1.59%</td>\n<td>283</td>\n<td>1.84%</td>\n</tr>\n<tr>\n<td>Bangladesh</td>\n<td></td>\n<td></td>\n<td>257</td>\n<td>1.76%</td>\n<td>263</td>\n<td>1.71%</td>\n</tr>\n<tr>\n<td>Spain</td>\n<td></td>\n<td></td>\n<td>271</td>\n<td>1.86%</td>\n<td>252</td>\n<td>1.64%</td>\n</tr>\n<tr>\n<td>Brazil</td>\n<td></td>\n<td></td>\n<td>239</td>\n<td>1.64%</td>\n<td>251</td>\n<td>1.64%</td>\n</tr>\n<tr>\n<td>Pakistan</td>\n<td></td>\n<td></td>\n<td>254</td>\n<td>1.74%</td>\n<td>240</td>\n<td>1.56%</td>\n</tr>\n<tr>\n<td>Indonesia</td>\n<td></td>\n<td></td>\n<td>230</td>\n<td>1.58%</td>\n<td>226</td>\n<td>1.47%</td>\n</tr>\n<tr>\n<td>Iran, Islamic Republic of</td>\n<td></td>\n<td></td>\n<td>190</td>\n<td>1.30%</td>\n<td>173</td>\n<td>1.13%</td>\n</tr>\n<tr>\n<td>Sweden</td>\n<td></td>\n<td></td>\n<td>144</td>\n<td>0.99%</td>\n<td>173</td>\n<td>1.13%</td>\n</tr>\n<tr>\n<td>Nigeria</td>\n<td></td>\n<td></td>\n<td>196</td>\n<td>1.35%</td>\n<td>172</td>\n<td>1.12%</td>\n</tr>\n<tr>\n<td>South Africa</td>\n<td></td>\n<td></td>\n<td>193</td>\n<td>1.33%</td>\n<td>172</td>\n<td>1.12%</td>\n</tr>\n<tr>\n<td>Russian Federation</td>\n<td></td>\n<td></td>\n<td>181</td>\n<td>1.24%</td>\n<td>151</td>\n<td>0.98%</td>\n</tr>\n<tr>\n<td>Poland</td>\n<td></td>\n<td></td>\n<td>129</td>\n<td>0.89%</td>\n<td>137</td>\n<td>0.89%</td>\n</tr>\n<tr>\n<td>Romania</td>\n<td></td>\n<td></td>\n<td>144</td>\n<td>0.99%</td>\n<td>132</td>\n<td>0.86%</td>\n</tr>\n<tr>\n<td>Switzerland</td>\n<td></td>\n<td></td>\n<td>122</td>\n<td>0.84%</td>\n<td>130</td>\n<td>0.85%</td>\n</tr>\n<tr>\n<td>Philippines</td>\n<td></td>\n<td></td>\n<td>92</td>\n<td>0.63%</td>\n<td>125</td>\n<td>0.81%</td>\n</tr>\n<tr>\n<td>China</td>\n<td></td>\n<td></td>\n<td>136</td>\n<td>0.93%</td>\n<td>123</td>\n<td>0.80%</td>\n</tr>\n<tr>\n<td>Austria</td>\n<td></td>\n<td></td>\n<td>89</td>\n<td>0.61%</td>\n<td>122</td>\n<td>0.80%</td>\n</tr>\n<tr>\n<td>Ukraine</td>\n<td></td>\n<td></td>\n<td>105</td>\n<td>0.72%</td>\n<td>118</td>\n<td>0.77%</td>\n</tr>\n<tr>\n<td>Denmark</td>\n<td></td>\n<td></td>\n<td>107</td>\n<td>0.73%</td>\n<td>114</td>\n<td>0.74%</td>\n</tr>\n<tr>\n<td>Greece</td>\n<td></td>\n<td></td>\n<td>120</td>\n<td>0.82%</td>\n<td>114</td>\n<td>0.74%</td>\n</tr>\n<tr>\n<td>Portugal</td>\n<td></td>\n<td></td>\n<td>94</td>\n<td>0.65%</td>\n<td>109</td>\n<td>0.71%</td>\n</tr>\n<tr>\n<td>Vietnam</td>\n<td></td>\n<td></td>\n<td>101</td>\n<td>0.69%</td>\n<td>108</td>\n<td>0.70%</td>\n</tr>\n<tr>\n<td>Mexico</td>\n<td></td>\n<td></td>\n<td>94</td>\n<td>0.65%</td>\n<td>105</td>\n<td>0.68%</td>\n</tr>\n<tr>\n<td>Nepal</td>\n<td></td>\n<td></td>\n<td>76</td>\n<td>0.52%</td>\n<td>97</td>\n<td>0.63%</td>\n</tr>\n<tr>\n<td>Ireland</td>\n<td></td>\n<td></td>\n<td>72</td>\n<td>0.49%</td>\n<td>94</td>\n<td>0.61%</td>\n</tr>\n<tr>\n<td>Israel</td>\n<td></td>\n<td></td>\n<td>78</td>\n<td>0.54%</td>\n<td>94</td>\n<td>0.61%</td>\n</tr>\n<tr>\n<td>New Zealand</td>\n<td></td>\n<td></td>\n<td>77</td>\n<td>0.53%</td>\n<td>91</td>\n<td>0.59%</td>\n</tr>\n<tr>\n<td>Finland</td>\n<td></td>\n<td></td>\n<td>63</td>\n<td>0.43%</td>\n<td>90</td>\n<td>0.59%</td>\n</tr>\n<tr>\n<td>Turkey</td>\n<td></td>\n<td></td>\n<td>91</td>\n<td>0.62%</td>\n<td>86</td>\n<td>0.56%</td>\n</tr>\n<tr>\n<td>Malaysia</td>\n<td></td>\n<td></td>\n<td>91</td>\n<td>0.62%</td>\n<td>81</td>\n<td>0.53%</td>\n</tr>\n<tr>\n<td>Belgium</td>\n<td></td>\n<td></td>\n<td>84</td>\n<td>0.58%</td>\n<td>79</td>\n<td>0.51%</td>\n</tr>\n<tr>\n<td>Norway</td>\n<td></td>\n<td></td>\n<td>66</td>\n<td>0.45%</td>\n<td>79</td>\n<td>0.51%</td>\n</tr>\n<tr>\n<td>Argentina</td>\n<td></td>\n<td></td>\n<td>65</td>\n<td>0.45%</td>\n<td>76</td>\n<td>0.50%</td>\n</tr>\n<tr>\n<td>Bulgaria</td>\n<td></td>\n<td></td>\n<td>74</td>\n<td>0.51%</td>\n<td>72</td>\n<td>0.47%</td>\n</tr>\n<tr>\n<td>Japan</td>\n<td></td>\n<td></td>\n<td>61</td>\n<td>0.42%</td>\n<td>68</td>\n<td>0.44%</td>\n</tr>\n<tr>\n<td>Thailand</td>\n<td></td>\n<td></td>\n<td>69</td>\n<td>0.47%</td>\n<td>67</td>\n<td>0.44%</td>\n</tr>\n<tr>\n<td>Czech Republic</td>\n<td></td>\n<td></td>\n<td>76</td>\n<td>0.52%</td>\n<td>66</td>\n<td>0.43%</td>\n</tr>\n<tr>\n<td>Serbia</td>\n<td></td>\n<td></td>\n<td>89</td>\n<td>0.61%</td>\n<td>63</td>\n<td>0.41%</td>\n</tr>\n<tr>\n<td>Kenya</td>\n<td></td>\n<td></td>\n<td>58</td>\n<td>0.40%</td>\n<td>62</td>\n<td>0.40%</td>\n</tr>\n<tr>\n<td>Colombia</td>\n<td></td>\n<td></td>\n<td>39</td>\n<td>0.27%</td>\n<td>59</td>\n<td>0.38%</td>\n</tr>\n<tr>\n<td>Egypt</td>\n<td></td>\n<td></td>\n<td>40</td>\n<td>0.27%</td>\n<td>52</td>\n<td>0.34%</td>\n</tr>\n</tbody>\n</table>\n<h3>What is your age?</h3>\n<table dir="ltr" border="1" cellspacing="0" cellpadding="0">\n<colgroup>\n<col width="554" />\n<col width="47" />\n<col width="36" />\n<col width="47" />\n<col width="51" />\n<col width="47" />\n<col width="51" /></colgroup>\n<tbody>\n<tr>\n<td></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2015</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2016</strong></td>\n<td style="text-align: center" colspan="2" rowspan="1"><strong>2017</strong></td>\n</tr>\n<tr>\n<td><em>Group: All Respondents</em></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Number of responses (This question was not asked in 2015.)</td>\n<td></td>\n<td></td>\n<td>14,944</td>\n<td></td>\n<td>15,636</td>\n<td></td>\n</tr>\n<tr>\n<td>60 and over</td>\n<td></td>\n<td></td>\n<td>1,139</td>\n<td>8%</td>\n<td>1,641</td>\n<td>11%</td>\n</tr>\n<tr>\n<td>50-59</td>\n<td></td>\n<td></td>\n<td>1,537</td>\n<td>10%</td>\n<td>1,996</td>\n<td>13%</td>\n</tr>\n<tr>\n<td>40-49</td>\n<td></td>\n<td></td>\n<td>2,205</td>\n<td>15%</td>\n<td>2,643</td>\n<td>17%</td>\n</tr>\n<tr>\n<td>30-39</td>\n<td></td>\n<td></td>\n<td>3,914</td>\n<td>26%</td>\n<td>3,972</td>\n<td>25%</td>\n</tr>\n<tr>\n<td>20-29</td>\n<td></td>\n<td></td>\n<td>5,013</td>\n<td>34%</td>\n<td>4,444</td>\n<td>28%</td>\n</tr>\n<tr>\n<td>Under 20</td>\n<td></td>\n<td></td>\n<td>1142</td>\n<td>8%</td>\n<td>941</td>\n<td>6%</td>\n</tr>\n</tbody>\n</table>\n<p>Thank you to everyone who made time to fill out the survey &#8212; we&#8217;re so happy you use WordPress, and we&#8217;re very grateful that you&#8217;re willing to share your experiences with us! Thanks also to everyone who spread the word about this survey, and to those of you who read all the way to the bottom of this post. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f609.png" alt="😉" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<p><small><a id="text"></a>*Text Field Questions: Each survey included some questions that could be answered only by filling out a text field. In the case of the questions &#8220;What is the best thing about WordPress?&#8221; and &#8220;What is the most frustrating thing about WordPress?&#8221; we listed the five most common responses, aggregated when applicable. In the case of the question “What is your gender?” in the 2016 and 2017 surveys, we aggregated responses as best we could. Responses meant to obscure respondents’ gender entirely are aggregated in “prefer not to answer.”</small></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5310";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"The Month in WordPress: November 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2017/12/the-month-in-wordpress-november-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Dec 2017 11:00:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5290";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:354:"The WordPress project recently released WordPress 4.9, “Tipton” — a new major release named in honor of musician and band leader Billy Tipton. Read on to find out more about this and other interesting news from around the WordPress world in November. WordPress 4.9 “Tipton” On November 16, WordPress 4.9 was released with new features [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4234:"\n<p>The WordPress project recently released WordPress 4.9, “Tipton” — a new major release named in honor of musician and band leader Billy Tipton. Read on to find out more about this and other interesting news from around the WordPress world in November.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>WordPress 4.9 “Tipton”</h2>\n\n\n\n<p>On November 16, <a href="https://wordpress.org/news/2017/11/tipton/">WordPress 4.9 was released</a> with new features for publishers and developers alike. Release highlights include design locking, scheduling, and previews in the Customizer, an even more secure and usable code editing experience, a new gallery widget, and text widget improvements.</p>\n\n\n\n<p>The follow up security and maintenance, v4.9.1, <a href="https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/">has now been released</a> to tighten up the security of WordPress as a whole.</p>\n\n\n\n<p>To get involved in building WordPress Core, jump into the #core channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>, and follow<a href="https://make.wordpress.org/core/"> the Core team blog</a>.</p>\n\n\n\n<h2>Apply to Speak At WordCamp Europe 2018</h2>\n\n\n\n<p>The next edition of WordCamp Europe takes place in June, 2018. While the organizing team is still in the early stages of planning, <a href="https://2018.europe.wordcamp.org/2017/11/15/are-you-ready-to-speak-at-the-largest-wordpress-event-in-europe/">they are accepting speaker applications</a>.</p>\n\n\n\n<p>WordCamp Europe is the largest WordCamp in the world and, along with WordCamp US, one of the flagship events of the WordCamp program — speaking at this event is a great way to give back to the global WordPress community by sharing your knowledge and expertise with thousands of WordPress enthusiasts.</p>\n\n\n\n<h2>Diversity Outreach Speaker Training Initiative</h2>\n\n\n\n<p>To help WordPress community organizers offer diverse speaker lineups, <a href="https://make.wordpress.org/community/2017/11/13/call-for-volunteers-diversity-outreach-speaker-training/">a new community initiative has kicked off</a> to use existing <a href="https://make.wordpress.org/training/handbook/speaker-training/">speaker training workshops</a> to demystify speaking requirements and help participants gain confidence in their ability to share their WordPress knowledge in a WordCamp session.</p>\n\n\n\n<p>The working group behind this initiative will be meeting regularly to discuss and plan how they can help local communities to train speakers for WordCamps and other events.</p>\n\n\n\n<p>To get involved in this initiative, you can join the meetings at 5pm UTC every other Wednesday in the #community-team channel of the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li><a href="https://2017.us.wordcamp.org/">WordCamp US 2017</a> is happening on December 1-3 in Nashville, with the annual State of the Word talk happening on Saturday afternoon — <a href="https://2017.us.wordcamp.org/live-stream/">the live stream of the entire event is available to view for free</a>.</li>\n    <li><a href="https://xwp.co/tide-a-path-to-better-code-across-the-wordpress-ecosystem/">Tide</a>, a new service from XWP designed to help users make informed plugin choices, is due to launch at WordCamp US.</li>\n    <li>Gutenberg development is continuing rapidly, with <a href="https://make.wordpress.org/core/2017/11/28/whats-new-in-gutenberg-28th-november/">a packed new release</a> and a focus on <a href="https://make.wordpress.org/test/2017/11/22/testing-flow-in-gutenberg/">usability testing</a>.</li>\n    <li>After some discussion among the community, <a href="https://make.wordpress.org/community/2017/11/10/discussion-micro-regional-wordcamps/">a new type of micro-regional WordCamp</a> is going to be introduced into the global WordCamp program.</li>\n</ul>\n\n\n\n<p><em></em></p>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n\n\n\n<p><em></em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5290";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.9.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Nov 2017 20:33:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5215";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:359:"WordPress 4.9.1 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9 and earlier are affected by four security issues which could potentially be exploited as part of a multi-vector attack. As part of the core team&#x27;s [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"John Blackbourn";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4287:"\n<p>WordPress 4.9.1 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n\n\n<p>WordPress versions 4.9 and earlier are affected by four security issues which could potentially be exploited as part of a multi-vector attack. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.1:</p>\n\n\n\n<ol>\n    <li>Use a properly generated hash for the <code>newbloguser</code> key instead of a determinate substring.</li>\n    <li>Add escaping to the language attributes used on <code>html</code> elements.</li>\n    <li>Ensure the attributes of enclosures are correctly escaped in RSS and Atom feeds.</li>\n    <li>Remove the ability to upload JavaScript files for users who do not have the <code>unfiltered_html</code> capability.</li>\n</ol>\n\n\n\n<p>Thank you to the reporters of these issues for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible security disclosure</a>: <a href="https://twitter.com/0x62626262">Rahul Pratap Singh</a> and John Blackbourn.</p>\n\n\n\n<p>Eleven other bugs were fixed in WordPress 4.9.1. Particularly of note were:</p>\n\n\n\n<ul>\n    <li>Issues relating to the caching of theme template files.</li>\n    <li>A MediaElement JavaScript error preventing users of certain languages from being able to upload media files.</li>\n    <li>The inability to edit theme and plugin files on Windows based servers.</li>\n</ul>\n\n\n\n<p><a href="https://make.wordpress.org/core/2017/11/28/wordpress-4-9-1-scheduled-for-november-29th/">This post has more information about all of the issues fixed in 4.9.1 if you&#x27;d like to learn more</a>.</p>\n\n\n\n<p><a href="https://wordpress.org/download/">Download WordPress 4.9.1</a> or venture over to Dashboard → Updates and click &quot;Update Now.&quot; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 4.9.1:</p>\n\n\n\n<p><a href="https://profiles.wordpress.org/schlessera/">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/la-geek/">Angelika Reisiger</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/bobbingwide/">bobbingwide</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/edo888/">edo888</a>, <a href="https://profiles.wordpress.org/erich_k4wp/">Erich Munz</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/mista-flo/">Florian TIAR</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/ibenic/">Igor Benic</a>, <a href="https://profiles.wordpress.org/jfarthing84/">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jeremyescott/">jeremyescott</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnpgreen/">johnpgreen</a>, <a href="https://profiles.wordpress.org/ryelle/">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/lenasterg/">lenasterg</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mariovalney/">Mário Valney</a>, <a href="https://profiles.wordpress.org/natacado/">natacado</a>, <a href="https://profiles.wordpress.org/odysseygate/">odyssey</a>, <a href="https://profiles.wordpress.org/precies/">precies</a>, <a href="https://profiles.wordpress.org/stodorovic/">Saša</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5215";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.9 “Tipton”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2017/11/tipton/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Nov 2017 01:16:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4968";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:227:"Announcing version 4.9 of WordPress, named “Tipton” in honor of jazz pianist and band leader Billy Tipton. New features in 4.9 will smooth your design workflow and keep you safe from coding errors. Download or update today!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:40374:"<h2 style="text-align: center">Major Customizer Improvements, Code Error Checking, and More!&nbsp;🎉</h2>\n\r\n<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2017/11/banner.png?fit=2400%2C1200&amp;ssl=1" alt="" /></figure>\r\n\r\n\r\n\r\n<p>Version 4.9 of WordPress, named “Tipton” in honor of jazz musician and band leader Billy Tipton, is available for download or update in your WordPress dashboard. New features in 4.9 will smooth your design workflow and keep you safe from coding errors.</p>\r\n\r\n\r\n\r\n<p>Featuring design drafts, scheduling, and locking, along with preview links, the Customizer workflow improves collaboration for content creators. What’s more, code syntax highlighting and error checking will make for a clean and smooth site building experience. Finally, if all that wasn’t pretty great, we’ve got an awesome new Gallery widget and improvements to theme browsing and switching.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Customizer Workflow Improved </h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i0.wp.com/wordpress.org/news/files/2017/11/customizer-workflow-improved-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>Draft and Schedule Site Design Customizations</h3>\r\n\r\n\r\n\r\n<p>Yes, you read that right. Just like you can draft and revise posts and schedule them to go live on the date and time you choose, you can now tinker with your site’s design and schedule those design changes to go live as you please.</p>\r\n\r\n\r\n\r\n<h3>Collaborate with Design Preview Links</h3>\r\n\r\n\r\n\r\n<p>Need to get some feedback on proposed site design changes? WordPress 4.9 gives you a preview link you can send to colleagues and customers so that you can collect and integrate feedback before you schedule the changes to go live. Can we say collaboration++?</p>\r\n\r\n\r\n\r\n<h3>Design Locking Guards Your Changes</h3>\r\n\r\n\r\n\r\n<p>Ever encounter a scenario where two designers walk into a project and designer A overrides designer B’s beautiful changes? WordPress 4.9’s design lock feature (similar to post locking) secures your draft design so that no one can make changes to it or erase all your hard work.</p>\r\n\r\n\r\n\r\n<h3>A Prompt to Protect Your Work</h3>\r\n\r\n\r\n\r\n<p>Were you lured away from your desk before you saved your new draft design? Fear not, when you return, WordPress 4.9 will politely ask whether or not you’d like to save your unsaved changes.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Coding Enhancements</h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i2.wp.com/wordpress.org/news/files/2017/11/coding-enhancements-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>Syntax Highlighting and Error Checking? Yes, Please!</h3>\r\n\r\n\r\n\r\n<p>You’ve got a display problem but can’t quite figure out exactly what went wrong in the CSS you lovingly wrote. With syntax highlighting and error checking for CSS editing and the Custom HTML widget introduced in WordPress 4.8.1, you’ll pinpoint coding errors quickly. Practically guaranteed to help you scan code more easily, and suss out &amp; fix code errors quickly.</p>\r\n\r\n\r\n\r\n<h3>Sandbox for Safety</h3>\r\n\r\n\r\n\r\n<p>The dreaded white screen. You’ll avoid it when working on themes and plugin code because WordPress 4.9 will warn you about saving an error. You’ll sleep better at night.</p>\r\n\r\n\r\n\r\n<h3>Warning: Potential Danger Ahead!</h3>\r\n\r\n\r\n\r\n<p>When you edit themes and plugins directly, WordPress 4.9 will politely warn you that this is a dangerous practice and will recommend that you draft and test changes before updating your file. Take the safe route: You’ll thank you. Your team and customers will thank you.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Even More Widget Updates </h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2017/11/even-more-widget-updates-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>The New Gallery Widget</h3>\r\n\r\n\r\n\r\n<p>An incremental improvement to the media changes hatched in WordPress 4.8, you can now add a gallery via this new widget. Yes!</p>\r\n\r\n\r\n\r\n<h3>Press a Button, Add Media</h3>\r\n\r\n\r\n\r\n<p>Want to add media to your text widget? Embed images, video, and audio directly into the widget along with your text, with our simple but useful Add Media button. Woo!</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Site Building Improvements </h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2017/11/site-building-improvements-small.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<h3>More Reliable Theme Switching</h3>\r\n\r\n\r\n\r\n<p>When you switch themes, widgets sometimes think they can just move location. Improvements in WordPress 4.9 offer more persistent menu and widget placement when you decide it’s time for a new theme. </p>\r\n\r\n\r\n\r\n<h3>Find and Preview the Perfect Theme</h3>\r\n\r\n\r\n\r\n<p>Looking for a new theme for your site? Now, from within the Customizer, you can search, browse, and preview over 2600 themes before deploying changes to your site. What’s more, you can speed your search with filters for subject, features, and layout.</p>\r\n\r\n\r\n\r\n<h3>Better Menu Instructions = Less Confusion</h3>\r\n\r\n\r\n\r\n<p>Were you confused by the steps to create a new menu? Perhaps no longer! We’ve ironed out the UX for a smoother menu creation process. Newly updated copy will guide you.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Lend a Hand with Gutenberg 🤝</h2>\r\n\r\n\r\n\r\n<figure class="wp-block-image"><img src="https://i2.wp.com/wordpress.org/news/files/2017/11/gutenberg-1.png?w=632&#038;ssl=1" alt="" data-recalc-dims="1" /></figure>\r\n\r\n\r\n\r\n<p>WordPress is working on a new way to create and control your content and we’d love to have your help. Interested in being an <a href="https://wordpress.org/plugins/gutenberg/">early tester</a> or getting involved with the Gutenberg project? <a href="https://github.com/WordPress/gutenberg">Contribute on GitHub</a>.</p>\r\n\r\n\r\n\r\n<p>(PS: this post was written in Gutenberg!)</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2 style="text-align:center">Developer Happiness 😊</h2>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/">Customizer JS API Improvements</a></h3>\r\n\r\n\r\n\r\n<p>We’ve made numerous improvements to the Customizer JS API in WordPress 4.9, eliminating many pain points. (Hello, default parameters for constructs! Goodbye repeated ID for constructs!) There are also new base control templates, a date/time control, and section/panel/global notifications to name a few. <a href="https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/">Check out the full list.</a></p>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/10/22/code-editing-improvements-in-wordpress-4-9/">CodeMirror available for use in your themes and plugins</a></h3>\r\n\r\n\r\n\r\n<p>We’ve introduced a new code editing library, CodeMirror, for use within core. CodeMirror allows for syntax highlighting, error checking, and validation when creating code writing or editing experiences within your plugins, like CSS or JavaScript include fields.</p>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/10/30/mediaelement-upgrades-in-wordpress-4-9/">MediaElement.js upgraded to 4.2.6</a></h3>\r\n\r\n\r\n\r\n<p>WordPress 4.9 includes an upgraded version of MediaElement.js, which removes dependencies on jQuery, improves accessibility, modernizes the UI, and fixes many bugs.</p>\r\n\r\n\r\n\r\n<h3><a href="https://make.wordpress.org/core/2017/10/15/improvements-for-roles-and-capabilities-in-4-9/">Roles and Capabilities Improvements</a></h3>\r\n\r\n\r\n\r\n<p>New capabilities have been introduced that allow granular management of plugins and translation files. In addition, the site switching process in multisite has been fine-tuned to update the available roles and capabilities in a more reliable and coherent way.</p>\r\n\r\n\r\n\r\n<hr class="wp-block-separator" />\r\n\r\n\r\n\r\n<h2>The Squad</h2>\r\n\r\n\r\n\r\n<p>This release was led by <a href="https://choycedesign.com/">Mel Choyce</a> and <a href="https://weston.ruter.net/">Weston Ruter</a>, with the help of the following fabulous folks. There are 443 contributors with props in this release, with 185 of them contributing for the first time. Pull up some Billy Tipton on your music service of choice, and check out some of their profiles:</p>\r\n\r\n\r\n\r\n<a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/aaronrutley">Aaron Rutley</a>, <a href="https://profiles.wordpress.org/ibachal">Achal Jain</a>, <a href="https://profiles.wordpress.org/kawauso">Adam Harley (Kawauso)</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adamwills">AdamWills</a>, <a href="https://profiles.wordpress.org/adhun">Adhun Anand</a>, <a href="https://profiles.wordpress.org/aegis123">aegis123</a>, <a href="https://profiles.wordpress.org/afzalmultani">Afzal Multani</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/ajayghaghretiya1">Ajay Ghaghretiya</a>, <a href="https://profiles.wordpress.org/ajoah">ajoah</a>, <a href="https://profiles.wordpress.org/soniakash">Akash Soni</a>, <a href="https://profiles.wordpress.org/akbarhusen">akbarhusen</a>, <a href="https://profiles.wordpress.org/schlessera">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/alpipego">Alex Goller</a>, <a href="https://profiles.wordpress.org/alexvorn2">Alexandru Vornicescu</a>, <a href="https://profiles.wordpress.org/alibasheer">alibasheer</a>, <a href="https://profiles.wordpress.org/alxndr">alxndr</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andreagobetti">andreagobetti</a>, <a href="https://profiles.wordpress.org/euthelup">Andrei Lupu</a>, <a href="https://profiles.wordpress.org/aduth">Andrew Duthie</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/norcross">Andrew Norcross</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/andrewtaylor-1">Andrew Taylor</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/kelderic">Andy Mercer</a>, <a href="https://profiles.wordpress.org/la-geek">Angelika Reisiger</a>, <a href="https://profiles.wordpress.org/anhskohbo">anhskohbo</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/ahortin">Anthony Hortin</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/antonrinas">antonrinas</a>, <a href="https://profiles.wordpress.org/appchecker">appchecker</a>, <a href="https://profiles.wordpress.org/arena94">arena94</a>, <a href="https://profiles.wordpress.org/bsop">Arnaud Coolsaet</a>, <a href="https://profiles.wordpress.org/arnaudban">ArnaudBan</a>, <a href="https://profiles.wordpress.org/aryamaaru">Arun</a>, <a href="https://profiles.wordpress.org/mrasharirfan">Ashar Irfan</a>, <a href="https://profiles.wordpress.org/atachibana">atachibana</a>, <a href="https://profiles.wordpress.org/atanasangelovdev">Atanas Angelov</a>, <a href="https://profiles.wordpress.org/avinapatel">Avina Patel</a>, <a href="https://profiles.wordpress.org/ayeshrajans">Ayesh Karunaratne</a>, <a href="https://profiles.wordpress.org/barryceelen">Barry Ceelen</a>, <a href="https://profiles.wordpress.org/bduclos">bduclos</a>, <a href="https://profiles.wordpress.org/pixolin">Bego Mario Garde</a>, <a href="https://profiles.wordpress.org/behzod">Behzod Saidov</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/benoitchantre">Benoit Chantre</a>, <a href="https://profiles.wordpress.org/bnap00">Bharat Parsiya</a>, <a href="https://profiles.wordpress.org/bhaveshkhadodara">bhavesh khadodara</a>, <a href="https://profiles.wordpress.org/bplv">Biplav</a>, <a href="https://profiles.wordpress.org/biranit">Biranit</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/biskobe">biskobe</a>, <a href="https://profiles.wordpress.org/bjornw">BjornW</a>, <a href="https://profiles.wordpress.org/blackbam">Blackbam</a>, <a href="https://profiles.wordpress.org/blobfolio">Blobfolio</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bor0">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/bradparbs">Brad Parbs</a>, <a href="https://profiles.wordpress.org/bradyvercher">Brady Vercher</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brentjettgmailcom">Brent Jett</a>, <a href="https://profiles.wordpress.org/brianlayman">Brian Layman</a>, <a href="https://profiles.wordpress.org/monopine">Brian Meyer</a>, <a href="https://profiles.wordpress.org/borgesbruno">Bruno Borges</a>, <a href="https://profiles.wordpress.org/bseddon">bseddon</a>, <a href="https://profiles.wordpress.org/bhargavbhandari90">Bunty</a>, <a href="https://profiles.wordpress.org/carldanley">Carl Danley</a>, <a href="https://profiles.wordpress.org/poena">Carolina Nymark</a>, <a href="https://profiles.wordpress.org/sixhours">Caroline Moore</a>, <a href="https://profiles.wordpress.org/carolinegeven">carolinegeven</a>, <a href="https://profiles.wordpress.org/caercam">Charlie Merland</a>, <a href="https://profiles.wordpress.org/chetanchauhan">Chetan Chauhan</a>, <a href="https://profiles.wordpress.org/chetan200891">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/ketuchetan">chetansatasiya</a>, <a href="https://profiles.wordpress.org/choongsavvii">choong</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chrishardie">Chris Hardie</a>, <a href="https://profiles.wordpress.org/crunnells">Chris Runnells</a>, <a href="https://profiles.wordpress.org/christian1012">Christian Chung</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/chsxf">chsxf</a>, <a href="https://profiles.wordpress.org/chrisvendiadvertisingcom">cjhaas</a>, <a href="https://profiles.wordpress.org/cliffseal">Cliff Seal</a>, <a href="https://profiles.wordpress.org/code-monkey">code-monkey</a>, <a href="https://profiles.wordpress.org/collizo4sky">Collins Agbonghama</a>, <a href="https://profiles.wordpress.org/corvidism">corvidism</a>, <a href="https://profiles.wordpress.org/csloisel">csloisel</a>, <a href="https://profiles.wordpress.org/daedalon">Daedalon</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber </a>, <a href="https://profiles.wordpress.org/danieltj">Daniel James</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dany2217">dany2217</a>, <a href="https://profiles.wordpress.org/davepullig">Dave Pullig</a>, <a href="https://profiles.wordpress.org/davefx">DaveFX</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davilera">David Aguilera</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/davidbinda">David Binovec</a>, <a href="https://profiles.wordpress.org/turtlepod">David Chandra Purnama</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/straussd">David Strauss</a>, <a href="https://profiles.wordpress.org/jdtrower">David Trower</a>, <a href="https://profiles.wordpress.org/folletto">Davide \'Folletto\' Casali</a>, <a href="https://profiles.wordpress.org/daymobrew">daymobrew</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/designsimply">designsimply</a>, <a href="https://profiles.wordpress.org/diedeexterkate">DiedeExterkate</a>, <a href="https://profiles.wordpress.org/dingo_bastard">dingo-d</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipeshkakadiya</a>, <a href="https://profiles.wordpress.org/div33">Divyesh Ladani</a>, <a href="https://profiles.wordpress.org/dency">Dixita Dusara</a>, <a href="https://profiles.wordpress.org/dixitadusara">dixitadusara</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dominikschwind-1">Dominik Schwind</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/dsawardekar">dsawardekar</a>, <a href="https://profiles.wordpress.org/kucrut">Dzikri Aziz</a>, <a href="https://profiles.wordpress.org/eatonz">Eaton</a>, <a href="https://profiles.wordpress.org/eclev91">eclev91</a>, <a href="https://profiles.wordpress.org/eddhurst">Edd Hurst</a>, <a href="https://profiles.wordpress.org/edo888">edo888</a>, <a href="https://profiles.wordpress.org/egregor">EGregor</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elvishp2006">elvishp2006</a>, <a href="https://profiles.wordpress.org/enricosorcinelli">enrico.sorcinelli</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/erich_k4wp">Erich Munz</a>, <a href="https://profiles.wordpress.org/circlecube">Evan Mullins</a>, <a href="https://profiles.wordpress.org/eventualo">eventualo</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/psiico">FancyThought</a>, <a href="https://profiles.wordpress.org/felipeelia">Felipe Elia</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fergbrain">fergbrain</a>, <a href="https://profiles.wordpress.org/mista-flo">Florian TIAR</a>, <a href="https://profiles.wordpress.org/gmariani405">Gabriel Mariani</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/soulseekah">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/girishpanchal">Girish Lohar</a>, <a href="https://profiles.wordpress.org/gkloveweb">Govind Kumar</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/gregross">Greg Ross</a>, <a href="https://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="https://profiles.wordpress.org/grosbouff">grosbouff</a>, <a href="https://profiles.wordpress.org/wido">Guido Scialfa</a>, <a href="https://profiles.wordpress.org/ghosttoast">Gustave F. Gerhardt</a>, <a href="https://profiles.wordpress.org/guzzilar">guzzilar</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/hazemnoor">Hazem Noor</a>, <a href="https://profiles.wordpress.org/hazimayesh">hazimayesh</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright-1">Henry</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/herregroen">herregroen</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/howdy_mcgee">Howdy_McGee</a>, <a href="https://profiles.wordpress.org/hlashbrooke">Hugh Lashbrooke</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/jcc9873">Iacopo C</a>, <a href="https://profiles.wordpress.org/ibenic">Igor Benic</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/ippei-sumida">Ippei Sumida</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/ireneyoast">Irene Strikkers</a>, <a href="https://profiles.wordpress.org/ivankristianto">Ivan Kristianto</a>, <a href="https://profiles.wordpress.org/ixmati">ixmati</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jhoffmann">j.hoffmann</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/jankimoradiya">Janki Moradiya</a>, <a href="https://profiles.wordpress.org/octalmage">Jason Stallings</a>, <a href="https://profiles.wordpress.org/audrasjb">Jb Audras</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jbpaul17">Jeff Paul</a>, <a href="https://profiles.wordpress.org/jmdodd">Jennifer M. Dodd</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jeremyescott">Jeremy Scott</a>, <a href="https://profiles.wordpress.org/jjcomack">Jimmy Comack</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/jkhongusc">jkhongusc</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johneckman">John Eckman</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="https://profiles.wordpress.org/johnpgreen">johnpgreen</a>, <a href="https://profiles.wordpress.org/johnroper100">johnroper100</a>, <a href="https://profiles.wordpress.org/jonathanbardo">Jonathan Bardo</a>, <a href="https://profiles.wordpress.org/desrosj">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/chanthaboune">Josepha</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joyously">Joy</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jsepia">jsepia</a>, <a href="https://profiles.wordpress.org/jsonfry">jsonfry</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/jlambe">Julien</a>, <a href="https://profiles.wordpress.org/kopepasah">Justin Kopepasah</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/thekt12">Karthik Thayyil</a>, <a href="https://profiles.wordpress.org/keesiemeijer">keesiemeijer</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/captainn">Kevin Newman</a>, <a href="https://profiles.wordpress.org/kpdesign">Kim Parsell</a>, <a href="https://profiles.wordpress.org/kiranpotphode">Kiran Potphode</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kmgalanakis">Konstantinos Galanakis</a>, <a href="https://profiles.wordpress.org/koopersmith">koopersmith</a>, <a href="https://profiles.wordpress.org/kekkakokkers">Kristin Kokkersvold</a>, <a href="https://profiles.wordpress.org/lalitpendhare">lalitpendhare</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/laurelfulford">Laurel Fulford</a>, <a href="https://profiles.wordpress.org/lemacarl">lemacarl</a>, <a href="https://profiles.wordpress.org/lenasterg">lenasterg</a>, <a href="https://profiles.wordpress.org/lessbloat">lessbloat</a>, <a href="https://profiles.wordpress.org/llemurya">llemurya</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/mariovalney">M&#225;rio Valney</a>, <a href="https://profiles.wordpress.org/m1tk00">m1tk00</a>, <a href="https://profiles.wordpress.org/maedahbatool">Maedah Batool</a>, <a href="https://profiles.wordpress.org/mp518">Mahesh Prajapati</a>, <a href="https://profiles.wordpress.org/mahvash-fatima">Mahvash Fatima</a>, <a href="https://profiles.wordpress.org/travel_girl">Maja Benke</a>, <a href="https://profiles.wordpress.org/mako09">Mako</a>, <a href="https://profiles.wordpress.org/manolis09">manolis09</a>, <a href="https://profiles.wordpress.org/manuelaugustin">Manuel Augustin</a>, <a href="https://profiles.wordpress.org/mbootsman">Marcel Bootsman</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J.</a>, <a href="https://profiles.wordpress.org/mariusvetrici">Marius Vetrici</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mrwweb">Mark Root-Wiley</a>, <a href="https://profiles.wordpress.org/markcallen">markcallen</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/matheusgimenez">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/mgibbs189">Matt Gibbs</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/matthiasthiel">matthias.thiel</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/maximeculea">Maxime Culea</a>, <a href="https://profiles.wordpress.org/mdifelice">mdifelice</a>, <a href="https://profiles.wordpress.org/megane9988">megane9988</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/menakas">Menaka S.</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/mizejewski">Michele Mizejewski</a>, <a href="https://profiles.wordpress.org/stubgo">Miina Sikk</a>, <a href="https://profiles.wordpress.org/mihai2u">Mike Crantea</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikeschinkel">Mike Schinkel</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/milana_cap">Milana Cap</a>, <a href="https://profiles.wordpress.org/milindmore22">Milind More</a>, <a href="https://profiles.wordpress.org/mirucon">Mirucon</a>, <a href="https://profiles.wordpress.org/studionashvegas">Mitch Canter</a>, <a href="https://profiles.wordpress.org/mitraval192">Mithun Raval</a>, <a href="https://profiles.wordpress.org/mkomar">mkomar</a>, <a href="https://profiles.wordpress.org/monikarao">Monika Rao</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/msebel">msebel</a>, <a href="https://profiles.wordpress.org/munyagu">munyagu</a>, <a href="https://profiles.wordpress.org/mythemeshop">MyThemeShop</a>, <a href="https://profiles.wordpress.org/ndoublehwp">N\'DoubleH</a>, <a href="https://profiles.wordpress.org/nathanatmoz">Nathan Johnson</a>, <a href="https://profiles.wordpress.org/nenad">nenad</a>, <a href="https://profiles.wordpress.org/nicbertino">nic.bertino</a>, <a href="https://profiles.wordpress.org/ndiego">Nick Diego</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey </a>, <a href="https://profiles.wordpress.org/nikeo">Nicolas GUILLAUME</a>, <a href="https://profiles.wordpress.org/nicollle">nicollle</a>, <a href="https://profiles.wordpress.org/jainnidhi">Nidhi Jain</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/nileshdudakiya94">Nileshdudakiya94</a>, <a href="https://profiles.wordpress.org/nishitlangaliya">Nishit Langaliya</a>, <a href="https://profiles.wordpress.org/justnorris">Norris</a>, <a href="https://profiles.wordpress.org/obradovic">obradovic</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/ov3rfly">Ov3rfly</a>, <a href="https://profiles.wordpress.org/paaljoachim">Paal Joachim Romdahl</a>, <a href="https://profiles.wordpress.org/palmiak">palmiak</a>, <a href="https://profiles.wordpress.org/parthsanghvi">Parth Sanghvi</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/obrienlabs">Pat O\'Brien</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/pbiron">Paul Biron</a>, <a href="https://profiles.wordpress.org/pauldechov">Paul Dechov</a>, <a href="https://profiles.wordpress.org/natacado">Paul Paradise</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/sirbrillig">Payton Swick</a>, <a href="https://profiles.wordpress.org/pcarvalho">pcarvalho</a>, <a href="https://profiles.wordpress.org/pedromendonca">Pedro Mendon&#231;a</a>, <a href="https://profiles.wordpress.org/gungeekatx">Pete Nelson</a>, <a href="https://profiles.wordpress.org/pessoft">Peter "Pessoft" Kol&#237;nek</a>, <a href="https://profiles.wordpress.org/donutz">Peter J. Herrel</a>, <a href="https://profiles.wordpress.org/petertoi">Peter Toi</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/philipjohn">Philip John</a>, <a href="https://profiles.wordpress.org/delawski">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/plastikschnitzer">Plastikschnitzer</a>, <a href="https://profiles.wordpress.org/powerzilly">powerzilly</a>, <a href="https://profiles.wordpress.org/pratikgandhi">Pratik Gandhi</a>, <a href="https://profiles.wordpress.org/precies">precies</a>, <a href="https://profiles.wordpress.org/presslabs">Presslabs</a>, <a href="https://profiles.wordpress.org/punit5658">Punit Patel</a>, <a href="https://profiles.wordpress.org/purnendu">Purnendu Dash</a>, <a href="https://profiles.wordpress.org/r-a-y">r-a-y</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rafa8626">Rafael Miranda</a>, <a href="https://profiles.wordpress.org/rahmohn">Rahmohn</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/ramon-fincken">ramon fincken</a>, <a href="https://profiles.wordpress.org/jontyravi">Ravi Vaghela</a>, <a href="https://profiles.wordpress.org/rclations">RC Lations</a>, <a href="https://profiles.wordpress.org/redrambles">redrambles</a>, <a href="https://profiles.wordpress.org/arena">RENAUT</a>, <a href="https://profiles.wordpress.org/greuben">Reuben Gunday</a>, <a href="https://profiles.wordpress.org/rfair404">rfair404</a>, <a href="https://profiles.wordpress.org/youknowriad">Riad Benguella</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/riddhiehta02">Riddhi Mehta</a>, <a href="https://profiles.wordpress.org/rinkuyadav999">Rinku Y</a>, <a href="https://profiles.wordpress.org/rcutmore">Rob Cutmore</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/ronakganatra">Ronak Ganatra</a>, <a href="https://profiles.wordpress.org/rugved">rugved</a>, <a href="https://profiles.wordpress.org/rushabh4486">Rushabh Shah</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/ryanduff">Ryan Duff</a>, <a href="https://profiles.wordpress.org/stunnedbeast">Ryan Holmes</a>, <a href="https://profiles.wordpress.org/rmarks">Ryan Marks</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ohryan">Ryan Neudorf</a>, <a href="https://profiles.wordpress.org/ryanplas">Ryan Plas</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/ryanrolds">ryanrolds</a>, <a href="https://profiles.wordpress.org/ryotsun">ryotsun</a>, <a href="https://profiles.wordpress.org/stodorovic">Sa&#353;a</a>, <a href="https://profiles.wordpress.org/manchumahara">Sabuj Kundu</a>, <a href="https://profiles.wordpress.org/sagarprajapati">Sagar Prajapati</a>, <a href="https://profiles.wordpress.org/sagarladani">sagarladani</a>, <a href="https://profiles.wordpress.org/sa3idho">Said El Bakkali</a>, <a href="https://profiles.wordpress.org/samikeijonen">Sami Keijonen</a>, <a href="https://profiles.wordpress.org/viralsampat">Sampat Viral</a>, <a href="https://profiles.wordpress.org/samuelsidler">Samuel Sidler</a>, <a href="https://profiles.wordpress.org/otto42">Samuel Wood (Otto)</a>, <a href="https://profiles.wordpress.org/tinkerbelly">sarah semark</a>, <a href="https://profiles.wordpress.org/sathyapulse">sathyapulse</a>, <a href="https://profiles.wordpress.org/sboisvert">sboisvert</a>, <a href="https://profiles.wordpress.org/scottdeluzio">Scott DeLuzio</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/scottlee">Scott Lee</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sebsz">SeBsZ</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/sgr33n">Sergio De Falco</a>, <a href="https://profiles.wordpress.org/shamim51">Shamim Hasan</a>, <a href="https://profiles.wordpress.org/shooper">Shawn Hooper</a>, <a href="https://profiles.wordpress.org/shital-patel">Shital Marakana</a>, <a href="https://profiles.wordpress.org/shramee">shramee</a>, <a href="https://profiles.wordpress.org/nomnom99">Siddharth Thevaril</a>, <a href="https://profiles.wordpress.org/pross">Simon Prosser</a>, <a href="https://profiles.wordpress.org/slaffik">Slava Abakumov</a>, <a href="https://profiles.wordpress.org/someecards">someecards</a>, <a href="https://profiles.wordpress.org/soean">Soren Wrede</a>, <a href="https://profiles.wordpress.org/spencerfinnell">spencerfinnell</a>, <a href="https://profiles.wordpress.org/spocke">spocke</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevegrunwell">Steve Grunwell</a>, <a href="https://profiles.wordpress.org/stevepuddick">Steve Puddick</a>, <a href="https://profiles.wordpress.org/stevenlinx">stevenlinx</a>, <a href="https://profiles.wordpress.org/skostadinov">Stoyan Kostadinov</a>, <a href="https://profiles.wordpress.org/dualcube_subrata">Subrata Mal</a>, <a href="https://profiles.wordpress.org/subrataemfluence">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/musus">Susumu Seino</a>, <a href="https://profiles.wordpress.org/svrooij">svrooij</a>, <a href="https://profiles.wordpress.org/takahashi_fumiki">Takahashi Fumiki</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/buley">Taylor</a>, <a href="https://profiles.wordpress.org/tejas5989">tejas5989</a>, <a href="https://profiles.wordpress.org/terwdan">terwdan</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/thulshof">Thijs Hulshof</a>, <a href="https://profiles.wordpress.org/thingsym">thingsym</a>, <a href="https://profiles.wordpress.org/tfirdaus">Thoriq Firdaus</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tmatsuur">tmatsuur</a>, <a href="https://profiles.wordpress.org/tobi823">tobi823</a>, <a href="https://profiles.wordpress.org/toddnestor">Todd Nestor</a>, <a href="https://profiles.wordpress.org/tobifjellner">Tor-Bjorn Fjellner</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/toru">Toru Miki</a>, <a href="https://profiles.wordpress.org/toscho">toscho</a>, <a href="https://profiles.wordpress.org/transl8or">transl8or</a>, <a href="https://profiles.wordpress.org/truongwp">truongwp</a>, <a href="https://profiles.wordpress.org/tuanmh">tuanmh</a>, <a href="https://profiles.wordpress.org/tv-productions">TV productions</a>, <a href="https://profiles.wordpress.org/uicestone">uicestone</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/umangvaghela123">Umang Vaghela</a>, <a href="https://profiles.wordpress.org/umeshnevase">Umesh Nevase</a>, <a href="https://profiles.wordpress.org/upadalavipul">upadalavipul</a>, <a href="https://profiles.wordpress.org/utkarshpatel">Utkarsh</a>, <a href="https://profiles.wordpress.org/vhauri">vhauri</a>, <a href="https://profiles.wordpress.org/williampatton">williampatton</a>, <a href="https://profiles.wordpress.org/withinboredom">withinboredom</a>, <a href="https://profiles.wordpress.org/wojtekszkutnik">Wojtek Szkutnik</a>, <a href="https://profiles.wordpress.org/xkon">Xenos (xkon) Konstantinos</a>, <a href="https://profiles.wordpress.org/yahil">Yahil Madakiya</a>, <a href="https://profiles.wordpress.org/yonivh">yonivh</a>, <a href="https://profiles.wordpress.org/yrpwayne">yrpwayne</a>, <a href="https://profiles.wordpress.org/zachwtx">zachwtx</a>, and <a href="https://profiles.wordpress.org/zanematthew">Zane Matthew</a>.\r\n\r\n\r\n\r\n<p>Finally, thanks to all the community translators who worked on WordPress 4.9. Their efforts bring WordPress 4.9 fully translated to 43 languages at release time, with more on the way.</p>\r\n\r\n\r\n\r\n<p>Do you want to report on WordPress 4.9? <a href="https://s.w.org/images/core/4.9/wp-4-9_press-kit.zip">We&#x27;ve compiled a press kit featuring information about the release features, and some media assets to help you along</a>.</p>\r\n\r\n\r\n\r\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\r\n\r\n\r\n\r\n<p>Thanks for choosing WordPress!</p>\r\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4968";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 4.9 Release Candidate 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Nov 2017 06:53:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:13:"Documentation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5184";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:345:"The third release candidate for WordPress 4.9 is now available. A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. In fact, we did miss some things in RC1 and RC2. This third release candidate was not originally scheduled, but [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Weston Ruter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4169:"<p>The third release candidate for WordPress 4.9 is now available.</p>\n<p>A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. In fact, we did miss some things in RC1 and RC2. This third release candidate was not originally scheduled, but due a number of defects uncovered through your testing of RC2 (thank you!), we are putting out another 4.9 release candidate.</p>\n<p>We hope to ship WordPress 4.9 on <strong>Tuesday, November 14</strong> (that&#8217;s <em>tomorrow</em>) at 23:00 UTC, but we still need your help to get there. If you haven’t tested 4.9 yet, now is the time! If there are additional defects uncovered through testing between now and the release time, we may delay the 4.9 release to the following day.</p>\n<p>To test WordPress 4.9, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.9-RC3.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/branches/4.9?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=42178&amp;stop_rev=42133">just over 20 changes</a> since releasing RC2 last week (as we did between RC1 and RC2). For more details about what’s new in version 4.9, check out the <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/">Beta 4</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/">RC1</a>, and <a href="https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-2/">RC2</a> blog posts. A few specific areas to test in RC3:</p>\n<ul>\n<li>Switching between the Visual and Text tabs of the editor, and the syncing of the cursor between those two tabs.</li>\n<li>Overriding linting errors in the Customizer&#8217;s Additional CSS editor.</li>\n<li>Adding nav menu items for Custom Links in the Customizer.</li>\n<li>Scheduling customization drafts (stubbed posts/pages) for publishing in the Customizer.</li>\n<li>Autosave revisions for changes in the Customizer.</li>\n<li>About page styling.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.9 and update your plugin’s <em>Tested up to</em> version in the readme to 4.9. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release — we work hard to avoid breaking things. Please see the summative <a href="https://make.wordpress.org/core/2017/11/07/wordpress-4-9-field-guide/">field guide</a> to the 4.9 <a href="https://make.wordpress.org/core/tag/4.9+dev-notes/">developer notes</a> on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>Didn&#8217;t squash them all <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f41b.png" alt="🐛" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em><br />\n<em>We want to release Tuesday</em><br />\n<em>New features not bugs <img src="https://s.w.org/images/core/emoji/2.3/72x72/2728.png" alt="✨" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5184";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 4.9 Release Candidate 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Nov 2017 05:33:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5047";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:342:"The second release candidate for WordPress 4.9 is now available. A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.9 on Tuesday, November 14 (just over one week from now), but we need your help [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Weston Ruter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3424:"<p>The second release candidate for WordPress 4.9 is now available.</p>\n<p>A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.9 on <strong>Tuesday, November 14</strong> (just over <em>one week</em> from now), but we need your help to get there. If you haven’t tested 4.9 yet, now is the time!</p>\n<p>To test WordPress 4.9, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.9-RC2.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=42124&amp;stop_rev=42049&amp;limit=100&amp;sfp_email=&amp;sfph_mail=">just over 20 changes</a> since releasing RC 1 last week. For more details about what’s new in version 4.9, check out the <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/">Beta 4</a>, and <a href="https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/">RC1</a> blog posts. Specific areas to test in RC2:</p>\n<ul>\n<li>Theme installation in the Customizer.</li>\n<li>Scheduling changes for publishing in the Customizer.</li>\n<li>Switching themes with live preview in the Customizer.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.9 and update your plugin’s <em>Tested up to</em> version in the readme to 4.9. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release — we work hard to avoid breaking things. Please see the summative <a href="https://make.wordpress.org/core/2017/11/07/wordpress-4-9-field-guide/">field guide</a> to the 4.9 <a href="https://make.wordpress.org/core/tag/4.9+dev-notes/">developer notes</a> on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p>This week&#8217;s haiku is courtesy of <a href=\'https://profiles.wordpress.org/melchoyce/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>melchoyce</a>:</p>\n<p><em>We squashed all the bugs <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f41b.png" alt="🐛" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em><br />\n<em>But uh, if not, let us know</em><br />\n<em>Also, test your stuff</em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5047";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"The Month in WordPress: October 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2017/11/the-month-in-wordpress-october-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Nov 2017 12:02:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5044";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:333:"While this month we focused on building new features for WordPress core, we advanced other areas of the project too. Read on to learn more about what the WordPress project accomplished during the month of October. Take the 2017 Annual WordPress User Survey The annual WordPress User Survey is a great opportunity for you to [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6180:"\n<p>While this month we focused on building new features for WordPress core, we advanced other areas of the project too. Read on to learn more about what the WordPress project accomplished during the month of October.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Take the 2017 Annual WordPress User Survey</h2>\n\n\n\n<p>The annual WordPress User Survey is a great opportunity for you to provide your feedback about how you use WordPress. This year is no exception, as <a href="https://wordpressdotorg.polldaddy.com/s/wordpress-2017-survey">the 2017 WordPress User Survey</a> is out now.</p>\n\n\n\n<p>The information collected in the survey is used to make informed decisions about improvements across the WordPress project, so your answers are incredibly valuable and help shape the future of the platform.</p>\n\n\n\n<h2>WordPress 4.8.3 Security Release</h2>\n\n\n\n<p>At the end of October, <a href="https://wordpress.org/news/2017/10/wordpress-4-8-3-security-release/">WordPress 4.8.3 was released</a> containing an important security fix for all previous versions of WordPress. If your WordPress installation has not updated automatically, please update it now to protect your site.</p>\n\n\n\n<p>This security issue was brought to light by a community member, so if you ever discover a security vulnerability in WordPress core, please do the same and <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">disclose it responsibly</a>.</p>\n\n\n\n<h2>WordPress 4.9 Nearly Ready for Release</h2>\n\n\n\n<p>WordPress 4.9 was in rapid development this month. We released four beta versions and published a <a href="https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/">release candidate</a>. The target for shipping WordPress 4.9 is November 14 — just two short weeks away. With many new features, this is a hugely exciting release that improves WordPress’ user experience considerably. Notably, you’ll see <a href="https://make.wordpress.org/core/2017/10/24/a-new-themes-experience-in-the-customizer/">improvements to the theme selection experience</a>, plenty of <a href="https://make.wordpress.org/core/2017/10/24/widget-improvements-in-wordpress-4-9/">widget enhancements</a>, drastically improved <a href="https://make.wordpress.org/core/2017/10/22/code-editing-improvements-in-wordpress-4-9/">code editing</a>, and much better <a href="https://make.wordpress.org/core/2017/10/15/improvements-for-roles-and-capabilities-in-4-9/">user role management</a>.</p>\n\n\n\n<p>To get involved in building WordPress Core, jump into the #core channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>, and follow <a href="https://make.wordpress.org/core/">the Core team blog</a>.</p>\n\n\n\n<h2>WordPress Charity Hackathons are Growing</h2>\n\n\n\n<p>For the last few years, the number of <a href="https://doaction.org/">do_action series of WordPress charity hackathons</a> has grown around the world. What started as a community event to assist local nonprofit organizations, has become something many WordPress communities are replicating in an increasing number of cities.</p>\n\n\n\n<p>As of this month, do_action events have been hosted in Cape Town and Johannesburg, South Africa, Beirut, Lebanon, Austin, Texas, and Montréal, Canada. In addition, events are now scheduled for <a href="https://doaction.org/event/bristol-2018/">Bristol, England</a> and <a href="https://doaction.org/event/zurich-2018/">Zurich, Switzerland</a> in 2018.</p>\n\n\n\n<p>To get involved in organizing a do_action event locally, read <a href="https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/do_action-charity-hackathon/">the do_action organizer’s handbook</a> and join the #community-events channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Gutenberg Development Advances</h2>\n\n\n\n<p>While work steadily continues on Gutenberg — the new editor for WordPress core — one update from this month addresses one of the primary concerns that some people shared about the project.</p>\n\n\n\n<p>Up until <a href="https://make.wordpress.org/core/2017/10/24/whats-new-in-gutenberg-24th-october/">the release on October 24</a>, Gutenberg did not support the meta boxes that so many WordPress content creators rely on. The new editor now has initial support for meta boxes as well as a host of other critical features for content creation in WordPress.</p>\n\n\n\n<p><a href="https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/">Test out Gutenberg</a> right now and help develop it by joining the #core-editor channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a> and following the <a href="https://make.wordpress.org/core/">Core team blog</a>.</p>\n\n\n\n<hr class="wp-block-separator" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul>\n    <li>DonateWC, a new initiative that assists people in attending WordCamps, <a href="https://donatewc.org/wordcamp-stories/wordcamp-cape-town-experience/">sponsored Trust Nhokovedzo from Harare, Zimbabwe</a> to speak at WordCamp Cape Town, South Africa this month.</li>\n    <li><a href="https://woocommerce.com/2017/10/saying-goodbye-to-canvas/">The popular Canvas theme was retired</a> this month to allow WooCommerce to focus on moving their products forward more effectively.</li>\n    <li>The next installment of Camp Press, the WordPress community retreat event, will take place <a href="https://camp.press/event/iceland2018/">in Iceland</a>.</li>\n    <li>If you run a WordPress meetup group, but are struggling to find content for your events, the WordPress Marketing team <a href="https://make.wordpress.org/community/2017/10/04/supporting-for-meetups-with-low-content/">has put together some ideas</a> to help.</li>\n    <li><a href="https://2017.us.wordcamp.org/">WordCamp US 2017</a> is just around the corner — there’s still time to grab your tickets.</li>\n</ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5044";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WordPress 4.8.3 Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/news/2017/10/wordpress-4-8-3-security-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 31 Oct 2017 14:20:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5035";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:378:"WordPress 4.8.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.8.2 and earlier are affected by an issue where $wpdb-&#62;prepare() can create unexpected and unsafe queries leading to potential SQL injection (SQLi). WordPress core is not directly vulnerable to [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1337:"<p>WordPress 4.8.3 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.8.2 and earlier are affected by an issue where <code>$wpdb-&gt;prepare()</code> can create unexpected and unsafe queries leading to potential SQL injection (SQLi). WordPress core is not directly vulnerable to this issue, but we’ve added hardening to prevent plugins and themes from accidentally causing a vulnerability. Reported by <a href="https://twitter.com/ircmaxell">Anthony Ferrara</a>.</p>\n<p>This release includes a change in behaviour for the <code>esc_sql()</code> function. Most developers will not be affected by this change, you can read more details in the <a href="https://make.wordpress.org/core/2017/10/31/changed-behaviour-of-esc_sql-in-wordpress-4-8-3/">developer note</a>.</p>\n<p>Thank you to the reporter of this issue for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.8.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.8.3.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5035";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.9 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 31 Oct 2017 04:42:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4963";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"The release candidate for WordPress 4.9 is now available. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.9 on Tuesday, November 14, but we need your help to get there. If you haven’t tested 4.9 yet, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3275:"<p>The release candidate for WordPress 4.9 is now available.</p>\n<p>RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.9 on <strong>Tuesday, November 14</strong>, but we need your help to get there. If you haven’t tested 4.9 yet, now is the time!</p>\n<p>To test WordPress 4.9, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.9-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=42049&amp;stop_rev=42022&amp;limit=100&amp;sfp_email=&amp;sfph_mail=">almost 30 changes</a> since releasing Beta 4 last week. For more details about what’s new in version 4.9, check out the <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.9 and update your plugin’s <em>Tested up to</em> version in the readme to 4.9. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release — we work hard to avoid breaking things. An in-depth field guide to developer-focused changes is coming soon on the <a href="https://make.wordpress.org/core/">core development blog</a>. In the meantime, you can review the <a href="https://make.wordpress.org/core/tag/4.9+dev-notes/">developer notes for 4.9</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p>This week&#8217;s haiku is courtesy of <a href=\'https://profiles.wordpress.org/pento/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>pento</a>:</p>\n<p><em>this is halloween <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f383.png" alt="🎃" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em><br />\n<em>scary, spooky, candy day <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f47b.png" alt="👻" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em><br />\n<em>rc1 is sweet <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f36c.png" alt="🍬" class="wp-smiley" style="height: 1em; max-height: 1em;" /></em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4963";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:9:"\n	hourly	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:4:"\n	1	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Sun, 07 Jan 2018 12:47:57 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Thu, 04 Jan 2018 06:37:41 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}}s:5:"build";s:14:"20171220105819";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(772, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1515372485', 'no'),
(773, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1515329285', 'no'),
(774, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1515372495', 'no'),
(775, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/01/the-month-in-wordpress-december-2017/\'>The Month in WordPress: December 2017</a></li></ul></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 out of 0 bytes received</p></div>', 'no'),
(778, 'category_children', 'a:0:{}', 'yes'),
(782, '_transient_timeout_plugin_slugs', '1515422181', 'no'),
(783, '_transient_plugin_slugs', 'a:12:{i:0;s:25:"adminimize/adminimize.php";i:1;s:33:"admin-menu-editor/menu-editor.php";i:2;s:34:"advanced-custom-fields-pro/acf.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:5;s:69:"wonderm00ns-simple-facebook-open-graph-tags/wonderm00n-open-graph.php";i:6;s:35:"genaero-members/genaero-members.php";i:7;s:50:"google-analytics-for-wordpress/googleanalytics.php";i:8;s:25:"login-logo/login-logo.php";i:9;s:44:"wp-native-php-sessions/pantheon-sessions.php";i:10;s:27:"wp-pagenavi/wp-pagenavi.php";i:11;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(796, '_site_transient_timeout_browser_c89882595a0b6fb065599d15013dcdb5', '1515944950', 'no'),
(797, '_site_transient_browser_c89882595a0b6fb065599d15013dcdb5', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"63.0.3239.132";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(801, '_transient_is_multi_author', '0', 'yes'),
(802, '_transient_understrap_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pantheon_sessions`
--

CREATE TABLE `wp_pantheon_sessions` (
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'The user_id corresponding to a session, or 0 for anonymous user.',
  `session_id` varchar(128) NOT NULL DEFAULT '' COMMENT 'A session ID. The value is generated by plugin''s session handlers.',
  `secure_session_id` varchar(128) NOT NULL DEFAULT '' COMMENT 'Secure session ID. The value is generated by plugin''s session handlers.',
  `ip_address` varchar(128) NOT NULL DEFAULT '' COMMENT 'The IP address that last used this session ID.',
  `datetime` datetime DEFAULT NULL COMMENT 'The datetime value when this session last requested a page. Old records are purged by PHP automatically.',
  `data` blob COMMENT 'The serialized contents of $_SESSION, an array of name/value pairs that persists across page requests by this session ID. Plugin loads $_SESSION from here at the start of each request and saves it at the end.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_pantheon_sessions`
--

INSERT INTO `wp_pantheon_sessions` (`user_id`, `session_id`, `secure_session_id`, `ip_address`, `datetime`, `data`) VALUES
(0, 'ac11d18026069d9945d86c74f7037185', '', '::1', '2017-12-27 00:42:15', 0x757365726e616d657c733a373a226c6b6a6c6a6e6e223b),
(0, '1b9b3b600504ed73a4eb5ec5ca71396f', '', '::1', '2018-01-02 08:42:19', ''),
(1, '7055314c22f3e0c13236419800311208', '', '::1', '2018-01-07 14:34:03', 0x67656e6165726f5f66616365626f6f6b5f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f67656e65726174696f6e6165726f73706163652f6c6f67696e2f223b4642524c485f73746174657c733a33323a223839396634353431363366383736333535363336343964373063376239303830223b757365726e616d657c733a31343a2273746566616e69655f63686f6e67223b757365725f69647c733a313a2232223b),
(0, 'aec6935fbf4e149ccdc82bbba3265c6b', '', '::1', '2018-01-07 14:46:21', ''),
(1, 'e6919c0292efad36fac27db929c2456a', '', '::1', '2018-01-07 15:49:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1514969156:1'),
(7, 5, '_wp_page_template', 'page-homepage.php'),
(8, 7, '_edit_last', '1'),
(9, 7, '_wp_page_template', 'page-videos.php'),
(10, 7, '_edit_lock', '1515339467:1'),
(11, 9, '_edit_last', '1'),
(12, 9, '_wp_page_template', 'page-experiments.php'),
(13, 9, '_edit_lock', '1515339617:1'),
(14, 11, '_edit_last', '1'),
(15, 11, '_edit_lock', '1515339651:1'),
(16, 11, '_wp_page_template', 'page-trailblazers.php'),
(17, 13, '_edit_last', '1'),
(18, 13, '_wp_page_template', 'page-events.php'),
(19, 13, '_edit_lock', '1515339624:1'),
(20, 15, '_edit_last', '1'),
(21, 15, '_wp_page_template', 'page-vault.php'),
(22, 15, '_edit_lock', '1515340343:1'),
(26, 19, '_um_custom_fields', 'a:4:{s:10:"user_login";a:15:{s:5:"title";s:8:"Username";s:7:"metakey";s:10:"user_login";s:4:"type";s:4:"text";s:5:"label";s:8:"Username";s:8:"required";i:1;s:6:"public";i:1;s:8:"editable";i:0;s:8:"validate";s:15:"unique_username";s:9:"min_chars";i:3;s:9:"max_chars";i:24;s:8:"position";s:1:"2";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:10:"user_email";a:15:{s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:4:"type";s:4:"text";s:7:"metakey";s:10:"user_email";s:8:"position";s:1:"1";s:5:"title";s:5:"Email";s:10:"visibility";s:3:"all";s:5:"label";s:5:"Email";s:6:"public";s:1:"1";s:8:"validate";s:12:"unique_email";s:8:"required";s:1:"0";s:8:"editable";s:1:"1";s:17:"conditional_value";s:1:"0";s:8:"in_group";s:0:"";}s:13:"user_password";a:19:{s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:4:"type";s:8:"password";s:7:"metakey";s:13:"user_password";s:8:"position";s:1:"3";s:5:"title";s:8:"Password";s:9:"min_chars";s:1:"8";s:9:"max_chars";s:2:"30";s:10:"visibility";s:3:"all";s:5:"label";s:8:"Password";s:11:"placeholder";s:22:"(8 or more characters)";s:6:"public";s:1:"1";s:15:"force_good_pass";s:1:"1";s:18:"force_confirm_pass";s:1:"0";s:8:"required";s:1:"1";s:8:"editable";s:1:"1";s:17:"conditional_value";s:1:"0";s:8:"in_group";s:0:"";}s:9:"_um_row_1";a:5:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";s:6:"origin";s:9:"_um_row_1";}}'),
(27, 19, '_um_mode', 'register'),
(28, 19, '_um_core', 'register'),
(29, 19, '_um_register_use_globals', '0'),
(30, 20, '_um_custom_fields', 'a:3:{s:8:"username";a:13:{s:5:"title";s:18:"Username or E-mail";s:7:"metakey";s:8:"username";s:4:"type";s:4:"text";s:5:"label";s:18:"Username or E-mail";s:8:"required";i:1;s:6:"public";i:1;s:8:"editable";i:0;s:8:"validate";s:24:"unique_username_or_email";s:8:"position";s:1:"1";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:13:"user_password";a:16:{s:5:"title";s:8:"Password";s:7:"metakey";s:13:"user_password";s:4:"type";s:8:"password";s:5:"label";s:8:"Password";s:8:"required";i:1;s:6:"public";i:1;s:8:"editable";i:1;s:9:"min_chars";i:8;s:9:"max_chars";i:30;s:15:"force_good_pass";i:1;s:18:"force_confirm_pass";i:1;s:8:"position";s:1:"2";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:9:"_um_row_1";a:5:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";s:6:"origin";s:9:"_um_row_1";}}'),
(31, 20, '_um_mode', 'login'),
(32, 20, '_um_core', 'login'),
(33, 20, '_um_login_use_globals', '1'),
(34, 21, '_um_custom_fields', 'a:1:{s:9:"_um_row_1";a:5:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";s:6:"origin";s:9:"_um_row_1";}}'),
(35, 21, '_um_mode', 'profile'),
(36, 21, '_um_core', 'profile'),
(37, 21, '_um_profile_use_globals', '1'),
(38, 22, '_um_template', 'members'),
(39, 22, '_um_mode', 'directory'),
(40, 22, '_um_has_profile_photo', '0'),
(41, 22, '_um_has_cover_photo', '0'),
(42, 22, '_um_show_social', '0'),
(43, 22, '_um_show_userinfo', '0'),
(44, 22, '_um_show_tagline', '0'),
(45, 22, '_um_search', '0'),
(46, 22, '_um_userinfo_animate', '1'),
(47, 22, '_um_sortby', 'user_registered_desc'),
(48, 22, '_um_profile_photo', '1'),
(49, 22, '_um_cover_photos', '1'),
(50, 22, '_um_show_name', '1'),
(51, 22, '_um_directory_header', '{total_users} Members'),
(52, 22, '_um_directory_header_single', '{total_users} Member'),
(53, 22, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(54, 22, '_um_profiles_per_page', '12'),
(55, 22, '_um_profiles_per_page_mobile', '6'),
(56, 22, '_um_core', 'members'),
(71, 37, '_um_core', 'admin'),
(72, 37, '_um_can_access_wpadmin', '1'),
(73, 37, '_um_can_not_see_adminbar', '0'),
(74, 37, '_um_can_edit_everyone', '1'),
(75, 37, '_um_can_delete_everyone', '1'),
(76, 37, '_um_can_edit_profile', '1'),
(77, 37, '_um_can_delete_profile', '1'),
(78, 37, '_um_can_view_all', '1'),
(79, 37, '_um_can_make_private_profile', '1'),
(80, 37, '_um_can_access_private_profile', '1'),
(81, 37, '_um_default_homepage', '1'),
(82, 37, '_um_status', 'approved'),
(83, 37, '_um_auto_approve_act', 'redirect_profile'),
(84, 37, '_um_after_login', 'redirect_admin'),
(85, 37, '_um_after_logout', 'redirect_home'),
(86, 38, '_um_core', 'member'),
(87, 38, '_um_can_access_wpadmin', '0'),
(88, 38, '_um_can_not_see_adminbar', '1'),
(89, 38, '_um_can_edit_everyone', '0'),
(90, 38, '_um_can_delete_everyone', '0'),
(91, 38, '_um_can_edit_profile', '1'),
(92, 38, '_um_can_delete_profile', '1'),
(93, 38, '_um_can_view_all', '1'),
(94, 38, '_um_can_make_private_profile', '0'),
(95, 38, '_um_can_access_private_profile', '0'),
(96, 38, '_um_default_homepage', '1'),
(97, 38, '_um_status', 'approved'),
(98, 38, '_um_auto_approve_act', 'redirect_profile'),
(99, 38, '_um_after_login', 'redirect_profile'),
(100, 38, '_um_after_logout', 'redirect_home'),
(101, 22, '_edit_lock', '1514305642:1'),
(109, 19, '_edit_lock', '1514305857:1'),
(123, 19, '_edit_last', '1'),
(124, 19, '_um_register_role', '0'),
(125, 19, '_um_register_template', 'register'),
(126, 19, '_um_register_max_width', '450px'),
(127, 19, '_um_register_align', 'center'),
(128, 19, '_um_register_icons', 'label'),
(129, 19, '_um_register_primary_btn_word', 'Join Now'),
(130, 19, '_um_register_primary_btn_color', '#3ba1da'),
(131, 19, '_um_register_primary_btn_hover', '#44b0ec'),
(132, 19, '_um_register_primary_btn_text', '#fff'),
(133, 19, '_um_register_secondary_btn', '0'),
(134, 19, '_um_register_secondary_btn_word', 'Login'),
(135, 19, '_um_register_secondary_btn_color', '#eee'),
(136, 19, '_um_register_secondary_btn_hover', '#e5e5e5'),
(137, 19, '_um_register_secondary_btn_text', '#666'),
(138, 19, '_um_register_custom_css', ''),
(139, 19, '_um_profile_use_globals', '1'),
(140, 19, '_um_profile_role', '0'),
(141, 19, '_um_profile_template', 'profile'),
(142, 19, '_um_profile_max_width', '1000px'),
(143, 19, '_um_profile_area_max_width', '600px'),
(144, 19, '_um_profile_align', 'center'),
(145, 19, '_um_profile_icons', 'label'),
(146, 19, '_um_profile_primary_btn_word', 'Update Profile'),
(147, 19, '_um_profile_primary_btn_color', '#3ba1da'),
(148, 19, '_um_profile_primary_btn_hover', '#44b0ec'),
(149, 19, '_um_profile_primary_btn_text', '#fff'),
(150, 19, '_um_profile_secondary_btn', '1'),
(151, 19, '_um_profile_secondary_btn_word', 'Cancel'),
(152, 19, '_um_profile_secondary_btn_color', '#eee'),
(153, 19, '_um_profile_secondary_btn_hover', '#e5e5e5'),
(154, 19, '_um_profile_secondary_btn_text', '#666'),
(155, 19, '_um_profile_main_bg', '0'),
(156, 19, '_um_profile_main_text_color', '0'),
(157, 19, '_um_profile_cover_enabled', '1'),
(158, 19, '_um_profile_cover_ratio', '2.7:1'),
(159, 19, '_um_profile_photosize', '190px'),
(160, 19, '_um_profile_photocorner', '1'),
(161, 19, '_um_profile_photo_required', '0'),
(162, 19, '_um_profile_header_bg', '0'),
(163, 19, '_um_profile_header_text', '#999'),
(164, 19, '_um_profile_header_link_color', '#555'),
(165, 19, '_um_profile_header_link_hcolor', '#444'),
(166, 19, '_um_profile_header_icon_color', '#aaa'),
(167, 19, '_um_profile_header_icon_hcolor', '#3ba1da'),
(168, 19, '_um_profile_show_name', '1'),
(169, 19, '_um_profile_show_social_links', '0'),
(170, 19, '_um_profile_show_bio', '1'),
(172, 19, '_um_profile_custom_css', ''),
(173, 19, '_um_login_use_globals', '1'),
(174, 19, '_um_login_template', 'login'),
(175, 19, '_um_login_max_width', '450px'),
(176, 19, '_um_login_align', 'center'),
(177, 19, '_um_login_icons', 'label'),
(178, 19, '_um_login_primary_btn_word', 'Login'),
(179, 19, '_um_login_primary_btn_color', '#3ba1da'),
(180, 19, '_um_login_primary_btn_hover', '#44b0ec'),
(181, 19, '_um_login_primary_btn_text', '#fff'),
(182, 19, '_um_login_secondary_btn', '1'),
(183, 19, '_um_login_secondary_btn_word', 'Register'),
(184, 19, '_um_login_secondary_btn_color', '#eee'),
(185, 19, '_um_login_secondary_btn_hover', '#e5e5e5'),
(186, 19, '_um_login_secondary_btn_text', '#666'),
(187, 19, '_um_login_forgot_pass_link', '1'),
(188, 19, '_um_login_show_rememberme', '1'),
(189, 19, '_um_login_after_login', '0'),
(190, 19, '_um_login_redirect_url', ''),
(191, 19, '_um_login_custom_css', ''),
(193, 19, '_um_profile_metafields', 'a:1:{i:0;s:1:"0";}'),
(194, 42, '_edit_last', '1'),
(195, 42, '_edit_lock', '1513857355:1'),
(196, 42, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(197, 42, '_um_custom_access_settings', '0'),
(198, 42, '_um_accessible', '0'),
(199, 42, '_um_access_redirect2', ''),
(200, 42, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(201, 42, '_um_access_redirect', ''),
(202, 44, '_edit_last', '1'),
(203, 44, '_edit_lock', '1513857509:1'),
(204, 44, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(205, 44, '_um_custom_access_settings', '0'),
(206, 44, '_um_accessible', '0'),
(207, 44, '_um_access_redirect2', ''),
(208, 44, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(209, 44, '_um_access_redirect', ''),
(235, 53, '_edit_lock', '1514366273:1'),
(236, 53, '_edit_last', '1'),
(237, 53, '_wp_page_template', 'page-templates/sign-up.php'),
(238, 55, '_edit_lock', '1514964540:1'),
(239, 55, '_edit_last', '1'),
(240, 55, '_wp_page_template', 'page-templates/profile.php'),
(241, 55, '_members_access_role', 'member'),
(242, 55, '_members_access_error', 'You need to be a registered and logged in member to be able to access this page.'),
(259, 68, '_edit_lock', '1514305526:1'),
(260, 68, '_edit_last', '1'),
(261, 68, '_wp_page_template', 'default'),
(262, 68, '_um_custom_access_settings', '0'),
(263, 68, '_um_accessible', '0'),
(264, 68, '_um_access_redirect2', ''),
(265, 68, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(266, 68, '_um_access_redirect', ''),
(267, 70, '_edit_last', '1'),
(268, 70, '_wp_page_template', 'default'),
(269, 70, '_um_custom_access_settings', '0'),
(270, 70, '_um_accessible', '0'),
(271, 70, '_um_access_redirect2', ''),
(272, 70, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(273, 70, '_um_access_redirect', ''),
(274, 70, '_edit_lock', '1514305533:1'),
(275, 72, '_edit_lock', '1514305546:1'),
(276, 72, '_edit_last', '1'),
(277, 72, '_wp_page_template', 'default'),
(278, 72, '_um_custom_access_settings', '0'),
(279, 72, '_um_accessible', '0'),
(280, 72, '_um_access_redirect2', ''),
(281, 72, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(282, 72, '_um_access_redirect', ''),
(283, 74, '_edit_last', '1'),
(284, 74, '_wp_page_template', 'default'),
(285, 74, '_um_custom_access_settings', '0'),
(286, 74, '_um_accessible', '0'),
(287, 74, '_um_access_redirect2', ''),
(288, 74, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(289, 74, '_um_access_redirect', ''),
(290, 74, '_edit_lock', '1514305822:1'),
(291, 76, '_edit_last', '1'),
(292, 76, '_wp_page_template', 'page-templates/login.php'),
(293, 76, '_um_custom_access_settings', '0'),
(294, 76, '_um_accessible', '0'),
(295, 76, '_um_access_redirect2', ''),
(296, 76, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(297, 76, '_um_access_redirect', ''),
(298, 76, '_edit_lock', '1514554155:1'),
(299, 78, '_edit_last', '1'),
(300, 78, '_wp_page_template', 'default'),
(301, 78, '_um_custom_access_settings', '0'),
(302, 78, '_um_accessible', '0'),
(303, 78, '_um_access_redirect2', ''),
(304, 78, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(305, 78, '_um_access_redirect', ''),
(306, 78, '_edit_lock', '1514305569:1'),
(307, 80, '_edit_last', '1'),
(308, 80, '_wp_page_template', 'default'),
(309, 80, '_um_custom_access_settings', '0'),
(310, 80, '_um_accessible', '0'),
(311, 80, '_um_access_redirect2', ''),
(312, 80, '_um_access_roles', 'a:1:{i:0;s:1:"0";}'),
(313, 80, '_um_access_redirect', ''),
(314, 80, '_edit_lock', '1514305579:1'),
(315, 38, '_edit_lock', '1514334360:1'),
(316, 20, '_edit_lock', '1514305895:1'),
(317, 21, '_edit_lock', '1514305967:1'),
(318, 70, '_wp_trash_meta_status', 'publish'),
(319, 70, '_wp_trash_meta_time', '1514334673'),
(320, 70, '_wp_desired_post_slug', 'account'),
(321, 78, '_wp_trash_meta_status', 'publish'),
(322, 78, '_wp_trash_meta_time', '1514334673'),
(323, 78, '_wp_desired_post_slug', 'logout'),
(324, 72, '_wp_trash_meta_status', 'publish'),
(325, 72, '_wp_trash_meta_time', '1514334673'),
(326, 72, '_wp_desired_post_slug', 'members'),
(327, 80, '_wp_trash_meta_status', 'publish'),
(328, 80, '_wp_trash_meta_time', '1514334673'),
(329, 80, '_wp_desired_post_slug', 'password-reset'),
(330, 74, '_wp_trash_meta_status', 'publish'),
(331, 74, '_wp_trash_meta_time', '1514334673'),
(332, 74, '_wp_desired_post_slug', 'register'),
(333, 68, '_wp_trash_meta_status', 'publish'),
(334, 68, '_wp_trash_meta_time', '1514334673'),
(335, 68, '_wp_desired_post_slug', 'user'),
(336, 83, '_edit_lock', '1515338150:1'),
(337, 83, '_edit_last', '1'),
(338, 83, '_wp_page_template', 'page-templates/dashboard.php'),
(339, 87, '_edit_lock', '1514553347:1'),
(340, 87, '_edit_last', '1'),
(341, 87, '_wp_page_template', 'page-templates/logout.php'),
(342, 87, '_webdados_fb_open_graph_specific_image', ''),
(343, 87, '_webdados_fb_open_graph_specific_description', ''),
(344, 76, '_webdados_fb_open_graph_specific_image', ''),
(345, 76, '_webdados_fb_open_graph_specific_description', ''),
(346, 90, '_edit_lock', '1515337904:1'),
(347, 90, '_edit_last', '1'),
(348, 90, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(349, 90, '_webdados_fb_open_graph_specific_image', ''),
(350, 90, '_webdados_fb_open_graph_specific_description', ''),
(351, 92, '_menu_item_type', 'custom'),
(352, 92, '_menu_item_menu_item_parent', '0'),
(353, 92, '_menu_item_object_id', '92'),
(354, 92, '_menu_item_object', 'custom'),
(355, 92, '_menu_item_target', ''),
(356, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(357, 92, '_menu_item_xfn', ''),
(358, 92, '_menu_item_url', 'http://localhost/generationaerospace/'),
(359, 92, '_menu_item_orphaned', '1514947417'),
(360, 93, '_menu_item_type', 'post_type'),
(361, 93, '_menu_item_menu_item_parent', '0'),
(362, 93, '_menu_item_object_id', '13'),
(363, 93, '_menu_item_object', 'page'),
(364, 93, '_menu_item_target', ''),
(365, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(366, 93, '_menu_item_xfn', ''),
(367, 93, '_menu_item_url', ''),
(368, 93, '_menu_item_orphaned', '1514947417'),
(369, 94, '_menu_item_type', 'post_type'),
(370, 94, '_menu_item_menu_item_parent', '0'),
(371, 94, '_menu_item_object_id', '7'),
(372, 94, '_menu_item_object', 'page'),
(373, 94, '_menu_item_target', ''),
(374, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(375, 94, '_menu_item_xfn', ''),
(376, 94, '_menu_item_url', ''),
(377, 94, '_menu_item_orphaned', '1514947417'),
(378, 95, '_menu_item_type', 'post_type'),
(379, 95, '_menu_item_menu_item_parent', '0'),
(380, 95, '_menu_item_object_id', '9'),
(381, 95, '_menu_item_object', 'page'),
(382, 95, '_menu_item_target', ''),
(383, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(384, 95, '_menu_item_xfn', ''),
(385, 95, '_menu_item_url', ''),
(386, 95, '_menu_item_orphaned', '1514947417'),
(387, 96, '_menu_item_type', 'post_type'),
(388, 96, '_menu_item_menu_item_parent', '0'),
(389, 96, '_menu_item_object_id', '90'),
(390, 96, '_menu_item_object', 'page'),
(391, 96, '_menu_item_target', ''),
(392, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(393, 96, '_menu_item_xfn', ''),
(394, 96, '_menu_item_url', ''),
(395, 96, '_menu_item_orphaned', '1514947417'),
(396, 97, '_menu_item_type', 'post_type'),
(397, 97, '_menu_item_menu_item_parent', '0'),
(398, 97, '_menu_item_object_id', '11'),
(399, 97, '_menu_item_object', 'page'),
(400, 97, '_menu_item_target', ''),
(401, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(402, 97, '_menu_item_xfn', ''),
(403, 97, '_menu_item_url', ''),
(404, 97, '_menu_item_orphaned', '1514947417'),
(405, 98, '_menu_item_type', 'post_type'),
(406, 98, '_menu_item_menu_item_parent', '0'),
(407, 98, '_menu_item_object_id', '5'),
(408, 98, '_menu_item_object', 'page'),
(409, 98, '_menu_item_target', ''),
(410, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(411, 98, '_menu_item_xfn', ''),
(412, 98, '_menu_item_url', ''),
(413, 98, '_menu_item_orphaned', '1514947417'),
(414, 99, '_menu_item_type', 'post_type'),
(415, 99, '_menu_item_menu_item_parent', '0'),
(416, 99, '_menu_item_object_id', '76'),
(417, 99, '_menu_item_object', 'page'),
(418, 99, '_menu_item_target', ''),
(419, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(420, 99, '_menu_item_xfn', ''),
(421, 99, '_menu_item_url', ''),
(422, 99, '_menu_item_orphaned', '1514947417'),
(423, 100, '_menu_item_type', 'post_type'),
(424, 100, '_menu_item_menu_item_parent', '0'),
(425, 100, '_menu_item_object_id', '87'),
(426, 100, '_menu_item_object', 'page'),
(427, 100, '_menu_item_target', ''),
(428, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(429, 100, '_menu_item_xfn', ''),
(430, 100, '_menu_item_url', ''),
(431, 100, '_menu_item_orphaned', '1514947418'),
(432, 101, '_menu_item_type', 'post_type'),
(433, 101, '_menu_item_menu_item_parent', '0'),
(434, 101, '_menu_item_object_id', '83'),
(435, 101, '_menu_item_object', 'page'),
(436, 101, '_menu_item_target', ''),
(437, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(438, 101, '_menu_item_xfn', ''),
(439, 101, '_menu_item_url', ''),
(440, 101, '_menu_item_orphaned', '1514947418'),
(441, 102, '_menu_item_type', 'post_type'),
(442, 102, '_menu_item_menu_item_parent', '0'),
(443, 102, '_menu_item_object_id', '55'),
(444, 102, '_menu_item_object', 'page'),
(445, 102, '_menu_item_target', ''),
(446, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(447, 102, '_menu_item_xfn', ''),
(448, 102, '_menu_item_url', ''),
(449, 102, '_menu_item_orphaned', '1514947418'),
(450, 103, '_menu_item_type', 'post_type'),
(451, 103, '_menu_item_menu_item_parent', '0'),
(452, 103, '_menu_item_object_id', '44'),
(453, 103, '_menu_item_object', 'page'),
(454, 103, '_menu_item_target', ''),
(455, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(456, 103, '_menu_item_xfn', ''),
(457, 103, '_menu_item_url', ''),
(458, 103, '_menu_item_orphaned', '1514947418'),
(459, 104, '_menu_item_type', 'post_type'),
(460, 104, '_menu_item_menu_item_parent', '0'),
(461, 104, '_menu_item_object_id', '53'),
(462, 104, '_menu_item_object', 'page'),
(463, 104, '_menu_item_target', ''),
(464, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(465, 104, '_menu_item_xfn', ''),
(466, 104, '_menu_item_url', ''),
(467, 104, '_menu_item_orphaned', '1514947418'),
(468, 105, '_menu_item_type', 'post_type'),
(469, 105, '_menu_item_menu_item_parent', '0'),
(470, 105, '_menu_item_object_id', '42'),
(471, 105, '_menu_item_object', 'page'),
(472, 105, '_menu_item_target', ''),
(473, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(474, 105, '_menu_item_xfn', ''),
(475, 105, '_menu_item_url', ''),
(476, 105, '_menu_item_orphaned', '1514947418'),
(477, 106, '_menu_item_type', 'post_type'),
(478, 106, '_menu_item_menu_item_parent', '0'),
(479, 106, '_menu_item_object_id', '15'),
(480, 106, '_menu_item_object', 'page'),
(481, 106, '_menu_item_target', ''),
(482, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(483, 106, '_menu_item_xfn', ''),
(484, 106, '_menu_item_url', ''),
(485, 106, '_menu_item_orphaned', '1514947418'),
(486, 107, '_edit_lock', '1514963166:1'),
(487, 107, '_edit_last', '1'),
(488, 107, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(489, 107, '_webdados_fb_open_graph_specific_image', ''),
(490, 107, '_webdados_fb_open_graph_specific_description', ''),
(491, 109, '_edit_lock', '1515122874:1'),
(492, 109, '_edit_last', '1'),
(493, 109, '_wp_page_template', 'page-templates/videos-list.php'),
(494, 109, '_webdados_fb_open_graph_specific_image', ''),
(495, 109, '_webdados_fb_open_graph_specific_description', ''),
(496, 111, '_edit_lock', '1515053759:1'),
(497, 111, '_edit_last', '1'),
(498, 111, '_wp_page_template', 'page-templates/add-video.php'),
(499, 111, '_webdados_fb_open_graph_specific_image', ''),
(500, 111, '_webdados_fb_open_graph_specific_description', ''),
(501, 113, '_edit_lock', '1515141171:1'),
(502, 113, '_edit_last', '1'),
(503, 113, '_wp_page_template', 'page-templates/fav-videos.php'),
(504, 113, '_webdados_fb_open_graph_specific_image', ''),
(505, 113, '_webdados_fb_open_graph_specific_description', ''),
(506, 115, '_edit_lock', '1514963232:1'),
(507, 115, '_edit_last', '1'),
(508, 115, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(509, 115, '_webdados_fb_open_graph_specific_image', ''),
(510, 115, '_webdados_fb_open_graph_specific_description', ''),
(511, 117, '_edit_lock', '1515171247:1'),
(512, 117, '_edit_last', '1'),
(513, 117, '_wp_page_template', 'page-templates/submit-idea.php'),
(514, 117, '_webdados_fb_open_graph_specific_image', ''),
(515, 117, '_webdados_fb_open_graph_specific_description', ''),
(516, 119, '_menu_item_type', 'custom'),
(517, 119, '_menu_item_menu_item_parent', '0'),
(518, 119, '_menu_item_object_id', '119'),
(519, 119, '_menu_item_object', 'custom'),
(520, 119, '_menu_item_target', ''),
(521, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(522, 119, '_menu_item_xfn', ''),
(523, 119, '_menu_item_url', 'http://localhost/generationaerospace/'),
(524, 119, '_menu_item_orphaned', '1514963430'),
(525, 120, '_menu_item_type', 'post_type'),
(526, 120, '_menu_item_menu_item_parent', '0'),
(527, 120, '_menu_item_object_id', '111'),
(528, 120, '_menu_item_object', 'page'),
(529, 120, '_menu_item_target', ''),
(530, 120, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(531, 120, '_menu_item_xfn', ''),
(532, 120, '_menu_item_url', ''),
(533, 120, '_menu_item_orphaned', '1514963430'),
(534, 121, '_menu_item_type', 'post_type'),
(535, 121, '_menu_item_menu_item_parent', '0'),
(536, 121, '_menu_item_object_id', '13'),
(537, 121, '_menu_item_object', 'page'),
(538, 121, '_menu_item_target', ''),
(539, 121, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(540, 121, '_menu_item_xfn', ''),
(541, 121, '_menu_item_url', ''),
(542, 121, '_menu_item_orphaned', '1514963430'),
(543, 122, '_menu_item_type', 'post_type'),
(544, 122, '_menu_item_menu_item_parent', '0'),
(545, 122, '_menu_item_object_id', '7'),
(546, 122, '_menu_item_object', 'page'),
(547, 122, '_menu_item_target', ''),
(548, 122, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(549, 122, '_menu_item_xfn', ''),
(550, 122, '_menu_item_url', ''),
(551, 122, '_menu_item_orphaned', '1514963430'),
(552, 123, '_menu_item_type', 'post_type'),
(553, 123, '_menu_item_menu_item_parent', '0'),
(554, 123, '_menu_item_object_id', '9'),
(555, 123, '_menu_item_object', 'page'),
(556, 123, '_menu_item_target', ''),
(557, 123, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(558, 123, '_menu_item_xfn', ''),
(559, 123, '_menu_item_url', ''),
(560, 123, '_menu_item_orphaned', '1514963430'),
(561, 124, '_menu_item_type', 'post_type'),
(562, 124, '_menu_item_menu_item_parent', '0'),
(563, 124, '_menu_item_object_id', '90'),
(564, 124, '_menu_item_object', 'page'),
(565, 124, '_menu_item_target', ''),
(566, 124, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(567, 124, '_menu_item_xfn', ''),
(568, 124, '_menu_item_url', ''),
(569, 124, '_menu_item_orphaned', '1514963430'),
(570, 125, '_menu_item_type', 'post_type'),
(571, 125, '_menu_item_menu_item_parent', '0'),
(572, 125, '_menu_item_object_id', '11'),
(573, 125, '_menu_item_object', 'page'),
(574, 125, '_menu_item_target', ''),
(575, 125, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(576, 125, '_menu_item_xfn', ''),
(577, 125, '_menu_item_url', ''),
(578, 125, '_menu_item_orphaned', '1514963430'),
(579, 126, '_menu_item_type', 'post_type'),
(580, 126, '_menu_item_menu_item_parent', '0'),
(581, 126, '_menu_item_object_id', '5'),
(582, 126, '_menu_item_object', 'page'),
(583, 126, '_menu_item_target', ''),
(584, 126, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(585, 126, '_menu_item_xfn', ''),
(586, 126, '_menu_item_url', ''),
(587, 126, '_menu_item_orphaned', '1514963430'),
(588, 127, '_menu_item_type', 'post_type'),
(589, 127, '_menu_item_menu_item_parent', '0'),
(590, 127, '_menu_item_object_id', '76'),
(591, 127, '_menu_item_object', 'page'),
(592, 127, '_menu_item_target', ''),
(593, 127, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(594, 127, '_menu_item_xfn', ''),
(595, 127, '_menu_item_url', ''),
(596, 127, '_menu_item_orphaned', '1514963430'),
(597, 128, '_menu_item_type', 'post_type'),
(598, 128, '_menu_item_menu_item_parent', '0'),
(599, 128, '_menu_item_object_id', '87'),
(600, 128, '_menu_item_object', 'page'),
(601, 128, '_menu_item_target', ''),
(602, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(603, 128, '_menu_item_xfn', ''),
(604, 128, '_menu_item_url', ''),
(605, 128, '_menu_item_orphaned', '1514963430'),
(606, 129, '_menu_item_type', 'post_type'),
(607, 129, '_menu_item_menu_item_parent', '0'),
(608, 129, '_menu_item_object_id', '83'),
(609, 129, '_menu_item_object', 'page'),
(610, 129, '_menu_item_target', ''),
(611, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(612, 129, '_menu_item_xfn', ''),
(613, 129, '_menu_item_url', ''),
(614, 129, '_menu_item_orphaned', '1514963430'),
(615, 130, '_menu_item_type', 'post_type'),
(616, 130, '_menu_item_menu_item_parent', '0'),
(617, 130, '_menu_item_object_id', '115'),
(618, 130, '_menu_item_object', 'page'),
(619, 130, '_menu_item_target', ''),
(620, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(621, 130, '_menu_item_xfn', ''),
(622, 130, '_menu_item_url', ''),
(623, 130, '_menu_item_orphaned', '1514963430'),
(624, 131, '_menu_item_type', 'post_type'),
(625, 131, '_menu_item_menu_item_parent', '0'),
(626, 131, '_menu_item_object_id', '113'),
(627, 131, '_menu_item_object', 'page'),
(628, 131, '_menu_item_target', ''),
(629, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(630, 131, '_menu_item_xfn', ''),
(631, 131, '_menu_item_url', ''),
(632, 131, '_menu_item_orphaned', '1514963430'),
(633, 132, '_menu_item_type', 'post_type'),
(634, 132, '_menu_item_menu_item_parent', '0'),
(635, 132, '_menu_item_object_id', '55'),
(636, 132, '_menu_item_object', 'page'),
(637, 132, '_menu_item_target', ''),
(638, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(639, 132, '_menu_item_xfn', ''),
(640, 132, '_menu_item_url', ''),
(641, 132, '_menu_item_orphaned', '1514963430'),
(642, 133, '_menu_item_type', 'post_type'),
(643, 133, '_menu_item_menu_item_parent', '0'),
(644, 133, '_menu_item_object_id', '107'),
(645, 133, '_menu_item_object', 'page'),
(646, 133, '_menu_item_target', ''),
(647, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(648, 133, '_menu_item_xfn', ''),
(649, 133, '_menu_item_url', ''),
(650, 133, '_menu_item_orphaned', '1514963430'),
(651, 134, '_menu_item_type', 'post_type'),
(652, 134, '_menu_item_menu_item_parent', '0'),
(653, 134, '_menu_item_object_id', '109'),
(654, 134, '_menu_item_object', 'page'),
(655, 134, '_menu_item_target', ''),
(656, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(657, 134, '_menu_item_xfn', ''),
(658, 134, '_menu_item_url', ''),
(659, 134, '_menu_item_orphaned', '1514963430'),
(660, 135, '_menu_item_type', 'post_type'),
(661, 135, '_menu_item_menu_item_parent', '0'),
(662, 135, '_menu_item_object_id', '44'),
(663, 135, '_menu_item_object', 'page'),
(664, 135, '_menu_item_target', ''),
(665, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(666, 135, '_menu_item_xfn', ''),
(667, 135, '_menu_item_url', ''),
(668, 135, '_menu_item_orphaned', '1514963430'),
(669, 136, '_menu_item_type', 'post_type'),
(670, 136, '_menu_item_menu_item_parent', '0'),
(671, 136, '_menu_item_object_id', '53'),
(672, 136, '_menu_item_object', 'page'),
(673, 136, '_menu_item_target', ''),
(674, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(675, 136, '_menu_item_xfn', ''),
(676, 136, '_menu_item_url', ''),
(677, 136, '_menu_item_orphaned', '1514963430'),
(678, 137, '_menu_item_type', 'post_type'),
(679, 137, '_menu_item_menu_item_parent', '0'),
(680, 137, '_menu_item_object_id', '117'),
(681, 137, '_menu_item_object', 'page'),
(682, 137, '_menu_item_target', ''),
(683, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(684, 137, '_menu_item_xfn', ''),
(685, 137, '_menu_item_url', ''),
(686, 137, '_menu_item_orphaned', '1514963430'),
(687, 138, '_menu_item_type', 'post_type'),
(688, 138, '_menu_item_menu_item_parent', '0'),
(689, 138, '_menu_item_object_id', '42'),
(690, 138, '_menu_item_object', 'page'),
(691, 138, '_menu_item_target', ''),
(692, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(693, 138, '_menu_item_xfn', ''),
(694, 138, '_menu_item_url', ''),
(695, 138, '_menu_item_orphaned', '1514963431'),
(696, 139, '_menu_item_type', 'post_type'),
(697, 139, '_menu_item_menu_item_parent', '0'),
(698, 139, '_menu_item_object_id', '15'),
(699, 139, '_menu_item_object', 'page'),
(700, 139, '_menu_item_target', ''),
(701, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(702, 139, '_menu_item_xfn', ''),
(703, 139, '_menu_item_url', ''),
(704, 139, '_menu_item_orphaned', '1514963431'),
(705, 140, '_menu_item_type', 'post_type'),
(706, 140, '_menu_item_menu_item_parent', '0'),
(707, 140, '_menu_item_object_id', '117'),
(708, 140, '_menu_item_object', 'page'),
(709, 140, '_menu_item_target', ''),
(710, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(711, 140, '_menu_item_xfn', ''),
(712, 140, '_menu_item_url', ''),
(714, 141, '_menu_item_type', 'post_type'),
(715, 141, '_menu_item_menu_item_parent', '0'),
(716, 141, '_menu_item_object_id', '115'),
(717, 141, '_menu_item_object', 'page'),
(718, 141, '_menu_item_target', ''),
(719, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(720, 141, '_menu_item_xfn', ''),
(721, 141, '_menu_item_url', ''),
(723, 142, '_menu_item_type', 'post_type'),
(724, 142, '_menu_item_menu_item_parent', '0'),
(725, 142, '_menu_item_object_id', '113'),
(726, 142, '_menu_item_object', 'page'),
(727, 142, '_menu_item_target', ''),
(728, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(729, 142, '_menu_item_xfn', ''),
(730, 142, '_menu_item_url', ''),
(732, 143, '_menu_item_type', 'post_type'),
(733, 143, '_menu_item_menu_item_parent', '144'),
(734, 143, '_menu_item_object_id', '111'),
(735, 143, '_menu_item_object', 'page'),
(736, 143, '_menu_item_target', ''),
(737, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(738, 143, '_menu_item_xfn', ''),
(739, 143, '_menu_item_url', ''),
(741, 144, '_menu_item_type', 'post_type'),
(742, 144, '_menu_item_menu_item_parent', '0'),
(743, 144, '_menu_item_object_id', '109'),
(744, 144, '_menu_item_object', 'page'),
(745, 144, '_menu_item_target', ''),
(746, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(747, 144, '_menu_item_xfn', ''),
(748, 144, '_menu_item_url', ''),
(759, 146, '_menu_item_type', 'post_type'),
(760, 146, '_menu_item_menu_item_parent', '0'),
(761, 146, '_menu_item_object_id', '83'),
(762, 146, '_menu_item_object', 'page'),
(763, 146, '_menu_item_target', ''),
(764, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(765, 146, '_menu_item_xfn', ''),
(766, 146, '_menu_item_url', ''),
(768, 83, '_webdados_fb_open_graph_specific_image', ''),
(769, 83, '_webdados_fb_open_graph_specific_description', ''),
(770, 107, '_wp_trash_meta_status', 'publish'),
(771, 107, '_wp_trash_meta_time', '1514964559'),
(772, 107, '_wp_desired_post_slug', 'my-profile-2'),
(773, 147, '_menu_item_type', 'post_type'),
(774, 147, '_menu_item_menu_item_parent', '0'),
(775, 147, '_menu_item_object_id', '55'),
(776, 147, '_menu_item_object', 'page'),
(777, 147, '_menu_item_target', ''),
(778, 147, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(779, 147, '_menu_item_xfn', ''),
(780, 147, '_menu_item_url', ''),
(782, 55, '_webdados_fb_open_graph_specific_image', ''),
(783, 55, '_webdados_fb_open_graph_specific_description', ''),
(784, 5, '_webdados_fb_open_graph_specific_image', ''),
(785, 5, '_webdados_fb_open_graph_specific_description', ''),
(786, 149, '_menu_item_type', 'post_type'),
(787, 149, '_menu_item_menu_item_parent', '0'),
(788, 149, '_menu_item_object_id', '87'),
(789, 149, '_menu_item_object', 'page'),
(790, 149, '_menu_item_target', ''),
(791, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(792, 149, '_menu_item_xfn', ''),
(793, 149, '_menu_item_url', ''),
(795, 151, '_edit_lock', '1515126575:1'),
(796, 151, '_edit_last', '1'),
(797, 151, '_wp_page_template', 'page-templates/add-video.php'),
(798, 151, '_webdados_fb_open_graph_specific_image', ''),
(799, 151, '_webdados_fb_open_graph_specific_description', ''),
(800, 154, '_form', '<label> Title*\n    [text* your-title] </label>\n\n<label> Your Idea*\n    [textarea* your-idea] </label>\n\n[hidden member_username id:member_username ]\n\n[submit "Send"]'),
(801, 154, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:37:"Generation Aerospace "[your-subject]"";s:6:"sender";s:30:"[your-name] <devs@text100.com>";s:9:"recipient";s:16:"devs@text100.com";s:4:"body";s:195:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Generation Aerospace (http://localhost/generationaerospace)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(802, 154, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:37:"Generation Aerospace "[your-subject]"";s:6:"sender";s:39:"Generation Aerospace <devs@text100.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:137:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Generation Aerospace (http://localhost/generationaerospace)";s:18:"additional_headers";s:26:"Reply-To: devs@text100.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(803, 154, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(804, 154, '_additional_settings', 'demo_mode: on'),
(805, 154, '_locale', 'en_US'),
(815, 154, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:51:"Invalid mailbox syntax is used in the %name% field.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(816, 157, '_edit_lock', '1515339157:1'),
(817, 157, '_edit_last', '1'),
(818, 160, '_edit_lock', '1515339526:1'),
(819, 160, '_edit_last', '1'),
(820, 160, 'message', 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
(821, 160, '_message', 'field_5a522db96537e'),
(822, 160, 'expiry_date', '2018-01-07 23:30:00'),
(823, 160, '_expiry_date', 'field_5a522dea6537f'),
(824, 160, '_webdados_fb_open_graph_specific_image', ''),
(825, 160, '_webdados_fb_open_graph_specific_description', ''),
(846, 7, '_webdados_fb_open_graph_specific_image', ''),
(847, 7, '_webdados_fb_open_graph_specific_description', ''),
(848, 163, '_menu_item_type', 'post_type'),
(849, 163, '_menu_item_menu_item_parent', '0'),
(850, 163, '_menu_item_object_id', '5'),
(851, 163, '_menu_item_object', 'page'),
(852, 163, '_menu_item_target', ''),
(853, 163, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(854, 163, '_menu_item_xfn', ''),
(855, 163, '_menu_item_url', ''),
(857, 164, '_menu_item_type', 'post_type'),
(858, 164, '_menu_item_menu_item_parent', '0'),
(859, 164, '_menu_item_object_id', '13'),
(860, 164, '_menu_item_object', 'page'),
(861, 164, '_menu_item_target', ''),
(862, 164, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(863, 164, '_menu_item_xfn', ''),
(864, 164, '_menu_item_url', ''),
(866, 165, '_menu_item_type', 'post_type'),
(867, 165, '_menu_item_menu_item_parent', '0'),
(868, 165, '_menu_item_object_id', '7'),
(869, 165, '_menu_item_object', 'page'),
(870, 165, '_menu_item_target', ''),
(871, 165, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(872, 165, '_menu_item_xfn', ''),
(873, 165, '_menu_item_url', ''),
(875, 166, '_menu_item_type', 'post_type'),
(876, 166, '_menu_item_menu_item_parent', '0'),
(877, 166, '_menu_item_object_id', '9'),
(878, 166, '_menu_item_object', 'page'),
(879, 166, '_menu_item_target', ''),
(880, 166, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(881, 166, '_menu_item_xfn', ''),
(882, 166, '_menu_item_url', ''),
(884, 167, '_menu_item_type', 'post_type'),
(885, 167, '_menu_item_menu_item_parent', '0'),
(886, 167, '_menu_item_object_id', '11'),
(887, 167, '_menu_item_object', 'page'),
(888, 167, '_menu_item_target', ''),
(889, 167, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(890, 167, '_menu_item_xfn', ''),
(891, 167, '_menu_item_url', ''),
(893, 168, '_menu_item_type', 'post_type'),
(894, 168, '_menu_item_menu_item_parent', '0'),
(895, 168, '_menu_item_object_id', '15'),
(896, 168, '_menu_item_object', 'page'),
(897, 168, '_menu_item_target', ''),
(898, 168, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(899, 168, '_menu_item_xfn', ''),
(900, 168, '_menu_item_url', ''),
(902, 169, '_menu_item_type', 'post_type'),
(903, 169, '_menu_item_menu_item_parent', '0'),
(904, 169, '_menu_item_object_id', '44'),
(905, 169, '_menu_item_object', 'page'),
(906, 169, '_menu_item_target', ''),
(907, 169, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(908, 169, '_menu_item_xfn', ''),
(909, 169, '_menu_item_url', ''),
(911, 170, '_menu_item_type', 'post_type'),
(912, 170, '_menu_item_menu_item_parent', '0'),
(913, 170, '_menu_item_object_id', '42'),
(914, 170, '_menu_item_object', 'page'),
(915, 170, '_menu_item_target', ''),
(916, 170, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(917, 170, '_menu_item_xfn', ''),
(918, 170, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-20 10:26:42', '2017-12-20 10:26:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-12-20 10:26:42', '2017-12-20 10:26:42', '', 0, 'http://localhost/generationaerospace/?p=1', 0, 'post', '', 1),
(5, 1, '2017-12-21 11:08:19', '2017-12-21 11:08:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-01-03 08:48:14', '2018-01-03 08:48:14', '', 0, 'http://localhost/generationaerospace/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-12-21 11:08:19', '2017-12-21 11:08:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-12-21 11:08:19', '2017-12-21 11:08:19', '', 5, 'http://localhost/generationaerospace/2017/12/21/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-12-21 11:11:07', '2017-12-21 11:11:07', '', 'Find a Video', '', 'publish', 'closed', 'closed', '', 'find-a-video', '', '', '2018-01-07 15:40:00', '2018-01-07 15:40:00', '', 0, 'http://localhost/generationaerospace/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-12-21 11:11:07', '2017-12-21 11:11:07', '', 'Find a Video', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-21 11:11:07', '2017-12-21 11:11:07', '', 7, 'http://localhost/generationaerospace/2017/12/21/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-12-21 11:11:14', '2017-12-21 11:11:14', '', 'Find an Experiment', '', 'publish', 'closed', 'closed', '', 'find-an-experiment', '', '', '2018-01-07 15:40:17', '2018-01-07 15:40:17', '', 0, 'http://localhost/generationaerospace/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-12-21 11:11:14', '2017-12-21 11:11:14', '', 'Find an Experiment', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-12-21 11:11:14', '2017-12-21 11:11:14', '', 9, 'http://localhost/generationaerospace/2017/12/21/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-12-21 11:11:32', '2017-12-21 11:11:32', '', 'GenAero Trailblazers', '', 'publish', 'closed', 'closed', '', 'genaero-trailblazers', '', '', '2018-01-07 15:40:50', '2018-01-07 15:40:50', '', 0, 'http://localhost/generationaerospace/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-12-21 11:11:32', '2017-12-21 11:11:32', '', 'GenAero Trailblazers', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-12-21 11:11:32', '2017-12-21 11:11:32', '', 11, 'http://localhost/generationaerospace/2017/12/21/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-12-21 11:11:38', '2017-12-21 11:11:38', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-01-07 15:40:24', '2018-01-07 15:40:24', '', 0, 'http://localhost/generationaerospace/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-12-21 11:11:38', '2017-12-21 11:11:38', '', 'Events', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-21 11:11:38', '2017-12-21 11:11:38', '', 13, 'http://localhost/generationaerospace/2017/12/21/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-12-21 11:11:43', '2017-12-21 11:11:43', '', 'The Vault', '', 'publish', 'closed', 'closed', '', 'the-vault', '', '', '2018-01-07 15:52:23', '2018-01-07 15:52:23', '', 0, 'http://localhost/generationaerospace/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-12-21 11:11:43', '2017-12-21 11:11:43', '', 'The Vault', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-12-21 11:11:43', '2017-12-21 11:11:43', '', 15, 'http://localhost/generationaerospace/2017/12/21/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-12-21 11:26:39', '2017-12-21 11:26:39', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2017-12-21 11:56:37', '2017-12-21 11:56:37', '', 0, 'http://localhost/generationaerospace/um_form/default-registration/', 0, 'um_form', '', 0),
(20, 1, '2017-12-21 11:26:39', '2017-12-21 11:26:39', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2017-12-21 11:26:39', '2017-12-21 11:26:39', '', 0, 'http://localhost/generationaerospace/um_form/default-login/', 0, 'um_form', '', 0),
(21, 1, '2017-12-21 11:26:39', '2017-12-21 11:26:39', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2017-12-21 11:26:39', '2017-12-21 11:26:39', '', 0, 'http://localhost/generationaerospace/um_form/default-profile/', 0, 'um_form', '', 0),
(22, 1, '2017-12-21 11:26:39', '2017-12-21 11:26:39', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2017-12-21 11:26:39', '2017-12-21 11:26:39', '', 0, 'http://localhost/generationaerospace/um_directory/members/', 0, 'um_directory', '', 0),
(37, 1, '2017-12-21 11:26:40', '2017-12-21 11:26:40', '', 'Admin', '', 'publish', 'closed', 'closed', '', 'admin', '', '', '2017-12-21 11:26:40', '2017-12-21 11:26:40', '', 0, 'http://localhost/generationaerospace/um_role/admin/', 0, 'um_role', '', 0),
(38, 1, '2017-12-21 11:26:40', '2017-12-21 11:26:40', '', 'Member', '', 'publish', 'closed', 'closed', '', 'member', '', '', '2017-12-21 11:26:40', '2017-12-21 11:26:40', '', 0, 'http://localhost/generationaerospace/um_role/member/', 0, 'um_role', '', 0),
(42, 1, '2017-12-21 11:58:14', '2017-12-21 11:58:14', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2017-12-21 11:58:14', '2017-12-21 11:58:14', '', 0, 'http://localhost/generationaerospace/?page_id=42', 0, 'page', '', 0),
(43, 1, '2017-12-21 11:58:14', '2017-12-21 11:58:14', '', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-12-21 11:58:14', '2017-12-21 11:58:14', '', 42, 'http://localhost/generationaerospace/2017/12/21/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-12-21 11:58:28', '2017-12-21 11:58:28', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2017-12-21 11:58:28', '2017-12-21 11:58:28', '', 0, 'http://localhost/generationaerospace/?page_id=44', 0, 'page', '', 0),
(45, 1, '2017-12-21 11:58:28', '2017-12-21 11:58:28', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-12-21 11:58:28', '2017-12-21 11:58:28', '', 44, 'http://localhost/generationaerospace/2017/12/21/44-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-12-21 16:59:16', '2017-12-21 16:59:16', '', 'Sign Up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2017-12-27 00:33:06', '2017-12-27 00:33:06', '', 0, 'http://localhost/generationaerospace/?page_id=53', 0, 'page', '', 0),
(54, 1, '2017-12-21 16:59:16', '2017-12-21 16:59:16', '<h1 style="text-align: center;">Sign Up Here</h1>\r\n[wppb-register role="member"]\r\n\r\n<p>By clicking Join Now, you agree to our Terms and Conditions <a href="http://localhost/generationaerospace/terms-and-conditions/" rel="noopener" target="_blank">here</a>.</p>\r\n<div class="separator">OR</div>\r\n\r\n<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="true" data-use-continue-as="false"></div>', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-12-21 16:59:16', '2017-12-21 16:59:16', '', 53, 'http://localhost/generationaerospace/2017/12/21/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-12-21 17:07:39', '2017-12-21 17:07:39', '', 'My Profile', '', 'publish', 'closed', 'closed', '', 'my-profile', '', '', '2018-01-03 07:30:34', '2018-01-03 07:30:34', '', 0, 'http://localhost/generationaerospace/?page_id=55', 0, 'page', '', 0),
(56, 1, '2017-12-21 17:07:39', '2017-12-21 17:07:39', '[wppb-edit-profile]', 'My Profile', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-21 17:07:39', '2017-12-21 17:07:39', '', 55, 'http://localhost/generationaerospace/2017/12/21/55-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-12-22 02:55:12', '2017-12-22 02:55:12', '', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-12-22 02:55:12', '2017-12-22 02:55:12', '', 53, 'http://localhost/generationaerospace/2017/12/22/53-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-12-25 11:22:55', '2017-12-25 11:22:55', '', 'Sign Up1', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-12-25 11:22:55', '2017-12-25 11:22:55', '', 53, 'http://localhost/generationaerospace/2017/12/25/53-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-12-25 11:29:28', '2017-12-25 11:29:28', '', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-12-25 11:29:28', '2017-12-25 11:29:28', '', 53, 'http://localhost/generationaerospace/2017/12/25/53-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-12-26 16:25:00', '2017-12-26 16:25:00', '', 'Sign Up1', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-12-26 16:25:00', '2017-12-26 16:25:00', '', 53, 'http://localhost/generationaerospace/2017/12/26/53-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-12-26 16:27:48', '2017-12-26 16:27:48', '', 'User', '', 'trash', 'closed', 'closed', '', 'user__trashed', '', '', '2017-12-27 00:31:13', '2017-12-27 00:31:13', '', 0, 'http://localhost/generationaerospace/?page_id=68', 0, 'page', '', 0),
(69, 1, '2017-12-26 16:27:48', '2017-12-26 16:27:48', '', 'User', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-26 16:27:48', '2017-12-26 16:27:48', '', 68, 'http://localhost/generationaerospace/2017/12/26/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-12-26 16:27:55', '2017-12-26 16:27:55', '', 'Account', '', 'trash', 'closed', 'closed', '', 'account__trashed', '', '', '2017-12-27 00:31:13', '2017-12-27 00:31:13', '', 0, 'http://localhost/generationaerospace/?page_id=70', 0, 'page', '', 0),
(71, 1, '2017-12-26 16:27:55', '2017-12-26 16:27:55', '', 'Account', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-12-26 16:27:55', '2017-12-26 16:27:55', '', 70, 'http://localhost/generationaerospace/2017/12/26/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-12-26 16:28:08', '2017-12-26 16:28:08', '', 'Members', '', 'trash', 'closed', 'closed', '', 'members__trashed', '', '', '2017-12-27 00:31:13', '2017-12-27 00:31:13', '', 0, 'http://localhost/generationaerospace/?page_id=72', 0, 'page', '', 0),
(73, 1, '2017-12-26 16:28:08', '2017-12-26 16:28:08', '', 'Members', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-12-26 16:28:08', '2017-12-26 16:28:08', '', 72, 'http://localhost/generationaerospace/2017/12/26/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-12-26 16:28:14', '2017-12-26 16:28:14', '[ultimatemember form_id=19]\r\n\r\n', 'Register', '', 'trash', 'closed', 'closed', '', 'register__trashed', '', '', '2017-12-27 00:31:13', '2017-12-27 00:31:13', '', 0, 'http://localhost/generationaerospace/?page_id=74', 0, 'page', '', 0),
(75, 1, '2017-12-26 16:28:14', '2017-12-26 16:28:14', '', 'Register', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-12-26 16:28:14', '2017-12-26 16:28:14', '', 74, 'http://localhost/generationaerospace/2017/12/26/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-12-26 16:28:23', '2017-12-26 16:28:23', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2017-12-29 13:31:38', '2017-12-29 13:31:38', '', 0, 'http://localhost/generationaerospace/?page_id=76', 0, 'page', '', 0),
(77, 1, '2017-12-26 16:28:23', '2017-12-26 16:28:23', '', 'Login', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-26 16:28:23', '2017-12-26 16:28:23', '', 76, 'http://localhost/generationaerospace/2017/12/26/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-12-26 16:28:31', '2017-12-26 16:28:31', '', 'Logout', '', 'trash', 'closed', 'closed', '', 'logout__trashed', '', '', '2017-12-27 00:31:13', '2017-12-27 00:31:13', '', 0, 'http://localhost/generationaerospace/?page_id=78', 0, 'page', '', 0),
(79, 1, '2017-12-26 16:28:31', '2017-12-26 16:28:31', '', 'Logout', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-12-26 16:28:31', '2017-12-26 16:28:31', '', 78, 'http://localhost/generationaerospace/2017/12/26/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-12-26 16:28:41', '2017-12-26 16:28:41', '', 'Password Reset', '', 'trash', 'closed', 'closed', '', 'password-reset__trashed', '', '', '2017-12-27 00:31:13', '2017-12-27 00:31:13', '', 0, 'http://localhost/generationaerospace/?page_id=80', 0, 'page', '', 0),
(81, 1, '2017-12-26 16:28:41', '2017-12-26 16:28:41', '', 'Password Reset', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-12-26 16:28:41', '2017-12-26 16:28:41', '', 80, 'http://localhost/generationaerospace/2017/12/26/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-12-26 16:32:45', '2017-12-26 16:32:45', '[ultimatemember form_id=19]\r\n\r\n', 'Register', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-12-26 16:32:45', '2017-12-26 16:32:45', '', 74, 'http://localhost/generationaerospace/2017/12/26/74-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-12-27 00:31:29', '2017-12-27 00:31:29', '', 'Member Dashboard', '', 'publish', 'closed', 'closed', '', 'member-dashboard', '', '', '2018-01-03 07:12:54', '2018-01-03 07:12:54', '', 0, 'http://localhost/generationaerospace/?page_id=83', 0, 'page', '', 0),
(84, 1, '2017-12-27 00:31:29', '2017-12-27 00:31:29', '', 'Member Dashboard', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-12-27 00:31:29', '2017-12-27 00:31:29', '', 83, 'http://localhost/generationaerospace/2017/12/27/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-12-27 00:33:06', '2017-12-27 00:33:06', '', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-12-27 00:33:06', '2017-12-27 00:33:06', '', 53, 'http://localhost/generationaerospace/2017/12/27/53-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-12-29 11:44:29', '2017-12-29 11:44:29', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2017-12-29 11:46:46', '2017-12-29 11:46:46', '', 0, 'http://localhost/generationaerospace/?page_id=87', 0, 'page', '', 0),
(88, 1, '2017-12-29 11:44:29', '2017-12-29 11:44:29', '', 'Logout', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-12-29 11:44:29', '2017-12-29 11:44:29', '', 87, 'http://localhost/generationaerospace/2017/12/29/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-01-03 02:43:19', '2018-01-03 02:43:19', '', 'Forgot Password', '', 'publish', 'closed', 'closed', '', 'forgot-password', '', '', '2018-01-03 02:43:19', '2018-01-03 02:43:19', '', 0, 'http://localhost/generationaerospace/?page_id=90', 0, 'page', '', 0),
(91, 1, '2018-01-03 02:43:19', '2018-01-03 02:43:19', '', 'Forgot Password', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-01-03 02:43:19', '2018-01-03 02:43:19', '', 90, 'http://localhost/generationaerospace/2018/01/03/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=94', 1, 'nav_menu_item', '', 0),
(95, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=95', 1, 'nav_menu_item', '', 0),
(96, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=96', 1, 'nav_menu_item', '', 0),
(97, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=97', 1, 'nav_menu_item', '', 0),
(98, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=99', 1, 'nav_menu_item', '', 0),
(100, 1, '2018-01-03 02:43:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=100', 1, 'nav_menu_item', '', 0),
(101, 1, '2018-01-03 02:43:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2018-01-03 02:43:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2018-01-03 02:43:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2018-01-03 02:43:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2018-01-03 02:43:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=105', 1, 'nav_menu_item', '', 0),
(106, 1, '2018-01-03 02:43:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 02:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=106', 1, 'nav_menu_item', '', 0),
(107, 1, '2018-01-03 07:08:22', '2018-01-03 07:08:22', '', 'My Profile', '', 'trash', 'closed', 'closed', '', 'my-profile-2__trashed', '', '', '2018-01-03 07:29:19', '2018-01-03 07:29:19', '', 0, 'http://localhost/generationaerospace/?page_id=107', 0, 'page', '', 0),
(108, 1, '2018-01-03 07:08:22', '2018-01-03 07:08:22', '', 'My Profile', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-01-03 07:08:22', '2018-01-03 07:08:22', '', 107, 'http://localhost/generationaerospace/2018/01/03/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-01-03 07:08:39', '2018-01-03 07:08:39', '', 'My Videos', '', 'publish', 'closed', 'closed', '', 'my-videos', '', '', '2018-01-05 03:30:17', '2018-01-05 03:30:17', '', 0, 'http://localhost/generationaerospace/?page_id=109', 0, 'page', '', 0),
(110, 1, '2018-01-03 07:08:39', '2018-01-03 07:08:39', '', 'My Videos', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-01-03 07:08:39', '2018-01-03 07:08:39', '', 109, 'http://localhost/generationaerospace/2018/01/03/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-01-03 07:09:04', '2018-01-03 07:09:04', '', 'Submit a Video', '', 'publish', 'closed', 'closed', '', 'submit-a-video', '', '', '2018-01-04 08:18:11', '2018-01-04 08:18:11', '', 0, 'http://localhost/generationaerospace/?page_id=111', 0, 'page', '', 0),
(112, 1, '2018-01-03 07:09:04', '2018-01-03 07:09:04', '', 'Add a Video', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-01-03 07:09:04', '2018-01-03 07:09:04', '', 111, 'http://localhost/generationaerospace/2018/01/03/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-01-03 07:09:20', '2018-01-03 07:09:20', '', 'My Favourite Videos', '', 'publish', 'closed', 'closed', '', 'my-favourite-videos', '', '', '2018-01-05 08:35:13', '2018-01-05 08:35:13', '', 0, 'http://localhost/generationaerospace/?page_id=113', 0, 'page', '', 0),
(114, 1, '2018-01-03 07:09:20', '2018-01-03 07:09:20', '', 'My Favourite Videos', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-01-03 07:09:20', '2018-01-03 07:09:20', '', 113, 'http://localhost/generationaerospace/2018/01/03/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-01-03 07:09:32', '2018-01-03 07:09:32', '', 'My Favourite Experiments', '', 'publish', 'closed', 'closed', '', 'my-favourite-experiments', '', '', '2018-01-03 07:09:32', '2018-01-03 07:09:32', '', 0, 'http://localhost/generationaerospace/?page_id=115', 0, 'page', '', 0),
(116, 1, '2018-01-03 07:09:32', '2018-01-03 07:09:32', '', 'My Favourite Experiments', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-01-03 07:09:32', '2018-01-03 07:09:32', '', 115, 'http://localhost/generationaerospace/2018/01/03/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-01-03 07:09:42', '2018-01-03 07:09:42', '<h4>Got an Idea or Feedback? Tell us!</h4>\r\n[contact-form-7 id="154" title="Submit an Idea"]', 'Submit an Idea', '', 'publish', 'closed', 'closed', '', 'submit-an-idea', '', '', '2018-01-05 16:56:29', '2018-01-05 16:56:29', '', 0, 'http://localhost/generationaerospace/?page_id=117', 0, 'page', '', 0),
(118, 1, '2018-01-03 07:09:42', '2018-01-03 07:09:42', '', 'Submit an Idea', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-01-03 07:09:42', '2018-01-03 07:09:42', '', 117, 'http://localhost/generationaerospace/2018/01/03/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=119', 1, 'nav_menu_item', '', 0),
(120, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=120', 1, 'nav_menu_item', '', 0),
(121, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=121', 1, 'nav_menu_item', '', 0),
(122, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=122', 1, 'nav_menu_item', '', 0),
(123, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=123', 1, 'nav_menu_item', '', 0),
(124, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=124', 1, 'nav_menu_item', '', 0),
(125, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=125', 1, 'nav_menu_item', '', 0),
(126, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=126', 1, 'nav_menu_item', '', 0),
(127, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=127', 1, 'nav_menu_item', '', 0),
(128, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=128', 1, 'nav_menu_item', '', 0),
(129, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=129', 1, 'nav_menu_item', '', 0),
(130, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=130', 1, 'nav_menu_item', '', 0),
(131, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=131', 1, 'nav_menu_item', '', 0),
(132, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=132', 1, 'nav_menu_item', '', 0),
(133, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=133', 1, 'nav_menu_item', '', 0),
(134, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=134', 1, 'nav_menu_item', '', 0),
(135, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=135', 1, 'nav_menu_item', '', 0),
(136, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=136', 1, 'nav_menu_item', '', 0),
(137, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=137', 1, 'nav_menu_item', '', 0),
(138, 1, '2018-01-03 07:10:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=138', 1, 'nav_menu_item', '', 0),
(139, 1, '2018-01-03 07:10:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-03 07:10:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=139', 1, 'nav_menu_item', '', 0),
(140, 1, '2018-01-03 07:11:18', '2018-01-03 07:11:18', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=140', 7, 'nav_menu_item', '', 0),
(141, 1, '2018-01-03 07:11:18', '2018-01-03 07:11:18', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=141', 6, 'nav_menu_item', '', 0),
(142, 1, '2018-01-03 07:11:17', '2018-01-03 07:11:17', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=142', 5, 'nav_menu_item', '', 0),
(143, 1, '2018-01-03 07:11:17', '2018-01-03 07:11:17', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=143', 4, 'nav_menu_item', '', 0),
(144, 1, '2018-01-03 07:11:17', '2018-01-03 07:11:17', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=144', 3, 'nav_menu_item', '', 0),
(146, 1, '2018-01-03 07:11:17', '2018-01-03 07:11:17', '', 'Dashboard', '', 'publish', 'closed', 'closed', '', 'dashboard', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=146', 1, 'nav_menu_item', '', 0),
(147, 1, '2018-01-03 07:29:36', '2018-01-03 07:29:36', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=147', 2, 'nav_menu_item', '', 0),
(148, 1, '2018-01-03 07:30:34', '2018-01-03 07:30:34', '', 'My Profile', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-01-03 07:30:34', '2018-01-03 07:30:34', '', 55, 'http://localhost/generationaerospace/2018/01/03/55-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-01-03 14:46:04', '2018-01-03 14:46:04', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2018-01-03 14:46:04', '2018-01-03 14:46:04', '', 0, 'http://localhost/generationaerospace/?p=149', 8, 'nav_menu_item', '', 0),
(150, 1, '2018-01-04 08:18:11', '2018-01-04 08:18:11', '', 'Submit a Video', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-01-04 08:18:11', '2018-01-04 08:18:11', '', 111, 'http://localhost/generationaerospace/2018/01/04/111-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-01-05 04:31:54', '2018-01-05 04:31:54', '', 'Edit A Video', '', 'publish', 'closed', 'closed', '', 'edit-a-video', '', '', '2018-01-05 04:31:54', '2018-01-05 04:31:54', '', 0, 'http://localhost/generationaerospace/?page_id=151', 0, 'page', '', 0),
(152, 1, '2018-01-05 04:31:54', '2018-01-05 04:31:54', '', 'Edit A Video', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2018-01-05 04:31:54', '2018-01-05 04:31:54', '', 151, 'http://localhost/generationaerospace/2018/01/05/151-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-01-05 16:32:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-05 16:32:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/generationaerospace/?p=153', 0, 'post', '', 0),
(154, 1, '2018-01-05 16:33:56', '2018-01-05 16:33:56', '<label> Title*\r\n    [text* your-title] </label>\r\n\r\n<label> Your Idea*\r\n    [textarea* your-idea] </label>\r\n\r\n[hidden member_username id:member_username ]\r\n\r\n[submit "Send"]\n1\nGeneration Aerospace "[your-subject]"\n[your-name] <devs@text100.com>\ndevs@text100.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Generation Aerospace (http://localhost/generationaerospace)\nReply-To: [your-email]\n\n\n\n\nGeneration Aerospace "[your-subject]"\nGeneration Aerospace <devs@text100.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Generation Aerospace (http://localhost/generationaerospace)\nReply-To: devs@text100.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.\ndemo_mode: on', 'Submit an Idea', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-01-05 17:03:51', '2018-01-05 17:03:51', '', 0, 'http://localhost/generationaerospace/?post_type=wpcf7_contact_form&#038;p=154', 0, 'wpcf7_contact_form', '', 0),
(155, 1, '2018-01-05 16:39:40', '2018-01-05 16:39:40', '[contact-form-7 id="154" title="Submit an Idea"]', 'Submit an Idea', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-01-05 16:39:40', '2018-01-05 16:39:40', '', 117, 'http://localhost/generationaerospace/2018/01/05/117-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-01-05 16:40:25', '2018-01-05 16:40:25', '<h4>Got an Idea or Feedback? Tell us!</h4>\r\n[contact-form-7 id="154" title="Submit an Idea"]', 'Submit an Idea', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-01-05 16:40:25', '2018-01-05 16:40:25', '', 117, 'http://localhost/generationaerospace/2018/01/05/117-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2018-01-07 14:26:33', '2018-01-07 14:26:33', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:13:"announcements";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Announcements ACF', 'announcements-acf', 'publish', 'closed', 'closed', '', 'group_5a522dafe7dd6', '', '', '2018-01-07 15:35:01', '2018-01-07 15:35:01', '', 0, 'http://localhost/generationaerospace/?post_type=acf-field-group&#038;p=157', 0, 'acf-field-group', '', 0),
(158, 1, '2018-01-07 14:26:33', '2018-01-07 14:26:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Message', 'message', 'publish', 'closed', 'closed', '', 'field_5a522db96537e', '', '', '2018-01-07 15:35:01', '2018-01-07 15:35:01', '', 157, 'http://localhost/generationaerospace/?post_type=acf-field&#038;p=158', 0, 'acf-field', '', 0),
(160, 1, '2018-01-07 14:31:08', '2018-01-07 14:31:08', '', 'Test Announcement', '', 'publish', 'closed', 'closed', '', 'test-announcement', '', '', '2018-01-07 15:18:00', '2018-01-07 15:18:00', '', 0, 'http://localhost/generationaerospace/?post_type=post_type&#038;p=160', 0, 'announcements', '', 0),
(163, 1, '2018-01-07 15:51:19', '2018-01-07 15:51:19', ' ', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2018-01-07 15:51:24', '2018-01-07 15:51:24', '', 0, 'http://localhost/generationaerospace/?p=163', 1, 'nav_menu_item', '', 0),
(164, 1, '2018-01-07 15:51:20', '2018-01-07 15:51:20', ' ', '', '', 'publish', 'closed', 'closed', '', '164', '', '', '2018-01-07 15:51:24', '2018-01-07 15:51:24', '', 0, 'http://localhost/generationaerospace/?p=164', 5, 'nav_menu_item', '', 0),
(165, 1, '2018-01-07 15:51:20', '2018-01-07 15:51:20', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2018-01-07 15:51:24', '2018-01-07 15:51:24', '', 0, 'http://localhost/generationaerospace/?p=165', 2, 'nav_menu_item', '', 0),
(166, 1, '2018-01-07 15:51:20', '2018-01-07 15:51:20', ' ', '', '', 'publish', 'closed', 'closed', '', '166', '', '', '2018-01-07 15:51:24', '2018-01-07 15:51:24', '', 0, 'http://localhost/generationaerospace/?p=166', 3, 'nav_menu_item', '', 0),
(167, 1, '2018-01-07 15:51:20', '2018-01-07 15:51:20', ' ', '', '', 'publish', 'closed', 'closed', '', '167', '', '', '2018-01-07 15:51:24', '2018-01-07 15:51:24', '', 0, 'http://localhost/generationaerospace/?p=167', 4, 'nav_menu_item', '', 0),
(168, 1, '2018-01-07 15:51:20', '2018-01-07 15:51:20', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2018-01-07 15:51:24', '2018-01-07 15:51:24', '', 0, 'http://localhost/generationaerospace/?p=168', 6, 'nav_menu_item', '', 0),
(169, 1, '2018-01-07 15:51:44', '2018-01-07 15:51:44', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2018-01-07 15:51:44', '2018-01-07 15:51:44', '', 0, 'http://localhost/generationaerospace/?p=169', 2, 'nav_menu_item', '', 0),
(170, 1, '2018-01-07 15:51:44', '2018-01-07 15:51:44', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2018-01-07 15:51:44', '2018-01-07 15:51:44', '', 0, 'http://localhost/generationaerospace/?p=170', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Members Only Menu', 'members-only-menu', 0),
(3, 'Primary Menu', 'primary-menu', 0),
(4, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 1, 0),
(25, 1, 0),
(27, 1, 0),
(29, 1, 0),
(31, 1, 0),
(33, 1, 0),
(35, 1, 0),
(140, 2, 0),
(141, 2, 0),
(142, 2, 0),
(143, 2, 0),
(144, 2, 0),
(146, 2, 0),
(147, 2, 0),
(149, 2, 0),
(163, 3, 0),
(164, 3, 0),
(165, 3, 0),
(166, 3, 0),
(167, 3, 0),
(168, 3, 0),
(169, 4, 0),
(170, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'genaero_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:6:{s:64:"da1ededeb3034400e17fd21e95767e300d73fec9d547af532dec79a97556218f";a:4:{s:10:"expiration";i:1515343005;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1514133405;}s:64:"5e96dee444a49c24b1752409249dda905ffebf1a29fbbea64a25604e6dbc2408";a:4:{s:10:"expiration";i:1515502074;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1515329274;}s:64:"40da05df11308e1d8d33a2c766091a6c2d344819ed216c3609e4b174f80851a2";a:4:{s:10:"expiration";i:1515509173;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1515336373;}s:64:"049fb8e968909ce18329fecbaaeacf838e6e3c038ca74e019eff8d704e9a51bc";a:4:{s:10:"expiration";i:1515509178;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1515336378;}s:64:"83988da32ba8e4cf099a9d8cf3d168cb69c236e54ab5aad96771d250a2adba73";a:4:{s:10:"expiration";i:1515509185;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";s:5:"login";i:1515336385;}s:64:"f7c9b6e9ca5610a5ffbcbaf1617420f6944e8fb84f935a28af51e6cf3cde108e";a:4:{s:10:"expiration";i:1515512948;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1515340148;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '153'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'account_status', 'approved'),
(20, 1, 'role', 'admin'),
(21, 1, 'um_account_secure_fields', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1515170421'),
(24, 2, 'nickname', 'stefanie'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(36, 2, 'wp_user_level', '0'),
(37, 2, 'synced_gravatar_hashed_id', '9897b8d298165e49328908cb8004c83e'),
(38, 2, 'role', 'member'),
(39, 2, 'submitted', 'a:8:{s:7:"form_id";s:2:"19";s:9:"timestamp";s:10:"1513857728";s:7:"request";s:0:"";s:8:"_wpnonce";s:10:"947da4e4ca";s:16:"_wp_http_referer";s:29:"/generationaerospace/sign-up/";s:10:"user_email";s:22:"stefanie@wearenorth.co";s:10:"user_login";s:8:"stefanie";s:4:"role";s:6:"member";}'),
(41, 2, 'user_login', 'stefanie'),
(42, 2, 'um_user_profile_url_slug_user_login', 'stefanie'),
(43, 2, 'reset_pass_hash', 'tbqgxjQ7ICIu2DU0LHJl7ggknKsIuoX0mIK6OkWX'),
(44, 2, 'account_status', 'approved'),
(46, 2, '_um_last_login', '1513857748'),
(47, 2, 'um_account_secure_fields', 'a:0:{}'),
(48, 2, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(49, 1, 'um_user_profile_url_slug_user_login', 'genaero_admin'),
(50, 1, 'closedpostboxes_profile-builder_page_manage-fields', 'a:0:{}'),
(51, 1, 'metaboxhidden_profile-builder_page_manage-fields', 'a:0:{}'),
(52, 1, 'wppb_pms_cross_promo_dismiss_notification', 'true'),
(53, 3, 'nickname', 'testuser'),
(54, 3, 'first_name', ''),
(55, 3, 'last_name', ''),
(56, 3, 'description', ''),
(57, 3, 'rich_editing', 'true'),
(58, 3, 'syntax_highlighting', 'true'),
(59, 3, 'comment_shortcuts', 'false'),
(60, 3, 'admin_color', 'fresh'),
(61, 3, 'use_ssl', '0'),
(62, 3, 'show_admin_bar_front', 'true'),
(63, 3, 'locale', ''),
(64, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(65, 3, 'wp_user_level', '0'),
(66, 4, 'nickname', 'stef'),
(67, 4, 'first_name', ''),
(68, 4, 'last_name', ''),
(69, 4, 'description', ''),
(70, 4, 'rich_editing', 'true'),
(71, 4, 'syntax_highlighting', 'true'),
(72, 4, 'comment_shortcuts', 'false'),
(73, 4, 'admin_color', 'fresh'),
(74, 4, 'use_ssl', '0'),
(75, 4, 'show_admin_bar_front', 'true'),
(76, 4, 'locale', ''),
(77, 4, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(78, 4, 'wp_user_level', '0'),
(79, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(80, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(81, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'genaero_admin', '$P$BLo2u/dF5dEyCAsaSEv9nR6ChXSdbq1', 'genaero_admin', 'devs@text100.com', '', '2017-12-20 10:26:42', '', 0, 'genaero_admin'),
(2, 'stefanie', '$P$BBrbLcTJ8OzvHjhW2hiTw2BPbS2S7r0', 'stefanie', 'stefanie@wearenorth.co', '', '2017-12-21 12:02:26', '', 0, 'stefanie'),
(3, 'testuser', '$P$B1CjzsJMke0udXCrcRM4PtXFC4Jc/L0', 'testuser', 'test@test.com', '', '2017-12-26 02:34:10', '', 0, 'testuser'),
(4, 'stef', '$P$BSYnBluXVZ8i.IGrxb0Cow/S8rCj8/.', 'stef', 'testtest@test.com', '', '2017-12-26 02:39:35', '', 0, 'stef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cf7dbplugin_st`
--
ALTER TABLE `wp_cf7dbplugin_st`
  ADD PRIMARY KEY (`submit_time`);

--
-- Indexes for table `wp_cf7dbplugin_submits`
--
ALTER TABLE `wp_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_genaero_favourite_videos`
--
ALTER TABLE `wp_genaero_favourite_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `wp_genaero_members`
--
ALTER TABLE `wp_genaero_members`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wp_genaero_videos`
--
ALTER TABLE `wp_genaero_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_pantheon_sessions`
--
ALTER TABLE `wp_pantheon_sessions`
  ADD KEY `session_id` (`session_id`),
  ADD KEY `secure_session_id` (`secure_session_id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_genaero_favourite_videos`
--
ALTER TABLE `wp_genaero_favourite_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_genaero_members`
--
ALTER TABLE `wp_genaero_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_genaero_videos`
--
ALTER TABLE `wp_genaero_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=803;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_genaero_favourite_videos`
--
ALTER TABLE `wp_genaero_favourite_videos`
  ADD CONSTRAINT `wp_genaero_favourite_videos_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `wp_genaero_members` (`id`),
  ADD CONSTRAINT `wp_genaero_favourite_videos_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `wp_genaero_videos` (`id`);

--
-- Constraints for table `wp_genaero_videos`
--
ALTER TABLE `wp_genaero_videos`
  ADD CONSTRAINT `wp_genaero_videos_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `wp_genaero_members` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
