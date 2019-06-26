-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2018 at 04:41 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `your_videos_channel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cid`, `category_name`, `category_image`) VALUES
(1, 'Funny', '8638-2016-09-11.png'),
(2, 'Gaming', '1113-2016-09-11.png'),
(3, 'Amazing', '0758-2016-09-11.png'),
(4, 'Music', '5090-2016-09-11.png'),
(5, 'Sports', '6257-2017-03-06.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_template`
--

CREATE TABLE `tbl_fcm_template` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fcm_template`
--

INSERT INTO `tbl_fcm_template` (`id`, `message`, `image`) VALUES
(27, 'Push Notification Test', ''),
(28, 'Hello World, This is Your Videos Channel App!!', '7843-2017-04-11.jpg'),
(29, 'This is Your Videos Channel App', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_token`
--

CREATE TABLE `tbl_fcm_token` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fcm_token`
--

INSERT INTO `tbl_fcm_token` (`id`, `token`) VALUES
(1, 'dffHw881NLc:APA91bEsmMBPN8RnIR_7ZsAmof6ydxOrxx-cPI0CvDqvuWK5XfLW-UGx9Zmf9XOqD14dv1o-5UOFfDd2uThnYZnq8XWFu4vCVn-ibMBokVu8Rds4xZOXGq5b6X44sqizULlI7QsMfFH0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_url` varchar(500) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `video_thumbnail` varchar(255) NOT NULL,
  `video_duration` varchar(255) NOT NULL,
  `video_description` text NOT NULL,
  `video_type` varchar(45) NOT NULL,
  `size` varchar(255) NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT '0',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `cat_id`, `video_title`, `video_url`, `video_id`, `video_thumbnail`, `video_duration`, `video_description`, `video_type`, `size`, `total_views`, `date_time`) VALUES
(1, 1, 'Top Funny Home Video Fails', 'https://www.youtube.com/watch?v=O3w0ALouv3E', 'O3w0ALouv3E', '', '10:20', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 1, '2018-02-12 14:01:54'),
(2, 2, 'The Amazing Spider Man 2', 'https://www.youtube.com/watch?v=o9kr9ZhydK0', 'o9kr9ZhydK0', '', '16:37', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 1, '2018-02-12 14:01:54'),
(3, 3, 'The Lucky People In the World', 'https://www.youtube.com/watch?v=tXUVOjCz83A', 'tXUVOjCz83A', '', '9:48', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 3, '2018-02-12 14:01:54'),
(4, 4, 'Satu Indonesiaku Persembahan untuk Negeri', 'https://www.youtube.com/watch?v=fcIML2MI_U0', 'fcIML2MI_U0', '', '7:18', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 6, '2018-02-12 14:01:54'),
(5, 5, 'Crazy Football High Level Skills', 'https://www.youtube.com/watch?v=jIuwP1tLRnM', 'jIuwP1tLRnM', '', '6:07', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 2, '2018-02-12 14:01:54'),
(6, 4, 'Jalani Mimpi Video Clip of Noah Band', 'https://www.youtube.com/watch?v=MhaWRStfP_c', 'MhaWRStfP_c', '', '04:02', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 6, '2018-02-12 14:01:54'),
(7, 1, 'Shreya Ghoshal Sing Rab Ne Bana Di Jodi', 'https://www.youtube.com/watch?v=i6uRxcxReP8', 'i6uRxcxReP8', '', '01:45', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 5, '2018-02-12 14:01:54'),
(8, 4, 'Tiba2 Ku Menangis - Koes Plus Live Concert', 'https://www.youtube.com/watch?v=ouV1DnL1Au4', 'ouV1DnL1Au4', '', '03:40', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 10, '2018-02-12 14:01:54'),
(9, 3, 'Top 5 most Advanced Space Technology Countries', 'https://www.youtube.com/watch?v=E-3GfI9yZOI', 'E-3GfI9yZOI', '', '02:45', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'youtube', '', 10, '2018-02-12 14:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `app_fcm_key` text NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `privacy_policy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `app_fcm_key`, `api_key`, `privacy_policy`) VALUES
(1, 'AAAAcrH-QSM:APA91bEV6O9l6EJiDQaMdpicN-6DhIUzOQB-V9QoMpnDwSzLPa195WankHIh-DRE7gFNtdm1Dq7SkZPzc0MTnrRoyuTEKHO0QZpb0oEYBGXlYW1DJIFydaIWPPS2vktuklX7knNkX0Wc', 'cda11QbXIO9Z4ly0a2khTFDPA3x6UgSVtCiYRjBqpsfL7w5neN', '<h2><strong>Privacy Policy</strong></h2>\r\n\r\n<p>This privacy policy includes all the details about the data collected in Your Videos Channel and how it&rsquo;s used.</p>\r\n\r\n<p>As a user we also do not like to give personal informations and we don&rsquo;t want to see our informations collected without knowing what will going to happen to those datas. Your Videos Channel has been alive with the support and trust of it&rsquo;s users. We want to keep the trust; you can find all the details about the data usage below.</p>\r\n\r\n<p>Your Videos Channel does collect anonymous usage data. This data does not include your original device identification numbers, your real personality or your personal data if it&rsquo;s not directly given by you in an open form.</p>\r\n\r\n<p>Your Videos Channel can not access to your real information and your purchases or any other action may not be restored without associating purchases with some information. This is why it is recommended to fill the registration form in the application. That form contains personal information which helps us contact the user easily, help quickly and solve possible licensing problems.</p>\r\n\r\n<p>Usage / interactions in the application are used to determine what stations is being listed at most and which functions attracts the most attention so we can improve those sections. This information also allows us to be able to serve better features like listing most popular stations according to a specific region.</p>\r\n\r\n<p>These datas may be used to serve additional services to 3rd parties like station statistics. NONE of these services will include sensitive information/personally identifying data if not permitted by you.</p>\r\n\r\n<p>In some cases Your Videos Channel may communicate directly with a 3rd party server to obtain latest data for display within the app (such as rss feeds, artist/song images and informations) . When this happens &ndash; we don&rsquo;t transmit any data about you or your usage to these 3rd parties except where explicitly stated. Please check these 3rd parties (where applicable) for their additional privacy policies.</p>\r\n\r\n<p><strong>Advertising Banner Privacy Policy</strong></p>\r\n\r\n<p>Your Videos Channel may display advertisements on various places in the application. This system may use and transmit basic regional/language information about you to the advertising banner system in order to provide you with relevant ads. In some cases, we may have agreements with sponsors and we may hide advertisements in that situation. Eventhough the advertisement may get hidden in that situation, we may provide similar informations to sponsors or 3rd parties.</p>\r\n\r\n<p><strong>3rd Party Content Privacy Policy</strong></p>\r\n\r\n<p>Your Videos Channel may display live web pages or images from 3rd party sources and in these cases you should read the privacy policies displayed by these websites. We use Google Image Search for some of the images related to now playing info.</p>\r\n\r\n<p><strong>Contact us</strong></p>\r\n\r\n<p>If you have any questions regarding privacy while using the Application, or have questions about our practices, please contact us via email at godev.solodroid@gmail.com</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_role` enum('100','101','102') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `user_role`) VALUES
(1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'developer.solodroid@gmail.com', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_fcm_template`
--
ALTER TABLE `tbl_fcm_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_fcm_template`
--
ALTER TABLE `tbl_fcm_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
