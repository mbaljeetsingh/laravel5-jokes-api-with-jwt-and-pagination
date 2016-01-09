-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2015 at 11:24 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jokes_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `jokes`
--

CREATE TABLE IF NOT EXISTS `jokes` (
  `id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jokes`
--

INSERT INTO `jokes` (`id`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sed non enim eveniet voluptas consequuntur labore. Voluptatum et dolor eum sint ipsam sint dolore voluptatem. Totam quis consequatur sapiente.', 1, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(2, 'Incidunt nobis dolorum eius sed ab voluptatem. Est omnis voluptatem id. Illo tempore vero molestiae dicta.', 1, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(3, 'Omnis veritatis eos dolores rerum aliquam non est laboriosam. Assumenda rerum odio est eum. Ab voluptatem voluptatem magni nemo. In voluptates sapiente tempora id accusamus dolores praesentium.', 1, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(4, 'Et eius officia reiciendis dolor consequatur. Voluptatem nostrum magni sit et soluta. Vel ratione placeat repellendus fugit.', 4, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(5, 'Eos molestias explicabo repellendus doloremque ipsam. Aut repudiandae qui minima animi inventore et. Corrupti nemo temporibus explicabo quis. Non provident quas quia beatae.', 4, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(6, 'Sed voluptatem impedit iusto totam. Ab autem omnis distinctio. Atque dolorem expedita voluptatum illum sint. Et ipsa iste ut corrupti debitis veniam accusantium.', 2, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(7, 'Sed consequuntur iusto dolores assumenda. Eos enim quo voluptas impedit. Tempore ea commodi est esse dolor et voluptatibus sit.', 4, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(8, 'Voluptatem dolorem sit facere soluta dolorum. Tempora labore quia ut accusantium. Qui ut qui eligendi.', 2, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(9, 'Laboriosam voluptatem aspernatur ipsum tenetur. Dolorem doloremque iusto dolorem ipsam enim reprehenderit. Necessitatibus modi quo voluptatem eaque eaque aut rerum. Omnis hic praesentium asperiores dolorum eveniet corrupti quo consequatur.', 5, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(10, 'Qui ullam voluptatem debitis alias tempora esse. Rerum id rerum quos quod natus recusandae omnis. Necessitatibus tenetur necessitatibus harum modi earum.', 1, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(11, 'Et amet aliquam est ex expedita eos fugit. Sed qui voluptas deserunt est labore non quod officiis. Voluptatem blanditiis at sit dolorem. Nihil nostrum dolores non quasi quos error.', 3, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(12, 'Omnis in magnam voluptas officiis. Animi labore cumque similique minima eligendi sit. Harum id et ipsa ad dolorem non.', 4, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(13, 'Laudantium et molestias odit dignissimos. Iusto quia in quis temporibus. Quia dolorum et non laboriosam aut temporibus aliquid. Id alias in eum blanditiis nam.', 3, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(14, 'Consectetur sit nam ut in harum cum. Reiciendis delectus sunt quia repellendus et quis. Quia aliquam ab et eum.', 2, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(15, 'Accusantium sed aut veniam natus. Corrupti iure facilis magni animi minus consectetur. Quae optio nisi dolorum.', 1, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(16, 'Vero impedit voluptatem quas repellendus voluptatum dolorem. Saepe et molestiae debitis hic tempore. Rem impedit nulla aut consequatur voluptate possimus. Et tenetur porro magnam quidem error vitae dignissimos.', 4, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(17, 'Ut neque nesciunt excepturi soluta unde aliquam qui. Saepe debitis sunt id voluptatum voluptatibus. Autem impedit id quia ducimus. Quisquam qui vel voluptas nemo ex.', 5, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(18, 'Nostrum quis est repudiandae quibusdam rem. Possimus nostrum doloremque fugit rerum unde aspernatur corrupti. Ex voluptate eum et ducimus a saepe. In similique aliquam eveniet quam totam et soluta.', 1, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(19, 'Est vitae dolorem est. Voluptatem quasi incidunt quis eius laboriosam rerum dolorum. Illo voluptatum vel totam fuga expedita consequuntur. Tempora eius blanditiis ipsam et aperiam facere ut.', 1, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(20, 'Vitae ratione aut atque assumenda. Consequatur rerum iste animi a. Ipsum iure eum et quis. Autem voluptatum saepe temporibus nemo et voluptas.', 4, '2015-09-25 00:08:28', '2015-09-25 00:08:28'),
(21, 'Sed rerum magnam inventore consequuntur. Autem aperiam ut ea tempore. Excepturi in architecto voluptatem.', 4, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(22, 'Beatae atque laudantium soluta quia eius nihil reprehenderit. Dolor et perferendis labore nulla incidunt. Consequatur commodi autem ab nisi et natus. Sit ducimus atque expedita et pariatur.', 2, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(23, 'Architecto laboriosam autem ut adipisci numquam vel. Eligendi quaerat quaerat maiores ut. Earum eaque cupiditate maxime ut.', 5, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(24, 'Cumque occaecati sunt saepe et. Non totam inventore sit qui. Nisi ut iste doloribus sed ab corporis recusandae. Sint nihil quisquam est animi quo.', 1, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(25, 'Recusandae enim voluptatem voluptatem culpa. Quibusdam deserunt magni eos a quia. Aperiam alias aut ut possimus sapiente quis tempora. Et harum repellendus in.', 1, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(26, 'Labore ut qui voluptas commodi laboriosam ab commodi vel. Quidem possimus vel nam minima ut velit. Pariatur itaque sed voluptatem necessitatibus saepe qui.', 2, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(27, 'Non aspernatur eveniet amet temporibus non doloribus dolorem fugit. Ut odit delectus soluta pariatur et et. Beatae doloribus aut veritatis sunt rem vel est. Molestiae consequuntur sit est omnis aut. Eaque aut perspiciatis molestiae aperiam nisi repellat minima et.', 4, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(28, 'Eos pariatur repellat nisi nulla dolorem ex rerum nulla. Hic voluptas optio id illum aspernatur voluptatem ducimus. Aliquid aut eos fugiat ut ullam.', 3, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(29, 'Expedita ea quam ut dolor aliquid recusandae natus. Qui velit mollitia laudantium modi beatae. Commodi aspernatur est quam.', 4, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(30, 'Et dolores inventore sed aliquam quam libero. Ab nostrum sit nisi illum. Omnis iure corporis est ducimus iste. Qui blanditiis necessitatibus dolorum et magni est eligendi.', 3, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(31, 'This is the new joke', 1, '2015-09-25 03:11:37', '2015-09-25 03:11:37'),
(32, 'This is the new joke', 1, '2015-09-25 11:49:59', '2015-09-25 11:49:59'),
(33, 'This is the new jokesdfsdfsd', 1, '2015-09-25 11:59:40', '2015-09-25 11:59:40'),
(35, 'This is the new body from the angular', 1, '2015-09-29 11:06:41', '2015-09-29 11:06:41'),
(36, 'My new title', 0, '2015-09-29 11:14:49', '2015-09-29 11:14:49'),
(37, 'This is from the angular part', 2, '2015-09-30 02:57:32', '2015-09-30 02:57:32'),
(38, 'This is from the angular part', 2, '2015-09-30 10:03:29', '2015-09-30 10:03:29'),
(39, 'This is from the ng ng ng part', 2, '2015-09-30 10:04:05', '2015-09-30 10:04:05'),
(40, 'This is after basic auth part', 2, '2015-09-30 10:20:46', '2015-09-30 10:20:46'),
(41, 'This is after basic auth part', 2, '2015-09-30 10:32:44', '2015-09-30 10:32:44'),
(42, 'THis is the new jokeu (updated)', 1, '2015-10-27 02:01:24', '2015-10-27 02:03:12');

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
('2015_09_25_044024_create_jokes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Baljeet Singh', 'bsinghs.007@gmail.com', '$2y$10$8SsLf9Q24q0F8f7JYt8LrOUxQOrOzlpJyHWSQWBINirGA.LDWE1oG', NULL, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(2, 'Cletus.Hilpert', 'hDietrich@hotmail.com', '$2y$10$s.HKPTWzz35VZEERY6Oz4uNI4VVbXu6QVVxmAeon21GrZUOcKnHx6', NULL, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(3, 'Brandyn72', 'Gage.Koss@Cormier.com', '$2y$10$6kNMh53biLhwfx3rVdRmi.5z64QDFfhUjYPtuA1eGlKR2SrOY1Ozi', NULL, '2015-09-25 00:08:29', '2015-09-25 00:08:29'),
(4, 'Percival.Fritsch', 'Laron79@Altenwerth.org', '$2y$10$uD.jSh/MfC2aCvUKPU.QzeJiebcQDZSHl3NxOdvE8.LvogWWDnfGK', NULL, '2015-09-25 00:08:30', '2015-09-25 00:08:30'),
(5, 'Avis.Hamill', 'Abbott.Gilbert@yahoo.com', '$2y$10$c.MGP0DM3Ujvyf5JFJceT.5pOW6WEBhQI/C0APiec.zFQo81NTchy', NULL, '2015-09-25 00:08:30', '2015-09-25 00:08:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jokes`
--
ALTER TABLE `jokes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jokes`
--
ALTER TABLE `jokes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
