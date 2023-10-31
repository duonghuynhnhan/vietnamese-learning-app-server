-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.2
-- Generation Time: Oct 31, 2023 at 03:17 AM
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
('0c0d2abf-9e2d-4eed-97b6-8320019c1479', 'file', 'profile.jpg', '7bit', 'image/jpeg', 'file-1697794375608-441951557.jpg', '\\uploads\\file-1697794375608-441951557.jpg', 2465371, NULL, NULL, '2023-10-20T09:32:55.625Z', NULL),
('0f3dec0a-297c-4b5b-96d9-89929ae7f59c', 'file', '1200px-RedCat_8727.jpg', '7bit', 'image/jpeg', 'file-1697701364247-245516264.jpg', '\\uploads\\file-1697701364247-245516264.jpg', 238948, NULL, NULL, '2023-10-19T07:42:44.251Z', NULL),
('14215c2a-753b-4551-a41a-72175528c59b', 'file', 'im-725408.jpg', '7bit', 'image/jpeg', 'file-1697704467688-784237497.jpg', '\\uploads\\file-1697704467688-784237497.jpg', 171392, NULL, NULL, '2023-10-19T08:34:27.693Z', NULL),
('217afd23-b0b3-43eb-97c2-be1b2c1ad246', 'file', '87225739-the-appearance-of-a-woman-with-a-hairdo-the-face-of-a-girl-face-and-appearance-set-collection-icons.jpg', '7bit', 'image/jpeg', 'file-1697704510783-58422282.jpg', '\\uploads\\file-1697704510783-58422282.jpg', 81991, NULL, NULL, '2023-10-19T08:35:10.785Z', NULL),
('257718a1-557c-47ff-a69e-e05c8a11e64e', 'file', '1200px-RedCat_8727.jpg', '7bit', 'image/jpeg', 'file-1697701682153-350853714.jpg', '\\uploads\\file-1697701682153-350853714.jpg', 238948, NULL, NULL, '2023-10-19T07:48:02.155Z', NULL),
('2accafaf-b35e-4d6c-ad59-3c7da7f833ca', 'file', 'dai_bang_191023081359.wav', '7bit', 'audio/wav', 'file-1697703519068-957237276.wav', '\\uploads\\file-1697703519068-957237276.wav', 75190, NULL, NULL, '2023-10-19T08:18:39.069Z', NULL),
('3af62c07-151c-417d-8787-a90f629afedb', 'file', 'Career-readiness-project-findings-blog.png', '7bit', 'image/png', 'file-1697704459640-817871799.png', '\\uploads\\file-1697704459640-817871799.png', 203518, NULL, NULL, '2023-10-19T08:34:19.642Z', NULL),
('4e622268-6525-45a2-accf-cc49be9d330e', 'file', 'chinese-dog-breeds-4797219-hero-2a1e9c5ed2c54d00aef75b05c5db399c.jpg', '7bit', 'image/jpeg', 'file-1697701674785-170265528.jpg', '\\uploads\\file-1697701674785-170265528.jpg', 638178, NULL, NULL, '2023-10-19T07:47:54.788Z', NULL),
('5481dd0a-3dba-43a4-b06d-4854646204da', 'file', 'Recording.mp3', '7bit', 'audio/mpeg', 'file-1697701448294-580615547.mp3', '\\uploads\\file-1697701448294-580615547.mp3', 1832729, NULL, NULL, '2023-10-19T07:44:08.309Z', NULL),
('5549ea2d-64fa-4db8-8300-00c82ac0039d', 'file', 'chinese-dog-breeds-4797219-hero-2a1e9c5ed2c54d00aef75b05c5db399c.jpg', '7bit', 'image/jpeg', 'file-1697701357074-997072163.jpg', '\\uploads\\file-1697701357074-997072163.jpg', 638178, NULL, NULL, '2023-10-19T07:42:37.080Z', NULL),
('6d356d69-e8bb-432f-ab60-3a10eb36e55d', 'file', 'sticker-template-with-happy-big-family-members_1308-62600.webp', '7bit', 'image/webp', 'file-1697704500843-282386153.webp', '\\uploads\\file-1697704500843-282386153.webp', 431854, NULL, NULL, '2023-10-19T08:35:00.849Z', NULL),
('8544274b-1cd3-457e-8926-144567ba0de4', 'file', 'dai_bang_191023081359.wav', '7bit', 'audio/wav', 'file-1697703279339-975280807.wav', '\\uploads\\file-1697703279339-975280807.wav', 75190, NULL, NULL, '2023-10-19T08:14:39.341Z', NULL),
('90beb37e-e939-4c01-8474-01e02f3f2e50', 'file', 'set-wild-animals_1308-29055.png', '7bit', 'image/png', 'file-1697700650058-95998517.png', '\\uploads\\file-1697700650058-95998517.png', 426502, NULL, NULL, '2023-10-19T07:30:50.061Z', NULL),
('90c9f103-0960-4d16-87f9-04deabc2e985', 'file', 'Recording.mp3', '7bit', 'audio/mpeg', 'file-1697701592257-577378330.mp3', '\\uploads\\file-1697701592257-577378330.mp3', 1832729, NULL, NULL, '2023-10-19T07:46:32.263Z', NULL),
('92f4d3f9-38b8-418e-9a8e-7db5cf6158ad', 'file', 'Map-countries-istock-ZarkoCvijovic-20170104.jpg', '7bit', 'image/jpeg', 'file-1697704524604-439805175.jpg', '\\uploads\\file-1697704524604-439805175.jpg', 968118, NULL, NULL, '2023-10-19T08:35:24.615Z', NULL),
('9c396847-cc34-4f49-9dfd-e5bac765d72a', 'file', 'dai_bang_191023080530.wav', '7bit', 'audio/wav', 'file-1697702750919-286453465.wav', '\\uploads\\file-1697702750919-286453465.wav', 70070, NULL, NULL, '2023-10-19T08:05:50.922Z', NULL),
('9c784f20-9e8d-4d03-8430-566de8b11f34', 'file', 'rabbit-pic-1.jpg', '7bit', 'image/jpeg', 'file-1697701679244-391829157.jpg', '\\uploads\\file-1697701679244-391829157.jpg', 226913, NULL, NULL, '2023-10-19T07:47:59.245Z', NULL),
('a3d7daeb-61a1-4cd1-a5e5-5008f2994694', 'file', 'weather_.jpg', '7bit', 'image/jpeg', 'file-1697704530620-275478628.jpg', '\\uploads\\file-1697704530620-275478628.jpg', 82414, NULL, NULL, '2023-10-19T08:35:30.625Z', NULL),
('ae3a381c-ef6a-4e02-a912-065bec955e09', 'file', 'sports.png', '7bit', 'image/png', 'file-1697704448458-907933794.png', '\\uploads\\file-1697704448458-907933794.png', 277928, NULL, NULL, '2023-10-19T08:34:08.461Z', NULL),
('b033d624-72e9-4e89-93e4-8b04e19e5d2a', 'file', '320512529_1768084710230385_3479491692880634771_n.jpg', '7bit', 'image/jpeg', 'file-1697795896714-116402972.jpg', '\\uploads\\file-1697795896714-116402972.jpg', 376455, NULL, NULL, '2023-10-20T09:58:16.724Z', NULL),
('cbb7dcf6-fb31-4826-b2cf-f2e120d72b56', 'file', 'download (1).jpg', '7bit', 'image/jpeg', 'file-1697701676820-484271141.jpg', '\\uploads\\file-1697701676820-484271141.jpg', 5083, NULL, NULL, '2023-10-19T07:47:56.822Z', NULL),
('df4dd50a-30ab-41e4-941d-a857d286e7b2', 'file', 'Recording.mp3', '7bit', 'audio/mpeg', 'file-1697701554812-490669470.mp3', '\\uploads\\file-1697701554812-490669470.mp3', 1832729, NULL, NULL, '2023-10-19T07:45:54.822Z', NULL),
('eff4e904-9dcd-4b6a-93ef-e0a0e5435f29', 'file', 'Color-Schemes-Type-Def-Feat-Image.webp', '7bit', 'image/webp', 'file-1697704477879-174986387.webp', '\\uploads\\file-1697704477879-174986387.webp', 216756, NULL, NULL, '2023-10-19T08:34:37.884Z', NULL),
('f2f1ee20-0435-4af9-8166-1c7bec079132', 'file', 'rabbit-pic-1.jpg', '7bit', 'image/jpeg', 'file-1697701361373-574704701.jpg', '\\uploads\\file-1697701361373-574704701.jpg', 226913, NULL, NULL, '2023-10-19T07:42:41.375Z', NULL),
('fd87880f-4c75-4af0-9ab3-1a03bc77cb15', 'file', 'article_7866255_foods-you-should-eat-every-week-to-lose-weight_-04-d58e9c481bce4a29b47295baade4072d.jpg', '7bit', 'image/jpeg', 'file-1697704492718-848620324.jpg', '\\uploads\\file-1697704492718-848620324.jpg', 146438, NULL, NULL, '2023-10-19T08:34:52.723Z', NULL);

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
('01c3c9ec-a28d-49eb-812b-9d2e2c6c6ef9', 'Fill', 'Con ... tử', NULL, 'sư', NULL, 'cá', NULL, 'bò', NULL, 'chim', NULL, '2023-10-19T08:01:37.225Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('1482ed52-1dd6-4cb4-a8c1-78ea9a360f1b', 'Listening', 'Hãy lắng nghe và chọn đúng từ bạn nghe được', '2accafaf-b35e-4d6c-ad59-3c7da7f833ca', 'Cá hồi', NULL, 'Cá heo', NULL, 'Cá voi', NULL, 'Cá chuồn', NULL, '2023-10-19T08:19:00.998Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('411101ed-43fb-42c2-8ed8-714c84a2ec78', 'Multiple', 'Con vật có cánh và có thể bay lượn khắp bầu trời?', NULL, 'Chim sẻ', NULL, 'Chim cánh cụt', NULL, 'Đà điểu', NULL, 'Rắn', NULL, '2023-10-19T07:54:31.624Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('51712c8c-f289-4191-9aa2-9455cb688921', 'Speaking', 'Con chó biết sủa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:16:09.030Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('66ebddd9-c586-40a2-83ee-5ac105c5be4d', 'Multiple', 'Con vật nào có màu lông trắng và đen và sống ở rừng nhiệt đới?', NULL, 'Gấu trúc', NULL, 'Gấu đen', NULL, 'Lợn rừng', NULL, 'Sư tử', NULL, '2023-10-19T07:59:29.108Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('6cc6cb1c-ae27-4466-a7df-3e6bec370a1c', 'Speaking', 'Con chó', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:37.700Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('a1328e39-3923-4e9a-a379-7cddef7a79d3', 'Speaking', 'Con công', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:45.509Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('b3b47ef7-04d8-4430-9fbc-9defe7ded94c', 'Speaking', 'Con chuột', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:57.102Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('c27ea88d-028b-4ccb-ad2d-e7d95f1ae645', 'Multiple', 'Con vật sống dưới nước?', NULL, 'Cá heo', NULL, 'Chuột túi', NULL, 'Cáo', NULL, 'Đại bàng', NULL, '2023-10-19T07:55:35.237Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('d31f090b-a79c-4102-8cf2-0d0faf6c251d', 'Speaking', 'Con mèo bắt chuột', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:17:38.793Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('d5c9b47d-f2fb-49aa-a36e-8a35d01a6ceb', 'Listening', 'Hãy lắng nghe và chọn đúng từ bạn nghe được', '9c396847-cc34-4f49-9dfd-e5bac765d72a', 'Đại bàng', NULL, 'Hoàng yến', NULL, 'Chim sẻ', NULL, 'Vành khuyên', NULL, '2023-10-19T08:06:10.208Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('dd96a911-3fa2-4dfa-aa02-530a31a15904', 'Image', 'Con chó?', NULL, NULL, '4e622268-6525-45a2-accf-cc49be9d330e', NULL, 'cbb7dcf6-fb31-4826-b2cf-f2e120d72b56', NULL, '9c784f20-9e8d-4d03-8430-566de8b11f34', NULL, '257718a1-557c-47ff-a69e-e05c8a11e64e', '2023-10-19T07:48:03.515Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('e28baa5d-3461-4e40-a0c7-9aa8b3a773fa', 'Multiple', 'Con vật nào sống ở Bắc Cực?', NULL, 'Gấu bắc cực', NULL, 'Chim cánh cụt', NULL, 'Cáo bắc cực', NULL, 'Mèo bắc cực', NULL, '2023-10-19T07:53:15.458Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('eb6847a8-f117-4f9d-a8ca-1e1f4169c9ee', 'Listening', 'Hãy lắng nghe và chọn đúng từ bạn nghe được', '8544274b-1cd3-457e-8926-144567ba0de4', 'Nhền nhện', NULL, 'Châu chấu', NULL, 'Bọ cánh cứng', NULL, 'Kiến lửa', NULL, '2023-10-19T08:14:58.868Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e'),
('eced8d64-9a69-4f64-bb2b-743543666cbb', 'Speaking', 'Con mèo', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31T03:15:10.570Z', NULL, NULL, 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e');

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
('0ea17c3d-13d0-47a4-bfab-f9970ca6cc04', 'Thực phẩm', 'fd87880f-4c75-4af0-9ab3-1a03bc77cb15', '2023-10-19T08:34:53.537Z', NULL, NULL),
('1478baff-5352-4259-9310-4853d20f0770', 'Ngoại hình', '217afd23-b0b3-43eb-97c2-be1b2c1ad246', '2023-10-19T08:35:11.602Z', NULL, NULL),
('6f221c33-5e86-4a7b-b7e7-6cedef5ec378', 'Thể thao', 'ae3a381c-ef6a-4e02-a912-065bec955e09', '2023-10-19T08:34:09.314Z', NULL, NULL),
('970a17c7-0323-40c0-8c68-5d87345822e0', 'Quốc gia', '92f4d3f9-38b8-418e-9a8e-7db5cf6158ad', '2023-10-19T08:35:25.583Z', NULL, NULL),
('9e4cbc3c-cba8-4326-95bd-55b78a0ff4d8', 'Màu sắc', 'eff4e904-9dcd-4b6a-93ef-e0a0e5435f29', '2023-10-19T08:34:38.721Z', NULL, NULL),
('c1d157ab-4c59-4752-91fb-8732da0c9c1c', 'Gia đình', '6d356d69-e8bb-432f-ab60-3a10eb36e55d', '2023-10-19T08:35:03.223Z', NULL, NULL),
('d1e7f1d4-ca3d-4976-bdec-68bb9c94b7ba', 'Toán học', '14215c2a-753b-4551-a41a-72175528c59b', '2023-10-19T08:34:28.582Z', NULL, NULL),
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
('Doing', 0.07142857142857142, 'e7f00e30-5669-4f07-bfea-a0cffad9427e', 'dc93f3a4-5c77-49a2-ba2f-ef21509d403e', '2023-10-20T10:14:17.133Z', NULL, '2023-10-31T03:16:47.241Z', '2023-10-31T03:16:47.241Z');

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
