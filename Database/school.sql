-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 02:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"school\",\"table\":\"users_staff\"},{\"db\":\"school\",\"table\":\"users_attendancereport\"},{\"db\":\"school\",\"table\":\"users_admin\"},{\"db\":\"school\",\"table\":\"users_user_user_permissions\"},{\"db\":\"school\",\"table\":\"users_session\"},{\"db\":\"school\",\"table\":\"users_student\"},{\"db\":\"school\",\"table\":\"users_studentresult\"},{\"db\":\"school\",\"table\":\"users_user\"},{\"db\":\"school\",\"table\":\"users_attendance\"},{\"db\":\"school\",\"table\":\"users_course\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-11 12:56:53', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add attendance', 7, 'add_attendance'),
(26, 'Can change attendance', 7, 'change_attendance'),
(27, 'Can delete attendance', 7, 'delete_attendance'),
(28, 'Can view attendance', 7, 'view_attendance'),
(29, 'Can add course', 8, 'add_course'),
(30, 'Can change course', 8, 'change_course'),
(31, 'Can delete course', 8, 'delete_course'),
(32, 'Can view course', 8, 'view_course'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session'),
(37, 'Can add staff', 10, 'add_staff'),
(38, 'Can change staff', 10, 'change_staff'),
(39, 'Can delete staff', 10, 'delete_staff'),
(40, 'Can view staff', 10, 'view_staff'),
(41, 'Can add unit', 11, 'add_unit'),
(42, 'Can change unit', 11, 'change_unit'),
(43, 'Can delete unit', 11, 'delete_unit'),
(44, 'Can view unit', 11, 'view_unit'),
(45, 'Can add student', 12, 'add_student'),
(46, 'Can change student', 12, 'change_student'),
(47, 'Can delete student', 12, 'delete_student'),
(48, 'Can view student', 12, 'view_student'),
(49, 'Can add attendance report', 13, 'add_attendancereport'),
(50, 'Can change attendance report', 13, 'change_attendancereport'),
(51, 'Can delete attendance report', 13, 'delete_attendancereport'),
(52, 'Can view attendance report', 13, 'view_attendancereport'),
(53, 'Can add admin', 14, 'add_admin'),
(54, 'Can change admin', 14, 'change_admin'),
(55, 'Can delete admin', 14, 'delete_admin'),
(56, 'Can view admin', 14, 'view_admin'),
(57, 'Can add student result', 15, 'add_studentresult'),
(58, 'Can change student result', 15, 'change_studentresult'),
(59, 'Can delete student result', 15, 'delete_studentresult'),
(60, 'Can view student result', 15, 'view_studentresult');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(14, 'users', 'admin'),
(7, 'users', 'attendance'),
(13, 'users', 'attendancereport'),
(8, 'users', 'course'),
(9, 'users', 'session'),
(10, 'users', 'staff'),
(12, 'users', 'student'),
(15, 'users', 'studentresult'),
(11, 'users', 'unit'),
(6, 'users', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-13 21:48:38.889545'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-02-13 21:48:38.950560'),
(3, 'auth', '0001_initial', '2023-02-13 21:48:39.177159'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-02-13 21:48:39.233446'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-02-13 21:48:39.244878'),
(6, 'auth', '0004_alter_user_username_opts', '2023-02-13 21:48:39.253271'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-02-13 21:48:39.262653'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-02-13 21:48:39.266322'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-02-13 21:48:39.276216'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-02-13 21:48:39.284521'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-02-13 21:48:39.294978'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-02-13 21:48:39.314257'),
(13, 'auth', '0011_update_proxy_permissions', '2023-02-13 21:48:39.325988'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-02-13 21:48:39.334243'),
(15, 'users', '0001_initial', '2023-02-13 21:48:40.392004'),
(16, 'admin', '0001_initial', '2023-02-13 21:48:40.527013'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-02-13 21:48:40.546201'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-13 21:48:40.563746'),
(19, 'sessions', '0001_initial', '2023-02-13 21:48:40.600388'),
(20, 'users', '0002_studentresult', '2023-02-13 21:48:40.751370'),
(21, 'users', '0003_studentresult_total_marks', '2023-02-13 21:48:40.793819');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3sie1gns3pmdjyxfg6ic3yselbkdl0uu', '.eJxVjEEOwiAQRe_C2pAyFASX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERRpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7fOWVnFcGYccYijTp4skHfMBrRj0k5RzMoYyASQvB0zoh4iQrRslBHvD_mZOFc:1pooku:dnXzI_RqIJOc00eArbwZZOasPqrqhnddjs5FgOZcOxk', '2023-05-02 17:04:36.757134'),
('70f3w5ebjdi0man803birrqtw7wl42tn', 'e30:1pWJDg:gGwM0-cHdtnxO-fpNvWeGJn8-T9lqeT-Xcr5N6Dw1DI', '2023-03-12 15:45:48.040670'),
('9y2i6fqqaejanzeuhxlmaft5ork1u28f', '.eJxVjMsOwiAQRf-FtSGlPKa4dO83kBkYpGogKe3K-O_apAvd3nPOfYmA21rC1nkJcxJnYcTpdyOMD647SHestyZjq-syk9wVedAury3x83K4fwcFe_nWnnMiq2mkcYqG2WmP3qUIEIcM5JCiJ2UGREACcBZVTpNhq1X2ToF4fwARFTig:1px5nb:BFOr4mG6NpssaRmh4VBfPR4F56ljeQPpA86DhjSGLt0', '2023-05-25 12:53:35.369354'),
('c0mn90cc8iln8f5u5temy4dho8pl8wi8', '.eJxVjEEOwiAQRe_C2pAyFASX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERRpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7fOWVnFcGYccYijTp4skHfMBrRj0k5RzMoYyASQvB0zoh4iQrRslBHvD_mZOFc:1pgTqQ:ytgcCoGkETkQCgfDgySiohB3GV0IWp1SKI9Q10oqvgg', '2023-04-09 17:07:50.682793'),
('k3syhkhh3275zqhpdg7nd9ordu99tvrp', '.eJxVjDsOwjAQRO_iGlnGf1PScwZr17vGAZRIcVIh7k4ipYBuNO_NvEWGdWl57TzngcRFaHH67RDKk8cd0APG-yTLNC7zgHJX5EG7vE3Er-vh_h006G1bcyRSwadKLrmC1RmLVhOwT9EjGKxk2QRwoIzSpGO0wQb2W8Qaw1l8vvvxOBQ:1ps0h5:lLRzbTEGNvFIY_fpMav42-PG1ZohrCu3tDxZslGRWHw', '2023-05-11 12:25:51.764050'),
('m5j6p724nbmoz4a71qn93x6bv4sfsuz2', '.eJxVjEEOwiAQRe_C2pAyFASX7nsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3ERRpx-t4j04LqDdMd6a5JaXZc5yl2RB-1yaomf18P9OyjYy7fOWVnFcGYccYijTp4skHfMBrRj0k5RzMoYyASQvB0zoh4iQrRslBHvD_mZOFc:1pXdQM:3-i0vpeDRp19mB-ucYkZwdmHDCiCcBCqTfQWC_8hqmY', '2023-03-16 07:32:22.620147'),
('z912l31mnl0z5goxkcvvemjpnuuwylfb', 'e30:1pWJDs:XOqCBYskblQc0WeMgQnngEC_mp6GSjj0ii-3T_oSmmY', '2023-03-12 15:46:00.168365');

-- --------------------------------------------------------

--
-- Table structure for table `users_admin`
--

CREATE TABLE `users_admin` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_attendance`
--

CREATE TABLE `users_attendance` (
  `id` bigint(20) NOT NULL,
  `attendance_date` varchar(30) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `session_id` bigint(20) NOT NULL,
  `unit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_attendance`
--

INSERT INTO `users_attendance` (`id`, `attendance_date`, `created_at`, `updated_at`, `session_id`, `unit_id`) VALUES
(1, '2022-09-09', '2023-02-26 16:04:24.674688', '2023-02-26 16:04:24.674688', 1, 2),
(2, '2023-03-14', '2023-04-17 17:21:25.069531', '2023-04-17 17:21:25.069531', 1, 1),
(3, '2023-02-17', '2023-04-17 17:24:27.880438', '2023-04-17 17:24:27.880438', 1, 1),
(4, '2023-02-10', '2023-04-17 17:26:20.273890', '2023-04-17 17:26:20.273890', 1, 1),
(5, '2023-02-17', '2023-04-17 17:27:43.788640', '2023-04-17 17:27:43.788640', 1, 1),
(6, '2023-02-11', '2023-04-17 17:29:05.243367', '2023-04-17 17:29:05.243367', 1, 1),
(7, '2023-02-08', '2023-04-17 17:43:37.747111', '2023-04-17 17:43:37.747111', 1, 2),
(8, '2022-07-14', '2023-04-17 18:05:35.658431', '2023-04-17 18:05:35.658431', 1, 2),
(9, '2022-11-18', '2023-04-18 17:15:07.589117', '2023-04-18 17:15:07.589117', 1, 2),
(10, '2022-11-18', '2023-04-18 17:26:02.274920', '2023-04-18 17:26:02.274920', 1, 2),
(11, '2022-09-18', '2023-04-18 17:30:19.485124', '2023-04-18 17:30:19.485124', 1, 2),
(12, '2023-02-22', '2023-04-22 13:54:38.265291', '2023-04-22 13:54:38.265291', 2, 2),
(13, '2022-12-13', '2023-04-26 15:47:45.817176', '2023-04-26 15:47:45.817176', 2, 3),
(14, '2023-03-26', '2023-04-26 15:52:58.279531', '2023-04-26 15:52:58.279531', 2, 1),
(15, '2023-03-26', '2023-04-26 16:22:35.377344', '2023-04-26 16:22:35.377344', 1, 2),
(16, '2023-02-27', '2023-04-27 06:47:50.732759', '2023-04-27 06:47:50.732759', 2, 2),
(17, '2023-02-27', '2023-04-27 07:10:36.110596', '2023-04-27 07:10:36.110596', 1, 2),
(18, '2022-10-27', '2023-04-27 07:16:07.335246', '2023-04-27 07:16:07.335246', 1, 4),
(19, '2023-02-27', '2023-04-27 08:50:09.009296', '2023-04-27 08:50:09.009296', 1, 4),
(20, '2023-02-27', '2023-04-27 10:06:31.614858', '2023-04-27 10:06:31.614858', 1, 2),
(21, '2023-03-27', '2023-04-27 12:17:44.553367', '2023-04-27 12:17:44.553367', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_attendancereport`
--

CREATE TABLE `users_attendancereport` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_attendancereport`
--

INSERT INTO `users_attendancereport` (`id`, `status`, `created_at`, `updated_at`, `attendance_id`, `student_id`) VALUES
(1, 1, '2023-02-26 16:04:24.690760', '2023-02-26 16:04:24.690760', 1, 1),
(2, 1, '2023-04-18 17:15:11.176514', '2023-04-18 17:15:11.176514', 9, 1),
(3, 1, '2023-04-18 17:26:08.506288', '2023-04-18 17:26:08.506288', 10, 1),
(4, 1, '2023-04-18 17:30:22.946190', '2023-04-18 17:30:22.946190', 11, 1),
(5, 1, '2023-04-22 13:54:42.038384', '2023-04-22 13:54:42.038384', 12, 2),
(6, 1, '2023-04-26 15:47:50.589716', '2023-04-26 15:47:50.589716', 13, 2),
(7, 1, '2023-04-26 15:53:03.019204', '2023-04-26 15:53:03.019204', 14, 2),
(8, 1, '2023-04-26 16:22:40.852078', '2023-04-26 16:22:40.852078', 15, 1),
(9, 1, '2023-04-27 06:47:53.611119', '2023-04-27 06:47:53.611119', 16, 2),
(10, 1, '2023-04-27 07:10:38.931171', '2023-04-27 07:10:38.931171', 17, 1),
(11, 1, '2023-04-27 07:16:10.213870', '2023-04-27 07:16:10.213870', 18, 1),
(12, 1, '2023-04-27 08:50:12.704244', '2023-04-27 08:50:12.704244', 19, 1),
(13, 1, '2023-04-27 10:06:35.600451', '2023-04-27 10:06:35.600451', 20, 3),
(14, 1, '2023-04-27 12:17:48.279743', '2023-04-27 12:17:48.279743', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_course`
--

CREATE TABLE `users_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_course`
--

INSERT INTO `users_course` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor of Science computer science', '2023-02-13 22:40:59.513002', '2023-02-13 22:42:12.175155');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `name`, `start`, `end`) VALUES
(1, '2022-2023', '2023-01-09', '2023-04-30'),
(2, 'Academic Year 2', '2022-09-06', '2023-04-15'),
(3, 'Academic Year 1', '2019-09-06', '2020-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `users_staff`
--

CREATE TABLE `users_staff` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_staff`
--

INSERT INTO `users_staff` (`id`, `gender`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'female', '2023-02-13 22:47:15.259580', '2023-02-13 22:47:15.259580', 2),
(2, 'male', '2023-02-26 15:55:31.475208', '2023-02-26 15:55:31.475208', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users_student`
--

CREATE TABLE `users_student` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `year_of_study` varchar(5) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `session_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_student`
--

INSERT INTO `users_student` (`id`, `gender`, `year_of_study`, `created_at`, `updated_at`, `course_id`, `session_id`, `user_id`) VALUES
(1, 'female', 'IV', '2023-02-13 22:57:00.330210', '2023-02-13 22:57:00.330210', 1, 1, 3),
(2, 'female', 'II', '2023-04-17 17:53:02.564682', '2023-04-17 17:53:02.564682', 1, 2, 6),
(3, 'male', 'IV', '2023-04-27 10:05:23.633724', '2023-04-27 10:05:23.633724', 1, 1, 8),
(4, 'male', 'III', '2023-04-27 12:20:32.743426', '2023-04-27 12:20:32.743426', 1, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users_studentresult`
--

CREATE TABLE `users_studentresult` (
  `id` int(11) NOT NULL,
  `unit_exam_marks` double NOT NULL,
  `unit_assignment_marks` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `unit_id` bigint(20) NOT NULL,
  `total_marks` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_studentresult`
--

INSERT INTO `users_studentresult` (`id`, `unit_exam_marks`, `unit_assignment_marks`, `created_at`, `updated_at`, `student_id`, `unit_id`, `total_marks`) VALUES
(1, 34, 12, '2023-02-26 16:00:40.811469', '2023-04-27 07:10:14.331176', 1, 2, 0),
(2, 30, 22, '2023-04-22 13:54:00.950892', '2023-04-22 13:54:00.950892', 2, 3, 0),
(3, 30, 22, '2023-04-22 13:54:02.918141', '2023-04-22 13:54:02.918141', 2, 3, 0),
(4, 35, 12, '2023-04-26 15:47:22.021576', '2023-04-27 06:47:27.786360', 2, 2, 0),
(5, 55, 12, '2023-04-26 15:52:00.369803', '2023-04-27 12:17:21.960750', 1, 1, 0),
(6, 38, 12, '2023-04-27 07:15:37.168264', '2023-04-27 08:49:27.953216', 1, 4, 0),
(7, 50, 14, '2023-04-27 10:07:04.591448', '2023-04-27 10:07:04.592445', 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_unit`
--

CREATE TABLE `users_unit` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `staff_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_unit`
--

INSERT INTO `users_unit` (`id`, `name`, `created_at`, `updated_at`, `course_id`, `staff_id`) VALUES
(1, 'operating system', '2023-02-13 22:48:53.372450', '2023-02-13 22:48:53.372450', 1, 1),
(2, 'Computer networks', '2023-02-26 15:56:27.923535', '2023-02-26 15:56:27.923535', 1, 2),
(3, 'Web Development', '2023-02-26 15:58:10.358786', '2023-02-26 15:58:10.358786', 1, 2),
(4, 'Information security', '2023-04-17 17:47:30.573702', '2023-04-17 17:47:30.573702', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  `is_parent` tinyint(1) NOT NULL,
  `is_lecturer` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `date_registered` datetime(6) NOT NULL,
  `date_updated` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `role` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `email`, `first_name`, `last_name`, `is_admin`, `is_staff`, `is_student`, `is_parent`, `is_lecturer`, `is_superuser`, `date_registered`, `date_updated`, `last_login`, `is_active`, `role`) VALUES
(1, 'pbkdf2_sha256$320000$sXcJox4mURchpxKV0ri5C6$gefUjpjQgn6tWf4vbvtZ+pV/SJc2A72MiGp21W4pvFA=', 'jennachrisbrandy@gmail.com', 'Christopher', 'Bolo', 1, 1, 0, 0, 0, 1, '2023-02-13 21:56:32.781890', '2023-02-13 21:56:32.781890', '2023-02-13 22:10:39.542785', 1, 'is_admin'),
(2, 'pbkdf2_sha256$320000$2pMXKVfJZYDhwRUUWvwh5t$S43fKa9fjnnm0LYM4NLxrpbKmvVRf5V2IbrGcqgTMhk=', 'madamlimo@gmail.com', 'staff', 'staff', 0, 0, 0, 0, 1, 0, '2023-02-13 22:47:15.231828', '2023-02-13 22:47:15.231828', '2023-05-11 12:52:50.630432', 1, 'is_lecturer'),
(3, 'pbkdf2_sha256$320000$ebUmp78YDRtkEhB38G2vEb$d3NGSTGNxseoxJ2DKmeAKKQvWlEBwXKXrDqu9IolRWg=', 'miriamrehema@gmail.com', 'Miriam', 'Ombati', 0, 0, 1, 0, 0, 0, '2023-02-13 22:57:00.300168', '2023-02-13 22:57:00.300168', '2023-04-27 12:16:14.766892', 1, 'is_student'),
(4, 'pbkdf2_sha256$320000$R6jl2FiVwMcy5s8zbp7mtq$SY4kHzYyLloIwjVMQZuOCpYKSDtzyR8fP0L0OBQfIw4=', 'admin@gmail.com', 'admin', 'admin', 1, 1, 0, 0, 0, 1, '2023-02-26 15:51:46.625657', '2023-02-26 15:51:46.625657', '2023-05-11 12:53:35.364341', 1, 'is_admin'),
(5, 'pbkdf2_sha256$320000$vMcueatvjaTTtKovKieUs1$i9juxqIaxbJHOBmUm4IFLnqavmivXL/jgU7LBhoDfMA=', 'staff@gmail.com', 'John', 'Mbogholi', 0, 0, 0, 0, 1, 0, '2023-02-26 15:55:31.443077', '2023-02-26 15:55:31.443077', '2023-04-27 12:00:00.014739', 1, 'is_lecturer'),
(6, 'pbkdf2_sha256$320000$OFhLG8jcYoqYDQD98gqzCl$uvqv5PB8KD8/siPth212BZUSU+GQKyPVWDPN2nWQ5o8=', 'yvettenyambura@gmail.com', 'Yvette', 'Nyambura', 0, 0, 1, 0, 0, 0, '2023-04-17 17:53:02.533589', '2023-04-17 17:53:02.533589', '2023-04-27 07:16:44.795375', 1, 'is_student'),
(7, 'pbkdf2_sha256$320000$wG46KwBFeQWsK3U5a47A6M$kv99vrZ5VERNxNLEghu8t1U+2VDFXz1DxiVbbJkbnp0=', 'arnold@gmail.com', 'arnold', 'peter', 1, 1, 0, 0, 0, 1, '2023-04-27 08:45:03.177307', '2023-04-27 08:45:03.177307', '2023-04-27 08:45:03.177307', 1, 'is_admin'),
(8, 'pbkdf2_sha256$320000$wKoXS7Rr5aoq8MMUU6vIYD$Q1tl+oeOHakaVdnJOGvi/w5LgtLV65GiXpwAVeD2OGw=', 'bolo@gmail.com', 'Christopher', 'Bolo', 0, 0, 1, 0, 0, 0, '2023-04-27 10:05:23.607099', '2023-04-27 10:05:23.607099', '2023-04-27 10:05:23.607099', 1, 'is_student'),
(9, 'pbkdf2_sha256$320000$ztoEqV1oFqVGdaXJDs7xQP$Xve/CBMJOtiVvHSM1f7m7JsUBPIwaJyLFdiwqtg8ff8=', 'joe@gmail.com', 'john', 'doe', 0, 0, 1, 0, 0, 0, '2023-04-27 12:20:32.714114', '2023-04-27 12:20:32.714114', '2023-04-27 12:20:32.714114', 1, 'is_student');

-- --------------------------------------------------------

--
-- Table structure for table `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `users_admin`
--
ALTER TABLE `users_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users_attendance`
--
ALTER TABLE `users_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_attendance_session_id_4549ecc1_fk_users_session_id` (`session_id`),
  ADD KEY `users_attendance_unit_id_a68f4021_fk_users_unit_id` (`unit_id`);

--
-- Indexes for table `users_attendancereport`
--
ALTER TABLE `users_attendancereport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_attendancerepo_attendance_id_d474f2d3_fk_users_att` (`attendance_id`),
  ADD KEY `users_attendancereport_student_id_082e7ae5_fk_users_student_id` (`student_id`);

--
-- Indexes for table `users_course`
--
ALTER TABLE `users_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_staff`
--
ALTER TABLE `users_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users_student`
--
ALTER TABLE `users_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `users_student_course_id_21db7b69_fk_users_course_id` (`course_id`),
  ADD KEY `users_student_session_id_ef85b875_fk_users_session_id` (`session_id`);

--
-- Indexes for table `users_studentresult`
--
ALTER TABLE `users_studentresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_studentresult_student_id_8145fde1_fk_users_student_id` (`student_id`),
  ADD KEY `users_studentresult_unit_id_eb9b0a1c_fk_users_unit_id` (`unit_id`);

--
-- Indexes for table `users_unit`
--
ALTER TABLE `users_unit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `users_unit_course_id_7d5ae89b_fk_users_course_id` (`course_id`),
  ADD KEY `users_unit_staff_id_5500abf1_fk_users_staff_id` (`staff_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_admin`
--
ALTER TABLE `users_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_attendance`
--
ALTER TABLE `users_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_attendancereport`
--
ALTER TABLE `users_attendancereport`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_course`
--
ALTER TABLE `users_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_staff`
--
ALTER TABLE `users_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_student`
--
ALTER TABLE `users_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_studentresult`
--
ALTER TABLE `users_studentresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_unit`
--
ALTER TABLE `users_unit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_admin`
--
ALTER TABLE `users_admin`
  ADD CONSTRAINT `users_admin_user_id_a330be1e_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_attendance`
--
ALTER TABLE `users_attendance`
  ADD CONSTRAINT `users_attendance_session_id_4549ecc1_fk_users_session_id` FOREIGN KEY (`session_id`) REFERENCES `users_session` (`id`),
  ADD CONSTRAINT `users_attendance_unit_id_a68f4021_fk_users_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `users_unit` (`id`);

--
-- Constraints for table `users_attendancereport`
--
ALTER TABLE `users_attendancereport`
  ADD CONSTRAINT `users_attendancerepo_attendance_id_d474f2d3_fk_users_att` FOREIGN KEY (`attendance_id`) REFERENCES `users_attendance` (`id`),
  ADD CONSTRAINT `users_attendancereport_student_id_082e7ae5_fk_users_student_id` FOREIGN KEY (`student_id`) REFERENCES `users_student` (`id`);

--
-- Constraints for table `users_staff`
--
ALTER TABLE `users_staff`
  ADD CONSTRAINT `users_staff_user_id_3631488f_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_student`
--
ALTER TABLE `users_student`
  ADD CONSTRAINT `users_student_course_id_21db7b69_fk_users_course_id` FOREIGN KEY (`course_id`) REFERENCES `users_course` (`id`),
  ADD CONSTRAINT `users_student_session_id_ef85b875_fk_users_session_id` FOREIGN KEY (`session_id`) REFERENCES `users_session` (`id`),
  ADD CONSTRAINT `users_student_user_id_dc59cd64_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_studentresult`
--
ALTER TABLE `users_studentresult`
  ADD CONSTRAINT `users_studentresult_student_id_8145fde1_fk_users_student_id` FOREIGN KEY (`student_id`) REFERENCES `users_student` (`id`),
  ADD CONSTRAINT `users_studentresult_unit_id_eb9b0a1c_fk_users_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `users_unit` (`id`);

--
-- Constraints for table `users_unit`
--
ALTER TABLE `users_unit`
  ADD CONSTRAINT `users_unit_course_id_7d5ae89b_fk_users_course_id` FOREIGN KEY (`course_id`) REFERENCES `users_course` (`id`),
  ADD CONSTRAINT `users_unit_staff_id_5500abf1_fk_users_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `users_staff` (`id`);

--
-- Constraints for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
