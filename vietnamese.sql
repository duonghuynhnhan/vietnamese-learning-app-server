-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.2
-- Generation Time: Nov 08, 2023 at 02:13 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietnamese`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deletedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `fullName`, `email`, `dob`, `gender`, `phone`, `password`, `role`, `avatar`, `createdAt`, `updatedAt`, `deletedAt`, `countryId`) VALUES
('954a4a66-18ef-4b12-8f16-c301234e0fae', 'admin', 'Admin', 'duonghuynhnhan@outlook.com', '2001-04-26T00:00:00.000Z', 'Male', '0354984001', '$2a$12$H2q/2zRPJeIs71GvHnNd1OEnw2WXjNzT6WrVJ7Fr0/62u.uIT/Szu', 'Admin', NULL, '2023-10-19T07:12:21.240Z', NULL, NULL, 'VN'),
('ca09078a-3677-488c-a49c-d2144f79537e', 'duonghuynhnhan@outlook.com', 'Kevin Duong', 'duonghuynhnhan@outlook.com', '2001-04-26T00:00:00.000Z', 'Nam', '0354984001', '$2b$10$3Ak454bBKWQ2oWmMkgJBPeeN7SrfiQKAymmYZQ0oOGhhJB4kipgyS', 'User', '0c0d2abf-9e2d-4eed-97b6-8320019c1479', '2023-10-20T09:33:29.597Z', NULL, NULL, 'VN'),
('e7f00e30-5669-4f07-bfea-a0cffad9427e', 'hokimngan@gmail.com', 'Ho Kim Ngan', 'hokimngan@gmail.com', '2001-10-22T00:00:00.000Z', 'Nữ', '0907113973', '$2b$10$8OxvMgprZdlGPjFeX71EU.jd8/nY8dChlSrAhULdMBYuZq83FiSZi', 'User', 'b033d624-72e9-4e89-93e4-8b04e19e5d2a', '2023-10-20T09:58:41.719Z', NULL, NULL, 'VN');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deletedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `nameEN`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
('AD', 'Andorra', 'Andorra', NULL, NULL, NULL),
('AE', 'Các tiểu vương quốc Ả Rập thống nhất', 'United Arab Emirates', NULL, NULL, NULL),
('AF', 'Afghanistan', 'Afghanistan', NULL, NULL, NULL),
('AG', 'Antigua và Barbuda', 'Antigua and Barbuda', NULL, NULL, NULL),
('AI', 'Anguilla', 'Anguilla', NULL, NULL, NULL),
('AL', 'Albania', 'Albania', NULL, NULL, NULL),
('AM', 'Armenia', 'Armenia', NULL, NULL, NULL),
('AN', 'Antille thuộc Hà Lan', 'Netherlands Antilles', NULL, NULL, NULL),
('AO', 'Angola', 'Angola', NULL, NULL, NULL),
('AQ', 'Nam Cực', 'Antarctica', NULL, NULL, NULL),
('AR', 'Argentina', 'Argentina', NULL, NULL, NULL),
('AS', 'Samoa thuộc Mỹ', 'American Samoa', NULL, NULL, NULL),
('AT', 'Áo', 'Austria', NULL, NULL, NULL),
('AU', 'Úc', 'Australia', NULL, NULL, NULL),
('AW', 'Aruba', 'Aruba', NULL, NULL, NULL),
('AZ', 'Azerbaijan', 'Azerbaijan', NULL, NULL, NULL),
('BA', 'Bosnia và Herzegovina', 'Bosnia and Herzegovina', NULL, NULL, NULL),
('BB', 'Barbados', 'Barbados', NULL, NULL, NULL),
('BD', 'Bangladesh', 'Bangladesh', NULL, NULL, NULL),
('BE', 'Bỉ', 'Belgium', NULL, NULL, NULL),
('BF', 'Burkina Faso', 'Burkina Faso', NULL, NULL, NULL),
('BG', 'Bulgaria', 'Bulgaria', NULL, NULL, NULL),
('BH', 'Bahrain', 'Bahrain', NULL, NULL, NULL),
('BI', 'Burundi', 'Burundi', NULL, NULL, NULL),
('BJ', 'Benin', 'Benin', NULL, NULL, NULL),
('BM', 'Bermuda', 'Bermuda', NULL, NULL, NULL),
('BN', 'Brunei Darussalam', 'Brunei Darussalam', NULL, NULL, NULL),
('BO', 'Bolivia', 'Bolivia', NULL, NULL, NULL),
('BR', 'Brazil', 'Brazil', NULL, NULL, NULL),
('BS', 'Bahamas', 'Bahamas', NULL, NULL, NULL),
('BT', 'Bhutan', 'Bhutan', NULL, NULL, NULL),
('BV', 'Đảo Bouvet', 'Bouvet Island', NULL, NULL, NULL),
('BW', 'Botswana', 'Botswana', NULL, NULL, NULL),
('BY', 'Belarus', 'Belarus', NULL, NULL, NULL),
('BZ', 'Belize', 'Belize', NULL, NULL, NULL),
('CA', 'Canada', 'Canada', NULL, NULL, NULL),
('CC', 'Quần đảo Cốc', 'Cocos (Keeling) Islands', NULL, NULL, NULL),
('CD', 'Cộng hòa Dân chủ Congo', 'Democratic Republic of the Congo', NULL, NULL, NULL),
('CF', 'Cộng hòa Trung Phi', 'Central African Republic', NULL, NULL, NULL),
('CG', 'Cộng hòa Congo', 'Republic of Congo', NULL, NULL, NULL),
('CH', 'Thụy Sỹ', 'Switzerland', NULL, NULL, NULL),
('CI', 'Bờ Biển Ngà', 'Ivory Coast', NULL, NULL, NULL),
('CK', 'Quần đảo Cook', 'Cook Islands', NULL, NULL, NULL),
('CL', 'Chile', 'Chile', NULL, NULL, NULL),
('CM', 'Cameroon', 'Cameroon', NULL, NULL, NULL),
('CN', 'Trung Quốc', 'China', NULL, NULL, NULL),
('CO', 'Colombia', 'Colombia', NULL, NULL, NULL),
('CR', 'Costa Rica', 'Costa Rica', NULL, NULL, NULL),
('CU', 'Cuba', 'Cuba', NULL, NULL, NULL),
('CV', 'Cape Verde', 'Cape Verde', NULL, NULL, NULL),
('CX', 'Quần đảo Christmas', 'Christmas Island', NULL, NULL, NULL),
('CY', 'Đảo Síp', 'Cyprus', NULL, NULL, NULL),
('CZ', 'Cộng hòa Séc', 'Czech Republic', NULL, NULL, NULL),
('DE', 'Đức', 'Germany', NULL, NULL, NULL),
('DJ', 'Djibouti', 'Djibouti', NULL, NULL, NULL),
('DK', 'Đan Mạch', 'Denmark', NULL, NULL, NULL),
('DM', 'Dominica', 'Dominica', NULL, NULL, NULL),
('DO', 'Cộng hòa Dominica', 'Dominican Republic', NULL, NULL, NULL),
('DZ', 'Algeria', 'Algeria', NULL, NULL, NULL),
('EC', 'Ecuador', 'Ecuador', NULL, NULL, NULL),
('EE', 'Estonia', 'Estonia', NULL, NULL, NULL),
('EG', 'Ai Cập', 'Egypt', NULL, NULL, NULL),
('EH', 'Tây Sahara', 'Western Sahara', NULL, NULL, NULL),
('ER', 'Eritrea', 'Eritrea', NULL, NULL, NULL),
('ES', 'Tây Ban Nha', 'Spain', NULL, NULL, NULL),
('ET', 'Ethiopia', 'Ethiopia', NULL, NULL, NULL),
('FI', 'Phần Lan', 'Finland', NULL, NULL, NULL),
('FJ', 'Fiji', 'Fiji', NULL, NULL, NULL),
('FK', 'Quần đảo Falkland', 'Falkland Islands (Malvinas)', NULL, NULL, NULL),
('FM', 'Micronesia', 'Micronesia, Federated States of', NULL, NULL, NULL),
('FO', 'Quần đảo Faroe', 'Faroe Islands', NULL, NULL, NULL),
('FR', 'Pháp', 'France', NULL, NULL, NULL),
('FX', 'Pháp, Metropolitan', 'France, Metropolitan', NULL, NULL, NULL),
('GA', 'Gabon', 'Gabon', NULL, NULL, NULL),
('GB', 'Vương quốc Liên hiệp Anh và Bắc Ireland', 'United Kingdom', NULL, NULL, NULL),
('GD', 'Grenada', 'Grenada', NULL, NULL, NULL),
('GE', 'Georgia', 'Georgia', NULL, NULL, NULL),
('GF', 'Guiana thuộc Pháp', 'French Guiana', NULL, NULL, NULL),
('GG', 'Guernsey', 'Guernsey', NULL, NULL, NULL),
('GH', 'Ghana', 'Ghana', NULL, NULL, NULL),
('GI', 'Gibraltar', 'Gibraltar', NULL, NULL, NULL),
('GL', 'Greenland', 'Greenland', NULL, NULL, NULL),
('GM', 'Gambia', 'Gambia', NULL, NULL, NULL),
('GN', 'Guinea', 'Guinea', NULL, NULL, NULL),
('GP', 'Guadeloupe', 'Guadeloupe', NULL, NULL, NULL),
('GQ', 'Guine Xích đạo', 'Equatorial Guinea', NULL, NULL, NULL),
('GR', 'Hi Lạp', 'Greece', NULL, NULL, NULL),
('GS', 'Quần đảo South Georgia South Sandwich', 'South Georgia South Sandwich Islands', NULL, NULL, NULL),
('GT', 'Guatemala', 'Guatemala', NULL, NULL, NULL),
('GU', 'Guam', 'Guam', NULL, NULL, NULL),
('GW', 'Guinea-Bissau', 'Guinea-Bissau', NULL, NULL, NULL),
('GY', 'Guyana', 'Guyana', NULL, NULL, NULL),
('HK', 'Hồng Kông', 'Hong Kong', NULL, NULL, NULL),
('HM', 'Quần đảo Heard and Mc Donald', 'Heard and Mc Donald Islands', NULL, NULL, NULL),
('HN', 'Honduras', 'Honduras', NULL, NULL, NULL),
('HR', 'Croatia', 'Croatia (Hrvatska)', NULL, NULL, NULL),
('HT', 'Haiti', 'Haiti', NULL, NULL, NULL),
('HU', 'Hungary', 'Hungary', NULL, NULL, NULL),
('ID', 'Indonesia', 'Indonesia', NULL, NULL, NULL),
('IE', 'Ireland', 'Ireland', NULL, NULL, NULL),
('IL', 'Israel', 'Israel', NULL, NULL, NULL),
('IM', 'Đảo Man', 'Isle of Man', NULL, NULL, NULL),
('IN', 'Ấn Độ', 'India', NULL, NULL, NULL),
('IO', 'Lãnh thổ Ấn Độ Dương thuộc Anh', 'British Indian Ocean Territory', NULL, NULL, NULL),
('IQ', 'Irag', 'Iraq', NULL, NULL, NULL),
('IR', 'Iran', 'Iran (Islamic Republic of)', NULL, NULL, NULL),
('IS', 'Iceland', 'Iceland', NULL, NULL, NULL),
('IT', 'Ý', 'Italy', NULL, NULL, NULL),
('JE', 'Jersey', 'Jersey', NULL, NULL, NULL),
('JM', 'Jamaica', 'Jamaica', NULL, NULL, NULL),
('JO', 'Jordan', 'Jordan', NULL, NULL, NULL),
('JP', 'Nhật Bản', 'Japan', NULL, NULL, NULL),
('KE', 'Kenya', 'Kenya', NULL, NULL, NULL),
('KG', 'Kyrgyzstan', 'Kyrgyzstan', NULL, NULL, NULL),
('KH', 'Campuchia', 'Cambodia', NULL, NULL, NULL),
('KI', 'Kiribati', 'Kiribati', NULL, NULL, NULL),
('KM', 'Comoros', 'Comoros', NULL, NULL, NULL),
('KN', 'Saint Kitts và Nevis', 'Saint Kitts and Nevis', NULL, NULL, NULL),
('KP', 'CHDCND Triều Tiên', 'Korea, Democratic People\'s Republic of', NULL, NULL, NULL),
('KR', 'Hàn Quốc', 'Korea, Republic of', NULL, NULL, NULL),
('KW', 'Kuwait', 'Kuwait', NULL, NULL, NULL),
('KY', 'Quần đảo Cayman', 'Cayman Islands', NULL, NULL, NULL),
('KZ', 'Kazakhstan', 'Kazakhstan', NULL, NULL, NULL),
('LA', 'Lào', 'Lao People\'s Democratic Republic', NULL, NULL, NULL),
('LB', 'Li Băng', 'Lebanon', NULL, NULL, NULL),
('LC', 'Saint Lucia', 'Saint Lucia', NULL, NULL, NULL),
('LI', 'Liechtenstein', 'Liechtenstein', NULL, NULL, NULL),
('LK', 'Sri Lanka', 'Sri Lanka', NULL, NULL, NULL),
('LR', 'Liberia', 'Liberia', NULL, NULL, NULL),
('LS', 'Lesotho', 'Lesotho', NULL, NULL, NULL),
('LT', 'Lithuania', 'Lithuania', NULL, NULL, NULL),
('LU', 'Luxembourg', 'Luxembourg', NULL, NULL, NULL),
('LV', 'Latvia', 'Latvia', NULL, NULL, NULL),
('LY', 'Li Bi', 'Libyan Arab Jamahiriya', NULL, NULL, NULL),
('MA', 'Ma Rốc', 'Morocco', NULL, NULL, NULL),
('MC', 'Monaco', 'Monaco', NULL, NULL, NULL),
('MD', 'Moldova', 'Moldova, Republic of', NULL, NULL, NULL),
('ME', 'Montenegro', 'Montenegro', NULL, NULL, NULL),
('MG', 'Madagascar', 'Madagascar', NULL, NULL, NULL),
('MH', 'Quần đảo Marshall', 'Marshall Islands', NULL, NULL, NULL),
('MK', 'Bắc Macedonia', 'North Macedonia', NULL, NULL, NULL),
('ML', 'Mali', 'Mali', NULL, NULL, NULL),
('MM', 'Myanmar', 'Myanmar', NULL, NULL, NULL),
('MN', 'Mông Cổ', 'Mongolia', NULL, NULL, NULL),
('MO', 'Macau', 'Macau', NULL, NULL, NULL),
('MP', 'Quần đảo Bắc Mariana', 'Northern Mariana Islands', NULL, NULL, NULL),
('MQ', 'Marinique', 'Martinique', NULL, NULL, NULL),
('MR', 'Mauritania', 'Mauritania', NULL, NULL, NULL),
('MS', 'Montserrat', 'Montserrat', NULL, NULL, NULL),
('MT', 'Malta', 'Malta', NULL, NULL, NULL),
('MU', 'Mauritius', 'Mauritius', NULL, NULL, NULL),
('MV', 'Maldives', 'Maldives', NULL, NULL, NULL),
('MW', 'Malawi', 'Malawi', NULL, NULL, NULL),
('MX', 'Mexico', 'Mexico', NULL, NULL, NULL),
('MY', 'Malaysia', 'Malaysia', NULL, NULL, NULL),
('MZ', 'Mozambique', 'Mozambique', NULL, NULL, NULL),
('NA', 'Namibia', 'Namibia', NULL, NULL, NULL),
('NC', 'New Caledonia', 'New Caledonia', NULL, NULL, NULL),
('NE', 'Niger', 'Niger', NULL, NULL, NULL),
('NF', 'Quần đảo Norfolk', 'Norfolk Island', NULL, NULL, NULL),
('NG', 'Nigeria', 'Nigeria', NULL, NULL, NULL),
('NI', 'Nicaragua', 'Nicaragua', NULL, NULL, NULL),
('NL', 'Hà Lan', 'Netherlands', NULL, NULL, NULL),
('NO', 'Na Uy', 'Norway', NULL, NULL, NULL),
('NP', 'Nepal', 'Nepal', NULL, NULL, NULL),
('NR', 'Nauru', 'Nauru', NULL, NULL, NULL),
('NU', 'Niue', 'Niue', NULL, NULL, NULL),
('NZ', 'New Zealand', 'New Zealand', NULL, NULL, NULL),
('OM', 'Oman', 'Oman', NULL, NULL, NULL),
('PA', 'Panama', 'Panama', NULL, NULL, NULL),
('PE', 'Peru', 'Peru', NULL, NULL, NULL),
('PF', 'Polynesia thuộc Pháp', 'French Polynesia', NULL, NULL, NULL),
('PG', 'Papua New Guinea', 'Papua New Guinea', NULL, NULL, NULL),
('PH', 'Philippines', 'Philippines', NULL, NULL, NULL),
('PK', 'Pakistan', 'Pakistan', NULL, NULL, NULL),
('PL', 'Ba Lan', 'Poland', NULL, NULL, NULL),
('PM', 'St. Pierre và Miquelon', 'St. Pierre and Miquelon', NULL, NULL, NULL),
('PN', 'Pitcairn', 'Pitcairn', NULL, NULL, NULL),
('PR', 'Puerto Rico', 'Puerto Rico', NULL, NULL, NULL),
('PS', 'Palestine', 'Palestine', NULL, NULL, NULL),
('PT', 'Bồ Đào Nha', 'Portugal', NULL, NULL, NULL),
('PW', 'Palau', 'Palau', NULL, NULL, NULL),
('PY', 'Paraguay', 'Paraguay', NULL, NULL, NULL),
('QA', 'Qatar', 'Qatar', NULL, NULL, NULL),
('RE', 'Reunion', 'Reunion', NULL, NULL, NULL),
('RO', 'Romania', 'Romania', NULL, NULL, NULL),
('RS', 'Serbia', 'Serbia', NULL, NULL, NULL),
('RU', 'Nga', 'Russian Federation', NULL, NULL, NULL),
('RW', 'Rwanda', 'Rwanda', NULL, NULL, NULL),
('SA', 'Ả Rập Xê Út', 'Saudi Arabia', NULL, NULL, NULL),
('SB', 'Solomon', 'Solomon Islands', NULL, NULL, NULL),
('SC', 'Seychelles', 'Seychelles', NULL, NULL, NULL),
('SD', 'Sudan', 'Sudan', NULL, NULL, NULL),
('SE', 'Thụy Điển', 'Sweden', NULL, NULL, NULL),
('SG', 'Singapore', 'Singapore', NULL, NULL, NULL),
('SH', 'St. Halena', 'St. Helena', NULL, NULL, NULL),
('SI', 'Slovenia', 'Slovenia', NULL, NULL, NULL),
('SJ', 'Quần đảo Svalbard và Jan Mayen', 'Svalbard and Jan Mayen Islands', NULL, NULL, NULL),
('SK', 'Slovakia', 'Slovakia', NULL, NULL, NULL),
('SL', 'Sierra Leone', 'Sierra Leone', NULL, NULL, NULL),
('SM', 'San Marino', 'San Marino', NULL, NULL, NULL),
('SN', 'Senegal', 'Senegal', NULL, NULL, NULL),
('SO', 'Somalia', 'Somalia', NULL, NULL, NULL),
('SR', 'Suriname', 'Suriname', NULL, NULL, NULL),
('SS', 'Nam Sudan', 'South Sudan', NULL, NULL, NULL),
('ST', 'Sao Tome và Principe', 'Sao Tome and Principe', NULL, NULL, NULL),
('SV', 'El Salvador', 'El Salvador', NULL, NULL, NULL),
('SY', 'Syria', 'Syrian Arab Republic', NULL, NULL, NULL),
('SZ', 'Eswatini', 'Eswatini', NULL, NULL, NULL),
('TC', 'Quần đảo Turks và Caicos', 'Turks and Caicos Islands', NULL, NULL, NULL),
('TD', 'Chad', 'Chad', NULL, NULL, NULL),
('TF', 'Lãnh thổ phía Nam của Pháp', 'French Southern Territories', NULL, NULL, NULL),
('TG', 'Togo', 'Togo', NULL, NULL, NULL),
('TH', 'Thái Lan', 'Thailand', NULL, NULL, NULL),
('TJ', 'Tajikistan', 'Tajikistan', NULL, NULL, NULL),
('TK', 'Tokelau', 'Tokelau', NULL, NULL, NULL),
('TL', 'Đông Timor', 'East Timor', NULL, NULL, NULL),
('TM', 'Turkmenistan', 'Turkmenistan', NULL, NULL, NULL),
('TN', 'Tunisia', 'Tunisia', NULL, NULL, NULL),
('TO', 'Tonga', 'Tonga', NULL, NULL, NULL),
('TR', 'Thổ Nhĩ Kỳ', 'Turkey', NULL, NULL, NULL),
('TT', 'Trinidad và Tobago', 'Trinidad and Tobago', NULL, NULL, NULL),
('TV', 'Tuvalu', 'Tuvalu', NULL, NULL, NULL),
('TW', 'Đài Loan', 'Taiwan', NULL, NULL, NULL),
('TZ', 'Tanzania', 'Tanzania, United Republic of', NULL, NULL, NULL),
('UA', 'Ukraine', 'Ukraine', NULL, NULL, NULL),
('UG', 'Uganda', 'Uganda', NULL, NULL, NULL),
('UM', 'Các đảo nhỏ xa xôi của Hoa Kỳ', 'United States minor outlying islands', NULL, NULL, NULL),
('US', 'Hoa Kỳ', 'United States', NULL, NULL, NULL),
('UY', 'Uruguay', 'Uruguay', NULL, NULL, NULL),
('UZ', 'Uzbekistan', 'Uzbekistan', NULL, NULL, NULL),
('VA', 'Vatican City State', 'Vatican City State', NULL, NULL, NULL),
('VC', 'Saint Vincent và the Grenadines', 'Saint Vincent and the Grenadines', NULL, NULL, NULL),
('VE', 'Venezuela', 'Venezuela', NULL, NULL, NULL),
('VG', 'Quần đảo Virgin thuộc Anh', 'Virgin Islands (British)', NULL, NULL, NULL),
('VI', 'Quần đảo Virgin thuộc Mỹ', 'Virgin Islands (U.S.)', NULL, NULL, NULL),
('VN', 'Việt Nam', 'Vietnam', NULL, NULL, NULL),
('VU', 'Vanuatu', 'Vanuatu', NULL, NULL, NULL),
('WF', 'Quần đảo Wallis và Futuna', 'Wallis and Futuna Islands', NULL, NULL, NULL),
('WS', 'Samoa', 'Samoa', NULL, NULL, NULL),
('XK', 'Kosovo', 'Kosovo', NULL, NULL, NULL),
('YE', 'Yemen', 'Yemen', NULL, NULL, NULL),
('YT', 'Mayotte', 'Mayotte', NULL, NULL, NULL),
('ZA', 'Nam Phi', 'South Africa', NULL, NULL, NULL),
('ZM', 'Zambia', 'Zambia', NULL, NULL, NULL),
('ZW', 'Zimbabwe', 'Zimbabwe', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldName` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `originalName` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encoding` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimeType` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileName` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint NOT NULL,
  `objectType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `fieldName`, `originalName`, `encoding`, `mimeType`, `fileName`, `url`, `size`, `objectType`, `objectId`, `createdAt`, `deletedAt`) VALUES
