-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2018 at 04:01 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_store`
--

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-19 18:58:41', '2018-06-19 18:58:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
-- Table structure for table `wp_nextend2_image_storage`
--

CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, 'a7cdc953861eae7ae03671a7f6cb286c', '$upload$/2018/06/1889999.jpeg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(2, '54d8bcf7eaae3e0d9d8dc01cda98d8fe', '$upload$/2018/06/1898988.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(3, '53916c27029bec83b2d71496bdef4334', '$upload$/2018/06/199999.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(4, '4ceaf54c5a475b23a860639b9ef00919', '$upload$/2018/06/199999.jpeg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(5, '21e72b63f4e9d8f92111d93a9f3fa902', '$upload$/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(6, '9ee1c8df035e84324f5953ecaf7f0063', '$upload$/2018/06/DScKUVGW4AAph-G.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_section_storage`
--

CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) NOT NULL,
  `section` varchar(128) NOT NULL,
  `referencekey` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'system', 'global', 'n2_ss3_version', '3.3.3', 1, 1),
(10001, 'smartslider', 'sliderChanged', '2', '0', 0, 1),
(10018, 'cache', 'notweb/n2-ss-2', 'data.manifest', '{\"generator\":[]}', 0, 1),
(10019, 'cache', 'notweb/n2-ss-2', 'variations.manifest', '1', 0, 1),
(10020, 'cache', 'notweb/n2-ss-2', 'slideren_US1.manifest', '{\"hash\":\"\",\"nextCacheRefresh\":1845405839,\"currentPath\":\"09087b0f02afb5c3d806972c450b6b67\",\"version\":\"3.3.3\"}', 0, 1),
(10021, 'cache', 'notweb/n2-ss-2', 'slideren_US1', '{\"html\":\"<style>div#n2-ss-2{width:1000px;float:left;margin:0px 0px 0px 0px;}html[dir=\\\"rtl\\\"] div#n2-ss-2{float:right;}div#n2-ss-2 .n2-ss-slider-1{position:relative;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;height:300px;border-style:solid;border-width:0px;border-color:#3e3e3e;border-color:RGBA(62,62,62,1);border-radius:0px;background-clip:padding-box;background-repeat:repeat;background-position:50% 50%;background-size:cover;background-attachment:scroll;}div#n2-ss-2 .n2-ss-slider-background-video-container{position:absolute;left:0;top:0;width:100%;height:100%;overflow:hidden;}div#n2-ss-2 .n2-ss-slider-2{position:relative;width:100%;height:100%;}.x-firefox div#n2-ss-2 .n2-ss-slider-2{opacity:0.99999;}div#n2-ss-2 .n2-ss-slider-3{position:relative;width:100%;height:100%;overflow:hidden;outline:1px solid rgba(0,0,0,0);z-index:10;}div#n2-ss-2 .n2-ss-slide-backgrounds,div#n2-ss-2 .n2-ss-slider-3 > .n-particles-js-canvas-el,div#n2-ss-2 .n2-ss-slider-3 > .n2-ss-divider{position:absolute;left:0;top:0;width:100%;height:100%;}div#n2-ss-2 .n2-ss-slide-backgrounds{z-index:10;}div#n2-ss-2 .n2-ss-slider-3 > .n-particles-js-canvas-el{z-index:12;}div#n2-ss-2 .n2-ss-slide-backgrounds > *{overflow:hidden;}div#n2-ss-2 .n2-ss-slide{position:absolute;top:0;left:0;width:100%;height:100%;z-index:20;display:block;-webkit-backface-visibility:hidden;}div#n2-ss-2 .n2-ss-layers-container{position:relative;width:1000px;height:300px;}div#n2-ss-2 .n2-ss-parallax-clip > .n2-ss-layers-container{position:absolute;right:0;}div#n2-ss-2 .n2-ss-slide{-webkit-perspective:1500px;perspective:1500px;}div#n2-ss-2 .n2-ss-slide-active{z-index:21;}div#n2-ss-2 .nextend-arrow{cursor:pointer;overflow:hidden;line-height:0 !important;z-index:20;}div#n2-ss-2 .nextend-arrow img{position:relative;min-height:0;min-width:0;vertical-align:top;width:auto;height:auto;max-width:100%;max-height:100%;display:inline;}div#n2-ss-2 .nextend-arrow img.n2-arrow-hover-img{display:none;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-hover-img{display:inline;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-normal-img{display:none;}div#n2-ss-2 .nextend-arrow-animated{overflow:hidden;}div#n2-ss-2 .nextend-arrow-animated > div{position:relative;}div#n2-ss-2 .nextend-arrow-animated .n2-active{position:absolute;}div#n2-ss-2 .nextend-arrow-animated-fade{transition:background 0.3s, opacity 0.4s;}div#n2-ss-2 .nextend-arrow-animated-horizontal > div{transition:all 0.4s;left:0;}div#n2-ss-2 .nextend-arrow-animated-horizontal .n2-active{top:0;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal .n2-active{left:-100%;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal .n2-active,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal:HOVER > div{left:100%;}div#n2-ss-2 .nextend-arrow.nextend-arrow-animated-horizontal:HOVER .n2-active{left:0;}div#n2-ss-2 .nextend-arrow-animated-vertical > div{transition:all 0.4s;top:0;}div#n2-ss-2 .nextend-arrow-animated-vertical .n2-active{left:0;}div#n2-ss-2 .nextend-arrow-animated-vertical .n2-active{top:-100%;}div#n2-ss-2 .nextend-arrow-animated-vertical:HOVER > div{top:100%;}div#n2-ss-2 .nextend-arrow-animated-vertical:HOVER .n2-active{top:0;}<\\/style><div id=\\\"n2-ss-2-align\\\" class=\\\"n2-ss-align\\\"><div class=\\\"n2-padding\\\"><div id=\\\"n2-ss-2\\\" data-creator=\\\"Smart Slider 3\\\" class=\\\"n2-ss-slider n2-ow n2-has-hover n2notransition n2-ss-load-fade \\\" data-minFontSizedesktopPortrait=\\\"4\\\" data-minFontSizedesktopLandscape=\\\"4\\\" data-minFontSizetabletPortrait=\\\"4\\\" data-minFontSizetabletLandscape=\\\"4\\\" data-minFontSizemobilePortrait=\\\"4\\\" data-minFontSizemobileLandscape=\\\"4\\\" style=\\\"font-size: 16px;\\\" data-fontsize=\\\"16\\\">\\r\\n        <div class=\\\"n2-ss-slider-1 n2-ss-swipe-element n2-ow\\\" style=\\\"\\\">\\r\\n                        <div class=\\\"n2-ss-slider-2 n2-ow\\\">\\r\\n                                <div class=\\\"n2-ss-slider-3 n2-ow\\\" style=\\\"\\\">\\r\\n\\r\\n                    <div class=\\\"n2-ss-slide-backgrounds\\\"><\\/div><div data-first=\\\"1\\\" data-slide-duration=\\\"0\\\" data-id=\\\"8\\\" style=\\\"\\\" class=\\\"n2-ss-slide n2-ss-canvas n2-ow  n2-ss-slide-8\\\"><div class=\\\"n2-ss-slide-background n2-ow\\\" data-mode=\\\"fill\\\"><img data-hash=\\\"21e72b63f4e9d8f92111d93a9f3fa902\\\" data-desktop=\\\"\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/06\\/Galaxy-S9-Sunrise-Gold_main_3-1.jpg\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" src=\\\"\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/06\\/Galaxy-S9-Sunrise-Gold_main_3-1.jpg\\\" alt=\\\"\\\" \\/><\\/div><div class=\\\"n2-ss-layers-container n2-ow\\\" data-csstextalign=\\\"center\\\" style=\\\"\\\"><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"9\\\" style=\\\"\\\" class=\\\"n2-ss-slide n2-ss-canvas n2-ow  n2-ss-slide-9\\\"><div class=\\\"n2-ss-slide-background n2-ow\\\" data-mode=\\\"fill\\\"><img data-hash=\\\"9ee1c8df035e84324f5953ecaf7f0063\\\" data-desktop=\\\"\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/06\\/DScKUVGW4AAph-G.jpg\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" src=\\\"\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2018\\/06\\/DScKUVGW4AAph-G.jpg\\\" alt=\\\"\\\" \\/><\\/div><div class=\\\"n2-ss-layers-container n2-ow\\\" data-csstextalign=\\\"center\\\" style=\\\"\\\"><\\/div><\\/div>                <\\/div>\\r\\n            <\\/div>\\r\\n            <div data-ssleft=\\\"0+15\\\" data-sstop=\\\"height\\/2-previousheight\\/2\\\" id=\\\"n2-ss-2-arrow-previous\\\" class=\\\"n2-ss-widget n2-ss-widget-display-desktop n2-ss-widget-display-tablet n2-ss-widget-display-mobile n2-ss-widget-display-hover nextend-arrow n2-ib n2-ow nextend-arrow-previous  nextend-arrow-animated-fade\\\" style=\\\"position: absolute;\\\" role=\\\"button\\\" aria-label=\\\"Previous slide\\\" tabindex=\\\"0\\\"><img class=\\\"n2-ow\\\" data-no-lazy=\\\"1\\\" data-hack=\\\"data-lazy-src\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTEuNDMzIDE1Ljk5MkwyMi42OSA1LjcxMmMuMzkzLS4zOS4zOTMtMS4wMyAwLTEuNDItLjM5My0uMzktMS4wMy0uMzktMS40MjMgMGwtMTEuOTggMTAuOTRjLS4yMS4yMS0uMy40OS0uMjg1Ljc2LS4wMTUuMjguMDc1LjU2LjI4NC43N2wxMS45OCAxMC45NGMuMzkzLjM5IDEuMDMuMzkgMS40MjQgMCAuMzkzLS40LjM5My0xLjAzIDAtMS40MmwtMTEuMjU3LTEwLjI5IiBmaWxsPSIjZmZmZmZmIiBvcGFjaXR5PSIwLjgiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvc3ZnPg==\\\" alt=\\\"previous arrow\\\" \\/><\\/div>\\n<div data-ssright=\\\"0+15\\\" data-sstop=\\\"height\\/2-nextheight\\/2\\\" id=\\\"n2-ss-2-arrow-next\\\" class=\\\"n2-ss-widget n2-ss-widget-display-desktop n2-ss-widget-display-tablet n2-ss-widget-display-mobile n2-ss-widget-display-hover nextend-arrow n2-ib n2-ow nextend-arrow-next  nextend-arrow-animated-fade\\\" style=\\\"position: absolute;\\\" role=\\\"button\\\" aria-label=\\\"Next slide\\\" tabindex=\\\"0\\\"><img class=\\\"n2-ow\\\" data-no-lazy=\\\"1\\\" data-hack=\\\"data-lazy-src\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTAuNzIyIDQuMjkzYy0uMzk0LS4zOS0xLjAzMi0uMzktMS40MjcgMC0uMzkzLjM5LS4zOTMgMS4wMyAwIDEuNDJsMTEuMjgzIDEwLjI4LTExLjI4MyAxMC4yOWMtLjM5My4zOS0uMzkzIDEuMDIgMCAxLjQyLjM5NS4zOSAxLjAzMy4zOSAxLjQyNyAwbDEyLjAwNy0xMC45NGMuMjEtLjIxLjMtLjQ5LjI4NC0uNzcuMDE0LS4yNy0uMDc2LS41NS0uMjg2LS43NkwxMC43MiA0LjI5M3oiIGZpbGw9IiNmZmZmZmYiIG9wYWNpdHk9IjAuOCIgZmlsbC1ydWxlPSJldmVub2RkIi8+PC9zdmc+\\\" alt=\\\"next arrow\\\" \\/><\\/div>\\n        <\\/div>\\r\\n        <\\/div><div class=\\\"n2-clear\\\"><\\/div><div id=\\\"n2-ss-2-spinner\\\" style=\\\"display: none;\\\"><div><div class=\\\"n2-ss-spinner-simple-white-container\\\"><div class=\\\"n2-ss-spinner-simple-white\\\"><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><script type=\\\"text\\/javascript\\\">N2R([\\\"nextend-frontend\\\",\\\"smartslider-frontend\\\",\\\"smartslider-simple-type-frontend\\\"],function(){new N2Classes.SmartSliderSimple(\'#n2-ss-2\', {\\\"admin\\\":false,\\\"translate3d\\\":1,\\\"callbacks\\\":\\\"\\\",\\\"background.video.mobile\\\":1,\\\"align\\\":\\\"normal\\\",\\\"isDelayed\\\":0,\\\"load\\\":{\\\"fade\\\":1,\\\"scroll\\\":0},\\\"playWhenVisible\\\":1,\\\"playWhenVisibleAt\\\":0.5,\\\"responsive\\\":{\\\"desktop\\\":1,\\\"tablet\\\":1,\\\"mobile\\\":1,\\\"onResizeEnabled\\\":true,\\\"type\\\":\\\"fullwidth\\\",\\\"downscale\\\":1,\\\"upscale\\\":1,\\\"minimumHeight\\\":0,\\\"maximumHeight\\\":3000,\\\"maximumSlideWidth\\\":3000,\\\"maximumSlideWidthLandscape\\\":3000,\\\"maximumSlideWidthTablet\\\":3000,\\\"maximumSlideWidthTabletLandscape\\\":3000,\\\"maximumSlideWidthMobile\\\":3000,\\\"maximumSlideWidthMobileLandscape\\\":3000,\\\"maximumSlideWidthConstrainHeight\\\":0,\\\"forceFull\\\":1,\\\"forceFullOverflowX\\\":\\\"body\\\",\\\"forceFullHorizontalSelector\\\":\\\"body\\\",\\\"constrainRatio\\\":1,\\\"verticalOffsetSelectors\\\":\\\"\\\",\\\"decreaseSliderHeight\\\":0,\\\"focusUser\\\":0,\\\"focusAutoplay\\\":0,\\\"deviceModes\\\":{\\\"desktopPortrait\\\":1,\\\"desktopLandscape\\\":0,\\\"tabletPortrait\\\":1,\\\"tabletLandscape\\\":0,\\\"mobilePortrait\\\":1,\\\"mobileLandscape\\\":0},\\\"normalizedDeviceModes\\\":{\\\"unknownUnknown\\\":[\\\"unknown\\\",\\\"Unknown\\\"],\\\"desktopPortrait\\\":[\\\"desktop\\\",\\\"Portrait\\\"],\\\"desktopLandscape\\\":[\\\"desktop\\\",\\\"Portrait\\\"],\\\"tabletPortrait\\\":[\\\"tablet\\\",\\\"Portrait\\\"],\\\"tabletLandscape\\\":[\\\"tablet\\\",\\\"Portrait\\\"],\\\"mobilePortrait\\\":[\\\"mobile\\\",\\\"Portrait\\\"],\\\"mobileLandscape\\\":[\\\"mobile\\\",\\\"Portrait\\\"]},\\\"verticalRatioModifiers\\\":{\\\"unknownUnknown\\\":1,\\\"desktopPortrait\\\":1,\\\"desktopLandscape\\\":1,\\\"tabletPortrait\\\":1,\\\"tabletLandscape\\\":1,\\\"mobilePortrait\\\":1,\\\"mobileLandscape\\\":1},\\\"minimumFontSizes\\\":{\\\"desktopPortrait\\\":4,\\\"desktopLandscape\\\":4,\\\"tabletPortrait\\\":4,\\\"tabletLandscape\\\":4,\\\"mobilePortrait\\\":4,\\\"mobileLandscape\\\":4},\\\"ratioToDevice\\\":{\\\"Portrait\\\":{\\\"tablet\\\":0.6999999999999999555910790149937383830547332763671875,\\\"mobile\\\":0.5},\\\"Landscape\\\":{\\\"tablet\\\":0,\\\"mobile\\\":0}},\\\"sliderWidthToDevice\\\":{\\\"desktopPortrait\\\":1000,\\\"desktopLandscape\\\":1000,\\\"tabletPortrait\\\":700,\\\"tabletLandscape\\\":0,\\\"mobilePortrait\\\":500,\\\"mobileLandscape\\\":0},\\\"basedOn\\\":\\\"combined\\\",\\\"orientationMode\\\":\\\"width_and_height\\\",\\\"scrollFix\\\":0,\\\"overflowHiddenPage\\\":0,\\\"desktopPortraitScreenWidth\\\":1200,\\\"tabletPortraitScreenWidth\\\":800,\\\"mobilePortraitScreenWidth\\\":440,\\\"tabletLandscapeScreenWidth\\\":800,\\\"mobileLandscapeScreenWidth\\\":440},\\\"controls\\\":{\\\"scroll\\\":0,\\\"drag\\\":1,\\\"touch\\\":\\\"horizontal\\\",\\\"keyboard\\\":1,\\\"tilt\\\":0},\\\"lazyLoad\\\":0,\\\"lazyLoadNeighbor\\\":0,\\\"blockrightclick\\\":0,\\\"maintainSession\\\":0,\\\"autoplay\\\":{\\\"enabled\\\":0,\\\"start\\\":1,\\\"duration\\\":8000,\\\"autoplayToSlide\\\":-1,\\\"autoplayToSlideIndex\\\":-1,\\\"allowReStart\\\":0,\\\"pause\\\":{\\\"click\\\":1,\\\"mouse\\\":\\\"0\\\",\\\"mediaStarted\\\":1},\\\"resume\\\":{\\\"click\\\":0,\\\"mouse\\\":0,\\\"mediaEnded\\\":1,\\\"slidechanged\\\":0}},\\\"perspective\\\":1500,\\\"layerMode\\\":{\\\"playOnce\\\":0,\\\"playFirstLayer\\\":1,\\\"mode\\\":\\\"skippable\\\",\\\"inAnimation\\\":\\\"mainInEnd\\\"},\\\"background.parallax.tablet\\\":0,\\\"background.parallax.mobile\\\":0,\\\"initCallbacks\\\":[\\\"N2D(\\\\\\\"SmartSliderWidgetArrowImage\\\\\\\",function(i,e){function t(e,t,s,h){this.slider=e,this.slider.started(i.proxy(this.start,this,t,s,h))}return t.prototype.start=function(e,t,s){return this.slider.sliderElement.data(\\\\\\\"arrow\\\\\\\")?!1:(this.slider.sliderElement.data(\\\\\\\"arrow\\\\\\\",this),this.deferred=i.Deferred(),this.slider.sliderElement.on(\\\\\\\"SliderDevice\\\\\\\",i.proxy(this.onDevice,this)).trigger(\\\\\\\"addWidget\\\\\\\",this.deferred),this.previous=i(\\\\\\\"#\\\\\\\"+this.slider.elementID+\\\\\\\"-arrow-previous\\\\\\\").on(\\\\\\\"click\\\\\\\",i.proxy(function(i){i.stopPropagation(),this.slider[n2const.rtl.previous]()},this)),this.previousResize=this.previous.find(\\\\\\\".n2-resize\\\\\\\"),0==this.previousResize.length&&(this.previousResize=this.previous),this.next=i(\\\\\\\"#\\\\\\\"+this.slider.elementID+\\\\\\\"-arrow-next\\\\\\\").on(\\\\\\\"click\\\\\\\",i.proxy(function(i){i.stopPropagation(),this.slider[n2const.rtl.next]()},this)),this.nextResize=this.next.find(\\\\\\\".n2-resize\\\\\\\"),0==this.nextResize.length&&(this.nextResize=this.next),this.desktopRatio=e,this.tabletRatio=t,this.mobileRatio=s,void i.when(this.previous.n2imagesLoaded(),this.next.n2imagesLoaded()).always(i.proxy(this.loaded,this)))},t.prototype.loaded=function(){this.previousResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"inline-block\\\\\\\"),this.previousWidth=this.previousResize.width(),this.previousHeight=this.previousResize.height(),this.previousResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"\\\\\\\"),this.nextResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"inline-block\\\\\\\"),this.nextWidth=this.nextResize.width(),this.nextHeight=this.nextResize.height(),this.nextResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"\\\\\\\"),this.previousResize.find(\\\\\\\"img\\\\\\\").css(\\\\\\\"width\\\\\\\",\\\\\\\"100%\\\\\\\"),this.nextResize.find(\\\\\\\"img\\\\\\\").css(\\\\\\\"width\\\\\\\",\\\\\\\"100%\\\\\\\"),this.onDevice(null,{device:this.slider.responsive.getDeviceMode()}),this.deferred.resolve()},t.prototype.onDevice=function(i,e){var t=1;switch(e.device){case\\\\\\\"tablet\\\\\\\":t=this.tabletRatio;break;case\\\\\\\"mobile\\\\\\\":t=this.mobileRatio;break;default:t=this.desktopRatio}this.previousResize.width(this.previousWidth*t),this.previousResize.height(this.previousHeight*t),this.nextResize.width(this.nextWidth*t),this.nextResize.height(this.nextHeight*t)},t});\\\",\\\"new N2Classes.SmartSliderWidgetArrowImage(this, 1, 0.6999999999999999555910790149937383830547332763671875, 0.5);\\\"],\\\"allowBGImageAttachmentFixed\\\":false,\\\"bgAnimationsColor\\\":\\\"RGBA(51,51,51,1)\\\",\\\"bgAnimations\\\":0,\\\"mainanimation\\\":{\\\"type\\\":\\\"horizontal\\\",\\\"duration\\\":800,\\\"delay\\\":0,\\\"ease\\\":\\\"easeOutQuad\\\",\\\"parallax\\\":0,\\\"shiftedBackgroundAnimation\\\":0},\\\"carousel\\\":1,\\\"dynamicHeight\\\":0});});<\\/script><div id=\\\"n2-ss-2-placeholder\\\" style=\\\"position: relative;z-index:2;color:RGBA(0,0,0,0);max-height:3000px;\\\"><img style=\\\"width: 100%; max-width:3000px; display: block;\\\" class=\\\"n2-ow\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMCIgd2lkdGg9IjEwMDAiIGhlaWdodD0iMzAwIiA+PC9zdmc+\\\" alt=\\\"Slider\\\" \\/><\\/div>\",\"assets\":{\"css\":{\"staticGroup\":{\"smartslider\":\"\\/Applications\\/XAMPP\\/xamppfiles\\/htdocs\\/wordpress\\/wp-content\\/plugins\\/smart-slider-3\\/library\\/media\\/smartslider.min.css\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[\".n2-ss-spinner-simple-white-container {\\r\\n    position: absolute;\\r\\n    top: 50%;\\r\\n    left: 50%;\\r\\n    margin: -20px;\\r\\n    background: #fff;\\r\\n    width: 20px;\\r\\n    height: 20px;\\r\\n    padding: 10px;\\r\\n    border-radius: 50%;\\r\\n    z-index: 1000;\\r\\n}\\r\\n\\r\\n.n2-ss-spinner-simple-white {\\r\\n  outline: 1px solid RGBA(0,0,0,0);\\r\\n  width:100%;\\r\\n  height: 100%;\\r\\n}\\r\\n\\r\\n.n2-ss-spinner-simple-white:before {\\r\\n    position: absolute;\\r\\n    top: 50%;\\r\\n    left: 50%;\\r\\n    width: 20px;\\r\\n    height: 20px;\\r\\n    margin-top: -11px;\\r\\n    margin-left: -11px;\\r\\n}\\r\\n\\r\\n.n2-ss-spinner-simple-white:not(:required):before {\\r\\n    content: \'\';\\r\\n    border-radius: 50%;\\r\\n    border-top: 2px solid #333;\\r\\n    border-right: 2px solid transparent;\\r\\n    animation: n2SimpleWhite .6s linear infinite;\\r\\n    -webkit-animation: n2SimpleWhite .6s linear infinite;\\r\\n}\\r\\n@keyframes n2SimpleWhite {\\r\\n    to {transform: rotate(360deg);}\\r\\n}\\r\\n\\r\\n@-webkit-keyframes n2SimpleWhite {\\r\\n    to {-webkit-transform: rotate(360deg);}\\r\\n}\"],\"globalInline\":[]},\"less\":{\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"js\":{\"staticGroup\":{\"smartslider-simple-type-frontend\":\"\\/Applications\\/XAMPP\\/xamppfiles\\/htdocs\\/wordpress\\/wp-content\\/plugins\\/smart-slider-3\\/library\\/media\\/plugins\\/type\\/simple\\/simple\\/dist\\/smartslider-simple-type-frontend.min.js\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"googleFonts\":{\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]}}}', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Sample Slider', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"controlsTilt\":\"0\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"animation-parallax-overlap\":\"0\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"carousel\":\"1\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"dynamic-height\":\"0\",\"loop-single-slide\":\"0\",\"padding\":\"0|*|0|*|0|*|0\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"slide-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"desktop-portrait-minimum-font-size\":\"1\",\"desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"0\",\"desktop-landscape-minimum-font-size\":\"1\",\"fontsize\":\"16\",\"desktop\":\"1\",\"tablet\":\"1\",\"mobile\":\"1\",\"margin\":\"0|*|0|*|0|*|0\",\"tablet-portrait\":\"0\",\"tablet-portrait-width\":\"800\",\"tablet-portrait-height\":\"0\",\"tablet-portrait-minimum-font-size\":\"1\",\"tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"0\",\"tablet-landscape-minimum-font-size\":\"1\",\"mobile-portrait\":\"0\",\"mobile-portrait-width\":\"440\",\"mobile-portrait-height\":\"0\",\"mobile-portrait-minimum-font-size\":\"1\",\"mobile-landscape\":\"0\",\"mobile-landscape-width\":\"740\",\"mobile-landscape-height\":\"0\",\"mobile-landscape-minimum-font-size\":\"1\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayfinish\":\"0|*|loop|*|current\",\"autoplayAllowReStart\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"perspective\":\"1000\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-tablet\":\"50\",\"layer-image-mobile\":\"30\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"5\",\"playWhenVisible\":\"1\",\"fadeOnLoad\":\"1\",\"fadeOnScroll\":\"0\",\"spinner\":\"simpleWhite\",\"custom-spinner\":\"\",\"custom-spinner-width\":\"100\",\"custom-spinner-height\":\"100\",\"custom-display\":\"1\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"maximumslidecount\":\"1000\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"maintain-session\":\"0\",\"blockrightclick\":\"0\",\"overflow-hidden-page\":\"0\",\"scroll-fix\":\"0\",\"bg-parallax-tablet\":\"1\",\"bg-parallax-mobile\":\"1\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-desktop\":\"1\",\"widget-arrow-display-tablet\":\"1\",\"widget-arrow-display-mobile\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-responsive-desktop\":\"1\",\"widget-arrow-responsive-tablet\":\"0.7\",\"widget-arrow-responsive-mobile\":\"0.5\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous\":\"$ss$/plugins/widgetarrow/image/image/previous/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next\":\"$ss$/plugins/widgetarrow/image/image/next/thin-horizontal.svg\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widgetbullet\":\"transition\",\"widget-bullet-display-desktop\":\"1\",\"widget-bullet-display-tablet\":\"1\",\"widget-bullet-display-mobile\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-overlay\":\"0\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-desktop\":\"1\",\"widget-autoplay-display-tablet\":\"1\",\"widget-autoplay-display-mobile\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-autoplay-display-hover\":\"0\",\"widgetindicator\":\"disabled\",\"widget-indicator-display-desktop\":\"1\",\"widget-indicator-display-tablet\":\"1\",\"widget-indicator-display-mobile\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"widget-indicator-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-desktop\":\"1\",\"widget-bar-display-tablet\":\"1\",\"widget-bar-display-mobile\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-desktop\":\"1\",\"widget-thumbnail-display-tablet\":\"1\",\"widget-thumbnail-display-mobile\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widget-shadow-display-desktop\":\"1\",\"widget-shadow-display-tablet\":\"1\",\"widget-shadow-display-mobile\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widgetfullscreen\":\"disabled\",\"widget-fullscreen-display-desktop\":\"1\",\"widget-fullscreen-display-tablet\":\"1\",\"widget-fullscreen-display-mobile\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-fullscreen-display-hover\":\"0\",\"widgethtml\":\"disabled\",\"widget-html-display-desktop\":\"1\",\"widget-html-display-tablet\":\"1\",\"widget-html-display-mobile\":\"1\",\"widget-html-exclude-slides\":\"\",\"widget-html-display-hover\":\"0\",\"widgets\":\"arrow\"}', '2015-11-01 14:14:20', '', 0),
(2, NULL, 'SliderN', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"width\":\"1000\",\"height\":\"300\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"responsiveSliderOrientation\":\"width_and_height\",\"responsiveSlideWidth\":\"1\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthDesktopLandscape\":\"0\",\"responsiveSlideWidthMaxDesktopLandscape\":\"1600\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthTabletLandscape\":\"0\",\"responsiveSlideWidthMaxTabletLandscape\":\"1200\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsiveSlideWidthMobileLandscape\":\"0\",\"responsiveSlideWidthMaxMobileLandscape\":\"740\",\"responsiveSlideWidthConstrainHeight\":\"0\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"clear-both\":\"0\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"1\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widgetbullet\":\"disabled\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"100\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDtiYWNrZ3JvdW5kLXNpemU6Y292ZXI7In1dfQ==\",\"widget-bullet-thumbnail-side\":\"before\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"arrow\"}', '2018-06-23 20:42:54', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders_xref`
--

INSERT INTO `wp_nextend2_smartslider3_sliders_xref` (`group_id`, `slider_id`, `ordering`) VALUES
(0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide One', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Martin Dwyer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Martin Dwyer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Application Developer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Application Developer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/developerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/programmer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 0, 0),
(2, 'Slide Two', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Rachel Wright\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Rachel Wright\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Art Director & Photographer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Art Director & Photographer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/artdirectorthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/free1.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 1, 0),
(3, 'Slide Three', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Andrew Butler\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Andrew Butler\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Photographer & Illustrator\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Photographer & Illustrator\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/photographerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/photographer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 2, 0),
(8, 'Galaxy-S9-Sunrise-Gold_main_3', 2, '2018-06-22 20:43:59', '2028-06-23 20:43:59', 1, 0, '[]', '', '$upload$/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/06\\/Galaxy-S9-Sunrise-Gold_main_3-1.jpg\",\"version\":\"3.3.3\"}', 4, 0),
(9, 'DScKUVGW4AAph-G', 2, '2018-06-22 20:43:59', '2028-06-23 20:43:59', 1, 0, '[]', '', '$upload$/2018/06/DScKUVGW4AAph-G.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/06\\/DScKUVGW4AAph-G.jpg\",\"version\":\"3.3.3\"}', 5, 0);

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
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Fiberman&#039;s Store', 'yes'),
(4, 'blogdescription', 'Online Web Market', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'narek.ghazaryan.g@tumo.rog', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:151:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:83:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/themes/Store_N/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'last_f', 'yes'),
(41, 'stylesheet', 'last_f', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:122:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:42:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:13:{i:1530627543;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530629715;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1530629922;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530642847;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530642857;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530644322;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530644332;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530644506;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530653647;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530662400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530664447;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533600000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529790418;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530616660;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530616665;s:7:\"checked\";a:8:{s:11:\"LaterBetter\";s:3:\"1.0\";s:7:\"Store_N\";s:6:\"1.0.12\";s:9:\"Store_Nd2\";s:6:\"1.0.12\";s:10:\"_Four-lite\";s:6:\"1.0.12\";s:6:\"last_f\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(141, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(146, 'category_children', 'a:0:{}', 'yes'),
(161, 'current_theme', 'last_f', 'yes'),
(162, 'theme_mods_Store_N', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529882035;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(166, 'WPLANG', '', 'yes'),
(167, 'new_admin_email', 'narek.ghazaryan.g@tumo.rog', 'yes'),
(193, 'theme_mods_twentyfifteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(206, 'recently_activated', 'a:2:{s:33:\"smart-slider-3/smart-slider-3.php\";i:1529787948;s:24:\"slider-images/Slider.php\";i:1529787946;}', 'yes'),
(211, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:18:\"ftp.example.com:21\";s:8:\"username\";s:14:\"USER-NAME-HERE\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(251, 'woocommerce_store_address', 'ND46', 'yes'),
(252, 'woocommerce_store_address_2', '', 'yes'),
(253, 'woocommerce_store_city', 'Gyumri', 'yes'),
(254, 'woocommerce_default_country', 'AM', 'yes'),
(255, 'woocommerce_store_postcode', '3118', 'yes'),
(256, 'woocommerce_allowed_countries', 'all', 'yes'),
(257, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(258, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(259, 'woocommerce_ship_to_countries', '', 'yes'),
(260, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(261, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(262, 'woocommerce_calc_taxes', 'no', 'yes'),
(263, 'woocommerce_enable_coupons', 'yes', 'yes'),
(264, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(265, 'woocommerce_currency', 'AMD', 'yes'),
(266, 'woocommerce_currency_pos', 'left', 'yes'),
(267, 'woocommerce_price_thousand_sep', ',', 'yes'),
(268, 'woocommerce_price_decimal_sep', '.', 'yes'),
(269, 'woocommerce_price_num_decimals', '2', 'yes'),
(270, 'woocommerce_shop_page_id', '74', 'yes'),
(271, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(272, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(273, 'woocommerce_weight_unit', 'kg', 'yes'),
(274, 'woocommerce_dimension_unit', 'cm', 'yes'),
(275, 'woocommerce_enable_reviews', 'yes', 'yes'),
(276, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(277, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(278, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(279, 'woocommerce_review_rating_required', 'yes', 'no'),
(280, 'woocommerce_manage_stock', 'yes', 'yes'),
(281, 'woocommerce_hold_stock_minutes', '60', 'no'),
(282, 'woocommerce_notify_low_stock', 'yes', 'no'),
(283, 'woocommerce_notify_no_stock', 'yes', 'no'),
(284, 'woocommerce_stock_email_recipient', 'narek.ghazaryan.g@tumo.rog', 'no'),
(285, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(286, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(287, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(288, 'woocommerce_stock_format', '', 'yes'),
(289, 'woocommerce_file_download_method', 'force', 'no'),
(290, 'woocommerce_downloads_require_login', 'no', 'no'),
(291, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(292, 'woocommerce_prices_include_tax', 'no', 'yes'),
(293, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(294, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(295, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(296, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(297, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(298, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(299, 'woocommerce_price_display_suffix', '', 'yes'),
(300, 'woocommerce_tax_total_display', 'itemized', 'no'),
(301, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(302, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(303, 'woocommerce_ship_to_destination', 'billing', 'no'),
(304, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(305, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(306, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(307, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(308, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(309, 'woocommerce_registration_generate_username', 'yes', 'no'),
(310, 'woocommerce_registration_generate_password', 'yes', 'no'),
(311, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(312, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(313, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(314, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(315, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(316, 'woocommerce_trash_pending_orders', '', 'no'),
(317, 'woocommerce_trash_failed_orders', '', 'no'),
(318, 'woocommerce_trash_cancelled_orders', '', 'no'),
(319, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(320, 'woocommerce_email_from_name', 'My Store', 'no'),
(321, 'woocommerce_email_from_address', 'narek.ghazaryan.g@tumo.rog', 'no'),
(322, 'woocommerce_email_header_image', '', 'no'),
(323, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(324, 'woocommerce_email_base_color', '#96588a', 'no'),
(325, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(326, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(327, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(328, 'woocommerce_cart_page_id', '75', 'yes'),
(329, 'woocommerce_checkout_page_id', '76', 'yes'),
(330, 'woocommerce_myaccount_page_id', '77', 'yes'),
(331, 'woocommerce_terms_page_id', '', 'no'),
(332, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(333, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(334, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(335, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(336, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(337, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(338, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(339, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(340, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(341, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(342, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(343, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(344, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(345, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(346, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(347, 'woocommerce_api_enabled', 'no', 'yes'),
(348, 'woocommerce_single_image_width', '600', 'yes'),
(349, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(350, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(351, 'woocommerce_demo_store', 'no', 'no'),
(352, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(353, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(354, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(355, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(356, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(357, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(358, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(359, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(360, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(361, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(362, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(363, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(364, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(365, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(366, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(367, 'current_theme_supports_woocommerce', 'no', 'yes'),
(368, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(370, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(371, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:21:\"jetpack_install_error\";}', 'yes'),
(372, 'product_cat_children', 'a:0:{}', 'yes'),
(373, 'default_product_cat', '17', 'yes'),
(376, 'woocommerce_version', '3.4.3', 'yes'),
(377, 'woocommerce_db_version', '3.4.3', 'yes'),
(386, 'woocommerce_product_type', 'both', 'yes'),
(387, 'woocommerce_allow_tracking', 'yes', 'yes'),
(388, 'woocommerce_tracker_last_send', '1530616639', 'yes'),
(391, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:26:\"narek.ghazaryan.g@tumo.rog\";}', 'yes'),
(392, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(393, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(394, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(395, 'woocommerce_admin_notice_ppec_paypal_install_error', 'WooCommerce PayPal Express Checkout Gateway could not be installed (Could not create directory.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-express-checkout\">Please install it manually by clicking here.</a>', 'yes'),
(401, '_transient_shipping-transient-version', '1529779239', 'yes'),
(404, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(405, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (Could not create directory.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Please install it manually by clicking here.</a>', 'yes'),
(408, '_transient_product_query-transient-version', '1529889585', 'yes'),
(430, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(495, 'widget_rich_web_photo_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(496, 'n2_ss3_version', '3.3.3', 'yes'),
(497, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(507, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(508, 'ms_hide_all_ads_until', '1530997563', 'yes'),
(509, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(510, 'ml-slider_children', 'a:0:{}', 'yes'),
(511, 'metaslider_tour_cancelled_on', 'step_show_slide_types', 'yes'),
(521, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1529788740;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(524, 'jetpack_activated', '1', 'yes'),
(527, 'jetpack_activation_source', 'a:2:{i:0;s:4:\"list\";i:1;N;}', 'yes'),
(528, 'jetpack_sync_settings_disable', '0', 'yes'),
(529, '_transient_timeout_jetpack_file_data_6.2.1', '1532396203', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(530, '_transient_jetpack_file_data_6.2.1', 'a:57:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:107:\"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Single Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(531, 'jetpack_available_modules', 'a:1:{s:5:\"6.2.1\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(532, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"6.2.1:1529788745\";s:11:\"old_version\";s:16:\"6.2.1:1529788745\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}', 'yes'),
(533, 'jetpack_testimonial', '0', 'yes'),
(534, 'do_activate', '0', 'yes'),
(543, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes'),
(544, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(548, 'theme_mods_LaterBetter', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:8:\"top_menu\";i:2;s:11:\"footer_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529882041;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(591, '_transient_timeout_wc_shipping_method_count_1_1529779239', '1532382469', 'no'),
(592, '_transient_wc_shipping_method_count_1_1529779239', '2', 'no'),
(614, 'woocommerce_tracker_ua', 'a:1:{i:0;s:120:\"mozilla/5.0 (macintosh; intel mac os x 10_6_8) applewebkit/537.36 (khtml, like gecko) chrome/49.0.2623.112 safari/537.36\";}', 'yes'),
(654, 'theme_mods__Four-lite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529875010;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(680, 'theme_mods_Store_Nd2', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529883092;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(685, 'theme_mods_last_f', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:8:\"top_menu\";i:2;s:11:\"footer_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(701, '_transient_product-transient-version', '1529889586', 'yes'),
(731, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:12:\"post-trashed\";s:1:\"1\";s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(732, '_transient_timeout_wc_term_counts', '1532481597', 'no'),
(733, '_transient_wc_term_counts', 'a:1:{i:17;s:1:\"5\";}', 'no'),
(745, '_transient_timeout_wc_low_stock_count', '1532485744', 'no'),
(746, '_transient_wc_low_stock_count', '0', 'no'),
(747, '_transient_timeout_wc_outofstock_count', '1532485744', 'no'),
(748, '_transient_wc_outofstock_count', '0', 'no'),
(819, '_transient_timeout_external_ip_address_::1', '1531221436', 'no'),
(820, '_transient_external_ip_address_::1', '82.199.222.1', 'no'),
(823, '_transient_timeout_jetpack_idc_allowed', '1530616945', 'no'),
(824, '_transient_jetpack_idc_allowed', '1', 'no'),
(827, '_transient_timeout_external_ip_address_127.0.0.1', '1531221448', 'no'),
(828, '_transient_external_ip_address_127.0.0.1', '82.199.222.1', 'no'),
(832, '_site_transient_timeout_theme_roots', '1530618463', 'no'),
(833, '_site_transient_theme_roots', 'a:8:{s:11:\"LaterBetter\";s:7:\"/themes\";s:7:\"Store_N\";s:7:\"/themes\";s:9:\"Store_Nd2\";s:7:\"/themes\";s:10:\"_Four-lite\";s:7:\"/themes\";s:6:\"last_f\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(834, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530616668;s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.2\";s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:5:\"6.2.1\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.8.1\";s:24:\"slider-images/Slider.php\";s:5:\"1.3.3\";s:33:\"smart-slider-3/smart-slider-3.php\";s:5:\"3.3.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"slider-images/Slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/slider-images\";s:4:\"slug\";s:13:\"slider-images\";s:6:\"plugin\";s:24:\"slider-images/Slider.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/slider-images/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/slider-images.1.3.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/slider-images/assets/icon-128x128.png?rev=1534872\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/slider-images/assets/banner-772x250.png?rev=1658394\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/smart-slider-3.3.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=1284893\";s:2:\"1x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-128x128.png?rev=1284893\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=1902662\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=1902662\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(837, '_transient_timeout_wc_related_128', '1530712734', 'no'),
(838, '_transient_wc_related_128', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=128\";a:4:{i:0;s:3:\"117\";i:1;s:3:\"122\";i:2;s:3:\"124\";i:3;s:3:\"130\";}}', 'no'),
(839, '_transient_timeout_wc_related_124', '1530712743', 'no'),
(840, '_transient_wc_related_124', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=124\";a:4:{i:0;s:3:\"117\";i:1;s:3:\"122\";i:2;s:3:\"128\";i:3;s:3:\"130\";}}', 'no'),
(841, '_transient_timeout_wc_related_122', '1530712813', 'no'),
(842, '_transient_wc_related_122', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=122\";a:4:{i:0;s:3:\"117\";i:1;s:3:\"124\";i:2;s:3:\"128\";i:3;s:3:\"130\";}}', 'no');

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
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1529890373:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1529899591:1'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1529790009:1'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1529900005:1'),
(11, 13, '_menu_item_type', 'post_type'),
(12, 13, '_menu_item_menu_item_parent', '0'),
(13, 13, '_menu_item_object_id', '11'),
(14, 13, '_menu_item_object', 'page'),
(15, 13, '_menu_item_target', ''),
(16, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 13, '_menu_item_xfn', ''),
(18, 13, '_menu_item_url', ''),
(20, 14, '_menu_item_type', 'post_type'),
(21, 14, '_menu_item_menu_item_parent', '0'),
(22, 14, '_menu_item_object_id', '9'),
(23, 14, '_menu_item_object', 'page'),
(24, 14, '_menu_item_target', ''),
(25, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 14, '_menu_item_xfn', ''),
(27, 14, '_menu_item_url', ''),
(29, 15, '_menu_item_type', 'post_type'),
(30, 15, '_menu_item_menu_item_parent', '0'),
(31, 15, '_menu_item_object_id', '7'),
(32, 15, '_menu_item_object', 'page'),
(33, 15, '_menu_item_target', ''),
(34, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 15, '_menu_item_xfn', ''),
(36, 15, '_menu_item_url', ''),
(38, 16, '_menu_item_type', 'post_type'),
(39, 16, '_menu_item_menu_item_parent', '0'),
(40, 16, '_menu_item_object_id', '5'),
(41, 16, '_menu_item_object', 'page'),
(42, 16, '_menu_item_target', ''),
(43, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 16, '_menu_item_xfn', ''),
(45, 16, '_menu_item_url', ''),
(47, 17, '_edit_last', '1'),
(50, 17, '_edit_lock', '1529440136:1'),
(51, 20, '_wp_attached_file', '2018/06/Galaxy-S9-Sunrise-Gold_main_1_F.jpg'),
(52, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:499;s:4:\"file\";s:43:\"2018/06/Galaxy-S9-Sunrise-Gold_main_1_F.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_1_F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_1_F-600x425.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_1_F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_1_F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_1_F-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_1_F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 21, '_wp_attached_file', '2018/06/Galaxy-S9-Sunrise-Gold_main_2-1.jpg'),
(54, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:406;s:4:\"file\";s:43:\"2018/06/Galaxy-S9-Sunrise-Gold_main_2-1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_2-1-600x346.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_2-1-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1508170336\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"15\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(55, 22, '_wp_attached_file', '2018/06/Galaxy-S9-Sunrise-Gold_main_3.jpg'),
(56, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:376;s:4:\"file\";s:41:\"2018/06/Galaxy-S9-Sunrise-Gold_main_3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_3-600x320.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_3-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 17, '_thumbnail_id', '22'),
(64, 26, '_wp_attached_file', '2018/06/a-guide-to-bixby-vision_main_3_F.jpg'),
(65, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:343;s:4:\"file\";s:44:\"2018/06/a-guide-to-bixby-vision_main_3_F.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_3_F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_3_F-600x292.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:292;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_3_F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_3_F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_3_F-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_3_F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 25, '_edit_last', '1'),
(67, 25, '_edit_lock', '1529894158:1'),
(68, 27, '_wp_attached_file', '2018/06/a-guide-to-bixby-vision_main_5.jpg'),
(69, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:470;s:4:\"file\";s:42:\"2018/06/a-guide-to-bixby-vision_main_5.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_5-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 28, '_wp_attached_file', '2018/06/a-guide-to-bixby-vision_main_7.jpg'),
(71, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:470;s:4:\"file\";s:42:\"2018/06/a-guide-to-bixby-vision_main_7.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_7-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:42:\"a-guide-to-bixby-vision_main_7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 25, '_thumbnail_id', '27'),
(75, 30, '_edit_last', '1'),
(76, 30, '_edit_lock', '1529894014:1'),
(77, 31, '_wp_attached_file', '2018/06/aaaS9_S9-Press-Release_Main_1-1.jpg'),
(78, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:334;s:4:\"file\";s:43:\"2018/06/aaaS9_S9-Press-Release_Main_1-1.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-600x284.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-300x142.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-705x293\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-705x293.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x166\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-400x166.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-705x201\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-705x201.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x177\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x114\";a:4:{s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 30, '_thumbnail_id', '31'),
(82, 1, '_wp_trash_meta_status', 'publish'),
(83, 1, '_wp_trash_meta_time', '1529439551'),
(84, 1, '_wp_desired_post_slug', 'hello-world'),
(85, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(92, 35, '_menu_item_type', 'custom'),
(93, 35, '_menu_item_menu_item_parent', '0'),
(94, 35, '_menu_item_object_id', '35'),
(95, 35, '_menu_item_object', 'custom'),
(96, 35, '_menu_item_target', ''),
(97, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 35, '_menu_item_xfn', ''),
(99, 35, '_menu_item_url', 'http://fb.com'),
(101, 36, '_menu_item_type', 'custom'),
(102, 36, '_menu_item_menu_item_parent', '0'),
(103, 36, '_menu_item_object_id', '36'),
(104, 36, '_menu_item_object', 'custom'),
(105, 36, '_menu_item_target', ''),
(106, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 36, '_menu_item_xfn', ''),
(108, 36, '_menu_item_url', 'http://instagram.com'),
(110, 37, '_menu_item_type', 'custom'),
(111, 37, '_menu_item_menu_item_parent', '0'),
(112, 37, '_menu_item_object_id', '37'),
(113, 37, '_menu_item_object', 'custom'),
(114, 37, '_menu_item_target', ''),
(115, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 37, '_menu_item_xfn', ''),
(117, 37, '_menu_item_url', 'http://vk.com'),
(119, 38, '_menu_item_type', 'custom'),
(120, 38, '_menu_item_menu_item_parent', '0'),
(121, 38, '_menu_item_object_id', '38'),
(122, 38, '_menu_item_object', 'custom'),
(123, 38, '_menu_item_target', ''),
(124, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 38, '_menu_item_xfn', ''),
(126, 38, '_menu_item_url', 'http://twitter.com'),
(128, 39, '_menu_item_type', 'custom'),
(129, 39, '_menu_item_menu_item_parent', '0'),
(130, 39, '_menu_item_object_id', '39'),
(131, 39, '_menu_item_object', 'custom'),
(132, 39, '_menu_item_target', ''),
(133, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 39, '_menu_item_xfn', ''),
(135, 39, '_menu_item_url', 'http://youtube.com'),
(137, 40, '_menu_item_type', 'custom'),
(138, 40, '_menu_item_menu_item_parent', '0'),
(139, 40, '_menu_item_object_id', '40'),
(140, 40, '_menu_item_object', 'custom'),
(141, 40, '_menu_item_target', ''),
(142, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 40, '_menu_item_xfn', ''),
(144, 40, '_menu_item_url', 'http://https://www.instagram.com/'),
(145, 41, '_edit_last', '1'),
(146, 41, '_edit_lock', '1529874837:1'),
(147, 43, '_edit_last', '1'),
(148, 43, '_edit_lock', '1529784442:1'),
(149, 45, '_menu_item_type', 'post_type'),
(150, 45, '_menu_item_menu_item_parent', '0'),
(151, 45, '_menu_item_object_id', '43'),
(152, 45, '_menu_item_object', 'page'),
(153, 45, '_menu_item_target', ''),
(154, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 45, '_menu_item_xfn', ''),
(156, 45, '_menu_item_url', ''),
(157, 45, '_menu_item_orphaned', '1529622732'),
(158, 46, '_menu_item_type', 'post_type'),
(159, 46, '_menu_item_menu_item_parent', '0'),
(160, 46, '_menu_item_object_id', '41'),
(161, 46, '_menu_item_object', 'page'),
(162, 46, '_menu_item_target', ''),
(163, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 46, '_menu_item_xfn', ''),
(165, 46, '_menu_item_url', ''),
(166, 46, '_menu_item_orphaned', '1529622732'),
(167, 47, '_menu_item_type', 'post_type'),
(168, 47, '_menu_item_menu_item_parent', '0'),
(169, 47, '_menu_item_object_id', '43'),
(170, 47, '_menu_item_object', 'page'),
(171, 47, '_menu_item_target', ''),
(172, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 47, '_menu_item_xfn', ''),
(174, 47, '_menu_item_url', ''),
(175, 47, '_menu_item_orphaned', '1529622753'),
(176, 48, '_menu_item_type', 'post_type'),
(177, 48, '_menu_item_menu_item_parent', '0'),
(178, 48, '_menu_item_object_id', '41'),
(179, 48, '_menu_item_object', 'page'),
(180, 48, '_menu_item_target', ''),
(181, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 48, '_menu_item_xfn', ''),
(183, 48, '_menu_item_url', ''),
(184, 48, '_menu_item_orphaned', '1529622754'),
(185, 49, '_wp_attached_file', '2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018.png'),
(186, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:902;s:6:\"height\";i:902;s:4:\"file\";s:135:\"2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018.png\";s:5:\"sizes\";a:16:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-450x450.png\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x266.png\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x171.png\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-902x375\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-902x375.png\";s:5:\"width\";i:902;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x258.png\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-400x166\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x166.png\";s:5:\"width\";i:400;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-902x258\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-902x258.png\";s:5:\"width\";i:902;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-620x177\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x177.png\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-400x114\";a:4:{s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x114.png\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 50, '_wp_attached_file', '2018/06/DScKUVGW4AAph-G.jpg'),
(188, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1127;s:4:\"file\";s:27:\"2018/06/DScKUVGW4AAph-G.jpg\";s:5:\"sizes\";a:17:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-600x564.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:564;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-300x282.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-768x721.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:721;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"DScKUVGW4AAph-G-1024x962.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:962;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-450x423.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:28:\"DScKUVGW4AAph-G-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x343\";a:4:{s:4:\"file\";s:28:\"DScKUVGW4AAph-G-1200x343.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x177\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x114\";a:4:{s:4:\"file\";s:27:\"DScKUVGW4AAph-G-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 51, '_wp_attached_file', '2018/06/iphone-compare-201709.jpeg'),
(190, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:597;s:6:\"height\";i:288;s:4:\"file\";s:34:\"2018/06/iphone-compare-201709.jpeg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"iphone-compare-201709-300x288.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-350x169.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-300x145.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-450x217.jpeg\";s:5:\"width\";i:450;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-597x255\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-597x255.jpeg\";s:5:\"width\";i:597;s:6:\"height\";i:255;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-597x248\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-597x248.jpeg\";s:5:\"width\";i:597;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-597x171\";a:4:{s:4:\"file\";s:34:\"iphone-compare-201709-597x171.jpeg\";s:5:\"width\";i:597;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 52, '_wp_attached_file', '2018/06/iPhone-family-2018.png'),
(192, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:629;s:4:\"file\";s:30:\"2018/06/iPhone-family-2018.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"iPhone-family-2018-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-600x629.png\";s:5:\"width\";i:600;s:6:\"height\";i:629;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-286x300.png\";s:5:\"width\";i:286;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-429x450.png\";s:5:\"width\";i:429;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-600x257\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-600x257.png\";s:5:\"width\";i:600;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-600x250\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-600x250.png\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-600x171\";a:4:{s:4:\"file\";s:30:\"iPhone-family-2018-600x171.png\";s:5:\"width\";i:600;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 54, '_wp_attached_file', '2018/06/Galaxy-S9-Sunrise-Gold_main_2.jpg'),
(194, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:406;s:4:\"file\";s:41:\"2018/06/Galaxy-S9-Sunrise-Gold_main_2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_2-600x346.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_2-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:41:\"Galaxy-S9-Sunrise-Gold_main_2-450x259.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1508170336\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"15\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(195, 55, '_wp_attached_file', '2018/06/Galaxy-S9-Sunrise-Gold_main_3-1.jpg'),
(196, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:376;s:4:\"file\";s:43:\"2018/06/Galaxy-S9-Sunrise-Gold_main_3-1.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-600x320.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-450x240.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-705x293\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-705x293.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x166\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-400x166.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-705x201\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-705x201.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x177\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x114\";a:4:{s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 56, '_wp_attached_file', '2018/06/2-60.jpg'),
(198, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:16:\"2018/06/2-60.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"2-60-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"2-60-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"2-60-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"2-60-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"2-60-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"2-60-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:16:\"2-60-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 57, '_wp_attached_file', '2018/06/20052518_01_1200.jpg'),
(200, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1187;s:4:\"file\";s:28:\"2018/06/20052518_01_1200.jpg\";s:5:\"sizes\";a:17:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"20052518_01_1200-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-600x594.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:594;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-300x297.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-768x760.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"20052518_01_1200-1024x1013.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1013;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-450x445.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:29:\"20052518_01_1200-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x343\";a:4:{s:4:\"file\";s:29:\"20052518_01_1200-1200x343.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x177\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x114\";a:4:{s:4:\"file\";s:28:\"20052518_01_1200-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 58, '_wp_attached_file', '2018/06/373887813_780x439.jpg'),
(202, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:780;s:6:\"height\";i:438;s:4:\"file\";s:29:\"2018/06/373887813_780x439.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"373887813_780x439-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"373887813_780x439-600x337.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"373887813_780x439-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"373887813_780x439-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"373887813_780x439-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"373887813_780x439-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:29:\"373887813_780x439-450x253.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 59, '_wp_attached_file', '2018/06/a-guide-to-bixby-vision_main_5-1.jpg'),
(204, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:470;s:4:\"file\";s:44:\"2018/06/a-guide-to-bixby-vision_main_5-1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_5-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_5-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_5-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:44:\"a-guide-to-bixby-vision_main_5-1-450x300.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 61, '_wp_attached_file', '2018/06/1888.jpeg'),
(206, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:17:\"2018/06/1888.jpeg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"1888-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"1888-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 62, '_wp_attached_file', '2018/06/18888.jpg'),
(208, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2018/06/18888.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"18888-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"18888-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"18888-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"18888-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"18888-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:17:\"18888-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:17:\"18888-700x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:17:\"18888-620x266.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:17:\"18888-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-600x257\";a:4:{s:4:\"file\";s:17:\"18888-600x257.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-600x250\";a:4:{s:4:\"file\";s:17:\"18888-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-600x171\";a:4:{s:4:\"file\";s:17:\"18888-600x171.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 63, '_wp_attached_file', '2018/06/19999.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(210, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2018/06/19999.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"19999-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"19999-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"19999-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"19999-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"19999-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 64, '_wp_attached_file', '2018/06/199999.jpeg'),
(212, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:178;s:4:\"file\";s:19:\"2018/06/199999.jpeg\";s:5:\"sizes\";a:3:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"199999-250x178.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"199999-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"199999-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 65, '_wp_attached_file', '2018/06/199999.jpg'),
(214, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:636;s:4:\"file\";s:18:\"2018/06/199999.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"199999-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"199999-600x318.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"199999-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"199999-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"199999-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"199999-768x407.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"199999-1024x543.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:18:\"199999-450x239.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 66, '_wp_attached_file', '2018/06/1889999.jpeg'),
(216, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:283;s:6:\"height\";i:178;s:4:\"file\";s:20:\"2018/06/1889999.jpeg\";s:5:\"sizes\";a:3:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"1889999-250x178.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"1889999-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1889999-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 67, '_wp_attached_file', '2018/06/1898988.jpg'),
(218, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:850;s:4:\"file\";s:19:\"2018/06/1898988.jpg\";s:5:\"sizes\";a:16:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"1898988-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"1898988-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"1898988-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1898988-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"1898988-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"1898988-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:19:\"1898988-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:19:\"1898988-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:19:\"1898988-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:19:\"1898988-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-850x354\";a:4:{s:4:\"file\";s:19:\"1898988-850x354.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:19:\"1898988-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:19:\"1898988-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-850x243\";a:4:{s:4:\"file\";s:19:\"1898988-850x243.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x177\";a:4:{s:4:\"file\";s:19:\"1898988-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x114\";a:4:{s:4:\"file\";s:19:\"1898988-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 72, '_menu_item_type', 'post_type'),
(220, 72, '_menu_item_menu_item_parent', '0'),
(221, 72, '_menu_item_object_id', '43'),
(222, 72, '_menu_item_object', 'page'),
(223, 72, '_menu_item_target', ''),
(224, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 72, '_menu_item_xfn', ''),
(226, 72, '_menu_item_url', ''),
(228, 73, '_menu_item_type', 'post_type'),
(229, 73, '_menu_item_menu_item_parent', '0'),
(230, 73, '_menu_item_object_id', '41'),
(231, 73, '_menu_item_object', 'page'),
(232, 73, '_menu_item_target', ''),
(233, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(234, 73, '_menu_item_xfn', ''),
(235, 73, '_menu_item_url', ''),
(236, 78, '_wc_review_count', '0'),
(237, 78, '_wc_rating_count', 'a:0:{}'),
(238, 78, '_wc_average_rating', '0'),
(239, 78, '_edit_last', '1'),
(240, 78, '_edit_lock', '1529779965:1'),
(241, 3, '_wp_trash_meta_status', 'draft'),
(242, 3, '_wp_trash_meta_time', '1529782465'),
(243, 3, '_wp_desired_post_slug', 'privacy-policy'),
(244, 2, '_wp_trash_meta_status', 'publish'),
(245, 2, '_wp_trash_meta_time', '1529782472'),
(246, 2, '_wp_desired_post_slug', 'sample-page'),
(247, 92, 'ml-slider_settings', 'a:36:{s:4:\"type\";s:4:\"nivo\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:3:\"550\";s:3:\"spw\";s:1:\"7\";s:3:\"sph\";s:1:\"5\";s:5:\"delay\";s:4:\"2800\";s:6:\"sDelay\";s:2:\"30\";s:7:\"opacity\";s:1:\"0\";s:10:\"titleSpeed\";s:3:\"500\";s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";s:2:\"15\";s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:5:\"false\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:5:\"false\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:5:\"false\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(248, 93, '_thumbnail_id', '62'),
(249, 93, 'ml-slider_type', 'image'),
(250, 93, 'ml-slider_inherit_image_caption', '1'),
(251, 93, 'ml-slider_inherit_image_title', '1'),
(252, 93, 'ml-slider_inherit_image_alt', '1'),
(253, 94, '_thumbnail_id', '50'),
(254, 94, 'ml-slider_type', 'image'),
(255, 94, 'ml-slider_inherit_image_caption', '1'),
(256, 94, 'ml-slider_inherit_image_title', '1'),
(257, 94, 'ml-slider_inherit_image_alt', '1'),
(258, 62, '_wp_attachment_backup_sizes', 'a:6:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:92:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/18888-700x300.jpg\";s:4:\"file\";s:17:\"18888-700x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:92:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/18888-620x266.jpg\";s:4:\"file\";s:17:\"18888-620x266.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:92:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/18888-400x171.jpg\";s:4:\"file\";s:17:\"18888-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-600x257\";a:5:{s:4:\"path\";s:92:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/18888-600x257.jpg\";s:4:\"file\";s:17:\"18888-600x257.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-600x250\";a:5:{s:4:\"path\";s:92:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/18888-600x250.jpg\";s:4:\"file\";s:17:\"18888-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-600x171\";a:5:{s:4:\"path\";s:92:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/18888-600x171.jpg\";s:4:\"file\";s:17:\"18888-600x171.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(259, 50, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:102:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-700x300.jpg\";s:4:\"file\";s:27:\"DScKUVGW4AAph-G-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:102:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-620x266.jpg\";s:4:\"file\";s:27:\"DScKUVGW4AAph-G-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:102:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-400x171.jpg\";s:4:\"file\";s:27:\"DScKUVGW4AAph-G-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-1200x500.jpg\";s:4:\"file\";s:28:\"DScKUVGW4AAph-G-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:102:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-620x258.jpg\";s:4:\"file\";s:27:\"DScKUVGW4AAph-G-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:102:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-400x167.jpg\";s:4:\"file\";s:27:\"DScKUVGW4AAph-G-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x343\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-1200x343.jpg\";s:4:\"file\";s:28:\"DScKUVGW4AAph-G-1200x343.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x177\";a:5:{s:4:\"path\";s:102:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-620x177.jpg\";s:4:\"file\";s:27:\"DScKUVGW4AAph-G-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x114\";a:5:{s:4:\"path\";s:102:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G-400x114.jpg\";s:4:\"file\";s:27:\"DScKUVGW4AAph-G-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(260, 93, 'ml-slider_crop_position', 'center-center'),
(261, 93, '_wp_attachment_image_alt', ''),
(262, 94, 'ml-slider_crop_position', 'center-center'),
(263, 94, '_wp_attachment_image_alt', ''),
(264, 96, '_thumbnail_id', '51'),
(265, 96, 'ml-slider_type', 'image'),
(266, 96, 'ml-slider_inherit_image_caption', '1'),
(267, 96, 'ml-slider_inherit_image_title', '1'),
(268, 96, 'ml-slider_inherit_image_alt', '1'),
(269, 97, '_thumbnail_id', '31'),
(270, 97, 'ml-slider_type', 'image'),
(271, 97, 'ml-slider_inherit_image_caption', '1'),
(272, 97, 'ml-slider_inherit_image_title', '1'),
(273, 97, 'ml-slider_inherit_image_alt', '1'),
(274, 98, '_thumbnail_id', '49'),
(275, 98, 'ml-slider_type', 'image'),
(276, 98, 'ml-slider_inherit_image_caption', '1'),
(277, 98, 'ml-slider_inherit_image_title', '1'),
(278, 98, 'ml-slider_inherit_image_alt', '1'),
(279, 99, '_thumbnail_id', '52'),
(280, 99, 'ml-slider_type', 'image'),
(281, 99, 'ml-slider_inherit_image_caption', '1'),
(282, 99, 'ml-slider_inherit_image_title', '1'),
(283, 99, 'ml-slider_inherit_image_alt', '1'),
(284, 100, '_thumbnail_id', '55'),
(285, 100, 'ml-slider_type', 'image'),
(286, 100, 'ml-slider_inherit_image_caption', '1'),
(287, 100, 'ml-slider_inherit_image_title', '1'),
(288, 100, 'ml-slider_inherit_image_alt', '1'),
(289, 101, '_thumbnail_id', '50'),
(290, 101, 'ml-slider_type', 'image'),
(291, 101, 'ml-slider_inherit_image_caption', '1'),
(292, 101, 'ml-slider_inherit_image_title', '1'),
(293, 101, 'ml-slider_inherit_image_alt', '1'),
(294, 102, '_thumbnail_id', '57'),
(295, 102, 'ml-slider_type', 'image'),
(296, 102, 'ml-slider_inherit_image_caption', '1'),
(297, 102, 'ml-slider_inherit_image_title', '1'),
(298, 102, 'ml-slider_inherit_image_alt', '1'),
(299, 103, '_thumbnail_id', '67'),
(300, 103, 'ml-slider_type', 'image'),
(301, 103, 'ml-slider_inherit_image_caption', '1'),
(302, 103, 'ml-slider_inherit_image_title', '1'),
(303, 103, 'ml-slider_inherit_image_alt', '1'),
(304, 51, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-597x255\";a:5:{s:4:\"path\";s:109:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/iphone-compare-201709-597x255.jpeg\";s:4:\"file\";s:34:\"iphone-compare-201709-597x255.jpeg\";s:5:\"width\";i:597;s:6:\"height\";i:255;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-597x248\";a:5:{s:4:\"path\";s:109:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/iphone-compare-201709-597x248.jpeg\";s:4:\"file\";s:34:\"iphone-compare-201709-597x248.jpeg\";s:5:\"width\";i:597;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-597x171\";a:5:{s:4:\"path\";s:109:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/iphone-compare-201709-597x171.jpeg\";s:4:\"file\";s:34:\"iphone-compare-201709-597x171.jpeg\";s:5:\"width\";i:597;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(305, 31, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-700x300.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-620x266.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-400x171.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-705x293\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-705x293.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-705x293.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-620x258.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x166\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-400x166.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-400x166.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-705x201\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-705x201.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-705x201.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x177\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-620x177.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x114\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1-400x114.jpg\";s:4:\"file\";s:43:\"aaaS9_S9-Press-Release_Main_1-1-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(306, 49, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-700x300.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x266.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x266.png\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x171.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x171.png\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-902x375\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-902x375.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-902x375.png\";s:5:\"width\";i:902;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x258.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x258.png\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-400x166\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x166.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x166.png\";s:5:\"width\";i:400;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-902x258\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-902x258.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-902x258.png\";s:5:\"width\";i:902;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-620x177\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x177.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-620x177.png\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-400x114\";a:5:{s:4:\"path\";s:210:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x114.png\";s:4:\"file\";s:135:\"AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018-400x114.png\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(307, 52, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-600x257\";a:5:{s:4:\"path\";s:105:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/iPhone-family-2018-600x257.png\";s:4:\"file\";s:30:\"iPhone-family-2018-600x257.png\";s:5:\"width\";i:600;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-600x250\";a:5:{s:4:\"path\";s:105:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/iPhone-family-2018-600x250.png\";s:4:\"file\";s:30:\"iPhone-family-2018-600x250.png\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-600x171\";a:5:{s:4:\"path\";s:105:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/iPhone-family-2018-600x171.png\";s:4:\"file\";s:30:\"iPhone-family-2018-600x171.png\";s:5:\"width\";i:600;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(308, 55, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-700x300.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-620x266.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-400x171.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-705x293\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-705x293.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-705x293.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-620x258.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x166\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-400x166.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-400x166.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-705x201\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-705x201.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-705x201.jpg\";s:5:\"width\";i:705;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x177\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-620x177.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x114\";a:5:{s:4:\"path\";s:118:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1-400x114.jpg\";s:4:\"file\";s:43:\"Galaxy-S9-Sunrise-Gold_main_3-1-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(309, 57, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-700x300.jpg\";s:4:\"file\";s:28:\"20052518_01_1200-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-620x266.jpg\";s:4:\"file\";s:28:\"20052518_01_1200-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-400x171.jpg\";s:4:\"file\";s:28:\"20052518_01_1200-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:104:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-1200x500.jpg\";s:4:\"file\";s:29:\"20052518_01_1200-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-620x258.jpg\";s:4:\"file\";s:28:\"20052518_01_1200-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-400x167.jpg\";s:4:\"file\";s:28:\"20052518_01_1200-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x343\";a:5:{s:4:\"path\";s:104:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-1200x343.jpg\";s:4:\"file\";s:29:\"20052518_01_1200-1200x343.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x177\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-620x177.jpg\";s:4:\"file\";s:28:\"20052518_01_1200-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x114\";a:5:{s:4:\"path\";s:103:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/20052518_01_1200-400x114.jpg\";s:4:\"file\";s:28:\"20052518_01_1200-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(310, 67, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-700x300.jpg\";s:4:\"file\";s:19:\"1898988-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-620x266.jpg\";s:4:\"file\";s:19:\"1898988-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-400x171.jpg\";s:4:\"file\";s:19:\"1898988-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-850x354\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-850x354.jpg\";s:4:\"file\";s:19:\"1898988-850x354.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-620x258.jpg\";s:4:\"file\";s:19:\"1898988-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-400x167.jpg\";s:4:\"file\";s:19:\"1898988-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-850x243\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-850x243.jpg\";s:4:\"file\";s:19:\"1898988-850x243.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x177\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-620x177.jpg\";s:4:\"file\";s:19:\"1898988-620x177.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x114\";a:5:{s:4:\"path\";s:94:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/1898988-400x114.jpg\";s:4:\"file\";s:19:\"1898988-400x114.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(311, 96, 'ml-slider_crop_position', 'center-center'),
(312, 96, '_wp_attachment_image_alt', ''),
(313, 97, 'ml-slider_crop_position', 'center-center'),
(314, 97, '_wp_attachment_image_alt', ''),
(315, 98, 'ml-slider_crop_position', 'center-center'),
(316, 98, '_wp_attachment_image_alt', ''),
(317, 99, 'ml-slider_crop_position', 'center-center'),
(318, 99, '_wp_attachment_image_alt', ''),
(319, 100, 'ml-slider_crop_position', 'center-center'),
(320, 100, '_wp_attachment_image_alt', ''),
(321, 101, 'ml-slider_crop_position', 'center-center'),
(322, 101, '_wp_attachment_image_alt', ''),
(323, 102, 'ml-slider_crop_position', 'center-center'),
(324, 102, '_wp_attachment_image_alt', ''),
(325, 103, 'ml-slider_crop_position', 'center-center'),
(326, 103, '_wp_attachment_image_alt', ''),
(327, 108, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(328, 108, '_mail', 'a:8:{s:7:\"subject\";s:25:\"My Store \"[your-subject]\"\";s:6:\"sender\";s:40:\"[your-name] <narek.ghazaryan.g@tumo.rog>\";s:4:\"body\";s:173:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on My Store (http://localhost/wordpress)\";s:9:\"recipient\";s:26:\"narek.ghazaryan.g@tumo.rog\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(329, 108, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"My Store \"[your-subject]\"\";s:6:\"sender\";s:37:\"My Store <narek.ghazaryan.g@tumo.rog>\";s:4:\"body\";s:115:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on My Store (http://localhost/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:36:\"Reply-To: narek.ghazaryan.g@tumo.rog\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(330, 108, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(331, 108, '_additional_settings', NULL),
(332, 108, '_locale', 'en_US'),
(333, 111, '_menu_item_type', 'post_type'),
(334, 111, '_menu_item_menu_item_parent', '0'),
(335, 111, '_menu_item_object_id', '77'),
(336, 111, '_menu_item_object', 'page'),
(337, 111, '_menu_item_target', ''),
(338, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(339, 111, '_menu_item_xfn', ''),
(340, 111, '_menu_item_url', ''),
(342, 112, '_menu_item_type', 'post_type'),
(343, 112, '_menu_item_menu_item_parent', '0'),
(344, 112, '_menu_item_object_id', '76'),
(345, 112, '_menu_item_object', 'page'),
(346, 112, '_menu_item_target', ''),
(347, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(348, 112, '_menu_item_xfn', ''),
(349, 112, '_menu_item_url', ''),
(351, 113, '_menu_item_type', 'post_type'),
(352, 113, '_menu_item_menu_item_parent', '0'),
(353, 113, '_menu_item_object_id', '75'),
(354, 113, '_menu_item_object', 'page'),
(355, 113, '_menu_item_target', ''),
(356, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(357, 113, '_menu_item_xfn', ''),
(358, 113, '_menu_item_url', ''),
(360, 114, '_menu_item_type', 'post_type'),
(361, 114, '_menu_item_menu_item_parent', '0'),
(362, 114, '_menu_item_object_id', '74'),
(363, 114, '_menu_item_object', 'page'),
(364, 114, '_menu_item_target', ''),
(365, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(366, 114, '_menu_item_xfn', ''),
(367, 114, '_menu_item_url', ''),
(371, 74, '_edit_lock', '1529887912:1'),
(372, 117, '_wc_review_count', '0'),
(373, 117, '_wc_rating_count', 'a:0:{}'),
(374, 117, '_wc_average_rating', '0'),
(375, 117, '_edit_last', '1'),
(376, 117, '_edit_lock', '1529888534:1'),
(377, 118, '_wp_attached_file', '2018/06/samsung_s81.jpg'),
(378, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:23:\"2018/06/samsung_s81.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"samsung_s81-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"samsung_s81-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:23:\"samsung_s81-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"samsung_s81-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"samsung_s81-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"samsung_s81-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"samsung_s81-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 119, '_wp_attached_file', '2018/06/sasmsungs82.jpg'),
(380, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:23:\"2018/06/sasmsungs82.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"sasmsungs82-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"sasmsungs82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:23:\"sasmsungs82-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"sasmsungs82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"sasmsungs82-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"sasmsungs82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"sasmsungs82-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 120, '_wp_attached_file', '2018/06/5c34b3135a672f98dbd3s8-gold-2.jpg'),
(382, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:41:\"2018/06/5c34b3135a672f98dbd3s8-gold-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"5c34b3135a672f98dbd3s8-gold-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"5c34b3135a672f98dbd3s8-gold-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:41:\"5c34b3135a672f98dbd3s8-gold-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"5c34b3135a672f98dbd3s8-gold-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"5c34b3135a672f98dbd3s8-gold-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"5c34b3135a672f98dbd3s8-gold-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"5c34b3135a672f98dbd3s8-gold-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 117, '_thumbnail_id', '118'),
(384, 117, '_sku', ''),
(385, 117, '_regular_price', '389900'),
(386, 117, '_sale_price', '375000'),
(387, 117, '_sale_price_dates_from', ''),
(388, 117, '_sale_price_dates_to', ''),
(389, 117, 'total_sales', '0'),
(390, 117, '_tax_status', 'taxable'),
(391, 117, '_tax_class', ''),
(392, 117, '_manage_stock', 'no'),
(393, 117, '_backorders', 'no'),
(394, 117, '_sold_individually', 'no'),
(395, 117, '_weight', ''),
(396, 117, '_length', ''),
(397, 117, '_width', ''),
(398, 117, '_height', ''),
(399, 117, '_upsell_ids', 'a:0:{}'),
(400, 117, '_crosssell_ids', 'a:0:{}'),
(401, 117, '_purchase_note', ''),
(402, 117, '_default_attributes', 'a:0:{}'),
(403, 117, '_virtual', 'no'),
(404, 117, '_downloadable', 'no'),
(405, 117, '_product_image_gallery', '119,120'),
(406, 117, '_download_limit', '-1'),
(407, 117, '_download_expiry', '-1'),
(408, 117, '_stock', NULL),
(409, 117, '_stock_status', 'instock'),
(410, 117, '_product_version', '3.4.3'),
(411, 117, '_price', '375000'),
(415, 122, '_wc_review_count', '0'),
(416, 122, '_wc_rating_count', 'a:0:{}'),
(417, 122, '_wc_average_rating', '0'),
(418, 122, '_edit_last', '1'),
(419, 122, '_edit_lock', '1529888787:1'),
(420, 123, '_wp_attached_file', '2018/06/0bf41c1d33fb80d1d34cX-1.jpg'),
(421, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:35:\"2018/06/0bf41c1d33fb80d1d34cX-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"0bf41c1d33fb80d1d34cX-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"0bf41c1d33fb80d1d34cX-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:35:\"0bf41c1d33fb80d1d34cX-1-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"0bf41c1d33fb80d1d34cX-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"0bf41c1d33fb80d1d34cX-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"0bf41c1d33fb80d1d34cX-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"0bf41c1d33fb80d1d34cX-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(422, 122, '_thumbnail_id', '123'),
(423, 122, '_sku', ''),
(424, 122, '_regular_price', '744900'),
(425, 122, '_sale_price', ''),
(426, 122, '_sale_price_dates_from', ''),
(427, 122, '_sale_price_dates_to', ''),
(428, 122, 'total_sales', '0'),
(429, 122, '_tax_status', 'taxable'),
(430, 122, '_tax_class', ''),
(431, 122, '_manage_stock', 'no'),
(432, 122, '_backorders', 'no'),
(433, 122, '_sold_individually', 'no'),
(434, 122, '_weight', ''),
(435, 122, '_length', ''),
(436, 122, '_width', ''),
(437, 122, '_height', ''),
(438, 122, '_upsell_ids', 'a:0:{}'),
(439, 122, '_crosssell_ids', 'a:0:{}'),
(440, 122, '_purchase_note', ''),
(441, 122, '_default_attributes', 'a:0:{}'),
(442, 122, '_virtual', 'no'),
(443, 122, '_downloadable', 'no'),
(444, 122, '_product_image_gallery', ''),
(445, 122, '_download_limit', '-1'),
(446, 122, '_download_expiry', '-1'),
(447, 122, '_stock', NULL),
(448, 122, '_stock_status', 'instock'),
(449, 122, '_product_version', '3.4.3'),
(450, 122, '_price', '744900'),
(451, 124, '_wc_review_count', '0'),
(452, 124, '_wc_rating_count', 'a:0:{}'),
(453, 124, '_wc_average_rating', '0'),
(454, 124, '_edit_last', '1'),
(455, 124, '_edit_lock', '1529889107:1'),
(456, 125, '_wp_attached_file', '2018/06/s8.jpg'),
(457, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:14:\"2018/06/s8.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"s8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:14:\"s8-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"s8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"s8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(458, 126, '_wp_attached_file', '2018/06/s82.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(459, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:15:\"2018/06/s82.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"s82-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"s82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:15:\"s82-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"s82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"s82-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"s82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"s82-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(460, 127, '_wp_attached_file', '2018/06/s83.jpg'),
(461, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:15:\"2018/06/s83.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"s83-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"s83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:15:\"s83-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"s83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"s83-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"s83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"s83-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 124, '_thumbnail_id', '125'),
(463, 124, '_sku', ''),
(464, 124, '_regular_price', '422000'),
(465, 124, '_sale_price', '419900'),
(466, 124, '_sale_price_dates_from', ''),
(467, 124, '_sale_price_dates_to', ''),
(468, 124, 'total_sales', '0'),
(469, 124, '_tax_status', 'taxable'),
(470, 124, '_tax_class', ''),
(471, 124, '_manage_stock', 'no'),
(472, 124, '_backorders', 'no'),
(473, 124, '_sold_individually', 'no'),
(474, 124, '_weight', ''),
(475, 124, '_length', ''),
(476, 124, '_width', ''),
(477, 124, '_height', ''),
(478, 124, '_upsell_ids', 'a:0:{}'),
(479, 124, '_crosssell_ids', 'a:0:{}'),
(480, 124, '_purchase_note', ''),
(481, 124, '_default_attributes', 'a:0:{}'),
(482, 124, '_virtual', 'no'),
(483, 124, '_downloadable', 'no'),
(484, 124, '_product_image_gallery', '126,127'),
(485, 124, '_download_limit', '-1'),
(486, 124, '_download_expiry', '-1'),
(487, 124, '_stock', NULL),
(488, 124, '_stock_status', 'instock'),
(489, 124, '_product_version', '3.4.3'),
(490, 124, '_price', '419900'),
(491, 128, '_wc_review_count', '0'),
(492, 128, '_wc_rating_count', 'a:0:{}'),
(493, 128, '_wc_average_rating', '0'),
(494, 129, '_wp_attached_file', '2018/06/ip6.jpg'),
(495, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:15:\"2018/06/ip6.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ip6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ip6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:15:\"ip6-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"ip6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"ip6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"ip6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"ip6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(496, 128, '_edit_last', '1'),
(497, 128, '_thumbnail_id', '129'),
(498, 128, '_sku', ''),
(499, 128, '_regular_price', '219900'),
(500, 128, '_sale_price', ''),
(501, 128, '_sale_price_dates_from', ''),
(502, 128, '_sale_price_dates_to', ''),
(503, 128, 'total_sales', '0'),
(504, 128, '_tax_status', 'taxable'),
(505, 128, '_tax_class', ''),
(506, 128, '_manage_stock', 'no'),
(507, 128, '_backorders', 'no'),
(508, 128, '_sold_individually', 'no'),
(509, 128, '_weight', ''),
(510, 128, '_length', ''),
(511, 128, '_width', ''),
(512, 128, '_height', ''),
(513, 128, '_upsell_ids', 'a:0:{}'),
(514, 128, '_crosssell_ids', 'a:0:{}'),
(515, 128, '_purchase_note', ''),
(516, 128, '_default_attributes', 'a:0:{}'),
(517, 128, '_virtual', 'no'),
(518, 128, '_downloadable', 'no'),
(519, 128, '_product_image_gallery', ''),
(520, 128, '_download_limit', '-1'),
(521, 128, '_download_expiry', '-1'),
(522, 128, '_stock', NULL),
(523, 128, '_stock_status', 'instock'),
(524, 128, '_product_version', '3.4.3'),
(525, 128, '_price', '219900'),
(526, 128, '_edit_lock', '1529889283:1'),
(527, 130, '_wc_review_count', '0'),
(528, 130, '_wc_rating_count', 'a:0:{}'),
(529, 130, '_wc_average_rating', '0'),
(530, 131, '_wp_attached_file', '2018/06/ip8.jpg'),
(531, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:15:\"2018/06/ip8.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ip8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ip8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:15:\"ip8-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"ip8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"ip8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"ip8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"ip8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(532, 132, '_wp_attached_file', '2018/06/ip82.jpg'),
(533, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:16:\"2018/06/ip82.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ip82-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ip82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:16:\"ip82-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"ip82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"ip82-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"ip82-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"ip82-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 133, '_wp_attached_file', '2018/06/ip83.jpg'),
(535, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:16:\"2018/06/ip83.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ip83-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ip83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:16:\"ip83-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"ip83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"ip83-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"ip83-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"ip83-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(536, 130, '_edit_last', '1'),
(537, 130, '_thumbnail_id', '131'),
(538, 130, '_sku', ''),
(539, 130, '_regular_price', '498900'),
(540, 130, '_sale_price', ''),
(541, 130, '_sale_price_dates_from', ''),
(542, 130, '_sale_price_dates_to', ''),
(543, 130, 'total_sales', '0'),
(544, 130, '_tax_status', 'taxable'),
(545, 130, '_tax_class', ''),
(546, 130, '_manage_stock', 'no'),
(547, 130, '_backorders', 'no'),
(548, 130, '_sold_individually', 'no'),
(549, 130, '_weight', ''),
(550, 130, '_length', ''),
(551, 130, '_width', ''),
(552, 130, '_height', ''),
(553, 130, '_upsell_ids', 'a:0:{}'),
(554, 130, '_crosssell_ids', 'a:0:{}'),
(555, 130, '_purchase_note', ''),
(556, 130, '_default_attributes', 'a:0:{}'),
(557, 130, '_virtual', 'no'),
(558, 130, '_downloadable', 'no'),
(559, 130, '_product_image_gallery', '132,133'),
(560, 130, '_download_limit', '-1'),
(561, 130, '_download_expiry', '-1'),
(562, 130, '_stock', NULL),
(563, 130, '_stock_status', 'instock'),
(564, 130, '_product_version', '3.4.3'),
(565, 130, '_price', '498900'),
(566, 130, '_edit_lock', '1529889527:1'),
(567, 136, '_wp_attached_file', '2018/06/young-logo.jpg'),
(568, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:207;s:4:\"file\";s:22:\"2018/06/young-logo.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"young-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"young-logo-300x104.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:104;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:22:\"young-logo-450x155.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"young-logo-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"young-logo-600x207.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"young-logo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"young-logo-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"young-logo-600x207.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"young-logo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(569, 93, '_wp_desired_post_slug', 'slider-92-image'),
(570, 94, '_wp_desired_post_slug', 'slider-92-image-2'),
(571, 98, '_wp_desired_post_slug', 'slider-92-image-5'),
(572, 101, '_wp_desired_post_slug', 'slider-92-image-8'),
(573, 102, '_wp_desired_post_slug', 'slider-92-image-9'),
(574, 100, '_wp_desired_post_slug', 'slider-92-image-7'),
(575, 99, '_wp_desired_post_slug', 'slider-92-image-6'),
(576, 103, '_wp_desired_post_slug', 'slider-92-image-10'),
(577, 97, '_wp_desired_post_slug', 'slider-92-image-4'),
(578, 96, '_wp_desired_post_slug', 'slider-92-image-3'),
(579, 139, '_wp_attached_file', '2018/06/slide111.jpg'),
(580, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide111.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide111-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide111-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide111-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide111-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide111-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide111-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide111-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide111-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide111-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide111-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide111-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide111-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide111-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide111-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide111-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide111-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide111-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide111-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide111-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(581, 140, '_wp_attached_file', '2018/06/slide112.jpg'),
(582, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide112.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide112-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide112-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide112-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide112-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide112-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide112-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide112-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide112-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide112-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide112-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide112-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide112-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide112-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide112-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide112-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide112-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide112-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide112-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide112-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(583, 141, '_wp_attached_file', '2018/06/slide113.jpg'),
(584, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide113.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide113-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide113-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide113-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide113-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide113-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide113-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide113-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide113-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide113-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide113-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide113-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide113-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide113-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide113-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide113-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide113-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide113-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide113-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide113-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(585, 142, '_wp_attached_file', '2018/06/slide114.jpg'),
(586, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide114.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide114-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide114-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide114-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide114-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide114-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide114-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide114-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide114-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide114-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide114-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide114-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide114-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide114-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide114-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide114-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide114-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide114-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide114-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide114-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(587, 143, '_wp_attached_file', '2018/06/slide115.jpg'),
(588, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide115.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide115-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide115-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide115-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide115-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide115-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide115-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide115-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide115-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide115-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide115-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide115-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide115-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide115-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide115-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide115-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide115-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide115-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide115-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide115-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(589, 144, '_wp_attached_file', '2018/06/slide119.jpg'),
(590, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide119.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide119-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide119-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide119-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide119-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide119-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide119-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide119-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide119-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide119-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide119-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide119-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide119-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide119-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide119-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide119-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide119-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide119-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide119-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide119-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(591, 145, '_wp_attached_file', '2018/06/slide120.jpg'),
(592, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide120.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide120-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide120-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide120-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide120-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide120-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide120-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide120-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide120-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide120-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide120-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide120-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide120-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide120-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide120-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide120-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide120-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide120-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide120-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide120-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(593, 146, '_wp_attached_file', '2018/06/slide121.jpg'),
(594, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2018/06/slide121.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide121-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide121-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slide121-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide121-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:20:\"slide121-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slide121-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slide121-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide121-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slide121-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slide121-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slide121-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:21:\"slide121-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:20:\"slide121-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:20:\"slide121-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:21:\"slide121-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:21:\"slide121-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:21:\"slide121-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:20:\"slide121-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:20:\"slide121-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(595, 147, '_wp_attached_file', '2018/06/slide1124.jpg'),
(596, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:21:\"2018/06/slide1124.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slide1124-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slide1124-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slide1124-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slide1124-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:21:\"slide1124-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"slide1124-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"slide1124-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"slide1124-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"slide1124-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"slide1124-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"slide1124-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:22:\"slide1124-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:21:\"slide1124-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:21:\"slide1124-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:22:\"slide1124-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:22:\"slide1124-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:22:\"slide1124-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:21:\"slide1124-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:21:\"slide1124-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(597, 148, '_wp_attached_file', '2018/06/slide1211.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(598, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:21:\"2018/06/slide1211.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slide1211-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slide1211-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slide1211-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slide1211-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:21:\"slide1211-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"slide1211-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"slide1211-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"slide1211-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"slide1211-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"slide1211-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"slide1211-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:22:\"slide1211-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:21:\"slide1211-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:21:\"slide1211-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:22:\"slide1211-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:22:\"slide1211-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:22:\"slide1211-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:21:\"slide1211-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:21:\"slide1211-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(599, 149, '_wp_attached_file', '2018/06/slide11223.jpg'),
(600, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:550;s:4:\"file\";s:22:\"2018/06/slide11223.jpg\";s:5:\"sizes\";a:19:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"slide11223-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"slide11223-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"slide11223-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"slide11223-1024x293.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"sizeN\";a:4:{s:4:\"file\";s:22:\"slide11223-450x129.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"slide11223-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"slide11223-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"slide11223-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"slide11223-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"slide11223-600x172.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"slide11223-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:23:\"slide11223-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x258\";a:4:{s:4:\"file\";s:22:\"slide11223-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x167\";a:4:{s:4:\"file\";s:22:\"slide11223-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1900x550\";a:4:{s:4:\"file\";s:23:\"slide11223-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1600x463\";a:4:{s:4:\"file\";s:23:\"slide11223-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x347\";a:4:{s:4:\"file\";s:23:\"slide11223-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x179\";a:4:{s:4:\"file\";s:22:\"slide11223-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x116\";a:4:{s:4:\"file\";s:22:\"slide11223-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(601, 150, '_thumbnail_id', '139'),
(602, 150, 'ml-slider_type', 'image'),
(603, 150, 'ml-slider_inherit_image_caption', '1'),
(604, 150, 'ml-slider_inherit_image_title', '1'),
(605, 150, 'ml-slider_inherit_image_alt', '1'),
(606, 151, '_thumbnail_id', '140'),
(607, 151, 'ml-slider_type', 'image'),
(608, 151, 'ml-slider_inherit_image_caption', '1'),
(609, 151, 'ml-slider_inherit_image_title', '1'),
(610, 151, 'ml-slider_inherit_image_alt', '1'),
(611, 152, '_thumbnail_id', '141'),
(612, 152, 'ml-slider_type', 'image'),
(613, 152, 'ml-slider_inherit_image_caption', '1'),
(614, 152, 'ml-slider_inherit_image_title', '1'),
(615, 152, 'ml-slider_inherit_image_alt', '1'),
(616, 153, '_thumbnail_id', '142'),
(617, 153, 'ml-slider_type', 'image'),
(618, 153, 'ml-slider_inherit_image_caption', '1'),
(619, 153, 'ml-slider_inherit_image_title', '1'),
(620, 153, 'ml-slider_inherit_image_alt', '1'),
(621, 154, '_thumbnail_id', '143'),
(622, 154, 'ml-slider_type', 'image'),
(623, 154, 'ml-slider_inherit_image_caption', '1'),
(624, 154, 'ml-slider_inherit_image_title', '1'),
(625, 154, 'ml-slider_inherit_image_alt', '1'),
(626, 155, '_thumbnail_id', '144'),
(627, 155, 'ml-slider_type', 'image'),
(628, 155, 'ml-slider_inherit_image_caption', '1'),
(629, 155, 'ml-slider_inherit_image_title', '1'),
(630, 155, 'ml-slider_inherit_image_alt', '1'),
(631, 156, '_thumbnail_id', '145'),
(632, 156, 'ml-slider_type', 'image'),
(633, 156, 'ml-slider_inherit_image_caption', '1'),
(634, 156, 'ml-slider_inherit_image_title', '1'),
(635, 156, 'ml-slider_inherit_image_alt', '1'),
(636, 157, '_thumbnail_id', '146'),
(637, 157, 'ml-slider_type', 'image'),
(638, 157, 'ml-slider_inherit_image_caption', '1'),
(639, 157, 'ml-slider_inherit_image_title', '1'),
(640, 157, 'ml-slider_inherit_image_alt', '1'),
(641, 158, '_thumbnail_id', '147'),
(642, 158, 'ml-slider_type', 'image'),
(643, 158, 'ml-slider_inherit_image_caption', '1'),
(644, 158, 'ml-slider_inherit_image_title', '1'),
(645, 158, 'ml-slider_inherit_image_alt', '1'),
(646, 159, '_thumbnail_id', '148'),
(647, 159, 'ml-slider_type', 'image'),
(648, 159, 'ml-slider_inherit_image_caption', '1'),
(649, 159, 'ml-slider_inherit_image_title', '1'),
(650, 159, 'ml-slider_inherit_image_alt', '1'),
(651, 160, '_thumbnail_id', '149'),
(652, 160, 'ml-slider_type', 'image'),
(653, 160, 'ml-slider_inherit_image_caption', '1'),
(654, 160, 'ml-slider_inherit_image_title', '1'),
(655, 160, 'ml-slider_inherit_image_alt', '1'),
(656, 139, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-1200x500.jpg\";s:4:\"file\";s:21:\"slide111-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-620x258.jpg\";s:4:\"file\";s:20:\"slide111-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-400x167.jpg\";s:4:\"file\";s:20:\"slide111-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-1900x550.jpg\";s:4:\"file\";s:21:\"slide111-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-1600x463.jpg\";s:4:\"file\";s:21:\"slide111-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-1200x347.jpg\";s:4:\"file\";s:21:\"slide111-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-620x179.jpg\";s:4:\"file\";s:20:\"slide111-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide111-400x116.jpg\";s:4:\"file\";s:20:\"slide111-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(657, 140, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-1200x500.jpg\";s:4:\"file\";s:21:\"slide112-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-620x258.jpg\";s:4:\"file\";s:20:\"slide112-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-400x167.jpg\";s:4:\"file\";s:20:\"slide112-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-1900x550.jpg\";s:4:\"file\";s:21:\"slide112-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-1600x463.jpg\";s:4:\"file\";s:21:\"slide112-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-1200x347.jpg\";s:4:\"file\";s:21:\"slide112-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-620x179.jpg\";s:4:\"file\";s:20:\"slide112-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide112-400x116.jpg\";s:4:\"file\";s:20:\"slide112-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(658, 141, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-1200x500.jpg\";s:4:\"file\";s:21:\"slide113-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-620x258.jpg\";s:4:\"file\";s:20:\"slide113-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-400x167.jpg\";s:4:\"file\";s:20:\"slide113-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-1900x550.jpg\";s:4:\"file\";s:21:\"slide113-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-1600x463.jpg\";s:4:\"file\";s:21:\"slide113-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-1200x347.jpg\";s:4:\"file\";s:21:\"slide113-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-620x179.jpg\";s:4:\"file\";s:20:\"slide113-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide113-400x116.jpg\";s:4:\"file\";s:20:\"slide113-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(659, 142, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-1200x500.jpg\";s:4:\"file\";s:21:\"slide114-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-620x258.jpg\";s:4:\"file\";s:20:\"slide114-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-400x167.jpg\";s:4:\"file\";s:20:\"slide114-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-1900x550.jpg\";s:4:\"file\";s:21:\"slide114-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-1600x463.jpg\";s:4:\"file\";s:21:\"slide114-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-1200x347.jpg\";s:4:\"file\";s:21:\"slide114-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-620x179.jpg\";s:4:\"file\";s:20:\"slide114-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide114-400x116.jpg\";s:4:\"file\";s:20:\"slide114-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(660, 143, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-1200x500.jpg\";s:4:\"file\";s:21:\"slide115-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-620x258.jpg\";s:4:\"file\";s:20:\"slide115-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-400x167.jpg\";s:4:\"file\";s:20:\"slide115-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-1900x550.jpg\";s:4:\"file\";s:21:\"slide115-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-1600x463.jpg\";s:4:\"file\";s:21:\"slide115-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-1200x347.jpg\";s:4:\"file\";s:21:\"slide115-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-620x179.jpg\";s:4:\"file\";s:20:\"slide115-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide115-400x116.jpg\";s:4:\"file\";s:20:\"slide115-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(661, 144, '_wp_attachment_backup_sizes', 'a:7:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide119-1200x500.jpg\";s:4:\"file\";s:21:\"slide119-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide119-620x258.jpg\";s:4:\"file\";s:20:\"slide119-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide119-400x167.jpg\";s:4:\"file\";s:20:\"slide119-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide119-1600x463.jpg\";s:4:\"file\";s:21:\"slide119-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide119-1200x347.jpg\";s:4:\"file\";s:21:\"slide119-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide119-620x179.jpg\";s:4:\"file\";s:20:\"slide119-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide119-400x116.jpg\";s:4:\"file\";s:20:\"slide119-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(662, 145, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-1200x500.jpg\";s:4:\"file\";s:21:\"slide120-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-620x258.jpg\";s:4:\"file\";s:20:\"slide120-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-400x167.jpg\";s:4:\"file\";s:20:\"slide120-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-1900x550.jpg\";s:4:\"file\";s:21:\"slide120-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-1600x463.jpg\";s:4:\"file\";s:21:\"slide120-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-1200x347.jpg\";s:4:\"file\";s:21:\"slide120-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-620x179.jpg\";s:4:\"file\";s:20:\"slide120-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide120-400x116.jpg\";s:4:\"file\";s:20:\"slide120-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(663, 146, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-1200x500.jpg\";s:4:\"file\";s:21:\"slide121-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-620x258.jpg\";s:4:\"file\";s:20:\"slide121-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-400x167.jpg\";s:4:\"file\";s:20:\"slide121-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-1900x550.jpg\";s:4:\"file\";s:21:\"slide121-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-1600x463.jpg\";s:4:\"file\";s:21:\"slide121-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-1200x347.jpg\";s:4:\"file\";s:21:\"slide121-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-620x179.jpg\";s:4:\"file\";s:20:\"slide121-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:95:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide121-400x116.jpg\";s:4:\"file\";s:20:\"slide121-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(664, 147, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-1200x500.jpg\";s:4:\"file\";s:22:\"slide1124-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-620x258.jpg\";s:4:\"file\";s:21:\"slide1124-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-400x167.jpg\";s:4:\"file\";s:21:\"slide1124-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-1900x550.jpg\";s:4:\"file\";s:22:\"slide1124-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-1600x463.jpg\";s:4:\"file\";s:22:\"slide1124-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-1200x347.jpg\";s:4:\"file\";s:22:\"slide1124-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-620x179.jpg\";s:4:\"file\";s:21:\"slide1124-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1124-400x116.jpg\";s:4:\"file\";s:21:\"slide1124-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(665, 148, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-1200x500.jpg\";s:4:\"file\";s:22:\"slide1211-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-620x258.jpg\";s:4:\"file\";s:21:\"slide1211-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-400x167.jpg\";s:4:\"file\";s:21:\"slide1211-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-1900x550.jpg\";s:4:\"file\";s:22:\"slide1211-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-1600x463.jpg\";s:4:\"file\";s:22:\"slide1211-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-1200x347.jpg\";s:4:\"file\";s:22:\"slide1211-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-620x179.jpg\";s:4:\"file\";s:21:\"slide1211-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:96:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide1211-400x116.jpg\";s:4:\"file\";s:21:\"slide1211-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(666, 149, '_wp_attachment_backup_sizes', 'a:8:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:98:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-1200x500.jpg\";s:4:\"file\";s:23:\"slide11223-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x258\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-620x258.jpg\";s:4:\"file\";s:22:\"slide11223-620x258.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x167\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-400x167.jpg\";s:4:\"file\";s:22:\"slide11223-400x167.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1900x550\";a:5:{s:4:\"path\";s:98:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-1900x550.jpg\";s:4:\"file\";s:23:\"slide11223-1900x550.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1600x463\";a:5:{s:4:\"path\";s:98:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-1600x463.jpg\";s:4:\"file\";s:23:\"slide11223-1600x463.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x347\";a:5:{s:4:\"path\";s:98:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-1200x347.jpg\";s:4:\"file\";s:23:\"slide11223-1200x347.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x179\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-620x179.jpg\";s:4:\"file\";s:22:\"slide11223-620x179.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x116\";a:5:{s:4:\"path\";s:97:\"/Applications/XAMPP/xamppfiles/htdocs/wordpress/wp-content/uploads/2018/06/slide11223-400x116.jpg\";s:4:\"file\";s:22:\"slide11223-400x116.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(667, 150, 'ml-slider_crop_position', 'center-center'),
(668, 150, '_wp_attachment_image_alt', ''),
(669, 151, 'ml-slider_crop_position', 'center-center'),
(670, 151, '_wp_attachment_image_alt', ''),
(671, 152, 'ml-slider_crop_position', 'center-center'),
(672, 152, '_wp_attachment_image_alt', ''),
(673, 153, 'ml-slider_crop_position', 'center-center'),
(674, 153, '_wp_attachment_image_alt', ''),
(675, 154, 'ml-slider_crop_position', 'center-center'),
(676, 154, '_wp_attachment_image_alt', ''),
(677, 155, 'ml-slider_crop_position', 'center-center'),
(678, 155, '_wp_attachment_image_alt', ''),
(679, 156, 'ml-slider_crop_position', 'center-center'),
(680, 156, '_wp_attachment_image_alt', ''),
(681, 157, 'ml-slider_crop_position', 'center-center'),
(682, 157, '_wp_attachment_image_alt', ''),
(683, 158, 'ml-slider_crop_position', 'center-center'),
(684, 158, '_wp_attachment_image_alt', ''),
(685, 159, 'ml-slider_crop_position', 'center-center'),
(686, 159, '_wp_attachment_image_alt', ''),
(687, 160, 'ml-slider_crop_position', 'center-center'),
(688, 160, '_wp_attachment_image_alt', '');

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
(1, 1, '2018-06-19 18:58:41', '2018-06-19 18:58:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-06-19 20:19:11', '2018-06-19 20:19:11', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-19 18:58:41', '2018-06-19 18:58:41', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-06-23 19:34:32', '2018-06-23 19:34:32', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-19 18:58:41', '2018-06-19 18:58:41', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-06-23 19:34:25', '2018-06-23 19:34:25', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-06-19 19:01:55', '2018-06-19 19:01:55', 'Fiberman Store\'s Official Presentator in Armenia - youngStores\r\n\r\nFiberman\'s Store retail chain is the largest mobile phone sales network in Armenia.Fiberman\'s Store has been operating since 2006. Thanks to its honest and high-quality services, the company quickly gained customers\' confidence and expanded its geography in a short period of time.Fiberman\'s Store represents specialized stores in Yerevan and all regions.\r\n\r\nThe slogan ofFiberman\'s Store is \"Only the Best\" and, being faithful to that slogan, the company cooperates with world-class brands such as Samsung, Nokia, Apple, Lenovo, Motorola, HTC, Sony, Micromax, CellularLine, Celly, Hama , MyKronoz , SBS, Panzer Glass , Ksix, Canyon , ACME, Remax , Devia , Beper, Tescoma and more. Being an official distributor of these companies in Armenia, Mobile Centre offers only high quality products to customers and gives one year\'s official guarantee from the manufacturer. The company offers to customers not only mobile phones, but also many types of appliances- TVs, tablets, etc. The company\'s stores are working for 7 days a week, the company cooperates with almost all the leading banks in Armenia, loans are given in store which make customers\' shopping comfortable, fast and profitable. The company also includes a specialized service center that provides both warranty and post-warranty service for the equipment acquired in the Fiberman\'s Storenetwork. Despite the vast amount of high quality products available, thanks to its policy, the company is growing and expanding day by day presenting to customers with a wider and more modern range of equipment.\r\n\r\n[gallery ids=\"58,20,50\"]', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-06-25 01:34:47', '2018-06-25 01:34:47', '', 0, 'http://localhost/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-06-19 19:01:55', '2018-06-19 19:01:55', '', 'About', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-19 19:01:55', '2018-06-19 19:01:55', '', 5, 'http://localhost/wordpress/index.php/2018/06/19/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-19 19:02:06', '2018-06-19 19:02:06', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-06-25 02:33:12', '2018-06-25 02:33:12', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-06-19 19:02:06', '2018-06-19 19:02:06', '', 'News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-06-19 19:02:06', '2018-06-19 19:02:06', '', 7, 'http://localhost/wordpress/index.php/2018/06/19/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-06-19 19:02:16', '2018-06-19 19:02:16', '<strong>Email :</strong> narek.ghazaryan.g@tumo.rog\r\n\r\n<strong>Phone :  </strong>+37477464241\r\n\r\n<strong>Address :</strong> Gyumri , Shirak Armenia\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"108\" title=\"Contact form 1\"]\r\n\r\n&nbsp;\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d96671.55041399132!2d43.770193739503114!3d40.784323022357704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4041fb8b9b34fc9f%3A0x4f4bed0e45f99102!2sGyumri%2C+Armenia!5e0!3m2!1sen!2s!4v1529788976751\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-06-23 21:23:32', '2018-06-23 21:23:32', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-06-19 19:02:16', '2018-06-19 19:02:16', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-19 19:02:16', '2018-06-19 19:02:16', '', 9, 'http://localhost/wordpress/index.php/2018/06/19/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-06-19 19:02:48', '2018-06-19 19:02:48', '[metaslider id=92]\r\n\r\n<b>Fiberman\'s Online Web Store  Presenting and Selling Models of Mobile Brands : Apple , Samsung , Sony , LG , Htc , Lenovo ,BQ , Motorolla , Micromax , Honor , Nokia , Xiaomi , BlackBerry , etc.</b>\r\n\r\n&nbsp;', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-25 04:13:24', '2018-06-25 04:13:24', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-06-19 19:02:48', '2018-06-19 19:02:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-19 19:02:48', '2018-06-19 19:02:48', '', 11, 'http://localhost/wordpress/index.php/2018/06/19/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-19 19:04:21', '2018-06-19 19:04:21', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-06-25 04:07:22', '2018-06-25 04:07:22', '', 0, 'http://localhost/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2018-06-19 19:04:21', '2018-06-19 19:04:21', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2018-06-19 19:04:21', '2018-06-19 19:04:21', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=15', 5, 'nav_menu_item', '', 0),
(16, 1, '2018-06-19 19:04:21', '2018-06-19 19:04:21', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2018-06-19 19:05:51', '2018-06-19 19:05:51', 'Samsung Electronics released the Sunrise Gold edition of Galaxy S9 and S9+ shortly after the devices’ initial launch. As Galaxy’s latest color edition, Sunrise Gold’s subtle glossy surface radiates with a reddish glow to perfectly capture the warmth of the rising sun. Its development also saw Samsung apply the Satin Gloss Finish on smartphones for the first time.\r\n\r\nSamsung Newsroom sat down with members of Samsung Electronics’ Mobile Communications Business, who were behind the development of the Sunrise Gold color of the Galaxy S9 and S9+. They include instrument developers Seung-hwan Park and Young-gun Kim from the Mechanical R&amp;D Team, and designers Hye-jin Bang and Hye-jung Lee from the Design Team.\r\n\r\n<img class=\"alignnone size-medium wp-image-20\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_1_F-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" />\r\n\r\n<strong>Q: What inspired the development of Sunrise Gold?</strong>\r\n\r\n<strong>Hye-jin Bang</strong>: Samsung has released a gold edition for every Galaxy model. For Galaxy S9 and S9+, we wanted to create a new luxurious gold edition that is both gender neutral and appeals to people of all ages, including millennials. Based on the latest trends in various industries, such as interior design, and extensive global consumer surveys, we found that Sunrise Gold meets all our objectives.\r\n\r\nSunrise Gold is inspired by satin-weave fabric, which reflects a unique, subtle aura of gloss. We spent several years developing the Satin Gloss Finish – a new type of glossy surface that also includes qualities of a matt finish – to capture the exact texture of the fabric.\r\n\r\n<img class=\"alignnone size-medium wp-image-21\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_2-1-300x173.jpg\" alt=\"\" width=\"300\" height=\"173\" />\r\n\r\nEach color of gold is different, yet beautiful. Take a look at Galaxy S9’s Sunrise Gold (left) and Galaxy S8’s Maple Gold (right).\r\n\r\n<strong>Q: How did the team achieve the Satin Gloss Finish?</strong>\r\n\r\n<strong>Seung-hwan Park: </strong>To realize the subtleties of Satin Gloss Finish, we had to accurately adjust the glossiness of the surface. That’s why we added an extra layer of glass coating on the back of the phone, and made the surface rugged afterward, to change the way it reflects light. The reduced glossiness of the finish also reduces fingerprint marks on the phone. Samsung patented the Satin Gloss Finish, as it’s a first in the smartphone industry.\r\n\r\n<strong>Hye-jin Bang: </strong>We have been wanting to develop the Satin Gloss Finish for around four years. We were finally able to put the idea into practice after countless experiments. During the development process, we had difficulties producing the glossiness we had in mind while maintaining the coating’s durability, which is crucial for smartphones.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<strong>Q: How did the team improve the durability of the Satin Gloss Finish?</strong>\r\n\r\n<img class=\"alignnone size-medium wp-image-22\" style=\"font-size: 1rem; line-height: 1.66;\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-300x160.jpg\" alt=\"\" width=\"300\" height=\"160\" />\r\n\r\n<strong>Seung-hwan P</strong><strong style=\"font-size: 1rem; line-height: 1.66;\">ark:</strong><span style=\"font-size: 1rem; line-height: 1.66;\"> T</span><span style=\"font-size: 1rem; line-height: 1.66;\">he production technique we used to improve durability involves several high-temperature treatments of the coating to unify glass coating with mobile back glass. This was the first time we used this technique in our manufacturing process and we spent a lot of time improving its reliability.</span>\r\n\r\n<strong>Young-gun Kim</strong>: One of the most difficult part was finding a way to produce the precise level of glossiness. We produced many samples with different techniques and tested them under various conditions. We finally achieved the Satin Gloss Finish after a lengthy process of trial and error.\r\n\r\n<strong>Q: Finally, what’s the meaning behind the name Sunrise Gold?</strong>\r\n\r\n<strong>Hye-jung Lee</strong>: The concept of Galaxy S9 and S9+ revolves around capturing everyday moments in special ways. Samsung has so far introduced four color editions for the devices. Each of the colors represent a different time of the day: Midnight Black is inspired by the night; Titanium Gray symbolizes the liminal time between night and day; Coral Blue mimics the dawn; and Lilac Purple reflects the sunset. We wanted to apply the same theme to the new color edition.\r\n\r\nThe impressive reddish hue of the latest gold edition resembles the light of a rising sun. That’s why we chose the name Sunrise Gold to represent the magical moment when light radiates across the sky when daylight breaks.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Sunrise Gold: The Story behind Galaxy S9’s Latest Color Edition', '', 'publish', 'open', 'open', '', '1a', '', '', '2018-06-19 20:20:57', '2018-06-19 20:20:57', '', 0, 'http://localhost/wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2018-06-19 19:05:51', '2018-06-19 19:05:51', '', '1a', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-06-19 19:05:51', '2018-06-19 19:05:51', '', 17, 'http://localhost/wordpress/index.php/2018/06/19/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-06-19 19:20:10', '2018-06-19 19:20:10', 'Samsung Electronics released the Sunrise Gold edition of Galaxy S9 and S9+ shortly after the devices’ initial launch. As Galaxy’s latest color edition, Sunrise Gold’s subtle glossy surface radiates with a reddish glow to perfectly capture the warmth of the rising sun. Its development also saw Samsung apply the Satin Gloss Finish on smartphones for the first time.\n\nSamsung Newsroom sat down with members of Samsung Electronics’ Mobile Communications Business, who were behind the development of the Sunrise Gold color of the Galaxy S9 and S9+. They include instrument developers Seung-hwan Park and Young-gun Kim from the Mechanical R&amp;D Team, and designers Hye-jin Bang and Hye-jung Lee from the Design Team.\n\n<img class=\"alignnone size-medium wp-image-20\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_1_F-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" />\n\n<strong>Q: What inspired the development of Sunrise Gold?</strong>\n\n<strong>Hye-jin Bang</strong>: Samsung has released a gold edition for every Galaxy model. For Galaxy S9 and S9+, we wanted to create a new luxurious gold edition that is both gender neutral and appeals to people of all ages, including millennials. Based on the latest trends in various industries, such as interior design, and extensive global consumer surveys, we found that Sunrise Gold meets all our objectives.\n\nSunrise Gold is inspired by satin-weave fabric, which reflects a unique, subtle aura of gloss. We spent several years developing the Satin Gloss Finish – a new type of glossy surface that also includes qualities of a matt finish – to capture the exact texture of the fabric.\n\n<img class=\"alignnone size-medium wp-image-21\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_2-1-300x173.jpg\" alt=\"\" width=\"300\" height=\"173\" />\n\nEach color of gold is different, yet beautiful. Take a look at Galaxy S9’s Sunrise Gold (left) and Galaxy S8’s Maple Gold (right).\n\n<strong>Q: How did the team achieve the Satin Gloss Finish?</strong>\n\n<strong>Seung-hwan Park: </strong>To realize the subtleties of Satin Gloss Finish, we had to accurately adjust the glossiness of the surface. That’s why we added an extra layer of glass coating on the back of the phone, and made the surface rugged afterward, to change the way it reflects light. The reduced glossiness of the finish also reduces fingerprint marks on the phone. Samsung patented the Satin Gloss Finish, as it’s a first in the smartphone industry.\n\n<strong>Hye-jin Bang: </strong>We have been wanting to develop the Satin Gloss Finish for around four years. We were finally able to put the idea into practice after countless experiments. During the development process, we had difficulties producing the glossiness we had in mind while maintaining the coating’s durability, which is crucial for smartphones.\n\n&nbsp;\n\n&nbsp;\n\n<strong>Q: How did the team improve the durability of the Satin Gloss Finish?</strong>\n\n<img class=\"alignnone size-medium wp-image-22\" style=\"font-size: 1rem; line-height: 1.66;\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-300x160.jpg\" alt=\"\" width=\"300\" height=\"160\" />\n\n<strong>Seung-hwan P</strong><strong style=\"font-size: 1rem; line-height: 1.66;\">ark:</strong><span style=\"font-size: 1rem; line-height: 1.66;\"> T</span><span style=\"font-size: 1rem; line-height: 1.66;\">he production technique we used to improve durability involves several high-temperature treatments of the coating to unify glass coating with mobile back glass. This was the first time we used this technique in our manufacturing process and we spent a lot of time improving its reliability.</span>\n\n<strong>Young-gun Kim</strong>: One of the most difficult part was finding a way to produce the precise level of glossiness. We produced many samples with different techniques and tested them under various conditions. We finally achieved the Satin Gloss Finish after a lengthy process of trial and error.\n\n<strong>Q: Finally, what’s the meaning behind the name Sunrise Gold?</strong>\n\n<strong>Hye-jung Lee</strong>: The concept of Galaxy S9 and S9+ revolves around capturing everyday moments in special ways. Samsung has so far introduced four color editions for the devices. Each of the colors represent a different time of the day: Midnight Black is inspired by the night; Titanium Gray symbolizes the liminal time between night and day; Coral Blue mimics the dawn; and Lilac Purple reflects the sunset. We wanted to apply the same theme to the new color edition.\n\nThe impressive reddish hue of the latest gold edition resembles the light of a rising sun. That’s why we chose the name Sunrise Gold to represent the magical moment when light radiates across the sky when daylight breaks.\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;', 'Sunrise Gold: The Story behind Galaxy S9’s Latest Color Edition', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2018-06-19 19:20:10', '2018-06-19 19:20:10', '', 17, 'http://localhost/wordpress/index.php/2018/06/19/17-autosave-v1/', 0, 'revision', '', 0),
(20, 1, '2018-06-19 19:15:53', '2018-06-19 19:15:53', '', 'Galaxy-S9-Sunrise-Gold_main_1_F', '', 'inherit', 'open', 'closed', '', 'galaxy-s9-sunrise-gold_main_1_f', '', '', '2018-06-19 19:15:53', '2018-06-19 19:15:53', '', 17, 'http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_1_F.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-06-19 19:17:13', '2018-06-19 19:17:13', '', 'Galaxy-S9-Sunrise-Gold_main_2 (1)', '', 'inherit', 'open', 'closed', '', 'galaxy-s9-sunrise-gold_main_2-1', '', '', '2018-06-19 19:17:13', '2018-06-19 19:17:13', '', 17, 'http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-06-19 19:18:02', '2018-06-19 19:18:02', '', 'Galaxy-S9-Sunrise-Gold_main_3', '', 'inherit', 'open', 'closed', '', 'galaxy-s9-sunrise-gold_main_3', '', '', '2018-06-19 19:18:02', '2018-06-19 19:18:02', '', 17, 'http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-06-19 19:18:55', '2018-06-19 19:18:55', 'Samsung Electronics released the Sunrise Gold edition of Galaxy S9 and S9+ shortly after the devices’ initial launch. As Galaxy’s latest color edition, Sunrise Gold’s subtle glossy surface radiates with a reddish glow to perfectly capture the warmth of the rising sun. Its development also saw Samsung apply the Satin Gloss Finish on smartphones for the first time.\r\n\r\nSamsung Newsroom sat down with members of Samsung Electronics’ Mobile Communications Business, who were behind the development of the Sunrise Gold color of the Galaxy S9 and S9+. They include instrument developers Seung-hwan Park and Young-gun Kim from the Mechanical R&amp;D Team, and designers Hye-jin Bang and Hye-jung Lee from the Design Team.\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-medium wp-image-20\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_1_F-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" />\r\n\r\n<strong>Q: What inspired the development of Sunrise Gold?</strong>\r\n\r\n<strong>Hye-jin Bang</strong>: Samsung has released a gold edition for every Galaxy model. For Galaxy S9 and S9+, we wanted to create a new luxurious gold edition that is both gender neutral and appeals to people of all ages, including millennials. Based on the latest trends in various industries, such as interior design, and extensive global consumer surveys, we found that Sunrise Gold meets all our objectives.\r\n\r\nSunrise Gold is inspired by satin-weave fabric, which reflects a unique, subtle aura of gloss. We spent several years developing the Satin Gloss Finish – a new type of glossy surface that also includes qualities of a matt finish – to capture the exact texture of the fabric.\r\n\r\n<img class=\"alignnone size-medium wp-image-21\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_2-1-300x173.jpg\" alt=\"\" width=\"300\" height=\"173\" />\r\n\r\n<strong>Q: How did the team achieve the Satin Gloss Finish?</strong>\r\n\r\n<strong>Seung-hwan Park: </strong>To realize the subtleties of Satin Gloss Finish, we had to accurately adjust the glossiness of the surface. That’s why we added an extra layer of glass coating on the back of the phone, and made the surface rugged afterward, to change the way it reflects light. The reduced glossiness of the finish also reduces fingerprint marks on the phone. Samsung patented the Satin Gloss Finish, as it’s a first in the smartphone industry.\r\n\r\n<strong>Hye-jin Bang: </strong>We have been wanting to develop the Satin Gloss Finish for around four years. We were finally able to put the idea into practice after countless experiments. During the development process, we had difficulties producing the glossiness we had in mind while maintaining the coating’s durability, which is crucial for smartphones.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<strong>Q: How did the team improve the durability of the Satin Gloss Finish?</strong>\r\n\r\n<img class=\"alignnone size-medium wp-image-22\" style=\"font-size: 1rem; line-height: 1.66;\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-300x160.jpg\" alt=\"\" width=\"300\" height=\"160\" />\r\n\r\n<strong>Seung-hwan P</strong><strong style=\"font-size: 1rem; line-height: 1.66;\">ark:</strong><span style=\"font-size: 1rem; line-height: 1.66;\"> T</span><span style=\"font-size: 1rem; line-height: 1.66;\">he production technique we used to improve durability involves several high-temperature treatments of the coating to unify glass coating with mobile back glass. This was the first time we used this technique in our manufacturing process and we spent a lot of time improving its reliability.</span>\r\n\r\n<strong>Young-gun Kim</strong>: One of the most difficult part was finding a way to produce the precise level of glossiness. We produced many samples with different techniques and tested them under various conditions. We finally achieved the Satin Gloss Finish after a lengthy process of trial and error.\r\n\r\n<strong>Q: Finally, what’s the meaning behind the name Sunrise Gold?</strong>\r\n\r\n<strong>Hye-jung Lee</strong>: The concept of Galaxy S9 and S9+ revolves around capturing everyday moments in special ways. Samsung has so far introduced four color editions for the devices. Each of the colors represent a different time of the day: Midnight Black is inspired by the night; Titanium Gray symbolizes the liminal time between night and day; Coral Blue mimics the dawn; and Lilac Purple reflects the sunset. We wanted to apply the same theme to the new color edition.\r\n\r\nThe impressive reddish hue of the latest gold edition resembles the light of a rising sun. That’s why we chose the name Sunrise Gold to represent the magical moment when light radiates across the sky when daylight breaks.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Sunrise Gold: The Story behind Galaxy S9’s Latest Color Edition', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-06-19 19:18:55', '2018-06-19 19:18:55', '', 17, 'http://localhost/wordpress/index.php/2018/06/19/17-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-06-19 19:21:19', '2018-06-19 19:21:19', 'Samsung Electronics released the Sunrise Gold edition of Galaxy S9 and S9+ shortly after the devices’ initial launch. As Galaxy’s latest color edition, Sunrise Gold’s subtle glossy surface radiates with a reddish glow to perfectly capture the warmth of the rising sun. Its development also saw Samsung apply the Satin Gloss Finish on smartphones for the first time.\r\n\r\nSamsung Newsroom sat down with members of Samsung Electronics’ Mobile Communications Business, who were behind the development of the Sunrise Gold color of the Galaxy S9 and S9+. They include instrument developers Seung-hwan Park and Young-gun Kim from the Mechanical R&amp;D Team, and designers Hye-jin Bang and Hye-jung Lee from the Design Team.\r\n\r\n<img class=\"alignnone size-medium wp-image-20\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_1_F-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" />\r\n\r\n<strong>Q: What inspired the development of Sunrise Gold?</strong>\r\n\r\n<strong>Hye-jin Bang</strong>: Samsung has released a gold edition for every Galaxy model. For Galaxy S9 and S9+, we wanted to create a new luxurious gold edition that is both gender neutral and appeals to people of all ages, including millennials. Based on the latest trends in various industries, such as interior design, and extensive global consumer surveys, we found that Sunrise Gold meets all our objectives.\r\n\r\nSunrise Gold is inspired by satin-weave fabric, which reflects a unique, subtle aura of gloss. We spent several years developing the Satin Gloss Finish – a new type of glossy surface that also includes qualities of a matt finish – to capture the exact texture of the fabric.\r\n\r\n<img class=\"alignnone size-medium wp-image-21\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_2-1-300x173.jpg\" alt=\"\" width=\"300\" height=\"173\" />\r\n\r\nEach color of gold is different, yet beautiful. Take a look at Galaxy S9’s Sunrise Gold (left) and Galaxy S8’s Maple Gold (right).\r\n\r\n<strong>Q: How did the team achieve the Satin Gloss Finish?</strong>\r\n\r\n<strong>Seung-hwan Park: </strong>To realize the subtleties of Satin Gloss Finish, we had to accurately adjust the glossiness of the surface. That’s why we added an extra layer of glass coating on the back of the phone, and made the surface rugged afterward, to change the way it reflects light. The reduced glossiness of the finish also reduces fingerprint marks on the phone. Samsung patented the Satin Gloss Finish, as it’s a first in the smartphone industry.\r\n\r\n<strong>Hye-jin Bang: </strong>We have been wanting to develop the Satin Gloss Finish for around four years. We were finally able to put the idea into practice after countless experiments. During the development process, we had difficulties producing the glossiness we had in mind while maintaining the coating’s durability, which is crucial for smartphones.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<strong>Q: How did the team improve the durability of the Satin Gloss Finish?</strong>\r\n\r\n<img class=\"alignnone size-medium wp-image-22\" style=\"font-size: 1rem; line-height: 1.66;\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-300x160.jpg\" alt=\"\" width=\"300\" height=\"160\" />\r\n\r\n<strong>Seung-hwan P</strong><strong style=\"font-size: 1rem; line-height: 1.66;\">ark:</strong><span style=\"font-size: 1rem; line-height: 1.66;\"> T</span><span style=\"font-size: 1rem; line-height: 1.66;\">he production technique we used to improve durability involves several high-temperature treatments of the coating to unify glass coating with mobile back glass. This was the first time we used this technique in our manufacturing process and we spent a lot of time improving its reliability.</span>\r\n\r\n<strong>Young-gun Kim</strong>: One of the most difficult part was finding a way to produce the precise level of glossiness. We produced many samples with different techniques and tested them under various conditions. We finally achieved the Satin Gloss Finish after a lengthy process of trial and error.\r\n\r\n<strong>Q: Finally, what’s the meaning behind the name Sunrise Gold?</strong>\r\n\r\n<strong>Hye-jung Lee</strong>: The concept of Galaxy S9 and S9+ revolves around capturing everyday moments in special ways. Samsung has so far introduced four color editions for the devices. Each of the colors represent a different time of the day: Midnight Black is inspired by the night; Titanium Gray symbolizes the liminal time between night and day; Coral Blue mimics the dawn; and Lilac Purple reflects the sunset. We wanted to apply the same theme to the new color edition.\r\n\r\nThe impressive reddish hue of the latest gold edition resembles the light of a rising sun. That’s why we chose the name Sunrise Gold to represent the magical moment when light radiates across the sky when daylight breaks.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Sunrise Gold: The Story behind Galaxy S9’s Latest Color Edition', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-06-19 19:21:19', '2018-06-19 19:21:19', '', 17, 'http://localhost/wordpress/index.php/2018/06/19/17-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-06-19 19:24:20', '2018-06-19 19:24:20', 'When travelling abroad, language can be the greatest barrier to discovery as you try to find your way around. With the <strong>Live Translation</strong> function, Bixby Vision can capture the text it finds in an image and then provide an accurate translation of that text, deciphering words so you can be confident that you know where you are going. You don’t even have to take a photo. Select from 54 input languages and 104 output languages**, and the intelligent assistant will translate the text in real time on the screen.\r\n\r\n<img class=\"alignnone size-medium wp-image-28\" style=\"line-height: 1.5;\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_7-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /><img class=\"alignnone size-medium wp-image-26\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_3_F-300x146.jpg\" alt=\"\" width=\"300\" height=\"146\" />\r\n\r\nHave you ever walked through a public space and seen a monument or landmark that you wanted to know more about? Bixby Vision’s <strong>Place Mode</strong> gives you more information about the places and spaces around you, from local attractions and landmarks to restaurants and facilities. Details about your surrounding area shift as you point the camera in different directions, syncing with your map app so that you can navigate easily to your chosen destinatio<span style=\"line-height: 1.5;\">n.</span>\r\n\r\nIf you point the camera at the sky, Place Mode will generate weather information and a forecast tailored to your location.', 'Guide to the Galaxy #2: See More of the World with Bixby Vision', '', 'publish', 'open', 'open', '', 'guide-to-the-galaxy-2-see-more-of-the-world-with-bixby-vision', '', '', '2018-06-25 02:36:33', '2018-06-25 02:36:33', '', 0, 'http://localhost/wordpress/?p=25', 0, 'post', '', 0),
(26, 1, '2018-06-19 19:22:48', '2018-06-19 19:22:48', '', 'a-guide-to-bixby-vision_main_3_F', '', 'inherit', 'open', 'closed', '', 'a-guide-to-bixby-vision_main_3_f', '', '', '2018-06-19 19:22:48', '2018-06-19 19:22:48', '', 25, 'http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_3_F.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-06-19 19:23:48', '2018-06-19 19:23:48', '', 'a-guide-to-bixby-vision_main_5', '', 'inherit', 'open', 'closed', '', 'a-guide-to-bixby-vision_main_5', '', '', '2018-06-19 19:23:48', '2018-06-19 19:23:48', '', 25, 'http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-06-19 19:24:03', '2018-06-19 19:24:03', '', 'a-guide-to-bixby-vision_main_7', '', 'inherit', 'open', 'closed', '', 'a-guide-to-bixby-vision_main_7', '', '', '2018-06-19 19:24:03', '2018-06-19 19:24:03', '', 25, 'http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-06-19 19:24:20', '2018-06-19 19:24:20', 'When travelling abroad, language can be the greatest barrier to discovery as you try to find your way around. With the <strong>Live Translation</strong> function, Bixby Vision can capture the text it finds in an image and then provide an accurate translation of that text, deciphering words so you can be confident that you know where you are going. You don’t even have to take a photo. Select from 54 input languages and 104 output languages**, and the intelligent assistant will translate the text in real time on the screen.\r\n\r\n<img class=\"alignnone size-medium wp-image-26\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_3_F-300x146.jpg\" alt=\"\" width=\"300\" height=\"146\" />\r\n\r\nHave you ever walked through a public space and seen a monument or landmark that you wanted to know more about? Bixby Vision’s <strong>Place Mode</strong> gives you more information about the places and spaces around you, from local attractions and landmarks to restaurants and facilities. Details about your surrounding area shift as you point the camera in different directions, syncing with your map app so that you can navigate easily to your chosen destination.\r\n\r\nIf you point the camera at the sky, Place Mode will generate weather information and a forecast tailored to your location.\r\n\r\n<img class=\"alignnone size-medium wp-image-28\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_7-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'Guide to the Galaxy #2: See More of the World with Bixby Vision', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-06-19 19:24:20', '2018-06-19 19:24:20', '', 25, 'http://localhost/wordpress/index.php/2018/06/19/25-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-06-19 19:28:15', '2018-06-19 19:28:15', 'Samsung Electronics has officially launched the Galaxy S9 and Galaxy S9+ in markets around the world. The company’s latest flagship smartphones will be available in stores today, March 16, in approximately 70 countries, including Korea, the U.S., Canada, China and all of Europe, and will roll out to over 110 markets by the end of the month.\r\n\r\nThe Galaxy S9 and S9+ introduce an array of innovative features to the Galaxy series, unveiling exciting new ways for users to capture and share special moments, express themselves, and interact with the world around them.\r\n\r\nThe devices’ redesigned cameras feature a Dual Aperture lens that adapts to its environment to snap stunning shots in any light; an innovative Super Slow-mo video function, which allows users to capture everyday moments in epic detail; and new, customizable AR Emojis. Other enhancements include immersive, AKG-tuned stereo speakers, which complement the refined Infinity Display, and deeper integration with Samsung’s intelligence platform, Bixby.', 'Samsung Electronics Officially Launches Galaxy S9 and S9+', '', 'publish', 'open', 'open', '', 'samsung-electronics-officially-launches-galaxy-s9-and-s9', '', '', '2018-06-19 20:20:32', '2018-06-19 20:20:32', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2018-06-19 19:28:06', '2018-06-19 19:28:06', '', 'aaaS9_S9-Press-Release_Main_1 (1)', '', 'inherit', 'open', 'closed', '', 'aaas9_s9-press-release_main_1-1', '', '', '2018-06-19 19:28:06', '2018-06-19 19:28:06', '', 30, 'http://localhost/wordpress/wp-content/uploads/2018/06/aaaS9_S9-Press-Release_Main_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-06-19 19:28:15', '2018-06-19 19:28:15', 'Samsung Electronics has officially launched the Galaxy S9 and Galaxy S9+ in markets around the world. The company’s latest flagship smartphones will be available in stores today, March 16, in approximately 70 countries, including Korea, the U.S., Canada, China and all of Europe, and will roll out to over 110 markets by the end of the month.\r\n\r\nThe Galaxy S9 and S9+ introduce an array of innovative features to the Galaxy series, unveiling exciting new ways for users to capture and share special moments, express themselves, and interact with the world around them.\r\n\r\nThe devices’ redesigned cameras feature a Dual Aperture lens that adapts to its environment to snap stunning shots in any light; an innovative Super Slow-mo video function, which allows users to capture everyday moments in epic detail; and new, customizable AR Emojis. Other enhancements include immersive, AKG-tuned stereo speakers, which complement the refined Infinity Display, and deeper integration with Samsung’s intelligence platform, Bixby.', 'Samsung Electronics Officially Launches Galaxy S9 and S9+', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-06-19 19:28:15', '2018-06-19 19:28:15', '', 30, 'http://localhost/wordpress/index.php/2018/06/19/30-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-06-19 20:19:11', '2018-06-19 20:19:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-19 20:19:11', '2018-06-19 20:19:11', '', 1, 'http://localhost/wordpress/index.php/2018/06/19/1-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-19 20:32:53', '2018-06-19 20:32:53', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-06-25 04:07:10', '2018-06-25 04:07:10', '', 0, 'http://localhost/wordpress/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-06-19 20:32:53', '2018-06-19 20:32:53', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-06-25 04:07:10', '2018-06-25 04:07:10', '', 0, 'http://localhost/wordpress/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2018-06-19 20:32:54', '2018-06-19 20:32:54', '', 'Vk', '', 'publish', 'closed', 'closed', '', 'vk', '', '', '2018-06-25 04:07:10', '2018-06-25 04:07:10', '', 0, 'http://localhost/wordpress/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2018-06-19 20:32:54', '2018-06-19 20:32:54', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-06-25 04:07:10', '2018-06-25 04:07:10', '', 0, 'http://localhost/wordpress/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2018-06-19 20:32:54', '2018-06-19 20:32:54', '', 'YouTube', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2018-06-25 04:07:10', '2018-06-25 04:07:10', '', 0, 'http://localhost/wordpress/?p=39', 5, 'nav_menu_item', '', 0),
(40, 1, '2018-06-19 20:42:17', '2018-06-19 20:42:17', '', 'Insta', '', 'publish', 'closed', 'closed', '', 'insta', '', '', '2018-06-25 04:07:11', '2018-06-25 04:07:11', '', 0, 'http://localhost/wordpress/?p=40', 6, 'nav_menu_item', '', 0),
(41, 1, '2018-06-21 23:11:42', '2018-06-21 23:11:42', '[gallery columns=\"2\" ids=\"49,50,54,56,57,61,62,63,67\"]', 'Photos', '', 'publish', 'closed', 'closed', '', 'photos', '', '', '2018-06-21 23:24:49', '2018-06-21 23:24:49', '', 0, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-06-21 23:11:42', '2018-06-21 23:11:42', '', 'Photos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-21 23:11:42', '2018-06-21 23:11:42', '', 41, 'http://localhost/wordpress/index.php/2018/06/21/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-06-21 23:11:56', '2018-06-21 23:11:56', '<div style=\"display:inline-block;\">\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mMV_LcrZtLg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n</div>\r\n\r\n<div style=\"display:inline-block;\">\r\n\r\n<iframe src=\"https://www.youtube.com/embed/ztcupiJAVew\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n</div>\r\n\r\n', 'Videos', '', 'publish', 'closed', 'closed', '', 'videos', '', '', '2018-06-23 20:04:25', '2018-06-23 20:04:25', '', 0, 'http://localhost/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-06-21 23:11:56', '2018-06-21 23:11:56', '', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-21 23:11:56', '2018-06-21 23:11:56', '', 43, 'http://localhost/wordpress/index.php/2018/06/21/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-06-21 23:12:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-21 23:12:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2018-06-21 23:12:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-21 23:12:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-06-21 23:12:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-21 23:12:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2018-06-21 23:12:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-21 23:12:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2018-06-21 23:15:53', '2018-06-21 23:15:53', '', 'AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018', '', 'inherit', 'open', 'closed', '', 'awesomeamazinggreat-apple-iphone-8-plus-64gb-gsmcdma-unlocked-usa-model-apple-warranty-brand-new-2017-20182018-201920172018', '', '', '2018-06-21 23:15:53', '2018-06-21 23:15:53', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/AwesomeAmazingGreat-Apple-iPhone-8-PLUS-64gb-GSMCDMA-UNLOCKED-USA-Model-Apple-Warranty-BRAND-NEW-2017-20182018-201920172018.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-06-21 23:15:56', '2018-06-21 23:15:56', '', 'DScKUVGW4AAph-G', '', 'inherit', 'open', 'closed', '', 'dsckuvgw4aaph-g', '', '', '2018-06-21 23:15:56', '2018-06-21 23:15:56', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/DScKUVGW4AAph-G.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-06-21 23:16:29', '2018-06-21 23:16:29', '', 'iphone-compare-201709', '', 'inherit', 'open', 'closed', '', 'iphone-compare-201709', '', '', '2018-06-21 23:16:29', '2018-06-21 23:16:29', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/iphone-compare-201709.jpeg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-06-21 23:16:30', '2018-06-21 23:16:30', '', 'iPhone-family-2018', '', 'inherit', 'open', 'closed', '', 'iphone-family-2018', '', '', '2018-06-21 23:16:30', '2018-06-21 23:16:30', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/iPhone-family-2018.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2018-06-21 23:16:39', '2018-06-21 23:16:39', '[gallery columns=\"4\" ids=\"49,50,51,52\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-21 23:16:39', '2018-06-21 23:16:39', '', 41, 'http://localhost/wordpress/index.php/2018/06/21/41-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-06-21 23:19:02', '2018-06-21 23:19:02', '', 'Galaxy-S9-Sunrise-Gold_main_2', '', 'inherit', 'open', 'closed', '', 'galaxy-s9-sunrise-gold_main_2', '', '', '2018-06-21 23:19:02', '2018-06-21 23:19:02', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-06-21 23:19:03', '2018-06-21 23:19:03', '', 'Galaxy-S9-Sunrise-Gold_main_3', '', 'inherit', 'open', 'closed', '', 'galaxy-s9-sunrise-gold_main_3-2', '', '', '2018-06-21 23:19:03', '2018-06-21 23:19:03', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/Galaxy-S9-Sunrise-Gold_main_3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-06-21 23:19:47', '2018-06-21 23:19:47', '', '2-60', '', 'inherit', 'open', 'closed', '', '2-60', '', '', '2018-06-21 23:19:47', '2018-06-21 23:19:47', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/2-60.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(57, 1, '2018-06-21 23:19:48', '2018-06-21 23:19:48', '', '20052518_01_1200', '', 'inherit', 'open', 'closed', '', '20052518_01_1200', '', '', '2018-06-21 23:19:48', '2018-06-21 23:19:48', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/20052518_01_1200.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-06-21 23:19:51', '2018-06-21 23:19:51', '', '373887813_780x439', '', 'inherit', 'open', 'closed', '', '373887813_780x439', '', '', '2018-06-21 23:19:51', '2018-06-21 23:19:51', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/373887813_780x439.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-06-21 23:19:52', '2018-06-21 23:19:52', '', 'a-guide-to-bixby-vision_main_5', '', 'inherit', 'open', 'closed', '', 'a-guide-to-bixby-vision_main_5-2', '', '', '2018-06-21 23:19:52', '2018-06-21 23:19:52', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-06-21 23:20:22', '2018-06-21 23:20:22', '[gallery columns=\"4\" size=\"medium\" ids=\"49,50,51,54,55,56,57,59\" orderby=\"rand\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-21 23:20:22', '2018-06-21 23:20:22', '', 41, 'http://localhost/wordpress/index.php/2018/06/21/41-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-06-21 23:22:34', '2018-06-21 23:22:34', '', '1888', '', 'inherit', 'open', 'closed', '', '1888', '', '', '2018-06-21 23:22:34', '2018-06-21 23:22:34', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/1888.jpeg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-06-21 23:22:34', '2018-06-21 23:22:34', '', '18888', '', 'inherit', 'open', 'closed', '', '18888', '', '', '2018-06-21 23:22:34', '2018-06-21 23:22:34', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/18888.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-06-21 23:22:35', '2018-06-21 23:22:35', '', '19999', '', 'inherit', 'open', 'closed', '', '19999', '', '', '2018-06-21 23:22:35', '2018-06-21 23:22:35', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/19999.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-06-21 23:22:36', '2018-06-21 23:22:36', '', '199999', '', 'inherit', 'open', 'closed', '', '199999', '', '', '2018-06-21 23:22:36', '2018-06-21 23:22:36', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/199999.jpeg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-06-21 23:22:37', '2018-06-21 23:22:37', '', '199999', '', 'inherit', 'open', 'closed', '', '199999-2', '', '', '2018-06-21 23:22:37', '2018-06-21 23:22:37', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/199999.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-06-21 23:22:38', '2018-06-21 23:22:38', '', '1889999', '', 'inherit', 'open', 'closed', '', '1889999', '', '', '2018-06-21 23:22:38', '2018-06-21 23:22:38', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/1889999.jpeg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-06-21 23:22:39', '2018-06-21 23:22:39', '', '1898988', '', 'inherit', 'open', 'closed', '', '1898988', '', '', '2018-06-21 23:22:39', '2018-06-21 23:22:39', '', 41, 'http://localhost/wordpress/wp-content/uploads/2018/06/1898988.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-06-21 23:22:52', '2018-06-21 23:22:52', '[gallery columns=\"4\" size=\"medium\" ids=\"49,50,54,56,57,59,61,62,63,64,65,66,67\" orderby=\"rand\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-21 23:22:52', '2018-06-21 23:22:52', '', 41, 'http://localhost/wordpress/index.php/2018/06/21/41-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-06-21 23:23:37', '2018-06-21 23:23:37', '[gallery columns=\"2\" size=\"medium\" ids=\"49,50,54,56,57,61,62,63,67\" orderby=\"rand\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-21 23:23:37', '2018-06-21 23:23:37', '', 41, 'http://localhost/wordpress/index.php/2018/06/21/41-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-06-21 23:24:11', '2018-06-21 23:24:11', '[gallery columns=\"2\" link=\"file\" ids=\"49,50,54,56,57,61,62,63,67\" orderby=\"rand\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-21 23:24:11', '2018-06-21 23:24:11', '', 41, 'http://localhost/wordpress/index.php/2018/06/21/41-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-06-21 23:24:49', '2018-06-21 23:24:49', '[gallery columns=\"2\" ids=\"49,50,54,56,57,61,62,63,67\"]', 'Photos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-06-21 23:24:49', '2018-06-21 23:24:49', '', 41, 'http://localhost/wordpress/index.php/2018/06/21/41-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-06-21 23:26:01', '2018-06-21 23:26:01', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=72', 7, 'nav_menu_item', '', 0),
(73, 1, '2018-06-21 23:26:01', '2018-06-21 23:26:01', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=73', 6, 'nav_menu_item', '', 0),
(74, 1, '2018-06-23 18:37:51', '2018-06-23 18:37:51', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-06-23 18:37:51', '2018-06-23 18:37:51', '', 0, 'http://localhost/wordpress/index.php/shop/', 0, 'page', '', 0),
(75, 1, '2018-06-23 18:37:51', '2018-06-23 18:37:51', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-06-23 18:37:51', '2018-06-23 18:37:51', '', 0, 'http://localhost/wordpress/index.php/cart/', 0, 'page', '', 0),
(76, 1, '2018-06-23 18:37:51', '2018-06-23 18:37:51', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-06-23 18:37:51', '2018-06-23 18:37:51', '', 0, 'http://localhost/wordpress/index.php/checkout/', 0, 'page', '', 0),
(77, 1, '2018-06-23 18:37:52', '2018-06-23 18:37:52', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-06-23 18:37:52', '2018-06-23 18:37:52', '', 0, 'http://localhost/wordpress/index.php/my-account/', 0, 'page', '', 0),
(78, 1, '2018-06-23 18:52:45', '0000-00-00 00:00:00', 'sss\n\n&nbsp;', '12', '', 'draft', 'open', 'closed', '', '', '', '', '2018-06-23 18:52:45', '2018-06-23 18:52:45', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2018-06-23 19:34:25', '2018-06-23 19:34:25', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-06-23 19:34:25', '2018-06-23 19:34:25', '', 3, 'http://localhost/wordpress/index.php/2018/06/23/3-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-06-23 19:34:32', '2018-06-23 19:34:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-23 19:34:32', '2018-06-23 19:34:32', '', 2, 'http://localhost/wordpress/index.php/2018/06/23/2-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-06-23 20:03:59', '2018-06-23 20:03:59', '<div style=\"display:inline-block;\">\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mMV_LcrZtLg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\n\n<iframe src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\n\n<iframe src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\n\n</div>\n\n<div>\n\n<iframe src=\"https://www.youtube.com/embed/ztcupiJAVew\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\n\n<iframe src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\n\n<iframe src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\n\n</div>\n\n', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-autosave-v1', '', '', '2018-06-23 20:03:59', '2018-06-23 20:03:59', '', 43, 'http://localhost/wordpress/index.php/2018/06/23/43-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2018-06-23 19:42:16', '2018-06-23 19:42:16', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mMV_LcrZtLg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ztcupiJAVew\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-23 19:42:16', '2018-06-23 19:42:16', '', 43, 'http://localhost/wordpress/index.php/2018/06/23/43-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-06-23 19:47:06', '2018-06-23 19:47:06', '<iframe src=\"https://www.youtube.com/embed/mMV_LcrZtLg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/ztcupiJAVew\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-23 19:47:06', '2018-06-23 19:47:06', '', 43, 'http://localhost/wordpress/index.php/2018/06/23/43-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-06-23 19:49:08', '2018-06-23 19:49:08', '<iframe src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/ztcupiJAVew\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-23 19:49:08', '2018-06-23 19:49:08', '', 43, 'http://localhost/wordpress/index.php/2018/06/23/43-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-06-23 19:52:24', '2018-06-23 19:52:24', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mMV_LcrZtLg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/ztcupiJAVew\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-23 19:52:24', '2018-06-23 19:52:24', '', 43, 'http://localhost/wordpress/index.php/2018/06/23/43-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-06-23 19:56:21', '2018-06-23 19:56:21', '<div>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mMV_LcrZtLg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/ztcupiJAVew\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n</div>\r\n\r\n', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-23 19:56:21', '2018-06-23 19:56:21', '', 43, 'http://localhost/wordpress/index.php/2018/06/23/43-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-06-23 20:04:25', '2018-06-23 20:04:25', '<div style=\"display:inline-block;\">\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mMV_LcrZtLg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/5_-NKRVn7IQ\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/MnrJzXM7a6o\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n</div>\r\n\r\n<div style=\"display:inline-block;\">\r\n\r\n<iframe src=\"https://www.youtube.com/embed/ztcupiJAVew\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/8GdA4z9G4Qg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n<iframe src=\"https://www.youtube.com/embed/wWKqfVzNhPw\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\r\n\r\n</div>\r\n\r\n', 'Videos', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-06-23 20:04:25', '2018-06-23 20:04:25', '', 43, 'http://localhost/wordpress/index.php/2018/06/23/43-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-06-23 20:49:44', '2018-06-23 20:49:44', '<div>[smartslider3 slider=2]</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-23 20:49:44', '2018-06-23 20:49:44', '', 11, 'http://localhost/wordpress/index.php/2018/06/23/11-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-06-23 20:53:13', '2018-06-23 20:53:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-23 20:53:13', '2018-06-23 20:53:13', '', 11, 'http://localhost/wordpress/index.php/2018/06/23/11-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-06-23 20:59:55', '2018-06-23 20:59:55', '<div>[smartslider3 slider=2]</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-23 20:59:55', '2018-06-23 20:59:55', '', 11, 'http://localhost/wordpress/index.php/2018/06/23/11-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-06-23 21:05:56', '2018-06-23 21:05:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-23 21:05:56', '2018-06-23 21:05:56', '', 11, 'http://localhost/wordpress/index.php/2018/06/23/11-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-06-23 21:06:13', '2018-06-23 21:06:13', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-06-25 02:31:22', '2018-06-25 02:31:22', '', 0, 'http://localhost/wordpress/?post_type=ml-slider&#038;p=92', 0, 'ml-slider', '', 0),
(93, 1, '2018-06-23 21:06:49', '2018-06-23 21:06:49', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image__trashed', '', '', '2018-06-25 02:20:40', '2018-06-25 02:20:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=93', 0, 'ml-slide', '', 0),
(94, 1, '2018-06-23 21:06:49', '2018-06-23 21:06:49', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-2__trashed', '', '', '2018-06-25 02:20:40', '2018-06-25 02:20:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=94', 1, 'ml-slide', '', 0),
(95, 1, '2018-06-23 21:07:27', '2018-06-23 21:07:27', '[metaslider id=92]', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-23 21:07:27', '2018-06-23 21:07:27', '', 11, 'http://localhost/wordpress/index.php/2018/06/23/11-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-06-23 21:08:19', '2018-06-23 21:08:19', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-3__trashed', '', '', '2018-06-25 02:20:40', '2018-06-25 02:20:40', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=96', 2, 'ml-slide', '', 0),
(97, 1, '2018-06-23 21:08:20', '2018-06-23 21:08:20', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-4__trashed', '', '', '2018-06-25 02:20:41', '2018-06-25 02:20:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=97', 3, 'ml-slide', '', 0),
(98, 1, '2018-06-23 21:08:20', '2018-06-23 21:08:20', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-5__trashed', '', '', '2018-06-25 02:20:41', '2018-06-25 02:20:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=98', 4, 'ml-slide', '', 0),
(99, 1, '2018-06-23 21:08:20', '2018-06-23 21:08:20', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-6__trashed', '', '', '2018-06-25 02:20:41', '2018-06-25 02:20:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=99', 5, 'ml-slide', '', 0),
(100, 1, '2018-06-23 21:08:20', '2018-06-23 21:08:20', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-7__trashed', '', '', '2018-06-25 02:20:41', '2018-06-25 02:20:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=100', 6, 'ml-slide', '', 0),
(101, 1, '2018-06-23 21:08:20', '2018-06-23 21:08:20', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-8__trashed', '', '', '2018-06-25 02:20:41', '2018-06-25 02:20:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=101', 7, 'ml-slide', '', 0),
(102, 1, '2018-06-23 21:08:21', '2018-06-23 21:08:21', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-9__trashed', '', '', '2018-06-25 02:20:41', '2018-06-25 02:20:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=102', 8, 'ml-slide', '', 0),
(103, 1, '2018-06-23 21:08:21', '2018-06-23 21:08:21', '', 'Slider 92 - image', '', 'trash', 'closed', 'closed', '', 'slider-92-image-10__trashed', '', '', '2018-06-25 02:20:41', '2018-06-25 02:20:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=103', 9, 'ml-slide', '', 0),
(104, 1, '2018-06-23 21:11:23', '2018-06-23 21:11:23', '[metaslider id=92]\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-23 21:11:23', '2018-06-23 21:11:23', '', 11, 'http://localhost/wordpress/index.php/2018/06/23/11-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-06-23 21:13:07', '2018-06-23 21:13:07', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n[gallery ids=\"58,26,20\"]', 'About', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-23 21:13:07', '2018-06-23 21:13:07', '', 5, 'http://localhost/wordpress/index.php/2018/06/23/5-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-06-23 21:15:11', '2018-06-23 21:15:11', '<strong>Email :</strong> narek.ghazaryan.g@tumo.rog\n\n<strong>Phone :  </strong>+3', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2018-06-23 21:15:11', '2018-06-23 21:15:11', '', 9, 'http://localhost/wordpress/index.php/2018/06/23/9-autosave-v1/', 0, 'revision', '', 0),
(107, 1, '2018-06-23 21:15:59', '2018-06-23 21:15:59', '<strong>Email :</strong> narek.ghazaryan.g@tumo.rog\r\n\r\n<strong>Phone :  </strong>+37477464241\r\n\r\n<strong>Address :</strong> Gyumri , Shirak Armenia\r\n\r\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-23 21:15:59', '2018-06-23 21:15:59', '', 9, 'http://localhost/wordpress/index.php/2018/06/23/9-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-06-23 21:19:00', '2018-06-23 21:19:00', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nMy Store \"[your-subject]\"\n[your-name] <narek.ghazaryan.g@tumo.rog>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on My Store (http://localhost/wordpress)\nnarek.ghazaryan.g@tumo.rog\nReply-To: [your-email]\n\n0\n0\n\nMy Store \"[your-subject]\"\nMy Store <narek.ghazaryan.g@tumo.rog>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on My Store (http://localhost/wordpress)\n[your-email]\nReply-To: narek.ghazaryan.g@tumo.rog\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-06-23 21:19:00', '2018-06-23 21:19:00', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=108', 0, 'wpcf7_contact_form', '', 0),
(109, 1, '2018-06-23 21:20:35', '2018-06-23 21:20:35', '<strong>Email :</strong> narek.ghazaryan.g@tumo.rog\r\n\r\n<strong>Phone :  </strong>+37477464241\r\n\r\n<strong>Address :</strong> Gyumri , Shirak Armenia\r\n\r\n[contact-form-7 id=\"108\" title=\"Contact form 1\"]\r\n\r\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-23 21:20:35', '2018-06-23 21:20:35', '', 9, 'http://localhost/wordpress/index.php/2018/06/23/9-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-06-23 21:23:32', '2018-06-23 21:23:32', '<strong>Email :</strong> narek.ghazaryan.g@tumo.rog\r\n\r\n<strong>Phone :  </strong>+37477464241\r\n\r\n<strong>Address :</strong> Gyumri , Shirak Armenia\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"108\" title=\"Contact form 1\"]\r\n\r\n&nbsp;\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d96671.55041399132!2d43.770193739503114!3d40.784323022357704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4041fb8b9b34fc9f%3A0x4f4bed0e45f99102!2sGyumri%2C+Armenia!5e0!3m2!1sen!2s!4v1529788976751\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-23 21:23:32', '2018-06-23 21:23:32', '', 9, 'http://localhost/wordpress/index.php/2018/06/23/9-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-06-23 23:04:12', '2018-06-23 23:04:12', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=111', 10, 'nav_menu_item', '', 0),
(112, 1, '2018-06-23 23:04:12', '2018-06-23 23:04:12', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=112', 8, 'nav_menu_item', '', 0),
(113, 1, '2018-06-23 23:04:12', '2018-06-23 23:04:12', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=113', 9, 'nav_menu_item', '', 0),
(114, 1, '2018-06-23 23:04:12', '2018-06-23 23:04:12', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2018-06-25 04:07:23', '2018-06-25 04:07:23', '', 0, 'http://localhost/wordpress/?p=114', 2, 'nav_menu_item', '', 0),
(117, 1, '2018-06-25 01:02:42', '2018-06-25 01:02:42', '', 'Samsung Galaxy S8 (Gold)', '<div class=\"dlabel\">Օպերատիվ հիշողություն ` 4 GB</div>\r\n<div class=\"dlabel\">Հայտարարության տարին ` 2017</div>\r\n<div class=\"dlabel\">Էկրանի բանաձևը ` 2560x1440</div>\r\n<div class=\"dlabel\">Էկրանի չափսը ` 5.8 inch</div>\r\n<div class=\"dlabel\"></div>\r\n<div class=\"value\"></div>', 'publish', 'open', 'closed', '', 'samsung-galaxy-s8-gold', '', '', '2018-06-25 01:02:43', '2018-06-25 01:02:43', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=117', 0, 'product', '', 0),
(118, 1, '2018-06-25 01:01:30', '2018-06-25 01:01:30', '', 'samsung_s81', '', 'inherit', 'open', 'closed', '', 'samsung_s81', '', '', '2018-06-25 01:01:30', '2018-06-25 01:01:30', '', 117, 'http://localhost/wordpress/wp-content/uploads/2018/06/samsung_s81.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2018-06-25 01:01:53', '2018-06-25 01:01:53', '', 'sasmsungs82', '', 'inherit', 'open', 'closed', '', 'sasmsungs82', '', '', '2018-06-25 01:01:53', '2018-06-25 01:01:53', '', 117, 'http://localhost/wordpress/wp-content/uploads/2018/06/sasmsungs82.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2018-06-25 01:02:18', '2018-06-25 01:02:18', '', '5c34b3135a672f98dbd3s8-gold-2', '', 'inherit', 'open', 'closed', '', '5c34b3135a672f98dbd3s8-gold-2', '', '', '2018-06-25 01:02:18', '2018-06-25 01:02:18', '', 117, 'http://localhost/wordpress/wp-content/uploads/2018/06/5c34b3135a672f98dbd3s8-gold-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2018-06-25 01:08:09', '2018-06-25 01:08:09', '<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Ընդհանուր բնութագրեր</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Մոդել</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">iPhone X</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հայտարարության տարին</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">2017</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Օպերացիոն համակարգ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">iOS</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Էկրան</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Էկրանի տեսակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Super Retina HD display, all-screen OLED Multi-Touch, HDR display</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Էկրանի բանաձևը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">2436x1125</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Էկրանի չափսը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">5.8 inch</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Տեսախցիկներ</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Դիմային տեսախցիկ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">7 MP</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հիմնական տեսախցիկ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">12 MP + 12MP</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Հիշողություն և Պրոցեսոր</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Պրոցեսորների միջուկների քանակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">6</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Պրոցեսոր</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">A11 Bionic Embedded M11 motion coprocessor</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Օպերատիվ հիշողություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">3 GB</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հիշողության քարտի բնիկը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Ոչ</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հիշողություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">256 GB</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Ցանց</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Ստանդարտ Ցանց</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">GSM 850 / 900 / 1800 / 1900</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Ինտերնետի հասանելիություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">GPRS, EDGE</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">4G LTE Ցանցի տիրույթ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">LTE (Bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 28, 29, 30, 66)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">GPS</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Bluetooth</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">WiFi Ցանց</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">3G Ցանց</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">NFC</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">4G LTE Ցանց</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Սնուցում</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Լիցքավորման բնիկի տեսակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Lightning connector</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Զրույցի ժամանակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Up to 21 h (3G)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Մարտկոցի տեսակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Li-Ion</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Մարտկոցի հզորությունը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">2716 mAh</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Այլ</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Կշիռ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">174 g (6.14 oz)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հաստություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">7.7 mm (0.30 in)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Երկարություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">143.6 mm (5.65 in)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Լայնությունը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">70.9 mm (2.79 in)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Աուդիո</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">AAC-LC, HE-AAC, HE-AAC v2, Protected AAC, MP3, Linear PCM, Apple Lossless, FLAC, Dolby Digital (AC-3), Dolby Digital Plus (E-AC-3), and Audible (formats 2, 3, 4, Audible Enhanced Audio, AAX, and AAX+)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">SIM քարտի քանակ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">1 SIM</div>\r\n</div>', 'Apple iPhone X 256GB (Space Grey)', '<div class=\"short-descr\">\r\n<div class=\"dlabel\">Օպերատիվ հիշողություն ` 3 GB</div>\r\n<div class=\"dlabel\">Հիշողություն ` <a class=\"tag\" href=\"https://www.mobilecentre.am/product/apple--iphone-x-256gb-_spase-grey_/54/\">256 GB</a><a class=\"tag\" href=\"https://www.mobilecentre.am/product/apple--iphone-x-256gb-_spase-grey_/56/\">64 GB</a></div>\r\n<div class=\"dlabel\">Հայտարարության տարին ` 2017</div>\r\n<div class=\"dlabel\">Էկրանի բանաձևը ` 2436x1125</div>\r\n<div class=\"dlabel\">Էկրանի չափսը ` 5.8 inch</div>\r\n<div class=\"dlabel\"></div>\r\n<div class=\"value\"></div>\r\n<div class=\"clearfix\"></div>\r\n</div>\r\n<div class=\"clearfix\"></div>', 'publish', 'open', 'closed', '', 'apple-iphone-x-256gb-space-grey', '', '', '2018-06-25 01:08:11', '2018-06-25 01:08:11', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2018-06-25 01:08:02', '2018-06-25 01:08:02', '', '0bf41c1d33fb80d1d34cX-1', '', 'inherit', 'open', 'closed', '', '0bf41c1d33fb80d1d34cx-1', '', '', '2018-06-25 01:08:02', '2018-06-25 01:08:02', '', 122, 'http://localhost/wordpress/wp-content/uploads/2018/06/0bf41c1d33fb80d1d34cX-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2018-06-25 01:11:36', '2018-06-25 01:11:36', '<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Ընդհանուր բնութագրեր</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Մոդել</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Samsung G955</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հայտարարության տարին</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">2017</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Օպերացիոն համակարգ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Android</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Էկրան</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Էկրանի տեսակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Super AMOLED capacitive touchscreen, 16M colors</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Էկրանի բանաձևը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">2560x1440</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Էկրանի չափսը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">6.2 inch</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Տեսախցիկներ</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Դիմային տեսախցիկ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">8 MP</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հիմնական տեսախցիկ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">12 MP</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Հիշողություն և Պրոցեսոր</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Պրոցեսոր</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Octa-core (4x2.3 GHz &amp; 4x1.7 GHz) - EMEA</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Օպերատիվ հիշողություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">4 GB</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հիշողության քարտի բնիկը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հիշողություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">64 GB</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Ցանց</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Ինտերնետի հասանելիություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">GPRS, EDGE</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">4G LTE Ցանցի տիրույթ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 17(700), 20(800), 28(700)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">GPS</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Bluetooth</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">WiFi Ցանց</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">3G Ցանց</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">NFC</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">4G LTE Ցանց</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Այո</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Սնուցում</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Լիցքավորման բնիկի տեսակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">3.1, Type-C 1.0 reversible connector</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Սպասման ժամանակ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Endurance rating 88h</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Մարտկոցի տեսակը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Non-removable Li-Ion</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Մարտկոցի հզորությունը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">3000 mAh</div>\r\n</div>\r\n<div class=\"row block-item\">\r\n<div class=\"col-lg-12 col-md-12 col-sm-12 block-title\">Այլ</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Կշիռ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">173 g (6.10 oz)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Հաստություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">8.1 mm (0.32 in)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Երկարություն</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">159.5 mm (6.28 in)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Լայնությունը</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">73.4 mm (2.89 in)</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">Աուդիո</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">Vibration; MP3, WAV ringtones</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-6 col-xs-6\">SIM քարտի քանակ</div>\r\n<div class=\"col-lg-9 col-md-9 col-sm-6 col-xs-6\">2 SIM</div>\r\n</div>', 'Samsung Galaxy S8+ (Orchid Grey)', '<div class=\"dlabel\">Օպերատիվ հիշողություն ` 4 GB</div>\r\n<div class=\"dlabel\">Հայտարարության տարին ` 2017</div>\r\n<div class=\"dlabel\">Էկրանի բանաձևը ` 2560x1440</div>\r\n<div class=\"dlabel\">Էկրանի չափսը ` 6.2 inch</div>\r\n<div class=\"dlabel\"></div>', 'publish', 'open', 'closed', '', 'samsung-galaxy-s8-orchid-grey', '', '', '2018-06-25 01:11:37', '2018-06-25 01:11:37', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=124', 0, 'product', '', 0),
(125, 1, '2018-06-25 01:11:01', '2018-06-25 01:11:01', '', 's8+', '', 'inherit', 'open', 'closed', '', 's8', '', '', '2018-06-25 01:11:01', '2018-06-25 01:11:01', '', 124, 'http://localhost/wordpress/wp-content/uploads/2018/06/s8.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-06-25 01:11:16', '2018-06-25 01:11:16', '', 's8+2', '', 'inherit', 'open', 'closed', '', 's82', '', '', '2018-06-25 01:11:16', '2018-06-25 01:11:16', '', 124, 'http://localhost/wordpress/wp-content/uploads/2018/06/s82.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2018-06-25 01:11:26', '2018-06-25 01:11:26', '', 's8+3', '', 'inherit', 'open', 'closed', '', 's83', '', '', '2018-06-25 01:11:26', '2018-06-25 01:11:26', '', 124, 'http://localhost/wordpress/wp-content/uploads/2018/06/s83.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-06-25 01:15:37', '2018-06-25 01:15:37', '', 'Apple iPhone 6 32GB (Spase Gray)', '<div class=\"dlabel\">Օպերատիվ հիշողություն ` 1 GB</div>\r\n<div class=\"dlabel\">Հայտարարության տարին ` 2014</div>\r\n<div class=\"dlabel\">Էկրանի բանաձևը ` 1334x750</div>\r\n<div class=\"dlabel\">Էկրանի չափսը ` 4.7 դյույմ</div>\r\n<div class=\"dlabel\"></div>', 'publish', 'open', 'closed', '', 'apple-iphone-6-32gb-spase-gray', '', '', '2018-06-25 01:15:38', '2018-06-25 01:15:38', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2018-06-25 01:14:37', '2018-06-25 01:14:37', '', 'ip6', '', 'inherit', 'open', 'closed', '', 'ip6', '', '', '2018-06-25 01:14:37', '2018-06-25 01:14:37', '', 128, 'http://localhost/wordpress/wp-content/uploads/2018/06/ip6.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(130, 1, '2018-06-25 01:19:44', '2018-06-25 01:19:44', '', 'Apple iPhone 8 Plus 64GB (Spase Grey)', '<div class=\"dlabel\">Օպերատիվ հիշողություն</div>\r\n<div class=\"value\" title=\"106\">3 GB</div>\r\n<div class=\"dlabel\">Հիշողություն</div>\r\n<div class=\"value\"><a class=\"tag\" href=\"https://www.mobilecentre.am/product/apple-iphone-x-64gb-_spase-grey_/56/\">64 GB</a><a class=\"tag\" href=\"https://www.mobilecentre.am/product/apple-iphone-x-64gb-_spase-grey_/54/\">256 GB</a></div>\r\n<div class=\"dlabel\">Հայտարարության տարին</div>\r\n<div class=\"value\" title=\"103\">2017</div>\r\n<div class=\"dlabel\">Էկրանի բանաձևը</div>\r\n<div class=\"value\" title=\"98\">2436x1125</div>\r\n<div class=\"dlabel\">Էկրանի չափսը</div>\r\n<div class=\"value\" title=\"97\">5.8 inch</div>\r\n<div class=\"dlabel\">*</div>', 'publish', 'open', 'closed', '', 'apple-iphone-8-plus-64gb-spase-grey', '', '', '2018-06-25 01:19:45', '2018-06-25 01:19:45', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=130', 0, 'product', '', 0),
(131, 1, '2018-06-25 01:17:35', '2018-06-25 01:17:35', '', 'ip8', '', 'inherit', 'open', 'closed', '', 'ip8', '', '', '2018-06-25 01:17:35', '2018-06-25 01:17:35', '', 130, 'http://localhost/wordpress/wp-content/uploads/2018/06/ip8.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-06-25 01:17:53', '2018-06-25 01:17:53', '', 'ip82', '', 'inherit', 'open', 'closed', '', 'ip82', '', '', '2018-06-25 01:17:53', '2018-06-25 01:17:53', '', 130, 'http://localhost/wordpress/wp-content/uploads/2018/06/ip82.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-06-25 01:18:08', '2018-06-25 01:18:08', '', 'ip83', '', 'inherit', 'open', 'closed', '', 'ip83', '', '', '2018-06-25 01:18:08', '2018-06-25 01:18:08', '', 130, 'http://localhost/wordpress/wp-content/uploads/2018/06/ip83.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2018-06-25 01:33:57', '2018-06-25 01:33:57', 'Fiberman Store\'s Official Presentator in Armenia - YoungNaccat\n\nFiberman\'s Store retail chain is the largest mobile phone sales network in Armenia.Fiberman\'s Store has been operating since 2006. Thanks to its honest and high-quality services, the company quickly gained customers\' confidence and expanded its geography in a short period of time.Fiberman\'s Store represents specialized stores in Yerevan and all regions.\n\nThe slogan ofFiberman\'s Store is \"Only the Best\" and, being faithful to that slogan, the company cooperates with world-class brands such as Samsung, Nokia, Apple, Lenovo, Motorola, HTC, Sony, Micromax, CellularLine, Celly, Hama , MyKronoz , SBS, Panzer Glass , Ksix, Canyon , ACME, Remax , Devia , Beper, Tescoma and more. Being an official distributor of these companies in Armenia, Mobile Centre offers only high quality products to customers and gives one year\'s official guarantee from the manufacturer. The company offers to customers not only mobile phones, but also many types of appliances- TVs, tablets, etc. The company\'s stores are working for 7 days a week, the company cooperates with almost all the leading banks in Armenia, loans are given in store which make customers\' shopping comfortable, fast and profitable. The company also includes a specialized service center that provides both warranty and post-warranty service for the equipment acquired in the Fiberman\'s Storenetwork. Despite the vast amount of high quality products available, thanks to its policy, the company is growing and expanding day by day presenting to customers with a wider and more modern range of equipment.\n\n[gallery ids=\"58,20,50\"]', 'About Us', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-06-25 01:33:57', '2018-06-25 01:33:57', '', 5, 'http://localhost/wordpress/index.php/2018/06/25/5-autosave-v1/', 0, 'revision', '', 0),
(135, 1, '2018-06-25 01:23:21', '2018-06-25 01:23:21', 'Fiberman\'s Store retail chain is the largest mobile phone sales network in Armenia.Fiberman\'s Store has been operating since 2006. Thanks to its honest and high-quality services, the company quickly gained customers\' confidence and expanded its geography in a short period of time.Fiberman\'s Store represents specialized stores in Yerevan and all regions.\r\n\r\nThe slogan ofFiberman\'s Store is \"Only the Best\" and, being faithful to that slogan, the company cooperates with world-class brands such as Samsung, Nokia, Apple, Lenovo, Motorola, HTC, Sony, Micromax, CellularLine, Celly, Hama , MyKronoz , SBS, Panzer Glass , Ksix, Canyon , ACME, Remax , Devia , Beper, Tescoma and more. Being an official distributor of these companies in Armenia, Mobile Centre offers only high quality products to customers and gives one year\'s official guarantee from the manufacturer. The company offers to customers not only mobile phones, but also many types of appliances- TVs, tablets, etc. The company\'s stores are working for 7 days a week, the company cooperates with almost all the leading banks in Armenia, loans are given in store which make customers\' shopping comfortable, fast and profitable. The company also includes a specialized service center that provides both warranty and post-warranty service for the equipment acquired in the Fiberman\'s Storenetwork. Despite the vast amount of high quality products available, thanks to its policy, the company is growing and expanding day by day presenting to customers with a wider and more modern range of equipment.\r\n\r\n[gallery ids=\"58,26,20\"]', 'About', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-25 01:23:21', '2018-06-25 01:23:21', '', 5, 'http://localhost/wordpress/index.php/2018/06/25/5-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-06-25 01:25:48', '2018-06-25 01:25:48', '', 'young-logo', '', 'inherit', 'open', 'closed', '', 'young-logo', '', '', '2018-06-25 01:25:48', '2018-06-25 01:25:48', '', 5, 'http://localhost/wordpress/wp-content/uploads/2018/06/young-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2018-06-25 01:26:42', '2018-06-25 01:26:42', 'Fiberman\'s Store retail chain is the largest mobile phone sales network in Armenia.Fiberman\'s Store has been operating since 2006. Thanks to its honest and high-quality services, the company quickly gained customers\' confidence and expanded its geography in a short period of time.Fiberman\'s Store represents specialized stores in Yerevan and all regions.\r\n\r\nThe slogan ofFiberman\'s Store is \"Only the Best\" and, being faithful to that slogan, the company cooperates with world-class brands such as Samsung, Nokia, Apple, Lenovo, Motorola, HTC, Sony, Micromax, CellularLine, Celly, Hama , MyKronoz , SBS, Panzer Glass , Ksix, Canyon , ACME, Remax , Devia , Beper, Tescoma and more. Being an official distributor of these companies in Armenia, Mobile Centre offers only high quality products to customers and gives one year\'s official guarantee from the manufacturer. The company offers to customers not only mobile phones, but also many types of appliances- TVs, tablets, etc. The company\'s stores are working for 7 days a week, the company cooperates with almost all the leading banks in Armenia, loans are given in store which make customers\' shopping comfortable, fast and profitable. The company also includes a specialized service center that provides both warranty and post-warranty service for the equipment acquired in the Fiberman\'s Storenetwork. Despite the vast amount of high quality products available, thanks to its policy, the company is growing and expanding day by day presenting to customers with a wider and more modern range of equipment.\r\n\r\n[gallery ids=\"58,20,50\"]', 'About Us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-25 01:26:42', '2018-06-25 01:26:42', '', 5, 'http://localhost/wordpress/index.php/2018/06/25/5-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-06-25 01:34:47', '2018-06-25 01:34:47', 'Fiberman Store\'s Official Presentator in Armenia - youngStores\r\n\r\nFiberman\'s Store retail chain is the largest mobile phone sales network in Armenia.Fiberman\'s Store has been operating since 2006. Thanks to its honest and high-quality services, the company quickly gained customers\' confidence and expanded its geography in a short period of time.Fiberman\'s Store represents specialized stores in Yerevan and all regions.\r\n\r\nThe slogan ofFiberman\'s Store is \"Only the Best\" and, being faithful to that slogan, the company cooperates with world-class brands such as Samsung, Nokia, Apple, Lenovo, Motorola, HTC, Sony, Micromax, CellularLine, Celly, Hama , MyKronoz , SBS, Panzer Glass , Ksix, Canyon , ACME, Remax , Devia , Beper, Tescoma and more. Being an official distributor of these companies in Armenia, Mobile Centre offers only high quality products to customers and gives one year\'s official guarantee from the manufacturer. The company offers to customers not only mobile phones, but also many types of appliances- TVs, tablets, etc. The company\'s stores are working for 7 days a week, the company cooperates with almost all the leading banks in Armenia, loans are given in store which make customers\' shopping comfortable, fast and profitable. The company also includes a specialized service center that provides both warranty and post-warranty service for the equipment acquired in the Fiberman\'s Storenetwork. Despite the vast amount of high quality products available, thanks to its policy, the company is growing and expanding day by day presenting to customers with a wider and more modern range of equipment.\r\n\r\n[gallery ids=\"58,20,50\"]', 'About Us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-25 01:34:47', '2018-06-25 01:34:47', '', 5, 'http://localhost/wordpress/index.php/2018/06/25/5-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-06-25 02:16:28', '2018-06-25 02:16:28', '', 'slide111', '', 'inherit', 'open', 'closed', '', 'slide111', '', '', '2018-06-25 02:16:28', '2018-06-25 02:16:28', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide111.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-06-25 02:16:38', '2018-06-25 02:16:38', '', 'slide112', '', 'inherit', 'open', 'closed', '', 'slide112', '', '', '2018-06-25 02:16:38', '2018-06-25 02:16:38', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide112.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2018-06-25 02:16:41', '2018-06-25 02:16:41', '', 'slide113', '', 'inherit', 'open', 'closed', '', 'slide113', '', '', '2018-06-25 02:16:41', '2018-06-25 02:16:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide113.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-06-25 02:16:45', '2018-06-25 02:16:45', '', 'slide114', '', 'inherit', 'open', 'closed', '', 'slide114', '', '', '2018-06-25 02:16:45', '2018-06-25 02:16:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide114.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2018-06-25 02:16:51', '2018-06-25 02:16:51', '', 'slide115', '', 'inherit', 'open', 'closed', '', 'slide115', '', '', '2018-06-25 02:16:51', '2018-06-25 02:16:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide115.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2018-06-25 02:16:59', '2018-06-25 02:16:59', '', 'slide119', '', 'inherit', 'open', 'closed', '', 'slide119', '', '', '2018-06-25 02:16:59', '2018-06-25 02:16:59', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide119.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-06-25 02:17:03', '2018-06-25 02:17:03', '', 'slide120', '', 'inherit', 'open', 'closed', '', 'slide120', '', '', '2018-06-25 02:17:03', '2018-06-25 02:17:03', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide120.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-06-25 02:17:10', '2018-06-25 02:17:10', '', 'slide121', '', 'inherit', 'open', 'closed', '', 'slide121', '', '', '2018-06-25 02:17:10', '2018-06-25 02:17:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide121.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-06-25 02:17:16', '2018-06-25 02:17:16', '', 'slide1124', '', 'inherit', 'open', 'closed', '', 'slide1124', '', '', '2018-06-25 02:17:16', '2018-06-25 02:17:16', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide1124.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-06-25 02:17:23', '2018-06-25 02:17:23', '', 'slide1211', '', 'inherit', 'open', 'closed', '', 'slide1211', '', '', '2018-06-25 02:17:23', '2018-06-25 02:17:23', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide1211.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-06-25 02:17:29', '2018-06-25 02:17:29', '', 'slide11223', '', 'inherit', 'open', 'closed', '', 'slide11223', '', '', '2018-06-25 02:17:29', '2018-06-25 02:17:29', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/slide11223.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2018-06-25 02:17:37', '2018-06-25 02:17:37', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image', '', '', '2018-06-25 02:31:22', '2018-06-25 02:31:22', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=150', 0, 'ml-slide', '', 0),
(151, 1, '2018-06-25 02:17:38', '2018-06-25 02:17:38', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-2', '', '', '2018-06-25 02:31:22', '2018-06-25 02:31:22', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=151', 1, 'ml-slide', '', 0),
(152, 1, '2018-06-25 02:17:38', '2018-06-25 02:17:38', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-3', '', '', '2018-06-25 02:31:22', '2018-06-25 02:31:22', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=152', 2, 'ml-slide', '', 0),
(153, 1, '2018-06-25 02:17:39', '2018-06-25 02:17:39', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-4', '', '', '2018-06-25 02:31:22', '2018-06-25 02:31:22', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=153', 3, 'ml-slide', '', 0),
(154, 1, '2018-06-25 02:17:40', '2018-06-25 02:17:40', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-5', '', '', '2018-06-25 02:31:23', '2018-06-25 02:31:23', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=154', 4, 'ml-slide', '', 0),
(155, 1, '2018-06-25 02:17:41', '2018-06-25 02:17:41', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-6', '', '', '2018-06-25 02:31:23', '2018-06-25 02:31:23', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=155', 5, 'ml-slide', '', 0),
(156, 1, '2018-06-25 02:17:41', '2018-06-25 02:17:41', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-7', '', '', '2018-06-25 02:31:23', '2018-06-25 02:31:23', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=156', 6, 'ml-slide', '', 0),
(157, 1, '2018-06-25 02:17:41', '2018-06-25 02:17:41', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-8', '', '', '2018-06-25 02:31:23', '2018-06-25 02:31:23', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=157', 7, 'ml-slide', '', 0),
(158, 1, '2018-06-25 02:17:41', '2018-06-25 02:17:41', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-9', '', '', '2018-06-25 02:31:23', '2018-06-25 02:31:23', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=158', 8, 'ml-slide', '', 0),
(159, 1, '2018-06-25 02:17:41', '2018-06-25 02:17:41', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-10', '', '', '2018-06-25 02:31:23', '2018-06-25 02:31:23', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=159', 9, 'ml-slide', '', 0),
(160, 1, '2018-06-25 02:17:42', '2018-06-25 02:17:42', '', 'Slider 92 - image', '', 'publish', 'closed', 'closed', '', 'slider-92-image-11', '', '', '2018-06-25 02:31:23', '2018-06-25 02:31:23', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=160', 10, 'ml-slide', '', 0),
(161, 1, '2018-06-25 02:36:33', '2018-06-25 02:36:33', 'When travelling abroad, language can be the greatest barrier to discovery as you try to find your way around. With the <strong>Live Translation</strong> function, Bixby Vision can capture the text it finds in an image and then provide an accurate translation of that text, deciphering words so you can be confident that you know where you are going. You don’t even have to take a photo. Select from 54 input languages and 104 output languages**, and the intelligent assistant will translate the text in real time on the screen.\r\n\r\n<img class=\"alignnone size-medium wp-image-28\" style=\"line-height: 1.5;\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_7-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /><img class=\"alignnone size-medium wp-image-26\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/a-guide-to-bixby-vision_main_3_F-300x146.jpg\" alt=\"\" width=\"300\" height=\"146\" />\r\n\r\nHave you ever walked through a public space and seen a monument or landmark that you wanted to know more about? Bixby Vision’s <strong>Place Mode</strong> gives you more information about the places and spaces around you, from local attractions and landmarks to restaurants and facilities. Details about your surrounding area shift as you point the camera in different directions, syncing with your map app so that you can navigate easily to your chosen destinatio<span style=\"line-height: 1.5;\">n.</span>\r\n\r\nIf you point the camera at the sky, Place Mode will generate weather information and a forecast tailored to your location.', 'Guide to the Galaxy #2: See More of the World with Bixby Vision', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-06-25 02:36:33', '2018-06-25 02:36:33', '', 25, 'http://localhost/wordpress/index.php/2018/06/25/25-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-06-25 04:12:35', '2018-06-25 04:12:35', '[metaslider id=92]\n\n<b>Fiberman\'s Online Web Store  Presenting and Selling Models of Mobile Brands : Apple , Samsung , LG , Htc , Honor , Nokia , Xiaomi , BlackBerry , etc.</b>\n\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2018-06-25 04:12:35', '2018-06-25 04:12:35', '', 11, 'http://localhost/wordpress/index.php/2018/06/25/11-autosave-v1/', 0, 'revision', '', 0),
(163, 1, '2018-06-25 04:11:25', '2018-06-25 04:11:25', '[metaslider id=92]\r\n\r\n<b>Fiberman\'s Online Web Store  Presenting Mobile Brands : Apple , Samsung , LG , Htc , Honor , Nokia , Xiaomi , BlackBerry , etc.</b>\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-25 04:11:25', '2018-06-25 04:11:25', '', 11, 'http://localhost/wordpress/index.php/2018/06/25/11-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2018-06-25 04:13:24', '2018-06-25 04:13:24', '[metaslider id=92]\r\n\r\n<b>Fiberman\'s Online Web Store  Presenting and Selling Models of Mobile Brands : Apple , Samsung , Sony , LG , Htc , Lenovo ,BQ , Motorolla , Micromax , Honor , Nokia , Xiaomi , BlackBerry , etc.</b>\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-25 04:13:24', '2018-06-25 04:13:24', '', 11, 'http://localhost/wordpress/index.php/2018/06/25/11-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2018-06-27 11:56:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-27 11:56:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=165', 0, 'post', '', 0),
(166, 1, '2018-06-27 11:56:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-27 11:56:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=166', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_photo_slider_instal`
--

CREATE TABLE `wp_rich_web_photo_slider_instal` (
  `id` int(10) UNSIGNED NOT NULL,
  `SL_Img_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_NewTab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_photo_slider_manager`
--

CREATE TABLE `wp_rich_web_photo_slider_manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_IMGS_Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect1`
--

CREATE TABLE `wp_rich_web_slider_effect1` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlSS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_PoH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TUp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHEff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBoxW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArPFT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect1`
--

INSERT INTO `wp_rich_web_slider_effect1` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_web_Sl1_SlS`, `rich_web_Sl1_SlSS`, `rich_web_Sl1_PoH`, `rich_web_Sl1_W`, `rich_web_Sl1_H`, `rich_web_Sl1_BoxS`, `rich_web_Sl1_BoxSC`, `rich_web_Sl1_IBW`, `rich_web_Sl1_IBS`, `rich_web_Sl1_IBC`, `rich_web_Sl1_IBR`, `rich_web_Sl1_TBgC`, `rich_web_Sl1_TC`, `rich_web_Sl1_TTA`, `rich_web_Sl1_TFS`, `rich_web_Sl1_TFF`, `rich_web_Sl1_TUp`, `rich_web_Sl1_ArBgC`, `rich_web_Sl1_ArOp`, `rich_web_Sl1_ArType`, `rich_web_Sl1_ArHBgC`, `rich_web_Sl1_ArHOp`, `rich_web_Sl1_ArHEff`, `rich_web_Sl1_ArBoxW`, `rich_web_Sl1_NavW`, `rich_web_Sl1_NavH`, `rich_web_Sl1_NavPB`, `rich_web_Sl1_NavBW`, `rich_web_Sl1_NavBS`, `rich_web_Sl1_NavBC`, `rich_web_Sl1_NavBR`, `rich_web_Sl1_NavCC`, `rich_web_Sl1_NavHC`, `rich_web_Sl1_ArPFT`, `rich_web_Sl1_NavPos`) VALUES
(1, '1', 'Slider Navigation 1', 'Slider Navigation', 'true', '3', 'true', '750', '400', 'true', '#0084aa', '10', 'solid', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', '#1e73be', '82', '1', '#1e73be', '80', 'slide out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#ffffff', '35', 'bottom'),
(2, '2', 'Slider Navigation 2', 'Slider Navigation', 'true', '3', 'true', '380', '450', 'true', '#0084aa', '0', 'none', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', 'rgba(30,115,190,0.6)', '100', '2', '#1e73be', '100', 'flip out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#1967aa', '40', 'bottom');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect1_loader`
--

CREATE TABLE `wp_rich_web_slider_effect1_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect1_loader`
--

INSERT INTO `wp_rich_web_slider_effect1_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_NSL_L_Show`, `Rich_Web_NSL_LT_Show`, `Rich_Web_NSL_LT`, `Rich_Web_NSL_L_BgC`, `Rich_Web_NSL_L_T`, `Rich_Web_NSL_LT_T`, `Rich_Web_NSL_LT_FS`, `Rich_Web_NSL_LT_FF`, `Rich_Web_NSL_LT_C`, `Rich_Web_NSL_L_T1_C`, `Rich_Web_NSL_L_T2_C`, `Rich_Web_NSL_L_T3_C`, `Rich_Web_NSL_LT_T2_BC`, `Rich_Web_NSL_L_C`, `Rich_Web_NSL_LT_T2_AnC`, `Rich_Web_NSL_LT_T3_BgC`, `Rich_Web_NSL_L_S`, `Rich_Web_NSL_Loading_Show`) VALUES
(1, '1', 'true', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 4', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'small', 'true'),
(2, '2', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0066bf', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect2`
--

CREATE TABLE `wp_rich_web_slider_effect2` (
  `id` int(10) UNSIGNED NOT NULL,
  `richideo_EN_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_BIB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_P` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_SD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_Op` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_ArrShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect2`
--

INSERT INTO `wp_rich_web_slider_effect2` (`id`, `richideo_EN_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_CS_BIB`, `rich_CS_P`, `rich_CS_Loop`, `rich_CS_SD`, `rich_CS_AT`, `rich_CS_Cont_BgC`, `rich_CS_Cont_BSC`, `rich_CS_Cont_W`, `rich_CS_Cont_H`, `rich_CS_Cont_Op`, `rich_CS_Cont_BW`, `rich_CS_Cont_BS`, `rich_CS_Cont_BC`, `rich_CS_Cont_BR`, `rich_CS_Video_TShow`, `rich_CS_Video_TC`, `rich_CS_Video_TSC`, `rich_CS_Video_TFS`, `rich_CS_Video_TFF`, `rich_CS_Video_TTA`, `rich_CS_Video_DShow`, `rich_CS_Video_DC`, `rich_CS_Video_DSC`, `rich_CS_Video_DFS`, `rich_CS_Video_DFF`, `rich_CS_Video_DTA`, `rich_CS_Video_Show`, `rich_CS_Video_W`, `rich_CS_Video_H`, `rich_CS_LFS`, `rich_CS_LFF`, `rich_CS_LC`, `rich_CS_LT`, `rich_CS_LBgC`, `rich_CS_LBC`, `rich_CS_LBR`, `rich_CS_LPos`, `rich_CS_LHBgC`, `rich_CS_LHC`, `rich_CS_Video_ArrShow`, `rich_CS_AFS`, `rich_CS_AC`, `rich_CS_Icon`, `rich_CS_Link_BW`, `rich_CS_Link_BS`) VALUES
(1, '3', 'Content Slider', 'Content Slider', 'true', 'true', 'true', '10', 'bounceUp', '#0084aa', '#0084aa', '650', '400', '50', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '', '', '', '', '', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007da0', '#ffffff', '0', 'left', '#0084aa', '#000000', 'true', '30', '#ffffff', '3', '1', 'solid'),
(2, '4', 'Content-Slider', 'Content Slider', 'true', 'true', 'true', '20', 'bounce3', '#0084aa', '#0084aa', '800', '400', '100', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '', '', '', '', '', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007893', '#ffffff', '10', 'left', '#3190aa', '#ffffff', 'true', '30', '#ffffff', '3', '1', 'solid');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect2_loader`
--

CREATE TABLE `wp_rich_web_slider_effect2_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect2_loader`
--

INSERT INTO `wp_rich_web_slider_effect2_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ContSl_L_Show`, `Rich_Web_ContSl_LT_Show`, `Rich_Web_ContSl_LT`, `Rich_Web_ContSl_L_BgC`, `Rich_Web_ContSl_L_T`, `Rich_Web_ContSl_LT_T`, `Rich_Web_ContSl_LT_FS`, `Rich_Web_ContSl_LT_FF`, `Rich_Web_ContSl_LT_C`, `Rich_Web_ContSl_L_T1_C`, `Rich_Web_ContSl_L_T2_C`, `Rich_Web_ContSl_L_T3_C`, `Rich_Web_ContSl_LT_T2_BC`, `Rich_Web_ContSl_L_C`, `Rich_Web_ContSl_LT_T2_AnC`, `Rich_Web_ContSl_LT_T3_BgC`, `Rich_Web_ContSl_L_S`, `Rich_Web_ContSl_Loading_Show`) VALUES
(1, '3', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#000000', '#357ebf', '#0066bf', '#145b91', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '4', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#000000', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect3`
--

CREATE TABLE `wp_rich_web_slider_effect3` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_animation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow_Speed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Anim_Dur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Ic_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_PPL_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Randomize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Box_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Shadow_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Hover_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect3`
--

INSERT INTO `wp_rich_web_slider_effect3` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_fsl_animation`, `rich_fsl_SShow`, `rich_fsl_SShow_Speed`, `rich_fsl_Anim_Dur`, `rich_fsl_Ic_Show`, `rich_fsl_PPL_Show`, `rich_fsl_Randomize`, `rich_fsl_Loop`, `rich_fsl_Width`, `rich_fsl_Height`, `rich_fsl_Border_Width`, `rich_fsl_Border_Style`, `rich_fsl_Border_Color`, `rich_fsl_Box_Shadow`, `rich_fsl_Shadow_Color`, `rich_fsl_Desc_Show`, `rich_fsl_Desc_Size`, `rich_fsl_Desc_Color`, `rich_fsl_Desc_Font_Family`, `rich_fsl_Desc_Text_Align`, `rich_fsl_Desc_Bg_Color`, `rich_fsl_Desc_Transparency`, `rich_fsl_Title_Font_Size`, `rich_fsl_Title_Color`, `rich_fsl_Title_Text_Shadow`, `rich_fsl_Title_Font_Family`, `rich_fsl_Title_Text_Align`, `rich_fsl_Link_Text`, `rich_fsl_Link_Border_Width`, `rich_fsl_Link_Border_Style`, `rich_fsl_Link_Border_Color`, `rich_fsl_Link_Font_Size`, `rich_fsl_Link_Color`, `rich_fsl_Link_Font_Family`, `rich_fsl_Link_Bg_Color`, `rich_fsl_Link_Transparency`, `rich_fsl_Link_Hover_Border_Color`, `rich_fsl_Link_Hover_Bg_Color`, `rich_fsl_Link_Hover_Color`, `rich_fsl_Link_Hover_Transparency`, `rich_fsl_Icon_Size`, `rich_fsl_Icon_Type`, `rich_fsl_Hover_Icon_Type`) VALUES
(1, '5', 'Fashion Slider 1', 'Fashion Slider', 'fade', '1', '3', '3', '1', 'false', 'false', '1', '750', '390', '0', 'solid', '#ffffff', '35', '#606060', 'on', '', '', '', '', 'rgba(0,132,170,0.75)', '', '18', '#ffffff', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12'),
(2, '6', 'Fashion Slider 2', 'Fashion Slider', 'fade', '1', '3', '3', '1', 'false', 'false', '1', '600', '300', '4', 'solid', '#ffffff', '30', '#0084aa', 'on', '', '', '', '', 'rgba(255,255,255,0.65)', '', '18', '#0084aa', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect3_loader`
--

CREATE TABLE `wp_rich_web_slider_effect3_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect3_loader`
--

INSERT INTO `wp_rich_web_slider_effect3_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FSl_L_Show`, `Rich_Web_FSl_LT_Show`, `Rich_Web_FSl_LT`, `Rich_Web_FSl_L_BgC`, `Rich_Web_FSl_L_T`, `Rich_Web_FSl_LT_T`, `Rich_Web_FSl_LT_FS`, `Rich_Web_FSl_LT_FF`, `Rich_Web_FSl_LT_C`, `Rich_Web_FSl_L_T1_C`, `Rich_Web_FSl_L_T2_C`, `Rich_Web_FSl_L_T3_C`, `Rich_Web_FSl_LT_T2_BC`, `Rich_Web_FSl_L_C`, `Rich_Web_FSl_LT_T2_AnC`, `Rich_Web_FSl_LT_T3_BgC`, `Rich_Web_FSl_L_S`, `Rich_Web_FSl_Loading_Show`) VALUES
(1, '5', 'false', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 1', '18', 'Vijaya', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'large', 'true'),
(2, '6', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Aldhabi', '#000000', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect4`
--

CREATE TABLE `wp_rich_web_slider_effect4` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDABgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDAPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect4`
--

INSERT INTO `wp_rich_web_slider_effect4` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_CT_W`, `Rich_Web_Sl_CT_H`, `Rich_Web_Sl_CT_BW`, `Rich_Web_Sl_CT_BS`, `Rich_Web_Sl_CT_BC`, `Rich_Web_Sl_CT_BxSShow`, `Rich_Web_Sl_CT_BxSType`, `Rich_Web_Sl_CT_BxS`, `Rich_Web_Sl_CT_BxC`, `Rich_Web_Sl_CT_TDABgC`, `Rich_Web_Sl_CT_TDAPos`, `Rich_Web_Sl_CT_LBgC`, `Rich_Web_Sl_CT_TFS`, `Rich_Web_Sl_CT_TFF`, `Rich_Web_Sl_CT_TCC`, `Rich_Web_Sl_CT_TC`, `Rich_Web_Sl_CT_ArBgC`, `Rich_Web_Sl_CT_ArBR`, `Rich_Web_Sl_CT_ArType`, `Rich_Web_Sl_CT_ArHBC`, `Rich_Web_Sl_CT_ArHBR`, `Rich_Web_Sl_CT_ArText`, `Rich_Web_Sl_CT_ArLeft`, `Rich_Web_Sl_CT_ArRight`, `Rich_Web_Sl_CT_ArTextC`, `Rich_Web_Sl_CT_ArTextFS`, `Rich_Web_Sl_CT_ArTextFF`) VALUES
(1, '7', 'Circle Thumbnails', 'Circle Thumbnails', '750', '410', '7', 'solid', '#ffffff', 'true', 'true', '8', '#009491', '#009491', 'bottom', '#009491', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', '#ffffff', '20', 'Vijaya'),
(2, '8', 'Circle Thumbnails 2', 'Circle Thumbnails', '650', '370', '7', 'solid', '#ffffff', 'true', 'false', '20', '#009491', 'rgba(0,148,145,0.6)', 'top', 'rgba(0,148,145,0.6)', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', 'rgba(255,255,255,0.6)', '20', 'Vijaya');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect4_loader`
--

CREATE TABLE `wp_rich_web_slider_effect4_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect4_loader`
--

INSERT INTO `wp_rich_web_slider_effect4_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CircleSl_L_Show`, `Rich_Web_CircleSl_LT_Show`, `Rich_Web_CircleSl_LT`, `Rich_Web_CircleSl_L_BgC`, `Rich_Web_CircleSl_L_T`, `Rich_Web_CircleSl_LT_T`, `Rich_Web_CircleSl_LT_FS`, `Rich_Web_CircleSl_LT_FF`, `Rich_Web_CircleSl_LT_C`, `Rich_Web_CircleSl_L_T1_C`, `Rich_Web_CircleSl_L_T2_C`, `Rich_Web_CircleSl_L_T3_C`, `Rich_Web_CircleSl_LT_T2_BC`, `Rich_Web_CircleSl_L_C`, `Rich_Web_CircleSl_LT_T2_AnC`, `Rich_Web_CircleSl_LT_T3_BgC`, `Rich_Web_CircleSl_L_S`, `Rich_Web_CircleSl_Loading_Show`) VALUES
(1, '7', 'false', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 3', '15', 'Abadi MT Condensed Light', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#009491', 'middle', 'true'),
(2, '8', 'true', 'false', 'Loading', '#ffffff', 'Type 4', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#009491', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect5`
--

CREATE TABLE `wp_rich_web_slider_effect5` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_BW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_BS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_BC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_BoxShShow` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_BoxShType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_BoxSh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_BoxShC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_IW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_IH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_IBW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_IBS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_IBC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_IBR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_ICBW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_ICBS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_ICBC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_TBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_TC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_TFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_TFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_THBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_THC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Pop_OC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Pop_BW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Pop_BC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShShow` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxSh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_BgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_C` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_FS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_BW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_BS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_BC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_BR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_HBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_HC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_Text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_IType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_L_FF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_BgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_C` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_FS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_BW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_BS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_BC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_BR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_HBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_HC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_Text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_IType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PI_FF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_BgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_C` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_FS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_BW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_BS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_BC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_BR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_HBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_HC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_FF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_IType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_Next` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_Arr_Prev` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PCI_FS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PCI_C` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rich_Web_Sl_SC_PCI_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect5`
--

INSERT INTO `wp_rich_web_slider_effect5` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_SC_BW`, `Rich_Web_Sl_SC_BS`, `Rich_Web_Sl_SC_BC`, `Rich_Web_Sl_SC_BoxShShow`, `Rich_Web_Sl_SC_BoxShType`, `Rich_Web_Sl_SC_BoxSh`, `Rich_Web_Sl_SC_BoxShC`, `Rich_Web_Sl_SC_IW`, `Rich_Web_Sl_SC_IH`, `Rich_Web_Sl_SC_IBW`, `Rich_Web_Sl_SC_IBS`, `Rich_Web_Sl_SC_IBC`, `Rich_Web_Sl_SC_IBR`, `Rich_Web_Sl_SC_ICBW`, `Rich_Web_Sl_SC_ICBS`, `Rich_Web_Sl_SC_ICBC`, `Rich_Web_Sl_SC_TBgC`, `Rich_Web_Sl_SC_TC`, `Rich_Web_Sl_SC_TFS`, `Rich_Web_Sl_SC_TFF`, `Rich_Web_Sl_SC_THBgC`, `Rich_Web_Sl_SC_THC`, `Rich_Web_Sl_SC_Pop_OC`, `Rich_Web_Sl_SC_Pop_BW`, `Rich_Web_Sl_SC_Pop_BC`, `Rich_Web_Sl_SC_Pop_BoxShShow`, `Rich_Web_Sl_SC_Pop_BoxShType`, `Rich_Web_Sl_SC_Pop_BoxSh`, `Rich_Web_Sl_SC_Pop_BoxShC`, `Rich_Web_Sl_SC_L_BgC`, `Rich_Web_Sl_SC_L_C`, `Rich_Web_Sl_SC_L_FS`, `Rich_Web_Sl_SC_L_BW`, `Rich_Web_Sl_SC_L_BS`, `Rich_Web_Sl_SC_L_BC`, `Rich_Web_Sl_SC_L_BR`, `Rich_Web_Sl_SC_L_HBgC`, `Rich_Web_Sl_SC_L_HC`, `Rich_Web_Sl_SC_L_Type`, `Rich_Web_Sl_SC_L_Text`, `Rich_Web_Sl_SC_L_IType`, `Rich_Web_Sl_SC_L_FF`, `Rich_Web_Sl_SC_PI_BgC`, `Rich_Web_Sl_SC_PI_C`, `Rich_Web_Sl_SC_PI_FS`, `Rich_Web_Sl_SC_PI_BW`, `Rich_Web_Sl_SC_PI_BS`, `Rich_Web_Sl_SC_PI_BC`, `Rich_Web_Sl_SC_PI_BR`, `Rich_Web_Sl_SC_PI_HBgC`, `Rich_Web_Sl_SC_PI_HC`, `Rich_Web_Sl_SC_PI_Type`, `Rich_Web_Sl_SC_PI_Text`, `Rich_Web_Sl_SC_PI_IType`, `Rich_Web_Sl_SC_PI_FF`, `Rich_Web_Sl_SC_Arr_BgC`, `Rich_Web_Sl_SC_Arr_C`, `Rich_Web_Sl_SC_Arr_FS`, `Rich_Web_Sl_SC_Arr_BW`, `Rich_Web_Sl_SC_Arr_BS`, `Rich_Web_Sl_SC_Arr_BC`, `Rich_Web_Sl_SC_Arr_BR`, `Rich_Web_Sl_SC_Arr_HBgC`, `Rich_Web_Sl_SC_Arr_HC`, `Rich_Web_Sl_SC_Arr_Type`, `Rich_Web_Sl_SC_Arr_FF`, `Rich_Web_Sl_SC_Arr_IType`, `Rich_Web_Sl_SC_Arr_Next`, `Rich_Web_Sl_SC_Arr_Prev`, `Rich_Web_Sl_SC_PCI_FS`, `Rich_Web_Sl_SC_PCI_C`, `Rich_Web_Sl_SC_PCI_Type`) VALUES
(1, '9', 'Slider Carousel 1', 'Slider Carousel', '2', 'solid', '#ffffff', 'true', 'true', '15', '#0084aa', '270', '150', '4', 'solid', '#ffffff', '0', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.85)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.7)', '#0084aa', '18', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.7)', '#ffffff', 'text', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.7)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.7)', '#0084aa', 'text', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.6)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.6)', '#ffffff', 'icon', 'Gabriola', 'angle', 'Next', 'Prev', '35', '#0084aa', 'home'),
(2, '10', 'Slider Carousel 2', 'Slider Carousel', '5', 'solid', '#ffffff', 'true', 'false', '25', '#0084aa', '270', '150', '5', 'solid', '#ffffff', '15', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.75)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.5)', '#0084aa', '16', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.5)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.5)', '#0084aa', 'icon', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.5)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'Gabriola', 'angle-double', 'Next', 'Prev', '35', '#0084aa', 'times');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect5_loader`
--

CREATE TABLE `wp_rich_web_slider_effect5_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_HT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_H_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect5_loader`
--

INSERT INTO `wp_rich_web_slider_effect5_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CarSl_L_Show`, `Rich_Web_CarSl_LT_Show`, `Rich_Web_CarSl_LT`, `Rich_Web_CarSl_L_BgC`, `Rich_Web_CarSl_L_T`, `Rich_Web_CarSl_LT_T`, `Rich_Web_CarSl_LT_FS`, `Rich_Web_CarSl_LT_FF`, `Rich_Web_CarSl_LT_C`, `Rich_Web_CarSl_L_T1_C`, `Rich_Web_CarSl_L_T2_C`, `Rich_Web_CarSl_L_T3_C`, `Rich_Web_CarSl_LT_T2_BC`, `Rich_Web_CarSl_L_C`, `Rich_Web_CarSl_LT_T2_AnC`, `Rich_Web_CarSl_LT_T3_BgC`, `Rich_Web_CarSl_HT`, `Rich_Web_CarSl_H_OvC`, `Rich_Web_CarSl_L_S`, `Rich_Web_CarSl_Loading_Show`) VALUES
(1, '9', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 4', '18', 'Aharoni', '#1e73be', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true'),
(2, '10', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 3', '17', 'Aharoni', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect6`
--

CREATE TABLE `wp_rich_web_slider_effect6` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_TS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SVis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SLoop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SSc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SlPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_ShNavBut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect6`
--

INSERT INTO `wp_rich_web_slider_effect6` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_FS_BgC`, `Rich_Web_Sl_FS_AP`, `Rich_Web_Sl_FS_TS`, `Rich_Web_Sl_FS_PT`, `Rich_Web_Sl_FS_SS`, `Rich_Web_Sl_FS_SVis`, `Rich_Web_Sl_FS_CS`, `Rich_Web_Sl_FS_SLoop`, `Rich_Web_Sl_FS_SSc`, `Rich_Web_Sl_FS_SlPos`, `Rich_Web_Sl_FS_ShNavBut`, `Rich_Web_Sl_FS_I_W`, `Rich_Web_Sl_FS_I_H`, `Rich_Web_Sl_FS_I_BW`, `Rich_Web_Sl_FS_I_BS`, `Rich_Web_Sl_FS_I_BC`, `Rich_Web_Sl_FS_I_BR`, `Rich_Web_Sl_FS_I_BoxShShow`, `Rich_Web_Sl_FS_I_BoxShType`, `Rich_Web_Sl_FS_I_BoxSh`, `Rich_Web_Sl_FS_I_BoxShC`, `Rich_Web_Sl_FS_T_C`, `Rich_Web_Sl_FS_T_FF`, `Rich_Web_Sl_FS_Nav_Show`, `Rich_Web_Sl_FS_Nav_W`, `Rich_Web_Sl_FS_Nav_H`, `Rich_Web_Sl_FS_Nav_BW`, `Rich_Web_Sl_FS_Nav_BS`, `Rich_Web_Sl_FS_Nav_BC`, `Rich_Web_Sl_FS_Nav_BR`, `Rich_Web_Sl_FS_Nav_PB`, `Rich_Web_Sl_FS_Nav_CC`, `Rich_Web_Sl_FS_Nav_HC`, `Rich_Web_Sl_FS_Nav_C`, `Rich_Web_Sl_FS_Arr_Show`, `Rich_Web_Sl_FS_Arr_Type`, `Rich_Web_Sl_FS_Arr_S`, `Rich_Web_Sl_FS_Arr_C`) VALUES
(1, '11', 'Flexible Slider 1', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '134', 'true', 'false', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(2, '12', 'Flexible Slider 2', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '0', 'true', 'true', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect6_loader`
--

CREATE TABLE `wp_rich_web_slider_effect6_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect6_loader`
--

INSERT INTO `wp_rich_web_slider_effect6_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FlexibleSl_L_Show`, `Rich_Web_FlexibleSl_LT_Show`, `Rich_Web_FlexibleSl_LT`, `Rich_Web_FlexibleSl_L_BgC`, `Rich_Web_FlexibleSl_L_T`, `Rich_Web_FlexibleSl_LT_T`, `Rich_Web_FlexibleSl_LT_FS`, `Rich_Web_FlexibleSl_LT_FF`, `Rich_Web_FlexibleSl_LT_C`, `Rich_Web_FlexibleSl_L_T1_C`, `Rich_Web_FlexibleSl_L_T2_C`, `Rich_Web_FlexibleSl_L_T3_C`, `Rich_Web_FlexibleSl_LT_T2_BC`, `Rich_Web_FlexibleSl_L_C`, `Rich_Web_FlexibleSl_LT_T2_AnC`, `Rich_Web_FlexibleSl_LT_T3_BgC`, `Rich_Web_FlexibleSl_L_S`, `Rich_Web_FlexibleSl_Loading_Show`) VALUES
(1, '11', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd8282', '#c9c9c9', '#000000', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '12', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect7`
--

CREATE TABLE `wp_rich_web_slider_effect7` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Tr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_RT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect7`
--

INSERT INTO `wp_rich_web_slider_effect7` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_DS_AP`, `Rich_Web_Sl_DS_PT`, `Rich_Web_Sl_DS_Tr`, `Rich_Web_Sl_DS_H`, `Rich_Web_Sl_DS_BW`, `Rich_Web_Sl_DS_BS`, `Rich_Web_Sl_DS_BC`, `Rich_Web_Sl_DS_TFS`, `Rich_Web_Sl_DS_TFF`, `Rich_Web_Sl_DS_TC`, `Rich_Web_Sl_DS_DFS`, `Rich_Web_Sl_DS_DFF`, `Rich_Web_Sl_DS_DC`, `Rich_Web_Sl_DS_LFS`, `Rich_Web_Sl_DS_LFF`, `Rich_Web_Sl_DS_LC`, `Rich_Web_Sl_DS_LBgC`, `Rich_Web_Sl_DS_LBW`, `Rich_Web_Sl_DS_LBS`, `Rich_Web_Sl_DS_LBC`, `Rich_Web_Sl_DS_LBR`, `Rich_Web_Sl_DS_LHC`, `Rich_Web_Sl_DS_LHBgC`, `Rich_Web_Sl_DS_LT`, `Rich_Web_Sl_DS_Arr_Show`, `Rich_Web_Sl_DS_Arr_LT`, `Rich_Web_Sl_DS_Arr_RT`, `Rich_Web_Sl_DS_Arr_C`, `Rich_Web_Sl_DS_Arr_BgC`, `Rich_Web_Sl_DS_Arr_BW`, `Rich_Web_Sl_DS_Arr_BS`, `Rich_Web_Sl_DS_Arr_BC`, `Rich_Web_Sl_DS_Arr_BR`, `Rich_Web_Sl_DS_Arr_HC`, `Rich_Web_Sl_DS_Arr_HBgC`, `Rich_Web_Sl_DS_Nav_W`, `Rich_Web_Sl_DS_Nav_H`, `Rich_Web_Sl_DS_Nav_PB`, `Rich_Web_Sl_DS_Nav_BW`, `Rich_Web_Sl_DS_Nav_BS`, `Rich_Web_Sl_DS_Nav_BC`, `Rich_Web_Sl_DS_Nav_BR`, `Rich_Web_Sl_DS_Nav_C`, `Rich_Web_Sl_DS_Nav_HC`, `Rich_Web_Sl_DS_Nav_CC`) VALUES
(1, '13', 'Dynamic Slider 1', 'Dynamic Slider', 'true', '5', 'true', '250', '4', 'solid', '#ffffff', '15', 'Aldhabi', '#ffffff', '', '', '', '16', 'Aldhabi', '#ffffff', '#dd3333', '0', 'dotted', '#4a1fc1', '0', '#dd3333', '#ffffff', 'View', 'true', 'Prev', 'Next', '#ffffff', '#0084aa', '0', 'solid', '#16a309', '46', '#ffffff', '#5598aa', '11', '12', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#dd3333', '#ffffff'),
(2, '14', 'Dynamic Slider 2', 'Dynamic Slider', 'true', '5', 'true', '400', '4', 'solid', '#ffffff', '18', 'Aldhabi', '#598fbf', '', '', '', '16', 'Aldhabi', '#ffffff', 'rgba(221,51,51,0)', '1', 'solid', '#ffffff', '0', '#0084aa', 'rgba(255,255,255,0)', 'View More', 'true', 'Prev', 'Next', '#0084aa', 'rgba(255,255,255,0.45)', '0', 'solid', '#000000', '46', '#0084aa', '#ffffff', '10', '10', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#ffffff', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect7_loader`
--

CREATE TABLE `wp_rich_web_slider_effect7_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_ImgT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect7_loader`
--

INSERT INTO `wp_rich_web_slider_effect7_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_DynamicSl_L_Show`, `Rich_Web_DynamicSl_LT_Show`, `Rich_Web_DynamicSl_LT`, `Rich_Web_DynamicSl_L_BgC`, `Rich_Web_DynamicSl_L_T`, `Rich_Web_DynamicSl_LT_T`, `Rich_Web_DynamicSl_LT_FS`, `Rich_Web_DynamicSl_LT_FF`, `Rich_Web_DynamicSl_LT_C`, `Rich_Web_DynamicSl_L_T1_C`, `Rich_Web_DynamicSl_L_T2_C`, `Rich_Web_DynamicSl_L_T3_C`, `Rich_Web_DynamicSl_LT_T2_BC`, `Rich_Web_DynamicSl_L_C`, `Rich_Web_DynamicSl_LT_T2_AnC`, `Rich_Web_DynamicSl_LT_T3_BgC`, `Rich_Web_DynamicSl_ImgT`, `Rich_Web_DynamicSl_L_S`, `Rich_Web_DynamicSl_Loading_Show`) VALUES
(1, '13', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 2', '21', 'Gabriola', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#007596', '#0084aa', '#dd3333', 'Type 2', 'middle', 'true'),
(2, '14', 'true', 'true', 'LOADING', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#0084aa', '#dd3333', 'Type 1', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect8`
--

CREATE TABLE `wp_rich_web_slider_effect8` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_CBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_HBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_StC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_SpC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect8`
--

INSERT INTO `wp_rich_web_slider_effect8` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_TSL_W`, `Rich_Web_Sl_TSL_H`, `Rich_Web_Sl_TSL_BW`, `Rich_Web_Sl_TSL_BS`, `Rich_Web_Sl_TSL_BC`, `Rich_Web_Sl_TSL_BR`, `Rich_Web_Sl_TSL_BoxShShow`, `Rich_Web_Sl_TSL_BoxShType`, `Rich_Web_Sl_TSL_BoxSh`, `Rich_Web_Sl_TSL_BoxShC`, `Rich_Web_Sl_TSL_CM`, `Rich_Web_Sl_TSL_TA`, `Rich_Web_Sl_TSL_AP`, `Rich_Web_Sl_TSL_PH`, `Rich_Web_Sl_TSL_Loop`, `Rich_Web_Sl_TSL_PT`, `Rich_Web_Sl_TSL_CS`, `Rich_Web_Sl_TSL_Nav_Show`, `Rich_Web_Sl_TSL_Nav_W`, `Rich_Web_Sl_TSL_Nav_H`, `Rich_Web_Sl_TSL_Nav_PB`, `Rich_Web_Sl_TSL_Nav_BC`, `Rich_Web_Sl_TSL_Nav_BR`, `Rich_Web_Sl_TSL_Nav_CBC`, `Rich_Web_Sl_TSL_Nav_HBC`, `Rich_Web_Sl_TSL_Nav_Pos`, `Rich_Web_Sl_TSL_SS_Show`, `Rich_Web_Sl_TSL_SS_W`, `Rich_Web_Sl_TSL_SS_H`, `Rich_Web_Sl_TSL_SS_BC`, `Rich_Web_Sl_TSL_SS_BR`, `Rich_Web_Sl_TSL_SS_StC`, `Rich_Web_Sl_TSL_SS_SpC`, `Rich_Web_Sl_TSL_Arr_Show`, `Rich_Web_Sl_TSL_Arr_Type`, `Rich_Web_Sl_TSL_Arr_S`, `Rich_Web_Sl_TSL_Arr_C`, `Rich_Web_Sl_TSL_Pop_OvC`, `Rich_Web_Sl_TSL_Pop_BW`, `Rich_Web_Sl_TSL_Pop_BS`, `Rich_Web_Sl_TSL_Pop_BC`, `Rich_Web_Sl_TSL_Pop_BR`, `Rich_Web_Sl_TSL_Pop_BgC`, `Rich_Web_Sl_TSL_TFS`, `Rich_Web_Sl_TSL_TFF`, `Rich_Web_Sl_TSL_TC`, `Rich_Web_Sl_TSL_Pop_ArrType`, `Rich_Web_Sl_TSL_Pop_ArrS`, `Rich_Web_Sl_TSL_Pop_ArrC`, `Rich_Web_Sl_TSL_CIT`, `Rich_Web_Sl_TSL_CIS`, `Rich_Web_Sl_TSL_CIC`) VALUES
(1, '15', 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#598fbf', '0', 'true', 'false', '32', '#598fbf', 'vertical', 'true', 'true', 'true', 'true', '5', '500', 'true', '50', '50', '4', '#ffffff', '0', '#598fbf', '#598fbf', 'bottom', 'true', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86)'),
(2, '16', 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#ffffff', '0', 'true', 'true', '15', '#598fbf', 'fade', 'false', 'true', 'true', 'false', '5', '500', 'true', '25', '25', '6', 'rgba(255,255,255,0.43)', '20', 'rgba(89,143,191,0.46)', 'rgba(89,143,191,0.41)', 'top', 'false', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect8_loader`
--

CREATE TABLE `wp_rich_web_slider_effect8_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect8_loader`
--

INSERT INTO `wp_rich_web_slider_effect8_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ThSl_L_Show`, `Rich_Web_ThSl_LT_Show`, `Rich_Web_ThSl_LT`, `Rich_Web_ThSl_L_BgC`, `Rich_Web_ThSl_L_T`, `Rich_Web_ThSl_LT_T`, `Rich_Web_ThSl_LT_FS`, `Rich_Web_ThSl_LT_FF`, `Rich_Web_ThSl_LT_C`, `Rich_Web_ThSl_L_T1_C`, `Rich_Web_ThSl_L_T2_C`, `Rich_Web_ThSl_L_T3_C`, `Rich_Web_ThSl_LT_T2_BC`, `Rich_Web_ThSl_L_C`, `Rich_Web_ThSl_LT_T2_AnC`, `Rich_Web_ThSl_LT_T3_BgC`, `Rich_Web_ThSl_L_S`, `Rich_Web_ThSl_Loading_Show`) VALUES
(1, '15', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 1', '15', 'Abadi MT Condensed Light', '#828282', '#dd9933', '#dd9933', '#dd3333', '#000000', '#dd3333', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '16', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#000000', '#606060', '#b7b7b7', '#000000', '#ffffff', '#81d742', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect9`
--

CREATE TABLE `wp_rich_web_slider_effect9` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect9`
--

INSERT INTO `wp_rich_web_slider_effect9` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AcSL_W`, `Rich_Web_AcSL_H`, `Rich_Web_AcSL_BW`, `Rich_Web_AcSL_BS`, `Rich_Web_AcSL_BC`, `Rich_Web_AcSL_BSh`, `Rich_Web_AcSL_BShC`, `Rich_Web_AcSL_Img_W`, `Rich_Web_AcSL_Img_BSh`, `Rich_Web_AcSL_Img_BShC`, `Rich_Web_AcSL_Title_FS`, `Rich_Web_AcSL_Title_FF`, `Rich_Web_AcSL_Title_C`, `Rich_Web_AcSL_Title_TSh`, `Rich_Web_AcSL_Title_TShC`, `Rich_Web_AcSL_Title_BgC`, `Rich_Web_AcSL_Link_FS`, `Rich_Web_AcSL_Link_FF`, `Rich_Web_AcSL_Link_C`, `Rich_Web_AcSL_Link_TSh`, `Rich_Web_AcSL_Link_TShC`, `Rich_Web_AcSL_Link_BgC`, `Rich_Web_AcSL_Link_Text`) VALUES
(1, '17', 'Accordion 1', 'Accordion Slider', '720', '350', '7', 'solid', '#eaeaea', '14', '#0084aa', '596', '2', '#eaeaea', '16', 'Aldhabi', '#ffffff', '3', '#ffffff', 'rgba(0,132,170,0.65)', '16', 'Vijaya', '#0084aa', '3', '#0084aa', 'rgba(255,255,255,0.6)', 'View . . .'),
(2, '18', 'Accordion 2', 'Accordion Slider', '720', '350', '7', 'solid', '#ffffff', '14', '#0084aa', '572', '3', '#ffffff', '16', 'Aldhabi', '#0084aa', '3', '#ffffff', 'rgba(255,255,255,0.8)', '16', 'Vijaya', '#ffffff', '3', 'rgba(0,132,170,0.5)', 'rgba(255,255,255,0.6)', 'View . . .');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect9_loader`
--

CREATE TABLE `wp_rich_web_slider_effect9_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect9_loader`
--

INSERT INTO `wp_rich_web_slider_effect9_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AccSl_L_Show`, `Rich_Web_AccSl_LT_Show`, `Rich_Web_AccSl_LT`, `Rich_Web_AccSl_L_BgC`, `Rich_Web_AccSl_L_T`, `Rich_Web_AccSl_LT_T`, `Rich_Web_AccSl_LT_FS`, `Rich_Web_AccSl_LT_FF`, `Rich_Web_AccSl_LT_C`, `Rich_Web_AccSl_L_T1_C`, `Rich_Web_AccSl_L_T2_C`, `Rich_Web_AccSl_L_T3_C`, `Rich_Web_AccSl_LT_T2_BC`, `Rich_Web_AccSl_L_C`, `Rich_Web_AccSl_LT_T2_AnC`, `Rich_Web_AccSl_LT_T3_BgC`, `Rich_Web_AccSl_L_S`, `Rich_Web_AccSl_Loading_Show`) VALUES
(1, '17', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#00688e', '#dd3333', 'middle', 'true'),
(2, '18', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#007087', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect10`
--

CREATE TABLE `wp_rich_web_slider_effect10` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SShChT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_M` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L1_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L2_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L3_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect10`
--

INSERT INTO `wp_rich_web_slider_effect10` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AnSL_W`, `Rich_Web_AnSL_H`, `Rich_Web_AnSL_BW`, `Rich_Web_AnSL_BS`, `Rich_Web_AnSL_BC`, `Rich_Web_AnSL_BR`, `Rich_Web_AnSL_BSh`, `Rich_Web_AnSL_ShC`, `Rich_Web_AnSL_ET`, `Rich_Web_AnSL_SSh`, `Rich_Web_AnSL_SShChT`, `Rich_Web_AnSL_T_FS`, `Rich_Web_AnSL_T_FF`, `Rich_Web_AnSL_T_C`, `Rich_Web_AnSL_T_BgC`, `Rich_Web_AnSL_T_TA`, `Rich_Web_AnSL_T_Sh`, `Rich_Web_AnSL_T_ShC`, `Rich_Web_AnSL_N_Sh`, `Rich_Web_AnSL_N_S`, `Rich_Web_AnSL_N_BW`, `Rich_Web_AnSL_N_BC`, `Rich_Web_AnSL_N_BgC`, `Rich_Web_AnSL_N_BS`, `Rich_Web_AnSL_N_HBgC`, `Rich_Web_AnSL_N_CC`, `Rich_Web_AnSL_N_M`, `Rich_Web_AnSL_Ic_Sh`, `Rich_Web_AnSL_Ic_T`, `Rich_Web_AnSL_Ic_S`, `Rich_Web_AnSL_Ic_C`, `Rich_Web_AnSL_L_BgC`, `Rich_Web_AnSL_L_T`, `Rich_Web_AnSL_L_FS`, `Rich_Web_AnSL_L_FF`, `Rich_Web_AnSL_L_C`, `Rich_Web_AnSL_L1_T`, `Rich_Web_AnSL_L2_T`, `Rich_Web_AnSL_L3_T`) VALUES
(1, '19', 'Animation Slider 1', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '10', '#000000', '4', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(0,0,0,0.3)', 'center', '5', 'Image', 'true', '13', '1', 'rgba(0,0,0,0.15)', 'rgba(0,0,0,0.15)', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-angle-double', '40', '#ffffff', '', '', '', '', '', '', '', ''),
(2, '20', 'Animation Slider 2', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '0', 'rgba(0,0,0,0)', '6', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(30,115,190,0.3)', 'center', '5', 'Icon', 'false', '13', '1', '#1e73be', '#1e73be', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-caret', '50', 'rgba(30,115,190,0.8)', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect10_loader`
--

CREATE TABLE `wp_rich_web_slider_effect10_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect10_loader`
--

INSERT INTO `wp_rich_web_slider_effect10_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AnimSl_L_Show`, `Rich_Web_AnimSl_LT_Show`, `Rich_Web_AnimSl_LT`, `Rich_Web_AnimSl_L_BgC`, `Rich_Web_AnimSl_L_T`, `Rich_Web_AnimSl_LT_T`, `Rich_Web_AnimSl_LT_FS`, `Rich_Web_AnimSl_LT_FF`, `Rich_Web_AnimSl_LT_C`, `Rich_Web_AnimSl_L_T1_C`, `Rich_Web_AnimSl_L_T2_C`, `Rich_Web_AnimSl_L_T3_C`, `Rich_Web_AnimSl_LT_T2_BC`, `Rich_Web_AnimSl_L_C`, `Rich_Web_AnimSl_LT_T2_AnC`, `Rich_Web_AnimSl_LT_T3_BgC`, `Rich_Web_AnimSl_L_S`, `Rich_Web_AnimSl_Loading_Show`) VALUES
(1, '19', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd3333', '#dd0000', '#990700', 'rgba(30,115,190,0.54)', '#dd0000', '#dd3333', '#dd3333', 'middle', 'true'),
(2, '20', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '15', 'Abadi MT Condensed Light', '#004da0', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effects_data`
--

CREATE TABLE `wp_rich_web_slider_effects_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effects_data`
--

INSERT INTO `wp_rich_web_slider_effects_data` (`id`, `slider_name`, `slider_type`) VALUES
(1, 'Slider Navigation 1', 'Slider Navigation'),
(2, 'Slider Navigation 2', 'Slider Navigation'),
(3, 'Content Slider', 'Content Slider'),
(4, 'Content-Slider', 'Content Slider'),
(5, 'Fashion Slider 1', 'Fashion Slider'),
(6, 'Fashion Slider 2', 'Fashion Slider'),
(7, 'Circle Thumbnails', 'Circle Thumbnails'),
(8, 'Circle Thumbnails 2', 'Circle Thumbnails'),
(9, 'Slider Carousel 1', 'Slider Carousel'),
(10, 'Slider Carousel 2', 'Slider Carousel'),
(11, 'Flexible Slider 1', 'Flexible Slider'),
(12, 'Flexible Slider 2', 'Flexible Slider'),
(13, 'Dynamic Slider 1', 'Dynamic Slider'),
(14, 'Dynamic Slider 2', 'Dynamic Slider'),
(15, 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox'),
(16, 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox'),
(17, 'Accordion 1', 'Accordion Slider'),
(18, 'Accordion 2', 'Accordion Slider'),
(19, 'Animation Slider 1', 'Animation Slider'),
(20, 'Animation Slider 2', 'Animation Slider');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_font_family`
--

CREATE TABLE `wp_rich_web_slider_font_family` (
  `id` int(10) UNSIGNED NOT NULL,
  `Font_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_font_family`
--

INSERT INTO `wp_rich_web_slider_font_family` (`id`, `Font_family`) VALUES
(1, 'Abadi MT Condensed Light'),
(2, 'Aharoni'),
(3, 'Aldhabi'),
(4, 'Andalus'),
(5, 'Angsana New'),
(6, 'AngsanaUPC'),
(7, 'Aparajita'),
(8, 'Arabic Typesetting'),
(9, 'Arial'),
(10, 'Arial Black'),
(11, 'Batang'),
(12, 'BatangChe'),
(13, 'Browallia New'),
(14, 'BrowalliaUPC'),
(15, 'Calibri'),
(16, 'Calibri Light'),
(17, 'Calisto MT'),
(18, 'Cambria'),
(19, 'Candara'),
(20, 'Century Gothic'),
(21, 'Comic Sans MS'),
(22, 'Consolas'),
(23, 'Constantia'),
(24, 'Copperplate Gothic'),
(25, 'Copperplate Gothic Light'),
(26, 'Corbel'),
(27, 'Cordia New'),
(28, 'CordiaUPC'),
(29, 'Courier New'),
(30, 'DaunPenh'),
(31, 'David'),
(32, 'DFKai-SB'),
(33, 'DilleniaUPC'),
(34, 'DokChampa'),
(35, 'Dotum'),
(36, 'DotumChe'),
(37, 'Ebrima'),
(38, 'Estrangelo Edessa'),
(39, 'EucrosiaUPC'),
(40, 'Euphemia'),
(41, 'FangSong'),
(42, 'Franklin Gothic Medium'),
(43, 'FrankRuehl'),
(44, 'FreesiaUPC'),
(45, 'Gabriola'),
(46, 'Gadugi'),
(47, 'Gautami'),
(48, 'Georgia'),
(49, 'Gisha'),
(50, 'Gulim'),
(51, 'GulimChe'),
(52, 'Gungsuh'),
(53, 'GungsuhChe'),
(54, 'Impact'),
(55, 'IrisUPC'),
(56, 'Iskoola Pota'),
(57, 'JasmineUPC'),
(58, 'KaiTi'),
(59, 'Kalinga'),
(60, 'Kartika'),
(61, 'Khmer UI'),
(62, 'KodchiangUPC'),
(63, 'Kokila'),
(64, 'Lao UI'),
(65, 'Latha'),
(66, 'Leelawadee'),
(67, 'Levenim MT'),
(68, 'LilyUPC'),
(69, 'Lucida Console'),
(70, 'Lucida Handwriting Italic'),
(71, 'Lucida Sans Unicode'),
(72, 'Malgun Gothic'),
(73, 'Mangal'),
(74, 'Manny ITC'),
(75, 'Marlett'),
(76, 'Meiryo'),
(77, 'Meiryo UI'),
(78, 'Microsoft Himalaya'),
(79, 'Microsoft JhengHei'),
(80, 'Microsoft JhengHei UI'),
(81, 'Microsoft New Tai Lue'),
(82, 'Microsoft PhagsPa'),
(83, 'Microsoft Sans Serif'),
(84, 'Microsoft Tai Le'),
(85, 'Microsoft Uighur'),
(86, 'Microsoft YaHei'),
(87, 'Microsoft YaHei UI'),
(88, 'Microsoft Yi Baiti'),
(89, 'MingLiU_HKSCS'),
(90, 'MingLiU_HKSCS-ExtB'),
(91, 'Miriam'),
(92, 'Mongolian Baiti'),
(93, 'MoolBoran'),
(94, 'MS UI Gothic'),
(95, 'MV Boli'),
(96, 'Myanmar Text'),
(97, 'Narkisim'),
(98, 'Nirmala UI'),
(99, 'News Gothic MT'),
(100, 'NSimSun'),
(101, 'Nyala'),
(102, 'Palatino Linotype'),
(103, 'Plantagenet Cherokee'),
(104, 'Raavi'),
(105, 'Rod'),
(106, 'Sakkal Majalla'),
(107, 'Segoe Print'),
(108, 'Segoe Script'),
(109, 'Segoe UI Symbol'),
(110, 'Shonar Bangla'),
(111, 'Shruti'),
(112, 'SimHei'),
(113, 'SimKai'),
(114, 'Simplified Arabic'),
(115, 'SimSun'),
(116, 'SimSun-ExtB'),
(117, 'Sylfaen'),
(118, 'Tahoma'),
(119, 'Times New Roman'),
(120, 'Traditional Arabic'),
(121, 'Trebuchet MS'),
(122, 'Tunga'),
(123, 'Utsaah'),
(124, 'Vani'),
(125, 'Vijaya');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_id`
--

CREATE TABLE `wp_rich_web_slider_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '5');

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
(2, 'Main Menu', 'main-menu', 0),
(3, 'Social Menu', 'social-menu', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Uncategorized', 'uncategorized', 0),
(18, '92', '92', 0);

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
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 1, 0),
(25, 1, 0),
(30, 1, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(72, 2, 0),
(73, 2, 0),
(93, 18, 0),
(94, 18, 0),
(96, 18, 0),
(97, 18, 0),
(98, 18, 0),
(99, 18, 0),
(100, 18, 0),
(101, 18, 0),
(102, 18, 0),
(103, 18, 0),
(111, 2, 0),
(112, 2, 0),
(113, 2, 0),
(114, 2, 0),
(117, 4, 0),
(117, 17, 0),
(122, 4, 0),
(122, 17, 0),
(124, 4, 0),
(124, 17, 0),
(128, 4, 0),
(128, 17, 0),
(130, 4, 0),
(130, 17, 0),
(150, 18, 0),
(151, 18, 0),
(152, 18, 0),
(153, 18, 0),
(154, 18, 0),
(155, 18, 0),
(156, 18, 0),
(157, 18, 0),
(158, 18, 0),
(159, 18, 0),
(160, 18, 0);

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
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 10),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'product_type', '', 0, 5),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 5),
(18, 18, 'ml-slider', '', 0, 11);

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
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"194bdc1a5421d743e02e6667457ff0829520287d1735b3d1304813a4d64862bc\";a:4:{s:10:\"expiration\";i:1530273356;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:5:\"login\";i:1530100556;}s:64:\"9eb23f2d019f912fddfbea8e3bc4bc66e2d6a783ff92560dd56be87c046794cf\";a:4:{s:10:\"expiration\";i:1530273366;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:5:\"login\";i:1530100566;}s:64:\"4619213788c792579c52238e48792916f088e8ffa503cdfea39abbdd453b2974\";a:4:{s:10:\"expiration\";i:1530350071;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:5:\"login\";i:1530177271;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '166'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o'),
(21, 1, 'wp_user-settings-time', '1529788784'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"a0a080f42e6f13b3a2df133f073095dd\";a:11:{s:3:\"key\";s:32:\"a0a080f42e6f13b3a2df133f073095dd\";s:10:\"product_id\";i:122;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:2234700;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:2234700;s:8:\"line_tax\";i:0;}s:32:\"c8ffe9a587b126f152ed3d89a146b445\";a:11:{s:3:\"key\";s:32:\"c8ffe9a587b126f152ed3d89a146b445\";s:10:\"product_id\";i:124;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:419900;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:419900;s:8:\"line_tax\";i:0;}}}'),
(24, 1, 'wc_last_active', '1530144000'),
(25, 1, 'closedpostboxes_product', 'a:0:{}'),
(26, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}');

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
(1, 'admin', '$P$BgNj3/tEXl8ol1sG79UzFlem3rQAeW1', 'admin', 'narek.ghazaryan.g@tumo.rog', '', '2018-06-19 18:58:40', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Armenia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'AM', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application` (`application`,`section`,`referencekey`),
  ADD KEY `application_2` (`application`,`section`);

--
-- Indexes for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`);

--
-- Indexes for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10022;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=843;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=689;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