('03092103-b605-4790-b98c-8cd81997abdc', 'file', 'download (1).jpg', '7bit', 'image/jpeg', 'file-1697701359273-124100069.jpg', '\\uploads\\file-1697701359273-124100069.jpg', 5083, NULL, NULL, '2023-10-19T07:42:39.274Z', NULL),
('0353445f-8a4c-4e81-bc25-b23305a24c4e', 'file', 'download (18).png', '7bit', 'image/png', 'file-1699442052905-826673792.png', '\\uploads\\file-1699442052905-826673792.png', 3985, NULL, NULL, '2023-11-08T11:14:12.906Z', NULL),
('039da7ea-8c5a-4dda-9d67-edf1b14c9db5', 'file', 'pngtree-natural-disasters-flood-png-image_2805797.jpg', '7bit', 'image/jpeg', 'file-1699438860375-451724579.jpg', '\\uploads\\file-1699438860375-451724579.jpg', 46171, NULL, NULL, '2023-11-08T10:21:00.381Z', NULL),
('040ecb56-29ca-4edc-a155-cc56d983c7ae', 'file', 'cute-cat-cartoon-cat-clipart-vector-illustration_160901-2886.webp', '7bit', 'image/webp', 'file-1699243604103-26968085.webp', '\\uploads\\file-1699243604103-26968085.webp', 175578, NULL, NULL, '2023-11-06T04:06:44.105Z', NULL),
('09a71d4a-5de5-44a8-9398-a196ab90e677', 'file', 'download (8).png', '7bit', 'image/png', 'file-1699449492247-900761482.png', '\\uploads\\file-1699449492247-900761482.png', 1881, NULL, NULL, '2023-11-08T13:18:12.249Z', NULL),
('09fde752-1c60-4633-a0ee-8200189137f1', 'file', 'istockphoto-165955251-612x612.jpg', '7bit', 'image/jpeg', 'file-1699438267192-519045932.jpg', '\\uploads\\file-1699438267192-519045932.jpg', 44170, NULL, NULL, '2023-11-08T10:11:07.194Z', NULL),
('0a02b1f6-ae4e-48c7-8e74-70403d14b3c0', 'file', 'Lawyer.webp', '7bit', 'image/webp', 'file-1699450785242-788933664.webp', '\\uploads\\file-1699450785242-788933664.webp', 64772, NULL, NULL, '2023-11-08T13:39:45.244Z', NULL),
('0ac03952-4a82-4e41-b58d-c3103853981f', 'file', 'ong_ngoai_081123094845.wav', '7bit', 'audio/wav', 'file-1699436932108-473028133.wav', '\\uploads\\file-1699436932108-473028133.wav', 96694, NULL, NULL, '2023-11-08T09:48:52.109Z', NULL),
('0c0d2abf-9e2d-4eed-97b6-8320019c1479', 'file', 'profile.jpg', '7bit', 'image/jpeg', 'file-1697794375608-441951557.jpg', '\\uploads\\file-1697794375608-441951557.jpg', 2465371, NULL, NULL, '2023-10-20T09:32:55.625Z', NULL),
('0cd8ebef-b619-4c14-acad-dfe3399a17f8', 'file', 'download.png', '7bit', 'image/png', 'file-1699451209247-366374862.png', '\\uploads\\file-1699451209247-366374862.png', 10910, NULL, NULL, '2023-11-08T13:46:49.249Z', NULL),
('0d26121c-9745-41c1-8d4a-171002c478c8', 'file', 'human-eye-illustration_642458-896.webp', '7bit', 'image/webp', 'file-1699440428394-219625971.webp', '\\uploads\\file-1699440428394-219625971.webp', 26870, NULL, NULL, '2023-11-08T10:47:08.396Z', NULL),
('0d614b6d-648d-4f08-8140-c6a001c2e7c7', 'file', 'istockphoto-1022888764-612x612.jpg', '7bit', 'image/jpeg', 'file-1699441030453-633059819.jpg', '\\uploads\\file-1699441030453-633059819.jpg', 23281, NULL, NULL, '2023-11-08T10:57:10.455Z', NULL),
('0e415a75-e234-441e-a430-c5f5c584a664', 'file', 'download.jpeg', '7bit', 'image/jpeg', 'file-1699449299591-958722938.jpeg', '\\uploads\\file-1699449299591-958722938.jpeg', 9630, NULL, NULL, '2023-11-08T13:14:59.595Z', NULL),
('0f3dec0a-297c-4b5b-96d9-89929ae7f59c', 'file', '1200px-RedCat_8727.jpg', '7bit', 'image/jpeg', 'file-1697701364247-245516264.jpg', '\\uploads\\file-1697701364247-245516264.jpg', 238948, NULL, NULL, '2023-10-19T07:42:44.251Z', NULL),
('1176a343-a595-4bba-a0ad-2cdd9aff09d9', 'file', 'download (10).png', '7bit', 'image/png', 'file-1699449453880-852650449.png', '\\uploads\\file-1699449453880-852650449.png', 585, NULL, NULL, '2023-11-08T13:17:33.881Z', NULL),
('130bbf18-40dc-41a2-b819-d0b6e318f8c2', 'file', 'hinh-anh-ve-ong-ba-ba-chau-de-thuong-5.jpg', '7bit', 'image/jpeg', 'file-1699437568192-771921136.jpg', '\\uploads\\file-1699437568192-771921136.jpg', 51397, NULL, NULL, '2023-11-08T09:59:28.193Z', NULL),
('14215c2a-753b-4551-a41a-72175528c59b', 'file', 'im-725408.jpg', '7bit', 'image/jpeg', 'file-1697704467688-784237497.jpg', '\\uploads\\file-1697704467688-784237497.jpg', 171392, NULL, NULL, '2023-10-19T08:34:27.693Z', NULL),
('1480c68a-3276-448d-88b9-5fa7b83619c7', 'file', '36acbf6099b7a128b93f90915e3e90b8.png', '7bit', 'image/png', 'file-1699437988976-126404850.png', '\\uploads\\file-1699437988976-126404850.png', 48765, NULL, NULL, '2023-11-08T10:06:28.982Z', NULL),
('156c64e9-27df-43b0-8b56-985b1148a9ef', 'file', 'download (5).png', '7bit', 'image/png', 'file-1699449475514-623802277.png', '\\uploads\\file-1699449475514-623802277.png', 1416, NULL, NULL, '2023-11-08T13:17:55.516Z', NULL),
('1609efdf-482c-4f00-9c74-2a7457fa1785', 'file', '36acbf6099b7a128b93f90915e3e90b8.png', '7bit', 'image/png', 'file-1699438192220-970124896.png', '\\uploads\\file-1699438192220-970124896.png', 48765, NULL, NULL, '2023-11-08T10:09:52.226Z', NULL),
('1a2991d4-5c20-419d-9d0c-dd6d2fb404ae', 'file', 'mouse-animal-cartoon-colored-clipart-illustration-free-vector.jpg', '7bit', 'image/jpeg', 'file-1699243597639-253014628.jpg', '\\uploads\\file-1699243597639-253014628.jpg', 78009, NULL, NULL, '2023-11-06T04:06:37.640Z', NULL),
('1a359a0c-1b0b-4f8e-8bf5-8b64722eea3b', 'file', 'hinh-anh-ve-ong-ba-ba-chau-de-thuong-5.jpg', '7bit', 'image/jpeg', 'file-1699437541553-678145922.jpg', '\\uploads\\file-1699437541553-678145922.jpg', 51397, NULL, NULL, '2023-11-08T09:59:01.554Z', NULL),
('1b434951-de32-492a-89b1-d8cd36d63e2a', 'file', 'istockphoto-1022888764-612x612.jpg', '7bit', 'image/jpeg', 'file-1699440412556-970498503.jpg', '\\uploads\\file-1699440412556-970498503.jpg', 23281, NULL, NULL, '2023-11-08T10:46:52.557Z', NULL),
('1b777a04-8fc1-4b08-8b85-e38afc813ebd', 'file', 'pngtree-father-and-son-illustration-png-image_8949826.png', '7bit', 'image/png', 'file-1699437441900-571353101.png', '\\uploads\\file-1699437441900-571353101.png', 162352, NULL, NULL, '2023-11-08T09:57:21.907Z', NULL),
('1b78da27-8167-4307-b14f-c576cc5cc244', 'file', 'smiling-man-bellman-porter-pushing-trolley-luggage-vector-illustration-smiling-man-bellman-porter-pushing-trolley-268042507.webp', '7bit', 'image/webp', 'file-1699452295348-648167113.webp', '\\uploads\\file-1699452295348-648167113.webp', 18548, NULL, NULL, '2023-11-08T14:04:55.355Z', NULL),
('1c0c973c-bdb1-4959-ba5b-5f76a34769bb', 'file', '405696cbcb685683f77a8bb8491bae3c.png', '7bit', 'image/png', 'file-1699440315853-549058058.png', '\\uploads\\file-1699440315853-549058058.png', 181233, NULL, NULL, '2023-11-08T10:45:15.854Z', NULL),
('1cf4d356-4e8d-41a3-bc5a-46436c6b5065', 'file', 'young-female-photographer-vector-take-photo-female-photographer-vector-studio-photo-taking-professional-pictures-flat-cartoon-106066423.webp', '7bit', 'image/webp', 'file-1699451911288-397890506.webp', '\\uploads\\file-1699451911288-397890506.webp', 14672, NULL, NULL, '2023-11-08T13:58:31.290Z', NULL),
('1e9ad1f8-6da1-422c-abb7-91d2bdc14fa3', 'file', 'download (8).jpeg', '7bit', 'image/jpeg', 'file-1699452288437-372236131.jpeg', '\\uploads\\file-1699452288437-372236131.jpeg', 5860, NULL, NULL, '2023-11-08T14:04:48.439Z', NULL),
('20220767-674e-4e32-ab6d-63880c8720d2', 'file', 'white-cloud-clipart-design-illustration-free-png.webp', '7bit', 'image/webp', 'file-1699438179029-585192503.webp', '\\uploads\\file-1699438179029-585192503.webp', 37924, NULL, NULL, '2023-11-08T10:09:39.036Z', NULL),
('2082e420-4bf5-40aa-9491-7772cfadc2d0', 'file', 'troi_dang_mua_081123105930.wav', '7bit', 'audio/wav', 'file-1699441199017-551026770.wav', '\\uploads\\file-1699441199017-551026770.wav', 118198, NULL, NULL, '2023-11-08T10:59:59.024Z', NULL),
('217afd23-b0b3-43eb-97c2-be1b2c1ad246', 'file', '87225739-the-appearance-of-a-woman-with-a-hairdo-the-face-of-a-girl-face-and-appearance-set-collection-icons.jpg', '7bit', 'image/jpeg', 'file-1697704510783-58422282.jpg', '\\uploads\\file-1697704510783-58422282.jpg', 81991, NULL, NULL, '2023-10-19T08:35:10.785Z', NULL),
('21dea474-7ed2-46a9-9601-df7a4e2c3a6f', 'file', 'pngtree-illustrator-mother-mother-and-child-mother-and-child-illustration-illustration-mother-png-image_493083.jpg', '7bit', 'image/jpeg', 'file-1699437446573-334654226.jpg', '\\uploads\\file-1699437446573-334654226.jpg', 34137, NULL, NULL, '2023-11-08T09:57:26.574Z', NULL),
('245044b8-8dc1-4b44-8030-30117cdd7791', 'file', '360_F_80462305_W7ICF9HWh3OUSHUpEV36laX0KE81vS2H.jpg', '7bit', 'image/jpeg', 'file-1699440988124-485297818.jpg', '\\uploads\\file-1699440988124-485297818.jpg', 26253, NULL, NULL, '2023-11-08T10:56:28.125Z', NULL),
('24b8f3a6-1153-4af0-af66-ccc97a5fddb6', 'file', 'cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L2pvYjcyMi0xNTQtbDJrN296YXAuanBn.webp', '7bit', 'image/webp', 'file-1699438003810-661918179.webp', '\\uploads\\file-1699438003810-661918179.webp', 33224, NULL, NULL, '2023-11-08T10:06:43.811Z', NULL),
('257718a1-557c-47ff-a69e-e05c8a11e64e', 'file', '1200px-RedCat_8727.jpg', '7bit', 'image/jpeg', 'file-1697701682153-350853714.jpg', '\\uploads\\file-1697701682153-350853714.jpg', 238948, NULL, NULL, '2023-10-19T07:48:02.155Z', NULL),
('2618d7f7-8011-4833-819c-30d4248271fb', 'file', '6130977243329f9ad2c1e31422043f15.jpg', '7bit', 'image/jpeg', 'file-1699451584266-15576086.jpg', '\\uploads\\file-1699451584266-15576086.jpg', 33285, NULL, NULL, '2023-11-08T13:53:04.268Z', NULL),
('28d4b8f0-099c-4d29-be9c-f6483fb40e47', 'file', 'istockphoto-165955251-612x612.jpg', '7bit', 'image/jpeg', 'file-1699438134800-720563017.jpg', '\\uploads\\file-1699438134800-720563017.jpg', 44170, NULL, NULL, '2023-11-08T10:08:54.801Z', NULL),
('2a11dece-4bae-49fe-aa0b-e91bc1db38e5', 'file', 'download (10).png', '7bit', 'image/png', 'file-1699442123130-644050257.png', '\\uploads\\file-1699442123130-644050257.png', 585, NULL, NULL, '2023-11-08T11:15:23.131Z', NULL),
('2accafaf-b35e-4d6c-ad59-3c7da7f833ca', 'file', 'dai_bang_191023081359.wav', '7bit', 'audio/wav', 'file-1697703519068-957237276.wav', '\\uploads\\file-1697703519068-957237276.wav', 75190, NULL, NULL, '2023-10-19T08:18:39.069Z', NULL),
('2d29e2fe-1b58-4fb2-b95f-8ae4e4e7a4ec', 'file', 'troi_dang_mua_081123110058.wav', '7bit', 'audio/wav', 'file-1699441265029-855634774.wav', '\\uploads\\file-1699441265029-855634774.wav', 69046, NULL, NULL, '2023-11-08T11:01:05.036Z', NULL),
('2e4c18d2-121c-4eaa-bee8-1433911ad4bf', 'file', '3f9a1794-5822-47ba-875f-4b4f7fceca18.webp', '7bit', 'image/webp', 'file-1699245811341-305258845.webp', '\\uploads\\file-1699245811341-305258845.webp', 13562, NULL, NULL, '2023-11-06T04:43:31.342Z', NULL),
('300bc60a-48e7-4891-9b1a-f8926cc717a7', 'file', 'cau_may_061123050109.wav', '7bit', 'audio/wav', 'file-1699246878490-840949738.wav', '\\uploads\\file-1699246878490-840949738.wav', 87478, NULL, NULL, '2023-11-06T05:01:18.492Z', NULL),
('31a632dc-9c8f-414c-a5cd-2cbd0ac13db7', 'file', 'ong_ngoai_081123095349.wav', '7bit', 'audio/wav', 'file-1699437245927-849308415.wav', '\\uploads\\file-1699437245927-849308415.wav', 91574, NULL, NULL, '2023-11-08T09:54:05.928Z', NULL),
('33148174-b2d3-4322-b584-33be671e46fd', 'file', 'woman-construction-worker-reading-plan-isolated-white-background-vector-illustration_136875-5103.webp', '7bit', 'image/webp', 'file-1699450923708-676870894.webp', '\\uploads\\file-1699450923708-676870894.webp', 19042, NULL, NULL, '2023-11-08T13:42:03.709Z', NULL),
('3386062e-4093-420f-aa2b-d3857358bfbd', 'file', 'woodpecker-tree-branch-flat-vector-illustration-colorful-woodpecker-perched-branch_447151-141.webp', '7bit', 'image/webp', 'file-1699244705941-799663930.webp', '\\uploads\\file-1699244705941-799663930.webp', 27264, NULL, NULL, '2023-11-06T04:25:05.943Z', NULL),
('350d1af8-67a2-4d01-999e-83c05391783e', 'file', 'hinh-anh-ve-ong-ba-ba-chau-de-thuong-5.jpg', '7bit', 'image/jpeg', 'file-1699437464288-313356947.jpg', '\\uploads\\file-1699437464288-313356947.jpg', 51397, NULL, NULL, '2023-11-08T09:57:44.290Z', NULL),
('35abdaa9-cd3e-4b89-ae3c-52afe0cbb76b', 'file', 'cau_may_061123045714.wav', '7bit', 'audio/wav', 'file-1699246678210-407303457.wav', '\\uploads\\file-1699246678210-407303457.wav', 99766, NULL, NULL, '2023-11-06T04:57:58.212Z', NULL),
('36febced-a658-4ba2-bd01-58736e3e4930', 'file', 'depositphotos_110425408-stock-illustration-teacher-classroom-design.jpg', '7bit', 'image/jpeg', 'file-1699450772134-118588105.jpg', '\\uploads\\file-1699450772134-118588105.jpg', 14636, NULL, NULL, '2023-11-08T13:39:32.136Z', NULL),
('3837c6a0-8025-4600-984a-721795d7623f', 'file', 'sticker-design-with-chicken-isolated_1308-60393.webp', '7bit', 'image/webp', 'file-1699244124148-861488479.webp', '\\uploads\\file-1699244124148-861488479.webp', 37186, NULL, NULL, '2023-11-06T04:15:24.150Z', NULL),
('38baa09d-cc3c-4f71-9588-94a2b735337e', 'file', 'printable-cute-drawing-lion-school-kids_213861-1145.webp', '7bit', 'image/webp', 'file-1699243768112-992076975.webp', '\\uploads\\file-1699243768112-992076975.webp', 232884, NULL, NULL, '2023-11-06T04:09:28.114Z', NULL),
('38d54da4-b2a2-437e-bd76-8c2b50bdf4d0', 'file', 'depositphotos_5033287-stock-illustration-secretary-in-the-office.jpg', '7bit', 'image/jpeg', 'file-1699451736266-188979950.jpg', '\\uploads\\file-1699451736266-188979950.jpg', 24372, NULL, NULL, '2023-11-08T13:55:36.269Z', NULL),
('3af62c07-151c-417d-8787-a90f629afedb', 'file', 'Career-readiness-project-findings-blog.png', '7bit', 'image/png', 'file-1697704459640-817871799.png', '\\uploads\\file-1697704459640-817871799.png', 203518, NULL, NULL, '2023-10-19T08:34:19.642Z', NULL),
('3cf52b37-f5b6-46b5-bceb-54e55697b286', 'file', 'troi_dang_mua_081123132144.wav', '7bit', 'audio/wav', 'file-1699449745956-743310432.wav', '\\uploads\\file-1699449745956-743310432.wav', 113078, NULL, NULL, '2023-11-08T13:22:25.958Z', NULL),
('3f780a9f-d436-40b5-81ed-05c9f4e826ac', 'file', 'cartoon-police-officer-policeman-cartoon-police-officer-policeman-isolated-white-background-colorful-book-page-design-kids-105689584.webp', '7bit', 'image/webp', 'file-1699452337063-503934263.webp', '\\uploads\\file-1699452337063-503934263.webp', 20290, NULL, NULL, '2023-11-08T14:05:37.071Z', NULL),
('3f9ac2a3-beb8-4c5a-b6c0-d25a82f74a24', 'file', 'download.png', '7bit', 'image/png', 'file-1699438273941-481366888.png', '\\uploads\\file-1699438273941-481366888.png', 4001, NULL, NULL, '2023-11-08T10:11:13.943Z', NULL),
('41190541-476f-4e86-823c-eaef27168837', 'file', 'professor-writer-cartoon-illustration-scientist-taking-notes-43842053.webp', '7bit', 'image/webp', 'file-1699451156965-85644548.webp', '\\uploads\\file-1699451156965-85644548.webp', 64862, NULL, NULL, '2023-11-08T13:45:56.972Z', NULL),
('4356eacc-00ca-4d2c-9ea4-9ff9c123fcb7', 'file', '405696cbcb685683f77a8bb8491bae3c.png', '7bit', 'image/png', 'file-1699441024107-567744153.png', '\\uploads\\file-1699441024107-567744153.png', 181233, NULL, NULL, '2023-11-08T10:57:04.108Z', NULL),
('44479ebe-9950-48df-8bba-d7b3579c3a0e', 'file', 'printable-cute-drawing-lion-school-kids_213861-1145.webp', '7bit', 'image/webp', 'file-1699243578846-964228285.webp', '\\uploads\\file-1699243578846-964228285.webp', 232884, NULL, NULL, '2023-11-06T04:06:18.850Z', NULL),
('44af8774-174c-4d3f-963e-33c99bc9745b', 'file', 'download (4).jpeg', '7bit', 'image/jpeg', 'file-1699451941162-26009546.jpeg', '\\uploads\\file-1699451941162-26009546.jpeg', 5735, NULL, NULL, '2023-11-08T13:59:01.165Z', NULL),
('4944d7f6-ddfd-4587-9f1c-ff2226c83bd5', 'file', '36acbf6099b7a128b93f90915e3e90b8.png', '7bit', 'image/png', 'file-1699438856391-6681617.png', '\\uploads\\file-1699438856391-6681617.png', 48765, NULL, NULL, '2023-11-08T10:20:56.398Z', NULL),
('4a8ecbf5-de82-418a-9c59-1366937a6da5', 'file', 'pngtree-natural-disasters-flood-png-image_2805797.jpg', '7bit', 'image/jpeg', 'file-1699438136839-49971109.jpg', '\\uploads\\file-1699438136839-49971109.jpg', 46171, NULL, NULL, '2023-11-08T10:08:56.840Z', NULL),
('4d2092bd-5725-4b97-afc5-25252ea18ae8', 'file', 'download (1).png', '7bit', 'image/png', 'file-1699244890378-216819718.png', '\\uploads\\file-1699244890378-216819718.png', 11209, NULL, NULL, '2023-11-06T04:28:10.380Z', NULL),
('4db0b601-eedc-4c24-a269-35558baf0519', 'file', 'ba-cua-chau.jpg', '7bit', 'image/jpeg', 'file-1699437537908-339598030.jpg', '\\uploads\\file-1699437537908-339598030.jpg', 86120, NULL, NULL, '2023-11-08T09:58:57.909Z', NULL),
('4e1f6f86-2ef5-41fc-80f0-1928cee03b97', 'file', 'troi_dang_mua_081123110159.wav', '7bit', 'audio/wav', 'file-1699441341838-460989193.wav', '\\uploads\\file-1699441341838-460989193.wav', 69046, NULL, NULL, '2023-11-08T11:02:21.840Z', NULL),
('4e622268-6525-45a2-accf-cc49be9d330e', 'file', 'chinese-dog-breeds-4797219-hero-2a1e9c5ed2c54d00aef75b05c5db399c.jpg', '7bit', 'image/jpeg', 'file-1697701674785-170265528.jpg', '\\uploads\\file-1697701674785-170265528.jpg', 638178, NULL, NULL, '2023-10-19T07:47:54.788Z', NULL),
('4ea0056e-f730-4285-a361-0bc9ccc618f1', 'file', 'ong_ngoai_081123094714.wav', '7bit', 'audio/wav', 'file-1699436842646-91993726.wav', '\\uploads\\file-1699436842646-91993726.wav', 73142, NULL, NULL, '2023-11-08T09:47:22.648Z', NULL),
('4fc195e7-e198-45fb-a5de-b0b96f310e01', 'file', 'phi_cong_081123140800.wav', '7bit', 'audio/wav', 'file-1699452498069-170117037.wav', '\\uploads\\file-1699452498069-170117037.wav', 98742, NULL, NULL, '2023-11-08T14:08:18.072Z', NULL),
('504659fa-395e-4388-b0b7-cf5d5795361e', 'file', 'download (16).png', '7bit', 'image/png', 'file-1699449379503-587083902.png', '\\uploads\\file-1699449379503-587083902.png', 3146, NULL, NULL, '2023-11-08T13:16:19.506Z', NULL),
('5481dd0a-3dba-43a4-b06d-4854646204da', 'file', 'Recording.mp3', '7bit', 'audio/mpeg', 'file-1697701448294-580615547.mp3', '\\uploads\\file-1697701448294-580615547.mp3', 1832729, NULL, NULL, '2023-10-19T07:44:08.309Z', NULL),
('5549ea2d-64fa-4db8-8300-00c82ac0039d', 'file', 'chinese-dog-breeds-4797219-hero-2a1e9c5ed2c54d00aef75b05c5db399c.jpg', '7bit', 'image/jpeg', 'file-1697701357074-997072163.jpg', '\\uploads\\file-1697701357074-997072163.jpg', 638178, NULL, NULL, '2023-10-19T07:42:37.080Z', NULL),
('564a9920-9b98-48b2-a4ad-9904d44d9501', 'file', 'download (5).jpeg', '7bit', 'image/jpeg', 'file-1699452331350-843753116.jpeg', '\\uploads\\file-1699452331350-843753116.jpeg', 11616, NULL, NULL, '2023-11-08T14:05:31.358Z', NULL),
('56b385fc-da62-428f-b79e-91a840aa428d', 'file', 'download.jpg', '7bit', 'image/jpeg', 'file-1699244101442-554415509.jpg', '\\uploads\\file-1699244101442-554415509.jpg', 7041, NULL, NULL, '2023-11-06T04:15:01.445Z', NULL),
('5b99a27d-4a0b-4fdb-bd4d-850971b5506a', 'file', 'ong_ngoai_081123094547.wav', '7bit', 'audio/wav', 'file-1699436759940-780476053.wav', '\\uploads\\file-1699436759940-780476053.wav', 87478, NULL, NULL, '2023-11-08T09:45:59.944Z', NULL),
('5bad5c0b-e1bf-4b93-865e-065973ee7d65', 'file', 'depositphotos_17236893-stock-illustration-human-arm-and-hand-extended.jpg', '7bit', 'image/jpeg', 'file-1699440301110-383422340.jpg', '\\uploads\\file-1699440301110-383422340.jpg', 11992, NULL, NULL, '2023-11-08T10:45:01.116Z', NULL),
('5bb8b36e-3963-4083-81c6-1da117999dd6', 'file', 'download (13).png', '7bit', 'image/png', 'file-1699449317159-968793292.png', '\\uploads\\file-1699449317159-968793292.png', 8484, NULL, NULL, '2023-11-08T13:15:17.162Z', NULL),
('5e6155d5-fb6c-4156-86ff-fa989dcaa43a', 'file', 'download (3).jpeg', '7bit', 'image/jpeg', 'file-1699451915105-503022584.jpeg', '\\uploads\\file-1699451915105-503022584.jpeg', 11112, NULL, NULL, '2023-11-08T13:58:35.112Z', NULL),
('5fe723cd-63ab-460d-9e61-6cc595611b49', 'file', '360_F_492423350_WnFIRfRWyC093nnFuxEfIo0MIMIZ4Mcm.jpg', '7bit', 'image/jpeg', 'file-1699245184657-640598675.jpg', '\\uploads\\file-1699245184657-640598675.jpg', 24733, NULL, NULL, '2023-11-06T04:33:04.658Z', NULL),
('6135522f-b7e7-40cc-b0cc-bc85b68e6495', 'file', 'download (12).png', '7bit', 'image/png', 'file-1699449500096-716124512.png', '\\uploads\\file-1699449500096-716124512.png', 3911, NULL, NULL, '2023-11-08T13:18:20.098Z', NULL),
('62d74612-0b1d-4bc8-8632-4ef0d02037c4', 'file', 'troi_dang_mua_081123101752.wav', '7bit', 'audio/wav', 'file-1699438687703-917134273.wav', '\\uploads\\file-1699438687703-917134273.wav', 178614, NULL, NULL, '2023-11-08T10:18:07.705Z', NULL),
('635d97af-297e-40c3-b048-015f1c76ce76', 'file', 'il_fullxfull.3306704673_hepv.webp', '7bit', 'image/webp', 'file-1699437983774-663487033.webp', '\\uploads\\file-1699437983774-663487033.webp', 46654, NULL, NULL, '2023-11-08T10:06:23.781Z', NULL),
('636f6642-007b-4028-9ce2-fc72414968cf', 'file', 'pngtree-father-and-son-illustration-png-image_8949826.png', '7bit', 'image/png', 'file-1699437496836-665751607.png', '\\uploads\\file-1699437496836-665751607.png', 162352, NULL, NULL, '2023-11-08T09:58:16.843Z', NULL),
('656160d2-6ade-47a0-810c-9ac6b900ecd3', 'file', 'troi_dang_mua_081123132313.wav', '7bit', 'audio/wav', 'file-1699449819662-224578254.wav', '\\uploads\\file-1699449819662-224578254.wav', 143798, NULL, NULL, '2023-11-08T13:23:39.665Z', NULL),
('659b083e-6cd2-407e-af1b-92a815b18909', 'file', 'pngtree-father-and-son-illustration-png-image_8949826.png', '7bit', 'image/png', 'file-1699437583398-241573439.png', '\\uploads\\file-1699437583398-241573439.png', 162352, NULL, NULL, '2023-11-08T09:59:43.399Z', NULL),
('66633ff6-3526-440e-90ea-19635288b0c5', 'file', 'professor-writer-cartoon-illustration-scientist-taking-notes-43842053.webp', '7bit', 'image/webp', 'file-1699450904607-789549828.webp', '\\uploads\\file-1699450904607-789549828.webp', 64862, NULL, NULL, '2023-11-08T13:41:44.613Z', NULL),
('6666e39f-abf3-4d34-93ca-a8b95e5ec6b7', 'file', 'download (11).png', '7bit', 'image/png', 'file-1699449459146-501892130.png', '\\uploads\\file-1699449459146-501892130.png', 1862, NULL, NULL, '2023-11-08T13:17:39.148Z', NULL),
('67bb8af8-30f8-4303-914f-7dda61e193f6', 'file', 'phi_cong_081123140930.wav', '7bit', 'audio/wav', 'file-1699452598551-458146984.wav', '\\uploads\\file-1699452598551-458146984.wav', 105910, NULL, NULL, '2023-11-08T14:09:58.554Z', NULL),
('6897bc29-621f-481a-90cf-fd1c84229bcd', 'file', 'download (6).jpeg', '7bit', 'image/jpeg', 'file-1699452099268-838965811.jpeg', '\\uploads\\file-1699452099268-838965811.jpeg', 9308, NULL, NULL, '2023-11-08T14:01:39.275Z', NULL),
('6b03d9db-1cbe-4ab8-9bbb-2aff2e1ab3cd', 'file', 'pngtree-illustrator-mother-mother-and-child-mother-and-child-illustration-illustration-mother-png-image_493083.jpg', '7bit', 'image/jpeg', 'file-1699437550586-559781161.jpg', '\\uploads\\file-1699437550586-559781161.jpg', 34137, NULL, NULL, '2023-11-08T09:59:10.588Z', NULL),
('6b0cff5b-768b-4eec-96c3-e5929f71c7ed', 'file', 'phi_cong_081123141115.wav', '7bit', 'audio/wav', 'file-1699452684735-794854850.wav', '\\uploads\\file-1699452684735-794854850.wav', 130486, NULL, NULL, '2023-11-08T14:11:24.743Z', NULL),
('6b83dad5-0956-4f47-b03f-c438e78ea160', 'file', 'dog.webp', '7bit', 'image/webp', 'file-1699243757017-402749189.webp', '\\uploads\\file-1699243757017-402749189.webp', 155300, NULL, NULL, '2023-11-06T04:09:17.018Z', NULL),
('6d356d69-e8bb-432f-ab60-3a10eb36e55d', 'file', 'sticker-template-with-happy-big-family-members_1308-62600.webp', '7bit', 'image/webp', 'file-1697704500843-282386153.webp', '\\uploads\\file-1697704500843-282386153.webp', 431854, NULL, NULL, '2023-10-19T08:35:00.849Z', NULL),
('70f36604-6d41-4f73-ba8d-39d7607c4538', 'file', 'troi_dang_mua_081123101646.wav', '7bit', 'audio/wav', 'file-1699438614226-538504179.wav', '\\uploads\\file-1699438614226-538504179.wav', 160182, NULL, NULL, '2023-11-08T10:16:54.234Z', NULL),
('77b8c486-e99d-4730-861b-38ec153ab125', 'file', 'troi_dang_mua_081123110330.wav', '7bit', 'audio/wav', 'file-1699441438379-641856222.wav', '\\uploads\\file-1699441438379-641856222.wav', 73142, NULL, NULL, '2023-11-08T11:03:58.386Z', NULL),
('7b7bbc8d-b5b1-4208-8f5a-1edbdb53b969', 'file', 'istockphoto-165955251-612x612.jpg', '7bit', 'image/jpeg', 'file-1699438858596-100075307.jpg', '\\uploads\\file-1699438858596-100075307.jpg', 44170, NULL, NULL, '2023-11-08T10:20:58.597Z', NULL),
('7bf350a3-54d5-417b-9b6b-2194654c1363', 'file', 'cute-cat-cartoon-cat-clipart-vector-illustration_160901-2886.webp', '7bit', 'image/webp', 'file-1699243752455-515579396.webp', '\\uploads\\file-1699243752455-515579396.webp', 175578, NULL, NULL, '2023-11-06T04:09:12.456Z', NULL),
('7c5c6a9b-ccb7-40cb-9842-4b7f26cdecd2', 'file', 'cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L2pvYjcyMi0xNTQtbDJrN296YXAuanBn.webp', '7bit', 'image/webp', 'file-1699438203727-559319213.webp', '\\uploads\\file-1699438203727-559319213.webp', 33224, NULL, NULL, '2023-11-08T10:10:03.728Z', NULL),
('7d78124f-ce5a-469d-9121-fb876abf5f0f', 'file', 'download (5).jpeg', '7bit', 'image/jpeg', 'file-1699452109892-466478783.jpeg', '\\uploads\\file-1699452109892-466478783.jpeg', 11616, NULL, NULL, '2023-11-08T14:01:49.894Z', NULL),
('7e2452c1-0439-4312-8b2f-8836111e1245', 'file', 'istockphoto-845329226-612x612.jpg', '7bit', 'image/jpeg', 'file-1699449397733-709209569.jpg', '\\uploads\\file-1699449397733-709209569.jpg', 11913, NULL, NULL, '2023-11-08T13:16:37.735Z', NULL),
('80067b9c-9616-481b-9a61-3f30cc7dd360', 'file', 'download.jpeg', '7bit', 'image/jpeg', 'file-1699449509472-466289624.jpeg', '\\uploads\\file-1699449509472-466289624.jpeg', 9630, NULL, NULL, '2023-11-08T13:18:29.474Z', NULL),
('82de66fa-571a-4099-97e2-201f1ec6a47d', 'file', 'cau_may_061123045836.wav', '7bit', 'audio/wav', 'file-1699246752436-546197655.wav', '\\uploads\\file-1699246752436-546197655.wav', 95670, NULL, NULL, '2023-11-06T04:59:12.438Z', NULL),
('8360462a-73df-4618-9e63-35bc7405f0e5', 'file', 'download (4).png', '7bit', 'image/png', 'file-1699441923826-681156669.png', '\\uploads\\file-1699441923826-681156669.png', 342, NULL, NULL, '2023-11-08T11:12:03.827Z', NULL),
('84e5690d-4051-4f03-9e3f-1c2e020a880b', 'file', '10734.gif', '7bit', 'image/gif', 'file-1699451177581-100011029.gif', '\\uploads\\file-1699451177581-100011029.gif', 64446, NULL, NULL, '2023-11-08T13:46:17.584Z', NULL),
('8544274b-1cd3-457e-8926-144567ba0de4', 'file', 'dai_bang_191023081359.wav', '7bit', 'audio/wav', 'file-1697703279339-975280807.wav', '\\uploads\\file-1697703279339-975280807.wav', 75190, NULL, NULL, '2023-10-19T08:14:39.341Z', NULL),
('86fb9fcf-6769-4a10-b3f5-0c167de6a6bf', 'file', 'ba-cua-chau.jpg', '7bit', 'image/jpeg', 'file-1699437573903-397105001.jpg', '\\uploads\\file-1699437573903-397105001.jpg', 86120, NULL, NULL, '2023-11-08T09:59:33.905Z', NULL),
('8a9a9167-edd2-4878-ab47-45c7f1486ee9', 'file', '2584f465660827f9a5495c92108cb934.jpg', '7bit', 'image/jpeg', 'file-1699244913415-266227852.jpg', '\\uploads\\file-1699244913415-266227852.jpg', 47071, NULL, NULL, '2023-11-06T04:28:33.420Z', NULL),
('8b34b203-c80c-4e9e-a641-c7767ccade3f', 'file', 'download (2).png', '7bit', 'image/png', 'file-1699451904154-638515256.png', '\\uploads\\file-1699451904154-638515256.png', 8688, NULL, NULL, '2023-11-08T13:58:24.155Z', NULL),
('8b767d38-6f37-4b8e-a7c3-0deaa78c057d', 'file', 'phi_cong_081123141230.wav', '7bit', 'audio/wav', 'file-1699452774522-285964545.wav', '\\uploads\\file-1699452774522-285964545.wav', 97718, NULL, NULL, '2023-11-08T14:12:54.524Z', NULL),
('8cd49abb-5140-4fcf-bb76-c3a28fc29fcb', 'file', 'download (3).png', '7bit', 'image/png', 'file-1699452279952-544948562.png', '\\uploads\\file-1699452279952-544948562.png', 8429, NULL, NULL, '2023-11-08T14:04:39.960Z', NULL),
('904a3e13-a12c-4ff0-98ee-6fd5fb5cfb0f', 'file', 'download (17).png', '7bit', 'image/png', 'file-1699442043784-132575527.png', '\\uploads\\file-1699442043784-132575527.png', 3656, NULL, NULL, '2023-11-08T11:14:03.786Z', NULL),
('90beb37e-e939-4c01-8474-01e02f3f2e50', 'file', 'set-wild-animals_1308-29055.png', '7bit', 'image/png', 'file-1697700650058-95998517.png', '\\uploads\\file-1697700650058-95998517.png', 426502, NULL, NULL, '2023-10-19T07:30:50.061Z', NULL),
('90c9f103-0960-4d16-87f9-04deabc2e985', 'file', 'Recording.mp3', '7bit', 'audio/mpeg', 'file-1697701592257-577378330.mp3', '\\uploads\\file-1697701592257-577378330.mp3', 1832729, NULL, NULL, '2023-10-19T07:46:32.263Z', NULL),
('913cd790-1b6d-4332-8166-7b720008f955', 'file', 'download (18).png', '7bit', 'image/png', 'file-1699449505475-122608341.png', '\\uploads\\file-1699449505475-122608341.png', 3985, NULL, NULL, '2023-11-08T13:18:25.478Z', NULL),
('91b20e7f-ac19-470f-9024-ff1e0fcf652e', 'file', 'troi_dang_mua_081123132421.wav', '7bit', 'audio/wav', 'file-1699449889576-836090960.wav', '\\uploads\\file-1699449889576-836090960.wav', 99766, NULL, NULL, '2023-11-08T13:24:49.578Z', NULL),
('92f4d3f9-38b8-418e-9a8e-7db5cf6158ad', 'file', 'Map-countries-istock-ZarkoCvijovic-20170104.jpg', '7bit', 'image/jpeg', 'file-1697704524604-439805175.jpg', '\\uploads\\file-1697704524604-439805175.jpg', 968118, NULL, NULL, '2023-10-19T08:35:24.615Z', NULL),
('939c72bd-d0f9-42e9-bd54-45b6ddcc6710', 'file', 'image-firefighter-running-hatchet-illustration-96549363.webp', '7bit', 'image/webp', 'file-1699450852731-199301370.webp', '\\uploads\\file-1699450852731-199301370.webp', 20874, NULL, NULL, '2023-11-08T13:40:52.737Z', NULL),
('94e19b2d-f1ab-4fd6-8378-721386b80c43', 'file', 'download.png', '7bit', 'image/png', 'file-1699450910743-996327512.png', '\\uploads\\file-1699450910743-996327512.png', 10910, NULL, NULL, '2023-11-08T13:41:50.745Z', NULL),
('96038cc9-2b41-45ab-8011-e807c2c5ac34', 'file', 'illustration-sepak-takraw-ball-sport-free-vector.jpg', '7bit', 'image/jpeg', 'file-1699245825703-901204369.jpg', '\\uploads\\file-1699245825703-901204369.jpg', 261988, NULL, NULL, '2023-11-06T04:43:45.705Z', NULL),
('9664f344-f7b3-4901-be83-aaf14b1e9bf2', 'file', 'human-eye-illustration_642458-896.webp', '7bit', 'image/webp', 'file-1699440994345-158481184.webp', '\\uploads\\file-1699440994345-158481184.webp', 26870, NULL, NULL, '2023-11-08T10:56:34.352Z', NULL),
('9c0a914b-9997-4792-a3f3-178e11d5bb84', 'file', '71YV75oeClL._AC_UF1000,1000_QL80_.jpg', '7bit', 'image/jpeg', 'file-1699245556088-717513219.jpg', '\\uploads\\file-1699245556088-717513219.jpg', 76083, NULL, NULL, '2023-11-06T04:39:16.089Z', NULL),
('9c396847-cc34-4f49-9dfd-e5bac765d72a', 'file', 'dai_bang_191023080530.wav', '7bit', 'audio/wav', 'file-1697702750919-286453465.wav', '\\uploads\\file-1697702750919-286453465.wav', 70070, NULL, NULL, '2023-10-19T08:05:50.922Z', NULL),
('9c784f20-9e8d-4d03-8430-566de8b11f34', 'file', 'rabbit-pic-1.jpg', '7bit', 'image/jpeg', 'file-1697701679244-391829157.jpg', '\\uploads\\file-1697701679244-391829157.jpg', 226913, NULL, NULL, '2023-10-19T07:47:59.245Z', NULL),
('9caf2493-ab30-4c3e-a146-91aa27140bad', 'file', 'images.jpg', '7bit', 'image/jpeg', 'file-1699244278788-450697207.jpg', '\\uploads\\file-1699244278788-450697207.jpg', 8541, NULL, NULL, '2023-11-06T04:17:58.790Z', NULL),
('9cf79170-3dd0-4140-b59f-b346d8fb3148', 'file', 'depositphotos_30854313-stock-illustration-blue-bird.jpg', '7bit', 'image/jpeg', 'file-1699244250036-920353605.jpg', '\\uploads\\file-1699244250036-920353605.jpg', 26604, NULL, NULL, '2023-11-06T04:17:30.037Z', NULL),
('9d593dfd-b27d-47af-bca1-c4fec08148f9', 'file', 'download (11).png', '7bit', 'image/png', 'file-1699449326703-662806207.png', '\\uploads\\file-1699449326703-662806207.png', 1862, NULL, NULL, '2023-11-08T13:15:26.706Z', NULL),
('9e8168cd-9fb4-48cd-8d29-1fd4fcc584dd', 'file', 'cute-duck-white_1308-41058.webp', '7bit', 'image/webp', 'file-1699244296760-211685977.webp', '\\uploads\\file-1699244296760-211685977.webp', 144938, NULL, NULL, '2023-11-06T04:18:16.762Z', NULL),
('a20377d1-309e-4730-b0b7-d033c78f7f86', 'file', '0452f6cf9784da0dc403b1137184bdc4_t.jpeg', '7bit', 'image/jpeg', 'file-1699245818716-517252798.jpeg', '\\uploads\\file-1699245818716-517252798.jpeg', 47767, NULL, NULL, '2023-11-06T04:43:38.717Z', NULL),
('a31ee1b3-0be8-4521-b0dc-eca62a26bbe8', 'file', 'download (14).png', '7bit', 'image/png', 'file-1699449303218-147062487.png', '\\uploads\\file-1699449303218-147062487.png', 2695, NULL, NULL, '2023-11-08T13:15:03.219Z', NULL),
('a3d15590-cac0-446c-86aa-978c2e5a2188', 'file', 'download.png', '7bit', 'image/png', 'file-1699437976380-208124959.png', '\\uploads\\file-1699437976380-208124959.png', 4001, NULL, NULL, '2023-11-08T10:06:16.382Z', NULL),
('a3d7daeb-61a1-4cd1-a5e5-5008f2994694', 'file', 'weather_.jpg', '7bit', 'image/jpeg', 'file-1697704530620-275478628.jpg', '\\uploads\\file-1697704530620-275478628.jpg', 82414, NULL, NULL, '2023-10-19T08:35:30.625Z', NULL),
('a4853fd6-45e5-4114-b835-5bf9fabb79bc', 'file', 'doctor.webp', '7bit', 'image/webp', 'file-1699450767011-909943942.webp', '\\uploads\\file-1699450767011-909943942.webp', 13772, NULL, NULL, '2023-11-08T13:39:27.012Z', NULL),
('a557b4d7-19e9-4a1b-866c-908c7793254c', 'file', 'hinh-anh-ve-ong-ba-ba-chau-de-thuong-5.jpg', '7bit', 'image/jpeg', 'file-1699437504542-126082910.jpg', '\\uploads\\file-1699437504542-126082910.jpg', 51397, NULL, NULL, '2023-11-08T09:58:24.544Z', NULL),
('a7716a6d-540c-420c-a36c-570be5a4f053', 'file', 'download (2).png', '7bit', 'image/png', 'file-1699244928817-745677567.png', '\\uploads\\file-1699244928817-745677567.png', 7747, NULL, NULL, '2023-11-06T04:28:48.819Z', NULL),
('a7833bd1-7f27-4683-95b5-b04abfbd64b4', 'file', 'human-legs-profile-vector-illustration-advertising-medical-health-care-publications-animati_635702-309.webp', '7bit', 'image/webp', 'file-1699440415402-702306125.webp', '\\uploads\\file-1699440415402-702306125.webp', 7652, NULL, NULL, '2023-11-08T10:46:55.403Z', NULL),
('aade598f-498a-4f31-9846-6fe7bdab9bc1', 'file', 'dog.webp', '7bit', 'image/webp', 'file-1699243610379-954294049.webp', '\\uploads\\file-1699243610379-954294049.webp', 155300, NULL, NULL, '2023-11-06T04:06:50.381Z', NULL),
('aae5eb74-b144-43df-91dd-52e8a4c122b4', 'file', '51g2qofBtZL.jpg', '7bit', 'image/jpeg', 'file-1699440991632-820480795.jpg', '\\uploads\\file-1699440991632-820480795.jpg', 45392, NULL, NULL, '2023-11-08T10:56:31.633Z', NULL),
('ac130805-2bdb-4c5c-9277-6e9b41cbd86f', 'file', 'ba-cua-chau.jpg', '7bit', 'image/jpeg', 'file-1699437507555-713683633.jpg', '\\uploads\\file-1699437507555-713683633.jpg', 86120, NULL, NULL, '2023-11-08T09:58:27.562Z', NULL),
('ad6790d4-e240-4aa8-8596-374f8295c222', 'file', 'download (1).png', '7bit', 'image/png', 'file-1699440310926-959624200.png', '\\uploads\\file-1699440310926-959624200.png', 2785, NULL, NULL, '2023-11-08T10:45:10.933Z', NULL),
('ae0502fc-26c1-4dfc-8d39-899712eee2d2', 'file', 'pngtree-illustrator-mother-mother-and-child-mother-and-child-illustration-illustration-mother-png-image_493083.jpg', '7bit', 'image/jpeg', 'file-1699437488902-569259134.jpg', '\\uploads\\file-1699437488902-569259134.jpg', 34137, NULL, NULL, '2023-11-08T09:58:08.903Z', NULL),
('ae3a381c-ef6a-4e02-a912-065bec955e09', 'file', 'sports.png', '7bit', 'image/png', 'file-1697704448458-907933794.png', '\\uploads\\file-1697704448458-907933794.png', 277928, NULL, NULL, '2023-10-19T08:34:08.461Z', NULL),
('af2a66d3-695a-4fc3-b57f-e7f4ee5e733c', 'file', 'Flag_of_North_Vietnam_(1955â1976).svg.webp', '7bit', 'image/webp', 'file-1699441905144-619220117.webp', '\\uploads\\file-1699441905144-619220117.webp', 834, NULL, NULL, '2023-11-08T11:11:45.150Z', NULL),
('afe9d9a1-102d-40c3-beee-23e1a3938757', 'file', 'white-cloud-clipart-design-illustration-free-png.webp', '7bit', 'image/webp', 'file-1699438271909-396014676.webp', '\\uploads\\file-1699438271909-396014676.webp', 37924, NULL, NULL, '2023-11-08T10:11:11.910Z', NULL),
('b033d624-72e9-4e89-93e4-8b04e19e5d2a', 'file', '320512529_1768084710230385_3479491692880634771_n.jpg', '7bit', 'image/jpeg', 'file-1697795896714-116402972.jpg', '\\uploads\\file-1697795896714-116402972.jpg', 376455, NULL, NULL, '2023-10-20T09:58:16.724Z', NULL),
('b17bca0e-6dad-4dcd-8f68-3ab6ffdb4527', 'file', 'download (1).png', '7bit', 'image/png', 'file-1699440985939-427821630.png', '\\uploads\\file-1699440985939-427821630.png', 2785, NULL, NULL, '2023-11-08T10:56:25.946Z', NULL),
('b1f594be-7531-4a1a-afe8-8e55fcd31b83', 'file', 'download (3).png', '7bit', 'image/png', 'file-1699441918558-685983833.png', '\\uploads\\file-1699441918558-685983833.png', 392, NULL, NULL, '2023-11-08T11:11:58.565Z', NULL),
('b25c2bca-971c-4a10-a7f6-5d55ae9e18d3', 'file', 'smiling-pilot-vector-airport-background-51011077.webp', '7bit', 'image/webp', 'file-1699451151265-192941354.webp', '\\uploads\\file-1699451151265-192941354.webp', 35774, NULL, NULL, '2023-11-08T13:45:51.268Z', NULL),
('b309d40b-e5b2-46fd-8e7d-d8534beb90c6', 'file', 'troi_dang_mua_081123110254.wav', '7bit', 'audio/wav', 'file-1699441382856-933358939.wav', '\\uploads\\file-1699441382856-933358939.wav', 70070, NULL, NULL, '2023-11-08T11:03:02.857Z', NULL),
('b3edd792-0945-46e5-be6f-ed965b9fec47', 'file', 'phi_cong_081123140903.wav', '7bit', 'audio/wav', 'file-1699452554650-175871118.wav', '\\uploads\\file-1699452554650-175871118.wav', 103862, NULL, NULL, '2023-11-08T14:09:14.658Z', NULL),
('b53c5d12-0960-42e1-86f7-57186c28fc86', 'file', 'ong_ngoai_081123094755.wav', '7bit', 'audio/wav', 'file-1699436884732-989491159.wav', '\\uploads\\file-1699436884732-989491159.wav', 60854, NULL, NULL, '2023-11-08T09:48:04.739Z', NULL),
('b68178b8-605b-49cc-8896-4d99a65485f4', 'file', 'depositphotos_17236893-stock-illustration-human-arm-and-hand-extended.jpg', '7bit', 'image/jpeg', 'file-1699441036968-744521326.jpg', '\\uploads\\file-1699441036968-744521326.jpg', 11992, NULL, NULL, '2023-11-08T10:57:16.974Z', NULL),
('b94f9b65-474a-4d1f-8252-8ec43607d675', 'file', 'istockphoto-1197801200-612x612.jpg', '7bit', 'image/jpeg', 'file-1699452130816-735186948.jpg', '\\uploads\\file-1699452130816-735186948.jpg', 28617, NULL, NULL, '2023-11-08T14:02:10.819Z', NULL),
('bb021b23-946b-48c8-9f9e-649d6bf6a50b', 'file', '360_F_80462305_W7ICF9HWh3OUSHUpEV36laX0KE81vS2H.jpg', '7bit', 'image/jpeg', 'file-1699440424996-649243346.jpg', '\\uploads\\file-1699440424996-649243346.jpg', 26253, NULL, NULL, '2023-11-08T10:47:05.002Z', NULL),
('bb59f282-1a5c-420c-b0b1-8ebc63c79145', 'file', 'human-legs-profile-vector-illustration-advertising-medical-health-care-publications-animati_635702-309.webp', '7bit', 'image/webp', 'file-1699441011419-601831839.webp', '\\uploads\\file-1699441011419-601831839.webp', 7652, NULL, NULL, '2023-11-08T10:56:51.421Z', NULL),
('bd898296-6e9a-4fb4-8a3f-26b3c01e1b95', 'file', 'mouse-animal-cartoon-colored-clipart-illustration-free-vector.jpg', '7bit', 'image/jpeg', 'file-1699243763292-264265734.jpg', '\\uploads\\file-1699243763292-264265734.jpg', 78009, NULL, NULL, '2023-11-06T04:09:23.293Z', NULL),
('bea219b7-5b37-425e-bb9d-02416836604a', 'file', 'image_processing20200622-3260-rnu8v7.png', '7bit', 'image/png', 'file-1699244953751-123252022.png', '\\uploads\\file-1699244953751-123252022.png', 238486, NULL, NULL, '2023-11-06T04:29:13.753Z', NULL),
('bf79fbd3-b73f-4b3d-a4e8-1352de450a76', 'file', 'smiling-cashier-girl-28845990.webp', '7bit', 'image/webp', 'file-1699451725342-367771315.webp', '\\uploads\\file-1699451725342-367771315.webp', 15500, NULL, NULL, '2023-11-08T13:55:25.345Z', NULL),
('c082ae20-990c-4788-ba66-f1a38d0b5057', 'file', 'pngtree-illustrator-mother-mother-and-child-mother-and-child-illustration-illustration-mother-png-image_493083.jpg', '7bit', 'image/jpeg', 'file-1699437578167-730452312.jpg', '\\uploads\\file-1699437578167-730452312.jpg', 34137, NULL, NULL, '2023-11-08T09:59:38.175Z', NULL),
('c1e53dec-b4fa-46e1-b7fa-79a362ac7ef7', 'file', '51g2qofBtZL.jpg', '7bit', 'image/jpeg', 'file-1699440305697-669830731.jpg', '\\uploads\\file-1699440305697-669830731.jpg', 45392, NULL, NULL, '2023-11-08T10:45:05.698Z', NULL),
('c2993971-dfbf-47be-8db4-591ac614ca7c', 'file', 'download (7).jpeg', '7bit', 'image/jpeg', 'file-1699452149056-910502331.jpeg', '\\uploads\\file-1699452149056-910502331.jpeg', 5543, NULL, NULL, '2023-11-08T14:02:29.058Z', NULL),
('c3e8464d-d435-432c-b5a6-a36d26c003b9', 'file', 'troi_dang_mua_081123101447.wav', '7bit', 'audio/wav', 'file-1699438499370-522435261.wav', '\\uploads\\file-1699438499370-522435261.wav', 134582, NULL, NULL, '2023-11-08T10:14:59.372Z', NULL),
('c57a9794-a4a2-4aeb-bfaf-10d11aa6d2a2', 'file', 'sticker-design-with-chef-boy-cooking-food-cartoon-character_1308-67607.webp', '7bit', 'image/webp', 'file-1699452345646-858549420.webp', '\\uploads\\file-1699452345646-858549420.webp', 34534, NULL, NULL, '2023-11-08T14:05:45.649Z', NULL),
('c59feba5-8edd-4695-b981-4cd3302a64c9', 'file', 'download (1).png', '7bit', 'image/png', 'file-1699451576423-197162263.png', '\\uploads\\file-1699451576423-197162263.png', 8418, NULL, NULL, '2023-11-08T13:52:56.424Z', NULL),
('c7717472-882d-48e6-b49f-91f8b3da3c4d', 'file', 'download (6).png', '7bit', 'image/png', 'file-1699449445961-62393968.png', '\\uploads\\file-1699449445961-62393968.png', 2383, NULL, NULL, '2023-11-08T13:17:25.963Z', NULL),
('c85ea8e1-da0e-43eb-bebb-3692363172ec', 'file', 'cau_may_061123050007.wav', '7bit', 'audio/wav', 'file-1699246819587-936827546.wav', '\\uploads\\file-1699246819587-936827546.wav', 113078, NULL, NULL, '2023-11-06T05:00:19.594Z', NULL),
('c8a664ec-1ab3-4969-a626-8fb6ea72884c', 'file', 'download (5).png', '7bit', 'image/png', 'file-1699442054897-461218538.png', '\\uploads\\file-1699442054897-461218538.png', 1416, NULL, NULL, '2023-11-08T11:14:14.898Z', NULL),
('c9bc0fea-5e03-4803-9b2a-d7b5b801154f', 'file', 'ba-cua-chau.jpg', '7bit', 'image/jpeg', 'file-1699437467020-481297671.jpg', '\\uploads\\file-1699437467020-481297671.jpg', 86120, NULL, NULL, '2023-11-08T09:57:47.026Z', NULL),
('ca18b9fd-7feb-4f45-aa95-d03cb54976dd', 'file', 'download (1).jpeg', '7bit', 'image/jpeg', 'file-1699451566174-623688204.jpeg', '\\uploads\\file-1699451566174-623688204.jpeg', 6277, NULL, NULL, '2023-11-08T13:52:46.182Z', NULL),
('cb6a11a6-d24b-4f72-a314-3abd0fb5d966', 'file', 'download (9).png', '7bit', 'image/png', 'file-1699442117723-773589244.png', '\\uploads\\file-1699442117723-773589244.png', 468, NULL, NULL, '2023-11-08T11:15:17.724Z', NULL),
('cbb7dcf6-fb31-4826-b2cf-f2e120d72b56', 'file', 'download (1).jpg', '7bit', 'image/jpeg', 'file-1697701676820-484271141.jpg', '\\uploads\\file-1697701676820-484271141.jpg', 5083, NULL, NULL, '2023-10-19T07:47:56.822Z', NULL),
('cea11701-ca1c-451e-826f-e9fb4d6a5679', 'file', 'il_fullxfull.3306704673_hepv.webp', '7bit', 'image/webp', 'file-1699438198492-843208042.webp', '\\uploads\\file-1699438198492-843208042.webp', 46654, NULL, NULL, '2023-11-08T10:09:58.498Z', NULL),
('cefe9242-cbab-4565-a90e-bb6d2c073638', 'file', 'badminton-sports-cartoon-colored-clipart-free-vector.jpg', '7bit', 'image/jpeg', 'file-1699245194898-545564837.jpg', '\\uploads\\file-1699245194898-545564837.jpg', 232429, NULL, NULL, '2023-11-06T04:33:14.899Z', NULL),
('cf200a2c-c423-4c38-bce3-445428cb0db8', 'file', 'pngtree-father-and-son-illustration-png-image_8949826.png', '7bit', 'image/png', 'file-1699437545925-602499411.png', '\\uploads\\file-1699437545925-602499411.png', 162352, NULL, NULL, '2023-11-08T09:59:05.926Z', NULL),
('d004ceb4-7307-4f0c-b0c0-791337e318d9', 'file', 'ong_ngoai_081123094635.wav', '7bit', 'audio/wav', 'file-1699436802078-618244821.wav', '\\uploads\\file-1699436802078-618244821.wav', 82358, NULL, NULL, '2023-11-08T09:46:42.079Z', NULL),
('d24455ea-cac9-4d9f-ad80-16b5b40b6884', 'file', 'vector-illustration-little-scientist-holding-test-tube-30006556.webp', '7bit', 'image/webp', 'file-1699451168494-363105949.webp', '\\uploads\\file-1699451168494-363105949.webp', 30490, NULL, NULL, '2023-11-08T13:46:08.496Z', NULL),
('d24b0abd-0f19-4013-96d5-285acd74fd89', 'file', 'troi_dang_mua_081123101933.wav', '7bit', 'audio/wav', 'file-1699438784938-612666249.wav', '\\uploads\\file-1699438784938-612666249.wav', 145846, NULL, NULL, '2023-11-08T10:19:44.948Z', NULL),
('d32a25c6-4794-4f7f-9b8e-5cd7a1dd5644', 'file', 'pngtree-billiard-clipart-man-in-glasses-playing-billiards-cartoon-vector-png-image_6800356.png', '7bit', 'image/png', 'file-1699245561365-944413585.png', '\\uploads\\file-1699245561365-944413585.png', 39397, NULL, NULL, '2023-11-06T04:39:21.366Z', NULL),
('d3f4c41e-f2ef-4f0d-bc58-19adba549e1e', 'file', '186e2b0e58193f5d939c2c7037cb974a.gif', '7bit', 'image/gif', 'file-1699244642836-918786011.gif', '\\uploads\\file-1699244642836-918786011.gif', 67795, NULL, NULL, '2023-11-06T04:24:02.837Z', NULL),
('d56997ab-1566-4cdc-b317-ec783aa4b884', 'file', '36acbf6099b7a128b93f90915e3e90b8.png', '7bit', 'image/png', 'file-1699438076419-745406892.png', '\\uploads\\file-1699438076419-745406892.png', 48765, NULL, NULL, '2023-11-08T10:07:56.425Z', NULL),
('d60906d4-99e9-4968-8f27-d912e6d1ee4b', 'file', 'smiling-truck-driver-car-delivery-cargo-service-64165072.webp', '7bit', 'image/webp', 'file-1699452284848-163374221.webp', '\\uploads\\file-1699452284848-163374221.webp', 22336, NULL, NULL, '2023-11-08T14:04:44.856Z', NULL),
('d69f8fe7-8e73-4140-b441-c50e16e2cb21', 'file', 'smiling-pilot-vector-airport-background-51011077.webp', '7bit', 'image/webp', 'file-1699450791776-794598354.webp', '\\uploads\\file-1699450791776-794598354.webp', 35774, NULL, NULL, '2023-11-08T13:39:51.777Z', NULL),
('d7539e22-07cd-406c-822e-66a53f6ef973', 'file', 'pngtree-natural-disasters-flood-png-image_2805797.jpg', '7bit', 'image/jpeg', 'file-1699438269053-7551556.jpg', '\\uploads\\file-1699438269053-7551556.jpg', 46171, NULL, NULL, '2023-11-08T10:11:09.055Z', NULL),
('d83e8c73-bea1-4500-ab53-0ae489907977', 'file', 'download (8).png', '7bit', 'image/png', 'file-1699442115373-255203767.png', '\\uploads\\file-1699442115373-255203767.png', 1881, NULL, NULL, '2023-11-08T11:15:15.375Z', NULL),
('dae4bd78-bbc5-4462-b5a5-7e0f23302b30', 'file', 'download (2).jpeg', '7bit', 'image/jpeg', 'file-1699451719778-220702057.jpeg', '\\uploads\\file-1699451719778-220702057.jpeg', 6417, NULL, NULL, '2023-11-08T13:55:19.781Z', NULL),
('dc10f11c-12fb-4693-95a8-147c2ef6938f', 'file', 'business-man-cartoon-character_1308-134316.webp', '7bit', 'image/webp', 'file-1699451730718-841713988.webp', '\\uploads\\file-1699451730718-841713988.webp', 29636, NULL, NULL, '2023-11-08T13:55:30.726Z', NULL),
('df4dd50a-30ab-41e4-941d-a857d286e7b2', 'file', 'Recording.mp3', '7bit', 'audio/mpeg', 'file-1697701554812-490669470.mp3', '\\uploads\\file-1697701554812-490669470.mp3', 1832729, NULL, NULL, '2023-10-19T07:45:54.822Z', NULL),
('e1b85940-e4dc-4115-8750-beba1106818b', 'file', 'download.png', '7bit', 'image/png', 'file-1699244119570-528006013.png', '\\uploads\\file-1699244119570-528006013.png', 11509, NULL, NULL, '2023-11-06T04:15:19.572Z', NULL),
('e22772f8-2e03-442a-b362-cc0205fea4d2', 'file', '360_F_285549656_9qr8ihPTt5IlmrdNF9Vq9otqKtHV9LQ9.jpg', '7bit', 'image/jpeg', 'file-1699244110444-492028942.jpg', '\\uploads\\file-1699244110444-492028942.jpg', 30910, NULL, NULL, '2023-11-06T04:15:10.446Z', NULL),
('e4840933-d593-4013-a58b-e7f5793eb5ef', 'file', 'download (2).png', '7bit', 'image/png', 'file-1699442038307-566168495.png', '\\uploads\\file-1699442038307-566168495.png', 4203, NULL, NULL, '2023-11-08T11:13:58.308Z', NULL),
('e742392e-6c75-48cd-a12b-b968ae6b5226', 'file', 'download (7).png', '7bit', 'image/png', 'file-1699442092676-419093348.png', '\\uploads\\file-1699442092676-419093348.png', 2120, NULL, NULL, '2023-11-08T11:14:52.678Z', NULL),
('e837b314-03fb-48f3-b383-62bdc6b1062e', 'file', 'unnamed.png', '7bit', 'image/png', 'file-1699245806539-236081655.png', '\\uploads\\file-1699245806539-236081655.png', 76827, NULL, NULL, '2023-11-06T04:43:26.541Z', NULL),
('e91dd2e3-c73c-4e30-b979-ceb25420473d', 'file', 'download (15).png', '7bit', 'image/png', 'file-1699449365122-536831003.png', '\\uploads\\file-1699449365122-536831003.png', 1125, NULL, NULL, '2023-11-08T13:16:05.125Z', NULL),
('ed0229c4-6249-418b-98d8-25e9336a1a00', 'file', 'download (2).png', '7bit', 'image/png', 'file-1699441913386-287496978.png', '\\uploads\\file-1699441913386-287496978.png', 4203, NULL, NULL, '2023-11-08T11:11:53.387Z', NULL),
('ef94ddc6-d53c-4408-92fe-786bf704ecf4', 'file', 'cartoon-police-officer-policeman-cartoon-police-officer-policeman-isolated-white-background-colorful-book-page-design-kids-105689584.webp', '7bit', 'image/webp', 'file-1699450831285-457570966.webp', '\\uploads\\file-1699450831285-457570966.webp', 20290, NULL, NULL, '2023-11-08T13:40:31.293Z', NULL),
('eff4e904-9dcd-4b6a-93ef-e0a0e5435f29', 'file', 'Color-Schemes-Type-Def-Feat-Image.webp', '7bit', 'image/webp', 'file-1697704477879-174986387.webp', '\\uploads\\file-1697704477879-174986387.webp', 216756, NULL, NULL, '2023-10-19T08:34:37.884Z', NULL),
('f11ca86c-b2b0-42b3-840a-2684f7131d33', 'file', '25b796c78d5180dc1ecc99ba804852c9.jpg', '7bit', 'image/jpeg', 'file-1699244243778-666639559.jpg', '\\uploads\\file-1699244243778-666639559.jpg', 33730, NULL, NULL, '2023-11-06T04:17:23.780Z', NULL),
('f184b05d-6e66-4272-b669-949eff84d1bd', 'file', 'il_fullxfull.3306704673_hepv.webp', '7bit', 'image/webp', 'file-1699438154452-109113894.webp', '\\uploads\\file-1699438154452-109113894.webp', 46654, NULL, NULL, '2023-11-08T10:09:14.459Z', NULL),
('f1f64f28-7609-4ee6-aa4f-6eb46cdd0668', 'file', 'download.jpeg', '7bit', 'image/jpeg', 'file-1699450893931-771414157.jpeg', '\\uploads\\file-1699450893931-771414157.jpeg', 8044, NULL, NULL, '2023-11-08T13:41:33.933Z', NULL),
('f2f1ee20-0435-4af9-8166-1c7bec079132', 'file', 'rabbit-pic-1.jpg', '7bit', 'image/jpeg', 'file-1697701361373-574704701.jpg', '\\uploads\\file-1697701361373-574704701.jpg', 226913, NULL, NULL, '2023-10-19T07:42:41.375Z', NULL),
('f77c3f13-4dfb-4f77-8340-52af81416e37', 'file', 'download (12).png', '7bit', 'image/png', 'file-1699449386407-201196572.png', '\\uploads\\file-1699449386407-201196572.png', 3911, NULL, NULL, '2023-11-08T13:16:26.415Z', NULL),
('f7e24e81-6543-4fa4-8536-a43bf278a98c', 'file', '1779932.png', '7bit', 'image/png', 'file-1699438862442-642135597.png', '\\uploads\\file-1699438862442-642135597.png', 39429, NULL, NULL, '2023-11-08T10:21:02.443Z', NULL),
('f98ea348-870c-4d90-9e86-81115b57a2d1', 'file', 'pngtree-reading-workers-migrant-workers-book-houses-learning-architects-png-image_7157497.png', '7bit', 'image/png', 'file-1699450864834-55017402.png', '\\uploads\\file-1699450864834-55017402.png', 147524, NULL, NULL, '2023-11-08T13:41:04.838Z', NULL);
INSERT INTO `file` (`id`, `fieldName`, `originalName`, `encoding`, `mimeType`, `fileName`, `url`, `size`, `objectType`, `objectId`, `createdAt`, `deletedAt`) VALUES
('fa07974c-575a-4f47-8967-b46fc327782e', 'file', 'amazing-athletics-clipart-royalty-free-athlete-clip-art-vector-images-illustrations-istock.jpg', '7bit', 'image/jpeg', 'file-1699245178735-591537739.jpg', '\\uploads\\file-1699245178735-591537739.jpg', 28474, NULL, NULL, '2023-11-06T04:32:58.737Z', NULL),
('fb152fdc-6ee8-40f5-b538-f62f09f92276', 'file', 'people-playing-table-tennis-hand-drawn-style_23-2148664472.webp', '7bit', 'image/webp', 'file-1699245532836-117079044.webp', '\\uploads\\file-1699245532836-117079044.webp', 36272, NULL, NULL, '2023-11-06T04:38:52.837Z', NULL),
('fc3cf5ee-9401-46a1-89cf-09057a47bac2', 'file', 'download (3).png', '7bit', 'image/png', 'file-1699245191674-647044011.png', '\\uploads\\file-1699245191674-647044011.png', 8485, NULL, NULL, '2023-11-06T04:33:11.675Z', NULL),
('fc6bd3eb-00aa-45a2-8608-ef9c8e8ccafd', 'file', 'bowling-ha-noi-2_1685950315.jpg', '7bit', 'image/jpeg', 'file-1699245563057-719618916.jpg', '\\uploads\\file-1699245563057-719618916.jpg', 80228, NULL, NULL, '2023-11-06T04:39:23.059Z', NULL),
('fd87880f-4c75-4af0-9ab3-1a03bc77cb15', 'file', 'article_7866255_foods-you-should-eat-every-week-to-lose-weight_-04-d58e9c481bce4a29b47295baade4072d.jpg', '7bit', 'image/jpeg', 'file-1697704492718-848620324.jpg', '\\uploads\\file-1697704492718-848620324.jpg', 146438, NULL, NULL, '2023-10-19T08:34:52.723Z', NULL),
('fdd3118d-7321-4140-9bb4-2076e8b64b8d', 'file', '6130977243329f9ad2c1e31422043f15.jpg', '7bit', 'image/jpeg', 'file-1699452342564-821910565.jpg', '\\uploads\\file-1699452342564-821910565.jpg', 33285, NULL, NULL, '2023-11-08T14:05:42.566Z', NULL),
('fe59c768-82f7-49e2-9e82-19489f7db798', 'file', '360_F_656199216_VGjz3GNWFYfoa8BiR7ZLzqkOj3ranf9T.jpg', '7bit', 'image/jpeg', 'file-1699244751662-396525823.jpg', '\\uploads\\file-1699244751662-396525823.jpg', 27827, NULL, NULL, '2023-11-06T04:25:51.664Z', NULL),
('fea92364-9128-4cf4-b69a-a057d901558e', 'file', 'sticker-design-with-chef-boy-cooking-food-cartoon-character_1308-67607.webp', '7bit', 'image/webp', 'file-1699450840252-343736877.webp', '\\uploads\\file-1699450840252-343736877.webp', 34534, NULL, NULL, '2023-11-08T13:40:40.253Z', NULL),
('ff633a01-c282-4c8d-9f70-f61b51715b7d', 'file', 'cartoon-eagle-flying-white-background_29190-7691.webp', '7bit', 'image/webp', 'file-1699244668786-97829433.webp', '\\uploads\\file-1699244668786-97829433.webp', 51008, NULL, NULL, '2023-11-06T04:24:28.788Z', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachmentQuestion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rightAnswer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment0` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrongAnswer1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrongAnswer2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrongAnswer3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deletedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topicId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `type`, `question`, `attachmentQuestion`, `rightAnswer`, `attachment0`, `wrongAnswer1`, `attachment1`, `wrongAnswer2`, `attachment2`, `wrongAnswer3`, `attachment3`, `createdAt`, `updatedAt`, `deletedAt`, `topicId`) VALUES
('00fb907a-be73-4981-8b8e-b080596b5e54', 'Speaking', 'Trời quang mây tạnh', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:12:22.065Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('0148eb83-34ef-44e1-b750-1c6de05f5c92', 'Fill', 'Tay ... cầu lông', NULL, 'vợt', NULL, 'thủ', NULL, 'cơ', NULL, 'viên', NULL, '2023-11-06T04:45:30.264Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('01c3c9ec-a28d-49eb-812b-9d2e2c6c6ef9', 'Fill', 'Con ... tử', NULL, 'sư', NULL, 'cá', NULL, 'bò', NULL, 'chim', NULL, '2023-10-19T08:01:37.225Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('01ea2f5b-877a-48f0-be82-769fa65b2b14', 'Multiple', 'Bộ phần nào dùng để nghe?', NULL, 'Tai', NULL, 'Tay', NULL, 'Chân', NULL, 'Mắt', NULL, '2023-11-08T11:06:41.307Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('01f7af63-e6ee-4f61-a007-e8503821ac5b', 'Speaking', 'Chân', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:57:56.741Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('05fad29d-f484-4b9a-8837-b28e601bf027', 'Speaking', 'Lũ lụt', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:13:58.756Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('096e036e-5f3d-4b89-ae5e-40bb1aa6b8c8', 'Multiple', 'Bộ phận nào dùng để nhìn?', NULL, 'Mắt', NULL, 'Tay', NULL, 'Chân', NULL, 'Miệng', NULL, '2023-11-08T11:06:28.617Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('0c8ea661-a81b-475e-ab4c-a74c9671dd12', 'Fill', 'Cầu ... bóng đá', NULL, 'thủ', NULL, 'cơ', NULL, 'ơn', NULL, 'tiến', NULL, '2023-11-06T04:44:35.474Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('0dcc3e0f-5704-4a7a-a4f2-0ea39c2ab1ce', 'Listening', 'Hãy nghe và chọn môn thể thao', '82de66fa-571a-4099-97e2-201f1ec6a47d', 'Bóng đá', NULL, 'Bóng chuyền', NULL, 'Bóng bàn', NULL, 'Bóng chuyền', NULL, '2023-11-06T04:59:14.557Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('0e9a39b2-6270-4604-9783-e8322b869c12', 'Speaking', 'Xòe bàn tay đếm ngón tay', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:58:39.470Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('0eed631f-cc94-4829-ae61-7734ac18d1cc', 'Speaking', 'Tài xế lái xe', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T14:07:15.309Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('0f8de055-f217-44e7-91bd-e25578da73ee', 'Fill', '... thủ bắn súng', NULL, 'Xạ', NULL, 'Cầu', NULL, 'Tay', NULL, 'Cơ', NULL, '2023-11-06T04:46:02.893Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('1482ed52-1dd6-4cb4-a8c1-78ea9a360f1b', 'Listening', 'Hãy lắng nghe và chọn đúng từ bạn nghe được', '2accafaf-b35e-4d6c-ad59-3c7da7f833ca', 'Cá hồi', NULL, 'Cá heo', NULL, 'Cá voi', NULL, 'Cá chuồn', NULL, '2023-10-19T08:19:00.998Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('1741357c-84cf-40e2-83d9-b1a0daffd8ef', 'Speaking', 'Cả nhà thương nhau', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T09:43:23.109Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('19040714-9b8d-4e3c-8938-38d2b7738933', 'Image', 'Phi công?', NULL, 'Pilot', 'b25c2bca-971c-4a10-a7f6-5d55ae9e18d3', 'Writer', '41190541-476f-4e86-823c-eaef27168837', 'Scientist', 'd24455ea-cac9-4d9f-ad80-16b5b40b6884', 'Musician', '84e5690d-4051-4f03-9e3f-1c2e020a880b', '2023-11-08T13:46:26.928Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('1968a7b9-3098-4a23-ae63-8b251876fe72', 'Listening', 'Hãy nghe và chọn từ đúng', 'd24b0abd-0f19-4013-96d5-285acd74fd89', 'Nước biển dâng', NULL, 'Lũ lụt', NULL, 'Mưa', NULL, 'Hạn hán', NULL, '2023-11-08T10:19:46.393Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('1a106b02-7db8-4efb-83e3-3156245f7df9', 'Speaking', 'Hạn hán', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:14:02.208Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('1efa36f9-5ef3-471a-a753-0ae4f6917c8b', 'Listening', 'Hãy nghe và chọn từ đúng', '4e1f6f86-2ef5-41fc-80f0-1928cee03b97', 'Miệng', NULL, 'Tay', NULL, 'Chân', NULL, 'Tóc', NULL, '2023-11-08T11:02:23.208Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('233a1474-6ace-453e-a3cc-cc90ccc1f830', 'Image', 'Tóc?', NULL, 'Hair', 'b17bca0e-6dad-4dcd-8f68-3ab6ffdb4527', 'Mouth', '245044b8-8dc1-4b44-8030-30117cdd7791', 'Ear', 'aae5eb74-b144-43df-91dd-52e8a4c122b4', 'Eye', '9664f344-f7b3-4901-be83-aaf14b1e9bf2', '2023-11-08T10:56:35.373Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('23ccefd3-95e7-4453-b098-ac8b3fa6e568', 'Speaking', 'Anh em hòa thuận', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:01:10.021Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('249603f3-befa-4cfb-906f-245c8fbe9913', 'Speaking', 'Miệng', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:58:01.498Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('24d33afd-db06-4048-91fe-7b721e6ebcf2', 'Image', 'Con công?', NULL, 'Peacock', 'd3f4c41e-f2ef-4f0d-bc58-19adba549e1e', 'Eagle', 'ff633a01-c282-4c8d-9f70-f61b51715b7d', 'Woodpecker', '3386062e-4093-420f-aa2b-d3857358bfbd', 'Sparrow', 'fe59c768-82f7-49e2-9e82-19489f7db798', '2023-11-06T04:25:53.365Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('27485024-1910-48f1-94c0-f11da9fee673', 'Image', 'Con sư tử?', NULL, 'Lion', '44479ebe-9950-48df-8bba-d7b3579c3a0e', 'Mice', '1a2991d4-5c20-419d-9d0c-dd6d2fb404ae', 'Cat', '040ecb56-29ca-4edc-a155-cc56d983c7ae', 'Dog', 'aade598f-498a-4f31-9846-6fe7bdab9bc1', '2023-11-06T04:06:51.883Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('290fa3fb-5c16-4c82-a435-84cb2eacb4c2', 'Listening', 'Hãy nghe và chọn từ đúng', '70f36604-6d41-4f73-ba8d-39d7607c4538', 'Khí hậu thay đổi', NULL, 'Nước biển dâng', NULL, 'Lũ lụt', NULL, 'Hạn hán', NULL, '2023-11-08T10:16:56.121Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('2986a6f5-9c5a-4f3c-a5a0-49e66928bf1a', 'Multiple', 'Quốc gia nào ở châu Âu?', NULL, 'Tây Ban Nha', NULL, 'Iran', NULL, 'Mexico', NULL, 'Nam Phi', NULL, '2023-11-08T13:20:28.418Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('29915625-a1c0-4c9d-a1b4-ac8df14453f7', 'Listening', 'Hãy nghe và chọn từ đúng', '0ac03952-4a82-4e41-b58d-c3103853981f', 'Bà ngoại', NULL, 'Bà nội', NULL, 'Bà út', NULL, 'Bà ba', NULL, '2023-11-08T09:48:53.156Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('29b23658-5e97-43e9-93c2-09dd3e6e8b9b', 'Image', 'Lập trình viên?', NULL, 'Programmer', '0cd8ebef-b619-4c14-acad-dfe3399a17f8', 'Carpenter', 'ca18b9fd-7feb-4f45-aa95-d03cb54976dd', 'Hairdresser', 'c59feba5-8edd-4695-b981-4cd3302a64c9', 'Farmer', '2618d7f7-8011-4833-819c-30d4248271fb', '2023-11-08T13:53:05.881Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('2aab31d7-2d69-43f1-8fe8-d420f09fb2a4', 'Speaking', 'Con yêu cha mẹ', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T09:42:43.903Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('2b29284d-fdbb-4343-9ba1-87cbc7d2a7bf', 'Image', 'Cánh tay?', NULL, 'Arm', '5bad5c0b-e1bf-4b93-865e-065973ee7d65', 'Ear', 'c1e53dec-b4fa-46e1-b7fa-79a362ac7ef7', 'Hair', 'ad6790d4-e240-4aa8-8596-374f8295c222', 'Hand', '1c0c973c-bdb1-4959-ba5b-5f76a34769bb', '2023-11-08T10:45:18.004Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('2ed24261-faa2-4396-9dec-36fa3e53cb42', 'Listening', 'Hãy nghe và chọn từ đúng', '77b8c486-e99d-4730-861b-38ec153ab125', 'Tai', NULL, 'Tay', NULL, 'Chân', NULL, 'Mũi', NULL, '2023-11-08T11:03:59.472Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('2f03f762-395e-409a-b6fc-40ee4495d9bb', 'Image', 'Mưa?', NULL, 'Rain', 'a3d15590-cac0-446c-86aa-978c2e5a2188', 'Sunny', '635d97af-297e-40c3-b048-015f1c76ce76', 'Windy', '1480c68a-3276-448d-88b9-5fa7b83619c7', 'Tornado', '24b8f3a6-1153-4af0-af66-ccc97a5fddb6', '2023-11-08T10:06:47.393Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('2f697a98-7550-4392-8779-92bd2e263c86', 'Image', 'Xin-ga-po?', NULL, 'Singapore', '09a71d4a-5de5-44a8-9398-a196ab90e677', 'Mexico', '6135522f-b7e7-40cc-b0cc-bc85b68e6495', 'Portugal', '913cd790-1b6d-4332-8166-7b720008f955', 'UK', '80067b9c-9616-481b-9a61-3f30cc7dd360', '2023-11-08T13:18:31.039Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('2fe6ef82-aeb2-4c86-bd46-93d5d550e64d', 'Speaking', 'Trời mưa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:13:47.066Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('307bafd5-9b28-49b9-bc28-89e2be453bda', 'Image', 'Ma-lay-xi-a?', NULL, 'Malaysia?', 'c7717472-882d-48e6-b49f-91f8b3da3c4d', 'Thailand', '1176a343-a595-4bba-a0ad-2cdd9aff09d9', 'Canada', '6666e39f-abf3-4d34-93ca-a8b95e5ec6b7', 'China PR', '156c64e9-27df-43b0-8b56-985b1148a9ef', '2023-11-08T13:17:56.742Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('30d6ee02-6938-4ab1-bc44-dbe7f88e688c', 'Speaking', 'Mũi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:58:06.621Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('31938694-db66-4203-89bb-bbffd5b0bafa', 'Image', 'Nhật Bản', NULL, 'Japan', 'e91dd2e3-c73c-4e30-b979-ceb25420473d', 'Republic of Korea', '504659fa-395e-4388-b0b7-cf5d5795361e', 'Mexico', 'f77c3f13-4dfb-4f77-8340-52af81416e37', 'Philippines', '7e2452c1-0439-4312-8b2f-8836111e1245', '2023-11-08T13:16:55.620Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('3770865a-919c-4bc2-af0b-318b94ad21e3', 'Speaking', 'Mưa gió bão bùng', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:12:34.940Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('3998ebbc-a020-43c2-aa5b-4b6fcf138a5a', 'Listening', 'Hãy nghe và chọn nghề nghiệp', '6b0cff5b-768b-4eec-96c3-e5929f71c7ed', 'Lập trình viên', NULL, 'Kỹ sư', NULL, 'Nhà khoa học', NULL, 'Thợ hàn', NULL, '2023-11-08T14:11:25.551Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('3c6b730f-a0d5-4eef-bb47-f6ed7ca0e1cf', 'Image', 'Bà?', NULL, 'Grandmother', '4db0b601-eedc-4c24-a269-35558baf0519', 'Grandfather', '1a359a0c-1b0b-4f8e-8bf5-8b64722eea3b', 'Dad', 'cf200a2c-c423-4c38-bce3-445428cb0db8', 'Mom', '6b03d9db-1cbe-4ab8-9bbb-2aff2e1ab3cd', '2023-11-08T09:59:11.716Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('3cb89c2a-a010-4c72-bf82-ff6f52dea7c5', 'Image', 'Việt Nam?', NULL, 'Viet Nam', 'af2a66d3-695a-4fc3-b57f-e7f4ee5e733c', 'USA', 'ed0229c4-6249-418b-98d8-25e9336a1a00', 'France', 'b1f594be-7531-4a1a-afe8-8e55fcd31b83', 'Russia', '8360462a-73df-4618-9e63-35bc7405f0e5', '2023-11-08T11:12:14.134Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('3d20876b-eda2-457c-96f2-52a4585daffd', 'Image', 'Cảnh sát?', NULL, 'Police', 'ef94ddc6-d53c-4408-92fe-786bf704ecf4', 'Chef', 'fea92364-9128-4cf4-b69a-a057d901558e', 'Firefighter', '939c72bd-d0f9-42e9-bd54-45b6ddcc6710', 'Architect', 'f98ea348-870c-4d90-9e86-81115b57a2d1', '2023-11-08T13:41:06.026Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('3e85bd4e-84f2-45c6-8f10-ea49192c91e0', 'Speaking', 'Nước chảy đá mòn', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:13:37.572Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('411101ed-43fb-42c2-8ed8-714c84a2ec78', 'Multiple', 'Con vật có cánh và có thể bay lượn khắp bầu trời?', NULL, 'Chim sẻ', NULL, 'Chim cánh cụt', NULL, 'Đà điểu', NULL, 'Rắn', NULL, '2023-10-19T07:54:31.624Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('44a48147-2608-475a-a50b-0d11be12246d', 'Fill', 'Lốc ...', NULL, 'xoáy', NULL, 'mưa', NULL, 'gió', NULL, 'bão', NULL, '2023-11-08T10:40:12.876Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('45bd13b2-1608-4940-a121-7931dc089b18', 'Image', 'Thợ may?', NULL, 'Tailor', 'dae4bd78-bbc5-4462-b5a5-7e0f23302b30', 'Cashier', 'bf79fbd3-b73f-4b3d-a4e8-1352de450a76', 'Businessman', 'dc10f11c-12fb-4693-95a8-147c2ef6938f', 'Secretary', '38d54da4-b2a2-437e-bd76-8c2b50bdf4d0', '2023-11-08T13:55:37.547Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('4dcd57fc-95fe-47d7-9b3f-9682a945b70e', 'Image', 'Bác sĩ?', NULL, 'Doctor', 'a4853fd6-45e5-4114-b835-5bf9fabb79bc', 'Teacher', '36febced-a658-4ba2-bd01-58736e3e4930', 'Lawyer', '0a02b1f6-ae4e-48c7-8e74-70403d14b3c0', 'Pilot', 'd69f8fe7-8e73-4140-b441-c50e16e2cb21', '2023-11-08T13:39:54.466Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('4eb3d18b-5d7c-4bdb-b935-ff299e7075bd', 'Speaking', 'Thái Lan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T13:21:25.065Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('51712c8c-f289-4191-9aa2-9455cb688921', 'Speaking', 'Con chó biết sủa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:16:09.030Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('51ff7b73-01fa-4781-b33b-89253ef7a73f', 'Image', 'Ông?', NULL, 'Grandfather', '130bbf18-40dc-41a2-b819-d0b6e318f8c2', 'Grandmother', '86fb9fcf-6769-4a10-b3f5-0c167de6a6bf', 'Mom', 'c082ae20-990c-4788-ba66-f1a38d0b5057', 'Dad', '659b083e-6cd2-407e-af1b-92a815b18909', '2023-11-08T09:59:44.929Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('5290d6ce-94f5-48ad-a6cf-5de849fbbcde', 'Multiple', 'Nơi diễn ra các trận đấu bóng đá?', NULL, 'Sân vận động', NULL, 'Hồ bơi', NULL, 'Trường bắn', NULL, 'Khán đài', NULL, '2023-11-06T04:51:16.255Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('5385dfbb-6f10-475f-b67d-78af5b0d74ef', 'Speaking', 'Bóng chày', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-04T04:21:16.877Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('58bb46ed-20d8-45ae-b4c5-2c7063e1bd94', 'Speaking', 'Trời có gió', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:13:51.035Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('59929c11-e382-4380-a8fb-9c570515ee91', 'Speaking', 'Mắt', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:58:04.262Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('5c0bdf1d-9d1f-4a6a-95c0-3fd9aea118d6', 'Speaking', 'Bóng đá', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-04T04:21:08.720Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('5dbf0a25-38f8-4323-ab02-70f5f3da9e66', 'Speaking', 'Môi hở răng lạnh', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:58:25.611Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('5ec4ad7f-e1ac-4634-8c47-e42ecd5af7f3', 'Image', 'Nghệ sĩ ghi-ta', NULL, 'Guitarist', '6897bc29-621f-481a-90cf-fd1c84229bcd', 'Astronaut', '7d78124f-ce5a-469d-9121-fb876abf5f0f', 'Baker', 'b94f9b65-474a-4d1f-8252-8ec43607d675', 'Janitor', 'c2993971-dfbf-47be-8db4-591ac614ca7c', '2023-11-08T14:02:43.765Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('5ff2fd0e-78e9-4337-9d28-ae2b6256a07d', 'Speaking', 'Cánh tay', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:57:49.618Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('60137735-6b06-4b2d-940f-22e0737fa0e4', 'Speaking', 'Bóng bàn', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-04T04:21:20.361Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('60930fa7-f35b-4ef6-81da-5a39f10bc34c', 'Speaking', 'Chị ngã em nâng', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T09:43:07.350Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('6144c0c7-c263-4aa9-b704-19a8937771f8', 'Speaking', 'Malaysia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T13:21:16.751Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('61867296-ff78-4c8e-a928-5da20562635f', 'Image', 'Nhiều mây?', NULL, 'Cloudy', '20220767-674e-4e32-ab6d-63880c8720d2', 'Windy', '1609efdf-482c-4f00-9c74-2a7457fa1785', 'Sunny', 'cea11701-ca1c-451e-826f-e9fb4d6a5679', 'Tornado', '7c5c6a9b-ccb7-40cb-9842-4b7f26cdecd2', '2023-11-08T10:10:09.293Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('61b87817-43cd-4ddf-8949-c72ff35e425d', 'Listening', 'Hãy nghe và chọn từ đúng', '31a632dc-9c8f-414c-a5cd-2cbd0ac13db7', 'Bà nội', NULL, 'Bà ngoại', NULL, 'Ba', NULL, 'Mẹ', NULL, '2023-11-08T09:54:27.652Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('62dbec9b-6617-4490-9426-d95006af35eb', 'Listening', 'Hãy nghe và chọn từ đúng', 'b53c5d12-0960-42e1-86f7-57186c28fc86', 'Mẹ', NULL, 'Cha', NULL, 'Ông', NULL, 'Bà', NULL, '2023-11-08T09:48:05.923Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('66ebddd9-c586-40a2-83ee-5ac105c5be4d', 'Multiple', 'Con vật nào có màu lông trắng và đen và sống ở rừng nhiệt đới?', NULL, 'Gấu trúc', NULL, 'Gấu đen', NULL, 'Lợn rừng', NULL, 'Sư tử', NULL, '2023-10-19T07:59:29.108Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('68702231-95cd-4aa3-9820-a6776db4d6f6', 'Listening', 'Hãy nghe và chọn từ đúng', '2d29e2fe-1b58-4fb2-b95f-8ae4e4e7a4ec', 'Mắt', NULL, 'Mũi', NULL, 'Miệng', NULL, 'Tai', NULL, '2023-11-08T11:01:06.248Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('69f2d496-71ad-4d8d-b67f-ddb63426ca5f', 'Listening', 'Hãy nghe và chọn nghề nghiệp', '4fc195e7-e198-45fb-a5de-b0b96f310e01', 'Phi công', NULL, 'Nông dân', NULL, 'Cảnh sát', NULL, 'Thợ may', NULL, '2023-11-08T14:08:19.227Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('6bc24968-0fbc-4e43-8533-1fd46aa6b093', 'Fill', 'Mưa ... gió lớn', NULL, 'to', NULL, 'mau', NULL, 'mạnh', NULL, 'khỏe', NULL, '2023-11-08T10:40:36.576Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('6c5ad710-9f14-4342-a25f-0af774010871', 'Image', 'Mẹ?', NULL, 'Mom', 'ae0502fc-26c1-4dfc-8d39-899712eee2d2', 'Dad', '636f6642-007b-4028-9ce2-fc72414968cf', 'Grandfather', 'a557b4d7-19e9-4a1b-866c-908c7793254c', 'Grandmother', 'ac130805-2bdb-4c5c-9277-6e9b41cbd86f', '2023-11-08T09:58:29.618Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('6cc6cb1c-ae27-4466-a7df-3e6bec370a1c', 'Speaking', 'Con chó', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:37.700Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('70a20e48-4a92-4562-9529-8173c2fe2b2a', 'Image', 'Con mèo?', NULL, 'Cat', '7bf350a3-54d5-417b-9b6b-2194654c1363', 'Dog', '6b83dad5-0956-4f47-b03f-c438e78ea160', 'Mice', 'bd898296-6e9a-4fb4-8a3f-26b3c01e1b95', 'Lion', '38baa09d-cc3c-4f71-9588-94a2b735337e', '2023-11-06T04:09:29.857Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('74507b73-07c0-4711-8cbe-903100b07aa6', 'Speaking', 'Bác sĩ chữa bệnh', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T14:06:11.134Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('783da3e5-c857-4099-9957-df44d0db96eb', 'Listening', 'Hãy nghe và chọn từ đúng', '4ea0056e-f730-4285-a361-0bc9ccc618f1', 'Cha', NULL, 'Mẹ', NULL, 'Ông', NULL, 'Bà', NULL, '2023-11-08T09:47:38.004Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('7b645579-74cb-4867-8f50-1c1ec055c171', 'Multiple', 'Cha của cha gọi là gì?', NULL, 'Ông nội', NULL, 'Ông ngoại', NULL, 'Chú', NULL, 'Ba', NULL, '2023-11-08T09:41:07.119Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('7cdbe13b-3f5b-496a-a51d-a36d0fcfbfa5', 'Image', 'Tuyết', NULL, 'Snowy', 'f7e24e81-6543-4fa4-8536-a43bf278a98c', 'Flood', '039da7ea-8c5a-4dda-9d67-edf1b14c9db5', 'Drought', '7b7bbc8d-b5b1-4208-8f5a-1edbdb53b969', 'Windy', '4944d7f6-ddfd-4587-9f1c-ff2226c83bd5', '2023-11-08T10:21:04.128Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('7e09782c-b17a-4a83-80e7-74cbf65f450d', 'Speaking', 'Cầu lông', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-04T04:21:12.457Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('7fdb93d3-0bf9-4873-9905-57023faf9f7b', 'Listening', 'Hãy nghe và chọn từ đúng', 'c3e8464d-d435-432c-b5a6-a36d26c003b9', 'Trời đang mưa', NULL, 'Trời có gió', NULL, 'Trời nắng', NULL, 'Sắp có bão', NULL, '2023-11-08T10:15:32.662Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('80fd253f-3e2f-4c23-969d-aac7165b0aeb', 'Image', 'Mũi', NULL, 'Nose', '1b434951-de32-492a-89b1-d8cd36d63e2a', 'Leg', 'a7833bd1-7f27-4683-95b5-b04abfbd64b4', 'Mouth', 'bb021b23-946b-48c8-9f9e-649d6bf6a50b', 'Eye', '0d26121c-9745-41c1-8d4a-171002c478c8', '2023-11-08T10:47:09.709Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('825c1d27-481f-434b-9a27-1854870c789f', 'Image', 'Vương quốc Liên hiệp Anh và Bắc Ai-len?', NULL, 'UK', '0e415a75-e234-441e-a430-c5f5c584a664', 'New Zealand', 'a31ee1b3-0be8-4521-b0dc-eca62a26bbe8', 'Australia', '5bb8b36e-3963-4083-81c6-1da117999dd6', 'Canada', '9d593dfd-b27d-47af-bca1-c4fec08148f9', '2023-11-08T13:15:32.356Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('8640e4d2-8980-4cbc-b488-16d15071675e', 'Speaking', 'Liên Bang Nga', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T13:20:54.598Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('8bc5027f-90cc-4e5f-a894-2eddde87cef7', 'Speaking', 'Việt Nam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T13:21:02.618Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('8c1fb2e3-bbc0-41e9-b476-c54c594c437c', 'Listening', 'Hãy nghe và chọn nghề nghiệp', '8b767d38-6f37-4b8e-a7c3-0deaa78c057d', 'Đầu bếp', NULL, 'Bác sĩ', NULL, 'Nghệ sĩ ghi-ta', NULL, 'Kiến trúc sư', NULL, '2023-11-08T14:12:55.568Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('8c49d960-25fb-47c6-8b6e-4ebab6f7ec6c', 'Speaking', 'Nông dân trồng lúa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T14:06:34.584Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('90a7a0e1-29fa-4a6d-af56-3074ec6bef47', 'Image', 'Cầu lông?', NULL, 'Badminton', 'cefe9242-cbab-4565-a90e-bb6d2c073638', 'Baseball', 'fc3cf5ee-9401-46a1-89cf-09057a47bac2', 'Swimming', '5fe723cd-63ab-460d-9e61-6cc595611b49', 'Athletics', 'fa07974c-575a-4f47-8967-b46fc327782e', '2023-11-06T04:33:21.158Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('9276c67b-3fed-4a97-9767-e6a805015352', 'Speaking', 'Đài Loan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T13:21:10.202Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('92856818-ada2-4962-8045-f6794fd19ce5', 'Image', 'Hạn hán?', NULL, 'Drought', '09fde752-1c60-4633-a0ee-8200189137f1', 'Flood', 'd7539e22-07cd-406c-822e-66a53f6ef973', 'Cloudy', 'afe9d9a1-102d-40c3-beee-23e1a3938757', 'Rainy', '3f9ac2a3-beb8-4c5a-b6c0-d25a82f74a24', '2023-11-08T10:11:15.384Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('93ae5af4-8f41-4ca8-a3ba-a71d3d6e6997', 'Speaking', 'Máu chảy ruột mềm', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:00:55.248Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('9700e09d-380f-46b9-8dd3-8c805f0727aa', 'Fill', 'Vận động ... điền kinh', NULL, 'viên', NULL, 'thủ', NULL, 'vợt', NULL, 'cơ', NULL, '2023-11-06T04:45:07.014Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('977c255d-4a47-44df-9151-d1c2af8ea481', 'Image', 'Con chuột?', NULL, 'Mice', '56b385fc-da62-428f-b79e-91a840aa428d', 'Elephant', 'e22772f8-2e03-442a-b362-cc0205fea4d2', 'Snake', 'e1b85940-e4dc-4115-8750-beba1106818b', 'Chicken', '3837c6a0-8025-4600-984a-721795d7623f', '2023-11-06T04:15:27.835Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('9930b73f-18bf-4e99-8af7-be78fc6822bb', 'Multiple', 'Cha của mẹ gọi là gì?', NULL, 'Ông ngoại', NULL, 'Ông nội', NULL, 'Chú', NULL, 'Cậu', NULL, '2023-11-08T09:40:47.576Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('9dc3ce2b-4fab-4c57-b7f4-901041d0a13f', 'Listening', 'Hãy nghe và chọn nghề nghiệp', 'b3edd792-0945-46e5-be6f-ed965b9fec47', 'Nông dân', NULL, 'Thợ cắt tóc', NULL, 'Phi hành gia', NULL, 'Kế toán', NULL, '2023-11-08T14:09:15.632Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('9e03a499-1b20-4e7c-aca9-a4a6af4d172f', 'Speaking', 'Hoa Kỳ', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T13:21:06.507Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('9ebc87fc-4370-441f-b543-f07fbdfb508b', 'Multiple', 'Quốc gia nào ở Đông Á?', NULL, 'Nhật Bản', NULL, 'Hoa Kỳ', NULL, 'Pháp', NULL, 'Đức', NULL, '2023-11-08T13:19:19.701Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('a1328e39-3923-4e9a-a379-7cddef7a79d3', 'Speaking', 'Con công', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:45.509Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('a7fd3c01-415c-4b30-8a16-f218b58bf9bd', 'Speaking', 'Cảnh sát bắt tội phạm', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T14:06:24.528Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('aa621727-13cf-4a4e-a8da-310e015f009d', 'Image', 'Thám tử?', NULL, 'Detective', '8cd49abb-5140-4fcf-bb76-c3a28fc29fcb', 'Driver', 'd60906d4-99e9-4968-8f27-d912e6d1ee4b', 'Receptionist', '1e9ad1f8-6da1-422c-abb7-91d2bdc14fa3', 'Bellman', '1b78da27-8167-4307-b14f-c576cc5cc244', '2023-11-08T14:05:01.252Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('ac782507-c2e7-451a-9710-70fc79ac13a1', 'Image', 'Chân?', NULL, 'Leg', 'bb59f282-1a5c-420c-b0b1-8ebc63c79145', 'Hand', '4356eacc-00ca-4d2c-9ea4-9ff9c123fcb7', 'Nose', '0d614b6d-648d-4f08-8140-c6a001c2e7c7', 'Arm', 'b68178b8-605b-49cc-8896-4d99a65485f4', '2023-11-08T10:57:20.569Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('af5fc6d3-0874-4844-aedb-7178e744c5df', 'Listening', 'Hãy nghe và chọn từ đúng', '62d74612-0b1d-4bc8-8632-4ef0d02037c4', 'Lũ lụt dâng cao', NULL, 'Trời có lốc xoáy', NULL, 'Ngập úng', NULL, 'Nước lên', NULL, '2023-11-08T10:18:08.916Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('afa6843d-f356-4eda-b2b4-ddccb800eb68', 'Image', 'Bóng bàn', NULL, 'Table Tennis', 'fb152fdc-6ee8-40f5-b538-f62f09f92276', 'Bowling', 'fc6bd3eb-00aa-45a2-8608-ef9c8e8ccafd', 'Billiards', 'd32a25c6-4794-4f7f-9b8e-5cd7a1dd5644', 'Chess', '9c0a914b-9997-4792-a3f3-178e11d5bb84', '2023-11-06T04:39:24.407Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('b3b47ef7-04d8-4430-9fbc-9defe7ded94c', 'Speaking', 'Con chuột', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:57.102Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('b5aebc9c-083c-4e0a-891e-74c60b8e155a', 'Image', 'Phi hành gia?', NULL, 'Astronaut', '564a9920-9b98-48b2-a4ad-9904d44d9501', 'Police', '3f780a9f-d436-40b5-81ed-05c9f4e826ac', 'Farmer', 'fdd3118d-7321-4140-9bb4-2076e8b64b8d', 'Chef', 'c57a9794-a4a2-4aeb-bfaf-10d11aa6d2a2', '2023-11-08T14:05:48.477Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('b673ff40-13f8-4817-a850-a5d421edd021', 'Listening', 'Hãy nghe và chọn từ đúng', 'd004ceb4-7307-4f0c-b0c0-791337e318d9', 'Ông nội', NULL, 'Ông ngoại', NULL, 'Ông út', NULL, 'Ông ba', NULL, '2023-11-08T09:46:43.428Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('b6f18a68-47a0-46a2-8cfd-e170d3f86828', 'Multiple', 'Mẹ của mẹ gọi là gì?', NULL, 'Bà ngoại', NULL, 'Bà nội', NULL, 'Dì', NULL, 'Cô', NULL, '2023-11-08T09:41:49.781Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('b788fc7e-af72-4731-84c8-3b709c91017e', 'Listening', 'Hãy nghe và chọn nghề nghiệp', '67bb8af8-30f8-4303-914f-7dda61e193f6', 'Giáo viên', NULL, 'Thợ sửa ống nước', NULL, 'Nhà văn', NULL, 'Đạo diễn', NULL, '2023-11-08T14:09:59.459Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('b7ec5875-d2aa-4ca2-ad8d-ac5ce2ccd7c3', 'Image', 'Đài Loan?', NULL, 'Taiwan, R.O.C', 'e742392e-6c75-48cd-a12b-b968ae6b5226', 'Singapore', 'd83e8c73-bea1-4500-ab53-0ae489907977', 'Indonesia', 'cb6a11a6-d24b-4f72-a314-3abd0fb5d966', 'Thailand', '2a11dece-4bae-49fe-aa0b-e91bc1db38e5', '2023-11-08T11:15:24.532Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('bb203b86-c61d-4c96-9eb7-5f47a03786cb', 'Image', 'Đạo diễn?', NULL, 'Director', '8b34b203-c80c-4e9e-a641-c7767ccade3f', 'Photographer', '1cf4d356-4e8d-41a3-bc5a-46436c6b5065', 'Plumber', '5e6155d5-fb6c-4156-86ff-fa989dcaa43a', 'Welder', '44af8774-174c-4d3f-963e-33c99bc9745b', '2023-11-08T13:59:02.133Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('bc6988f3-8aa5-4a87-8ce9-57c3e6a48ccd', 'Image', 'Bắn súng', NULL, 'Shooting', 'e837b314-03fb-48f3-b383-62bdc6b1062e', 'Weightlifting', '2e4c18d2-121c-4eaa-bee8-1433911ad4bf', 'Throw Javelin', 'a20377d1-309e-4730-b0b7-d033c78f7f86', 'Sepak Takraw', '96038cc9-2b41-45ab-8011-e807c2c5ac34', '2023-11-06T04:43:46.939Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('bf7c4261-4f0d-486c-ae2a-dd44624fcac5', 'Multiple', 'Môn thể thao nào mà vận động viên phải nâng vật nặng lên?', NULL, 'Cử tạ', NULL, 'Cầu lông', NULL, 'Bắn súng', NULL, 'Bóng bàn', NULL, '2023-11-06T04:49:18.073Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('c03d2473-6f2d-4cb0-99a4-37562a579078', 'Image', 'Cha?', NULL, 'Dad', '1b777a04-8fc1-4b08-8b85-e38afc813ebd', 'Mom', '21dea474-7ed2-46a9-9601-df7a4e2c3a6f', 'Grandfather', '350d1af8-67a2-4d01-999e-83c05391783e', 'Grandmother', 'c9bc0fea-5e03-4803-9b2a-d7b5b801154f', '2023-11-08T09:57:49.158Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('c27ea88d-028b-4ccb-ad2d-e7d95f1ae645', 'Multiple', 'Con vật sống dưới nước?', NULL, 'Cá heo', NULL, 'Chuột túi', NULL, 'Cáo', NULL, 'Đại bàng', NULL, '2023-10-19T07:55:35.237Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('c6bc5215-8b2e-463d-a0fe-aa4e58f59d07', 'Listening', 'Hãy nghe và chọn tên quốc gia', '3cf52b37-f5b6-46b5-bceb-54e55697b286', 'Việt Nam', NULL, 'Nhật Bản', NULL, 'Đài Loan', NULL, 'Trung Quốc', NULL, '2023-11-08T13:22:26.945Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('d31f090b-a79c-4102-8cf2-0d0faf6c251d', 'Speaking', 'Con mèo bắt chuột', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:17:38.793Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('d5c9b47d-f2fb-49aa-a36e-8a35d01a6ceb', 'Listening', 'Hãy lắng nghe và chọn đúng từ bạn nghe được', '9c396847-cc34-4f49-9dfd-e5bac765d72a', 'Đại bàng', NULL, 'Hoàng yến', NULL, 'Chim sẻ', NULL, 'Vành khuyên', NULL, '2023-10-19T08:06:10.208Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('d70cae41-867b-492e-a75a-a33c7e1ac468', 'Multiple', 'Môn thể thao vua là?', NULL, 'Bóng đá', NULL, 'Bóng chày', NULL, 'Điền kinh', NULL, 'Cầu lông', NULL, '2023-11-06T04:46:41.882Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('d82c11ee-da38-4e99-8f1c-d3c3d5c02c17', 'Speaking', 'Giáo viên dạy học', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T14:06:47.754Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('dc326555-3b98-4b4b-8454-72446d7a8c0e', 'Speaking', 'Trung Quốc', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T13:20:58.537Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('dd46904b-fd07-410d-b2fb-bf0149cf06b9', 'Listening', 'Hãy nghe và chọn tên quốc gia', '91b20e7f-ac19-470f-9024-ff1e0fcf652e', 'Hoa Kỳ', NULL, 'Bồ Đào Nha', NULL, 'Tây Ban Nha', NULL, 'Úc', NULL, '2023-11-08T13:24:51.262Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('dd96a911-3fa2-4dfa-aa02-530a31a15904', 'Image', 'Con chó?', NULL, 'Dog', '4e622268-6525-45a2-accf-cc49be9d330e', 'Mice', 'cbb7dcf6-fb31-4826-b2cf-f2e120d72b56', 'Rabbit', '9c784f20-9e8d-4d03-8430-566de8b11f34', 'Cat', '257718a1-557c-47ff-a69e-e05c8a11e64e', '2023-10-19T07:48:03.515Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('dfa40341-edd0-4d0d-a9a3-285b4393889f', 'Listening', 'Hãy nghe và chọn từ đúng', 'b309d40b-e5b2-46fd-8e7d-d8534beb90c6', 'Tóc', NULL, 'Tay', NULL, 'Tai', NULL, 'Chân', NULL, '2023-11-08T11:03:03.794Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('e06c198d-68dd-4451-8da4-0969f9939f76', 'Speaking', 'Trời nắng', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:13:54.555Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('e07feb43-920e-4f3c-b98e-21e1747dda41', 'Image', 'Kế toán?', NULL, 'Accountant', 'f1f64f28-7609-4ee6-aa4f-6eb46cdd0668', 'Writer', '66633ff6-3526-440e-90ea-19635288b0c5', 'Programmer', '94e19b2d-f1ab-4fd6-8378-721386b80c43', 'Engineer', '33148174-b2d3-4322-b584-33be671e46fd', '2023-11-08T13:42:10.350Z', NULL, NULL, 'e8f1382c-d722-4ff4-90b8-67835a75dade'),
('e1a40f92-ec70-4bcc-8bbe-6545e1936162', 'Listening', 'Hãy nghe và chọn môn thể thao', '300bc60a-48e7-4891-9b1a-f8926cc717a7', 'Bơi lội', NULL, 'Đấu kiếm', NULL, 'Bóng chuyền', NULL, 'Cầu lông', NULL, '2023-11-06T05:01:44.203Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('e277bce9-ee75-43c9-adb0-e8bcaa04d587', 'Listening', 'Hãy nghe và chọn từ đúng?', '2082e420-4bf5-40aa-9491-7772cfadc2d0', 'Bàn tay', NULL, 'Chân', NULL, 'Mắt', NULL, 'Mũi', NULL, '2023-11-08T11:00:16.488Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('e28baa5d-3461-4e40-a0c7-9aa8b3a773fa', 'Multiple', 'Con vật nào sống ở Bắc Cực?', NULL, 'Gấu bắc cực', NULL, 'Chim cánh cụt', NULL, 'Cáo bắc cực', NULL, 'Mèo bắc cực', NULL, '2023-10-19T07:53:15.458Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('e60dbcfc-aa6e-4a04-a4c9-753d6695c6be', 'Multiple', 'Môn thể thao nào được chơi dưới nước?', NULL, 'Bơi lội', NULL, 'Bóng đá', NULL, 'Bóng chày', NULL, 'Bóng chuyền', NULL, '2023-11-06T04:47:38.196Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('eb6847a8-f117-4f9d-a8ca-1e1f4169c9ee', 'Listening', 'Hãy lắng nghe và chọn đúng từ bạn nghe được', '8544274b-1cd3-457e-8926-144567ba0de4', 'Nhền nhện', NULL, 'Châu chấu', NULL, 'Bọ cánh cứng', NULL, 'Kiến lửa', NULL, '2023-10-19T08:14:58.868Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('eb78d96f-8843-4fab-93a9-c3f3138e0546', 'Image', 'Con cá?', NULL, 'Fish', 'f11ca86c-b2b0-42b3-840a-2684f7131d33', 'Bird', '9cf79170-3dd0-4140-b59f-b346d8fb3148', 'Python', '9caf2493-ab30-4c3e-a146-91aa27140bad', 'Duck', '9e8168cd-9fb4-48cd-8d29-1fd4fcc584dd', '2023-11-06T04:18:18.857Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('eb95c2c2-cafe-4c1c-8d81-4d75069ecd71', 'Multiple', 'Quốc gia nào ở Bắc Mỹ?', NULL, 'Canada', NULL, 'Brazil', NULL, 'Bồ Đào Nha', NULL, 'Nga', NULL, '2023-11-08T13:19:54.821Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('ecdfaca6-de08-462a-81e8-f95242834de6', 'Multiple', 'Chân dùng để?', NULL, 'Đi, đứng', NULL, 'Nằm', NULL, 'Nhìn', NULL, 'Nghe', NULL, '2023-11-08T11:07:30.534Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('eced8d64-9a69-4f64-bb2b-743543666cbb', 'Speaking', 'Con mèo', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:10.570Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('ef57a7fc-e371-4523-9773-cc8b3040fcd4', 'Speaking', 'Sấm động gió tan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:13:13.101Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('f1c07517-6c39-468b-94b0-49dae439f079', 'Speaking', 'Cháu yêu ông bà', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T09:42:38.435Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('f6962143-98a1-41ed-891d-5f45c6203682', 'Image', 'Bóng đá?', NULL, 'Soccer', '4d2092bd-5725-4b97-afc5-25252ea18ae8', 'Basketball', '8a9a9167-edd2-4878-ab47-45c7f1486ee9', 'Tennis', 'a7716a6d-540c-420c-a36c-570be5a4f053', 'Volleyball', 'bea219b7-5b37-425e-bb9d-02416836604a', '2023-11-06T04:29:18.851Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('f77ed3fe-3f07-4783-821f-76b715cb3abd', 'Multiple', 'Mẹ của cha gọi là gì?', NULL, 'Bà nội', NULL, 'Bà ngoại', NULL, 'Dì', NULL, 'Mợ', NULL, '2023-11-08T09:42:13.336Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c'),
('f88e614c-688f-40b9-a4e9-ea94d789bf90', 'Speaking', 'Bàn tay', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08T10:57:52.585Z', NULL, NULL, '1478baff-5352-4259-9310-4853d20f0770'),
('fc5ac916-153c-4868-b7a7-fe642a000121', 'Listening', 'Hãy nghe và chọn môn thể thao', 'c85ea8e1-da0e-43eb-bebb-3692363172ec', 'Bắn súng', NULL, 'Bơi lội', NULL, 'Bóng chày', NULL, 'Quần vợt', NULL, '2023-11-06T05:00:21.013Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('fc5ad665-2965-44bb-ae0c-95800b98d036', 'Image', 'Gió?', NULL, 'Windy', 'd56997ab-1566-4cdc-b317-ec783aa4b884', 'Drought', '28d4b8f0-099c-4d29-be9c-f6483fb40e47', 'Flood', '4a8ecbf5-de82-418a-9c59-1366937a6da5', 'Sunny', 'f184b05d-6e66-4272-b669-949eff84d1bd', '2023-11-08T10:09:16.838Z', NULL, NULL, 'e865a3b8-59c9-403f-9f61-43a3c772b94b'),
('fcf05618-9eae-4cc7-b522-82c66da5e658', 'Listening', 'Hãy nghe và chọn tên quốc gia', '656160d2-6ade-47a0-810c-9ac6b900ecd3', 'Liên Bang Nga', NULL, 'Hoa Kỳ', NULL, 'Thái Lan', NULL, 'Hàn Quốc', NULL, '2023-11-08T13:23:40.660Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('fd96612e-43ca-4870-89a3-bd4cac961d01', 'Image', 'Hoa Kỳ?', NULL, 'USA', 'e4840933-d593-4013-a58b-e7f5793eb5ef', 'Brazil', '904a3e13-a12c-4ff0-98ee-6fd5fb5cfb0f', 'Portugal', '0353445f-8a4c-4e81-bc25-b23305a24c4e', 'China PR', 'c8a664ec-1ab3-4969-a626-8fb6ea72884c', '2023-11-08T11:14:18.969Z', NULL, NULL, '970a17c7-0323-40c0-8c68-5d87345822e0'),
('ff9e6615-cf3d-402c-afda-146c9d7b2c0f', 'Listening', 'Hãy nghe và chọn môn thể thao', '35abdaa9-cd3e-4b89-ae3c-52afe0cbb76b', 'Cầu mây', NULL, 'Bóng bàn', NULL, 'Cầu lông', NULL, 'Bắn súng', NULL, '2023-11-06T04:58:21.237Z', NULL, NULL, '6f221c33-5e86-4a7b-b7e7-6cedef5ec378'),
('ffeccaa4-58c4-411a-889b-481f7aeab0d9', 'Listening', 'Hãy nghe và chọn từ đúng', '5b99a27d-4a0b-4fdb-bd4d-850971b5506a', 'Ông ngoại', NULL, 'Ông nội', NULL, 'Ông út', NULL, 'Ông hai', NULL, '2023-11-08T09:46:06.843Z', NULL, NULL, 'c1d157ab-4c59-4752-91fb-8732da0c9c1c');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_progress`
--

CREATE TABLE `lesson_progress` (
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lessonId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_progressAccountId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_progressTopicId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModifiedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_progress`
--

INSERT INTO `lesson_progress` (`status`, `lessonId`, `topic_progressAccountId`, `topic_progressTopicId`, `createdAt`, `deletedAt`, `updatedAt`, `lastModifiedAt`) VALUES
('True', '01c3c9ec-a28d-49eb-812b-9d2e2c6c6ef9', 'e7f00e30-5669-4f07-bfea-a0cffad9427e', 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e', '2023-10-20T10:43:04.412Z', NULL, NULL, '2023-10-20T10:43:04.412Z');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deletedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `name`, `avatar`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
('0ea17c3d-13d0-47a4-bfab-f9970ca6cc04', 'Thực phẩm', 'fd87880f-4c75-4af0-9ab3-1a03bc77cb15', '2023-10-20T08:31:53.537Z', NULL, NULL),
('1478baff-5352-4259-9310-4853d20f0770', 'Ngoại hình', '217afd23-b0b3-43eb-97c2-be1b2c1ad246', '2023-10-19T08:35:11.602Z', NULL, NULL),
('6f221c33-5e86-4a7b-b7e7-6cedef5ec378', 'Thể thao', 'ae3a381c-ef6a-4e02-a912-065bec955e09', '2023-10-19T08:34:09.314Z', NULL, NULL),
('970a17c7-0323-40c0-8c68-5d87345822e0', 'Quốc gia', '92f4d3f9-38b8-418e-9a8e-7db5cf6158ad', '2023-10-19T08:35:25.583Z', NULL, NULL),
('9e4cbc3c-cba8-4326-95bd-55b78a0ff4d8', 'Màu sắc', 'eff4e904-9dcd-4b6a-93ef-e0a0e5435f29', '2023-10-21T08:34:38.721Z', NULL, NULL),
('c1d157ab-4c59-4752-91fb-8732da0c9c1c', 'Gia đình', '6d356d69-e8bb-432f-ab60-3a10eb36e55d', '2023-10-19T08:35:03.223Z', NULL, NULL),
('d1e7f1d4-ca3d-4976-bdec-68bb9c94b7ba', 'Toán học', '14215c2a-753b-4551-a41a-72175528c59b', '2023-10-20T08:34:28.582Z', NULL, NULL),
('dc93f3a4-5c77-49a2-ba2f-ef21509d403e', 'Động vật', '90beb37e-e939-4c01-8474-01e02f3f2e50', '2023-10-19T07:30:50.788Z', NULL, NULL),
('e865a3b8-59c9-403f-9f61-43a3c772b94b', 'Thời tiết', 'a3d7daeb-61a1-4cd1-a5e5-5008f2994694', '2023-10-19T08:35:31.335Z', NULL, NULL),
('e8f1382c-d722-4ff4-90b8-67835a75dade', 'Nghề nghiệp', '3af62c07-151c-417d-8787-a90f629afedb', '2023-10-19T08:34:20.350Z', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topic_progress`
--

CREATE TABLE `topic_progress` (
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` double NOT NULL,
  `accountId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topicId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModifiedAt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic_progress`
--

INSERT INTO `topic_progress` (`status`, `progress`, `accountId`, `topicId`, `createdAt`, `deletedAt`, `updatedAt`, `lastModifiedAt`) VALUES
('Doing', 0, 'ca09078a-3677-488c-a49c-d2144f79537e', 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e', '2023-10-20T09:36:01.783Z', NULL, NULL, '2023-10-20T09:36:01.783Z'),
('Doing', 0.06666666666666667, 'e7f00e30-5669-4f07-bfea-a0cffad9427e', 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e', '2023-10-20T10:14:17.133Z', NULL, '2023-11-04T03:39:34.113Z', '2023-11-04T03:39:34.113Z');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('56b299e6-9668-4dbe-95d4-e6b0b11112aa', '5cd2c1fe861c1353064794ee0b5c871bfdabce9e2102ca43899f548123069093', '2023-10-19 07:12:19.089', '20231019071218_vietnamese_init', NULL, NULL, '2023-10-19 07:12:18.657', 1),
('5acafdc0-aca2-4be2-b6db-191ca2b5407c', '6d5e2d2862578f507839903621e87fc23e1a7c3b63a9ab1c1a170c995188fc7f', '2023-10-19 13:56:58.851', '20231019135658_vietnamese', NULL, NULL, '2023-10-19 13:56:58.828', 1),
('c572d7b0-4c40-4a0c-a00a-0b3ec1029947', '00f537fba410a6db603d7ef0a2956679c0e2bb59a822cfe57f922646bc16cd21', '2023-10-19 07:35:29.899', '20231019073529_vietnamese_init', NULL, NULL, '2023-10-19 07:35:29.843', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_username_key` (`username`),
  ADD KEY `account_countryId_fkey` (`countryId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `country` ADD FULLTEXT KEY `country_name_nameEN_idx` (`name`,`nameEN`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_topicId_fkey` (`topicId`);

--
-- Indexes for table `lesson_progress`
--
ALTER TABLE `lesson_progress`
  ADD PRIMARY KEY (`topic_progressAccountId`,`lessonId`,`topic_progressTopicId`),
  ADD KEY `lesson_progress_lessonId_fkey` (`lessonId`),
  ADD KEY `lesson_progress_topic_progressAccountId_topic_progressTopic_fkey` (`topic_progressAccountId`,`topic_progressTopicId`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_progress`
--
ALTER TABLE `topic_progress`
  ADD PRIMARY KEY (`accountId`,`topicId`),
  ADD KEY `topic_progress_topicId_fkey` (`topicId`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_topicId_fkey` FOREIGN KEY (`topicId`) REFERENCES `topic` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `lesson_progress`
--
ALTER TABLE `lesson_progress`
  ADD CONSTRAINT `lesson_progress_lessonId_fkey` FOREIGN KEY (`lessonId`) REFERENCES `lesson` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `lesson_progress_topic_progressAccountId_topic_progressTopic_fkey` FOREIGN KEY (`topic_progressAccountId`,`topic_progressTopicId`) REFERENCES `topic_progress` (`accountId`, `topicId`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `topic_progress`
--
ALTER TABLE `topic_progress`
  ADD CONSTRAINT `topic_progress_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `topic_progress_topicId_fkey` FOREIGN KEY (`topicId`) REFERENCES `topic` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
