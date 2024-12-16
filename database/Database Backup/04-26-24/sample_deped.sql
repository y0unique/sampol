-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 10:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample_deped`
--

-- --------------------------------------------------------

--
-- Table structure for table `bacfilestbl`
--

CREATE TABLE `bacfilestbl` (
  `bacfile_id` int(11) NOT NULL,
  `bacfile_type` varchar(50) NOT NULL,
  `bacfile_title` varchar(200) NOT NULL,
  `bacfile_link` longtext NOT NULL,
  `bacfile_date` datetime NOT NULL DEFAULT current_timestamp(),
  `bacfile_procurementYear` year(4) DEFAULT NULL,
  `bacfile_procurementType` varchar(50) DEFAULT NULL,
  `bacfile_publishDate` date DEFAULT NULL,
  `bacfile_closingDate` date DEFAULT NULL,
  `bacfile_awardedTo` varchar(200) DEFAULT NULL,
  `bacfile_referenceNum` varchar(20) DEFAULT NULL,
  `bacfile_procurementMode` varchar(50) DEFAULT NULL,
  `bacfile_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `bacfilesvw`
-- (See below for the actual view)
--
CREATE TABLE `bacfilesvw` (
`id` int(11)
,`type` varchar(50)
,`title` varchar(200)
,`link` longtext
,`date` datetime
,`procurement_year` year(4)
,`procurement_type` varchar(50)
,`publish_date` date
,`closing_date` date
,`awarded_to` varchar(200)
,`reference_number` varchar(20)
,`procurement_mode` varchar(50)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `carouselvw`
-- (See below for the actual view)
--
CREATE TABLE `carouselvw` (
`id` int(11)
,`name` longtext
,`title` varchar(100)
,`description` varchar(200)
,`type` varchar(20)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dailyvisitorsvw`
-- (See below for the actual view)
--
CREATE TABLE `dailyvisitorsvw` (
`ip address` text
,`date` date
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `dailyvisitstbl`
--

CREATE TABLE `dailyvisitstbl` (
  `daily_visitors_id` int(11) NOT NULL,
  `daily_visitors_ip_address` text NOT NULL,
  `daily_visitors_date` date NOT NULL DEFAULT current_timestamp(),
  `daily_visitors_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departmentstbl`
--

CREATE TABLE `departmentstbl` (
  `department_id` varchar(20) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `department_contact` varchar(30) NOT NULL,
  `department_email` varchar(50) NOT NULL,
  `department_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `departmentsvw`
-- (See below for the actual view)
--
CREATE TABLE `departmentsvw` (
`id` varchar(20)
,`name` varchar(100)
,`contact` varchar(30)
,`email` varchar(50)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `downloadablefilesvw`
-- (See below for the actual view)
--
CREATE TABLE `downloadablefilesvw` (
`id` int(11)
,`type` varchar(50)
,`title` varchar(200)
,`link` longtext
,`date` datetime
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `elemschoolsvw`
-- (See below for the actual view)
--
CREATE TABLE `elemschoolsvw` (
`id` varchar(11)
,`name` varchar(100)
,`address` varchar(200)
,`principal` varchar(50)
,`contact` varchar(30)
,`link` longtext
,`email` varchar(50)
,`district` varchar(5)
,`type` varchar(20)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `filestbl`
--

CREATE TABLE `filestbl` (
  `file_id` int(11) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_title` varchar(200) NOT NULL,
  `file_link` longtext NOT NULL,
  `file_date` datetime NOT NULL DEFAULT current_timestamp(),
  `file_department` varchar(20) DEFAULT NULL,
  `file_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filestbl`
--

INSERT INTO `filestbl` (`file_id`, `file_type`, `file_title`, `file_link`, `file_date`, `file_department`, `file_status`) VALUES
(1, 'DOWNLOADABLES', 'Personal Data Sheet (CSC Form 212)', 'https://docs.google.com/spreadsheets/d/1DGqoPF6vptqgLOJWkVrj832T5Hxui3DR/edit?usp=drive_link&ouid=104589952863031883211&rtpof=true&sd=true', '2024-04-02 10:07:15', NULL, 'active'),
(2, 'DOWNLOADABLES', 'CSC Form 212 Work Experience Sheet (Sample Only)', 'https://docs.google.com/document/d/1lEajIGa1lF-cxQUnevvi8xxBHPsrm5Ld/edit?usp=drive_link&ouid=104589952863031883211&rtpof=true&sd=true', '2023-06-13 14:15:58', NULL, 'active'),
(3, 'DOWNLOADABLES', 'CSC Form 32 (Oath of Office)', 'https://drive.google.com/file/d/1V1SPz1gHHQoWbeYUw', '2023-06-13 14:16:46', NULL, 'active'),
(4, 'DOWNLOADABLES', 'Sworn Statement', 'https://drive.google.com/file/d/1qaiscx-xZYjigo3QW', '2023-06-13 14:16:46', NULL, 'active'),
(5, 'DOWNLOADABLES', 'Statement of Assets, Liabilities and Networth (SALN)', 'drive.google.com', '2023-06-13 14:17:53', NULL, 'active'),
(6, 'DOWNLOADABLES', 'CSC Form 6 (Leave Form)', 'https://docs.google.com/spreadsheets/d/1SdJT3PNaax2EjFEG-QxLDIi9RMKcd7mR/edit?usp=drive_link&ouid=104589952863031883211&rtpof=true&sd=true', '2023-06-13 14:17:53', NULL, 'active'),
(7, 'DOWNLOADABLES', 'Omnibus Certification and Veracity of Documents Submitted', 'https://drive.google.com/file/d/1Y3OMDK1InUZ0Av5WH', '2023-06-13 14:18:29', NULL, 'active'),
(8, 'MATERIALS', 'Payments Sheet', 'https://docs.google.com/spreadsheets/d/15WrejQGPkxkAs-fNsat2C41YnIlkIV88yIN60KRADUg/edit?usp=sharing', '2024-04-01 11:25:12', 'budget', 'active'),
(9, 'downloadable', '123', '123', '2024-04-02 10:01:32', NULL, 'active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `filesvw`
-- (See below for the actual view)
--
CREATE TABLE `filesvw` (
`id` int(11)
,`type` varchar(50)
,`title` varchar(200)
,`link` longtext
,`department` varchar(20)
,`date` datetime
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `highschoolsvw`
-- (See below for the actual view)
--
CREATE TABLE `highschoolsvw` (
`id` varchar(11)
,`name` varchar(100)
,`address` varchar(200)
,`principal` varchar(50)
,`contact` varchar(30)
,`link` longtext
,`email` varchar(50)
,`district` varchar(5)
,`type` varchar(20)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `imagestbl`
--

CREATE TABLE `imagestbl` (
  `image_id` int(11) NOT NULL,
  `image_name` longtext NOT NULL,
  `image_title` varchar(100) NOT NULL,
  `image_description` varchar(200) NOT NULL,
  `image_type` varchar(20) NOT NULL,
  `image_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issuancescategorytbl`
--

CREATE TABLE `issuancescategorytbl` (
  `issuances_type` varchar(50) NOT NULL,
  `issuances_type_name` varchar(50) NOT NULL,
  `issuances_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuancescategorytbl`
--

INSERT INTO `issuancescategorytbl` (`issuances_type`, `issuances_type_name`, `issuances_status`) VALUES
('CITY MEMORANDUM / EXECUTIVE ORDER', 'CITY MEMORANDUM / EXECUTIVE ORDER', 'active'),
('DIVISION ADVISORIES', 'DIVISION ADVISORIES', 'active'),
('DIVISION CIRCULARS', 'DIVISION CIRCULARS', 'active'),
('DIVISION ORDERS', 'DIVISION ORDERS', 'active'),
('MISCELLANEOUS MEMOS', 'MISCELLANEOUS MEMOS', 'active'),
('NUMBERED MEMORANDUM', 'NUMBERED MEMORANDUM', 'active'),
('OFFICE ORDER', 'OFFICE ORDER', 'active'),
('UNNUMBERED MEMORANDUM', 'UNNUMBERED MEMORANDUM', 'active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `issuancescategoryvw`
-- (See below for the actual view)
--
CREATE TABLE `issuancescategoryvw` (
`type` varchar(50)
,`name` varchar(50)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `issuancestbl`
--

CREATE TABLE `issuancestbl` (
  `issuances_id` int(11) NOT NULL,
  `tracking_number` varchar(50) NOT NULL,
  `issuances_title` varchar(200) NOT NULL,
  `issuances_link` longtext NOT NULL,
  `issuances_number` varchar(20) NOT NULL,
  `issuances_date` date NOT NULL,
  `issuances_type` varchar(50) NOT NULL,
  `issuances_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuancestbl`
--

INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(1, '1', 'ASSIGNMENTS OF ASSISTANT SCHOOLS DIVISION SUPERINTENDENT', 'https://drive.google.com/file/d/1Sd3O6fRo0f0Ry15IZtGAMKInARjqVj2U/view?usp=sharing', '148', '2022-06-08', 'NUMBERED MEMORANDUM', 'active'),
(2, '', 'REGIONAL WINNER OF THE NESTLE WELLNESS CAMPUS VIRTUAL COOK OFF COMPETITION', 'https://drive.google.com/file/d/1YJSOs4iLZdsCSAVs8hZH-waKR4ffcnl2/view?usp=sharing', '147', '2022-06-06', 'NUMBERED MEMORANDUM', 'active'),
(3, '', 'PROJECT E-GABAY AS REGIONAL FINALIST FOR BEST EDUCATIONAL TECHNOLOGY INNOVATION PROGRAM', 'https://drive.google.com/file/d/127YrKiQjyZTyCGoF8AUiD9IjpqnUNhM_/view?usp=sharing', '146', '2022-06-06', 'NUMBERED MEMORANDUM', 'active'),
(4, '', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1RBbYjKgSxqtRAUSEU_7PC6FyEH0s-rHh/view?usp=sharing', '145', '2022-06-07', 'NUMBERED MEMORANDUM', 'active'),
(5, '', 'RECONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NON TEACHING PERSONNEL', 'https://drive.google.com/file/d/1Snv3RFNPf0HjqSOq3g0cHnmYBtQ5c-ul/view?usp=sharing', '143', '2022-06-02', 'NUMBERED MEMORANDUM', 'active'),
(6, '', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 176, S. 2022', 'https://drive.google.com/file/d/1XrBf3utE_DX5JUWf1nqKIpzj2TqMAPK1/view?usp=sharing', '141', '2022-05-26', 'NUMBERED MEMORANDUM', 'active'),
(7, '', 'MENSTRUAL HYGIENE DAY 2022', 'https://drive.google.com/file/d/1Zxw0sloKHVp1EMNq-SSybDDcpS9fEhT_/view?usp=sharing', '137', '2022-05-26', 'NUMBERED MEMORANDUM', 'active'),
(8, '', 'CORRIGENDUM TO DIVISION MEMORANDUM NO.177 S. 2022 (CONDUCT OF EXAMINATION, INTERVIEW AND EVALUATION OF DOCUMENTS', 'https://drive.google.com/file/d/1sgN3xrXrQnzlVMwBMrnfLfmUu6RXFK2-/view?usp=sharing', '134', '2022-05-24', 'NUMBERED MEMORANDUM', 'active'),
(9, '', 'CONDUCT OF SYMPOSIA ON THE 124TH ANNIVERSARY OF NATIONAL FLAG AND INDEPENDENCE DAY AND PROMINENT DISPLAY OF THE NATIONAL FLAG', 'https://drive.google.com/file/d/1r9b83mf_dTLsJNCidYjmGlKz99Y1pA6C/view?usp=sharing', '132', '2022-05-23', 'NUMBERED MEMORANDUM', 'active'),
(10, '', 'INVITATION ON THE FREE BONE MINERAL DENSITOMETRY SCREENING (BONESCREENING)', 'https://drive.google.com/file/d/1R1ELfP4NvnKkpXOp2frIfP7ZOZc0Cfbr/view?usp=sharing', '131', '2022-05-25', 'NUMBERED MEMORANDUM', 'active'),
(11, '', 'CORRIGENDUM TO DIVISION MEMORANDUM NO.130,S.2022 (VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS MANILA', 'https://drive.google.com/file/d/17NHqVjkxEt7HjnaQxmENzsYDdGpnbjcV/view?usp=sharing', '130', '2022-05-24', 'NUMBERED MEMORANDUM', 'active'),
(12, '', 'ENHANCED DEPED PARTNERSHIP DATABASE SYSTEM (DPDS) REPORTING AND UPDATING OF SOCIAL MOBILIZATION AND NETWORKING UNIT DIRECTORY', 'https://drive.google.com/file/d/1lz5--fR4dBNs7fTikeVdbMNK9PHw2oh-/view?usp=sharing', '116', '2022-04-25', 'NUMBERED MEMORANDUM', 'active'),
(13, '', 'IMPLEMENTATION AND ROLL OUT OF THE DIVISION DOCUMENT TRACKING SYSTEM (PHASE 2)', 'https://drive.google.com/file/d/14uGIEWRTccbszBR1tWdF4WTdtciDr76K/view?usp=sharing', '129', '2022-05-18', 'NUMBERED MEMORANDUM', 'active'),
(14, '', 'AUTHORIZED PERSONNEL IN RECEIVING CERTAIN DOCUMENTS FROM THE PAYROLL SECTION', 'https://drive.google.com/file/d/1fFa8BiEOHdsY5gkQHngdZOGv4DXD_hMI/view?usp=sharing', '127', '2022-05-13', 'NUMBERED MEMORANDUM', 'active'),
(15, '', 'CONDUCT OF 3RD DIVISION LEARNING ENGAGEMENT AND MANAGEMENT MEETING', 'https://drive.google.com/file/d/12AF05ebCGQ56saI96t6x2pOBGgxFrBoa/view?usp=sharing', '126', '2022-05-17', 'NUMBERED MEMORANDUM', 'active'),
(16, '', 'PURSUANT TO REPUBLIC ACT NO. 8491 [FLAG AND HERALDIC CODE OF THE PHILIPPINES] AND CSC MEMORANDUM CIRCULAR NO.19 SERIS OF 1991', 'https://drive.google.com/file/d/19iCsDBw9YS4etQYMrOIO8dBKzxj2pywU/view?usp=sharing', '125', '2022-05-17', 'NUMBERED MEMORANDUM', 'active'),
(17, '', 'DISSEMINATION OF DEPED MEMORANDUM NO. 043 S. 2022 AND DEPED ORDER NO. 021 S. 2022', 'https://drive.google.com/file/d/1v4btyC2fP4Xxp75yGgDuNdAoZPbpvxcf/view?usp=sharing', '124', '2022-05-11', 'NUMBERED MEMORANDUM', 'active'),
(18, '', '2022 REGIONAL ELECTION TASK FORCE', 'https://drive.google.com/file/d/1rnxJhPCwalrVx4aqWikx79i4abtNEDNx/view?usp=sharing', '123', '2022-05-11', 'NUMBERED MEMORANDUM', 'active'),
(19, '', 'AN ORDER CREATING THE EXECUTIVE COMMITTEE AND ITS SECRETARIAT, FOR THE 451ST ARAW NG MAYNILA CELEBRATION', 'https://drive.google.com/file/d/1je28XSsZdls-lk1fEFNjVD12ZOaXIzrM/view?usp=sharing', '122', '2022-05-05', 'NUMBERED MEMORANDUM', 'active'),
(20, '', 'GUIDELINES ON THE OPERATIONALIZATION OF THE PROGRAM MANAGEMENT INFORMATION SYSTEM (PMIS)', 'https://drive.google.com/file/d/14UBuv35HiJPym4STZCicp4tqXd0A-XTJ/view?usp=sharing', '120', '2022-05-02', 'NUMBERED MEMORANDUM', 'active'),
(21, '', 'AN ORDER DESIGNATING THE LOCAL DRRM STAFF OF THE CITY OF MANILA', 'https://drive.google.com/file/d/1uLrNe3T6sfXPjX0Cbh_qbPoWyhsoGzXI/view?usp=sharing', '121', '2022-05-05', 'NUMBERED MEMORANDUM', 'active'),
(22, '', 'UPDATED TIMELINE OF ACTIVITIES AND TECHNICAL WORKING GROUP FOR THE PREPARATION OF THE DIVISION EDUCATION DEVELOPMENT PLAN (EDP) 2022-2028', 'https://drive.google.com/file/d/1AE8NbrGrfrAnCoqNm6piWrZ1z_-SFuG4/view?usp=sharing', '118', '2022-04-29', 'NUMBERED MEMORANDUM', 'active'),
(23, '', 'OMNIBUS GUIDELINES ON THE REGULATION OF OPERATIONS OF PARENT TEACHER ASSOCIATIONS', 'https://drive.google.com/file/d/1H_g1NKSt8Eu4XDh090HbD0PJ7a5qafFf/view?usp=sharing', '117', '2022-04-25', 'NUMBERED MEMORANDUM', 'active'),
(24, '', ' AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1ToSZyxgLj-zRha_Sbgb-4dUOOzT27EYU/view?usp=sharing', '115', '2022-04-28', 'NUMBERED MEMORANDUM', 'active'),
(25, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1FYQmYAXRSjA9oqGKeDoqcQjAmSt-MtBG/view?usp=sharing', '113', '2022-04-22', 'NUMBERED MEMORANDUM', 'active'),
(26, '', 'SCHOLARSHIP INVITATION FROM THE GOVERNMENT OF SINGAPORE SPONSORED BY SINGAPORE COOPERATION PROGRAMME (SCP)', 'https://drive.google.com/file/d/1EXG1RxV5WTK3ccSyl7-Aw6pZD2jh8uxk/view?usp=sharing', '112', '2022-04-22', 'NUMBERED MEMORANDUM', 'active'),
(27, '', 'REITERATION AND IMPLEMENTATION OF THE POLICY ON FLEXIBLE WORKING HOURS FOR THE NONTEACHING PERSONNEL', 'https://drive.google.com/file/d/1rZdh5rjyOm0pZQ43m4m7yFGdRywkemfI/view?usp=sharing', '111', '2022-04-21', 'NUMBERED MEMORANDUM', 'active'),
(28, '', 'FOREIGN TRAVEL AUTHORITY OF LOCAL GOVERNMENT OFFICIALS AND EMPLOYEES', 'https://drive.google.com/file/d/1zdqywHb6H8rXucVE8oiyHexvSgLI6Qyi/view?usp=sharing', '110', '2022-04-21', 'NUMBERED MEMORANDUM', 'active'),
(29, '', 'VISIT OF OUR LADY OF FATIMA', 'https://drive.google.com/file/d/1OGX0Qh5Io5U7Bhptx8UUNn5lfWFoWhiH/view?usp=sharing', '109', '2022-04-21', 'NUMBERED MEMORANDUM', 'active'),
(30, '', 'CONDUCT OF LOCAL ABSENTEE VOTING (LAV) FOR THE 2022 NATIONAL AND LOCAL ELECTIONS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1BLoPxt0KcccRhWTLXT24Ho4iX9MA-HCa/view?usp=sharing', '108', '2022-04-19', 'NUMBERED MEMORANDUM', 'active'),
(31, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1ky9AK9nCzBAsyHmeVtFdOmTjj6-t7S6O/view?usp=sharing', '107', '2022-04-21', 'NUMBERED MEMORANDUM', 'active'),
(32, '', 'IMPLEMENTATION AND ROLL OUT OF THE DIVISION DOCUMENT TRACKING SYSTEM', 'https://drive.google.com/file/d/14729su5iBYkP_7lbcXYDQS8vIKpNsgnh/view?usp=sharing', '106', '2022-04-18', 'NUMBERED MEMORANDUM', 'active'),
(33, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1PVCYImfdVeW_gq4z_nBKAkdruHb99YeI/view?usp=sharing', '105', '2022-04-13', 'NUMBERED MEMORANDUM', 'active'),
(34, '', 'A CERTAIN MR. ALBERT A. TORRES POSTING AS A BUSINESS PERMITS INSPECTOR', 'https://drive.google.com/file/d/1d7HpVjviB5RzWfGNDDxBHXiGCBXjI9ah/view?usp=sharing', '104', '2022-04-13', 'NUMBERED MEMORANDUM', 'active'),
(35, '', 'VACANCIES FOR HEAD TEACHERS III AND HEAD TEACHER VI', 'https://drive.google.com/file/d/1lIY3ohFJO_pK-5xLcDgfW2iEbtBiQT-t/view?usp=sharing', '103', '2022-04-18', 'NUMBERED MEMORANDUM', 'active'),
(36, '', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1RrPpQ46Kl6ACYPMWAACEXlQ_sbhCU7W3/view?usp=sharing', '102', '2022-04-11', 'NUMBERED MEMORANDUM', 'active'),
(37, '', 'VACANCY FOR ASSISTANT SCHOOL PRINCIPAL II (SHS)', 'https://drive.google.com/file/d/1bWMcc_qA4yP8hu2tnGWsuFmXxzknId1n/view?usp=sharing', '101', '2022-04-12', 'NUMBERED MEMORANDUM', 'active'),
(38, '', 'IMPLEMENTATION OF THE GUIDELINES ON THE NEW DEPED NATIONAL UNIFORM AND DRESS CODE FOR TEACHING AND NON-TEACHING PERSONNEL IN THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1jlD6kPW4vGoimtCRM18JvgaRTQyP0Eos/view?usp=sharing', '100', '2022-04-07', 'NUMBERED MEMORANDUM', 'active'),
(39, '', 'DIVISION SELECTION SUB-COMMITTEES ON THE SCREENING PROCESS OF TEACHER I APPLICANTS FOR THE SCHOOL YEAR 2022 - 2023', 'https://drive.google.com/file/d/1FYDaM9OLn-Cid2ZSuaFSEATcHrK1p_Wi/view?usp=sharing', '98', '2022-04-05', 'NUMBERED MEMORANDUM', 'active'),
(40, '', 'COMPOSITION OF THE DIVISION PLANNING TEAM AND CONDUCT OF THE DIVISION EDUCATION DEVELOPMENT PLANNING ACTIVITIES', 'https://drive.google.com/file/d/1Jvp5SaLwAqXDYq0BPiqE0_HDKIIYfpNF/view?usp=sharing', '97', '2022-04-04', 'NUMBERED MEMORANDUM', 'active'),
(41, '', 'MANAGEMENT OF SCHOOL INFORMATION AND COMMUNICATIONS TECHNOLOGY (ICT) EQUIPMENT AND FACILITIES', 'https://drive.google.com/file/d/1P22b5qq5veamUvUkhAThuu9oL8nmBrN0/view?usp=sharing', '96', '2022-03-31', 'NUMBERED MEMORANDUM', 'active'),
(42, '', 'AN ORDER RE-ORGANIZING THE LOCAL COUNCIL FOR THE PROTECTION OF CHILDREN INTER-AGENCY MONITORING TASK FORCE (LCPC-IMTF) IN THE CITY OF MANILA', 'https://drive.google.com/file/d/1rEKZNwi0gPUHWw2USOXt3-9O1--b-D3U/view?usp=sharing', '95', '2022-04-07', 'NUMBERED MEMORANDUM', 'active'),
(43, '', 'CREATION OF A TECHNICAL WORKING GROUP FOR THE DEVELOPMENT OF THE DRAINAGE MASTER PLAN OF THE CITY OF MANILA', 'https://drive.google.com/file/d/1kSSnY_6cgDIVOESVjYYzdhV4eo-McSzT/view?usp=sharing', '94', '2022-04-07', 'NUMBERED MEMORANDUM', 'active'),
(44, '', 'AN ORDER CONSTITUTING THE MANILA TRAFFIC ADJUDICATION BOARD DEFINING ITS POWERS AND FUNCTIONS', 'https://drive.google.com/file/d/1ftICJMKepLRhGCnxT8KhWNRgs8GYJ47N/view?usp=sharing', '93', '2022-04-07', 'NUMBERED MEMORANDUM', 'active'),
(45, '', 'SCHEDULE OF ACTIVITIES ON THE SCREENING PROCESS OF TEACHER I APPLICANTS FOR THE SCHOOL YEAR 2022-2023', 'https://drive.google.com/file/d/10puWvPKEaqBaE0gq0SfZB_rXXpgZKo9c/view?usp=sharing', '92', '2022-04-01', 'NUMBERED MEMORANDUM', 'active'),
(46, '', 'CY 2018 BASIC EDUCATION FACILITIES FUND (BEFF) REPAIR OF CLASROOM (BATCH 2)', ' https://drive.google.com/file/d/10lTmtRxTC37LQ2P6TMZoJpGbN0zRfIhV/view', '0', '2018-06-08', 'NUMBERED MEMORANDUM', 'active'),
(47, '', 'DIVISION LEVEL WINNERS IN THE NESTLE WELLNESS CAMPUS PROGRAM BEST IMPLEMENTING SCHOOL CONTEST FOR SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1uzoNWuZvcUJ8M5ASPbxo0QJUAPzzB1Gz/view?usp=sharing', '90', '2022-03-28', 'NUMBERED MEMORANDUM', 'active'),
(48, '', 'RE-OPENING OF APPLICATION FOR EDUCATION PROGRAM SUPERVISOR', 'https://drive.google.com/file/d/1ppevRBFSQchO0sYD_lH3j04RtY8eV8Jn/view?usp=sharing', '88', '2022-03-29', 'NUMBERED MEMORANDUM', 'active'),
(49, '', 'ENHANCEMENT OF THE CONTINGENCY PLANNING WRITESHOP', 'https://drive.google.com/file/d/1w6gTbc7fj9ToDdKTvZa7TC3AhVIkTvPD/view?usp=sharing', '87', '2022-03-29', 'NUMBERED MEMORANDUM', 'active'),
(50, '', 'WINNERS IN THE YOUTH INTERNATIONAL SCIENCE FAIR ONLINE COMPETITION 2022', 'https://drive.google.com/file/d/13WZ_aPDz6xmIKala1kZa7pg-MdfmK06G/view?usp=sharing', '86', '2022-03-23', 'NUMBERED MEMORANDUM', 'active'),
(51, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1I0LqWe4gFS8XrAeIjz7Iyrf9QeH12lXu/view?usp=sharing', '85', '2022-03-25', 'NUMBERED MEMORANDUM', 'active'),
(53, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1O9P_5cYaVqxdzAlZtcK7ahvSC4Yi-bTN/view?usp=sharing', '83', '2022-03-24', 'NUMBERED MEMORANDUM', 'active'),
(54, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1Ph_sd9bnhCp1UNO5-sABcp2d79qgsaE1/view?usp=sharing', '82', '2022-03-22', 'NUMBERED MEMORANDUM', 'active'),
(55, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1ycYc0rkXsd0sqeva05HuSXo3095lZFDY/view?usp=sharing', '81', '2022-03-22', 'NUMBERED MEMORANDUM', 'active'),
(56, '', '1ST BATANG MAYNILA WATER POLO 2022', 'https://drive.google.com/file/d/1v5olJ7lNcF9qTYBBF7oxI50CE7eOVfji/view?usp=sharing', '80', '2022-03-22', 'NUMBERED MEMORANDUM', 'active'),
(57, '', 'MONTHLY UPDATING OF PERSONAL SERVICES ITEMIZATION AND PLANTILLA OF PERSONNEL (PSIPOP) OF SECONDARY SCHOOLS - IMPLEMENTING UNITS AS PER REQUIREMENT OF THE DEPARTMENT OF BUDGET AND MANAGEMENT', 'https://drive.google.com/file/d/1M2x1Y8PgEZ0vPhTwcEQCHmgzIReuJooK/view?usp=sharing', '79', '2022-03-15', 'NUMBERED MEMORANDUM', 'active'),
(58, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1Qifq33_jFDrz_jtPrQWuEgkip6sDH-ga/view?usp=sharing', '77', '2022-03-15', 'NUMBERED MEMORANDUM', 'active'),
(59, '', 'BARMM RESOLUTION NO. 184 RELATIVE TO THE NON-DISCRIMINATION AND RESPECT OF CULTURE AND RELIGION IN LABOR AND EMPLOYMENT AND IN RENDERING SERVICES TO CERTAIN TRANSACTIONS', 'https://drive.google.com/file/d/1eQIhZwNmnO4ZbxGQeCSilMqHWAfWkf3n/view?usp=sharing', '76', '2022-03-15', 'NUMBERED MEMORANDUM', 'active'),
(60, '', 'AS STATED', 'https://drive.google.com/file/d/1ZHtqpZOvlQorJ1A_0BOXoQafKb2UCmm4/view?usp=sharing', '75', '2022-03-15', 'NUMBERED MEMORANDUM', 'active'),
(61, '', 'UPDATED INTERIM GUIDELINES FOR THE APPRAISAL OF DOCUMENTS OF APPLICANTS FOR HEAD TEACHERS, SCHOOL PRINCIPALS AND OTHER TEACHING-RELATED POSITIONS IN THE DIVISION OF CITY SCHOOLS-MANILA', 'https://drive.google.com/file/d/1Zrwbxpm4vjcJC5xMFEPmCmbZxPEJhIRS/view?usp=sharing', '74', '2022-03-14', 'NUMBERED MEMORANDUM', 'active'),
(62, '', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 072, s. 2022 (VACANCIES FOR ELEMENTARY SCHOOL PRINCIPALS I, I, III & IV, SECONDARY SCHOOL PRINCIPALS I & IV, EDUCATION PROGRAM SUPERVISOR (ALTERNATIVE LEARNING S', 'https://drive.google.com/file/d/1M5v72fzChQJEAogyBsm2Em1ua2TTUb9z/view?usp=sharing', '73', '2022-03-14', 'NUMBERED MEMORANDUM', 'active'),
(64, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1BZ_oNVtYougj113rUh0aiCt_e24SliwN/view?usp=sharing', '70', '2022-03-10', 'NUMBERED MEMORANDUM', 'active'),
(65, '', 'DESIGNATION OF PERMANENT FOCAL PERSON AND ALTERNATE REPRESENTATIVE FOR CHILD PROTECTION UNIT (CPU) IN SCHOOL GOVERNANCE AND OPERATIONS DIVISION (SGOD)', 'https://drive.google.com/file/d/1hb0yH-OVK-0DsUbxXjw54HJmYz97LoT0/view?usp=sharing', '68', '2022-03-08', 'NUMBERED MEMORANDUM', 'active'),
(66, '', 'SCHEDULE ON ACTIVITIES ON THE CONDUCT OF THE MID-YEAR LEARNING ASSURANCE FOR MONITORING AND PROGRESS (LAMP) YEAR 2 ASSESSMENT ', 'https://drive.google.com/file/d/1mcEsHGKb5jDJC2Jf1lc4G2Ib7PM4zyTq/view?usp=sharing', '67', '2022-03-09', 'NUMBERED MEMORANDUM', 'active'),
(67, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1KMfGp4QsG23NffkBgeyUS8vgZqxQt7lY/view?usp=sharing', '66', '2022-03-09', 'NUMBERED MEMORANDUM', 'active'),
(68, '', 'CONDUCT OF 2ND DIVISION LEARNING ENGAGEMENT AND MANAGEMENT MEETING', 'https://drive.google.com/file/d/19NzxuHpCbGJqLm-6Cs6Tjx_3HRI-o2-C/view?usp=sharing', '65', '2022-03-08', 'NUMBERED MEMORANDUM', 'active'),
(69, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1OEo_tWHAFtm8yoJ9sKOZbevJBFfdGns6/view?usp=sharing', '64', '2022-03-07', 'NUMBERED MEMORANDUM', 'active'),
(70, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1nqeF008NaqwWHAhDf02l-9ROEjql_vR-/view?usp=sharing', '63', '2022-03-04', 'NUMBERED MEMORANDUM', 'active'),
(71, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/119gQGrS3ctmG2-vPkHLwWjs6Heu958jY/view?usp=sharing', '62', '2022-03-02', 'NUMBERED MEMORANDUM', 'active'),
(72, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1cAxKFOeTZenj8dPPN0MDbfaa8Ub375fe/view?usp=sharing', '61', '2022-03-01', 'NUMBERED MEMORANDUM', 'active'),
(73, '', 'IN VIEW OF THE PLACING OF THE NATIONAL CAPITAL REGION [NCR] UNDER ALERT LEVEL 1, ALL GOVERNMENT OFFICES ARE REQUIRED TO ADHERE TO THE FULL ON-SITE WORKFORCE', 'https://drive.google.com/file/d/1l1gSc1azmGfizqeByVieL8pgJRudI6xH/view?usp=sharing', '60', '2022-03-01', 'NUMBERED MEMORANDUM', 'active'),
(74, '', 'CONDUCT OF 2021 BRIGADA ESKWELA REGIONAL AWARDS', 'https://drive.google.com/file/d/18fNryL1hIKWHqf6EdpmglaKn_6hZAUiI/view?usp=sharing', '59', '2022-02-24', 'NUMBERED MEMORANDUM', 'active'),
(75, '', 'APPLICATION FOR TEACHER I POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA SCHOOL YEAR 2022-2023', 'https://drive.google.com/file/d/1s9pTDIzSo0o82nOnzqXK8gsIiIgab8ZX/view?usp=sharing', '58', '2022-03-15', 'NUMBERED MEMORANDUM', 'active'),
(76, '', 'SCREENING OF PROPOSALS FOR BASIC EDUCATION RESEARCH FUND (BERF) 2022', 'https://drive.google.com/file/d/1tugwKnMP1ovAUf1c1jJP_RYKkNAinz8K/view?usp=sharing', '57', '2022-02-28', 'NUMBERED MEMORANDUM', 'active'),
(77, '', 'CONDUCT OF 2021 BRIGADA ESKWELA REGIONAL AWARDS', 'https://drive.google.com/file/d/1iAs0gBkG5TvPJxGUzIaTmw97tNQA9Smq/view?usp=sharing', '56', '2022-02-18', 'NUMBERED MEMORANDUM', 'active'),
(78, '', 'PROJECT E-GABAY: ESKWELA AT GURO AKMA SA BAGONG YUGTO NG PAGTUTURO', 'https://drive.google.com/file/d/1XF15t1-Wt03EKk0-vIUt4RWSIzdrN8tj/view?usp=sharing', '55', '2022-02-21', 'NUMBERED MEMORANDUM', 'active'),
(79, '', 'CONDUCT OF MID-YEAR LEARNING ASSURANCE FOR MONITORING AND PROGRESS (LAMP) YEAR 2 ASSESSMENT', 'https://drive.google.com/file/d/1_5KuqFudyPJOFjfluXoSyuvLuv6nMsbD/view?usp=sharing', '54', '2022-02-23', 'NUMBERED MEMORANDUM', 'active'),
(80, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1e7m0gSgIQktfAmd_Q869anGggLhcfLUT/view?usp=sharing', '53', '2022-02-23', 'NUMBERED MEMORANDUM', 'active'),
(81, '', 'REITERATION ON THE ESTABLISHMENT OF YOUTH FOR ENVIRONMENT IN SCHOOL - ORGANIZATION (YES-O) IN PUBLIC ELEMENTARY AND SECONDARY SCHOOLS', 'https://drive.google.com/file/d/1hF9AqVdu0jdJVxQ4revcvm0xcDaPytZn/view?usp=sharing', '52', '2022-02-18', 'NUMBERED MEMORANDUM', 'active'),
(82, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/17BfcN6eMXwET1it-5aq4YpJAdwoBDeoo/view?usp=sharing', '47', '2022-02-14', 'NUMBERED MEMORANDUM', 'active'),
(83, '', 'ANNUAL PHYSICAL EXAMINATION OF ALL EMPLOYEES OF THE CITY GOVERNMENT', 'https://drive.google.com/file/d/1l2SNEb97ud0ODSQaoHNwTY-h-Kn-zUxd/view?usp=sharing', '46', '2022-02-14', 'NUMBERED MEMORANDUM', 'active'),
(84, '', 'UPDATED GUIDELINES ON QUARANTINE, ISOLATION AND TESTING FOR COVID-19 RESPONSE AND CASE MANAGEMENT FOR THE OMICRON VARIANT', 'https://drive.google.com/file/d/1JuK8ASlbSkF5Epzp7xrw7dIfk5IDuCMx/view?usp=sharing', '45', '2022-02-10', 'NUMBERED MEMORANDUM', 'active'),
(85, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1Kw4BDFPQxao_mppIESuf0EfwYC446tJv/view?usp=sharing', '44', '2022-02-10', 'NUMBERED MEMORANDUM', 'active'),
(86, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1vfQkddYpV7z9qWjQEOy-x1SOng_d3j0G/view?usp=sharing', '41', '2022-02-08', 'NUMBERED MEMORANDUM', 'active'),
(87, '', 'IMPLEMENTATION OF EXPANSION PHASE OF FACE-TO-FACE CLASSES', 'https://drive.google.com/file/d/1OTy_Ah1Fbn1X25b1WNWhuVkkL9MBrzU9/view?usp=sharing', '40', '2022-02-07', 'NUMBERED MEMORANDUM', 'active'),
(88, '', 'REVISED POLICY ON THE USE OF PARKING SPACE IN DCS MANILA', 'https://drive.google.com/file/d/10z8Sjy2Y7LQ73yVuZGVo_pyQR_onBtMO/view?usp=sharing', '39', '2022-02-04', 'NUMBERED MEMORANDUM', 'active'),
(89, '', 'LOCAL ABSENTEE VOTING (LAV)', 'https://drive.google.com/file/d/1hW86nYYcGkmdeBoGlGphzu1_FgFEYKND/view?usp=sharing', '38', '2022-01-31', 'NUMBERED MEMORANDUM', 'active'),
(90, '', 'GOOGLE CERTIFICATION TRAINING (BATCH 3)', 'https://drive.google.com/file/d/1E4k6FFF967CPEq42LMoyeWc8F1mOSOSh/view?usp=sharing', '37', '2022-01-31', 'NUMBERED MEMORANDUM', 'active'),
(91, '', 'AN ORDER STRENGTHENING THE MANILA NUTRITION COORDINATING COMMITTEE', 'https://drive.google.com/file/d/1_YnsWiLFAJnHHjUkgVyHgqnBBwyuvDLl/view?usp=sharing', '36', '2022-02-02', 'NUMBERED MEMORANDUM', 'active'),
(92, '', 'COMPOSITION ON THE BIDS AND AWARDS COMMITTEE FOR THE YEAR 2022', 'https://drive.google.com/file/d/1CEBbq_cLgULK97fI8RGW7xYcFMSly7KS/view?usp=sharing', '35', '2022-01-03', 'NUMBERED MEMORANDUM', 'active'),
(93, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1jgpAcH4c_vx5xvMs-uoZ1pBkuNNxinaH/view?usp=sharing', '34', '2022-01-31', 'NUMBERED MEMORANDUM', 'active'),
(94, '', '1ST MANILA LEGENDS ESPORT LEAGUE', 'https://drive.google.com/file/d/1NuymAHnMNppeI56ItHG_6fJuGgKgRZ4v/view?usp=sharing', '33', '2022-01-26', 'NUMBERED MEMORANDUM', 'active'),
(95, '', 'PREPARATION AND SUBMISSION OF NOTICE OF SALARY ADJUSTMENT (NOSA) COVERING THE THIRD TRACHE COMPENSATION ADJUSTMENT', 'https://drive.google.com/file/d/1HkdqzGgb37ZMFmkhAN8Rv4nR1GLJA_Oc/view?usp=sharing', '32', '2022-01-27', 'NUMBERED MEMORANDUM', 'active'),
(96, '', 'VACANCIES FOR GUIDANCE COUNSELOR I, GUIDANCE COUNSELOR II, GUIDANCE COUNSELOR III, AND GUIDANCE COORDINATOR III', 'https://drive.google.com/file/d/1EROg58AN_pAG8OZQ3fkFCtowApMsOOUC/view?usp=sharing', '31', '2022-01-24', 'NUMBERED MEMORANDUM', 'active'),
(97, '', 'SWAB TEST & CLEARANCE FOR UNVACCINATED EMPLOYEES', 'https://drive.google.com/file/d/1JRuNiUmDef6Elvatc7Hnj7SwRxsjIkQ7/view?usp=sharing', '30', '2022-01-26', 'NUMBERED MEMORANDUM', 'active'),
(98, '', 'PILOT IMPLEMENTATION OF ICTS.DEPEDMANILA.ORG', 'https://drive.google.com/file/d/1yfj-6lf4JGipmi5Ci5xIfTRwg41qedEK/view?usp=sharing', '29', '2022-01-21', 'NUMBERED MEMORANDUM', 'active'),
(99, '', 'AN ORDER PROHIBITING THE SALE OF LIQUOR AND OTHER ALCOHOLIC BEVERAGES AND DIRECTING THE STRICT IMPLEMENTATION OF CITY ORDINANCE NO. 5555 AROUND THE PERIMETER WALLS OF THE UNIVERSITY OF SANTO TOMAS [US', 'https://drive.google.com/file/d/1-O-LiKPmKyqR0vH6J9BeXpBrzpXDz0Yc/view?usp=sharing', '28', '2022-01-24', 'NUMBERED MEMORANDUM', 'active'),
(100, '', 'AN ORDER PROHIBITING THE SALE OF LIQUOR AND OTHER ALCOHOLIC BEVERAGES, RELIGOUS PROCESSIONS, STREET PARTIES, STAGE SHOWS, PALARONG KALYE OR STREET GAMES, ATI-ATIHAN AND SIMILAR ACTIVITIES AS WELL AS O', 'https://drive.google.com/file/d/1GPJzTi4gMM-VKO-VC5TBiTnHVHBmmWLN/view?usp=sharing', '27', '2022-01-25', 'NUMBERED MEMORANDUM', 'active'),
(101, '', 'AN ORDER CANCELLING ALL ACTIVITIES IN RELATION TO THE CELEBRATION OF THE CHINESE NEW YEAR OF LUNAR NEW YEAR ON JANUARY 31, 2022 TO FEBRUARY 1, 2022', 'https://drive.google.com/file/d/1L8P01YHMQEhosGvx1vsId697GzqJZgv6/view?usp=sharing', '26', '2022-01-25', 'NUMBERED MEMORANDUM', 'active'),
(102, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/118mmAnruKn9W3b_jFoJbRqGW0JGwSgZT/view?usp=sharing', '25', '2022-01-24', 'NUMBERED MEMORANDUM', 'active'),
(103, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1ntt1b6IiBaWTvJMTl-MV_8HQc9GPARz2/view?usp=sharing', '24', '2022-01-21', 'NUMBERED MEMORANDUM', 'active'),
(104, '', 'PAPERLESS DISSEMINATION OF DIVISION MEMORANDUMS AND OTHER ISSUANCES', 'https://drive.google.com/file/d/1eSiNKE2miIDZG0-PnlE-Wa1b9-VM0uUO/view?usp=sharing', '23', '2022-01-20', 'NUMBERED MEMORANDUM', 'active'),
(105, '', 'SEAL OF OFFICE ACHIEVEMENT REFORM AND RECOGNITION 2021', 'https://drive.google.com/file/d/1zUwWgSH2EgsJInuIhNJ-XO94Tnso-5Fg/view?usp=sharing', '22', '2022-01-14', 'NUMBERED MEMORANDUM', 'active'),
(106, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1SZml8qTAuxlnmKUsvjnrWpblVo8b835R/view?usp=sharing', '21', '2022-01-17', 'NUMBERED MEMORANDUM', 'active'),
(107, '', 'MANILA PERSONNEL CAREER DEVELOPMENT AND INFORMATION SYSTEM', 'https://drive.google.com/file/d/1tXLrXReZ3SH4bc7x5viOaSrjpNVLgFGq/view?usp=sharing', '21', '2022-01-14', 'NUMBERED MEMORANDUM', 'active'),
(108, '', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1KO1n4M3Yvxn1RH279jIjDpHq76TtDIpl/view?usp=sharing', '20', '2022-01-13', 'NUMBERED MEMORANDUM', 'active'),
(109, '', 'AN ORDER DECLARING A WEEKLONG HEALTH BREAK FOR ALL STUDENTS AND FACULITY IN ALL PUBLIC AND PRIVATE ACADEMIC INSTITUTIONS IN THE CITY OF MANLA FROM JANUARY 14, 2022 TO JANUARY 21, 2022', 'https://drive.google.com/file/d/1oEoLpHSwVNtnDq3jaOtli7BF5qXpfVu4/view?usp=sharing', '19', '2022-01-14', 'NUMBERED MEMORANDUM', 'active'),
(110, '', 'AN ORDER PROHIBITING THE SALE OF LIQUOR AND OTHER ALCOHOLIC BEVERAGES (THRU ORDINANCE 5555), PROHIBITION OF RELIGIOUS PROCESSIONS, STREET PARTIES, STAGE SHOWS, PARADES, PALARONG KALYE OR STREET GAMES,', 'https://drive.google.com/file/d/12NGb6U5Oaswa-gK8AqIVzSu-Al6ua2h9/view?usp=sharing', '18', '2022-01-14', 'NUMBERED MEMORANDUM', 'active'),
(111, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1Pk6JNPr6lAJ-w5N4WkMg2uopZY3CFCxt/view?usp=sharing', '17', '2022-01-13', 'NUMBERED MEMORANDUM', 'active'),
(112, '', 'FILING OF SWORN STATEMENT OF ASSETS, LIABILITIES AND NET WORTH AND DISCLOSURES OF BUSINESS INTERESTS AND FINANCIAL CONNECTIONS AND IDENTIFICATION OF RELATIVES IN THE GOVERNMENT SERVICE AS OF DECEMBER ', 'https://drive.google.com/file/d/1wHCi-Alre5V98X3FOVnHOTTI8XQz4k2k/view?usp=sharing', '16', '2022-01-11', 'NUMBERED MEMORANDUM', 'active'),
(113, '', 'VACANCIES FOR HEAD TEACHERS III AND VI', 'https://drive.google.com/file/d/1hzJoyJsHkv7j_u-orPWi_EvsFW0JAmUY/view?usp=sharing', '15', '2022-01-13', 'NUMBERED MEMORANDUM', 'active'),
(114, '', 'ADVISORY ON COVID-19 PROTOCOLS FOR QUARTINE AND ISOLATION', 'https://drive.google.com/file/d/1OZKVBtzUYE5DIumsiY5yphIagGeNNsWC/view?usp=sharing', '14', '2022-01-11', 'NUMBERED MEMORANDUM', 'active'),
(115, '', 'CONDUCT OF WEEKLY CLEANING AND SANITATION OPERATION', 'https://drive.google.com/file/d/15BwSBtM4LNllv0e0-ATPjMKHMHR4T-yk/view?usp=sharing', '13', '2022-01-11', 'NUMBERED MEMORANDUM', 'active'),
(116, '', 'REQUIREMENTS & PROCEDURES FOR REDUCING ON-SITE WORKFORCE IN GOVERNMENT OFFICES BELOW THE MINIMUM SET FORTH UNDER THE ALERT LEVEL SYSTEM, AMENDING MC NOS. 86 & 93', 'https://drive.google.com/file/d/1UWgR2LMPJPbdVvAWknTc6wcPNTP_e1iS/view?usp=sharing', '12', '2022-01-11', 'NUMBERED MEMORANDUM', 'active'),
(117, '', 'PLACING THE NATIONAL CAPITAL REGION UNDER ALERT LEVEL 3', 'https://drive.google.com/file/d/1yXRpi372gYSHsWjifJPWgubhgJ0yILzl/view?usp=sharing', '11', '2022-01-07', 'NUMBERED MEMORANDUM', 'active'),
(118, '', 'REITERATION OF REGIONAL GUIDELINES ON FOSTERING ACADEMIC EASE ACROSS AREAS OF CURRICULUM, INSTRUCTION AND ASSESSMENT FOR SY 2021-2022 DURING THE COMMUNITY SPREAD OF COVID-19 OMICRON VARIANT', 'https://drive.google.com/file/d/1WidlP1EPggle-_RvM8AXnbx6syr1o7lq/view?usp=sharing', '10', '2022-01-10', 'NUMBERED MEMORANDUM', 'active'),
(119, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1-5wkbxKUlIreUo2kUx-HySz-fzHppm4S/view?usp=sharing', '9', '2022-01-07', 'NUMBERED MEMORANDUM', 'active'),
(120, '', 'REMAINING ACTIVITIES OF THE PROJECT <CODE/IT>? FOR THE SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1rURGK9mBw-BpqQetD4KWzHb2DUBWgXrG/view?usp=sharing', '7', '2022-01-05', 'NUMBERED MEMORANDUM', 'active'),
(121, '', 'AN ORDDER PROHIBITING THE SALE OF LIQUOR AND OTHER ALCOHOLIC BEVERAGES AND DIRECTING THE STRICT IMPLEMENTATION OF CITY ORDINANCE NO. 5555 DURING THE FEAST OF THE BLACK NAZARENE', 'https://drive.google.com/file/d/13INfDclGPKsLdhuMtRlitPJhWVCWJx1e/view?usp=sharing', '6', '2022-01-06', 'NUMBERED MEMORANDUM', 'active'),
(122, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1q_klhT2Qjy6xCF5u_ZhzCkSuLjjZT6-Z/view?usp=sharing', '5', '2022-01-06', 'NUMBERED MEMORANDUM', 'active'),
(123, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1VYUAxqbWg8Qu3SIvDX7jMsS0gKYtd330/view?usp=sharing', '4', '2022-01-03', 'NUMBERED MEMORANDUM', 'active'),
(124, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNITS/BUILDING UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1QsGLAmD6czQhGUGLT1wWdl20CxEVdHfB/view?usp=sharing', '3', '2022-01-04', 'NUMBERED MEMORANDUM', 'active'),
(125, '', 'REASSIGNMENT OF ELEMENTARY SCHOOL PRINCIPALS', 'https://drive.google.com/file/d/1yXeVvQHHMvi_lQlYL_lQS6kbE4Jmz_8o/view?usp=sharing', '1', '2022-01-03', 'NUMBERED MEMORANDUM', 'active'),
(126, '', 'INDAK GURO 2022 (MGA SAYAW SA CURRICULUM)', 'https://drive.google.com/file/d/1vduc8UlD0K5XXbFK_kVGtNCfgK9sp4ct/view?usp=sharing', '239', '2022-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(127, '', '2022 DISTRICT II TEACHING DEMONSTRATION LESSONS IN SECONDARY LEVEL', 'https://drive.google.com/file/d/1VJPEsepVmvp4Igv3jNa_52yH6Rmv2Ua1/view?usp=sharing', '234', '2022-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(128, '', 'WINNERS IN THE 2022 NATIONAL HERITAGE MONTH CELEBRATION CONTESTS', 'https://drive.google.com/file/d/14MszXw4CO0vX-0bBajiL1mY_0747gOmt/view?usp=sharing', '241', '2022-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(129, '', 'SCIENCE TEACHERS TRAINING ON THE USE OF SCIENCE LABORATORY ROOM AND LEARNING MATERIALS', 'https://drive.google.com/file/d/1vVRpSuFxBWuTkGYAMUQXm21JZ208rtNK/view?usp=sharing', '235', '2022-06-07', 'UNNUMBERED MEMORANDUM', 'active'),
(130, '', 'CONDUCT OF EXAMINATION, INTERVIEW AND APPRAISAL OF DOCUMENTS FOR THE CANDIDATES OF HEAD TEACHER VI, HEAD TEACHER III POSITIONS', 'https://drive.google.com/file/d/1o8mJLe1WRgUAqUqB4GhCYbXvDwV9MD9E/view?usp=sharing', '236', '2022-06-06', 'UNNUMBERED MEMORANDUM', 'active'),
(131, '', 'DIVISION ORIENTATION ON THE BEGINNING OF SCHOOL YEAR COMPREHENSIVE RAPID LITERACY AND NUMERACY ASSESSMENT (BOSY CRLNA)', 'https://drive.google.com/file/d/1Sg5rR0uepd3QNMeQ03wX8wLVOUaZulBN/view?usp=sharing', '224', '2022-06-06', 'UNNUMBERED MEMORANDUM', 'active'),
(133, '', 'SKILLS ENHANCEMENT TRAINING FOR TECHNOLOGY AND LIVELIHOOD EDUCATION HOME ECONOMICS TEACHERS (TLE-HE)', 'https://drive.google.com/file/d/1QGmd6T9DmX8WJL9KnKpwcn8sYnDpPZMd/view?usp=sharing', '240', '2022-06-06', 'UNNUMBERED MEMORANDUM', 'active'),
(134, '', 'SUBMISSION OF FINANCIAL DOCUMENTS RELATIVE TO GOVERNMENT SERVICE INSURANCE SYSTEM (GSIS) REGULAR REMITTANCES', 'https://drive.google.com/file/d/15JYkLEztI_RO3CgqfJkXE7ppWie6iY2k/view?usp=sharing', '238', '2022-06-03', 'UNNUMBERED MEMORANDUM', 'active'),
(135, '', 'REITERATION OF PARTICIPATION TO THE 2022 2ND QUARTER NATIONWIDE SIMULTANEOUS EARTHQUAKE DRILL (NSED) ACTIVITIES', 'https://drive.google.com/file/d/1_ZuXLmT2FOSO9p5PZZYRu3VU5hsbPHJG/view?usp=sharing', '226', '2022-06-03', 'UNNUMBERED MEMORANDUM', 'active'),
(136, '', 'TINIG NI GURO KAALAMAN KO PROJECT', 'https://drive.google.com/file/d/1hTwpwsSvg4FwYy_crWGxwLw5-qY_5vjm/view?usp=sharing', '229', '2022-06-03', 'UNNUMBERED MEMORANDUM', 'active'),
(138, '', 'JCI MANILA ISINILANG KANG KABILANG', 'https://drive.google.com/file/d/1jFnDeU54reakLmXxfpnmmB5gQER2JxCP/view?usp=sharing', '216', '2022-05-31', 'UNNUMBERED MEMORANDUM', 'active'),
(139, '', 'DIVISION SCIENCE AND TECHNOLOGY FAIR 2022', 'https://drive.google.com/file/d/1hKrrZPcwyERlBTJ2hfwIrSjNbFertsdk/view?usp=sharing', '220', '2022-05-31', 'UNNUMBERED MEMORANDUM', 'active'),
(140, '', 'FINALIZATION AND SUBMISSION OF REVIEWED Q1 AND Q1 SDO-DEVELOPED SLMS', 'https://drive.google.com/file/d/1RRoYlxTE_hZl9O7APcYN8CaBVtqxLmdv/view?usp=sharing', '219', '2022-05-30', 'UNNUMBERED MEMORANDUM', 'active'),
(141, '', '2ND BOOSTER SHOT VACCINATION OF CITY HALL EMPLOYEES', 'https://drive.google.com/file/d/1-DQgpfLdzOnTJmIe7bqghDaqevZQEmuY/view?usp=sharing', '138', '2022-05-25', 'NUMBERED MEMORANDUM', 'active'),
(142, '', 'UPDATED LIST OF TRANSCRIPT OF RECORDS (TOR) EVALUATORS', 'https://drive.google.com/file/d/16Ay_pkoL75ZlGORUAq0xwWCY5U19HjyD/view?usp=sharing', '205', '2022-05-25', 'UNNUMBERED MEMORANDUM', 'active'),
(143, '', 'ANGAT BAYI WOMENS EMPOWERMENT AND LEADERSHIP PROGRAM (AB WELP) FOR CIVIL SERVANTS', 'https://drive.google.com/file/d/1K9-xtPrNYeJ_hSEeqLyz5op8F5VZsEyz/view?usp=sharing', '206', '2022-05-25', 'UNNUMBERED MEMORANDUM', 'active'),
(144, '', 'VALIDATION OF LEARNERS READING AND NUMERACY SKILLS:BASIC FOR LEARNING RECOVERY INTERVENTION PLAN USING E-FAST', 'https://drive.google.com/file/d/1qDOTX7SqA_6ZqkYyTgct4BABSm9fjI7i/view?usp=sharing', '211', '2022-05-25', 'UNNUMBERED MEMORANDUM', 'active'),
(145, '', 'MATH SKILLS COMPETITION FOR SECONDARY MATHEMATICS TEACHERS 2022 NEW NORMAL EDITION', 'https://drive.google.com/file/d/1wpmRglm7lFvLsSRMdOxOQl2rxwMemA9m/view?usp=sharing', '209', '2022-05-25', 'UNNUMBERED MEMORANDUM', 'active'),
(146, '', 'GUIDELINES ON THE PROGRESSIVE EXPANSION OF FACE TO FACE CLASSES', 'https://drive.google.com/file/d/1XtvMNkP06Ze7LC9V_wnUjqsCY6PpdrGd/view?usp=sharing', '207', '2022-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(147, '', 'TRAINING-WORKSHOP ON DEPED NCR OPERATION PLANNING AND DIRECTION SETTING FOR 2022-2023 FOCUSED ON LOGGED IN + BLENDED LEARNING VERSION 3', 'https://drive.google.com/file/d/1K7zSxkfXCyiqNQsskV1RdPMEO0QRniVS/view?usp=sharing', '201', '2022-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(148, '', 'DIVISION EDUCATION DEVELOPMENT PLAN (DEDP) 2022-2028', 'https://drive.google.com/file/d/1Y-KODqJpar78HwHC9i5HlEm6nbM91wu0/view?usp=sharing', '202', '2022-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(149, '', 'WRITESHOP ON THE SIX YEARS STRATEGIC ORGANIZATIONAL SYSTEM AND PROCESSES, MONITORING AND EVALUATION AND RISK MANAGEMENT', 'https://drive.google.com/file/d/11hPG2vU5EQwdf0eybKhHz2YXk-qmDJuA/view?usp=sharing', '204', '2022-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(150, '', 'CITY EMPLOYEE AWARDEES CY 2022 FOR 30, 35, 40, 45 AND ABOVE and ABOVE 40 YEARS IN SERVICE WHO ARE DUE FOR COMPULSORY RETIREMENT AFTER ARAW NG MAYNILA 2022 AND BEFORE ARAW NG MAYNILA 2023', 'https://drive.google.com/file/d/1-DQgpfLdzOnTJmIe7bqghDaqevZQEmuY/view?usp=sharing', '139', '2022-05-23', 'NUMBERED MEMORANDUM', 'active'),
(151, '', 'CONDUCT OF GENDER-RESPONSIVE ACTION TOWARDS COMMUNITY EMPOWERMENT AND DEVELOPMENT (GRACED) PROJECT', 'https://drive.google.com/file/d/1EVGmOtNj_QcYlch3fNl8xBsQ6WFzYZEc/view?usp=sharing', '194', '2022-05-23', 'UNNUMBERED MEMORANDUM', 'active'),
(152, '', 'NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS (NQESH) TIMELINE OF ACTIVITIES', 'https://drive.google.com/file/d/1vSoxmpooVNVnhGXJCsfb_6H0hWczpbP1/view?usp=sharing', '193', '2022-05-20', 'UNNUMBERED MEMORANDUM', 'active'),
(153, '', 'POLICY ON ADMINISTRATIVE AIDE I (UTILITY) PERSONNELS MANAGEMENT TRANSFER AND RESTRUCTURING', 'https://drive.google.com/file/d/17yuLDw6V5k1NIkVBvmotAVgFNT6PjTnn/view?usp=sharing', '195', '2022-05-20', 'UNNUMBERED MEMORANDUM', 'active'),
(154, '', 'FILING AND SUBMISSION OF DAILY TIME RECORDS AND BIOMETRICS PRINT OUT OF NON TEACHING EMPLOYEES (SL-VL-BASIC)', 'https://drive.google.com/file/d/1mtqvbKHd5jCN2UkJUI4jIH4D5yriDDVD/view?usp=sharing', '196', '2022-05-20', 'UNNUMBERED MEMORANDUM', 'active'),
(155, '', 'EXPERIENCE ON THE IMPLEMENTATION OF EMERGENCY ACCESSIBLE POLLING PLACE (EAPPS) DURING THE MAY9,2022 NATIONAL AND LOCAL ELECTIONS', 'https://drive.google.com/file/d/1k496RLh6rsJ8mAYh7Yn27FDcQ_PwZE3b/view?usp=sharing', '191', '2022-05-19', 'UNNUMBERED MEMORANDUM', 'active'),
(156, '', 'CELEBRATION OF NATIONAL FLAG DAY', 'https://drive.google.com/file/d/1u9vQ9AkVrIJb7FwkuCCxjG_FzZAbXCzk/view?usp=sharing', '192', '2022-05-19', 'UNNUMBERED MEMORANDUM', 'active'),
(157, '', 'CONDUCT OF SERIES OF ACTIVITIES RELATED TO THE IMPLEMENTATION OF INDUCTION PROGRAM FOR BEGINNING TEACHERS (IPBT) FOR SY 2021-2022', 'https://drive.google.com/file/d/1oGiJYtwdbZcMWvuu8S3C-D5Mkf-pssXG/view?usp=sharing', '199', '2022-05-18', 'UNNUMBERED MEMORANDUM', 'active'),
(158, '', 'FACE TO FACE REORIENTATION OF THE NON TEACHING PERSONNEL ON LEAVE ADMINISTRATION, CIVIL SERVICE RULES AND LAWS', 'https://drive.google.com/file/d/1CsMNS32WZETHvkmPutwfKvqfiKGIRfY5/view?usp=sharing', '187', '2022-05-17', 'UNNUMBERED MEMORANDUM', 'active'),
(159, '', 'CONDUCT OF RANDOM MANUAL AUDIT (R.M.A)', 'https://drive.google.com/file/d/18slmhEx0vOY4lsWoMjpG8NGt0ZeYwRJD/view?usp=sharing', '181', '2022-05-16', 'UNNUMBERED MEMORANDUM', 'active'),
(160, '', 'NATIONAL WINNER IN THE SEARCH FOR THE BEST INTEGRATION OF FINANCIAL LITERACY KEY CONCEPTS IN SCIENCE AND MATHEMATICS THROUGH SELF-LEARNING MODULES', 'https://drive.google.com/file/d/1bZxw-oo1DEVt8guEqaS6BLRnEdhkpGvV/view?usp=sharing', '185', '2022-05-16', 'UNNUMBERED MEMORANDUM', 'active'),
(161, '', 'JCI MANILA AND SDO MANILA JOINT ACTIVITIES: LINEAR PARK MURAL COMPETITIONS AND CONFIDENT ME VIRTUAL CAMP', 'https://drive.google.com/file/d/1TNQCC4cZ299sUZotZEk07kM9_yGhoKGZ/view?usp=sharing', '184', '2022-05-16', 'UNNUMBERED MEMORANDUM', 'active'),
(162, '', 'REQUEST FOR DATA GATHERING AND VALIDATION OF NEAP SIM CARD RECIPIENTS', 'https://drive.google.com/file/d/1dgaFtRAkH4jvFSaY_jYcZeHIzm5F4Fiz/view?usp=sharing', '173', '2022-05-12', 'UNNUMBERED MEMORANDUM', 'active'),
(163, '', 'WEBINAR ON CRAFTING & VALIDATION OF SCIENCE RESEARCH PROPOSAL', 'https://drive.google.com/file/d/17r3QPlR6etEqmWXacJvSncNScV6ovFZ8/view?usp=sharing', '174', '2022-05-12', 'UNNUMBERED MEMORANDUM', 'active'),
(164, '', 'CONDUCT OF THE NATIONAL INVITATIONAL SPORTS COMPETITION(NISC)', 'https://drive.google.com/file/d/1ycgqFRTrwoQT3sqXfflS_rW6wUZKGNrJ/view?usp=sharing', '171', '2022-05-12', 'UNNUMBERED MEMORANDUM', 'active'),
(165, '', 'COORDINATION MEETING REGARDING THE VACANT ADMINISTRATIVE SUPPORT ITEMS OF IMPLEMENTING UNITS', 'https://drive.google.com/file/d/1W6A7j-jQriFkQxoK7B8BqCDCpShnJBQ7/view?usp=sharing', '172', '2022-05-11', 'UNNUMBERED MEMORANDUM', 'active'),
(166, '', 'CAPACITY BUILDING ON SCIENTIFIC RESEARCH FOR LEARNERS', 'https://drive.google.com/file/d/149FwV-HJ5WSmXiegP2jtMjBQpWBHGmFX/view?usp=sharing', '178', '2022-05-11', 'UNNUMBERED MEMORANDUM', 'active'),
(167, '', 'CONDUCT OF EXAMINATION. INTERVIEW AND EVALUATION OF DOCUMENTS OF EDUCATION PROGRAM', 'https://drive.google.com/file/d/1HxiLIsRcDQ0RPlaidUa5--90G3SfRo9e/view?usp=sharing', '177', '2022-05-11', 'UNNUMBERED MEMORANDUM', 'active'),
(168, '', 'TEACHER INDUCTION PROGRAM ORIENTATION FOR MENTORS', 'https://drive.google.com/file/d/1wpYfAP-g0D_JtApBt24JNfFpF2yS46A2/view?usp=sharing', '179', '2022-05-13', 'UNNUMBERED MEMORANDUM', 'active'),
(169, '', 'CONDUCT OF THE LIGHT OF HOPE MUSIC FOR HOPE VIRTUAL CONCERT', 'https://drive.google.com/file/d/1wmG5dv7wOfJAXmb7BsMCm0mHJiRv6055/view?usp=sharing', '170', '2022-05-06', 'UNNUMBERED MEMORANDUM', 'active'),
(170, '', 'RAJAH SULAYMAN AWARD CY2022', 'https://drive.google.com/file/d/1PDnbJcX8J3KXgwW3Mufi-sSurWuM2Vqb/view?usp=sharing', '0', '2022-05-06', 'UNNUMBERED MEMORANDUM', 'active'),
(171, '', 'ADDITIONAL APPLICANTS TO THE NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS(NQESH)', 'https://drive.google.com/file/d/1smJB8BkzdWsvdgEx6ImdhLsC_HXWE4t2/view?usp=sharing', '169', '2022-05-06', 'UNNUMBERED MEMORANDUM', 'active'),
(172, '', 'EXTENSION OF THE TEACHER-ADVISER TRAINING COURSE (TATC) AND STUDENT LEADER DEVELOPMENT PROGRAM (SDLP)', 'https://drive.google.com/file/d/14mMZevONOVh1lNWttSzzVhS9B3oztgot/view?usp=sharing', '168', '2022-05-04', 'UNNUMBERED MEMORANDUM', 'active'),
(173, '', 'GRANT OF SERVICE CREDITS AND COMPENSATORY TIME-OFF FOR PISA 2022 RENDERED SERVICES BY DIVISION OFFICE AND SCHOOL PERSONNEL', 'https://drive.google.com/file/d/1cI9-q9W0tyyM-_fOfSCUz2QrD6NtMc_E/view?usp=sharing', '0', '2022-05-04', 'UNNUMBERED MEMORANDUM', 'active'),
(174, '', 'ISSUANCE RELATIVE TO THE CONDUCT OF THE 2021 NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS (NQESH)', 'https://drive.google.com/file/d/18vjHMlS-z34HNBcXCoR6lyoqt08JIwqG/view?usp=sharing', '0', '2022-05-02', 'UNNUMBERED MEMORANDUM', 'active'),
(175, '', 'ADDENDUM TO UNNUMBERED MEMORANDUM DATED MARCH 22, 2022 (PRESENTATION PORTFOLIO ASSESSMENT (PPA) FOR ALS ELEMENTARY AND JUNIOR HIGH SCHOOL PROGRAM COMPLETERS OF SY 2021-2022)', 'https://drive.google.com/file/d/1fDtgMvKt0cMSg9GzvnOzEEQ8xlF4HK7o/view?usp=sharing', '0', '2022-04-29', 'UNNUMBERED MEMORANDUM', 'active'),
(176, '', 'CORRECTIONS ON THE EXAMINEES REGIONAL ALLOCATIONS AND REVISIONS ON THE SCHEDULE OF THE ONLINE FOR THE FY2021 NATIONAL QUALIFYING EXAMINATION HEADS (NQESH)', 'https://drive.google.com/file/d/1JK8P9Ss6W_sVQDaJWe2ANuNKxHc9KRHF/view?usp=sharing', '0', '2022-04-28', 'UNNUMBERED MEMORANDUM', 'active'),
(177, '', 'CONSTITUTION OF DIVISION OF CITY SCHOOLS, MANILA SPECIAL BOARD OF ELECTION INSPECTORS (SBEI)', 'https://drive.google.com/file/d/1hf28LctC2q-6u-OqUWbe472iNkP3TQcE/view?usp=sharing', '0', '2022-04-27', 'UNNUMBERED MEMORANDUM', 'active'),
(178, '', 'SEAMEO VOCTECH VIRTUAL REGIONAL TRAINING PROGRAM ON ESTABLISHING, MAINTIAINING AND ENHANCING INTRUCTIONAL PARTNERSHIP SCHOLARSHIP PROGRAM', 'https://drive.google.com/file/d/1H9osOrvlPsPAHrlJ0n8jbzhKJXvmKOBL/view?usp=sharing', '0', '2022-04-27', 'UNNUMBERED MEMORANDUM', 'active'),
(179, '', 'ANNUAL GENERAL ASSEMBLY AND ELECTION OF OFFICES', 'https://drive.google.com/file/d/1jUoWXS7HNkrQSApHuUk8Fz32GxVqkgJ_/view?usp=sharing', '0', '2022-04-26', 'UNNUMBERED MEMORANDUM', 'active'),
(180, '', '2022 SHANGHAI INTERNATIONAL INVENTION AND INNOVATION EXHIBITION WINNERS', 'https://drive.google.com/file/d/18beUOY7zXkvfgGOfyDMdwliF66pbSgsX/view?usp=sharing', '0', '2022-04-25', 'UNNUMBERED MEMORANDUM', 'active'),
(181, '', 'CONDUCT OF AN ONLINE ORIENTATION ON DATA REQUIREMENTS AND DATA GATHERING FORMS FOR SY 2021 - 2022', 'https://drive.google.com/file/d/1rL72EgXpJ3f1qja7FZWJXwMbYBQzxu1H/view?usp=sharing', '0', '2022-04-25', 'UNNUMBERED MEMORANDUM', 'active'),
(182, '', 'VIRTUAL CELEBRATION OF THE 501ST ANNIVERSARY OF THE VICTORY OF MACTAN', 'https://drive.google.com/file/d/1CF5j-1IiBtkGxVAhT-ZYWLnkh8LysIc9/view?usp=sharing', '0', '2022-04-25', 'UNNUMBERED MEMORANDUM', 'active'),
(183, '', 'MONITORING OF ON-SITE WORKFORCE ARRANGEMENTS IN SCHOOLS', 'https://drive.google.com/file/d/1jvUegbVE7D6Y1umpLsUgPHLBkVpifLDS/view?usp=sharing', '0', '2022-04-25', 'UNNUMBERED MEMORANDUM', 'active'),
(184, '', 'CONSULTATIVE STAKEHOLDER PRESENTATION OF THE INITIAL DRAFT OF THE DIVISION EDUCATION DEVELOPMENT PLAN (DEDP) 2022-2028', 'https://drive.google.com/file/d/1zRzsY4ah5ljDD-utFBSzjA_WPFW-E5vS/view?usp=sharing', '0', '2022-04-25', 'UNNUMBERED MEMORANDUM', 'active'),
(185, '', 'ADDITIONAL SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'https://drive.google.com/file/d/1jDT2jISQvzs-cTWAkZchgxJcxG8Qe4Fg/view?usp=sharing', '0', '2022-04-22', 'UNNUMBERED MEMORANDUM', 'active'),
(187, '', 'CONDUCT OF COMPUTER-BASED ENGLISH PROFICIENCY TEST (EPT) 2022 FOR TEACHER-APPLICANTS', 'https://drive.google.com/file/d/1kzxA1dkIbLCrwkUW8QtTWfhku4If_cRm/view?usp=sharing', '0', '2022-04-21', 'UNNUMBERED MEMORANDUM', 'active'),
(188, '', 'CAREER GUIDANCE ORIENTATION ON DOTr-PRI RAILWAYS SECTOR FOR SENIOR HIGH SCHOOL', 'https://drive.google.com/file/d/1L0LQpPfSADjSO8T9z73mK7ZPB_3Vz-Hg/view?usp=sharing', '0', '2022-04-21', 'UNNUMBERED MEMORANDUM', 'active'),
(189, '', 'DEVELOPING ROBOTICS SKILLS AND INNOVATIVE MINDS WEBINAR (PHASE 2)', 'https://drive.google.com/file/d/1-C-To285qRuCE9X6V8xo4ZHIfU287nyn/view?usp=sharing', '0', '2022-04-20', 'UNNUMBERED MEMORANDUM', 'active'),
(190, '', 'ALLOCATION OF FUNDS TO COVER REQUIREMENTS FOR THE IMPLEMENTATION OF PROGRESSIVE EXPANSION OF FACE-TO-FACE LEARNING MODALITY', 'https://drive.google.com/file/d/1vb7JBuHkK1QSmaKx2_HQT-kZjfa01xLe/view?usp=sharing', '0', '2022-04-19', 'UNNUMBERED MEMORANDUM', 'active'),
(191, '', 'PULSE OF THE YOUTH: THE NATIONAL VOTER\'S EDUCATION CAMPAIGN FOR THE 2022 ELECTIONS', 'https://drive.google.com/file/d/1Oqo3HOyS9_Uq0rkojS0F6J8Fp2J7GT8I/view?usp=sharing', '0', '2022-04-18', 'UNNUMBERED MEMORANDUM', 'active'),
(192, '', 'CONDUCT OF PRE-EVALUATION OF DOCUMENTS OF TEACHER I APPLICANTS AND POST-EVALUATION ASSEMBLIES FOR THE ASSESSMENT OF SCREENING PROCESS', 'https://drive.google.com/file/d/1zfctFRjD9Dh3OstfKcwDuDQ_kk4htoDT/view?usp=sharing', '0', '2022-04-18', 'UNNUMBERED MEMORANDUM', 'active'),
(193, '', 'DUTIES AND FUNCTIONS OF ADMINISTRATIVE OFFICER II, ADMINISTRATIVE OFFICER I (SUPPLY OFFICER I AND CASHIER I), AND ADMINISTRATIVE ASSISTANTS III AND II NONTEACHING PERSONNEL', 'https://drive.google.com/file/d/1ZEr3UvFiqzUPLBw5_dD6quTT5ZiW90VB/view?usp=sharing', '0', '2022-04-12', 'UNNUMBERED MEMORANDUM', 'active'),
(194, '', 'ADDITIONAL SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'https://drive.google.com/file/d/1_di8pwSKeLtluUZuzL05IKC1Pcb7qB67/view?usp=sharing', '0', '2022-04-12', 'UNNUMBERED MEMORANDUM', 'active'),
(195, '', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF MID YEAR BONUS FY 2022', 'https://drive.google.com/file/d/14-zZmT5zyapRffhWz5dJzUkDXSTbI-pQ/view?usp=sharing', '0', '2022-04-11', 'UNNUMBERED MEMORANDUM', 'active'),
(196, '', 'CONDUCT OF ORIENTATION ON THE NATIONAL SCHOOL BUILDING INVENTORY (NSBI) CY 2021-2022', 'https://drive.google.com/file/d/1StgP2eWJobW_3rez8780QDkQLm4eoiXW/view?usp=sharing', '0', '2022-04-08', 'UNNUMBERED MEMORANDUM', 'active'),
(197, '', 'REVISED DATE OF SUBMISSION OF ABSTRACT OF ABSENCES AND ELECTRONIC FORM 7', 'https://drive.google.com/file/d/1h_GuB-dB3QwfOOwgL6Ewh6ptvb-B6bxH/view?usp=sharing', '0', '2022-04-07', 'UNNUMBERED MEMORANDUM', 'active'),
(198, '', 'REGIONAL OFFICE ANTI-CORRUPTION COMMITTEE', 'https://drive.google.com/file/d/1Rq4AVBPz60IniDraaWmp8oFFfkBKY84r/view?usp=sharing', '0', '2022-04-06', 'UNNUMBERED MEMORANDUM', 'active'),
(199, '', 'COMPOSITION OF THE SCHOOLS DIVISION OFFICE OF MANILA ANTI-CORRUPTION COMMITTEE (SDO-MANILA ACC)', 'https://drive.google.com/file/d/1vvVqQeB9OdxiIv1TClesGF88WtABIPhv/view?usp=sharing', '0', '2022-04-06', 'UNNUMBERED MEMORANDUM', 'active'),
(200, '', 'ANNUAL PHYSICAL HEALTH EXAMINATION FOR SCHOOL-BASED EMPLOYEES IN THE SCHOOLS DIVISION OF MANILA', 'https://drive.google.com/file/d/151EhsPaR3d9DWvKms13Do9uATn1B6ZbL/view?usp=sharing', '0', '2022-04-06', 'UNNUMBERED MEMORANDUM', 'active'),
(201, '', 'DIVISION INTERNAL AUDIT LEAD (DIAL) UPDATES', 'https://drive.google.com/file/d/1s6MLw8Fgj8KUyjF83tXSBqk7SJQCIjjd/view?usp=sharing', '0', '2022-04-04', 'UNNUMBERED MEMORANDUM', 'active'),
(202, '', 'ADDENDUM TO UNNUMBERED MEMORANDUM DATED OCTOBER 27, 2021 (GUIDELINES IN THE CONDUCT OF TEACHING DEMONSTRATIONS)', 'https://drive.google.com/file/d/1znbBu8V8d3gnxYI2ksFxE1tbhMJ5OtVX/view?usp=sharing', '0', '2022-04-04', 'UNNUMBERED MEMORANDUM', 'active'),
(203, '', 'CONDUCT OF THE ONLINE WEBINAR ON CONTAINER GARDENING AND PLANT-BASED RECIPES', 'https://drive.google.com/file/d/1CeJMpAWYoMg0zTBre8Ez3EQ8OHVZCIRq/view?usp=sharing', '0', '2022-04-04', 'UNNUMBERED MEMORANDUM', 'active'),
(204, '', 'BARKADA KONTRA DROGA (BKD) MANILA CHAPTER - ESTABLISHMENT, VIRTUAL ORIENTATION AND ELECTION OF OFFICERS FOR SY 2021-2022', 'https://drive.google.com/file/d/15mpwKZO08nMDOTaqTDd_uqndqyv0qsfN/view?usp=sharing', '0', '2022-04-01', 'UNNUMBERED MEMORANDUM', 'active'),
(205, '', 'CAPABILITY BUILDING FOR SLRMDC COORDINATORS ON SOCIAL CONTENT AND TECHNICAL SPECIFICATIONS', 'https://drive.google.com/file/d/17FwuavD115VBrRdd-lT-JtWIeZvd8Hh0/view?usp=sharing', '0', '2022-03-29', 'UNNUMBERED MEMORANDUM', 'active'),
(206, '', 'CONDUCT OF Q3 ASSESSMENT FOR SELECTED LEARNERS IN ALL GRADE LEVELS ACROSS LEARNING AREAS', 'https://drive.google.com/file/d/1bVdOvMXyKPAk29Ni2VmzH9vOjQsYZGeJ/view?usp=sharing', '0', '2022-03-29', 'UNNUMBERED MEMORANDUM', 'active'),
(207, '', 'ADDITIONAL CONTEST FOR THE 80TH ARAW NG KAGITINGAN AND PHILIPPINE VETERANS WEEK', 'https://drive.google.com/file/d/1tIwD6xb0b7OUn8508V7scBsR4cc4nTKc/view?usp=sharing', '0', '2022-03-29', 'UNNUMBERED MEMORANDUM', 'active'),
(208, '', 'WEBINAR ON THE READING INTERVENTION FOR PARENTS AND MONITORING SUPERVISORS (WORKSHOP PHASE)', 'https://drive.google.com/file/d/165wRIQMKn_CYusTtyR3cYJjzQ4r4_VpE/view?usp=sharing', '0', '2022-03-29', 'UNNUMBERED MEMORANDUM', 'active'),
(209, '', 'ANNUAL PHYSICAL EXAMINATION (LABORATORY) OF REGULAR EMPLOYEES OF THE CITY GOVERMENT', 'https://drive.google.com/file/d/1aLrXLdztdFyJ4QLzAJseZRcLPhQ-5eIj/view?usp=sharing', '0', '2022-03-28', 'UNNUMBERED MEMORANDUM', 'active'),
(210, '', 'SCHEDULE OF THE ANNUAL PHYSICAL EXAMINATION OF THE ACTIVE CASE FINDING (CHEST X-RAY)', 'https://drive.google.com/file/d/1BBOOW0bM4EGl6fa4tATUmg2dw82ABUN9/view?usp=sharing', '0', '2022-03-28', 'UNNUMBERED MEMORANDUM', 'active'),
(211, '', 'ADDENDUM AND CHANGES TO DIVISON UNNUMBERED MEMORANDUM DATED MARCH 10,2022 FUSTAL BUBBLE COMPETITION FOR SECONDARY GIRLS(PILOT TESTING)', 'https://drive.google.com/file/d/1nGknuK_dZ5m_g0nzXKkKFfLXsO9r7Yd9/view?usp=sharing', '0', '2022-03-28', 'UNNUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(212, '', 'CAPACITY BUILDING FOR SENIOR HIGHSCHOOL TEACHERS ON ASSESSMENT', 'https://drive.google.com/file/d/1qNRgH9sTkII0EqSFtTPOBRUNSiXViIut/view?usp=sharing', '0', '2022-03-28', 'UNNUMBERED MEMORANDUM', 'active'),
(213, '', 'CONTINUATION OF THE CONDUCT OF ONE HEALTH CHECK-UP DAY IN THE EXPANDED FACE-TO-FACE MODALITY', 'https://drive.google.com/file/d/1b7OcwUd3Z45caDEvgknfHgPCxrfkktZc/view?usp=sharing', '0', '2022-03-24', 'UNNUMBERED MEMORANDUM', 'active'),
(214, '', 'HIRING OF TEACHER I FOR THE SCHOOL YEAR 2022-2023', 'https://drive.google.com/file/d/1cexMMRDfxmdRHc1voG-cd-jIfEaFhQ-M/view?usp=sharing', '0', '2022-03-24', 'UNNUMBERED MEMORANDUM', 'active'),
(215, '', 'WINNERS IN THE DIVISION POSTER MAKING AND INFOGRAPHIC MAKING CONTESTS', 'https://drive.google.com/file/d/1rj18-87Y_xvDg5vrcU1WFBPsYXr6X0bN/view?usp=sharing', '0', '2022-03-23', 'UNNUMBERED MEMORANDUM', 'active'),
(216, '', 'SCHOLARSHIP INVITATION FROM JAPAN INTERNATIONAL COOPERATION AGENCY (JICA)', 'https://drive.google.com/file/d/1MMb66MjCSjhkdQTC4Zf1YxWFYYjI5nO2/view?usp=sharing', '0', '2022-03-23', 'UNNUMBERED MEMORANDUM', 'active'),
(217, '', 'PRESENTATION PORFOLIO ASSESSMENT (PPA) FOR ALS ELEMENTARY AND JUNIOR HIGH SCHOOL PROGRAM COMPLETERS OF SY 2021-2022 AND PREVIOUS YEARS ', 'https://drive.google.com/file/d/1xMj8-49JlLRF25cBS61mQmc8mYd6gSNU/view?usp=sharing', '0', '2022-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(218, '', 'BIDYOBAYANI PLANNING WORKSHOP', 'https://drive.google.com/file/d/1VsxXcFtPob1x6TAPQDhnAeCgmcbf7tsd/view?usp=sharing', '0', '2022-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(219, '', 'IMPLEMENTATION OF THE DEPED GUIDELINESS ON GALAW PILIPINAS: THE DEPED NATIONAL CALISTHENICS EXCERCISE PROGRAM', 'https://drive.google.com/file/d/1y75jq2v7dn6ATzir9kpHmErdO33BE5XK/view?usp=sharing', '0', '2022-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(220, '', 'AP3 QUARTER 4, WEEK 6 AND WEEK 7 VIDEO SHOOT', 'https://drive.google.com/file/d/107zqEBMgg35MgCa4-I4vOin6uaOfY6ZE/view?usp=sharing', '0', '2022-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(221, '', 'ADDENDUM AND CORRIGENDUM TO UNNUMBERED DIVISION MEMORANDUM DATED MARCH 4,2022 (WINNERS IN THE DEPED ETULAY NATIONAL ART MONTH)', 'https://drive.google.com/file/d/1tTxV8fxMBB1YrcSaT-d43V-bTMitFKeu/view?usp=sharing', '0', '2022-03-21', 'UNNUMBERED MEMORANDUM', 'active'),
(222, '', '2022 FIRST QUARTER VIRTUAL CEREMONIAL SIGNING OF MEMORANDUM OF AGREEMENT/UNDERSTANDING BETWEEN DEPED MANILA AND PRIVATE PARTNERS', 'https://drive.google.com/file/d/1s_iC52wvmm4WD10jdYBSB6_jWHDRVbBq/view?usp=sharing', '0', '2022-03-21', 'UNNUMBERED MEMORANDUM', 'active'),
(223, '', 'MAPEH HEAD TEACHERS ASSOCIATION NEW SET OF OFFICERS FOR SCHOOL YEARS 2021-2022 AND 2022-2023', 'https://drive.google.com/file/d/1RW4LsoOTRmTG89f-A-7QICzeraxzWx4l/view?usp=sharing', '0', '2022-03-21', 'UNNUMBERED MEMORANDUM', 'active'),
(224, '', 'CALL FOR ACTION AND BASIC RESEARCHES AND INNOVATIVE PROGRAMS/PROJECTS', 'https://drive.google.com/file/d/1d6eORwMLtf5qiNwr7m5jRe8tSpqEf9vf/view?usp=sharing', '0', '2022-03-17', 'UNNUMBERED MEMORANDUM', 'active'),
(225, '', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OFCLOTHING ALLOWANCE FY 2022', 'https://drive.google.com/file/d/1u0QcNRS6XrPUxSq5uL8I4gOUI527p_DZ/view?usp=sharing', '0', '2022-03-17', 'UNNUMBERED MEMORANDUM', 'active'),
(226, '', 'CAPACITY BUILDING FOR ADMINISTRATIVE OFFICERS II ON EQUIVALENT RECORD FORMS(ERF\'s) EVALUATION/RECLASSIFICATION OF POSITIONS AND ASSETS MANAGEMENT', 'https://drive.google.com/file/d/1yiMXUhpTQZ3Eqz7RE24GhywmLOXwVvSq/view?usp=sharing', '0', '2022-03-15', 'UNNUMBERED MEMORANDUM', 'active'),
(227, '', 'NATIONAL HERITAGE MONTH 2022', 'https://drive.google.com/file/d/1_BYLiiYyq-422r-fGaIpnLSZQMggd3aE/view?usp=sharing', '0', '2022-03-15', 'UNNUMBERED MEMORANDUM', 'active'),
(228, '', 'WORKSHOP ON THE DEVELOPEMENT AND VALIDATION OF A LOCALIZED AND CONTEXTUALIZED READING PROFICIENCY PROGRAM ASSESSMENT TOOL IN  ENGLISH AND FILIPINO', 'https://drive.google.com/file/d/1vQxyStD9RYkohNyMM8E1Tg1flkfpa3Sx/view?usp=sharing', '0', '2022-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(229, '', 'THREE-DAY TRAINING WORKSHOP ON PROJECT LR-LENSES', 'https://drive.google.com/file/d/1Do_AglWpaX0BtxYdOOwAtYALjDpSvMJG/view?usp=sharing', '0', '2022-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(230, '', 'TINIG NI GURO KAALAMAN KO PROJECT', 'https://drive.google.com/file/d/1iI7t05ZXy7xQYgh5a9tj3zS737uX06wN/view?usp=sharing', '0', '2022-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(231, '', 'STAKEHOLDERS CONSULTATION FOR PROGRESSIVE EXPANSION OF FACE-TO-FACE CLASSES', 'https://drive.google.com/file/d/1NsaKH9csFRIDVKDpV5cj2KtSiz8Dr4NK/view?usp=sharing', '0', '2022-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(232, '', 'BARKADA KONTRA DROGA (BKD) MANILA CHAPTER - ESTABLISHMENT, VIRTUAL ORIENTATION AND ELECTION OF OFFICERS FOR SY 2021-2022', 'https://drive.google.com/file/d/1X5HQk2oR09rbeJs9pH2XVu-G2QsWlqhq/view?usp=sharing', '0', '2022-03-10', 'UNNUMBERED MEMORANDUM', 'active'),
(233, '', 'FUTSAL BUBBLE COMPETITION FOR SECONDARY GIRLS (PILOT TESTING)', 'https://drive.google.com/file/d/1to8z0OL-we8CxxcfqIVvM-AxGH27o6hd/view?usp=sharing', '0', '2022-03-10', 'UNNUMBERED MEMORANDUM', 'active'),
(234, '', 'RETOOLING THE MASTER TEACHERS\' INSTRUCTIONAL SKILLS', 'https://drive.google.com/file/d/1RUPKrEma8PxZQtr9peAXjr0cvjx7ZZ6D/view?usp=sharing', '0', '2022-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(235, '', 'REASSIGNMENT OF ELEMENTARY SCHOOL NURSES', 'https://drive.google.com/file/d/1zvYFMuJcQttyBdzGRi7BVTqs7zk2iu26/view?usp=sharing', '0', '2022-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(236, '', 'CHANGES IN SDO MANILAS\'S LOAN VERIFIERS', 'https://drive.google.com/file/d/1ghAzd365dBpRJS9DMptWeOHxQXznSAHD/view?usp=sharing', '0', '2022-03-07', 'UNNUMBERED MEMORANDUM', 'active'),
(237, '', 'RECOLLECTING, RECHARGING AND REJOICING: CID PERSONNEL\'S HOLISTIC ACTIVITY', 'https://drive.google.com/file/d/1M3WnQYxdnDRAOuWXSFeEHAwBOYyoLZa2/view?usp=sharing', '0', '2022-03-07', 'UNNUMBERED MEMORANDUM', 'active'),
(238, '', '3-DAY BASIC LIFE SUPPORT TRAINING FOR SCHOOL DRRM COORDINATORS AND SDO PERSONNEL', 'https://drive.google.com/file/d/1E37_wuEqhBx3Z3N-9DKkW9xraYSMwP01/view?usp=sharing', '0', '2022-03-07', 'UNNUMBERED MEMORANDUM', 'active'),
(239, '', '2021 DIVISION YES-O ECOFESTIVAL WINNERS', 'https://drive.google.com/file/d/1GBGGkpT0KForg5q_Cnl_rXQi7xRTIjHv/view?usp=sharing', '0', '2022-03-04', 'UNNUMBERED MEMORANDUM', 'active'),
(240, '', 'ELECTED OFFICERS OF THE YES-O MYLE (MANILA YOUTH LEADERS FOR THE ENVIRONMENT) FOR SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1nduY9AEwX9PenF-LEeGwed_7N6cyIt7C/view?usp=sharing', '0', '2022-03-04', 'UNNUMBERED MEMORANDUM', 'active'),
(241, '', 'WINNERS OF THE DEPED ETULAY NATIONAL ARTS MONTH', 'https://drive.google.com/file/d/1GfQc0r5wQThVsaYR5o2zROF_aeEuxVbK/view?usp=sharing', '0', '2022-03-04', 'UNNUMBERED MEMORANDUM', 'active'),
(242, '', 'DIVISION COMPOSITE TEAM OF TECHNICAL ASSISTANCE FOR LEARNERS AT-RISK OF DROPPING-OUT (TALA)', 'https://drive.google.com/file/d/1xy8VdJFEqpl71gp4166Fxq7g3puBlQhj/view?usp=sharing', '0', '2022-03-03', 'UNNUMBERED MEMORANDUM', 'active'),
(243, '', 'MICROSOFT YOUTH AMBASSADORS (MYA) PROGRAM SCHEDULE OF ACTIVITIES', 'https://drive.google.com/file/d/1IrfagIC524xEuQudO14Gwc4CjIoDzPno/view?usp=sharing', '0', '2022-03-03', 'UNNUMBERED MEMORANDUM', 'active'),
(244, '', 'ORIENTATION ON SMASHED PHILIPPINES: AN ALCOHOL EDUCATION TO EMPOWER THE YOUTH', 'https://drive.google.com/file/d/1TIzYasuFa13z2FlKjW_y4RXfHIRouEPt/view?usp=sharing', '0', '2022-03-03', 'UNNUMBERED MEMORANDUM', 'active'),
(245, '', 'IMPLEMENTATION OF VARIOUS PROFESSIONAL DEVELOPMENT (PD) FOR SCHOOL LEADERS IN PARTNERSHIP WITH SEAMEO INNOTECH', 'https://drive.google.com/file/d/1kHNN__99IGwa1S0YBvIAtO4KCC-VCV4d/view?usp=sharing', '0', '2022-03-03', 'UNNUMBERED MEMORANDUM', 'active'),
(246, '', 'REITERATION OF PARTICIPATION TO THE 2022 1ST QUARTER NATIONWIDE SIMIULTANEOUS EARTHQUAKE DRILL (NSED) ACTIVITIES', 'https://drive.google.com/file/d/1D1zJioHJ3UrWovF5uXWMuQSDHqYDIhMb/view?usp=sharing', '0', '2022-03-02', 'UNNUMBERED MEMORANDUM', 'active'),
(247, '', 'PARTICIPATION TO THE THREE-DAY TRAINING WORKSHOP ON THE PREPARATION OF THE REGIONAL BASIC EDUCATION PLAN AND DIVISION EDUCATION DEVELOPMENT PLAN (DEDP) PHASE 2: RBEP/DEDP FORMULATION', 'https://drive.google.com/file/d/1V0BQKfneDj_lbrMycby7zqhJiFgomAH1/view?usp=sharing', '0', '2022-02-28', 'UNNUMBERED MEMORANDUM', 'active'),
(248, '', '4TH LIVE WEBINAR ON CONTINUING DENTAL EDUCATION', 'https://drive.google.com/file/d/1Ck86hXJJMXEconCQT3Z9t_CIaszNZW6z/view?usp=sharing', '0', '2022-02-23', 'UNNUMBERED MEMORANDUM', 'active'),
(249, '', 'CSC SEARCH FOR OUTSTANDING GOVERNMENT WORKERS 2022', 'https://drive.google.com/file/d/1UrErHDOCGcRqbxmlMvHiKqwnqiOGVgqc/view?usp=sharing', '0', '2022-02-23', 'UNNUMBERED MEMORANDUM', 'active'),
(250, '', 'DIVISION REGISTRATION FOR CIVIL SERVICE PENCIL AND PAPER TEST FOR THE NONTEACHING  PERSONNEL', 'https://drive.google.com/file/d/1nV91yMpZiOtq1LTC3vWzSMWCRttZ6RCo/view?usp=sharing', '0', '2022-02-23', 'UNNUMBERED MEMORANDUM', 'active'),
(251, '', 'CONDUCT OF INTERVIEW FOR CANDIDATES FOR SENIOR HIGH SCHOOL ADMINISTRATIVE OFFICER II, REGISTRAR I, AND ADMINISTRATIVE ASSISTANT II', 'https://drive.google.com/file/d/1NfRdi0wvd_ifDvoMxnPQGfvjAq2TJG6R/view?usp=sharing', '0', '2022-02-23', 'UNNUMBERED MEMORANDUM', 'active'),
(252, '', 'REITERATION OF REGIONAL MEMORANDUM NO. NCR-089, S. 2022 (ADDENDUM TO REGIONAL MEMORANDUM NO. NCR-063, S. 2022 \"CONDUCT OF ONE HEALTH CHECK-UP DAY IN THE SCHOOL WITH LIMITED FACE TO FACE MODALITY\")', 'https://drive.google.com/file/d/1m5SmxAOaxxUei9rDlSeD-sxXuTLChh-9/view?usp=sharing', '0', '2022-02-22', 'UNNUMBERED MEMORANDUM', 'active'),
(253, '', '2022 DR. GOH KENG SWEE (GKS) SCHOLARSHIP', 'https://drive.google.com/file/d/1MhNLNw8w4GhfRyNDbUuviDVL1EXhdZaj/view?usp=sharing', '0', '2022-02-21', 'UNNUMBERED MEMORANDUM', 'active'),
(254, '', 'IMPLEMENTATION OF THE TWINNING SYSTEM FOR THE DIVISIONS AFFECTED BY TYPHOON ODETTE', 'https://drive.google.com/file/d/1din8zsXfdfk7v1dQTVM7twE4XjwSUj3F/view?usp=sharing', '0', '2022-02-21', 'UNNUMBERED MEMORANDUM', 'active'),
(255, '', 'VIRTUAL CELEBRATION OF THE 36TH ANNIVERSARY OF THE PEOPLE POWER REVOLUTION', 'https://drive.google.com/file/d/1K1w1h4KTvu2uXBd7cWYv_dbGZ166wGx7/view?usp=sharing', '0', '2022-02-21', 'UNNUMBERED MEMORANDUM', 'active'),
(256, '', 'REITERATION OF UNNUMBERED MEMORANDUM DATED JANUARY 19, 2022 (RENEWAL OF PROFESSIONAL LICENSE OF TEACHERS)', 'https://drive.google.com/file/d/1H7jkuHDoqH0rqAApErKnSZ23snVX92rh/view?usp=sharing', '0', '2022-02-21', 'UNNUMBERED MEMORANDUM', 'active'),
(257, '', 'JUNIOR HIGH SCHOOLS WRITESHOP ON DEVELOPING INFORMATIVE AND NON-LINEAR TEXTS TYPE OF READING TESTS IN ENGLISH', 'https://drive.google.com/file/d/1t67hznQQ0VbNST_43NMJzCWLcm2QNnSJ/view?usp=sharing', '0', '2022-02-21', 'UNNUMBERED MEMORANDUM', 'active'),
(258, '', 'TECHNICAL ASSISTANCE FOR LEARNERS AT-RISK OF DROPPING OUT (TALA)', 'https://drive.google.com/file/d/1WyUjRUbFa57avs1UNKX6nikJiHxnt4lN/view?usp=sharing', '0', '2022-02-18', 'UNNUMBERED MEMORANDUM', 'active'),
(259, '', 'REGIONAL VIRTUAL ORIENTATION AND TECHNICAL ASSISTANCE ON SY 2021-2022 RPMS-PPST', 'https://drive.google.com/file/d/1-BGu3SbLNAP9YQWsP-MhYnXIUzF_LAXv/view?usp=sharing', '0', '2022-02-18', 'UNNUMBERED MEMORANDUM', 'active'),
(260, '', 'REITERATION OF DEPED MEMO NO. 609, S. 2022 AND AIDE MEMOIRE DATED FEBRUARY 16, 2022 ON COVID - 19 VACCINATION PROTOCOLS FOR NON-SITE REPORTING OF TEACHING AND NON-TEACHING PERSONNEL OF THE DEPARTMENT ', 'https://drive.google.com/file/d/1u9pegZ9i6iP0yKOIMdVHzi1VjLrseuH0/view?usp=sharing', '0', '2022-02-18', 'UNNUMBERED MEMORANDUM', 'active'),
(261, '', 'INVITATION TO PARTICIPATE IN A VIRTUAL FLAG CEREMONY', 'https://drive.google.com/file/d/1NPvwhisFj4yNoiGffzRXGrRO090LE3XB/view?usp=sharing', '0', '2022-02-18', 'UNNUMBERED MEMORANDUM', 'active'),
(262, '', '2021 ELEMENTARY SCIENCE FAIR CONTEST WINNERS', 'https://drive.google.com/file/d/1a0UUFh8Mba8EqN0MnGmMZXsOcbIlB4jn/view?usp=sharing', '0', '2022-02-17', 'UNNUMBERED MEMORANDUM', 'active'),
(263, '', 'COLLABORATIVE WEBINAR ON NATIONAL DRUG EDUCATION PROGRAM, SCHOOL MENTAL HEALTH PROGRAM AND ADOLESCENT REPRODUCTIVE HEALTH PROGRAM', 'https://drive.google.com/file/d/1GpU1-vmIX-bj42v7ZQYK0AEfKwyocBC5/view?usp=sharing', '0', '2022-02-16', 'UNNUMBERED MEMORANDUM', 'active'),
(264, '', 'CONDUCT OF MEETING ON THE BASIC EDUCATION FACILITIES FUND (BEFF) REPAIR AND REHABILITATION OF CLASSROOMS UNDER CY 2021', 'https://drive.google.com/file/d/1ipkuCUsY7g11CyVhrobHpid5JgVhhI9l/view?usp=sharing', '0', '2022-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(265, '', 'NCR SOLAR TV LESSON SCRIPTWRITERS FOR GRADE 1', 'https://drive.google.com/file/d/1Kk2meTkoue_YyL9ko3M4i-3Y814my_K0/view?usp=sharing', '0', '2022-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(266, '', '2021 WORLD INTERNATIONAL MATHEMATICAL OLYMPIAD (WIMO) FINAL ROUND CHAMPIONS', 'https://drive.google.com/file/d/1nPfVI8p8IrdeJ3hyBanSQ6oA4KRbXG8c/view?usp=sharing', '0', '2022-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(267, '', 'REGIONAL MATH TRIVIA AND MATH QUIZ', 'https://drive.google.com/file/d/1nco61lEAYW6apRFe8320r0TeeYra0cEm/view?usp=sharing', '0', '2022-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(268, '', 'EXEMPLARY LEAGUE OF INNOVATIVE TEACHERS-EDUCATORS (ELITE) BATCH AGUILA SERVICE PLATFORM PRESENTATION', 'https://drive.google.com/file/d/1AdvXeIOIYNHmL3ZtuRXArWi_uRj-NPF_/view?usp=sharing', '0', '2022-02-14', 'UNNUMBERED MEMORANDUM', 'active'),
(269, '', 'SUBMISSION OF REPORTS FOR YOUTH FORMATION RELATED PROGRAMS IN THE SCHOOLS', 'https://drive.google.com/file/d/1ets4jDtLoql3BjpkL2BHLrMQUJsp8u2S/view?usp=sharing', '0', '2022-02-14', 'UNNUMBERED MEMORANDUM', 'active'),
(270, '', 'SURVEY OF DIVISION INTERNAL AND EXTERNAL SERVICES FOR CITIZEN\'S CHARTER AND MONITORING TOOL DEVELOPMENT', 'https://drive.google.com/file/d/12AP92rDPINlTKdQCkF508jxh3q2Qe1Kk/view?usp=sharing', '0', '2022-02-10', 'UNNUMBERED MEMORANDUM', 'active'),
(271, '', 'SCHEDULE OF THE CONDUCT OF ONE HEALTH CHECK-UP DAY IN THE SCHOOLS WITH LIMITED FACE-TO-FACE MODALITY', 'https://drive.google.com/file/d/1Sb9y6jKLMbH8Xar48-EHekauApRNkgTW/view?usp=sharing', '0', '2022-02-10', 'UNNUMBERED MEMORANDUM', 'active'),
(272, '', 'TEACHER-ADVISER TRAINING COURSE AND STUDENT LEADER DEVELOPMENT PROGRAM', 'https://drive.google.com/file/d/1-ZhbbCWoivkY3X9CttB2bVXc9VM2ECzf/view?usp=sharing', '0', '2022-02-10', 'UNNUMBERED MEMORANDUM', 'active'),
(273, '', 'CONDUCT OF ONE HEALTH CHECK-UP DAY IN THE SCHOOLS WITH LIMITED FACE-TO-FACE MODALITY', 'https://drive.google.com/file/d/1QgSqAYQZWfjNwkLDWZDwfTMVQ24g_ohV/view?usp=sharing', '0', '2022-02-10', 'UNNUMBERED MEMORANDUM', 'active'),
(274, '', 'WRITESHOP ON THE CRAFTING OF QUARTER 3 ASSESSMENT IN ALL LEARNING AREAS', 'https://drive.google.com/file/d/17moARL2KvnkmUW-mp2n7hMW0ycDbU3Yr/view?usp=sharing', '0', '2022-02-07', 'UNNUMBERED MEMORANDUM', 'active'),
(275, '', 'UNLOCK LITERACY TRAINING IN PARTNERSHIP WITH THE WORLD VISION FOUNDATION, INC.', 'https://drive.google.com/file/d/1OIPktME0mdSsu0JpnESOvXgSxqCzFOe7/view?usp=sharing', '0', '2022-02-04', 'UNNUMBERED MEMORANDUM', 'active'),
(276, '', 'REQUEST FOR DATA ON CHILD PROTECTION COMMITTEES IN SCHOOLS', 'https://drive.google.com/file/d/1IpdMGk_e6ywk6uZZ2TO9kQr6bXnLpgPR/view?usp=sharing', '0', '2022-02-04', 'UNNUMBERED MEMORANDUM', 'active'),
(277, '', 'QUARTER 3 AND QUARTER 4 TV LESSON PRODUCTION', 'https://drive.google.com/file/d/19RO4ZWhwrd5KoA74UM30QBCksWQus55C/view?usp=sharing', '0', '2022-02-04', 'UNNUMBERED MEMORANDUM', 'active'),
(278, '', 'CONDUCT OF INTERVIEW AND APPRAISAL OF DOCUMENTS FOR CANDIDATES FOR HEAD TEACHER VI, HEAD TEACHER III AND HEAD TEACHER I POSITIONS', 'https://drive.google.com/file/d/1HbUHi3LRXJUVyvtly0s1JEneGonBV14W/view?usp=sharing', '0', '2022-02-03', 'UNNUMBERED MEMORANDUM', 'active'),
(279, '', '2021 DIVISION AND DISTRICT WINNERS IN THE SCIENCE POSTER MAKING CONTEST', 'https://drive.google.com/file/d/1mwd8XjcvdKcAglHJ8RG4Bq5DKFrXdobh/view?usp=sharing', '0', '2022-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(280, '', 'NELY D. BAYLON, MT II - REGIONAL WINNER INTHE SEARCH FOR THE BEST INTEGRATION OF FINANCIAL LITERACY KEY CONCEPTS IN SCIENCE AND MATHEMATICS', 'https://drive.google.com/file/d/1yZSAmpjIOXh_b59qc3ZzDvOWIdw3h7tc/view?usp=sharing', '0', '2022-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(281, '', 'CHANGES TO UNNUMBERED MEMORANDUM DATED JANUARY 17, 2022 (ELECTED OFFICERS OF THE MANILA PUBLIC ELEMENTARY SCHOOL LIBRARIANS ASSOCIATION (MAPESLA), AND THE MANILA PUBLIC SECONDARY SCHOOL LIBRARIANS ASS', 'https://drive.google.com/file/d/1vESSWKcUYl-5E71IpjfRpSTYCsw89Jjr/view?usp=sharing', '0', '2022-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(282, '', 'SDO-MANILA RESEARCH WORK PRESENTERS IN THE THEORY OF CONSTRAINTS FOR EDUCATION (TOCFE) SYMPOSIUM', 'https://drive.google.com/file/d/1S0zlinTAEsdSQhLBhj3BGjToKgyLbJlk/view?usp=sharing', '0', '2022-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(283, '', 'PROJECT B.T.S: TECH EPISODES', 'https://drive.google.com/file/d/1u2dGYdQ3Z5lDFPGXQk9C4VvNqYRv1wGP/view?usp=sharing', '0', '2022-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(284, '', 'GRADES III-IV WINNERS IN THE 2021 DISTRICT AND DIVISION SCIENCE QUIZ BEE CONTEST', 'https://drive.google.com/file/d/1W0lIFlnFO597DsyAT5PoTuDBLH_sUcEO/view?usp=sharing', '0', '2022-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(285, '', 'INTEGRATED SCHOOL NUTRITION MODEL (ISNM) ONLINE WORK CONFERENCE', 'https://drive.google.com/file/d/1k0tNtXqVLgvPXw3ZvcQ4CJhvo0bi0VcI/view?usp=sharing', '0', '2022-01-28', 'UNNUMBERED MEMORANDUM', 'active'),
(286, '', 'NATIONAL DENTAL HEALTH MONTH', 'https://drive.google.com/file/d/1VGBWuVqF6l5FII8oVqNJqYCgYH6wERkk/view?usp=sharing', '0', '2022-01-27', 'UNNUMBERED MEMORANDUM', 'active'),
(287, '', 'CORRIGENDUM TO UNNUMBERED MEMORANDUM DATED JANUARY 17, 2022 (LIBRARY DISTRICT COORDINATORS FOR SY 2022-2023)', 'https://drive.google.com/file/d/1fyWgPJLyfvKj5GIbOqS-t34HiN1pEAtb/view?usp=sharing', '0', '2022-01-27', 'UNNUMBERED MEMORANDUM', 'active'),
(288, '', 'EJECTED OFFICERS OF THE MANILA SECONDARY SCIENCE CLUB ADVISERS ASSOCIATION (MSSCAA) FOR SY 2021-2023', 'https://drive.google.com/file/d/14bAkUrgGPmBm36BroyvG_YZyoUksgYn5/view?usp=sharing', '0', '2022-01-25', 'UNNUMBERED MEMORANDUM', 'active'),
(289, '', 'DEVELOPMENT OF LOCALIZED INSTRUCTIONAL MATERIALS IN AP3 (ILANG MAKASAYSAYANG LUGAR SA LUNGSOD NG MAYNILA)', 'https://drive.google.com/file/d/1sclDnq5Z9OYUoDD4gZhOE3MxmscesIBs/view?usp=sharing', '0', '2022-01-24', 'UNNUMBERED MEMORANDUM', 'active'),
(290, '', 'MENTAL HEALTH WEBINAR SERIES FOR TEACHERS', 'https://drive.google.com/file/d/13gvACbb3U2hd-YBH4TGOxtx-Xt51wv16/view?usp=sharing', '0', '2022-01-24', 'UNNUMBERED MEMORANDUM', 'active'),
(291, '', '2021 DIVISION AND DISTRICT WINNERS IN THE SCIENCE INFOGRAPHICS CONTEST', 'https://drive.google.com/file/d/10JKFVqJK3RgqCH4Ae9lAaRQEzO3v6ntP/view?usp=sharing', '0', '2022-01-22', 'UNNUMBERED MEMORANDUM', 'active'),
(292, '', 'DESIGNATION OF MS. ALMA A. BACULI, STATE AUDITOR IV, AS OIC/AUDITOR OF DCS-MANILA', 'https://drive.google.com/file/d/1hGqBVt8lM_K9adVqpNqvumTypn2cDr_m/view?usp=sharing', '0', '2022-01-21', 'UNNUMBERED MEMORANDUM', 'active'),
(293, '', 'SEAMEO VOCTECH SCHOLARSHIP OFFERING FOR THE VIRTUAL REGIONAL TRAINING PROGRAM ON EQUIPPING TVET PERSONNEL WITH QUANTITATIVE RESEARCH METHODS', 'https://drive.google.com/file/d/1EQZw33FIzyBjMZK4GiS9AisboL-XNt6q/view?usp=sharing', '0', '2022-01-20', 'UNNUMBERED MEMORANDUM', 'active'),
(294, '', 'ADJUSTED BUDGET OF WORK FOR WEEKS 7 AND 8 OF QUARTER 2', 'https://drive.google.com/file/d/1Kj1K3ZGKJ0-Eje3PslqI7V09o8wvET72/view?usp=sharing', '0', '2022-01-20', 'UNNUMBERED MEMORANDUM', 'active'),
(295, '', 'RENEWAL OF PROFESSIONAL LICENSE OFTEACHERS', 'https://drive.google.com/file/d/1uuOc_CiC_52FaXvCRYIqI1_edBr2VoEk/view?usp=sharing', '0', '2022-01-19', 'UNNUMBERED MEMORANDUM', 'active'),
(296, '', 'LIBRARY DISTRICT COORDINATORS FOR SY 2022-2023', 'https://drive.google.com/file/d/1Lq6LnqvCRz7aeZO_2TfHfvKX896_wG-N/view?usp=sharing', '0', '2022-01-17', 'UNNUMBERED MEMORANDUM', 'active'),
(297, '', 'ELECTED OFFICERS OF THE MANILA PUBLIC ELEMENTARY SCHOOL LIBRARIANS ASSOCIATION (MAPESLA) AND THE MANILA PUBLIC SECONDARY SCHOOL LIBRARIANS ASSOCIATION (MPSSLA) FOR S.Y. 2022-2024', 'https://drive.google.com/file/d/15Woaid07mqu131ndhwbhPzVUCrIDMazR/view?usp=sharing', '0', '2022-01-17', 'UNNUMBERED MEMORANDUM', 'active'),
(298, '', 'RECONSTITUTION OF THE REGIONAL, DIVISION AND SCHOOL LEVELS GENDER AND DEVELOPMENT (GAD) FOCAL POINT SYSTEM (GFPS)', 'https://drive.google.com/file/d/1qrGRKMkIaI6KTNx-7g-Fx3lSHINrmc6C/view?usp=sharing', '0', '2022-01-14', 'UNNUMBERED MEMORANDUM', 'active'),
(299, '', 'BRIGADA PAGBASA PROGRAM ORIENTATION AND SCHOOL PLANNING DIRECTION SESSION', 'https://drive.google.com/file/d/1f-8pFoV8hJ_8DHt48aPj7MnX3IhkBH9O/view?usp=sharing', '0', '2022-01-13', 'UNNUMBERED MEMORANDUM', 'active'),
(300, '', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF TAX REFUND CY 2021', 'https://drive.google.com/file/d/1Zksh3uSWrIeGiB42WwlDTe0Q4NKhg-uM/view?usp=sharing', '0', '2022-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(301, '', 'ADDITIONAL SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'https://drive.google.com/file/d/1hMnPNfFSCidn0Ek2Dm7uNp84NbHAa2As/view?usp=sharing', '0', '2022-01-06', 'UNNUMBERED MEMORANDUM', 'active'),
(302, '', 'WINNERS IN THE ONLINE ORATORICAL SPEECH FOR POPULATION DEVELOPMENT (POPDEV)', 'https://drive.google.com/file/d/1HrRxKvrTf8Gfope7IWJUWYaS0cSeEgku/view?usp=sharing', '0', '2022-01-06', 'UNNUMBERED MEMORANDUM', 'active'),
(303, '', 'RESULT OF THE FIRST ONLINE DIVISION SCHOOLS PRESS CONFERENCE', 'https://drive.google.com/file/d/1CNbtAZY2JDwPK9ytQBT4-B7i5rQypbK5/view?usp=sharing', '0', '2022-01-05', 'UNNUMBERED MEMORANDUM', 'active'),
(304, '', 'AWARDING OF WINNERS IN THE 2021 DEPED NATIONAL GABALDON SCHOOL HOUSE CONTEST', 'https://drive.google.com/file/d/1IMiUx5bkxKm-lfk_HoctJ4OkNhfT788_/view?usp=sharing', '0', '2022-01-05', 'UNNUMBERED MEMORANDUM', 'active'),
(305, '', 'MANILA SCIENCE HIGH SCHOOL ADMISSION TEST (MSAT) GUIDELINES FOR THE SCHOOL YEAR 2022-2023', 'https://drive.google.com/file/d/186lMGd57LH0dzxfVe-aFmiG8eWEn2n7_/view?usp=sharing', '0', '2022-01-05', 'UNNUMBERED MEMORANDUM', 'active'),
(306, '', 'WEBINAR ON ENHANCED AND INNOVATIVE SPORTS', 'https://drive.google.com/file/d/1k9GN2zQOPmLz-0jQs-LVfJcfgHYOpF-h/view?usp=sharing', '0', '2022-01-04', 'UNNUMBERED MEMORANDUM', 'active'),
(307, '', 'PREPARATION OF PROGRAM OF WORKS (POW) OF MINOR FACILITIES REPAIR UNDER THE MAINTENANCE AND OTHER OPERATING EXPENSES (MOOE) FOR CY 2022', 'https://drive.google.com/file/d/12hrQfyRIbFRLYIkuIj70U-FaXxR0c6SQ/view?usp=sharing', '0', '2022-01-03', 'UNNUMBERED MEMORANDUM', 'active'),
(308, '', 'COMELEC RESOLUTION NO. 10695', 'https://drive.google.com/file/d/1xyrxMRKM2WKFa80uR-KuYay8FLXgEaYn/view?usp=sharing', '0', '2022-01-03', 'UNNUMBERED MEMORANDUM', 'active'),
(310, '', 'UNANG GURO SA FILIPINO', 'https://drive.google.com/file/d/11CVanazHMdwnAvoDq2Ji7u2q3WPdtyRl/view?usp=sharing', '91', '2022-05-25', 'DIVISION ADVISORIES', 'active'),
(311, '', 'UP KALINAW STUDENT SUMMIT', 'https://drive.google.com/file/d/1b7L1F13SxO2ZuaVj5F7QhIgiUmZyeTNc/view?usp=sharing', '89', '2022-05-24', 'DIVISION ADVISORIES', 'active'),
(312, '', 'ORIENTATION OF CAR PARTNERS ON BOOSTING EDUCATION AND SKILLS IN SENIOR HIGH SCHOOLS (BESSHS) THROUGH IBM SKILLSBUILD', 'https://drive.google.com/file/d/1VQ46eBb6h8tIWM-HivF-ll4-jfZnaXUu/view?usp=sharing', '89', '2022-05-23', 'DIVISION ADVISORIES', 'active'),
(313, '', 'KAMPEON NG WIKA 2022', 'https://drive.google.com/file/d/17CdbITe7JRzcr2KxQV_a5VWOmkcpL2zz/view?usp=sharing', '86', '2022-05-20', 'DIVISION ADVISORIES', 'active'),
(314, '', 'DANGAL NG WIKANG FILIPINO 2022', 'https://drive.google.com/file/d/1QKWvRX7f_GcVlUioC0odT46xNB8U3jHj/view?usp=sharing', '88', '2022-05-20', 'DIVISION ADVISORIES', 'active'),
(315, '', 'CLARIFICATION  AND ADDITIONAL INFORMATION ON THE CONDUCT OF THE NATIONAL SCIENCE AND TECHNOLOGY FAIR 2022', 'https://drive.google.com/file/d/15psukC38n6ZmJrVqEO28kOX9DAFhuqhn/view?usp=sharing', '87', '2022-05-20', 'DIVISION ADVISORIES', 'active'),
(316, '', 'INTERNATIONAL CONFERENCE ON MULTI-DISCIPLINARY RESEARCH AND PAPER PRESENTATION', 'https://drive.google.com/file/d/1blE8NUbRYOzsGxHtjJnGn2xWH5-c44zz/view?usp=sharing', '83', '2022-05-19', 'DIVISION ADVISORIES', 'active'),
(317, '', 'CORRIGENDUM TO UNNUMBERED MEMORANDUM DATED MAY 13,2022', 'https://drive.google.com/file/d/1xnUzDh6Bzxan3kDyznhpNJMR63eOl5AY/view?usp=sharing', '82', '2022-05-20', 'DIVISION ADVISORIES', 'active'),
(318, '', 'INVITATION TO ATTEND AN ONLINE WEBINAR ON THE CHANGING LANDSCAPE OF TEACHING AND LEARNING: RISING TO THE CHALLENGES FOR BETTER RESULTS', 'https://drive.google.com/file/d/1dSM9IN77lHxcmiJ6vJqLb05H1Svd-qSM/view?usp=sharing', '81', '2022-05-12', 'DIVISION ADVISORIES', 'active'),
(319, '', 'TRANSITION TO TRANSFORMATION: MAPPING THE CHANGING RESEARCH, INFORMATION AND EDUCATION LANDSCAPE', 'https://drive.google.com/file/d/10zHv_pQG0TvralFA1L6b3xNlUgnS7EBV/view?usp=sharing', '80', '2022-05-19', 'DIVISION ADVISORIES', 'active'),
(320, '', 'PHILGEPS TRANING SCHEDULE', 'https://drive.google.com/file/d/1XXWSKzqCBF4KfPTSbRDWSsDAQirVhnsq/view?usp=sharing', '79', '2022-05-19', 'DIVISION ADVISORIES', 'active'),
(321, '', 'INTERNATIONAL TRAINING FOR TEACHERS', 'https://drive.google.com/file/d/1gL46ogrmhJTf-EK86HLsSpNIve2dDB8R/view?usp=sharing', '78', '2022-05-18', 'DIVISION ADVISORIES', 'active'),
(322, '', '1ST INTERNATIONAL MULTIDISCIPLINARY RESEARCH CONFERENCE THEME: DIGITAL TRANSFORMATION AND ADAPTABILITY FACING THE CHALLENGE OF THE CORONACENE', 'https://drive.google.com/file/d/1L-P2D2FGInguco_rniSiPYvdGmfO8Esc/view?usp=sharing', '77', '2022-05-07', 'DIVISION ADVISORIES', 'active'),
(323, '', 'LAUNCHING OF OUR EYE CARE PARTNERSHIP DR. JSPECS OPTO-ON-CALL (TRANSIT) THAT CAN CATER THE EYE CARE NEEDS FOR OUR SCHOOL TEACHERS AND NON-TEACHING PERSONNEL. WE WOULD LIKE TO CONDUCT THE 1ST FREE EYE ', 'https://drive.google.com/file/d/1COmHMiKKlZhsiEAi78N2ctfP7TNZc_qk/view?usp=sharing', '76', '2022-05-04', 'DIVISION ADVISORIES', 'active'),
(324, '', '10-DAY RESEARCH BOOTCAMP', 'https://drive.google.com/file/d/1JSX3Z67L9QC7YhK6BmDIik2q1cmCHVdJ/view?usp=sharing', '75', '2022-04-25', 'DIVISION ADVISORIES', 'active'),
(325, '', 'HUMAN RESOURCE ANALYTICS IN-DEPTH TRAINING WORKSHOP', 'https://drive.google.com/file/d/1MjuxhZwBIt-H0cHXrnFonLMJLLripJjb/view?usp=sharing', '74', '2022-04-25', 'DIVISION ADVISORIES', 'active'),
(326, '', 'FUNDAMENTALS OF DATA MANAGEMENT AND REPORTING USING SPREADSHEET TRAINING WORKSHOP', 'https://drive.google.com/file/d/1FmBwmKmVffmpfT3yaHu4mJOdikAnKtGj/view?usp=sharing', '73', '2022-04-25', 'DIVISION ADVISORIES', 'active'),
(327, '', '3-DAY NATIONAL ONLINE CONFERENCE AND DEMO TEACHING FESTIVAL', 'https://drive.google.com/file/d/1dzsLUulJ3df5wruzKVH5_F2kCqTz7e3N/view?usp=sharing', '71', '2022-04-22', 'DIVISION ADVISORIES', 'active'),
(328, '', 'RESEARCH WRITING, SAMPLING TECHNIQUES AND STATISTICAL ANALYSIS IN-DEPTH SEMINAR WORKSHOP', 'https://drive.google.com/file/d/16pHxOWXsfIjDM3ygAcS-rItZ-pQ2ybm8/view?usp=sharing', '70', '2022-04-22', 'DIVISION ADVISORIES', 'active'),
(329, '', 'STRATEGIC PLANNING, EXECUTION, DESIGN AND IMPLEMENTING A MONITORING SYSTEM, AND DATA ANALYTICS TRAINING WORKSHOPS', 'https://drive.google.com/file/d/1t8iif6-D9aTX7utavmzVwtpbaEr6jPm8/view?usp=sharing', '69', '2022-04-22', 'DIVISION ADVISORIES', 'active'),
(330, '', 'RESCHEDULING OF THE FIRST ENGAGEMENT MEETING FOR PRIME HR', 'https://drive.google.com/file/d/1bce1TYiBbvi36LQwKpqYyLxptxNO6f7Q/view?usp=sharing', '68', '2022-04-18', 'DIVISION ADVISORIES', 'active'),
(331, '', 'TRANSCENDING SOCIAL DISTANCE: EMANATING BEST PRACTICE ON E-LEARNING', 'https://drive.google.com/file/d/1mb2U5OLcbeW012ms5fxlKdsNgLANqT4u/view?usp=sharing', '67', '2022-04-13', 'DIVISION ADVISORIES', 'active'),
(332, '', 'CENTER FOR HUMAN RESEARCH AND DEVELOPMENT FOUNDATION, INC. EDUCATOR\'S CONGRESS 2022', 'https://drive.google.com/file/d/1rr2E8MGJovZd2JNL5bM97METLya6-pkB/view?usp=sharing', '66', '2022-04-07', 'DIVISION ADVISORIES', 'active'),
(333, '', 'PHILIPPINE SOCIETY FOR DEVELOPMENTAL BIOLOGY, INC. 2022 WEBINAR SERIES IN ANIMAL AND PLANT DEVELOPMENTAL BIOLOGY', 'https://drive.google.com/file/d/1dzkTBKGAbjKAnGwu403stJ6vBEQvplo3/view?usp=sharing', '65', '2022-04-08', 'DIVISION ADVISORIES', 'active'),
(334, '', 'INTERNATIONAL VIRTUAL CONFERENCE (ADGLE NEPAL)', 'https://drive.google.com/file/d/1dqnTVZL9N3Trv9qfKY9tiXV-6rbNIYnd/view?usp=sharing', '64', '2022-04-11', 'DIVISION ADVISORIES', 'active'),
(335, '', 'ONLINE TRAININGS (CHRDF)', 'https://drive.google.com/file/d/1FdTQzcu9cizZmpuupserlOOYqKfE3QgP/view?usp=sharing', '63', '2022-04-11', 'DIVISION ADVISORIES', 'active'),
(336, '', '\"BACK TO BASIC\" (B2B) SEASON 2 OF THE NATIONAL RESEARCH COUNCIL OF THE PHILIPPINES (NRCP)', 'https://drive.google.com/file/d/1cZWHTRAeH7DWWDVmA52WP48tSJXSSq9E/view?usp=sharing', '62', '2022-04-11', 'DIVISION ADVISORIES', 'active'),
(337, '', '8TH HSM: HANEP SA SCIENCE AT MATH', 'https://drive.google.com/file/d/1s0dEWlGbJaM8x3gxSWRChaUWf70Vq7Ap/view?usp=sharing', '61', '2022-04-11', 'DIVISION ADVISORIES', 'active'),
(338, '', 'PRODUCTION OF REMAINING QUARTER 3 TV LESSONS', 'https://drive.google.com/file/d/14_n8zOF_gzjx1nTSKmLbwm9G-LA2wZdf/view?usp=sharing', '60', '2022-03-29', 'DIVISION ADVISORIES', 'active'),
(339, '', 'INTERNATIONAL CHAMPIONS IN EDUCATION (ICE)', 'https://drive.google.com/file/d/1xpDsWHe4Ad016KaAXGS6QC3K5XMZiPYe/view?usp=sharing', '59', '2022-04-08', 'DIVISION ADVISORIES', 'active'),
(340, '', 'VALUES RESTORATION OFFICERS TRAINING THE TRAINERS (VROTT)', 'https://drive.google.com/file/d/1aGIj3zUeLMknBVtjdpWw7o6B1PaadOnn/view?usp=sharing', '58', '2022-04-01', 'DIVISION ADVISORIES', 'active'),
(341, '', 'SERIES OF TRAINING AND PROGRAMS', 'https://drive.google.com/file/d/1r5iq38kS8IfHTFC7nZF3aYkZf4f9N92C/view?usp=sharing', '57', '2022-04-04', 'DIVISION ADVISORIES', 'active'),
(342, '', '1ST VIRTUAL INTERNATIONAL CONFERENCE ON INNOVATIONS AND EDUCATION', 'https://drive.google.com/file/d/1wB3qvXCz-7V-iiMk143V4221Ya7QvXe-/view?usp=sharing', '56', '2022-04-04', 'DIVISION ADVISORIES', 'active'),
(343, '', 'WORLD ROBOT GAMES 2022 PHILIPPINE QUALIFYING REGIONAL AND NATIONAL GAMES', 'https://drive.google.com/file/d/1kWMTyWIrjZPaDPWUWiWZ6oRAZnhF6tq6/view?usp=sharing', '55', '2022-04-04', 'DIVISION ADVISORIES', 'active'),
(344, '', 'RESEARCH WRITING, SAMPLING TECHNIQUES AND STATISTICAL ANALYSIS IN-DEPTH SEMINAR WORKSHOP', 'https://drive.google.com/file/d/1n2uKiXksS2Wah07tLr1SIabcKeTqJH6d/view?usp=sharing', '54', '2022-03-30', 'DIVISION ADVISORIES', 'active'),
(345, '', '5-DAY CRASH COURSE ON THE PHILIPPINE PROFESSIONAL STANDARD FOR SCHOOL HEADS (AN INTENSIVE PREPARATION FOR NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS)', 'https://drive.google.com/file/d/1gJgaQ_MxOhTMQkle_shkFFNHbPycOzcs/view?usp=sharing', '53', '2022-03-31', 'DIVISION ADVISORIES', 'active'),
(346, '', 'EXTENSION OF TV-LESSON PRODUCTION/SHOOTING FOR QUARTER 4 OF SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1xIJV1QLQoTI1d_52h9ztSaEPz7DqnVpL/view?usp=sharing', '51', '2022-03-28', 'DIVISION ADVISORIES', 'active'),
(347, '', '2022 INVENTOR CHALLENGE (YIC) SPECIAL EDITION', 'https://drive.google.com/file/d/1wSkZMS3qiletZ3SE7L1XhYWRyvc_GXEu/view?usp=sharing', '50', '2022-03-28', 'DIVISION ADVISORIES', 'active'),
(348, '', 'SCHEDULE OF TV LESSON PRODUCTION FOR MARCH 28 - APRIL 1 ,2022', 'https://drive.google.com/file/d/1wP61Vc_tJqq47RlyQ445RnuKu061KqJJ/view?usp=sharing', '49', '2022-03-29', 'DIVISION ADVISORIES', 'active'),
(349, '', 'WOMEN IN LEADERSHIP: EMERGING STRONGER FROM CRISES PART II', 'https://drive.google.com/file/d/1jYzloWU-EpphJuJ6RmRlpuY9YNDbhREw/view?usp=sharing', '48', '2022-03-25', 'DIVISION ADVISORIES', 'active'),
(350, '', 'DEPED PROFESSIONAL DEVELOPMENT (PD) PRIORITIES FOR TEACHERS AND SCHOOL LEADERS FOR SY 2020-2023', 'https://drive.google.com/file/d/1nyUK6R41ZShBjm4HahZyYyLBrzi5GsXi/view?usp=sharing', '47', '2022-03-24', 'DIVISION ADVISORIES', 'active'),
(351, '', 'MANILA HOME ECONOMICS TEACHERS CAPACITY BUILDING CUM FARM BENCHMARKING', 'https://drive.google.com/file/d/1OlCQFIIM6N8k5Vy_9eN8DpH_P7GsPzVT/view?usp=sharing', '46', '2022-03-22', 'DIVISION ADVISORIES', 'active'),
(352, '', '3-DAY BASIC SUPPORT TRAINING FOR SCHOOL DRRM SCHOOL COORDINATORS AND SDO PERSONNEL', 'https://drive.google.com/file/d/13UzHGJdYbGR9eaw4wD0xb6_7j87bvS6m/view?usp=sharing', '44', '2022-03-21', 'DIVISION ADVISORIES', 'active'),
(353, '', 'LAUNCHIONG OF SCHOOL LEADERSHIP SUCCESSION PROGRAM (SLSP) - LEVEL 1', 'https://drive.google.com/file/d/1942lEdOj-aUY_DebHkA5LgIlIMrhW1K9/view?usp=sharing', '43', '2022-03-18', 'DIVISION ADVISORIES', 'active'),
(354, '', 'THREE-DAY INTERNATIONAL VIRTUAL CONFERENCE ON MULTI-DISCIPLINARY RESEARCH AND PAPER PRESENTATION IN PAKISTAN', 'https://drive.google.com/file/d/1oXk6XEYZjSz8oG3FCROVY1wJUUkNCQ2_/view?usp=sharing', '42', '2022-03-17', 'DIVISION ADVISORIES', 'active'),
(355, '', 'MATHVENTURE 2022: PLAYER ONE', 'https://drive.google.com/file/d/1z0CCNfMQ3pBhFDpO9BvAdA_m_VABsdNW/view?usp=sharing', '41', '2022-03-14', 'DIVISION ADVISORIES', 'active'),
(356, '', 'RESCHEDULING OF THE IMPLEMENTATION OF VARIOUS PROFESIONAL DEVELOPMENT (PD) FOR SCHOOL LEADERS IN PARTNERSHIP WITH SEAMEO-INNOTECH', 'https://drive.google.com/file/d/14NvX5O8dcxNZY2Fnv48un-BA3HnkL1Tk/view?usp=sharing', '40', '2022-03-16', 'DIVISION ADVISORIES', 'active'),
(357, '', 'BATANG MATIBAY: GABAY SA TIBAY PROGRAM', 'https://drive.google.com/file/d/1EsWFbEeikiSgHjqjgblgogHW9G82EiGv/view?usp=sharing', '39', '2022-03-10', 'DIVISION ADVISORIES', 'active'),
(358, '', 'TRAINING WORKSHOP ON THE STATICAL ANALYSIS USING R', 'https://drive.google.com/file/d/1pclAIwTx02H1AK02bt4Moo7NbYcY75ec/view?usp=sharing', '38', '2022-03-15', 'DIVISION ADVISORIES', 'active'),
(359, '', '2ND LUMINARY EXCELLENCE IN EDUCATION AND RESEARCH AWARDS (LEERA)', 'https://drive.google.com/file/d/1BhbMRvh3ESiXXrQgsRlbo175wHwWM99M/view?usp=sharing', '37', '2022-03-15', 'DIVISION ADVISORIES', 'active'),
(360, '', 'TIME SERIES AND FORECASTING USING FREEWARE AND OPENSOURCE TRAINING WORKSHOP', 'https://drive.google.com/file/d/1JMFfn6uCNSbNYFGs9Y7kmYCzg1OCeKsK/view?usp=sharing', '36', '2022-03-15', 'DIVISION ADVISORIES', 'active'),
(361, '', 'WEBINAR WORKSHOP ON LEADERSHIP DEVELOPMENT IN EDUCATION AND EFFECTIVE SCHOOL MANAGEMENT FOR ASPIRING PRINCIPALS IN THE DIVISION OF CITY SCHOOLS-MANILA', 'https://drive.google.com/file/d/1I_R1BnYFQuF8LFeIcxvIYech4se4fvcB/view?usp=sharing', '35', '2022-03-11', 'DIVISION ADVISORIES', 'active'),
(362, '', 'NATIONAL HISTORICAL COMMISSION OF THE PHILIPPINES (NHCP): ONLINE LECTURE ON CERVICAL HEALTH FOCUSING ON CERVICAL CANCER', 'https://drive.google.com/file/d/1KBa8z6zWPuhdqcRMGhYHHMsyLL9zK4hE/view?usp=sharing', '34', '2022-03-14', 'DIVISION ADVISORIES', 'active'),
(363, '', 'PHILIPPINE PHILHARMONIC ORCHESTRA (PPO) CONCERT AT THE CCP GROUNDS, ON MARCH 11, 2022, 6 PM', 'https://drive.google.com/file/d/1eO4ToEj3cgtbOiIAtSadHGZ3_xSbbYMW/view?usp=sharing', '33', '2022-03-09', 'DIVISION ADVISORIES', 'active'),
(365, '', 'RESHEDULING OF THE REGIONAL ORIENTATION ON INDUCTION PROGRAM FOR BEGINNING TEACHERS (IPBT)', 'https://drive.google.com/file/d/1xT64x1vGRAfxmKkDZjdLIZ-L9yrkmY1x/view?usp=sharing', '31', '2022-03-03', 'DIVISION ADVISORIES', 'active'),
(366, '', 'ABM CUP V', 'https://drive.google.com/file/d/1R0hmMf6Z7CnbPYL1-y0WbMk_mhmkzzRK/view?usp=sharing', '30', '2022-03-03', 'DIVISION ADVISORIES', 'active'),
(367, '', 'FREE 3-DAY NATIONAL ONLINE CONFERENCE ON INSTRUCTIONAL LEADERSHIP IN 21ST CENTURY PEDAGOGICAL APPROACHES', 'https://drive.google.com/file/d/1AiiAuygNbiflyauB_vxpbfici_lwc_9K/view?usp=sharing', '29', '2022-02-17', 'DIVISION ADVISORIES', 'active'),
(368, '', 'POSTPONEMENT OF 2021 BRIGADA ESKWELA REGIONAL AWARDS', 'https://drive.google.com/file/d/1Uk0t3b9kmNexb5XEq1oi_UtUFOxb0Zzy/view?usp=sharing', '28', '2022-02-24', 'DIVISION ADVISORIES', 'active'),
(369, '', 'INVITATION TO MAPESPA SCHOOL LEADERSHIP SUCCESSION PROGRAM (SLSP) LEVEL 1', 'https://drive.google.com/file/d/1SIveS9cOEcd-QBXbuit4VSNINUGLZLKL/view?usp=sharing', '27', '2022-02-28', 'DIVISION ADVISORIES', 'active'),
(370, '', 'FORUM ON ENABLING MINISTRY OF EDUCATION LEADERSHIP DURING CRISIS', 'https://drive.google.com/file/d/12RfscvOczGvRAOc9c2kJ8uamy4f7Eyce/view?usp=sharing', '26', '2022-02-23', 'DIVISION ADVISORIES', 'active'),
(371, '', 'QUARTER 3 AND QUARTER 4 TV LESSON PRODUCTION', 'https://drive.google.com/file/d/1SViWhUjW21zaj9OcYpOsqVAeHgHZbtrq/view?usp=sharing', '25', '2022-02-24', 'DIVISION ADVISORIES', 'active'),
(372, '', 'ECON NO-MIX', 'https://drive.google.com/file/d/1nvVNzRzl3khxBVaFNQkTOy4TABHfMdtd/view?usp=sharing', '24', '2022-02-28', 'DIVISION ADVISORIES', 'active'),
(373, '', 'FREE WEBINAR ON UNDERSTANDING DEPED ORDER NO. 66, S. 2007', 'https://drive.google.com/file/d/18-5VoSO-7Peg2pQPMs1BmVRukNgURFBP/view?usp=sharing', '23', '2022-02-22', 'DIVISION ADVISORIES', 'active'),
(374, '', 'PFIZER COVID-19 VACCINE PEDIATRIC POPULATION AGES 5 TO 11 YEARS OLD', 'https://drive.google.com/file/d/1Z3QkGd0TBDe3rrwWmRK85O03lwe65gIt/view?usp=sharing', '22', '2022-02-23', 'DIVISION ADVISORIES', 'active'),
(375, '', 'INVITATION TO THE LIVE WORKSHOP SERIES: POWER TO THE LEARNER', 'https://drive.google.com/file/d/1XIzBC8Lk-3P1KS7b4RnJUXMOO-ui1wDe/view?usp=sharing', '21', '2022-02-17', 'DIVISION ADVISORIES', 'active'),
(376, '', 'READY, SET, READ! PROGRAM', 'https://drive.google.com/file/d/1c_xwM3NSc517tSi-6hasXqun_QhZBlQ0/view?usp=sharing', '19', '2022-02-15', 'DIVISION ADVISORIES', 'active'),
(377, '', 'SEARCH FOR THE 2021 WHO\'S WHO AWARDS', 'https://drive.google.com/file/d/1o__GUN86K5rJdkWx-Sl0vSkKm-vjO3Nn/view?usp=sharing', '18', '2022-02-15', 'DIVISION ADVISORIES', 'active'),
(378, '', 'INTERNATIONAL LECTURE AND SERIES', 'https://drive.google.com/file/d/1uor0FwId1JTHoV3izQFlU0PedS5XImZS/view?usp=sharing', '17', '2022-02-15', 'DIVISION ADVISORIES', 'active'),
(379, '', 'PROGRAMS AND WEBINAR OFFERINGS', 'https://drive.google.com/file/d/1Zvr-0wDUmNn3obqC7ZxF1416fSc-UCIu/view?usp=sharing', '15', '2022-01-14', 'DIVISION ADVISORIES', 'active'),
(380, '', 'INVITATION TO ATTEND THE VALUES RESTORATION OFFICERS TRAINING THE TRAINERS (VROTT)', 'https://drive.google.com/file/d/18LZDPWd1kk3Gg7x-XlvbvNRyLzkMzqoz/view?usp=sharing', '13', '2022-02-02', 'DIVISION ADVISORIES', 'active'),
(381, '', 'ARCZONE PROFESSIONAL DEVELOPMENT PROGRAMS', 'https://drive.google.com/file/d/1xAKvxLL0Pm9T5VkZYFh3xO_-6S_w5xs6/view?usp=sharing', '12', '2022-01-28', 'DIVISION ADVISORIES', 'active'),
(382, '', 'ESSENTIALS OF PROJECT MANAGEMENT SEMINAR-WORKSHOP', 'https://drive.google.com/file/d/1Rgne7rQQlqlFYChkx0Jb12oPtiNEYR0l/view?usp=sharing', '11', '2022-01-28', 'DIVISION ADVISORIES', 'active'),
(383, '', 'VARIOUS WEBINARS AND WORKSHOP', 'https://drive.google.com/file/d/1VEhVaFR5q_Jqs80m0yH6NMfLF2iaI7hR/view?usp=sharing', '10', '2022-02-02', 'DIVISION ADVISORIES', 'active'),
(384, '', 'PROFESSIONAL DEVELOPMENT PROGRAMS', 'https://drive.google.com/file/d/1LW9-5YrRYRVaac2EX7MMjm1xuy82wF8a/view?usp=sharing', '9', '2022-01-26', 'DIVISION ADVISORIES', 'active'),
(385, '', 'WEBINAR ON ENHANCED AND INNOVATIVE SPORTS', 'https://drive.google.com/file/d/1eyt3-Ju2muoELWhxM7dqn6XthzgCx59j/view?usp=sharing', '8', '2022-01-27', 'DIVISION ADVISORIES', 'active'),
(386, '', '25TH YOUTH MATHEMATICS, SCIENCE AND TECHNOLOGY (YMSAT) FESTIVAL', 'https://drive.google.com/file/d/1pg-qvm64Tt2m4Bqn0uGh9_HBHDB2S9xY/view?usp=sharing', '6', '2022-01-17', 'DIVISION ADVISORIES', 'active'),
(387, '', 'INVITATION TO ONLINE TRAINING ON HUMAN RESOURCE MANAGEMENT', 'https://drive.google.com/file/d/1hqwFjp1GKXFuBaG9UujfcOYZFdawQfxO/view?usp=sharing', '5', '2022-01-12', 'DIVISION ADVISORIES', 'active'),
(388, '', 'FUNDAMENTALS OF DATA MANAGEMENT AND REPORTING USING SPREADSHEET TRAINING WORKSHOP', 'https://drive.google.com/file/d/1oa1DfOfg0mnN0q7Budh7qXwIq42DGrgp/view?usp=sharing', '4', '2022-01-11', 'DIVISION ADVISORIES', 'active'),
(389, '', 'DATA PRIVACY AWARENESS AND CYBER SECURITY REFRESHER COURSE', 'https://drive.google.com/file/d/1x_4vlzsw-TPKo836hjwBl75OibdS7Fx2/view?usp=sharing', '3', '2022-01-05', 'DIVISION ADVISORIES', 'active'),
(390, '', 'FIRST LEARNING ENGAGEMENT AND MANAGEMENT MEETING 2022', 'https://drive.google.com/file/d/14ckCIy8NxpoqrZlMjqQH2zWprV0kSpMp/view?usp=sharing', '1', '2022-01-07', 'DIVISION ADVISORIES', 'active'),
(392, '0', 'DIGITAL ART CONTESTS WITH THE THEME GENDER EQUITY IN A POST-PANDEMIC WORLD', 'https://drive.google.com/file/d/1WKS01MBvhKVlr56eUAh44piijMkudkAi/view?usp=sharing', '30', '2022-06-03', 'DIVISION CIRCULARS', 'active'),
(393, '0', 'WINNERS IN THE Y-KIDS COLORING, SPELLING, AND SOLO STORY TELLING CONTESTS, DIVISION LEVEL, FOR INFORMATION AND APPROPRIATE ACTION', 'https://drive.google.com/file/d/1-xVYCjUqaEm8-HIUt8yKDlYlEpHB3tJu/view?usp=sharing', '29', '2022-06-03', 'DIVISION CIRCULARS', 'active'),
(394, '', 'SEARCH FOR MR AND MISS Y PREP 2021-2022 (DISTRICT LEVEL)', 'https://drive.google.com/file/d/1SqQRotgWtcZOGCOztjmFjI94uJvPtHhH/view?usp=sharing', '27', '2022-05-26', 'DIVISION CIRCULARS', 'active'),
(395, '0', 'MANILA GIRL SCOUTS COUNCILS BOARD AND STANDING COMMITEE', 'https://drive.google.com/file/d/1vEFYG9cpjSsjgUsTcsjQcKkAC3d_VepC/view?usp=sharing', '26', '2022-05-25', 'DIVISION CIRCULARS', 'active'),
(396, '0', 'MANILA GIRL SCOUTS COUNCILS BOARD AND STANDING COMMITEE', 'https://drive.google.com/file/d/1X-698IWe08F3GwDAr80uhCPxrrYHkL65/view?usp=sharing', '25', '2022-05-23', 'DIVISION CIRCULARS', 'active'),
(397, '0', 'COUNCIL BOARD AND STANDING COMMITTEE TRAINING', 'https://drive.google.com/file/d/1Jtwuk6y-PP0G3tR5WdslyHGZS0-pHGzT/view?usp=sharing', '24', '2022-05-19', 'DIVISION CIRCULARS', 'active'),
(398, '0', 'INVITATION TO ATTEND THE 75TH DIAMOND CELEBRATION OF THE PHILIPPINE RED CROSS-MANILA CHAPTER', 'https://drive.google.com/file/d/1ZaE3L1ArlM-8Bd-ZXYtvNLXqNKCaMPnE/view?usp=sharing', '23', '2022-05-24', 'DIVISION CIRCULARS', 'active'),
(399, '0', 'CONDUCT OF PARANGAL AT PAGDIRIWANG: TAPESTRY OF TABLEAUS, NARRATIVES, SONGS, DANCE AND FASHION', 'https://drive.google.com/file/d/1WNcKc73j_i86mxQU8oYCoUZDzmvrNHDv/view?usp=sharing', '22', '2022-05-11', 'DIVISION CIRCULARS', 'active'),
(400, '0', 'CONDUCT OF FACE TO FACE Y-KIDS COLORING, SPELLING AND SOLO STORY TELLING CONTESTS FOR YKIDS MEMBERS(KINDERGARTEN)', 'https://drive.google.com/file/d/1tY8iR2zbsLHngHrEV_mxSb42obumLiWN/view?usp=sharing', '21', '2022-05-19', 'DIVISION CIRCULARS', 'active'),
(401, '0', 'WINNERS OF ON-THE-SPOT DRAWING CONTEST', 'https://drive.google.com/file/d/1AIekjRWNHDK30EiMPXumv-CH1fQESOFY/view?usp=sharing', '19', '2022-04-18', 'DIVISION CIRCULARS', 'active'),
(402, '0', 'CONDUCT OF A COLORING CONTEST', 'https://drive.google.com/file/d/1fjlyokTeCmsucnKoWXG4YvM95RuXySlV/view?usp=sharing', '16', '2022-03-31', 'DIVISION CIRCULARS', 'active'),
(403, '0', 'FACE TO FACE MEETING AY YMCA MANILA AUDITORIUM', 'https://drive.google.com/file/d/1NEHEWN7iy4xGMlTjJTEiiXddVZedBCjT/view?usp=sharing', '15', '2022-04-04', 'DIVISION CIRCULARS', 'active'),
(404, '', 'SEMINAR ON MENTAL HEALTH ISSUES FOR EDUCATORS', 'https://drive.google.com/file/d/1TMIjE9ifSDXdxSdzwvhUG6vvmIyc6lMR/view?usp=sharing', '14', '2022-03-28', 'DIVISION CIRCULARS', 'active'),
(405, '0', 'COLORING CONTEST AT YWCA FFPI V.E. SANCHEZ HALL', 'https://drive.google.com/file/d/1Q3gtpAomhGyJTPE7cYWpApT1C5vdaRby/view?usp=sharing', '20', '2022-05-04', 'DIVISION CIRCULARS', 'active'),
(406, '0', 'CONDUCT OF THE PHILIPPINE RED CROSS - MANILA CHAPTER (LOCK-IN TRAINING) FOR RED CROSS YOUTH ADVISERS', 'https://drive.google.com/file/d/1DPnOjNxc5bE0IokywgVOgxbeGjL_m9Hu/view?usp=sharing', '19', '2022-04-27', 'DIVISION CIRCULARS', 'active'),
(407, '', 'NOMINATION OF DESERVING Y-TEENS/ASSOCIATE CLUB MEMBERS TO TAKE PART IN THE F4RM PROGRAM', 'https://drive.google.com/file/d/1SKWSin3Vb0T4sVIqgD7rTo119uznCZOl/view?usp=sharing', '12', '2022-03-27', 'DIVISION CIRCULARS', 'active'),
(408, '', '2022 STRATEGIC PLANNING ON FEBRUARY 25-26, 2022 VIA ZOOM', 'https://drive.google.com/file/d/1hDTXDSKMaBFhqYzVsU35tGNGPtI0ATPy/view?usp=sharing', '11', '2022-02-23', 'DIVISION CIRCULARS', 'active'),
(409, '', 'FACE TO FACE MEETING', 'https://drive.google.com/file/d/1FkZ968teR9jKJlHLTTuVFcfvilY26lwZ/view?usp=sharing', '10', '2022-03-17', 'DIVISION CIRCULARS', 'active'),
(411, '', 'ENGINEERING AND ROBOTICS WORKSHOP', 'https://drive.google.com/file/d/1xglK9PEU-c97NVVqpu2e58YvOKcTUpd5/view?usp=sharing', '8', '2022-03-10', 'DIVISION CIRCULARS', 'active'),
(412, '', 'CLUB ADVISER TRAINING & FELLOWSHIP PROGRAM ON MARCH 12-13, 2022; Y-TEEN/ASSOCIATES CLUB OFFICERS AND MEMBERS BASIC LEADERSHIP TRAINING ON MARCH 19, 2022; & ON-THE-SPOT DRAWING CONTEST ON MARCH 26, 202', 'https://drive.google.com/file/d/14VgzZ_cdlda92fpdz-cF8T9J_bXPergH/view?usp=sharing', '7', '2022-03-09', 'DIVISION CIRCULARS', 'active'),
(413, '', 'ONLINE LECTURE ON FACTS ABOUT VACCINES FOR CHILDREN AGES 5 TO 11', 'https://drive.google.com/file/d/1phc1Mz1CTGveLyuq_jpaCJQ52Y3agT8v/view?usp=sharing', '6', '2022-03-03', 'DIVISION CIRCULARS', 'active'),
(414, '', 'A ONE-DAY TRAINING ON CODE RED: READINESS IN TIMES OF EMERGENCY AND DISASTER', 'https://drive.google.com/file/d/1X_-5JsOD1t6vWwrqhWe_iKoyJQT8RxrZ/view?usp=sharing', '4', '2022-02-22', 'DIVISION CIRCULARS', 'active'),
(415, '', 'MEMBERSHIP RECRUITMENT OF STUDENTS AND TEACHERS OR AT LEAST ONE (1) TROOP REGISTRATION PER SCHOOL', 'https://drive.google.com/file/d/1LVsmqH2ykgI9ELlK9vPO0FCInc5bjNEG/view?usp=sharing', '3', '2022-02-18', 'DIVISION CIRCULARS', 'active'),
(416, '', '2022 COUNCIL SCOUT YOUTH FORUM (VIRTUAL ACTIVITY)', 'https://drive.google.com/file/d/19zgDCdhMpX6FZ0MlbBdxK_saBwpAOTF4/view?usp=sharing', '2', '2022-02-09', 'DIVISION CIRCULARS', 'active'),
(417, '', 'Y-PREP MASS INDUCTION - DISTRICT LEVEL', 'https://drive.google.com/file/d/1Gtu-MdsrvYRDAzXKvDWgIYfDRd87ixuH/view?usp=sharing', '1', '2022-01-13', 'DIVISION CIRCULARS', 'active'),
(418, '', 'GENDER AND DEVELOPMENT CAPACITY BUILDING WITH THE THEME STRENGTHENING AWARENESS ON GENDER AND DEVELOPMENT ISSUES AND CONCERNS', 'https://drive.google.com/file/d/1r15W3uOl4XY_8EC1km1Ul7rrfL53ZDac/view?usp=sharing', '95', '2022-06-08', 'MISCELLANEOUS MEMOS', 'active'),
(419, '', 'GENDER AND DEVELOPMENT CAPACITY BUILDING WITH THE THEME OKS PA BA?', 'https://drive.google.com/file/d/13Itp6UzuKHTSJqDyUkOs6fsm4eH4KUyz/view?usp=sharing', '94', '2022-06-08', 'MISCELLANEOUS MEMOS', 'active'),
(420, '', 'GENDER AND DEVELOPMENT TRAINING AT SHERCON RESORT AND ECOLOGY PARK IN MATAAS NA KAHOY, BATANGAS CITY', 'https://drive.google.com/file/d/1zEzm_IIYTeFvIJCcQ8vLJyi5mYJPKbOt/view?usp=sharing', '93', '2022-06-08', 'MISCELLANEOUS MEMOS', 'active'),
(421, '', 'ACKNOWLEDGE RECEIPT OF YOUR LETTER REGARDING THE RESULT OF THE CONSUTATIVE MEETING WITH THE STPA REPRESENTATIVE AND GRADE 6 PARENTSON VIRTUAL GRADUATION', 'https://drive.google.com/file/d/1FBwayBOnQmPHNZ3i_9itPqToSLihdibF/view?usp=sharing', '92', '2022-06-08', 'MISCELLANEOUS MEMOS', 'active'),
(422, '', 'INVITATION FOR THE CIC OFFICERS AND ADVISERS TO ATTEND THE TRAINING ON LEADERSHIP FOR CAMPUS INTEGRITY CRUSADERS', 'https://drive.google.com/file/d/1mtHsFSDCtEaMzG8X9xLt9k8O9o0iLUXk/view?usp=sharing', '88', '2022-06-02', 'MISCELLANEOUS MEMOS', 'active'),
(423, '', 'GENDER AND DEVELOPMENT TRAINING ', 'https://drive.google.com/file/d/1Nyc7JztCF7IDM0_IogU1SVIf-rkXbG7F/view?usp=sharing', '87', '2022-06-01', 'MISCELLANEOUS MEMOS', 'active'),
(424, '', 'CONDUCT OF NEEDS ASSESSMENT SURVEY (NAS)', 'https://drive.google.com/file/d/1TyKB3dhD6cogZvM7Xhi3iKPpoHQ1mZOh/view?usp=sharing', '86', '2022-05-31', 'MISCELLANEOUS MEMOS', 'active'),
(425, '', 'GENDER AND DEVELOPMENT ACTIVITY WITHTHE THEME TONDO SQUAD', 'https://drive.google.com/file/d/13AIjDgE4_OaAVuSuDx6CDLZy9XnLxQrM/view?usp=sharing', '83', '2022-05-27', 'MISCELLANEOUS MEMOS', 'active'),
(426, '', 'REQUEST TO USE YOUR SCHOOL AS VENUE FOR MEISIC POLICE STATION SPORT FEST', 'https://drive.google.com/file/d/14v3-0QTnrTssmX8-m-YZ-BRA9iLsR_En/view?usp=sharing', '82', '2022-05-26', 'MISCELLANEOUS MEMOS', 'active'),
(427, '', 'CAPABILITY BUILDING FOR NON TEACHING PERSONNEL', 'https://drive.google.com/file/d/1_l2yYU8aUvF558tlYgQ5iQiDy44tlvSO/view?usp=sharing', '81', '2022-05-25', 'MISCELLANEOUS MEMOS', 'active'),
(428, '', 'ANNUAL DISASTER RISK REDUCTION TRAINING FOR TEACHING AND NON TEACHING PERSONNEL', 'https://drive.google.com/file/d/1GHYr92CIBnsYhBD9TfINvWxYkpX8m3qj/view?usp=sharing', '80', '2022-05-25', 'MISCELLANEOUS MEMOS', 'active'),
(429, '', 'INVITATION TO JOIN PROJECT KAYAMANAN REGIONAL SCHOOL CARAVAN', 'https://drive.google.com/file/d/1XhbZdLabzrakuY2ru8aJeySE2yU8oG3P/view?usp=sharing', '79', '2022-05-20', 'MISCELLANEOUS MEMOS', 'active'),
(430, '', 'FACE TO FACE GENDER AND DEVELOPMENT SEMINAR/WORKSHOP', 'https://drive.google.com/file/d/1n1GIUWY1TN_Ck69F-zdXOc8SYyK45417/view?usp=sharing', '78', '2022-05-19', 'MISCELLANEOUS MEMOS', 'active'),
(431, '', 'CAPACITY TEAM BUILDING ACTIVITY', 'https://drive.google.com/file/d/1jZG8tgtWYTGuCw5O5qehc-o5ocB1zvoN/view?usp=sharing', '77', '2022-05-19', 'MISCELLANEOUS MEMOS', 'active'),
(432, '', 'MANILA DISASTER REDUCTION AND MANAGEMENT OFFICE ', 'https://drive.google.com/file/d/1DJZOT2PVAbgGpA4ulue3odR6NRpLFzYl/view?usp=sharing', '76', '2022-05-19', 'MISCELLANEOUS MEMOS', 'active'),
(433, '', 'FACE TO FACE CAPACITY BUILDING', 'https://drive.google.com/file/d/10bYv37DV6qjD-njJxaOSc0WrjcwayCxv/view?usp=sharing', '75', '2022-05-17', 'MISCELLANEOUS MEMOS', 'active'),
(434, '', 'GENDER AND DEVELOPMENT FACULTY TEAM BUILDING - ACTIVITY', 'https://drive.google.com/file/d/1odNTUU7Q0wh9-NeVgw3JJ2pc9zjp8TCG/view?usp=sharing', '74', '2022-05-17', 'MISCELLANEOUS MEMOS', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(435, '', 'CAPABILITY BUILDING FOR TEACHERS', 'https://drive.google.com/file/d/1cAQ7yfRvz4AWRLO7iH7tCHpScjy6FFg8/view?usp=sharing', '73', '2022-05-13', 'MISCELLANEOUS MEMOS', 'active'),
(436, '', 'CONDUCT OF GENDER AND DEVELOPMENT CAPABILITY BUILDING AND DISASTER RISK REDUCTION AND MANAGEMENT CAPACITY BUILDING', 'https://drive.google.com/file/d/1TSL584Zl01OPFEEboO-FiYDFxyKNRV-x/view?usp=sharing', '72', '2022-05-10', 'MISCELLANEOUS MEMOS', 'active'),
(437, '', 'CONDUCT OF GENDER AND DEVELOPMENT TRAINING', 'https://drive.google.com/file/d/16Ca2Eqvtg1n6kiiKNDhxQcbYA82Y09t5/view?usp=sharing', '71', '2022-05-12', 'MISCELLANEOUS MEMOS', 'active'),
(438, '', 'CONDUCT OF GENDER AND DEVELOPMENT TRAINING', 'https://drive.google.com/file/d/1ffKSVDoECCmGBJUTYH7d-FRkpmvYONj5/view?usp=sharing', '70', '2022-04-28', 'MISCELLANEOUS MEMOS', 'active'),
(439, '', 'RESCHEDULING LIFE ENRICHMENT PROGRAM (YLEP) ACTIVITIES', 'https://drive.google.com/file/d/1Jo2lHvk4UI5V6aL7CmGKJXd6lBSMO4bm/view?usp=sharing', '69', '2022-05-25', 'MISCELLANEOUS MEMOS', 'active'),
(440, '', 'CONDUCT OF GENDER AND DEVELOPMENT WEBINAR', 'https://drive.google.com/file/d/1CTsMwbpk118ThVofC_xPzD5FyUJUpMbg/view?usp=sharing', '68', '2022-04-28', 'MISCELLANEOUS MEMOS', 'active'),
(441, '', 'REQUEST TO USE YOUR SCHOOL COVERED COURT AS VENUE FOR THEIR SPORTFEST', 'https://drive.google.com/file/d/1ADLxBIytHmXeUVIOW8DBTkkz_ARbTGjF/view?usp=sharing', '67', '2022-05-04', 'MISCELLANEOUS MEMOS', 'active'),
(442, '', 'CONDUCT OF GENDER AND DEVELOPMENT CAPABILITY BUILDING', 'https://drive.google.com/file/d/1_fMnjHan5NOPI3MueLGbkFWuz29Fbkj2/view?usp=sharing', '66', '2022-04-28', 'MISCELLANEOUS MEMOS', 'active'),
(443, '', 'REQUEST TO USE YOUR SCHOOL AS VENUE FOR SOCIAL PREPARATION ACTIVITIES FOR THE MONTH OF APRIL IN MANILA PHASE 1', 'https://drive.google.com/file/d/1iJx89XS7bQv8u0qdQtKgmvaCZwZxibxX/view?usp=sharing', '64', '2022-04-25', 'MISCELLANEOUS MEMOS', 'active'),
(444, '', 'REQUEST FOR THE USE OF A. BONIFACIO ELEMENTARY SCHOOL', 'https://drive.google.com/file/d/1OaSEv6AL-fmJbqpeDj7O7xU7ajsQE8-S/view?usp=sharing', '62', '2022-04-25', 'MISCELLANEOUS MEMOS', 'active'),
(445, '', 'REQUEST FOR THE USE OF JOSE ABAD SANTOS HIGH SCHOOL COVERED COURT', 'https://drive.google.com/file/d/1Z9qrSxHOGqRBdJ5_2EhOWj3rDkJjUTUw/view?usp=sharing', '63', '2022-04-25', 'MISCELLANEOUS MEMOS', 'active'),
(446, '', 'WINNERS OF 2022 SHANGHAI INTERNATIONAL INVENTION AND INNOVATION EXHIBITION', 'https://drive.google.com/file/d/1jvUegbVE7D6Y1umpLsUgPHLBkVpifLDS/view?usp=sharing', '61', '2022-04-25', 'MISCELLANEOUS MEMOS', 'active'),
(447, '', 'FIRST REGULAR CONSULTATIVE MEETING WITH FACULTY CLUB PRESIDENTS', 'https://drive.google.com/file/d/1hbA8n3XkQ04hlH9ARkNBuWlYpoTrv4Zg/view?usp=sharing', '60', '2022-04-25', 'MISCELLANEOUS MEMOS', 'active'),
(448, '', 'CONDUCT OF CAPACITY BUILDING TRAINING-WORKSHOP ON CHILD PROTECTION CONCERNS', 'https://drive.google.com/file/d/1Q6bUV9k7MD7rvrd0tb2JyahTeZZQYiJH/view?usp=sharing', '59', '2022-04-22', 'MISCELLANEOUS MEMOS', 'active'),
(449, '', 'INVITATION FOR A FACE-TO-FACE SEMINAR TITLED CONTRUCTIVE ALIGNMENT', 'https://drive.google.com/file/d/1uyyVIiV8YftITTKgcn3sQ3kRNz7S1cqz/view?usp=sharing', '58', '2022-04-20', 'MISCELLANEOUS MEMOS', 'active'),
(450, '', 'CONDUCT OF GENDER AND DEVELOPMENT WEBINAR', 'https://drive.google.com/file/d/1YNJL_VbLwrF1IHSHq4YqsxOYnjdKrWFU/view?usp=sharing', '57', '2022-04-19', 'MISCELLANEOUS MEMOS', 'active'),
(451, '', 'REQUEST FOR PARTNERSHIP FOR PROJECT START UP FOR WOMEN', 'https://drive.google.com/file/d/1k53eWmsxKMY0eXy24yqpQY4uX5rsmJDS/view?usp=sharing', '56', '2022-04-18', 'MISCELLANEOUS MEMOS', 'active'),
(452, '', 'CONDUCT OF LIVELIHOOD TRAINING CUM CAPACITY AND TEAM BUILDING', 'https://drive.google.com/file/d/1gx8STRl41AFiSopfMfBrK2U1NbHSjVhM/view?usp=sharing', '55', '2022-04-13', 'MISCELLANEOUS MEMOS', 'active'),
(453, '', 'CONDUCT OF GENDER AND DEVELOPMENT TRAINING', 'https://drive.google.com/file/d/1iyK-vFByjIYvv_QmgZIMr41dw_c10q0E/view?usp=sharing', '54', '2022-04-13', 'MISCELLANEOUS MEMOS', 'active'),
(454, '', '2022 BLIA SOUNDS OF THE HUMAN WORLD SONG WRITING COMPETITION', 'https://drive.google.com/file/d/1iukAc8mlIjZTdmxv7NdBPziR_KhujVj6/view?usp=sharing', '53', '2022-04-08', 'MISCELLANEOUS MEMOS', 'active'),
(455, '', 'REQUEST TO USE YOUR SCHOOL AS VENUE FOR THE TRAINING OF LIQUID SOAP, DETERGENT SOAP AND PERFUME MAKING', 'https://drive.google.com/file/d/12IsTCMiGTlLT-ydX_7eNAYTNag1DWOCl/view?usp=sharing', '52', '2022-04-08', 'MISCELLANEOUS MEMOS', 'active'),
(456, '', 'MASTER THE DIGITAL AGE', 'https://drive.google.com/file/d/1v4WOjeErXvIH_YANsmMEEthJYoAHlJTs/view?usp=sharing', '51', '2022-04-08', 'MISCELLANEOUS MEMOS', 'active'),
(457, '', 'REQUEST FOR THE USE OF A.A. QUEZON ELEMENTARY SCHOOL AS VENUE FOR THE 7TH ANNUAL COUNCIL MEETING', 'https://drive.google.com/file/d/1-1QoMS0zULLcQSFYWu5MFi6lMnzfjBff/view?usp=sharing', '50', '2022-04-08', 'MISCELLANEOUS MEMOS', 'active'),
(458, '', 'CONDUCT OF GENDER AND DEVELOPMENT TRAINING', 'https://drive.google.com/file/d/1uODuj4Xv-a_XPgofUih0Wb-9DmMlkN2j/view?usp=sharing', '49', '2022-04-07', 'MISCELLANEOUS MEMOS', 'active'),
(459, '', 'ROLL-OUT ORIENTATION ON THE USE OF THE MANILA CHILD PROTECTION HANDBOOK', 'https://drive.google.com/file/d/1-qEkbcReySuk-2mWUCly4Nnk4_Q_TAeh/view?usp=sharing', '48', '2022-04-08', 'MISCELLANEOUS MEMOS', 'active'),
(460, '', 'REQUEST PERMISSION TO USE LEGARDA ELEMENTARY SCHOOL', 'https://drive.google.com/file/d/1QDTCAk8-nhM_ZVqsTDqtRjYjAgh5ImmJ/view?usp=sharing', '47', '2022-04-04', 'MISCELLANEOUS MEMOS', 'active'),
(461, '', 'REQUEST TO USE YOUR SCHOOLS AS VENUE FOR THE ROLL-OUT ORIENTATION ON THE USE OF THE MANILA CHILD PROTECTION HANDBOOK', 'https://drive.google.com/file/d/1HcpAq6NuF4lWEjSPqSDHEIzEka_oB21r/view?usp=sharing', '46', '2022-04-01', 'MISCELLANEOUS MEMOS', 'active'),
(462, '', 'INVITATION TO PUBLIC HIGH SCHOOL TEACHER-ANIMATORS TO PARTICIPATE IN THE VIRTUAL CHURCH PASTORAL MISSION AND CAMPUS APOSTOLATE', 'https://drive.google.com/file/d/1xPKmSs4oUGOVX3k-RPr2pu4_8iG4NRLe/view?usp=sharing', '45', '2022-03-30', 'MISCELLANEOUS MEMOS', 'active'),
(463, '', 'CONDUCT OF GENDER AND DEVELOPMENT TRAINING', 'https://drive.google.com/file/d/1efP43CO1r9WLOvhU6DTpxGUnDSEnmXSk/view?usp=sharing', '44', '2022-03-31', 'MISCELLANEOUS MEMOS', 'active'),
(464, '', 'THREE-DAY INTERNATION VIRTUAL CONFERENCE ON PEDAGOGICAL INNOVATIONS ACROSS ALL AREAS OF SPECIALIZATION', 'https://drive.google.com/file/d/1iqjbF62-wCcAmB2cXNmr5QW3twUIomnf/view?usp=sharing', '43', '2022-03-30', 'MISCELLANEOUS MEMOS', 'active'),
(465, '', 'MEDALLA 2.0: NATIONAL ACADEMIC AND PUBLIC HEALTH CONFERENCE', 'https://drive.google.com/file/d/1RpO8TSRLvaJpQ79ynYTvy2Hc30Z6o4pl/view?usp=sharing', '42', '2022-04-01', 'MISCELLANEOUS MEMOS', 'active'),
(466, '', 'REQUEST TO GIVE DONATION', 'https://drive.google.com/file/d/1fgiG8e6qHq-jbh1Ec-vR4bLVXhbDTBqE/view?usp=sharing', '41', '2022-03-29', 'MISCELLANEOUS MEMOS', 'active'),
(467, '', 'CONDUCT ON ORIENTATION ON WASH AT HOME PROGRAM WITH, PUPILS,TEACHERS,FAMILIES AND COMMUNITIES', 'https://drive.google.com/file/d/1RpNeZfpgRrjiKtthZlT7Rw9fVFRNMexY/view?usp=sharing', '40', '2022-03-29', 'MISCELLANEOUS MEMOS', 'active'),
(468, '', 'CONDUCT OF SARAP SUSTANSYA COOK-OFF COMPETITION', 'https://drive.google.com/file/d/1DhkQvjK49xPaUbNIRtrREnbH_W5bEEes/view?usp=sharing', '39', '2022-03-27', 'MISCELLANEOUS MEMOS', 'active'),
(469, '', 'REQUEST TO USE YOUR SCHOOL\'S SOCIAL HALL AS VENUE FOR THE INDUCTION OF NEWLY ELECTED MPSTA OFFICERS AND BOARD OF DIRECTORS ', 'https://drive.google.com/file/d/1yxr-KuCwk4IAIrY-5OlfUeOPlK472f2d/view?usp=sharing', '38', '2022-03-28', 'MISCELLANEOUS MEMOS', 'active'),
(470, '', 'INDUCTION OF NEWLY ELECTED MPSTA OFFICERS AND BOARD OF DIRECTORS', 'https://drive.google.com/file/d/1Pob7NZcOVLUSgeKYA63aJwgKMFl1i7a7/view?usp=sharing', '37', '2022-03-28', 'MISCELLANEOUS MEMOS', 'active'),
(471, '', 'CONDUCT OF GENDER AND DEVELOPMENT TRAINING', 'https://drive.google.com/file/d/1IaM4Ljl1fBjrb42XSeFRklm37aXr5tMm/view?usp=sharing', '36', '2022-03-23', 'MISCELLANEOUS MEMOS', 'active'),
(472, '', 'CONDUCT OF GENDER AND DEVELOPMENT', 'https://drive.google.com/file/d/1PTiB-OugVnychoxpZtwfdMaQq2k8QLs4/view?usp=sharing', '35', '2022-03-23', 'MISCELLANEOUS MEMOS', 'active'),
(473, '', 'THE EXTENSION OF WOMEN\'S CELEBRATION FROM MARCH 11,2022 TO APRIL 20,2022', 'https://drive.google.com/file/d/1d_MG-J70X7xQnEAUaCiTAWo7shbf7b9B/view?usp=sharing', '34', '2022-03-25', 'MISCELLANEOUS MEMOS', 'active'),
(474, '', 'CONDUCT OF THEORY OF CONSTRAINT FOR EDUCATION (TOCfE)', 'https://drive.google.com/file/d/16UbzxLZW3F0iGruG4PAfaAql6i06Neot/view?usp=sharing', '33', '2022-03-24', 'MISCELLANEOUS MEMOS', 'active'),
(475, '', 'ALLIANCE OF CONCERNED TEACHERS-NATIONAL CAPITAL REGION (ACT-NCR) LEADERSHIP TRAINING SEMINAR ON APRIL 1-3, 2022 (FRIDAY-SUNDAY) AT TEACHERS\' CAMP, BAGUIO CITY ', 'https://drive.google.com/file/d/12WB9JFRDHvD2Xmou0qcjhTDGicdqdUkd/view?usp=sharing', '32', '2022-03-22', 'MISCELLANEOUS MEMOS', 'active'),
(476, '', 'PARTICIPATION OF DELEGATES ON MODULE 1 AND 2 COURSE FOR THE LEADERSHIP TRANING SEMINAR', 'https://drive.google.com/file/d/1dt1-LmQObUN2jE39dzsyEY0ZMljURZfE/view?usp=sharing', '31', '2022-03-22', 'MISCELLANEOUS MEMOS', 'active'),
(477, '', 'BASIC LIFE SUPPORT TRANING FOR TEACHING AND NON-TEACHING', 'https://drive.google.com/file/d/1oSSaLpmGwww5zgH-IvvnuLEeajS_mFJe/view?usp=sharing', '30', '2022-03-18', 'MISCELLANEOUS MEMOS', 'active'),
(478, '', 'CONDUCT OF CAPACITY BUILDING', 'https://drive.google.com/file/d/1pyj_T1EEiGvciy03gPdbmJ-TkQ32VqM2/view?usp=sharing', '29', '2022-03-15', 'MISCELLANEOUS MEMOS', 'active'),
(479, '', 'CONDUCT OF THE PILOT IMPLEMENTATION OF THE E-FIELD TRIP THROUGH BUILD AND EXPLORE MINECRAFT: EDUCATION EDITION PROJECT ', 'https://drive.google.com/file/d/1jQQ7SoC9_GS1O6YPcR__gEveCI5WL5bU/view?usp=sharing', '28', '2022-03-10', 'MISCELLANEOUS MEMOS', 'active'),
(480, '', 'YOUTH LIFE ENRICHMENT PROGRAM (YLEP)', 'https://drive.google.com/file/d/1hsyhbitgSnBY4_W27Lr5hzQMgkYS6vNc/view?usp=sharing', '25', '2022-03-10', 'MISCELLANEOUS MEMOS', 'active'),
(481, '', 'VIRTUAL CAREER TALK', 'https://drive.google.com/file/d/1IXKCt3Itxm_YOQn7tRdiG399oN32KvM_/view?usp=sharing', '24', '2022-03-09', 'MISCELLANEOUS MEMOS', 'active'),
(482, '', 'IWD FORUM', 'https://drive.google.com/file/d/1SVKK_irTDYEBg7AJw3whjYt3LxnyDn2Z/view?usp=sharing', '22', '2022-03-07', 'MISCELLANEOUS MEMOS', 'active'),
(483, '', 'YOUTH LIFE ENRICHMENT PROGRAM (YLEP)', 'https://drive.google.com/file/d/146VuSuZ9QDVGN01PiA9mo0t2D3FJm06y/view?usp=sharing', '21', '2022-03-03', 'MISCELLANEOUS MEMOS', 'active'),
(484, '', 'DE LA SALLE - MODEL UNITED NATIONS CONFERENCE', 'https://drive.google.com/file/d/1isER5kX-w-tX53Uz8BiVrdTyvEsMR_NN/view?usp=sharing', '20', '2022-03-03', 'MISCELLANEOUS MEMOS', 'active'),
(485, '', 'HALALAN 2022: VOTER EDUCATION AND PHILIPPINE POLITICS', 'https://drive.google.com/file/d/1mgP8qf88OJc-Y9kENHDYhLXH2PSIp6R-/view?usp=sharing', '19', '2022-02-28', 'MISCELLANEOUS MEMOS', 'active'),
(486, '', 'INVITATION TO THE UPCOMING PUP RADIO CONFERENCE 2022', 'https://drive.google.com/file/d/1TuIP1YcBde8ucd0Z4Yo_Rc6N0IIOOa1v/view?usp=sharing', '18', '2022-02-23', 'MISCELLANEOUS MEMOS', 'active'),
(487, '', 'CONDUCT OF LIFE COACHING SEMINAR FOR TEACHERS', 'https://drive.google.com/file/d/16mvMXbn0Zkjz2hTV0_pG3MHP8wfRWw9Q/view?usp=sharing', '17', '2022-03-01', 'MISCELLANEOUS MEMOS', 'active'),
(488, '', 'PANAWAGAN PARA SA PAPEL: DIWA 8', 'https://drive.google.com/file/d/15VrMKmNJ59dwhi05r4I8XJ7xDgTVWOmC/view?usp=sharing', '16', '2022-02-23', 'MISCELLANEOUS MEMOS', 'active'),
(489, '', 'VIRTUAL CAREER TALK', 'https://drive.google.com/file/d/1C9EF4B-ZS1rZINAkonIXLqqDrC0s6tCN/view?usp=sharing', '15', '2022-02-23', 'MISCELLANEOUS MEMOS', 'active'),
(490, '', '66TH ANNUAL CONVENTION AND 57TH BIENNIAL ELECTION', 'https://drive.google.com/file/d/1j6htkGvEXMwChTwLP8iVPlGYPRMp7bpM/view?usp=sharing', '15', '2022-02-28', 'MISCELLANEOUS MEMOS', 'active'),
(491, '', 'INVITATION TO JOIN PROJECT KAYAMANAN, A FREE ONLINE FINANCIAL EDUCATION PROGRAM FOR PUBLIC HIGH SCHOOL STUDENTS', 'https://drive.google.com/file/d/1XlqmGzaSo5Hj637exCPkuR445-ISf_g8/view?usp=sharing', '14', '2022-02-22', 'MISCELLANEOUS MEMOS', 'active'),
(492, '', 'INVITATION TO INTERESTED YOUTH LEADERS TO PARTICIPATE IN THE 2022 IYK ONLINE GLOBAL CAMP', 'https://drive.google.com/file/d/1-ezzKYbbkcEPlRlqanQlZZlF9EW3s9p8/view?usp=sharing', '13', '2022-02-21', 'MISCELLANEOUS MEMOS', 'active'),
(493, '', 'CONDUCT OF LEADERSHIP SEMINAR FOR LEADERS AND MEMBERS', 'https://drive.google.com/file/d/1DW11YRGMJsV_E3SBM24UVdCHEiqnXVXM/view?usp=sharing', '12', '2022-02-14', 'MISCELLANEOUS MEMOS', 'active'),
(494, '', 'INVITATION TO ONLINE ORIENTATION ON THE REVISED CIC GUIDELINES', 'https://drive.google.com/file/d/1KXD08KugRtAsGM7MgCdor8yhIu0J-pL8/view?usp=sharing', '11', '2022-02-09', 'MISCELLANEOUS MEMOS', 'active'),
(495, '', 'CONDUCT OF THE ONLINE ACTIVITIES UNDER THE YOUTH LIFE ENRICHMENT PROGRAM (YLEP)', 'https://drive.google.com/file/d/1bgjQZKEIh4qxnlfyVkghtW2I0FVEm9Os/view?usp=sharing', '10', '2022-02-02', 'MISCELLANEOUS MEMOS', 'active'),
(496, '', 'INVITING LEARNERS TO PARTICIPATE IN AN ONLINE CONTEST REGARDING NETIQUETTE', 'https://drive.google.com/file/d/1ijwpvVyH0AqwoddF196tOK6yVV6zr6Au/view?usp=sharing', '8', '2022-02-03', 'MISCELLANEOUS MEMOS', 'active'),
(497, '', '2022 SHANGHAI INTERNATIONAL INVENTION AND INNOVATION EXHIBITION', 'https://drive.google.com/file/d/1NTUU8k1Wppc7nzwvXS0EWLxlZLeEVBKb/view?usp=sharing', '7', '2022-01-28', 'MISCELLANEOUS MEMOS', 'active'),
(498, '', 'CAPACITY BUILDING FOR TEACHERS IN WRITING PROPOSALS FOR ACTION RESEARCH: A VIRTUAL SEMINAR-WORKSHOP', 'https://drive.google.com/file/d/1ygFzLR1KM4F9BkWr3MdPUyBpss-GZEyw/view?usp=sharing', '6', '2022-01-27', 'MISCELLANEOUS MEMOS', 'active'),
(499, '', 'PERMISSION TO CONDUCT AN ONLINE SCHOOL CAMPAIGN / CAREER ORIENTATION TO GRADE 6, GRADE 10, AND GRADE 12 STUDENTS IN DISTRICTS V AND VI', 'https://drive.google.com/file/d/1A_429PFtp4TD5wUlvk1ZoD0YDcSh_m_k/view?usp=sharing', '5', '2022-01-17', 'MISCELLANEOUS MEMOS', 'active'),
(500, '', 'LEADERSHIP TRAINING PROGRAM', 'https://drive.google.com/file/d/1nrpXl-bI94jRBUnuatGEkOj8B40aI5rW/view?usp=sharing', '4', '2022-01-05', 'MISCELLANEOUS MEMOS', 'active'),
(501, '', 'ELECTION SERVICE REFORM ACT (ESRA) AND VOTERS EDUCATION', 'https://drive.google.com/file/d/1_bPH-NFAka-svwGiuje7SkpQ-GodAoqG/view?usp=sharing', '3', '2022-01-04', 'MISCELLANEOUS MEMOS', 'active'),
(502, '', 'TEACHERS\' ORIENTATION PROGRAM', 'https://drive.google.com/file/d/1oB43oAt5vr2aVvP5jYaMQbjTCXlTYzT-/view?usp=sharing', '2', '2022-01-04', 'MISCELLANEOUS MEMOS', 'active'),
(503, '', 'COLLECTIVES NEGOTIATION AGREEMENT (CNA) DISCUSSION', 'https://drive.google.com/file/d/1comOjp1IJnOZDimEE0P6YVXfBZ3BND7x/view?usp=sharing', '1', '2022-01-03', 'MISCELLANEOUS MEMOS', 'active'),
(504, '', 'PLANNING MEETING FOR INDAK GURO 2022', 'https://drive.google.com/file/d/1JLMdfXp7arjEdFTG9LJWpdAsh1pmpY5z/view?usp=sharing', '0', '2022-06-23', 'UNNUMBERED MEMORANDUM', 'active'),
(505, '', 'BSP - MANILA COUNCIL ANNUAL COUNCIL MEETING', 'https://drive.google.com/file/d/1mswHMFAs7woD2Sa30Rf7HdCnXr_fJiXI/view?usp=sharing', '0', '2022-06-07', 'UNNUMBERED MEMORANDUM', 'active'),
(506, '', 'COORDINATORS MEETING OF EDUCATION PROGRAM SUPERVISOR WITH DISTRICT GUIDANCE COORDINATORS', 'https://drive.google.com/file/d/1QRTS6pOPABOWom290Zz8bOUdfQpbggmg/view?usp=sharing', '0', '2022-06-06', 'UNNUMBERED MEMORANDUM', 'active'),
(507, '', 'ARAW NG MAYNILA FLOAT ARRANGEMENT', 'https://drive.google.com/file/d/1HRAALMc3QYShYQsoBB22G8C3NjGRnSkb/view?usp=sharing', '0', '2022-06-03', 'UNNUMBERED MEMORANDUM', 'active'),
(508, '', '4TH PROFFESIONAL MEETING OF SUPERVISOR IN-CHARGE OF ALTERNATIVE LEARNING SYSTEM WITH EDUCATION PROGRAM SPECIALISTS, DISTRICT ALS COORDINATORS, MOBILE TEACHERS AND OTHER ALS IMPLEMENT', 'https://drive.google.com/file/d/1iMmD2X-ifc64WTkKkbZqJEAU0Dd64gz3/view?usp=sharing', '0', '2022-06-01', 'UNNUMBERED MEMORANDUM', 'active'),
(509, '', 'PLANNING MEETING FOR 2ND ONLINE DSPC', 'https://drive.google.com/file/d/130ZCwhKr6i0VBUt89JMVyPbOyCy6Xb9D/view?usp=sharing', '0', '2022-05-26', 'UNNUMBERED MEMORANDUM', 'active'),
(510, '', 'PLANNING MEETING FOR THE 2ND ONLINE DSPC', 'https://drive.google.com/file/d/1Bg573-7vulB4a6yh0k6Gu82GBCdBT08A/view?usp=sharing', '0', '2022-05-25', 'UNNUMBERED MEMORANDUM', 'active'),
(511, '', '3RD GENERAL ASSEMBLY OF SUPERVISOR IN CHARGE OF LIBRARIAN AND TEACHER LIBRARIAN', 'https://drive.google.com/file/d/1QRqeOcJEkgMudQbLTTEYl7x8KJY9YjSr/view?usp=sharing', '0', '2022-05-25', 'UNNUMBERED MEMORANDUM', 'active'),
(512, '', 'OUTSTANDING MANILAN 2022', 'https://drive.google.com/file/d/1-KLhwPsKm4DWpZzYybrRPcyGn33ir03m/view?usp=sharing', '0', '2022-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(513, '', '8TH PROFESSIONAL MEETING OF SUPERVISOR IN-CHARGE OF HOME ECONOMICS WITH DEPARTMENT HEADS/OICS', 'https://drive.google.com/file/d/1i_LiPinGPykAnklGwt--QQsrBgw1vaOe/view?usp=sharing', '0', '2022-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(514, '', '2ND ONLINE DSPC CREATING COMMITEES PLANNING ON ACTIVITIES', 'https://drive.google.com/file/d/1QNRW7EBmWeLwWxiOH8DkbeLRVm9dtUYt/view?usp=sharing', '0', '2022-05-23', 'UNNUMBERED MEMORANDUM', 'active'),
(515, '', 'PARTNERSHIP ORIENTATION AND COORDINATION MEETING WITH MONEY TREE PACIFIC, INC. (CASHVILLE KIDZ PROGRAM)', 'https://drive.google.com/file/d/1iDLiZH9bUsNWSU9vlGNwkCfxXV7uksQ2/view?usp=sharing', '0', '2022-05-23', 'UNNUMBERED MEMORANDUM', 'active'),
(516, '', 'PREVENTIVE DRUG EDUCATION (PDE) ADVOCACY MATERIAL PROJECT DEVELOPMENT PRINTING OF IEC MATERIALS SPONSORED BY MANILA ANTI-DRUG ABUSE COUNCIL - MADAC', 'https://drive.google.com/file/d/1FJfcZcF_njbdKibQTcwTy5DOB_HeXMFS/view?usp=sharing', '0', '2022-05-23', 'UNNUMBERED MEMORANDUM', 'active'),
(517, '', 'PLANNING MEETING FOR 3 DAYS SKILL ENHANCEMENT TRAINING FOR TLE-HOME ECONOMICS TEACHERS', 'https://drive.google.com/file/d/1AntixxCx69FCsqxuxvHi8cQY07iSFj5D/view?usp=sharing', '0', '2022-05-18', 'UNNUMBERED MEMORANDUM', 'active'),
(518, '', '3rd PROFESSIONAL MEETING OF EDUCATION PROGRAM SUPERVISOR WITH GUIDANCE COUNSELORS/GUIDANCE TEACHER', 'https://drive.google.com/file/d/1fFa8BiEOHdsY5gkQHngdZOGv4DXD_hMI/view?usp=sharing', '0', '2022-05-17', 'UNNUMBERED MEMORANDUM', 'active'),
(519, '', 'FIRST ENGAGEMENT MEETING FOR PRIME HR', 'https://drive.google.com/file/d/1VvU-Otzd4p3mAYxJycyzXT1VvFlCmujS/view?usp=sharing', '0', '2022-05-05', 'UNNUMBERED MEMORANDUM', 'active'),
(520, '', 'FACE-TO-FACE EXECOM', 'https://drive.google.com/file/d/1atiynS2Q2kOV8i8StRbB7Jcy5AfV9J6q/view?usp=sharing', '0', '2022-04-21', 'UNNUMBERED MEMORANDUM', 'active'),
(521, '', 'JCI MANILA TURN OVER CEREMONY OF THE BALIK ESKWELA DONATIONS TO DEPED MANILA SCHOOLS AND THE INCLUSIVE LEARNING RESOURCE CENTER (ILRC) MOA SIGNING', 'https://drive.google.com/file/d/1v0vV2soDtJbqz1YoHXYlB-MqzJTJ_2LE/view?usp=sharing', '0', '2022-04-19', 'UNNUMBERED MEMORANDUM', 'active'),
(522, '', 'COORDINATION MEETING ON THE CONDUCT OF THE COMPUTER-BASED ENGLISH PROFICIENCY TEST (CB-EPT)', 'https://drive.google.com/file/d/15TkOAx0jGF5MtsCfCyJboVCsj3v28l4W/view?usp=sharing', '0', '2022-04-18', 'UNNUMBERED MEMORANDUM', 'active'),
(523, '', 'UGNAYAN-PANAYAM SA PUNONG TAGAPAMANIHALA', 'https://drive.google.com/file/d/1C6_Au_8aCRSxy_3XMBx20ICIcELl5if9/view?usp=sharing', '0', '2022-03-28', 'UNNUMBERED MEMORANDUM', 'active'),
(524, '', 'DEPED CENTRAL & REGIONAL OFFICE SDS COURTESY CALL RO & CO ILRC OCULAR INSPECTION & MONITORING', 'https://drive.google.com/file/d/1vhPwd3XpHRQbIkGZms07pShWb56w8gQf/view?usp=sharing', '0', '2022-03-28', 'UNNUMBERED MEMORANDUM', 'active'),
(525, '', 'SDO MANILA ILRC DIVISION OCULAR INSPECTION & F2F CONSULTATIVE MEETING WITH P. GOMEZ PRINCIPAL & ILRC TEAM', 'https://drive.google.com/file/d/1QVAXIsgpM4-3kBF2KMtcxBmQjf4l8Nv4/view?usp=sharing', '0', '2022-03-28', 'UNNUMBERED MEMORANDUM', 'active'),
(526, '', 'TALA COMPOSITE TEAM MEETING', 'https://drive.google.com/file/d/1YySgRp78fWpj_SC30n9VBDQ14cXO2gJ_/view?usp=sharing', '0', '2022-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(527, '', 'COORDINATION MEETING ON THE CONDUCT OF THE SCHOOL-LEVEL PISA TEST FAMILIARIZATION', 'https://drive.google.com/file/d/1xmGfgfe1JtWHFROZp5NdOtrEykpoPkk6/view?usp=sharing', '0', '2022-03-18', 'UNNUMBERED MEMORANDUM', 'active'),
(528, '', 'ORIENTATION MEETING OF YES-O ADVISERS', 'https://drive.google.com/file/d/1e4MXkVq8b2fZd_yn3aF3folhx63d0vYV/view?usp=sharing', '0', '2022-03-17', 'UNNUMBERED MEMORANDUM', 'active'),
(529, '', 'COORDINATION MEETING ON THE CONDUCT OF THE SCHOOL-LEVEL PISA ORIENTATION', 'https://drive.google.com/file/d/1vo4DeicfX_f3yuRv4lhTp_ppF9acr7IR/view?usp=sharing', '0', '2022-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(530, '', 'MANILA GIRL SCOUT COUNCIL  FACE TO FACE BOARD MEETING', 'https://drive.google.com/file/d/1X_RJ-eFJvEWDAegbpTVZ-Lp-gsy1ULZY/view?usp=sharing', '0', '2022-03-23', 'UNNUMBERED MEMORANDUM', 'active'),
(531, '', 'PLANNING MEETING ON THE PREPARATION OF THE DIVISION EDUCATION DEVELOPMENT PLAN (DEDP)', 'https://drive.google.com/file/d/1LrzMpOspPLQpCKVPLJkTVPmTija4KEtJ/view?usp=sharing', '0', '2022-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(532, '', 'ORIENTATION AND COORDINATION MEETING ON NEWLY CREATED CHILD PROTECTION UNIT (DepEd Order No.3, s. 2021)', 'https://drive.google.com/file/d/1nGYwj4r0odDmX1EOOUsz0eEA8p4bsxDE/view?usp=sharing', '0', '2022-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(533, '', 'PARTNERSHIP AND COORDINATION MEETING WITH GEMS HEART OUTREACH DEVELOPMENT INC.', 'https://drive.google.com/file/d/14uZy8fJNTWm056iOzC5OPh9rpxvnG6nJ/view?usp=sharing', '0', '2022-02-28', 'UNNUMBERED MEMORANDUM', 'active'),
(534, '', '1ST QUARTER COORDINATION MEETING IN PARTNERSHIP', 'https://drive.google.com/file/d/1dYmG93kO_VQFQhVQ-BUOuLAjNC6gCFCm/view?usp=sharing', '0', '2022-02-24', 'UNNUMBERED MEMORANDUM', 'active'),
(535, '', 'BEFF AND SEF NEW CONSTRUCTION PROJECTS (CY 2018, CY 2019 AND CY 2020) ELECTRICAL CONNECTION TO MERALCO', 'https://drive.google.com/file/d/1FPU0ZB9Yap2Mgl9l7YXqI3wV4u2NphFv/view?usp=sharing', '0', '2022-02-22', 'UNNUMBERED MEMORANDUM', 'active'),
(536, '', 'COLLABORATIVE WEBINAR ON NATIONAL DRUG EDUCATION PROGRAM, SCHOOL MENTAL HEALTH PROGRAM, AND ADOLESCENT REPRODUCTIVE HEALTH PROGRAM', 'https://drive.google.com/file/d/1BJfYMx9Dpz-sL0UfNMIj3h6MXZwErO3M/view?usp=sharing', '0', '2022-02-16', 'UNNUMBERED MEMORANDUM', 'active'),
(537, '', 'QUARTERLY MEETING OF SPG/SSG TEACHER-ADVISERS', 'https://drive.google.com/file/d/16yqC7mLVmJ2MrE5jz9XXy9335fcF79Tw/view?usp=sharing', '0', '2022-02-03', 'UNNUMBERED MEMORANDUM', 'active'),
(538, '', 'COORDINATION MEETIG WITH THE BRIGADA PAGBASA DIVISION TEAM', 'https://drive.google.com/file/d/1_SPJfHKeJuSbbeooDltD1C4VIztbvu88/view?usp=sharing', '0', '2022-02-03', 'UNNUMBERED MEMORANDUM', 'active'),
(539, '', 'DIVISION FEDERATION SUPREME STUDENT GOVERNMENT (DFSSG) COORDINATION MEETING', 'https://drive.google.com/file/d/1eyerdplO4zViE3YvKB5F4jQeO6kA42uf/view?usp=sharing', '0', '2022-01-28', 'UNNUMBERED MEMORANDUM', 'active'),
(540, '', 'PARTNERSHIP AND COORDINATION MEETING IN PARTNERSHIP', 'https://drive.google.com/file/d/1nZSlmkESxfrKV2JhMzQBWEijdCicHfcr/view?usp=sharing', '0', '2022-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(541, '', 'BRIGADA PAGBASA PLANNING & COORDINATION MEETING', 'https://drive.google.com/file/d/11GthQx1KTNbPjyDb3bTjPOJt7ikU-P02/view?usp=sharing', '0', '2022-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(542, '', 'PARTNERSHIP AND COORDINATION MEETING IN PARTNERSHIP WITH UNIVERSITY AND RESEARCH CORP AND UNITED STATES ASSISTANCE INTERNATIONAL AND DEVELOPMENT (URC-USAD)', 'https://drive.google.com/file/d/1Y-ZUghIQ17vyYr7nuOLiljW-vZV6meRY/view?usp=sharing', '0', '2022-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(543, '', '2022 SOCMOB TECHNICAL WORKING GROUP (TWG) 1ST QUARTER PLANNING & COORDINATION MEETING', 'https://drive.google.com/file/d/1za4qbMSyCswjU2Jd9mJ2YQ-s2fg4Blff/view?usp=sharing', '0', '2022-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(544, '', 'UNIT PRESENTATION OF 2021 ANNUAL ACCOMPLISHMENT', 'https://drive.google.com/file/d/14hMZzBgjbJpO-ytT8_PJPNrjJq8fFbEU/view?usp=sharing', '0', '2022-01-06', 'UNNUMBERED MEMORANDUM', 'active'),
(594, '', 'Y- PREP COMMITTEE MASS INDUCTION & Y-SPED COMMITTEE MEETING AND MASS INDUCTION', 'https://drive.google.com/file/d/1hvD6zTdj8qdky7dfZakUPNo1JlSwTwPS/view?usp=sharing', '9', '2022-03-10', 'DIVISION CIRCULARS', 'active'),
(595, '', 'Ignacio Villamor High School - Gad Training', 'https://drive.google.com/file/d/1w_iaKC3GpbE4iQq9LpdMHMdIcRWLDYPb/view?usp=sharing', '106', '2022-06-16', 'MISCELLANEOUS MEMOS', 'active'),
(596, '', 'Selected Participants in the Field Celebration of the 451st Araw ng Maynila', 'https://drive.google.com/file/d/1CE1GwTs2EQSv7FqfHlKUYTk_bmbxvnwZ/view?usp=sharing', '157', '2022-06-21', 'NUMBERED MEMORANDUM', 'active'),
(597, '', 'Claro Recto - GAD Seminar', 'https://drive.google.com/file/d/14Gse-2bg09Ch80kBymgtnjJEEXJ3eSO6/view?usp=sharing', '110', '2022-06-20', 'MISCELLANEOUS MEMOS', 'active'),
(599, '', 'Pedro Pelaez - Conduct Training on Gender and Development', 'https://drive.google.com/file/d/1Qt2bPnsR7lMyeO5_jElllQvUtItsWiRq/view?usp=sharing', '108', '2022-06-17', 'MISCELLANEOUS MEMOS', 'active'),
(600, '', 'Claro Recto - GAD Seminar ', 'https://drive.google.com/file/d/15-Krregtw7FnPmHlWtKl_l8UpPWCacHQ/view?usp=sharing', '110', '2022-06-20', 'MISCELLANEOUS MEMOS', 'active'),
(601, '', 'Request for Public School Teachers to Serve as Proctors/Room Watchers', 'https://drive.google.com/file/d/17OeOqW_Pjso_UEppgnAfcAk7TKJi69ji/view?usp=sharing', '109', '2022-06-20', 'MISCELLANEOUS MEMOS', 'active'),
(602, '0', 'Badge Fair Activity called CineHerStorya via Zoom Platform', 'https://drive.google.com/file/d/1GgfCBxL1TmnriEGSGvRtw6tyDJAyuGfJ/view?usp=sharing', '34', '2022-06-14', 'DIVISION CIRCULARS', 'active'),
(603, '', 'Melchora Aquino - Capability Building ', 'https://drive.google.com/file/d/1msPlTEs3tyQKRcO0gg3uDjGmToli4GmG/view?usp=sharing', '104', '2022-06-16', 'MISCELLANEOUS MEMOS', 'active'),
(604, '', 'Updating of Regular Payroll Records', 'https://drive.google.com/file/d/1q2649QWoEM1n01hql0n7VUtt2sMt4zuW/view?usp=sharing', '155', '2022-06-16', 'NUMBERED MEMORANDUM', 'active'),
(605, '0', 'Capacity Building and Evaluation of Y-kids, Red Triangle and Hi-Y Club Programs', 'https://drive.google.com/file/d/1pKV-aD6PUmqiml7q17e9mqZ1Jk3tuSMZ/view?usp=sharing', '35', '2022-06-16', 'DIVISION CIRCULARS', 'active'),
(606, '', 'Deped EdTech Awards 2022', 'https://drive.google.com/file/d/16ezm98WQJwb6pcg-8YsXhf7jpRZ77t3O/view?usp=sharing', '253', '2022-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(607, '', 'Attendance to the Regular Flag-Raising Ceremony', 'https://drive.google.com/file/d/1EFAfg_9gTEQqNQrFbJVO2QTrnfaMS6pT/view?usp=sharing', '172', '2022-07-01', 'NUMBERED MEMORANDUM', 'active'),
(608, '', 'Invitation Letter for a National Conference Workshop for Elementary and Secondary Teacher on Culture and Arts Education', 'https://drive.google.com/file/d/1mZ73sv3YSReyQErNB4rGNGJVy2JXUP_p/view?usp=sharing', '125', '2022-07-05', 'MISCELLANEOUS MEMOS', 'active'),
(609, '', 'Manuel Quezon - Capacity Building Training', 'https://drive.google.com/file/d/1MgTfURYXF3O0kwqGQclDKcq_7AGA75mV/view?usp=sharing', '124', '2022-07-05', 'MISCELLANEOUS MEMOS', 'active'),
(610, '', 'Ramon Avancena - Capacity Building Activities ', 'https://drive.google.com/file/d/1umyPZs5GHAj1cdkLvoBdQw8GBIwt26YA/view?usp=sharing', '123', '2022-07-05', 'MISCELLANEOUS MEMOS', 'active'),
(611, '', 'Antonio Maceda - GAD Activity', 'https://drive.google.com/file/d/1JC12xvrKLEj-DxBbfylaGSsI4DSVeLeR/view?usp=sharing', '115', '2022-06-22', 'MISCELLANEOUS MEMOS', 'active'),
(612, '', 'Sergio Osmena - Capacity Building Activity', 'https://drive.google.com/file/d/1LkL4lZUonYJJeETdSHAeh4Cu07mFejcW/view?usp=sharing', '116', '2022-06-23', 'MISCELLANEOUS MEMOS', 'active'),
(614, '', '3rd Philippine Symposium on Freshwater Biodiversity and Ecosystem (PSFBE)', 'https://drive.google.com/file/d/1bePM7UE3dEwDRmAPMtpUyrOZCpJ-ADAI/view?usp=sharing', '118', '2022-06-28', 'MISCELLANEOUS MEMOS', 'active'),
(615, '', 'Junior High School Technology and Livelihood Education (TLE) Class Programming', 'https://drive.google.com/file/d/1COVryLe6towqyjmVG4PeK_xNEiwgJwE4/view?usp=sharing', '272', '2022-07-01', 'UNNUMBERED MEMORANDUM', 'active'),
(616, '', 'Participation in the Different Activities Relative to the Conduct of the Online (NQESH)', 'https://drive.google.com/file/d/1lVi2CCkVXfaxnqyHJ_Jhnx3lCj2QsvE2/view?usp=sharing', '165', '2022-06-29', 'NUMBERED MEMORANDUM', 'active'),
(617, '', 'Consultation Meeting with Elementary Schools Principals on the Reassignment of Administrative Aides I', 'https://drive.google.com/file/d/1zrZV1QYEkW1ugkSt_P7DzG8a-UbnHtOr/view?usp=sharing', '269', '2022-07-01', 'UNNUMBERED MEMORANDUM', 'active'),
(618, '', 'Atty. Marlon M. Lacson - Presently designated as OIC in said Department', 'https://drive.google.com/file/d/1Dml4J6eS3pMlPf98hhNgvnYFPmcpedJm/view?usp=sharing', '166', '2022-07-01', 'NUMBERED MEMORANDUM', 'active'),
(619, '', 'Ms. Brenda A. Marcelino -hereby designated as OIC ', 'https://drive.google.com/file/d/1Dml4J6eS3pMlPf98hhNgvnYFPmcpedJm/view?usp=sharing', '167', '2022-07-01', 'NUMBERED MEMORANDUM', 'active'),
(620, '', 'Conduct of Developmental Biology Master Class', 'https://drive.google.com/file/d/1iwl8dhLjIZo5I4bsOLGvcGVN_t-zDvVL/view?usp=sharing', '122', '2022-07-04', 'MISCELLANEOUS MEMOS', 'active'),
(621, '', 'Manila High School - Gender and Development Training', 'https://drive.google.com/file/d/1_0a8AZezjOIq7rG3XspXHKbj_7T8nC7f/view?usp=sharing', '121', '2022-07-05', 'MISCELLANEOUS MEMOS', 'active'),
(622, '', 'Mr. Joshue R. Santiago - relieved from his current duties designated as Chief of Staff, office of the mayor', 'https://drive.google.com/file/d/1FdqD5jOX4Al03WluJDGYL4CYxWEuk5CU/view?usp=sharing', '168', '2022-07-04', 'NUMBERED MEMORANDUM', 'active'),
(623, '', 'Monitoring of JHS and SHS Science, Mathematics and TVL Specialization Tools and Equipment', 'https://drive.google.com/file/d/1kDqaoJsW35qjar0wK5izxe0oV2m22F8m/view?usp=sharing', '262', '2022-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(624, '', 'Project Bridge: Basic Remediation and Intervention to Decrease Gaps in Every (BRIDGE) Learners', 'https://drive.google.com/file/d/16ltEYdz3Zs0erTIHlAIBwV-hJ6rATunx/view?usp=sharing', '261', '2022-06-22', 'UNNUMBERED MEMORANDUM', 'active'),
(625, '', 'Revised Schedule, Updates and Reminders on the Online (NQESH)', 'https://drive.google.com/file/d/10uJcXmDgA2Gq122KbT0M4KgeJ2JeY3Ls/view?usp=sharing', '98', '2022-06-23', 'DIVISION ADVISORIES', 'active'),
(626, '0', 'Conduct of the Club Advisers Leadership Training', 'https://drive.google.com/file/d/1dZWfp6uV4cgdMurXuyvu0j0qpdSAw_g1/view?usp=sharing', '36', '2022-06-27', 'DIVISION CIRCULARS', 'active'),
(627, '', 'National Robotics Competition (NRC 2022)', 'https://drive.google.com/file/d/1ZBhOxqrONszFsJwjZeyfaR5rPo5ybXvK/view?usp=sharing', '99', '2022-06-27', 'DIVISION ADVISORIES', 'active'),
(628, '', 'Gregorio Perfecto HS - Training on Gender and Development and Disaster Reduction Managament', 'https://drive.google.com/file/d/1gUhByGNpW2P13IpvKPyM0_dVc-OQdkLW/view?usp=sharing', '113', '2022-06-23', 'MISCELLANEOUS MEMOS', 'active'),
(629, '', 'T. Paez Elem School - Conduct of Capacity Building Activity ', 'https://drive.google.com/file/d/1G9auANLKzcy7LbId-XTeEBzhSGHSr0MN/view?usp=sharing', '112', '2022-06-22', 'MISCELLANEOUS MEMOS', 'active'),
(630, '', 'An Order Declaring June 30, 2022; Thursday, As a Special Non Working Holiday Throughout the City of Manila', 'https://drive.google.com/file/d/186M3Mn0NTYJLjDxx8l0ziEp38VBMr2_S/view?usp=sharing', '160', '2022-06-27', 'NUMBERED MEMORANDUM', 'active'),
(631, '', 'Conduct of Preliminary Evaluation Of the Qualifications of SHS Teacher II Candidates', 'https://drive.google.com/file/d/1V8M0tPvdaZ1ewT4WfX96cxD8UVVvq2-v/view?usp=sharing', '159', '2022-06-23', 'NUMBERED MEMORANDUM', 'active'),
(632, '', 'An Order Declaring Manila Clock Tower Museum (MCTM) as a Tourist Destination', 'https://drive.google.com/file/d/1z-gtUvrel4JhYy-P19IgY-WPDig9Qkrc/view?usp=sharing', '161', '2022-06-27', 'NUMBERED MEMORANDUM', 'active'),
(633, '', '451st Founding Anniversary of the City of Manila, June 24,2022 - Declared a Special Non-Working Day', 'https://drive.google.com/file/d/1IeSwDPMCd_tVll0r_BsDLx28RYqoaDN9/view?usp=sharing', '158', '2022-06-23', 'NUMBERED MEMORANDUM', 'active'),
(634, '', 'Ignacio Villamor HS - Intention of School to have Face to Face Moving up Ceremony ', 'https://drive.google.com/file/d/1hN9uZh87LfNGtLNd6lO-W957W7FI1FcW/view?usp=sharing', '100', '2022-06-13', 'MISCELLANEOUS MEMOS', 'active'),
(635, '', 'Ignacio Villamor HS - Gender and Development (GAD) Capability Training', 'https://drive.google.com/file/d/1xadBfeNHKyio5S2nDDnYJ7lp0Am0bxKU/view?usp=sharing', '101', '2022-06-13', 'MISCELLANEOUS MEMOS', 'active'),
(636, '', 'T. Yangco ES - Capability Building ', 'https://drive.google.com/file/d/1STB1QSho4tSYRCUFOal3RrP-41tnA4d-/view?usp=sharing', '102', '2022-06-13', 'MISCELLANEOUS MEMOS', 'active'),
(637, '', 'M. Roxas De Ayala ES - Conduct of School Based In- Service Training Program', 'https://drive.google.com/file/d/1fpL-Xt48gt_7psLz5VfBx0jAIUMd37Rw/view?usp=sharing', '103', '2022-06-08', 'MISCELLANEOUS MEMOS', 'active'),
(638, '', 'Teachers Dignity Coalition (TDC) Forum ', 'https://drive.google.com/file/d/13R5oEdQqF_svH6qUkeYVtyeMGx2EzaIH/view?usp=sharing', '97', '2022-06-08', 'MISCELLANEOUS MEMOS', 'active'),
(639, '', 'Conduct of Evaluation of Documents and Interview of Teachers Qualified for Promotion in the ES and JHS Levels', 'https://drive.google.com/file/d/1ZFSBX_iid1eS3y2XbuiBfwq1IIPRazrq/view?usp=sharing', '157', '2022-06-22', 'NUMBERED MEMORANDUM', 'active'),
(640, '', 'An Order Directing Inclusion  of the Office of Nutrition Services as Member of the Manila Nutrition Coordination Commitee', 'https://drive.google.com/file/d/112uQisGboAKmL85YfSgLeGi75nDRldHD/view?usp=sharing', '151', '2022-06-14', 'NUMBERED MEMORANDUM', 'active'),
(641, '', 'Schedule of Activities on the Screening of Administrative Officer II and Administrative Assistant II', 'https://drive.google.com/file/d/1kq4T9UOO9KtKqALxR29QqQXPUdmT0O1c/view?usp=sharing', '154', '2022-06-13', 'NUMBERED MEMORANDUM', 'active'),
(642, '', 'Benigno Aquino - GAD Capacity Building', 'https://drive.google.com/file/d/1Aoh6mYGIiOnUTUV8vEh6SDmVtB8Eu8FG/view', '117', '2022-06-28', 'MISCELLANEOUS MEMOS', 'active'),
(643, '', 'Conduct of the Early Language, Literacy, and Numeracy Assessment (ELLNA) For Grade 3 and the National Achievement Test (NAT) For Grade 6', 'https://drive.google.com/file/d/14UtqKtWjjR0pMbWC9N2t8joqmvd0DLLz/view?usp=sharing', '150', '2022-06-10', 'NUMBERED MEMORANDUM', 'active'),
(644, '', 'Preparation of the Division Learning Continuity and Recovery Plan (LCRP) FOR SY 2022-2023 Focused on Logged-In+ Blended Leaning Verson 3', 'https://drive.google.com/file/d/1GcPcEATY4mWvCmMT6pOzuGT19Vulr8Li/view?usp=sharing', '273', '2022-07-05', 'UNNUMBERED MEMORANDUM', 'active'),
(645, '', 'Project E-Gabay As Regional Finalist for Best Educational Technology Innovation Program', 'https://drive.google.com/file/d/1kgDdg7Z1SkuxUBbk5gRhMor5zpT61ibP/view?usp=sharing', '146', '2022-06-06', 'NUMBERED MEMORANDUM', 'active'),
(646, '', 'Seminar Workshop on the Financial Management for ES, JHS and SHS', 'https://drive.google.com/file/d/1wy4X8Fn9oFpqsiEKLRaJbjbVv6G85IFA/view?usp=sharing', '260', '2022-06-22', 'UNNUMBERED MEMORANDUM', 'active'),
(648, '', 'Dissemination of Deped Memorandum No. 00-0622-0067, S. 2022 Dated June 13, 2022 [Reiteration of Participation to the Maagang Aksiyon at Akmang Gawin ayon sa Panahon (MAAGAP) Awareness Webinar for Scie', 'https://drive.google.com/file/d/1mcTt3_ZQ3PU_e63eHwC3NJmDydwh4xq3/view?usp=sharing', '252', '2022-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(649, '', 'Enhancing Reading Comprehension Through Sequential Learning Materials (SLMS)', 'https://drive.google.com/file/d/1w3r-9cg_W4Y96YqVovkPBFcoowOMA46n/view?usp=sharing', '264', '2022-06-23', 'UNNUMBERED MEMORANDUM', 'active'),
(650, '', 'Cancellation of Payroll Deductions for the (PHILAN LIFE) under APDS Codes 005 A and B ', 'https://drive.google.com/file/d/1hbBu0Aiv_iK-m5Cv2w44WcZ0TaqJQJbJ/view?usp=sharing', '255', '2022-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(651, '', 'Conduct of Regional Training of Trainers (RTOT) on Comprehensive Sexuality Education (CSE) Via Hybrid Modality', 'https://drive.google.com/file/d/1g4qsa7TLJHras1FCqJiO_ORR4efSgUdG/view?usp=sharing', '256', '2022-06-20', 'UNNUMBERED MEMORANDUM', 'active'),
(652, '', 'Stress Management and Training of Psychosocial Intervention Facilitators', 'https://drive.google.com/file/d/16s5jh5_TIAKEo6IZw5Fj4deGDzodOlNL/view?usp=sharing', '120', '2022-07-04', 'MISCELLANEOUS MEMOS', 'active'),
(653, '', 'Winners in the Manila Secondary Science Club Advisers Association (MSSCAA) Virtual Activities', 'https://drive.google.com/file/d/1oV8Y7AzF3uOkBSPRlDe_2v-RfkeCmIwh/view?usp=sharing', '266', '2022-06-27', 'UNNUMBERED MEMORANDUM', 'active'),
(654, '', 'Customer Experience Program Training Under ALS-EST for ALS Learners', 'https://drive.google.com/file/d/1d6LIhwS1C2zk7lBiDPHLYS4QTDn2bePY/view?usp=sharing', '268', '2022-06-27', 'UNNUMBERED MEMORANDUM', 'active'),
(655, '', '2nd Extension of the Teacher-Adviser Training Course(TATC) and Student Leader Development Program (SLDP)', 'https://drive.google.com/file/d/1NQvusaETnkw8hM7EemeodCzKP5S0zsUE/view?usp=sharing', '267', '2022-07-01', 'UNNUMBERED MEMORANDUM', 'active'),
(656, '', 'Instruction on the Submission of the Individual Performance Commitment and Review Form (IPCRF) of Teachers for School Year 2021-2022', 'https://drive.google.com/file/d/1AXQluQuImbmAVRZb0aaDQ33UkCiMyy3o/view?usp=sharing', '170', '2022-07-04', 'NUMBERED MEMORANDUM', 'active'),
(657, '', 'In-Service Training(INSET) For Madrasah Education Program 2022', 'https://drive.google.com/file/d/1FW-zj2I5W11cGMrRni2jeLAhlbMlWHmY/view?usp=sharing', '271', '2022-07-01', 'UNNUMBERED MEMORANDUM', 'active'),
(658, '', 'Division Roll Out of the MOOE Web-Based Management System', 'https://drive.google.com/file/d/1Q3fpUCXZAU4JPlHyzeeJpZaS5v1lcekS/view?usp=sharing', '169', '2022-07-01', 'NUMBERED MEMORANDUM', 'active'),
(659, '', 'Constitution of Division Audit of Teachers Allotment (DATA) for the Class Organization and Teacher Requirements ', 'https://drive.google.com/file/d/1niyCop8Q6XvUdNeXRJxU_PrR-TxzaeI_/view?usp=sharing', '164', '2022-06-27', 'NUMBERED MEMORANDUM', 'active'),
(660, '', 'Conduct of End-of-School YEAR (EOSY) Classes', 'https://drive.google.com/file/d/1yucM76WhF7sKgupsyKwLou8-cmsNWznu/view?usp=sharing', '265', '2022-06-28', 'UNNUMBERED MEMORANDUM', 'active'),
(661, '', 'Verification and Submission of List of Academic Honor Pupils / Students', 'https://drive.google.com/file/d/1vsocQ0anKsC_TOtwadAYjXbEeC9cKW2u/view?usp=sharing', '257', '2022-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(663, '', 'Revised Internal Policy Guidelines in the Conduct of Virtual Inspection Process (VIP) on Public and Private Schools Applying for Government Authority in the New Normal', 'https://drive.google.com/file/d/1RHCiQT_bOVpdcD8zxzMqD0or6_Qe55eU/view?usp=sharing', '254', '2022-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(664, '', 'Online Orientation on the Policy Guidelines of the Transition Program, Additional Curriculum for Learners with Visual Impairement and the Adapter K to 3 Melc for Filipino Sign Language', 'https://drive.google.com/file/d/1mU-9k0SNLqJZg6Hk-0kyNJgkZ1ABIyQq/view?usp=sharing', '259', '2022-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(665, '', 'Presentation of the Draft Division Education Development Plan (DEDP) 2022-2028 to Division Stakeholders', 'https://drive.google.com/file/d/1Y-XhPlTJOeOMBE9Vgg7GvOK04eoPVjrj/view?usp=sharing', '0', '2022-07-22', 'UNNUMBERED MEMORANDUM', 'active'),
(666, '0', 'Manila Council Scouting Orientation Courses/Webinars/Workshops, Activities, Conferences and Roundtables ', 'https://drive.google.com/file/d/13aF87ybR7Pkb4U2pBfhrg_Iua6C5pYnK/view?usp=sharing', '37', '2022-06-27', 'DIVISION CIRCULARS', 'active'),
(667, '', '2-day Training Boot Camp on a Developmental Career Education Program called ANCPAG', 'https://drive.google.com/file/d/1XbMF_TP1FIPT69uSO9nAu6b6xbwqe-JL/view?usp=sharing', '96', '2022-06-10', 'DIVISION ADVISORIES', 'active'),
(668, '', 'Invitation to Participate in Two Batches of 2-week Computer Training for Leaners with Visual Impairment and 3-day Computer Enhancement Training for Teachers with Visual Impairment', 'https://drive.google.com/file/d/1-_GUcNhpxBvWmutcYI_dU2c1efPrPYDX/view?usp=sharing', '244', '2022-06-10', 'UNNUMBERED MEMORANDUM', 'active'),
(669, '', '39th Principals Training and Development Program Cum National Board Conference', 'https://drive.google.com/file/d/1Xf8qvhvWVuFgXKZJmXt3lf1-JQxs5-EN/view?usp=sharing', '245', '2022-06-10', 'UNNUMBERED MEMORANDUM', 'active'),
(670, '', 'Project ATM: Awit, Tula, at Musika sa Matematika Workshop', 'https://drive.google.com/file/d/1CSAx7mHIzSNwsJB-7iORGWWcyyEd694C/view?usp=sharing', '247', '2022-06-09', 'UNNUMBERED MEMORANDUM', 'active'),
(671, '', 'Registry of Qualified Teachers Applicants for ES, JHS and SHS', 'https://drive.google.com/file/d/1SQXmlmmHSc48tMGUPUr9xBB0aen4j88J/view?usp=sharing', '171', '2022-07-01', 'NUMBERED MEMORANDUM', 'active'),
(672, '', 'Rosauro Almario ES - Acknowledgement Letter regarding rescheduled conduct of GAD Training ', 'https://drive.google.com/file/d/1JX8RnNRKqBNFDSH1yXSGFabY_jSX-RUf/view?usp=sharing', '111', '2022-06-21', 'MISCELLANEOUS MEMOS', 'active'),
(673, '', 'Conference on Library and Information Science (CLIS2022)', 'https://drive.google.com/file/d/1n-nGlDic7I86sEs9Hcdbqj_tDm-Or5en/view?usp=sharing', '97', '2022-05-25', 'DIVISION ADVISORIES', 'active'),
(674, '0', 'Spiritual Nourishment Forum', 'https://drive.google.com/file/d/1f9NppC0mYFbWG3Sp9otQMroNXU1TQq4n/view?usp=sharing', '31', '2022-06-15', 'DIVISION CIRCULARS', 'active'),
(675, '0', 'Conduct of Face to Face Training with Composition of Standard First Aid Training, Basic Life Support, Emergency Response Training', 'https://drive.google.com/file/d/1j7u3CxsEaMbvOVLXF5vZpgdPq4HJi-4S/view?usp=sharing', '32', '2022-06-14', 'DIVISION CIRCULARS', 'active'),
(676, '0', 'Blood Donation Drive ', 'https://drive.google.com/file/d/1W1TOKdsp6IE764WZPSxmXQlPiTGuQ_5h/view?usp=sharing', '33', '2022-06-14', 'DIVISION CIRCULARS', 'active'),
(677, '', 'Participation to the Child Road Safety Law Enforcement Visibility Day ', 'https://drive.google.com/file/d/1cNJFYcxUSEDizKTVNydcqh71xmRdAZQS/view?usp=sharing', '249', '2022-06-13', 'UNNUMBERED MEMORANDUM', 'active'),
(678, '', 'Revised Schedule, Updates and Reminders on the Online (NQESH)', 'https://drive.google.com/file/d/1YsxqoCsdL1GRUDKKPfj532UjHgq1SZtk/view?usp=sharing', '250', '2022-06-07', 'UNNUMBERED MEMORANDUM', 'active'),
(679, '', 'Conduct of the Division Education Development Plan (DEDP) Phase 3', 'https://drive.google.com/file/d/10cJ778fK6sIwcjRGK0eC8VzAKTDlWVEl/view?usp=sharing', '251', '2022-06-15', 'UNNUMBERED MEMORANDUM', 'active'),
(680, '', 'Executive Order No. 1 to 6 - Office of the Mayor ', 'https://drive.google.com/file/d/1ceh4PR7sTML6ESLQQa2cSYRwzWvfT1Xi/view?usp=sharing', '175', '2022-07-05', 'NUMBERED MEMORANDUM', 'active'),
(681, '0', 'Search for Mr. & Ms. Y-Prep', 'https://drive.google.com/file/d/1lNDNBPfvM9koP1NCNEXKqxg4NKEHikPx/view?usp=sharing', '38', '2022-07-08', 'DIVISION CIRCULARS', 'active'),
(682, '', 'JCI Manila \"Isinilang kang Kabilang\"', 'https://drive.google.com/file/d/1pxb1WCdoPZ9LuOpXvoSvz7NkrDFQkaiQ/view?usp=sharing', '276', '2022-07-07', 'UNNUMBERED MEMORANDUM', 'active'),
(683, '', 'Invitation to Selected Student Leaders to Participate in the In-Person Youth Empowerment for Service Leadership Seminar-Workshop(Yes-LSW)', 'https://drive.google.com/file/d/1qpOMIsEklrD7pDOKqfwa1p86QjVLYtkx/view?usp=sharing', '126', '2022-07-07', 'MISCELLANEOUS MEMOS', 'active'),
(684, '', 'Submission of Accomplishment Reports for Youth Formation Programs in Schools for SY 2021-2022', 'https://drive.google.com/file/d/1dlj4FlFK4RuBypzztn9S7DA-AZFd5x8V/view?usp=sharing', '177', '2022-07-08', 'NUMBERED MEMORANDUM', 'active'),
(685, '', 'Training of Trainers and Division Officials on the MOOE Web-Based Management System', 'https://drive.google.com/file/d/1dNmFcZTsgF8vshbGkxbu2JMe9AXnXvtK/view?usp=sharing', '179', '2022-07-08', 'NUMBERED MEMORANDUM', 'active'),
(686, '', 'Mr. Jonathan R. Galorio - Designated as OIC', 'https://drive.google.com/file/d/18Ns7-0l-ASJ0Pqk3-SX8QzU24R823-A9/view?usp=sharing', '174', '2022-07-05', 'NUMBERED MEMORANDUM', 'active'),
(687, '', 'Mr. Charlie DJ. Duñgo - Designated as OIC ', 'https://drive.google.com/file/d/1M94MLT_PZLKvh1ed8Xn2Fnnb39Qv2raD/view?usp=sharing', '173', '2022-07-05', 'NUMBERED MEMORANDUM', 'active'),
(688, '', 'Reorganization of the Physical Workplace Setup of the Human Resource Management Service (HRMS)', 'https://drive.google.com/file/d/12BqRwkRvdjixIXZBtXUmeWDpncDkqGT8/view?usp=sharing', '176', '2022-07-07', 'NUMBERED MEMORANDUM', 'active'),
(689, '', 'Request for the use of B. Aquino ES open grounds for the distribution of learners kit ', 'https://drive.google.com/file/d/1e4bNyJtKVehN5zFuqHRFgkm0lwgMv7Yy/view?usp=sharing', '128', '2022-07-08', 'MISCELLANEOUS MEMOS', 'active'),
(690, '', 'Request to use A. Mabini ES as venue for the Residence Identification (MRID) Registration', 'https://drive.google.com/file/d/1gVGMiF9lf6PI-dLMoIM6BihC9l_lYkWB/view?usp=sharing', '129', '2022-07-08', 'MISCELLANEOUS MEMOS', 'active'),
(691, '', 'Request for the Accommodation of Lanuza Health Center at C. Arellano HS', 'https://drive.google.com/file/d/1yZs8waw1icnq5KorhjQ1_AJGyAEbu22z/view?usp=sharing', '130', '2022-07-08', 'MISCELLANEOUS MEMOS', 'active'),
(692, '', 'Request to use A. Mabini ES for the 108th anniversary celebration of Iglesia ni Cristo', 'https://drive.google.com/file/d/1o0X9eggsCChI1-FJBurS09mRAQvnjvD3/view?usp=sharing', '131', '2022-07-08', 'MISCELLANEOUS MEMOS', 'active'),
(693, '', 'Request to use of J. Abad Santos High School as venue for the UCT-Listahan cash card distribution', 'https://drive.google.com/file/d/1yJWpa--z9I2cR_XB5SWpvtdZXk8mcHny/view?usp=sharing', '132', '2022-07-04', 'MISCELLANEOUS MEMOS', 'active'),
(694, '', 'Request to Use the Covered Court of M. Salvador ES for the Conduct of their 2kk Kapatid Values Formation Sessions', 'https://drive.google.com/file/d/1e6vBYXBwwIOsLdgOIVTZK5VMWOoi6DqM/view?usp=sharing', '133', '2022-07-08', 'MISCELLANEOUS MEMOS', 'active'),
(695, '', 'Request to use F. Torres HS as Venue for the Conduct of a Series Trainings for Red Cross Youth Advisers', 'https://drive.google.com/file/d/1PK37io0lkVp7zvpqCV8_oft-SXiNowa4/view?usp=sharing', '134', '2022-07-08', 'MISCELLANEOUS MEMOS', 'active'),
(696, '', 'Manuel Araullo HS - Capacity Building Activity', 'https://drive.google.com/file/d/1aFa3qsvfVYaUX_Dg3QghGkZSGLUWVBgo/view?usp=sharing', '135', '2022-07-11', 'MISCELLANEOUS MEMOS', 'active'),
(697, '', '2022 National Deped TV Teachers-Broadcaster Finalists and Awardees', 'https://drive.google.com/file/d/11qMAaElOD4D8u7Msl6ax2S9K13LJ7K_p/view?usp=sharing', '274', '2022-07-07', 'UNNUMBERED MEMORANDUM', 'active'),
(698, '', 'Grant of Service Credits/Compensatory Time-off For Service Rendered During the Celebration of 451st Araw ng Maynila', 'https://drive.google.com/file/d/1l6hIJj-RnoRUU_qC7_pcA2Q4oG2RhNAx/view?usp=sharing', '275', '2022-07-06', 'UNNUMBERED MEMORANDUM', 'active'),
(699, '', 'Grant of Service Credits/Compensatory Time-off - Preparation of Souvenir Program and Yearbook for Year-end Rites', 'https://drive.google.com/file/d/1eb1GpE6jVabc9b8Uz6tOUXcWjnaAIAFK/view?usp=sharing', '277', '2022-07-06', 'UNNUMBERED MEMORANDUM', 'active'),
(700, '', 'Additional School Assignments of Public Schools District Supervisors', 'https://drive.google.com/file/d/17AeQu-vIxSgnsAukt0bxi8JmGiDjm31i/view?usp=sharing', '278', '2022-07-07', 'UNNUMBERED MEMORANDUM', 'active'),
(701, '', 'Capacity Building for School Governance and Operations Division on Implementing Good Governance: Revisiting System and Processes for Organizational Effectiveness', 'https://drive.google.com/file/d/1-Q-tNtuZ-ljEiCZEJUBNbDqAYrbl4wK2/view?usp=sharing', '279', '2022-07-05', 'UNNUMBERED MEMORANDUM', 'active'),
(702, '', 'Seminar Workshop on Mainstreaming Gender and Development(GAD) Initiatives into Practice Towards Organizational Effectiveness', 'https://drive.google.com/file/d/1jWaZU3tXJAhgEtm_PGIYlslg9gEeCljq/view?usp=sharing', '280', '2022-07-11', 'UNNUMBERED MEMORANDUM', 'active'),
(703, '0', 'Conduct of Basic Life Support, Standard First Training, Ambulance Operation Training and Instructor Training Course for Red Cross Youth Advisers', 'https://drive.google.com/file/d/1L-Q3bPygxkZv6Vec6krj8MJyaSoXHCFB/view?usp=sharing', '39', '2022-07-08', 'DIVISION CIRCULARS', 'active'),
(704, '', 'Development of Web-Based Self-Assessment Tool ', 'https://drive.google.com/file/d/1srdlk74_DcWP4nInr5P4TnqA03rphG98/view?usp=sharing', '182', '2022-07-12', 'NUMBERED MEMORANDUM', 'active'),
(705, '', 'Winners in the Production and Validation of Video Lessons on the Practical of Science Concepts: ScieTeach', 'https://drive.google.com/file/d/1MQ7ROUzn7GLBQWbN4wFHOSYwL44LCWQm/view?usp=sharing', '183', '2022-07-12', 'NUMBERED MEMORANDUM', 'active'),
(706, '0', 'Nutrition Month Online Activities', 'https://drive.google.com/file/d/1PLLfvpnbtCClSruK0osCa8fBc5QZ_Un5/view?usp=sharing', '40', '2022-07-06', 'DIVISION CIRCULARS', 'active'),
(707, '', 'Participation to the Deped NCR Logged-IN + Blended Learning Version 3: Phase II', 'https://drive.google.com/file/d/1vILTiA8Wx-baKW8FX6Pi6rGnIP6zD9YE/view?usp=sharing', '285', '2022-07-11', 'UNNUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(708, '', 'Conduct of Ojo Eye Wears 2022 Free Eye Check-up Care Partnership Program ', 'https://drive.google.com/file/d/1RaoIr9ATv5PVHje8FafDsSLWPa8juH0W/view?usp=sharing', '102', '2022-07-13', 'DIVISION ADVISORIES', 'active'),
(709, '', 'Rescheduling of the 2022 International Mind Education Leaders Training', 'https://drive.google.com/file/d/1weHBoABK7N3A1FH2pMkXtOeKols5XmEv/view?usp=sharing', '101', '2022-07-08', 'DIVISION ADVISORIES', 'active'),
(710, '', 'Request to Use I. Delos Reyes ES as Venue for the Conduct of a Bloodletting Program. (Donate Blood..Save Lives', 'https://drive.google.com/file/d/1b_7rw1DSbslIbzLgHsmtbcsZXZln_aiX/view?usp=sharing', '140', '2022-07-15', 'MISCELLANEOUS MEMOS', 'active'),
(711, '', 'Dr. Nicanor M. Santos Jr. Veterinarian V. Vetennary Inspection Board is hereby desinated as Officer-in-Charge, thereat.', 'https://drive.google.com/file/d/1uyxSMonJcp8j9AIolsgtn3H_pS5S_Fde/view?usp=sharing', '187', '2022-07-08', 'NUMBERED MEMORANDUM', 'active'),
(712, '', 'Project(Bridging Financial Freedom) BFF for SDO Manila Employees Train the Trainers', 'https://drive.google.com/file/d/1R0apaCR-TIMqYZxbugdDpqiVa7qPq1r1/view?usp=sharing', '188', '2022-07-14', 'NUMBERED MEMORANDUM', 'active'),
(713, '', 'Creation of the Bids and Awards Committee (BAC) and the Composition and Designation of the Bac Members', 'https://drive.google.com/file/d/1IZgTK8FWU0onvVuamfPuy-WSJKj_8Irc/view?usp=sharing', '186', '2022-07-14', 'NUMBERED MEMORANDUM', 'active'),
(714, '', 'Creation of the Task Force Against Road Obstruction (TFARO) Of the City of manila', 'https://drive.google.com/file/d/1DRx5AM-qALdDuGDQ66gHj2vfCGNfDdst/view?usp=sharing', '185', '2022-07-14', 'NUMBERED MEMORANDUM', 'active'),
(715, '', 'Youth Formation Year-End Meeting with the Student Leaders and Division Teacher Adviser Coordinators', 'https://drive.google.com/file/d/1NSVEppZUNB-lPNXcejbfSIF754Ck9AAH/view?usp=sharing', '181', '2022-07-13', 'NUMBERED MEMORANDUM', 'active'),
(716, '', 'Reiteration on the Wearing of the Prescribe Uniform', 'https://drive.google.com/file/d/1I5HQch0ihqatKMTpQcq5jvS3llfdLZ3I/view?usp=sharing', '180', '2022-07-07', 'NUMBERED MEMORANDUM', 'active'),
(717, '', 'Atty. Cris P. Tenorio - Reassigned at the Manila Urban Settlements Office and disgnated as Office-in-Charge', 'https://drive.google.com/file/d/1vWVjgsXHAEb8OBLDMhJSDMSi05zn9YlS/view?usp=sharing', '178', '2022-07-04', 'NUMBERED MEMORANDUM', 'active'),
(718, '', 'Participation to the Manila Bay Rehabilitation Program - Tree/Mangrove Planting and Clean-up Drive', 'https://drive.google.com/file/d/13Lwod-SOSBNTB5LGGK3-yA3m9vpZt-M0/view?usp=sharing', '281', '2022-07-08', 'UNNUMBERED MEMORANDUM', 'active'),
(719, '', 'Invitation to Attend a Series of International Webinar-Workshop for Teaching in the Content Areas', 'https://drive.google.com/file/d/1tvDXWWiLcSxeWPT0lsWWIcAtNsYco0BY/view?usp=sharing', '103', '2022-07-12', 'DIVISION ADVISORIES', 'active'),
(720, '', 'Request to use the Schools for the Conduct of General Assembly for Not Attending School (NAS) Children for District I', 'https://drive.google.com/file/d/1-UkMlHxMXKkLuzy9Oq4bCTYzeJrvJEwZ/view?usp=sharing', '139', '2022-07-12', 'MISCELLANEOUS MEMOS', 'active'),
(721, '0', '35th Biennial Chapter Assembly at the Fiesta Pavilion of Manila Hotel, One Rizal', 'https://drive.google.com/file/d/1V0qznsabrrYzCEuRfrvdzFg_ClgHptCP/view?usp=sharing', '41', '2022-07-13', 'DIVISION CIRCULARS', 'active'),
(722, '', 'Request to Use of Lakan Dula High School as venue for the UCT-Listahan Cash Distribution', 'https://drive.google.com/file/d/1X2SBszJ3cNfYcwjXZ-Kh9ohTKJlNBlbw/view?usp=sharing', '136', '2022-07-12', 'MISCELLANEOUS MEMOS', 'active'),
(723, '', 'Request to Use of E. Abada High School as venue for the Social Pension Payout for District 4 Beneficiaries', 'https://drive.google.com/file/d/1KIbvjdi8W1Mavm7dBxMTmqismSpzX2I0/view?usp=sharing', '137', '2022-07-07', 'MISCELLANEOUS MEMOS', 'active'),
(724, '', 'Request to Use A. Mabini Elementary School as Venue for the Manila Residence Identification (MRID) Registration', 'https://drive.google.com/file/d/1fZ8wiJ4dCskEIXAAsz_KdseZimwlyPjs/view?usp=sharing', '138', '2022-07-12', 'MISCELLANEOUS MEMOS', 'active'),
(725, '', '4-Day Basic Occupational Safety and Health Training (SO2) for SDO Personnel', 'https://drive.google.com/file/d/1Aqaiofqaui__RdKP8vawxRzweaNlp7OR/view?usp=sharing', '284', '2022-07-14', 'UNNUMBERED MEMORANDUM', 'active'),
(726, '', 'Winners in the Philippine National Math and Science Olympiad (PIMSO 2022) Science Category', 'https://drive.google.com/file/d/1q12xjQX3U7B3bcM1XxlaBySlyEWN92Vi/view?usp=sharing', '283', '2022-07-12', 'UNNUMBERED MEMORANDUM', 'active'),
(727, '', 'Addendum to UNNUMBERED MEMORANDUM Memorandum Dated July 6, 2022 entitled Grant of Service Credit/Compensatory Time-off for Service Rendered During the Celebration of the 451st Araw ng Maynila', 'https://drive.google.com/file/d/1AE00cAQhpV6eHvk3KhQ5MB7EPWkHoEX2/view?usp=sharing', '282', '2022-07-13', 'UNNUMBERED MEMORANDUM', 'active'),
(728, '', 'School Assignment of Deped Dentists', 'https://drive.google.com/file/d/1UIZyMywJF-YDKeAC4lOY5nivwvfXMjga/view?usp=sharing', '304', '2022-07-20', 'UNNUMBERED MEMORANDUM', 'active'),
(729, '', 'Comics: As Intervention and Supplementary Learning Materials for Science, Math, Filipino, and English Least Master Competencies', 'https://drive.google.com/file/d/1eifNtXY2gFodLyPSUjcxJlKUDoTU4fOW/view?usp=sharing', '305', '2022-07-21', 'UNNUMBERED MEMORANDUM', 'active'),
(730, '', 'Seminar on Teaching Grammar Communicatively in the Philippines', 'https://drive.google.com/file/d/1SRjwGfw5s6mqRz5k1F47DZ6UdeEtc6s3/view?usp=sharing', '300', '2022-07-22', 'UNNUMBERED MEMORANDUM', 'active'),
(731, '', 'Participation in the 2022 Brigada Eskwela Division Kickoff at Jose Abad Santos High School on August 2, 2022', 'https://drive.google.com/file/d/1USs4J0xm6IEqIFxz_vgF80UBbngES6yZ/view?usp=sharing', '301', '2022-07-25', 'UNNUMBERED MEMORANDUM', 'active'),
(732, '', 'Capacity Building and Workship on Child Protection for District Trainers in Partnership with Asmae Philippines, INC.', 'https://drive.google.com/file/d/182EYcWmtly0SHvcJTYA2-dUfPRUwjHTJ/view?usp=sharing', '297', '2022-07-20', 'UNNUMBERED MEMORANDUM', 'active'),
(733, '', '122nd Philippine Civil Service Anniversary (PCSA) Calendar of Activities', 'https://drive.google.com/file/d/1pxMikuPAHIynNi353FArBuZQgUzaKH1H/view?usp=sharing', '205', '2022-07-28', 'NUMBERED MEMORANDUM', 'active'),
(734, '', 'Organization and Composition of the City Development Council of Manila Pursuant to the Local Government Code of 1991', 'https://drive.google.com/file/d/1lxmoo3MZDFOJt4GEEuK27JvNylyelm1x/view?usp=sharing', '203', '2022-07-29', 'NUMBERED MEMORANDUM', 'active'),
(735, '', 'Division Audit of Teachers Allotment (Data) Team Field Visit', 'https://drive.google.com/file/d/1nTxuWA4ub73UqHCg4YpqlTqFmtIzrrx8/view?usp=sharing', '201', '2022-07-26', 'NUMBERED MEMORANDUM', 'active'),
(737, '', 'Conduct of the Mid-Year Quarterly Division Program Implementation Review (PIR) For Fiscal Year 2022', 'https://drive.google.com/file/d/1Zr6GKo7PjxkrOsyels_csWREFyppj7PS/view?usp=sharing', '198', '2022-07-20', 'NUMBERED MEMORANDUM', 'active'),
(738, '', 'Creation of the Statement Assets, Liabilities, and Networth(SALN) Review and Compliance Committee of the City Government of Manila', 'https://drive.google.com/file/d/1x5KteObHkl2SWwpUCkGtpoetJAbiMADP/view?usp=sharing', '196', '2022-07-20', 'NUMBERED MEMORANDUM', 'active'),
(739, '', 'Development of Scheme of Work for Mathematics 1 to 10', 'https://drive.google.com/file/d/1RmR8Fo9PhVozCVuBNHaaTI83e_7iUJOS/view?usp=sharing', '308', '2022-08-01', 'UNNUMBERED MEMORANDUM', 'active'),
(740, '', 'Division Wide Oplan Balik Eskwela and Brigada Eskwela for School Year 2022-2023', 'https://drive.google.com/file/d/1RlhHWmgaPb7iUwU_u6FbIyTmAB03Arsv/view?usp=sharing', '207', '2022-07-27', 'NUMBERED MEMORANDUM', 'active'),
(741, '', 'First Friday Mass at the Manila City Hall', 'https://drive.google.com/file/d/1DHU4dn08c4402FA5p4KV2GDYZC1JVwJn/view?usp=sharing', '206', '2022-08-02', 'NUMBERED MEMORANDUM', 'active'),
(742, '', 'Amendment to Executive Order No.7 Series of 2022 on the Creation o the Task Force Against Road Obstruction (TFARO) of the City of Manila', 'https://drive.google.com/file/d/1SE7o__-W8SBStnVR7sMvTB3gX0QzyS_V/view?usp=sharing', '202', '2022-07-29', 'NUMBERED MEMORANDUM', 'active'),
(743, '', 'Designation of Official Signatories for Various Permits Issued by the City of Manila', 'https://drive.google.com/file/d/1_kif2gxka0juq_DJUj7ic46sU2CG65Wb/view?usp=sharing', '209', '2022-08-01', 'NUMBERED MEMORANDUM', 'active'),
(744, '', 'Mass Training of ALS Teachers on the Implementation of the ALS Law and its Implementing Rules and Regulation', 'https://drive.google.com/file/d/1czYsdSYpIwHUXcqRZ5svqkhGtngEp0Gs/view?usp=sharing', '291', '2022-07-18', 'UNNUMBERED MEMORANDUM', 'active'),
(746, '', 'Corrigendum to Division Memorandum No. 164, S. 2022', 'https://drive.google.com/file/d/11dszVdk0iqCmF0n2eXJFC5jvxr5083CB/view?usp=sharing', '195', '2022-07-18', 'NUMBERED MEMORANDUM', 'active'),
(747, '', 'Request to Utilize Public Schools as Venue during the Conduct of the Licensure Examination for Professional Teacher (LEPT)', 'https://drive.google.com/file/d/1894EDCU3-piMgq9BrZl7RK6cm3qcTRG1/view?usp=sharing', '143', '2022-07-19', 'MISCELLANEOUS MEMOS', 'active'),
(748, '0', 'Mental Health Webinar on the Topic: Mind Settling for the Coming Face-to-face School Year', 'https://drive.google.com/file/d/1SoHMHfBZjAbO3CDB8lEXlmJAzXXiX1KL/view?usp=sharing', '42', '2022-07-15', 'DIVISION CIRCULARS', 'active'),
(749, '', 'Preparation of the School Learning Recovery and Continuity Plan (LRCP)', 'https://drive.google.com/file/d/1Tbm91yRSizKTXWOQX8ogcZJDd32ArZgq/view?usp=sharing', '191', '2022-07-18', 'NUMBERED MEMORANDUM', 'active'),
(750, '', 'Request to Utilize Public Schools to conduct of the Career Service Examination - Pen and Paper Test (CSE-PPT) Sub-Professional Level', 'https://drive.google.com/file/d/1tR-yXxYf7w5jy4dqS36O-VD01w4R5vMY/view?usp=sharing', '141', '2022-07-18', 'MISCELLANEOUS MEMOS', 'active'),
(751, '', 'Addendum to UNNUMBERED MEMORANDUM Memorandum Dated July 11, 2022 (Seminar-Workshop on Mainstreaming Gender and Development (GAD) Initiatives into Practice Towards Organizational Effectiveness', 'https://drive.google.com/file/d/10wmHMRRV9wgbJo3U0PF8782SqAc0lIIg/view?usp=sharing', '288', '2022-07-18', 'UNNUMBERED MEMORANDUM', 'active'),
(752, '', 'Authorized Personnel to Pick up Disbursing and Financial Documents From the Accounting Services', 'https://drive.google.com/file/d/1iXVn4ar6YOI7DkigWP-u7si7Wugwxydr/view?usp=sharing', '299', '2022-07-21', 'UNNUMBERED MEMORANDUM', 'active'),
(753, '', 'Request for six (6) schools, 1 per district - which will serve as Vaccination Sites', 'https://drive.google.com/file/d/1DDGuTM6cV9xctKhczhSpz6KpLAUloBBg/view?usp=sharing', '146', '2022-07-28', 'MISCELLANEOUS MEMOS', 'active'),
(754, '', 'Coordination Meeting on the Basic Education Facilities Fund (BEFF) Repair and Rehabilitation of Classrooms and Construction of School Buildings', 'https://drive.google.com/file/d/1a2PnIyzOCmO0zNmpsaXh8-v0945VbdVE/view?usp=sharing', '0', '2022-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(755, '', 'Regional Amplified Numeracy Assessment', 'https://drive.google.com/file/d/1889E1wKVClABRZ_uB9KyJwZY13P4rIO8/view?usp=sharing', '307', '2022-08-01', 'UNNUMBERED MEMORANDUM', 'active'),
(756, '', 'The Local Finance Committee', 'https://drive.google.com/file/d/1Lddeh-VYshaTw9lbSJLoBBkvjNZ3iGpZ/view?usp=sharing', '204', '2022-07-29', 'NUMBERED MEMORANDUM', 'active'),
(757, '', 'Request to Use G.Del Pilar Covered Court As Venue to Conduct of Unity Games of 2022 of Kapisanang Pangsambahayan', 'https://drive.google.com/file/d/1I-SVYJKDR5bDALJZZM6s7Uc4M0s-6DGF/view?usp=sharing', '148', '2022-08-01', 'MISCELLANEOUS MEMOS', 'active'),
(758, '', 'Partnership Learning Sessions for School Heads, Assistant Principals, Schools Partnership Focal Persons and ALS Education Program Specialists', 'https://drive.google.com/file/d/1Ioc_0kkKZ41exqlxY8atjV0GQouBeEAY/view?usp=sharing', '295', '2022-07-20', 'UNNUMBERED MEMORANDUM', 'active'),
(759, '', 'Reorganization of the Local Health Board of the City of Manila to Accord Utmost Importance to the Health Needs of Every Manileno', 'https://drive.google.com/file/d/1jGquMnAQvs0Rt8LWgwV6qQ4KCnjGXGop/view?usp=sharing', '194', '2022-07-19', 'NUMBERED MEMORANDUM', 'active'),
(761, '', 'Mandating Cleanliness in all Barangays and Enjoining all Barangay Officials, Officers and Employees to Adopt a Conduct of Cleanliness and Orderliness Reflective of their Service to the Manileno       ', 'https://drive.google.com/file/d/1P--mkAFZV-TGu2PaBUdFmMcF27jXQe7U/view?usp=sharing', '189', '2022-07-18', 'NUMBERED MEMORANDUM', 'active'),
(762, '', '4th International Marathon Lecture on Education ', 'https://drive.google.com/file/d/1jzQepQIf42ewJDjZk0IlySYdy5VfIaJ5/view?usp=sharing', '104', '2022-07-18', 'DIVISION ADVISORIES', 'active'),
(763, '', 'Seminar-Workshop on Environmental Education for Educators', 'https://drive.google.com/file/d/1bQhw2HYsBJOItLsg4oV9dqRN_A2BtDSX/view?usp=sharing', '303', '2022-07-27', 'UNNUMBERED MEMORANDUM', 'active'),
(764, '', '2022 Division Brigada Eskwela Kick-Off', 'https://drive.google.com/file/d/1rP_xsNyGrnxLgamUa7gnQtfEZFR1Is_L/view?usp=sharing', '0', '2022-07-26', 'UNNUMBERED MEMORANDUM', 'active'),
(765, '', 'Enrollment and Opening of Class Preparation ', 'https://drive.google.com/file/d/1Hfrpa6-gCrlwLZ_fFLKIBQ-hQlAe3FD5/view?usp=sharing', '0', '2022-07-26', 'UNNUMBERED MEMORANDUM', 'active'),
(766, '', 'Masteral Program for City Employees', 'https://drive.google.com/file/d/1c_Ovt2PtJxZR5kZtKTu2Wk5E5YJIjAhW/view?usp=sharing', '197', '2022-07-19', 'NUMBERED MEMORANDUM', 'active'),
(767, '', 'Corrigendum to UNNUMBERED MEMORANDUM Memorandum Dated July 21, 2022 (Comics: As Intervention and Supplementary Learning Materials for Science, Math, Filipino and English Least Mastered Competencies', 'https://drive.google.com/file/d/1jIyEAcDAGXM743AdKlowqQSuzwdn3HT0/view?usp=sharing', '309', '2022-08-01', 'UNNUMBERED MEMORANDUM', 'active'),
(768, '', 'MPSSLA Calendar Activities and Other Matters', 'https://drive.google.com/file/d/1DNMpsBV1TYtARQ5IUrxqa_CEgETDNXcC/view?usp=sharing', '0', '2022-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(769, '', 'Request to use E. Quirino HS as Venue for Manila Residence Identification (MRID) Registration', 'https://drive.google.com/file/d/1Nw5Y8yT41lrDTamlMDxQIWirzVk4vIWU/view?usp=sharing', '147', '2022-08-01', 'MISCELLANEOUS MEMOS', 'active'),
(770, '', 'Reiteration on the Submission of Office/Division/Individual Performance Commitment and Review (O/D/IPCRF) Forms', 'https://drive.google.com/file/d/1RZPPIo5j57peEoEJFY1S7rxp2s2AFIxZ/view?usp=sharing', '208', '2022-07-26', 'NUMBERED MEMORANDUM', 'active'),
(771, '', 'Planning Session for MPSSLA Calendar Activities for SY 2022-2023 - 1st Professional Meeting - Other Matters', 'https://drive.google.com/file/d/1093FB5S7qV0Cgnyha4oCB4RbJuoFBFRy/view?usp=sharing', '0', '2022-07-29', 'UNNUMBERED MEMORANDUM', 'active'),
(772, '', 'ALS Graduation', 'https://drive.google.com/file/d/1OofSwW5QVxS33zEZpB9s53cdY35PKGT0/view?usp=sharing', '0', '2022-07-25', 'UNNUMBERED MEMORANDUM', 'active'),
(773, '', '4-Day Basic Occupational Health and Safety Training (SO2) for SDO Personnel ', 'https://drive.google.com/file/d/1bGdIWezq1fNTkeBp49PTGjVdnLWjVfRs/view?usp=sharing', '105', '2022-07-20', 'DIVISION ADVISORIES', 'active'),
(774, '', 'Futsal Level 1 Training ', 'https://drive.google.com/file/d/1DNL8XNTbcHYfCvypzLYHZ0QjLLksPBKL/view?usp=sharing', '289', '2022-07-19', 'UNNUMBERED MEMORANDUM', 'active'),
(775, '', 'Nestle Wellness Campus Program Division Implementation', 'https://drive.google.com/file/d/1gPwwif7aqausi9j4209exQ66L85EY18N/view?usp=sharing', '290', '2022-07-18', 'UNNUMBERED MEMORANDUM', 'active'),
(776, '', 'Antonio J. Villegas Vocational High School - Gender and Development Capacity Building', 'https://drive.google.com/file/d/19kvA7zo3f4_m7kCf3kZxVzJODaHNw7Tc/view?usp=sharing', '144', '2022-07-19', 'MISCELLANEOUS MEMOS', 'active'),
(777, '', 'Valeriano E. Fugoso Memorial Elem. School - Gender and Development and Advancement on Mitigating Risks Disaster', 'https://drive.google.com/file/d/1rVSV0w3NIbKXeQ6iRqjxOO1GJSxrlpu4/view?usp=sharing', '145', '2022-07-19', 'MISCELLANEOUS MEMOS', 'active'),
(778, '', 'Call for Participation: Consultative-Meeting on the Development of School Forms Management System', 'https://drive.google.com/file/d/15vJM0To-aWgVs_DfSDPs94Ys5klW3elO/view?usp=sharing', '190', '2022-07-18', 'NUMBERED MEMORANDUM', 'active'),
(779, '', 'Review Classes for Civil Service Career Examination (Professional/Subprofessional)', 'https://drive.google.com/file/d/1qYMJqyTKjYjnGoc0QaaA5v2i-SXVV731/view?usp=sharing', '192', '2022-07-15', 'NUMBERED MEMORANDUM', 'active'),
(780, '', 'Officers and Governing Board - Strategic Planning and Capability Building', 'https://drive.google.com/file/d/1XW9BkCszPdY4TYUONbPmPx9OgRPN9iM7/view?usp=sharing', '142', '2022-07-18', 'MISCELLANEOUS MEMOS', 'active'),
(781, '', 'Inventory of Textbooks and other print and non-print materials - Accomplishment Report - Other Matters', 'https://drive.google.com/file/d/1X2E93UuqWAyixf-RgtnwE0qarxeW8ynk/view?usp=sharing', '0', '2022-07-20', 'UNNUMBERED MEMORANDUM', 'active'),
(782, '', 'Additional School Assignments of Mr. Luis M. Anchillo, Public Schools District Supervisor', 'https://drive.google.com/file/d/1gcLeosUhZecWlCGl-S-vUGASBhhgcz13/view?usp=sharing', '286', '2022-07-15', 'UNNUMBERED MEMORANDUM', 'active'),
(800, '', 'VISIT OF THE IMAGE AND EUCHARISTIC CELEBRATION IN HONOR OF THE ANNUAL FEAST OF THE BLACK NAZARENE', 'https://drive.google.com/file/d/1N76mPh5ixKR4svRqjuhrzVaV7j3zXgll/view?usp=sharing', '237', '2021-12-28', 'NUMBERED MEMORANDUM', 'active'),
(801, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1CVLnT8v_WlQ0XlgreMfH1rlCievJzQs2/view?usp=sharing', '236', '2021-12-27', 'NUMBERED MEMORANDUM', 'active'),
(802, '', 'AN ORDER PROVIDING FOR THE GUIDELINES ON THE MANUFACTURE, SALE, DISTRIBUTION OR USE OF FIRECRACKERS AND PYROTECHNIC DEVICES, INCLUDING THE CONDUCT OF COMMUNITY FIREWORKS DISPLAY WITHIN THE CITY OF MAN', 'https://drive.google.com/file/d/1wWXNIVMQKPS-FLDR2114SpCL7PCHlnw3/view?usp=sharing', '235', '2021-12-29', 'NUMBERED MEMORANDUM', 'active'),
(803, '', 'AN ORDER DECLARING HALF-DAY WORK SUSPENSION FOR OFFICES IN THE CITY GOVERNMENT OF MANILA DECEMBER 24, 2021 AND DECEMBER 31, 2021', 'https://drive.google.com/file/d/1lGF3J1CHh551FIiFlfSNmFgqbOWdU9dB/view?usp=sharing', '234', '2021-12-23', 'NUMBERED MEMORANDUM', 'active'),
(804, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/16FxMRRQmG7uA0f_2HDWDTe5fyQZ8MhyV/view?usp=sharing', '233', '2021-12-20', 'NUMBERED MEMORANDUM', 'active'),
(805, '', '2ND MANILA AMAZING COUPLE RACE 2021', 'https://drive.google.com/file/d/1KVUEeB7Uf-_Dbm2YrmgkgK3oondfc7e6/view?usp=sharing', '232', '2021-12-15', 'NUMBERED MEMORANDUM', 'active'),
(806, '', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1Eb0DD3GJsMPKjJjLmQ647su3ln4jEhdk/view?usp=sharing', '231', '2021-12-09', 'NUMBERED MEMORANDUM', 'active'),
(807, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1CuJUz_bBPeJojg1DRDUoJM9Kz0xuLdGT/view?usp=sharing', '230', '2021-12-10', 'NUMBERED MEMORANDUM', 'active'),
(808, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1ZbWF-H43B4H00LjQHeWG-zM251w93gSP/view?usp=sharing', '229', '2021-11-24', 'NUMBERED MEMORANDUM', 'active'),
(809, '', 'RESCHEDULE OF COMPOSITE TEAM MONITORING FOR EXPANSION PHASE OF FACE-TO-FACE CLASSES', 'https://drive.google.com/file/d/1JekTbkNK3Ipvlz1uXUvj2Ga2_Hp-Cjx6/view?usp=sharing', '228', '2021-12-06', 'NUMBERED MEMORANDUM', 'active'),
(810, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1ZyKQ2-ExSpVxoNqTZJL_X_rUZX9afQfb/view?usp=sharing', '227', '2021-12-03', 'NUMBERED MEMORANDUM', 'active'),
(811, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1q96dHddjai6VesmEC8HB_aar4KZzSCYI/view?usp=sharing', '226', '2021-12-02', 'NUMBERED MEMORANDUM', 'active'),
(812, '', 'SEAL OF OFFICE ACHIEVEMENT AND REFORM (SOAR) 2021 EXEMPLARY SCHOOL HEAD AND EMPLOYEE AWARD', 'https://drive.google.com/file/d/1aZ_fjTiLtrR-fxKjmKOAe4VFb3Zlwv_4/view?usp=sharing', '225', '2021-12-02', 'NUMBERED MEMORANDUM', 'active'),
(813, '', 'FIX TO LEARN ON FLEXIBLE LEARNING MODALITIES DIGITAL ENTREPRENEURSHIP FOR DEPED MANILA', 'https://drive.google.com/file/d/1jXH7_q3Bcu1IMvdHDUDweUAkvTo2A37m/view?usp=sharing', '224', '2021-12-02', 'NUMBERED MEMORANDUM', 'active'),
(814, '', 'FOCUS GROUP DISCUSSION ON ATTRIBUTION AND USE OF HARMONIZED GENDER AND DEVELOPMENT GUIDELINES (HGDG) TOOL', 'https://drive.google.com/file/d/1n4P1r6Ri_jE1aJpc45Tvw8XPXCd1Y4bV/view?usp=sharing', '223', '2021-12-02', 'NUMBERED MEMORANDUM', 'active'),
(815, '', 'FLEX TO LEARN TRAIN THE TRAINER PROGRAM FOR TEACHERS OF THE INTERGRATED ENTREPRENEURSHIP MODULE ON DIGITAL ENTREPRENEURSHIP PROPOSAL FOR DEPED MANILA', 'https://drive.google.com/file/d/1TAXYZwLLa2RGt8Vzy5RZN3qf63ZIXlQS/view?usp=sharing', '222', '2021-12-02', 'NUMBERED MEMORANDUM', 'active'),
(816, '', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING PERSONNEL - SECONDARY LEVEL AND TEACHING RELATED PERSONNEL', 'https://drive.google.com/file/d/1XRZVDFKbg02xVPbzVJWgEZ4b352t7z5h/view?usp=sharing', '221', '2021-11-22', 'NUMBERED MEMORANDUM', 'active'),
(817, '', 'COMPOSITE TEAM AND EXPANSION FOR THE FACE-TO-FACE CLASSES', 'https://drive.google.com/file/d/1fuSGKzQAdF1OsFGtL6tCwo05Q_EpYRD0/view?usp=sharing', '220', '2021-11-25', 'NUMBERED MEMORANDUM', 'active'),
(818, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1kIPsNY6Ikf3GYapqAlNhOi1v66Ho1YWb/view?usp=sharing', '219', '2021-11-25', 'NUMBERED MEMORANDUM', 'active'),
(819, '', 'PERSONS WILLING TO DELIVER (PWD) SERVICE AT IT\'S BEST GENDER EQUALITY, DISABILITY, SOCIAL INCLUSION AND SENIORS', 'https://drive.google.com/file/d/14VFHxXqPompRSzPg6aqAbR1efG9YGB2P/view?usp=sharing', '218', '2021-11-23', 'NUMBERED MEMORANDUM', 'active'),
(820, '', '2ND AMAZING COUPLE RACE', 'https://drive.google.com/file/d/1uu0UBbcLCm_ZohXXHGmSmtsQxayAxqUf/view?usp=sharing', '217', '2021-11-24', 'NUMBERED MEMORANDUM', 'active'),
(821, '', '2021 BRIGADA ESKWELA SEARCH FOR BEST IMPLEMENTING SCHOOLS WINNERS', 'https://drive.google.com/file/d/1gdtXKu0wgkmDFF8ySZAnO3GWHIr3yHIU/view?usp=sharing', '216', '2021-11-23', 'NUMBERED MEMORANDUM', 'active'),
(822, '', '2022 BUGDET EXECUTION DOCUMENTS (BED)', 'https://drive.google.com/file/d/1dY20l-46lFuJ7KR_OMQd32Qlpl5Su3v6/view?usp=sharing', '212', '2021-11-19', 'NUMBERED MEMORANDUM', 'active'),
(823, '', 'STRICT IMPLEMENTATION OF CSC MC NO17 \"100% SMOKE FREE POLICY A SMOKING PROHIBITION IN ALL AREAS ON GOVERNMENT PREMISES, BUILDING GROUNDS, EXPECT FOR OPEN SPACES DESIGNATED AS SMOKING AREAS\" AND CITY O', 'https://drive.google.com/file/d/1X_6UH9-qylUgExYYX4qhZ_QAxN5XaQtE/view?usp=sharing', '210', '2021-11-17', 'NUMBERED MEMORANDUM', 'active'),
(824, '', 'CONDUCT OF REGIONAL STUDENT DEBATE', 'https://drive.google.com/file/d/15vGDLHM1QMYD-RdI1cAszCrMEeIcIOL3/view?usp=sharing', '209', '2021-11-18', 'NUMBERED MEMORANDUM', 'active'),
(825, '', 'DESIGNATION OF FOCAL PERSON FOR MANAGEMENT OF PRIVATE SCHOOLS', 'https://drive.google.com/file/d/1OS4mTt4u1cGlaQE17sktSKf7MphmvuN-/view?usp=sharing', '208', '2021-11-17', 'NUMBERED MEMORANDUM', 'active'),
(826, '', 'NEW PARKING SCHEME AT THE DIVISION OF CITY SCHOOLS MANILA', 'https://drive.google.com/file/d/1Ddi-Dvzh7OvrJTBoMmDj9H9q4Nta8i0E/view?usp=sharing', '207', '2021-11-17', 'NUMBERED MEMORANDUM', 'active'),
(827, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1LAF-FEJ1wbomPmn4LwdE7sa6of4LCzGA/view?usp=sharing', '206', '2021-11-12', 'NUMBERED MEMORANDUM', 'active'),
(828, '', 'DIVISION FEDERATION OFFICERS OF SUPREME PUPIL/STUDENT GOVERNMENT AND TEACHER-ADVISERS\' DIVISION AND DISTRICT COORDINATORS FOR S.Y. 2021-2022', 'https://drive.google.com/file/d/1QiG41yVRkpbeMu8Rx1lnj-tyYeJXufAm/view?usp=sharing', '205', '2021-11-10', 'NUMBERED MEMORANDUM', 'active'),
(829, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1F4n4jcYcwlUgHnAsZWiaTe-KOtDoybuf/view?usp=sharing', '204', '2021-11-10', 'NUMBERED MEMORANDUM', 'active'),
(831, '', 'RANDOM MONITORING OF ADMINISTRATIVE AIDES 1 (UTILITY WORKER AND WATCHMENT/SECURITY GUARDS', 'https://drive.google.com/file/d/1J9GsSnu0W75K4Kz2b_VLUHWoBaUhi8nW/view?usp=sharing', '202', '2021-11-09', 'NUMBERED MEMORANDUM', 'active'),
(832, '', '1-DAY WEBINAR ON STRESS CARE AND PSYCHOLOGICAL WELLNESS FOR TEACHERS AND SCHOOL PERSONNEL', 'https://drive.google.com/file/d/18nZVHAOPzFJECrflPY6kQUMsvWYMxBS-/view?usp=sharing', '201', '2021-11-09', 'NUMBERED MEMORANDUM', 'active'),
(833, '', 'PROJECT BFF (BRIDGING FINANCIAL FREEDOM) FOR SDO MANILA EMPLOYEES', 'https://drive.google.com/file/d/1l9tfd1BV2swP_equzKchcELcLQrWDXDD/view?usp=sharing', '200', '2021-11-09', 'NUMBERED MEMORANDUM', 'active'),
(834, '', 'AN ORDER DECLARING THE USE OF FACE SHIELDS AS NON-MANDATORY IN THE CITY OF MANILA EXCEPT IN HOSPITAL SETTING, MEDICAL CLINICS, AND OTHER MEDICAL FACILITIES', 'https://drive.google.com/file/d/1bJZmr_7LBmXU10wlVkym9rGK99mv1E8E/view?usp=sharing', '199', '2021-11-09', 'NUMBERED MEMORANDUM', 'active'),
(835, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1lZW1_-QOI4qHgMFODG_OuAhTvoC5Bpke/view?usp=sharing', '198', '2021-11-05', 'NUMBERED MEMORANDUM', 'active'),
(836, '', 'WORKSFORCE ARRANGEMENT FOR ALERT LEVEL II', 'https://drive.google.com/file/d/1h2ASt-XxB68mL4OKSIh9wX3GpS_0msiw/view?usp=sharing', '197', '2021-11-05', 'NUMBERED MEMORANDUM', 'active'),
(837, '', 'IMPLEMENTATION OF THE ALTERNATIVE WORK ARRANGEMENT OR SKELETAL WORK FORCE IN RELATION TO COVID-19', 'https://drive.google.com/file/d/1Dfz1wnEcXRn4Pdn3Jtz6xuVGO8pC-C-m/view?usp=sharing', '196', '2021-11-04', 'NUMBERED MEMORANDUM', 'active'),
(838, '', 'SUBMISSION OF GENDER AND DEVELOPMENT ACCOMPLISHMENT REPORT CY 2021 AND GENDER AND DEVELOPMENT PLAN AND BUDGET FOR CY 2023', 'https://drive.google.com/file/d/1Kv4jlnQMukIHDJk-ro5Pdx4s9l4abQgt/view?usp=sharing', '191', '2021-10-28', 'NUMBERED MEMORANDUM', 'active'),
(839, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1UT-wWuNlHi_hzuD4xKPHEr_2iHERHfqT/view?usp=sharing', '190', '2021-10-28', 'NUMBERED MEMORANDUM', 'active'),
(840, '', 'INVITATION OF OJO EYEWEAR PHILIPPINES FOR FREE EYE CHECK-UP', 'https://drive.google.com/file/d/1LNBYDYTyUfRLpSxreE6xDEiQupKvP4GK/view?usp=sharing', '189', '2021-10-28', 'NUMBERED MEMORANDUM', 'active'),
(841, '', 'PAGPAPAALALA NG PAGPAPASKIL NG CITIZEN\'S CHARTER SA LABAS NG ATING KAGAWARAN/TANGGAPAN AT KAWANIHAN', 'https://drive.google.com/file/d/1OeZ31d50RszeKDuSK71jEr-0hm9mBzfM/view?usp=sharing', '188', '2021-10-26', 'NUMBERED MEMORANDUM', 'active'),
(842, '', 'SCHOLARSHIP INVITATION FROM JAPAN INTERNATIONAL COOPERATION AGENCY (JICA)', 'https://drive.google.com/file/d/1KBkV7s6pwTZZ-bw1lbVkuDc2SB6TIL1O/view?usp=sharing', '187', '2021-10-26', 'NUMBERED MEMORANDUM', 'active'),
(843, '', 'POLICY GUIDELINES ON THE DEPLOYMENT OF NEW TEACHERS IN THE ELEMENTARY SCHOOLS', 'https://drive.google.com/file/d/1obw6qi2_Y9AIaoaGufqNCOJE3ufDrEq_/view?usp=sharing', '186', '2021-10-25', 'NUMBERED MEMORANDUM', 'active'),
(844, '', 'NOTICE OF WATER SERVICE INTERRUPTION', 'https://drive.google.com/file/d/16OzCBt7OG_c3rDDifEOXLxSV5xtCFttp/view?usp=sharing', '185', '2021-10-25', 'NUMBERED MEMORANDUM', 'active'),
(845, '', 'PREPARATIONS FOR THE PILOT FACE-TO-FACE, EXPANSION, AND TRANSITIONING TO NEW NORMAL', 'https://drive.google.com/file/d/1joSDo8LdyZ1app76YR-AhzVrF0Ft_i_u/view?usp=sharing', '184', '2021-10-25', 'NUMBERED MEMORANDUM', 'active'),
(846, '', 'GENERAL ASSEMBLY, ORIENTATION AND FEDERATION ELECTIONS OF THE SUPREME PUPIL/STUDENT GOVERNMENT (SPG/SSG) PRESIDENTS AND TEACHER-ADVISERS FOR SCHOOL YEAR 2021 - 2022', 'https://drive.google.com/file/d/1TuzUlifDY0S-XVZOFuomdikh8aCRLotY/view?usp=sharing', '183', '2021-10-21', 'NUMBERED MEMORANDUM', 'active'),
(847, '', 'DIVISION ROLL-OUT OF THE TECHNOKIDS PROJECT', 'https://drive.google.com/file/d/1PqS6w_jfXHwPhba209shz9G6DtrKgTL6/view?usp=sharing', '182', '2021-10-18', 'NUMBERED MEMORANDUM', 'active'),
(848, '', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING PERSONNEL (ELEMENTARY LEVEL) AND TEACHING RELATED PERSONNEL', 'https://drive.google.com/file/d/1d6SLEfNp-XS-ekNvJoYMlnLFdWq3BlCa/view?usp=sharing', '181', '2021-10-18', 'NUMBERED MEMORANDUM', 'active'),
(849, '', 'INVITATION FROM THE DEPARTMENT OF THE INTERIOR AND LOCAL GOVERNMENT (DILG)', 'https://drive.google.com/file/d/1zjwWhCyhyXeJJVOuFhB4upebATZwRG7x/view?usp=sharing', '180', '2021-10-19', 'NUMBERED MEMORANDUM', 'active'),
(850, '', 'OFFICE ORDER', 'https://drive.google.com/file/d/1KWStR8kgLPqnXQW3L2tOLSIqp2Wo9vjV/view?usp=sharing', '179', '2021-10-14', 'NUMBERED MEMORANDUM', 'active'),
(851, '', 'RECOGNITION OF PRESENTERS, ADVOCACIES, LEARNING & DEVELOPMENT, AND UTILIZATION IN THE FIELD OF RESEARCH DURING THE 2021 DEPED NCR RESEARCH JAMBOREE', 'https://drive.google.com/file/d/17EgOQoIn0f-6r5XGqf4FWp1JfAhNdqrs/view?usp=sharing', '178', '2021-10-18', 'NUMBERED MEMORANDUM', 'active'),
(852, '', 'ELECTED OFFICERS OF THE MANILA PUBLIC ELEMENTARY SCHOOL PRINCIPALS ASSOCIATION (MAPESPA) FOR SCHOOL YEAR (SYS) 2021-2023', 'https://drive.google.com/file/d/1LXmgN8_KsOtc5ExO0uOIrgEFPEEfehtl/view?usp=sharing', '177', '2021-10-12', 'NUMBERED MEMORANDUM', 'active'),
(853, '', 'VIRTUAL ORIENTATION ON FINANCIAL EDUCATION POLICY', 'https://drive.google.com/file/d/1CtU_JANlOcvRJt_FnrexDcu5szhMFyQm/view?usp=sharing', '175', '2021-10-13', 'NUMBERED MEMORANDUM', 'active'),
(854, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/15QYjzlh7WXwaIpT5egfeNANPjvEbk1aF/view?usp=sharing', '173', '2021-10-14', 'NUMBERED MEMORANDUM', 'active'),
(855, '', 'DIVISION SELECTION 2021 BRIGADA ESKWELA BEST IMPLEMENTING SCHOOLS', 'https://drive.google.com/file/d/1FvdIlemO4b_PvmYuAAnsG-Kw0zk8qVEp/view?usp=sharing', '174', '2021-10-15', 'NUMBERED MEMORANDUM', 'active'),
(856, '', 'CONDUCT OF SUPREME PUPIL/STUDENT GOVERNMENT (SPG/SSG) ELECTIONS FOR SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/10xL86ebzBfZ8e6YsU-JpbKUyVXCL-ogU/view?usp=sharing', '171', '2021-09-29', 'NUMBERED MEMORANDUM', 'active'),
(857, '', 'AN ORDER TEMPORARILY CLOSING FOR VISITATION PURPOSES PUBLIC AND PRIVATE MEMORIAL PARKS, CEMETERIES AND COLUMBARIES LOCATED IN THE CITY OF MANILA FROM 29 OCTOBER 2021 TO 3 NOVEMBER 2021 IN TIME FOR ALL', 'https://drive.google.com/file/d/1syuqjWAog2lGD1FA8zkEZgCxaNvYiRe3/view?usp=sharing', '170', '2021-09-30', 'NUMBERED MEMORANDUM', 'active'),
(858, '', 'AN ORDER AUTHORIZING THE CITY ADMINISTRATOR TO SIGN \"BY AUTHORITY OF THE CITY MAYOR\" EXECUTIVE ORDERS PLACING COMPONENT BARANGAY/S OF THE CITY, OR INDIVIDUAL HOUSES, RESIDENTAL BUILDINGS, STREETS, BLO', 'https://drive.google.com/file/d/1hP--f43hlLC73M0Ou0874oHLi8pcHZp5/view?usp=sharing', '169', '2021-09-30', 'NUMBERED MEMORANDUM', 'active'),
(859, '', 'AN ORDER PLACING CERTAIN RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1xDkNN-QTVVpnwN3crHI4Br0Dbjjako7x/view?usp=sharing', '168', '2021-09-29', 'NUMBERED MEMORANDUM', 'active'),
(860, '', 'HUMAN RESOURCE DEVELOPMENT FOCUS GROUP DISCUSSION AND PROVISION OF TECHNICAL ASSISTANCE ON PROGRAMS OF HRD TO SCHOOLS - HRD AKBAY', 'https://drive.google.com/file/d/1EBwVH6eAbkwQkTNyZuWoL2AJrpVXrlTW/view?usp=sharing', '167', '2021-09-29', 'NUMBERED MEMORANDUM', 'active'),
(861, '', 'SEMINAR ON RETIREMENT/SEPARATION BENEFITS FOR RETIREE EMPLOYEES (DUE FOR COMPULSORY RETIREMENT) ON THE LAST QUARTER OF 2021 AND CY 2022', 'https://drive.google.com/file/d/1yIuL1UfJsIqREFpbmzZ8wNKDEPW2_SoM/view?usp=sharing', '166', '2021-09-20', 'NUMBERED MEMORANDUM', 'active'),
(862, '', 'COMPOSITION OF THE SCHOOLS DIVISION OFFICE PERFORMANCE MANAGEMENT TEAM', 'https://drive.google.com/file/d/1vJau2NwRv0GAlSTxwmL8d9m6L2xy39xQ/view?usp=sharing', '165', '2021-09-30', 'NUMBERED MEMORANDUM', 'active'),
(863, '', 'IMPLEMENTATION AND SCHEDULE OF THE 1ST 5S INTERNAL AUDIT', 'https://drive.google.com/file/d/1b6V610NUjiHyUa5nygM4ZweyFVYgXgad/view?usp=sharing', '163', '2021-09-24', 'NUMBERED MEMORANDUM', 'active'),
(864, '', 'AN ORDER PLACING RESIDENTIAL HOUSES/CONDO UNIT/BUILDINGS UNDER GRANULAR LOCKDOWN', 'https://drive.google.com/file/d/1E8wcYJsEACHadGmb5Ddb11xfHX3cGcts/view?usp=sharing', '162', '2021-09-24', 'NUMBERED MEMORANDUM', 'active'),
(865, '', 'IMPLEMENTATION OF MEMORANDUM NO. 136, S. 2021 ENTITLED \"POLICY ON ADMINISTRATIVE AIDE I (UTILITY) PERSONNEL\'S MANAGEMENT, TRANSFER AND RESTRUCTURING\"', 'https://drive.google.com/file/d/1zbk7SpqmP9KY1BaZqTQrf_xUBxYRsc67/view?usp=sharing', '161', '2021-09-24', 'NUMBERED MEMORANDUM', 'active'),
(866, '', 'SUBMISSION OF OFFICE PERFORMANCE COMMITMENT REVIEW FORM (OPCRF) AND INDIVIDUAL PERFORMANCE COMMITMENT REVIEW FORM (IPCRF) SY 2020-2021', 'https://drive.google.com/file/d/18KZCGjN9GUZVNmIEOJrBRIWV0ltKsO-V/view?usp=sharing', '160', '2021-09-22', 'NUMBERED MEMORANDUM', 'active'),
(867, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1sm61WbPb00lvo1fqQwXA4u8pDjoozaGw/view?usp=sharing', '159', '2021-09-21', 'NUMBERED MEMORANDUM', 'active'),
(868, '', 'AN ORDER LIFTING LIQUOR BAN UNDER EXECUTIVE ORDER NO. 28, DATED 15 SEPTEMBER 2021', 'https://drive.google.com/file/d/1WsZ_vWbQ1wBHx6B1s0pNewTc4QsPpNC_/view?usp=sharing', '157', '2021-09-17', 'NUMBERED MEMORANDUM', 'active'),
(869, '', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1xmwsQfgOg8EInhYN8s3DPc1GWhAyDc5z/view?usp=sharing', '153', '2021-09-14', 'NUMBERED MEMORANDUM', 'active'),
(870, '', 'NEWLY INSTALLED ELEVATOR IN THE CITY HALL FACING TAFT AVENUE SIDE', 'https://drive.google.com/file/d/1Q-xp9aI28uQQkDn7ATHGPai2ek85bfkT/view?usp=sharing', '152', '2021-09-08', 'NUMBERED MEMORANDUM', 'active'),
(871, '', 'WORK SUSPENSION IN THE MANILA CITY GOVERNMENT DUE TO A TROPICAL STORM', 'https://drive.google.com/file/d/1czlWCpaLscGbxqPtmGt7oxyrZstWzANj/view?usp=sharing', '151', '2021-09-08', 'NUMBERED MEMORANDUM', 'active'),
(872, '', 'PARTICIPATION OF SELECT SCHOOLS IN THE VIRTUAL URBAN HYDROHUB LEARNING CENTER PROJECT', 'https://drive.google.com/file/d/1GufyxvRGw5rlAVQ9ctEfJ1Q6maxNYHmy/view?usp=sharing', '150', '2021-09-03', 'NUMBERED MEMORANDUM', 'active'),
(873, '', 'MIPIBIEX 2021: MANILA INTELLECTUAL PROPERTY INNOVATION AND BUSINESS INCUBATION EXPO 2021', 'https://drive.google.com/file/d/1vC21gAHwhNyJbT1ZAPKlYRJRXbHmCUJV/view?usp=sharing', '149', '2021-09-01', 'NUMBERED MEMORANDUM', 'active'),
(874, '', 'MYIA WINNINGS IN THAILAND INVENTORS DAY 2021 IPITEX: INTERNATIONAL INTELLECTUAL PROPERTY, INVENTION, INNOVATION AND TECHNOLOGY EXPOSITION', 'https://drive.google.com/file/d/16olza8Nc9-RvT_7zGJWSNT9dU3hXhWL3/view?usp=sharing', '148', '2021-09-01', 'NUMBERED MEMORANDUM', 'active'),
(875, '', 'VACANCY FOR ELEMENTARY SCHOOL PRINCIPAL I', 'https://drive.google.com/file/d/1G3zNj4Y0z_FEEkr7Mm5iMHPFAc6XftM_/view?usp=sharing', '147', '2021-08-31', 'NUMBERED MEMORANDUM', 'active'),
(876, '', 'ELECTRONIC SALARY LOAN [ESL]', 'https://drive.google.com/file/d/1LW8LaY3tgN1Dw0n6rlXQA2Yf9R7kEccj/view?usp=sharing', '146', '2021-08-23', 'NUMBERED MEMORANDUM', 'active'),
(877, '', '2021 BASIC EDUCATION RESEARCH FUND (BERF) GRANTEES, REGIONAL ORIENTATION, AND DIVISION BERF PLANNING', 'https://drive.google.com/file/d/1VuRKqevHGLj8GHMcagz0OxyW66vcOStR/view?usp=sharing', '145', '2021-08-31', 'NUMBERED MEMORANDUM', 'active'),
(878, '', 'GLOBAL ELECTRIC TRANSPORT [GET]', 'https://drive.google.com/file/d/17jkWmaKHouEZaAVe90iD1mLVtw2Y-lKM/view?usp=sharing', '143', '2021-08-25', 'NUMBERED MEMORANDUM', 'active'),
(879, '', 'SUBMISSION OF DOCUMENTARY REQUIREMENTS FOR THE LET A MILLION FLOWERS BLOOM PROJECT', 'https://drive.google.com/file/d/1XGf083VKD4IZSJtXEW63qB9_U1nmgJPb/view?usp=sharing', '142', '2021-08-20', 'NUMBERED MEMORANDUM', 'active'),
(880, '', 'CONDUCT OF 2021 BRIGADA ESKWELA REGIONAL AND DIVISION KICKOFF', 'https://drive.google.com/file/d/1lFdhH4knzcho1Y9DhErxmjnCY-NiWHMw/view?usp=sharing', '141', '2021-08-20', 'NUMBERED MEMORANDUM', 'active'),
(881, '', 'AN ORDER OPERATIONALIZING THE DILG-DND-DSWD JOINT MEMORANDUM CIRCULAR NO. 3 S.2021 WHICH PROVIDED FOR THE GUIDELINES FOR THE DISTRIBUTION OF FINANCIAL ASSISTANCE TO CITIES AND MUNICIPALITY IN THE NATI', 'https://drive.google.com/file/d/17_OgiVCgaPpy_rYufaScOcPtp6aiR4oS/view?usp=sharing', '140', '2021-08-13', 'NUMBERED MEMORANDUM', 'active'),
(882, '', 'ASSIGNMENT OF ASSISTANT SCHOOLS DIVISION SUPERINTENDENTS', 'https://drive.google.com/file/d/1Rad4ct5G_76FXsDvB3mGwL6fQGzFOTi_/view?usp=sharing', '139', '2021-08-12', 'NUMBERED MEMORANDUM', 'active'),
(883, '', '2021 SEARCH FOR OUTSTANDING GOVERNMENT WORKERS AND THE YEARS THEREAFTER', 'https://drive.google.com/file/d/1SkmZshr2QlSmTdNGamcN4Q2pl_Um9M0L/view?usp=sharing', '138', '2021-08-11', 'NUMBERED MEMORANDUM', 'active'),
(884, '', 'REASSIGNMENT OF SECONDARY SCHOOL PRINCIPALS', 'https://drive.google.com/file/d/1qtPidFJhnrJNVDQ-NQrTYie5EuVXnOFQ/view?usp=sharing', '137', '2021-08-12', 'NUMBERED MEMORANDUM', 'active'),
(885, '', 'POLICY ON ADMINISTRATIVE AIDE I (UTILITY) PERSONNEL\'S MANAGEMENT, TRANSFER AND RESTRUCTING', 'https://drive.google.com/file/d/1uQRosO-2wE2WCSvLEjv5keX6PWMiQUnt/view?usp=sharing', '136', '2021-08-11', 'NUMBERED MEMORANDUM', 'active'),
(886, '', 'ORIENTATION SEMINAR FOR THE FOLLOWING TOPICS: REPUBLIC ACT NO. 11318 [SAFE SPACES ACT], REPUBLIC ACT NO. 7877 [ANTI SEXUAL HARASSMENT ASCT OF 1995], REPUBLIC ACT NO. 9262 [ANTI VIOLENCE AGAINST WOMAN ', 'https://drive.google.com/file/d/1Z_xQaUZoZTJYeA1DnxibV9uV1ufR3EAE/view?usp=sharing', '135', '2021-08-06', 'NUMBERED MEMORANDUM', 'active'),
(887, '', 'REASSIGNMENT OF ELEMENTARY SCHOOL PRINCIPALS', 'https://drive.google.com/file/d/1odGoUyCmIyI1xN2mj_8_CCKYuaxIlnTT/view?usp=sharing', '134', '2021-07-28', 'NUMBERED MEMORANDUM', 'active'),
(888, '', 'CORRIGENDUM TO THE UNNUMBERED MEMORANDUM DATED AUGUST 4, 2021 (AUTHORIZED PERSONNEL DURING THE IMPLEMENTATION OF THE ENHANCED COMMUNITY QUARATINE AND OTHER PERTINENT MATTERS)', 'https://drive.google.com/file/d/1vJX5-dSLONIASQDXKEDjBOKHT3-GXgET/view?usp=sharing', '133', '2021-08-09', 'NUMBERED MEMORANDUM', 'active'),
(889, '', 'WORKSHOP IN CITY GOVERNMENT OFFICES DURING THE ECQ PERIOD FROM MARCH 29, 2021 TO APRIL 4, 2021', 'https://drive.google.com/file/d/1FwafW2GrB07bYa54goobBHfFHl_VUes3/view?usp=sharing', '132', '2021-08-02', 'NUMBERED MEMORANDUM', 'active'),
(890, '', 'LINGAP PANGARAP EDUCATIONAL PROGRAM FOR CITY HALL EMPLOYEES', 'https://drive.google.com/file/d/1h_D4azYWzq70-ATkG-t4jPj19BGb_XJv/view?usp=sharing', '131', '2021-08-02', 'NUMBERED MEMORANDUM', 'active'),
(891, '', 'DEVELOPMENT OF ONLINE ASSESSMENT TOOLS FOR REMEDIAL AND ENRICHMENT CLASSES FOR THE SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1gXfgsL_wDCLhZhw-AjnrJZiQ-blzkNGk/view?usp=sharing', '130', '2021-08-02', 'NUMBERED MEMORANDUM', 'active'),
(892, '', 'INTERIM GUIDELINES FOR THE APPRAISAL OF DOCUMENTS OF ELEMENTARY AND JUNIOR HIGH SCHOOL MASTER TEACHER APPLICANTS IN THE DIVISION OF CITY SCHOOLS - MANILA', 'https://drive.google.com/file/d/16mjUJvBx2esc041-AKx4rLwOeQakw4qf/view?usp=sharing', '129', '2021-07-07', 'NUMBERED MEMORANDUM', 'active'),
(893, '', 'ADDENDUM TO REGIONAL MEMORANDUM NO. 354, S.2021 \"NATIONAL QUALIFIERS FOR GAWAD SIKLAB 2021\"', 'https://drive.google.com/file/d/1epUiyjsyulDHC3cYrQYefnca65-uNgto/view?usp=sharing', '128', '2021-07-29', 'NUMBERED MEMORANDUM', 'active'),
(894, '', 'EXTENDED CALL FOR SUBMISSION OF COMPLETED NON-BERF PAPERS', 'https://drive.google.com/file/d/1apsKywwYQKrhubai6uoi4L4vUJl0-5r1/view?usp=sharing', '127', '2021-07-21', 'NUMBERED MEMORANDUM', 'active'),
(895, '', '1ST BATANG MAYNILA SPORTS CLINIC 2021', 'https://drive.google.com/file/d/1LGY4I7JDQIfc6lZlHhX9XqOOO16ft86U/view?usp=sharing', '126', '2021-07-19', 'NUMBERED MEMORANDUM', 'active'),
(896, '', 'ONLINE SHORT-TERM LOAN VIA THE VIRTUAL PAG-IBIG', 'https://drive.google.com/file/d/1rvOLt7ssFtCFEIxOwpuR7WG7w-16Y632/view?usp=sharing', '124', '2021-07-22', 'NUMBERED MEMORANDUM', 'active'),
(897, '', 'COMPOSITION OF SDO-MANILA REWARDS AND RECOGNITION COMMITTEE', 'https://drive.google.com/file/d/1hz5DeCL3wWnWWg7CdaCDcyDg0v-mMzC3/view?usp=sharing', '123', '2021-07-09', 'NUMBERED MEMORANDUM', 'active'),
(898, '', 'COMPOSITION OF SDO-MANILA PERFORMANCE MANAGEMENT TEAM', 'https://drive.google.com/file/d/1qEcmptRB2SWpEZiOOw2gDLiXaVFPBE6q/view?usp=sharing', '122', '2021-07-09', 'NUMBERED MEMORANDUM', 'active'),
(899, '', 'SCHEDULE OF ORIENTATION ON THE PROMOTION OF QUALIFIED MASTER TEACHERS IN THE HIGH SCHOOL LEVEL', 'https://drive.google.com/file/d/1tPzsDrG2wK1l2g0uaOjPu60bM59gcnNC/view?usp=sharing', '121', '2021-07-13', 'NUMBERED MEMORANDUM', 'active'),
(900, '', 'IATF-EID RESOLUTION NO. 124 AND 124-A SERIES OF 2021', 'https://drive.google.com/file/d/1A9OZwKUcp7JQxDavaT6UMi3McX3-oSl0/view?usp=sharing', '118', '2021-07-07', 'NUMBERED MEMORANDUM', 'active'),
(901, '', 'NATIONAL QUALIFIERS FOR GAWAD SIKLAB 2021 SEARCH FOR YOUTH FORMATION BEST IMPLEMENTERS, OUTSTANDING STUDENT LEADERS, TEACHER-ADVISERS AND SCHOOL HEADS', 'https://drive.google.com/file/d/1pv_9uvUoHFUn2yEMRXyP2SJoa3b1PMXK/view?usp=sharing', '117', '2021-07-08', 'NUMBERED MEMORANDUM', 'active'),
(902, '', 'VACANCIES FOR MASTER TEACHER I AND MASTER TEACHER II POSITIONS (ELEMENTARY) AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1itTR5lRukskhPV4XNNvVYv4wIW-PSx3n/view?usp=sharing', '116', '2021-07-07', 'NUMBERED MEMORANDUM', 'active'),
(903, '', 'SUBMISSION OF LOGISTICS-RELATED FORMS IN THE CONDUCT OF THE K TO 12 BASIC EDUCATION PROGRAM END-OF-SCHOOL-YEAR RITES FOR S.Y. 2020-2021', 'https://drive.google.com/file/d/1aBHF8oUNNOjIX12IszXrWqjO6rBAmwP0/view?usp=sharing', '115', '2021-07-07', 'NUMBERED MEMORANDUM', 'active'),
(904, '', 'THAILAND INTERNATIONAL COOPERATION AGENCY [TICA] SCHOLARSHIP PROGRAM FOR LOCAL GOVERNMENT OFFICIALS AND FUNCTIONARIES', 'https://drive.google.com/file/d/1qR3hu7-e-LtQjfuldvwbW3zROKfPocF5/view?usp=sharing', '114', '2021-06-29', 'NUMBERED MEMORANDUM', 'active'),
(905, '', 'DOCUMENTARY REQUIREMENTS FOR FOREIGN TRAVEL OF LOCAL GOVERNMENT OFFICIALS AND EMPLOYEES', 'https://drive.google.com/file/d/1Snq5I7D0mGtipIQylSlLQ87ZXxccAxVZ/view?usp=sharing', '113', '2021-07-01', 'NUMBERED MEMORANDUM', 'active'),
(906, '', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NON-TEACHING PERSONNEL', 'https://drive.google.com/file/d/1hl1B5_bK4Yk1TK6D3gNwt8_6c-Fl1z2T/view?usp=sharing', '112', '2021-06-28', 'NUMBERED MEMORANDUM', 'active'),
(907, '', 'YEAR-END REMEDIAL CLASSES FOR CONDITIONALLY PROMOTED GRADES 7 AND 8 STUDENTS USING THE DEPED LEARNING MANAGEMENT SYSTEM (LMS)', 'https://drive.google.com/file/d/1dVqushq5_eKvm77NLohdEJ09viquzRhh/view?usp=sharing', '110', '2021-06-29', 'NUMBERED MEMORANDUM', 'active'),
(908, '', 'DIVISION TRAINING OF TRAINERS ON THE USE OF DEPED LEARNING MANAGEMENT SYSTEM AND FRONT LEARNERS LEARNING MODULES', 'https://drive.google.com/file/d/1qqHtizocP00qK10RwACJkzsamCgXauiI/view?usp=sharing', '109', '2021-06-30', 'NUMBERED MEMORANDUM', 'active'),
(909, '', 'CONDUCT OF YEAR-END EXIT ASSESSMENT FOR S.Y. 2020-2021 (LEARNING ASSURANCE FOR MONITORING AND PROGRESS [LAMP])', 'https://drive.google.com/file/d/1AFj6dD1K36dL2Q_CgOPCzpKCnZoMZMXY/view?usp=sharing', '108', '2021-06-30', 'NUMBERED MEMORANDUM', 'active'),
(910, '', 'PHILIPPINE VETERANS BANK-GAGALANGIN BRANCH, OFFERING VARIOUS SERVICES TO THE EMPLOYEES OF THE CITY GOVERNMENT OF MANILA', 'https://drive.google.com/file/d/11IaeYa-4DOqWQKWqy21-F57s5gWYI55q/view?usp=sharing', '107', '2021-06-23', 'NUMBERED MEMORANDUM', 'active'),
(911, '', 'AN ORDER CREATING THE LOCAL ADVISORY COUNCIL PURSUANT TO REPUBLIC ACT 11310, OTHERWISE KNOWN AS THE PANTAWID PAMILYANG PILIPINO PROGRAM', 'https://drive.google.com/file/d/14q8nOglZgkSNw7ftP9SX4lK8aGVjiGYA/view?usp=sharing', '106', '2021-06-25', 'NUMBERED MEMORANDUM', 'active'),
(912, '', 'EXTENSION OF LABORATORY SERVICES TO BE PROVIDED BY THE MANILA HEALTH DEPARTMENT', 'https://drive.google.com/file/d/1L_Y3WBwpaGlyUdJWjrpJRg2CEGTWueR7/view?usp=sharing', '105', '2021-06-28', 'NUMBERED MEMORANDUM', 'active'),
(913, '', 'NEW EXCHANGE VISITOR PROGRAM (EVP) REQUIREMENTS AS PROVIDED UNDER EVP COMMITTEE RESOLUTION NO. 01-2021', 'https://drive.google.com/file/d/1982wdRUXEAHBgU9eUv6b6JVfjUMn6nst/view?usp=sharing', '104', '2021-06-23', 'NUMBERED MEMORANDUM', 'active'),
(914, '', 'IATF-EID RESOLUTION NO. 121', 'https://drive.google.com/file/d/1-xJTvhEiThKSIlnvoxvSwc2x2RpWj49V/view?usp=sharing', '103', '2021-06-21', 'NUMBERED MEMORANDUM', 'active'),
(915, '', 'AN ORDER IMPLEMENTING THE NEW UNIFORM CURFEW HOURS IN METRO MANILA AS UNANIMOUSLY APPROVED BY THE METRO MANILA COUNCIL TO TAKE EFFECT JUNE 15, 2021', 'https://drive.google.com/file/d/19X6jstCi69eSbTHDzSHq4gFhBtAwbnPJ/view?usp=sharing', '102', '2021-06-15', 'NUMBERED MEMORANDUM', 'active'),
(916, '', 'IATF-EID RESOLUTION NO. 120', 'https://drive.google.com/file/d/1Alowuf6W7xWpc2uPJUY3CJ6n6FC9Psj7/view?usp=sharing', '101', '2021-06-16', 'NUMBERED MEMORANDUM', 'active'),
(917, '', 'CONDUCT OF THE 15TH MITSUBISHI ASIAN CHILDREN\'S ENIKKI FESTA', 'https://drive.google.com/file/d/1qvVrMRby0JAYdeb4OMQWMmPjn7lObvEZ/view?usp=sharing', '100', '2021-06-16', 'NUMBERED MEMORANDUM', 'active'),
(918, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/15n9Sn3Ms4G6KYbeVvrjWrZWLb-D2aFGd/view?usp=sharing', '99', '2021-06-14', 'NUMBERED MEMORANDUM', 'active'),
(919, '', 'ESTABLISMENT OF SDO-MANILA PERSONNEL DEVELOPMENT COMMITTEE', 'https://drive.google.com/file/d/13KXDXR8oUpalhSFBwcmCTrRDu_eZr22r/view?usp=sharing', '98', '2021-06-08', 'NUMBERED MEMORANDUM', 'active'),
(920, '', '2020 BRIGADA ESKWELA DIVISION AWARDS', 'https://drive.google.com/file/d/1-7MLAV34opvwkm_jA4fzD6xg596A9aa7/view?usp=sharing', '97', '2021-06-14', 'NUMBERED MEMORANDUM', 'active'),
(921, '', '2021 NATIONAL DRUG EDUCATION PROGRAM (NDEP) WEBINAR SERIES', 'https://drive.google.com/file/d/1ehOBZJ1BSrFAzKxeYjhp1VL_aRdWxmQc/view?usp=sharing', '96', '2021-06-14', 'NUMBERED MEMORANDUM', 'active'),
(922, '', 'WINNERS IN THE DIVISION LEVEL GAWAD SIKLAB: SEARCH FOR OUTSTANDING PROGRAM IMPLEMENTERS, STUDENT LEADERS, TEACHER ADVISERS, SCHOOL HEADS, AND REGIONAL AND DIVISION YOUTH FORMATION COORDINATORS', 'https://drive.google.com/file/d/1i1qhtppsLnDt3UQOhIOVIvyzl8CWUi4Z/view?usp=sharing', '95', '2021-06-11', 'NUMBERED MEMORANDUM', 'active'),
(923, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1_QLvof6l37vwZzh_q3EWz0txLC0ZIp9t/view?usp=sharing', '94', '2021-06-15', 'NUMBERED MEMORANDUM', 'active'),
(924, '', 'COORDINATION MEETING FOR END-OF-SCHOOL-YEAR RITES ACTIVITIES (S.Y. 2020-2021)', 'https://drive.google.com/file/d/1f12D1QoDBH8Ux_6GR5YqGtxOxJFSZTDj/view?usp=sharing', '92', '2021-06-14', 'NUMBERED MEMORANDUM', 'active'),
(925, '', 'ORIENTATION FOR THE CONDUCT OF YEAR-END ASSESSMENT PILOT TESTING FOR S.Y. 2020-2021 (LEARNING ASSURANCE FOR MONITORING AND PROGRESS [LAMP])', 'https://drive.google.com/file/d/1itGWhe9vP7mnEy20lDgplksfNdvfyuym/view?usp=sharing', '91', '2021-06-14', 'NUMBERED MEMORANDUM', 'active'),
(926, '', 'CLARIFICATION ON THE COMPLIANCE OF EXISTING LAWS ON THE USE OF DEPED RADIO AS BLENED DISTANCE LEARNING DELIVERY MODALITY', 'https://drive.google.com/file/d/1XYdvur2cZ-4iheg9efir_vr_fTgNPvf7/view?usp=sharing', '90', '2021-06-14', 'NUMBERED MEMORANDUM', 'active'),
(927, '', 'CREATING THE EXECUTIVE COMMITTEE AND ITS SECRETARIAL FOR THE 450TH \"ARAW NG MAYNILA CELEBRATION\"', 'https://drive.google.com/file/d/1L07QPDByPmXbK1jMZuKzRtcZSbGOH1BN/view?usp=sharing', '89', '2021-06-11', 'NUMBERED MEMORANDUM', 'active'),
(928, '', 'CONSTITUTING THE MANILA INSPECTION AND CERTIFICATION COMMITTEE FOR THE SAFETY SEAL CERTIFICATION PROGRAM', 'https://drive.google.com/file/d/1Pbj9Vm7BXnNbE66D5CAVEW9300BAtQiy/view?usp=sharing', '88', '2021-06-11', 'NUMBERED MEMORANDUM', 'active'),
(929, '', '9-DAY NOVENA MASSES AT QUIAPO CHURCH', 'https://drive.google.com/file/d/1tyFLUYJ4wKC1SzjsrWdhE0vZQcFm7Pnc/view?usp=sharing', '87', '2021-06-09', 'NUMBERED MEMORANDUM', 'active'),
(930, '', 'HUMAN RESOURCE SYSTEMS (PRAISE, CCGC, CPMT, & PDC)', 'https://drive.google.com/file/d/1mZ5beXw48ofe90A4uS71a_Ar1Kv8wzv_/view?usp=sharing', '86', '2021-06-07', 'NUMBERED MEMORANDUM', 'active'),
(931, '', 'CONDUCT OF YEAR-END ASSESSMENT PILOT TESTING FOR S.Y. 2020-2021 (LEARNING ASSURANCE FOR MONITORING AND PROGRESS [LAMP])', 'https://drive.google.com/file/d/1yDD1u8tA-6cv6PoNeUFxoNmyl65QjCqD/view?usp=sharing', '85', '2021-06-09', 'NUMBERED MEMORANDUM', 'active'),
(932, '', 'CREATION OF THE STATEMENT OF ASSETS, LIABILITIES, AND NET WORTH (SALN) REVIEW AND COMPLIANCE COMMITTEE OF THE CITY GOVERNMENT OF MANILA', 'https://drive.google.com/file/d/1n1o-7484iQ300GeguGsX2A3VmoE5GmlM/view?usp=sharing', '84', '2021-06-02', 'NUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(933, '', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 119, S. 2021 VACANCIES FOR SPECIAL EDUCATION TEACHER I POSITION (ELEMENTARY), DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/11LZfe6WDLagfbOpkg9BbMtWbhFvIEwNe/view?usp=sharing', '82', '2021-06-02', 'NUMBERED MEMORANDUM', 'active'),
(934, '', 'VACANCIES FOR MASTER TEACHER AND MASTER TEACHER II IN THE SENIOR HIGH SCHOOL, DIVISION OF CITY SCHOOLS MANILA', 'https://drive.google.com/file/d/1SFwEAYgKMSMICdNuM28VvlYba0RvFJmw/view?usp=sharing', '81', '2021-05-25', 'NUMBERED MEMORANDUM', 'active'),
(935, '', 'LAUNCHING OF THE \"LET A MILLION FLOWERS BLOOM\" PROJECT', 'https://drive.google.com/file/d/1WjlhO4tCHIcYX4FtrbmI-OKBnfcx9807/view?usp=sharing', '80', '2021-05-31', 'NUMBERED MEMORANDUM', 'active'),
(936, '', 'VACANCIES FOR MASTER TEACHER I AND MASTER TEACHER II POSITIONS IN THE JUNIOR HIGH SCHOOLS LEVEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1HJmKis08_bYqyOsvUMEofcf1GnA_68sX/view?usp=sharing', '79', '2021-05-27', 'NUMBERED MEMORANDUM', 'active'),
(937, '', 'VACANCIES FOR MASTER TEACHER I AND MASTER TEACHER II POSITIONS (ELEMENTARY), DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1kiDZqo82XJs-lQOTEtJOANqZj2h3RFuL/view?usp=sharing', '78', '2021-05-27', 'NUMBERED MEMORANDUM', 'active'),
(938, '', 'MANILA.STAYSAFE.PH', 'https://drive.google.com/file/d/1TJWpChu17bNYPV5pyazlcpaELVapuZSg/view?usp=sharing', '77', '2021-05-20', 'NUMBERED MEMORANDUM', 'active'),
(939, '', 'INSTITUTIONALIZATION OF THE \"RESEARCH KUMUSTAHAN\" IN THE DIVISION OF CITY SCHOOLS MANILA', 'https://drive.google.com/file/d/1vTBaw_zwXXc50uBtwocXO66FBxpaUO8c/view?usp=sharing', '74', '2021-05-21', 'NUMBERED MEMORANDUM', 'active'),
(940, '', 'ROSTER OF SPEAKERS FOR PROFESSIONAL DEVELOPMENT PROGRMAS FOR TEACHERS AND SCHOOL HEADS', 'https://drive.google.com/file/d/1yFqz9b62s2EF4l-bk9itdmGK7EnEebrD/view?usp=sharing', '73', '2021-05-18', 'NUMBERED MEMORANDUM', 'active'),
(941, '', 'VACANCY FOR EDUCATION PROGRAM SUPERVISOR', 'https://drive.google.com/file/d/1PP4OWOMsib0K1UQz50dftaGet0ZNLb3z/view?usp=sharing', '72', '2021-05-17', 'NUMBERED MEMORANDUM', 'active'),
(942, '', '30% MANPOWER COMPLEMENT UNDER GCQ FROM MAY 15 - 31, 2021', 'https://drive.google.com/file/d/1ZvYOGDJLb4Kw5HkyIiueFoog-oGF2uzM/view?usp=sharing', '71', '2021-05-17', 'NUMBERED MEMORANDUM', 'active'),
(943, '', 'SCHEDULE OF ACTIVITIES IN THE CONDUCT OF MID-YEAR ASSESSMENT FOR S.Y. 2020-2021 (LEARNING ASSURANCE FOR MONITORING AND PROGRESS [LAMP])', 'https://drive.google.com/file/d/1xFKJibELB7eLi9_Oxz7neXtBMfGca9pd/view?usp=sharing', '70', '2021-05-17', 'NUMBERED MEMORANDUM', 'active'),
(944, '', 'CALL FOR PROPOSALS TO THE BASIC EDUCATION RESEARCH FUND (BERF) 2021 AND SUBMISSION OF COMPLETED NON-BERF PAPERS TO THE MANILA RESEARCH LIBRARY', 'https://drive.google.com/file/d/1rNqWfh4zOMn94FUZZ4OHGdR9hLstokGg/view?usp=sharing', '69', '2021-05-14', 'NUMBERED MEMORANDUM', 'active'),
(945, '', 'AMENDMENT TO OMNIBUS RULES ON LEAVE (CSC MC. NO. 41, S. 1998, AS AMENDED) AND OTHER LEAVE BENEFITS RELATIVE TO MATERNITY AND GYNECOLOGICAL DISORDERS', 'https://drive.google.com/file/d/1BB3VcZLriV6HdmmoVGavp8IoKOPieVq5/view?usp=sharing', '68', '2021-05-06', 'NUMBERED MEMORANDUM', 'active'),
(946, '', 'CONDUCT OF REGIONAL MID-YEAR ASSESSMENT FOR S.Y. 2020-2021 (LEARNING ASSURANCE FOR MONITORING AND PROGRESS [LAMP])', 'https://drive.google.com/file/d/17LPlBEnTulIPYVx9vCacdhalCDnho9ei/view?usp=sharing', '67', '2021-05-12', 'NUMBERED MEMORANDUM', 'active'),
(947, '', 'LIVELIHOOD LOADN FACILITY FOR LOCAL GOVERNMENT UNITS', 'https://drive.google.com/file/d/1YD901BSLE8o8qIdNsjB8tF2TnImFi239/view?usp=sharing', '66', '2021-05-07', 'NUMBERED MEMORANDUM', 'active'),
(948, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/15-7IrEGmV-v754dX_bwf0E5dgbkPVIep/view?usp=sharing', '65', '2021-05-10', 'NUMBERED MEMORANDUM', 'active'),
(949, '', 'VACANCIES FOR ASSISTANT PRINCIPAL II (SHS) AND PUBLIC SCHOOLS DISTRICT SUPERVISOR', 'https://drive.google.com/file/d/1Mybsulkn9c6tisyZM-Z6xwJHMJYIPM-o/view?usp=sharing', '64', '2021-05-07', 'NUMBERED MEMORANDUM', 'active'),
(950, '', 'BRIGADA ESKWELA 2020 BEST IMPLEMENTERS', 'https://drive.google.com/file/d/1AJJbAvcbTvAN_d2Z4sUKBFrFHelN_WwO/view?usp=sharing', '63', '2021-05-10', 'NUMBERED MEMORANDUM', 'active'),
(951, '', 'UNIVERSIDAD DE MANILA ONLINE ADMISSION', 'https://drive.google.com/file/d/1LYYSoIv3u1XFCrX16rejJQd4vAXK49aG/view?usp=sharing', '62', '2021-05-05', 'NUMBERED MEMORANDUM', 'active'),
(952, '', 'AN ORDER CONSTITUTING THE CITY HOUSING INVESTMENT COMMITTEE', 'https://drive.google.com/file/d/1NGfq9mau76WCj3qIJ1VGdCAAfK6mOtPY/view?usp=sharing', '61', '2021-05-04', 'NUMBERED MEMORANDUM', 'active'),
(953, '', 'DIVISION QUALIFIERS IN THE SEARCH FOR OUTSTANDING MANILANS IN THE FIELD OF EDUCATION 2021', 'https://drive.google.com/file/d/152ECdJfB4JZJtK-V5uTJkCfUkJ6ErNSd/view?usp=sharing', '60', '2021-05-05', 'NUMBERED MEMORANDUM', 'active'),
(954, '', 'SCHEDULE OF INTERVIEW FOR THE TOP 11 CANDIDATES IN THE SEARCH FOR OUTSTANDING MANILANS IN EDUCATION 2021', 'https://drive.google.com/file/d/16z6RUIHJcYHnVWFt4PSw8SgGPc5nhhj8/view?usp=sharing', '59', '2021-05-03', 'NUMBERED MEMORANDUM', 'active'),
(955, '', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1ep5_kEbVSc8rYxGmGXBPQDVcFRB_rwz7/view?usp=sharing', '58', '2021-04-28', 'NUMBERED MEMORANDUM', 'active'),
(956, '', 'FINAL ARRANGEMENT FOR THE FLEX PROGRAMS', 'https://drive.google.com/file/d/1KQ7svizdae3q5UCI9II8zzUbOHQZaOOu/view?usp=sharing', '57', '2021-04-30', 'NUMBERED MEMORANDUM', 'active'),
(957, '', 'DIGITALIZATION SYSTEM AND COURSING OF CORRESPONDENCE AND DOCUMENTS THROUGH THE USE OF MEDIA PLATFORMS OF THE PUBLICATIONS SERVICES IN THE DIVISION CITY SCHOOLS (DCS) - MANILA', 'https://drive.google.com/file/d/1-Q8mniOQj-QNojU10s3XOlNmjcyxA3G2/view?usp=sharing', '56', '2021-04-27', 'NUMBERED MEMORANDUM', 'active'),
(958, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1qQVg4HLclubf4CullruZIFM-CiJMK8Ik/view?usp=sharing', '55', '2021-04-19', 'NUMBERED MEMORANDUM', 'active'),
(959, '', 'CALL FOR PARTICIPATION: DIVISION TECHNICAL WORKING GROUP (TWG) ON INFORMATION AND COMMUNICATIONS TECHNOLOGY (ICT) PROGRAMS IN PREPARATION FOR THE SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1jlP7-xQUB7Pc1uDYcu75u8MWtwLBIOEh/view?usp=sharing', '54', '2021-04-23', 'NUMBERED MEMORANDUM', 'active'),
(960, '', 'AMENDMENT TO THE CPO MEMORANDUM DATED 28 MARCH 2021 RE: WORKFORCE IN CITY GOVERNMENT OFFICES DURING THE ECQ PERIOD FROM MARCH 29, 2021 TO APRIL 4, 2021', 'https://drive.google.com/file/d/1gFimFRnd9EOVxMhfoBn0lc_M-kt77vv_/view?usp=sharing', '53', '2021-04-13', 'NUMBERED MEMORANDUM', 'active'),
(961, '', 'SEARCH FOR OUTSTANDING MANILAN IN THE FIELD OF EDUCATION 2021 (450TH ARAW NG MAYNILA CELEBRATION)', 'https://drive.google.com/file/d/1xROp2pNpy1tCSwOGyO9dIwGAWEJ8m292/view?usp=sharing', '51', '2021-04-14', 'NUMBERED MEMORANDUM', 'active'),
(962, '', 'COMPOSITION OF THE GENDER AND DEVELOPMENT FOCAL POINT SYSTEM IN THE DIVISION OFFICE AND SCHOOLS', 'https://drive.google.com/file/d/11-QlXRGBFDK-T518b8wvaEZ6CzfqIShg/view?usp=sharing', '50', '2021-03-01', 'NUMBERED MEMORANDUM', 'active'),
(963, '', 'INTERIM GUIDELINES FOR THE APPRAISAL OF DOCUMENTS OF APPLICANTS FOR HEAD TEACHERS, SCHOOL PRINCIPALS AND OTHER TEACHING-RELATED POSITIONS IN THE DIVISION OF CITY SCHOOLS - MANILA', 'https://drive.google.com/file/d/1a3lssuYLPBP9TV0zYGeB6l4fIBi4eKeK/view?usp=sharing', '48', '2021-03-01', 'NUMBERED MEMORANDUM', 'active'),
(964, '', 'SDO MANILA HEALTH PROTOCOL AND CONTACT TRACING PROCEDURES', 'https://drive.google.com/file/d/1cKWXpngjlL7XDevbVrvGqwfcp7jSWoF0/view?usp=sharing', '47', '2021-03-23', 'NUMBERED MEMORANDUM', 'active'),
(965, '', 'AN ORDER PROHIBITING PABASA, SINAKULO, PROCESSIONS, AND OTHER SIMILAR ACTIVITIES DONE OUTSIDE CHURCHES AND PLACES OF WORSHIP IN RELATION TO THE HOLY WEEK CELEBRATION', 'https://drive.google.com/file/d/1UwLB8hMWcu5yjABGOOKnJLBlSsaJpK6z/view?usp=sharing', '44', '2021-03-22', 'NUMBERED MEMORANDUM', 'active'),
(966, '', 'AN ORDER DECLARING CERTAIN BARANGAYS, OR POTION THEREOF, OF THE CITY AS CRITICAL ZONE (CrZ) PER ZONING CONTAINMENT STRATEGY IN ORDER TO PROVIDE RAPID RESPONSE OPERATION TO CONTAIN THE RESURGENCE AND S', 'https://drive.google.com/file/d/1vTJX2T8ZRUytXAm6rSkFaU22za29Sg67/view?usp=sharing', '43', '2021-03-22', 'NUMBERED MEMORANDUM', 'active'),
(967, '', 'CONDUCT OF 2020 BRIGADA ESKWELA AWARDS', 'https://drive.google.com/file/d/1-bA073h9qDRC7NoAnePGeaRbJRr0CHfm/view?usp=sharing', '42', '2021-03-19', 'NUMBERED MEMORANDUM', 'active'),
(968, '', 'OBSERVATION AND ADVOCACY FOR ENERGY CONSERVATION AND CLEAN AIR ENVIRONMENT', 'https://drive.google.com/file/d/10AssTNVNZ8ppAYCJHLDrotSCQ7VvgkwM/view?usp=sharing', '41', '2021-03-11', 'NUMBERED MEMORANDUM', 'active'),
(969, '', 'VACANCIES FOR HEAD TEACHERS III AND VI', 'https://drive.google.com/file/d/14NfIn--HtDbI-tnGLh5YGSqVXAfdDtR3/view?usp=sharing', '40', '2021-03-17', 'NUMBERED MEMORANDUM', 'active'),
(970, '', 'AN ORDER DECLARING CERTAIN BARANGAYS, OR POTION THEREOF, OF THE CITY AS CRITICAL ZONE (CrZ) PER ZONING CONTAINMENT STRATEGY IN ORDER TO PROVIDE RAPID RESPONSE OPERATION TO CONTAIN THE RESURGENCE AND S', 'https://drive.google.com/file/d/1tc_CbKmEE5Hb03bVDvdaRVXWC843Sozs/view?usp=sharing', '38', '2021-03-15', 'NUMBERED MEMORANDUM', 'active'),
(971, '', '30% MANPOWER COMPLEMENT', 'https://drive.google.com/file/d/15lnoId6eAyeBzDqUEq8uVGt9222GBiMA/view?usp=sharing', '37', '2021-03-15', 'NUMBERED MEMORANDUM', 'active'),
(972, '', 'COMMUNICATION ALLOWANCE FOR TEACHING AND NON-TEACHING PERSONNEL RELATIVE TO THE IMPLEMENTATION OF ALTERNATIVE WORK ARRANGEMENTS FOR THE YEAR 2020', 'https://drive.google.com/file/d/1IhbrMop0zBYe6c75aM1CFpNTXxX2ibM7/view?usp=sharing', '36', '2021-03-15', 'NUMBERED MEMORANDUM', 'active'),
(973, '', 'DIVISION IN-SERVICE TRAINING FOR SCHOOL INFORMATION AND COMMUNICATIONS TECHNOLOGY COORDINATORS (SICTCS)', 'https://drive.google.com/file/d/1BIic7F-zBr-3QJVrZmqnIc50d8AqCDgz/view?usp=sharing', '33', '2021-03-08', 'NUMBERED MEMORANDUM', 'active'),
(974, '', 'ELECTION OF 1ST AND 2ND REPRESENTATIVES OF THE RANK AND FILE CAREER EMPLOYEES IN THE HR SYSTEMS COMMITTEES OF THE CITY GOVERNMENT OF MANILA', 'https://drive.google.com/file/d/11x4PgnSKVbtgJsRb2LHHdhMfrb1Lg4eb/view?usp=sharing', '32', '2021-02-24', 'NUMBERED MEMORANDUM', 'active'),
(975, '', 'ROMAN CATHOLIC ARCHBISHOP OF MANILA EDUCATION SYSTEM (RCAMES) DULY RECOGNIZED AS AN ACCREDITED ASSOCIATION OF DIVISION OF CITY SCHOOLS-MANILA', 'https://drive.google.com/file/d/1fD8gCBblebDipgjwTz6avVuXiM-lS5PV/view?usp=sharing', '31', '2021-02-26', 'NUMBERED MEMORANDUM', 'active'),
(976, '', 'SUBMISSION OF SUPREME PUPIL / STUDENT GOVERNMENT (SPG/SSG) REPORT FOR SCHOOL YEAR (SY) 2020-2021', 'https://drive.google.com/file/d/1riY5QlTbCzh7ms_LHYdBHxZkY9BxKyHX/view?usp=sharing', '30', '2021-03-01', 'NUMBERED MEMORANDUM', 'active'),
(977, '', 'OBSERVANCE OF THE NATIONAL WOMEN\'S MONTH CELEBRATION CY2021', 'https://drive.google.com/file/d/1BFEEaOzKsVLmGtLqZtdSmZ-o7CwsUU9H/view?usp=sharing', '29', '2021-02-28', 'NUMBERED MEMORANDUM', 'active'),
(978, '', 'UNIVERSIDAD DE MANILA ONLINE ADMISSION', 'https://drive.google.com/file/d/1YbMyLCG-MhhfcHLC-L-VE0-1z4Zwl3GB/view?usp=sharing', '28', '2021-02-23', 'NUMBERED MEMORANDUM', 'active'),
(979, '', '1ST MANILA AMAZING COUPLE RACE 2021', 'https://drive.google.com/file/d/1WSaCWoLqPQF0n8Ap9SlN75vMtP52753h/view?usp=sharing', '27', '2021-02-24', 'NUMBERED MEMORANDUM', 'active'),
(980, '', 'HEALTH CARE MAINTENANCE PROGRAM', 'https://drive.google.com/file/d/1RvKDCCbAWGWNzUDT6NpqC4ohsHyllK4Z/view?usp=sharing', '25', '2021-02-22', 'NUMBERED MEMORANDUM', 'active'),
(981, '', 'BIDS AND AWARDS COMMITTEE (BAC) MEMBERS FOR THE CALENDAR YEAR 2021', 'https://drive.google.com/file/d/1m_BEdaoHSHiXuYk-ebW9sqQ6BbvuCL7d/view?usp=sharing', '24', '2021-01-07', 'NUMBERED MEMORANDUM', 'active'),
(982, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/12AVMXQ4wez9P6fPCtLO6ksJphQvdHFKE/view?usp=sharing', '23', '2021-02-23', 'NUMBERED MEMORANDUM', 'active'),
(983, '', '2ND LEARNING ENGAGEMENT AND MANAGEMENT MEETING', 'https://drive.google.com/file/d/1pjZB2o4hT6OofMZZ_V8oR_B3zIxW4Tet/view?usp=sharing', '22', '2021-02-18', 'NUMBERED MEMORANDUM', 'active'),
(984, '', 'IMPLEMENTATION OF NO MOTORCYCLE PARKING WITHIN THE MANILA CITY HALL QUADRANGLE', 'https://drive.google.com/file/d/1FRa06DB0_-qhRyyvJ0W5TwW3wG4ssW_z/view?usp=sharing', '21', '2021-02-17', 'NUMBERED MEMORANDUM', 'active'),
(985, '', 'PARTICIPANTS TO THE STRAND INTERFACE ON PROGRAMS AND GUIDELINES (SIPAG) CONFERENCE 2021', 'https://drive.google.com/file/d/1_x7BXcLmb-d21PABEW_jWz7niU-nK1ed/view?usp=sharing', '20', '2021-02-18', 'NUMBERED MEMORANDUM', 'active'),
(986, '', 'VACANCIES FOR SCHOOL PRINCIPAL II & ADMINISTRATIVE ASSISTANT II (SENIOR HIGH SCHOOL)', 'https://drive.google.com/file/d/1O_KS4a5ywtxytkF0UAJOeIexteL98B54/view?usp=sharing', '19', '2021-02-15', 'NUMBERED MEMORANDUM', 'active'),
(987, '', 'KAUTUSAN SA PAGBUBUO NG PANIBAGO SA LUPON SA KORESPONDENSIYA OPISYAL AT IBA PANG AKTIBIDAD NG AHENSYA NG LUNGSOD', 'https://drive.google.com/file/d/1dCVEyqvOpr-US-Xj_TgFBOV-kcNWuNps/view?usp=sharing', '18', '2021-02-16', 'NUMBERED MEMORANDUM', 'active'),
(988, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1_XyGAjXC4j0NfsilLsyTxlXob0IshvdH/view?usp=sharing', '17', '2021-02-15', 'NUMBERED MEMORANDUM', 'active'),
(989, '', 'CLOTHING / UNIFROM ALLOWANCE FOR CY 2021', 'https://drive.google.com/file/d/1Qd_Ppoi_vIhJ_ady0wcYedoEigKhZE9k/view?usp=sharing', '16', '2021-02-15', 'NUMBERED MEMORANDUM', 'active'),
(990, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1yREXVdW73UUtUxPg47j_UMRuooUsPOLR/view?usp=sharing', '15', '2021-01-27', 'NUMBERED MEMORANDUM', 'active'),
(991, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/17wleS0Mjqfxl5X1yCScI5JCtTcYSO21J/view?usp=sharing', '14', '2021-01-29', 'NUMBERED MEMORANDUM', 'active'),
(992, '', 'AN ORDER ESTABLISHING THE MUSLIM CONSULTATIVE COUNCIL IN THE CITY OF MANILA', 'https://drive.google.com/file/d/1USfJidJ_k4kgVyvXa2Y8IRvwPVvdd6rO/view?usp=sharing', '13', '2021-01-26', 'NUMBERED MEMORANDUM', 'active'),
(993, '', 'RESUMPTION OF DIVISION ORIENTATION FOR PARENTS, TEACHERS AND SCHOOL PRINCIPALS (OPTP) ON INFILTRATION OF SCHOOLS AND RECRUITMENT OF YOUTHS AND STUDENTS BY THE CPP-NDF-NPA', 'https://drive.google.com/file/d/1cWPPuN9vo-MrVYMmphrtY18qiHscEHM9/view?usp=sharing', '13', '2021-01-13', 'NUMBERED MEMORANDUM', 'active'),
(994, '', 'REASSIGNMENT OF ASSISTANT SCHOOL PRINCIPALS', 'https://drive.google.com/file/d/1FK6LBooek17CmpCoxzv3tleDx3jOnv6e/view?usp=sharing', '11', '2021-01-19', 'NUMBERED MEMORANDUM', 'active'),
(995, '', 'ANG GAWAD SA ULIRANG GURO SA FILIPINO 2021', 'https://drive.google.com/file/d/1fF-lbJ6gUku_IsiYIZMBc5-F_1flG5CU/view?usp=sharing', '7', '2021-02-15', 'NUMBERED MEMORANDUM', 'active'),
(996, '', 'AN ORDER PROVIDING FOR STRINGENT GUIDELINES AND REGULATIONS TO BE OBSERVED DURING THE CELEBRATION OF THE ANNUAL FEAST DAY OF THE STO. NI?O IN TONDO AND PANDACAN AREAS, THIS CITY, INCLUDING STRICT IMPL', 'https://drive.google.com/file/d/1yWiUUuc96U7TRnIvvwS8aFnkMtH2-Y2U/view?usp=sharing', '7', '2021-01-13', 'NUMBERED MEMORANDUM', 'active'),
(997, '', 'FILING OF SWORN STATEMENT OF ASSETS, LIABILITIES AND NET WORTH AND DISCLOSURES OF BUSINESS INTERESTS AND FINANCIAL CONNECTIONS AND IDENTIFICATION OF RELATIVES IN THE GOVERNMENT SERVICE AS OF DECEMBER ', 'https://drive.google.com/file/d/1FHWG1mmCjNCvs7SbNQW1RLoGPMlqfUMt/view?usp=sharing', '6', '2021-01-11', 'NUMBERED MEMORANDUM', 'active'),
(998, '', 'SPECIAL ORDER', 'https://drive.google.com/file/d/1V5P0Rm7LoL2CmV8gL0Yp8fiBHjwGg6Z0/view?usp=sharing', '5', '2021-01-11', 'NUMBERED MEMORANDUM', 'active'),
(999, '', 'INVITATION FROM THE CENTER FOR GLOBAL BEST', 'https://drive.google.com/file/d/1xqVLSrQpkxvvjdP4A14rpeBJ1iNMUmWW/view?usp=sharing', '4', '2021-01-07', 'NUMBERED MEMORANDUM', 'active'),
(1000, '', '2021 BUDGET EXECUTION DOCUMENTS', 'https://drive.google.com/file/d/1YWxCiaed7ZOqYwRYftPqN3NxOxTJn2r_/view?usp=sharing', '3', '2021-01-06', 'NUMBERED MEMORANDUM', 'active'),
(1001, '', 'REASSIGNMENT OF MR. ROLAND P. SORIANO, CHIEF OF PROPERTY SERVICES TO THE DISASTER RISK REDUCTION MANAGEMENT OFFICE (DDRMO) AND THE DESIGNATION OF MS. CAROLINA C. QUERI, SUPERVISING ADMINISTRATIVE OFFI', 'https://drive.google.com/file/d/1AP59I0YgbVQu-MTbE10oP1AX2ESFQqRw/view?usp=sharing', '2', '2021-01-06', 'NUMBERED MEMORANDUM', 'active'),
(1002, '', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1yvtqs4REVd5OZKG5Duof_v0qXvY25Lp7/view?usp=sharing', '1', '2021-01-05', 'NUMBERED MEMORANDUM', 'active'),
(1010, '', 'WINNERS IN THE NATIONAL INVENTORS\' WEEK - OUTSTANDING PHILIPPINE INNOVATION REVOLUTION (NIW-OPHIR)', 'https://drive.google.com/file/d/1pCbpeLPzGc3cvButopxblWKDpr-SG3DN/view?usp=sharing', '0', '2021-12-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1011, '', 'MATHEMATICS MONTH CELEBRATION', 'https://drive.google.com/file/d/1iieHZA1uUP8r0uHLsyV_tCsVc7wRzTmF/view?usp=sharing', '0', '2021-12-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1012, '', 'QUARTER 3 AND QUARTER 4 TV LESSON PRODUCTION', 'https://drive.google.com/file/d/1NAeryEpcLG9O2aLapLxPDFCao6U30H_k/view?usp=sharing', '0', '2021-12-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1013, '', 'PREPARATION OF THE 2021 SDO ANNUAL ACCOMPLISHMENT', 'https://drive.google.com/file/d/1N_-ChJ0OJa5so_WtwfeiaKHn2VWPHRLH/view?usp=sharing', '0', '2021-12-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1014, '', 'DESIGNATION ORDER FOR PLANNING AND RESEARCH AND SCHOOL MONITORING AND EVALUATION', 'https://drive.google.com/file/d/1EBIRrmPYUsz1NXccAP2s-uBgv3ELP0WL/view?usp=sharing', '0', '2021-12-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1015, '', 'WINNERS IN THE 10TH DIVISION ASEAN COMPETITION', 'https://drive.google.com/file/d/1H68Alsw0-CMHLssKXmExmC52fLIqwkRn/view?usp=sharing', '0', '2021-12-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1016, '', 'SUBMISSION OF SBM SELF - ASSESSMENT RESULT', 'https://drive.google.com/file/d/1cXgnVCpLWcWLXczP31890hKaeZfrT6to/view?usp=sharing', '0', '2021-12-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1017, '', 'CALL FOR SUBMISSION OF ENTRIES FOR SEARCH FOR THE BEST INTEGRATION OF FINANCIAL LITERACY KEY CONCEPTS IN SCIENCE AND MATHEMATICS THROUGH SELF-LEARNING MODULES', 'https://drive.google.com/file/d/1_lPp4WDJqfNkRd4-DYnv-esO5b9lmUOq/view?usp=sharing', '0', '2021-12-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1018, '', 'DEADLINE FOR SUBMISSION OF REPORTS FOR THE UTILIZATION OF FUNDS FY 2021', 'https://drive.google.com/file/d/1zz4fUSzDOFQkDGbMrTMvcpHmtOov5es6/view?usp=sharing', '0', '2021-12-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1019, '', 'CONDUCT OF MONITORING AND VALIDATION OF FACILITIES REPAIR UNDER THE MAINTENANCE AND OTHER OPERATING EXPENSES (MOOE) FOR CY 2022', 'https://drive.google.com/file/d/1agtmNY-TaW6bTMOsjZi8ZbhNygmjJyG5/view?usp=sharing', '0', '2021-12-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1020, '', 'DEADLINE FOR SUBMISSION OF FINANCIAL DOCUMENT FOR PS ALLOTMENTS FY 2021', 'https://drive.google.com/file/d/1FT1rsWFNrIou-8IcLWEZX438SOXv1bbC/view?usp=sharing', '0', '2021-12-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1021, '', 'WINNERS IN THE 2021 DIVISION FILIPINO VALUES', 'https://drive.google.com/file/d/1sm1drVNSDCzWZYk_ZZtv5qlxBx0sdAzM/view?usp=sharing', '0', '2021-12-13', 'UNNUMBERED MEMORANDUM', 'active'),
(1022, '', 'MONITORING OF SIM CARDS DISTRIBUTION FROM SCHOOL TO STUDENTS', 'https://drive.google.com/file/d/1kXfGE2xiCHoEBVqw0ae0qUoQqlOTCKch/view?usp=sharing', '0', '2021-12-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1023, '', 'ADDENDUM OT UNNUMBERED MEMORANDUM DATED NOVEMBER 22, 2021 (CONDUCT OF Q1 ASSESSMENT FOR SELECTED LEARNERS IN ALL GRADE LEVELS ACROSS LEARNING AREAS)', 'https://drive.google.com/file/d/1RdfaFdTooh3_uMhdx9xdmxS3yd3DWrs0/view?usp=sharing', '0', '2021-12-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1024, '', 'CONDUCT OF REGIONAL VIRTUAL TRAINING ON SPORTS SKILLS (BASKETBALL)', 'https://drive.google.com/file/d/1pWOrAR3KMgqvL9aqtzVpx1NbIN4BPhHl/view?usp=sharing', '0', '2021-12-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1025, '', 'ENSURING HEALTH-MANAGEMENT-RELATED SPACES IN THE PARTICIPATING SCHOOLS; DESIGNATION OF CLINIC TEACHERS; AND ORIENTATION / TRAINING ON SCHOOL HEALTH AND CLINIC MANAGEMENT AND OPERATIONS', 'https://drive.google.com/file/d/1b_n19HxVyKuyDSmdrrEEObILMsQN3HQm/view?usp=sharing', '0', '2021-12-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1026, '', 'DIVISION-WIDE ORIENTATION ON THE POLICIES AND GUIDELINES ON THE DEPLOYMENY OF PRE-SERVICE TEACHERS FOR FIELD STUDY AND TEACHING INTERNSHIP', 'https://drive.google.com/file/d/1WSnKJ91COSyYqe77icuOVTWxtWY7v2jT/view?usp=sharing', '0', '2021-12-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1027, '', 'NEWLY ELECTED OFFICERS OF THE MANILA FEDERATION OF MATHEMATICS CLUBS (MAFEMACS) SY 2021-2022 AND MANILA PUBLIC SCHOOLS SECONDARY MATHEMATICS TEACHERS ASSOCIATION (MAPSSEMTA) SY 2021-2023', 'https://drive.google.com/file/d/1PLy2Mhh-aOjGfAGMEgwFtBBGcMZACwib/view?usp=sharing', '0', '2021-12-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1028, '', 'VARIOUS L&D PROGRAMS FOR SCHOOL LEADERS OF PRIME NCR CHAMPIONS', 'https://drive.google.com/file/d/1lSmHFdLdK_9sYN1rG7XY6pM8-LVNCMAI/view?usp=sharing', '0', '2021-12-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1029, '', 'MICROSOFT YOUTH', 'https://drive.google.com/file/d/1rOTuD2Z_ARncGAZ4hgNR8qRHaiRc-7-o/view?usp=sharing', '0', '2021-12-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1030, '', 'SUSPENSION OF DIVISION MEMORANDUM NO. 208 DATED NOVEMBER 17, 2021', 'https://drive.google.com/file/d/1HCPhjZKzAZsjpmtpO2p7sEPHZU0wzWDO/view?usp=sharing', '0', '2021-12-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1031, '', 'WINNERS IN VARIOUS LOCAL AND INTERNATIONAL MATHEMATICS ONLINE COMPETITIONS', 'https://drive.google.com/file/d/19iCzKt3OLm0FY8SSBNHCMBFnfcOkzbqc/view?usp=sharing', '0', '2021-12-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1032, '', 'EARLY LANGUAGE LITERACY AND NUMERACY (ELLN) DIGITAL TRAINING FOR ELEMENTARY SCHOOL HEADS, PUBLIC SCHOOL DISTRICT SUPERVISORS, AND SELECTED NEW GRADES 1-3 MASTER TEACHERS', 'https://drive.google.com/file/d/1T0fJAXcfuc_M-B7g6B07KmiB7K7gpNKV/view?usp=sharing', '0', '2021-12-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1033, '', 'SCHEDULE OF ACTIVITIES AND DIVISION SELECTION SUB-COMMITTEES ON THE HIRING PROCESS OF TEACHER I POSITION IN THE JUNIOR HIGH SCHOOL LEVEL (BATCH 2 )', 'https://drive.google.com/file/d/1EqVZwzTQdoQNbuNTImoafxAJ0WSULwuE/view?usp=sharing', '0', '2021-11-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1034, '', '10TH ASEAN QUIZ', 'https://drive.google.com/file/d/1LGFVoIk-WhySoE3ekDTYMu9o98KNclAY/view?usp=sharing', '0', '2021-11-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1035, '', 'ONLINE ORATORICAL SPEECH FOR POPULATION DEVELOPMENT COMPETITION', 'https://drive.google.com/file/d/1n-kuxPqWn0rjisty-dm0QX9GIXDLIFoB/view?usp=sharing', '0', '2021-11-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1036, '', 'NATIONAL WINNERS IN THE 87TH NATIONAL BOOK WEEK CELEBRATION (TELL IN TANDEM CONTEST AND PINOY BOOK CHARACTER CONTEST)', 'https://drive.google.com/file/d/1bHuJE8UR0gaFMoSH7S1_SapAsVF5-Xqs/view?usp=sharing', '0', '2021-11-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1037, '', 'ADDENDUM TO UNNUMBERED MEMORANDUM DATED NOVEMBER 8, 2021 (DIVISION WINNERS IN THE 87TH NATIONAL BOOK WEEK ACTIVITIES (TELL TANDEM: BOOK BASED INTERACTIVE STORYTELLING AND PINOY BOOK CHARACTER ONLINE C', 'https://drive.google.com/file/d/1ZTOGCSlMPlec5nWyz0yC6l-8gachZFfw/view?usp=sharing', '0', '2021-11-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1038, '', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF MONETIZATION OF CALENDAR YEAR 2021', 'https://drive.google.com/file/d/1VsE8p5YYnMzNBVXJcga3EcrLf8rQpzxv/view?usp=sharing', '0', '2021-11-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1039, '', 'ASSESSMENT OF LEARNER\'S DEVELOPMENT AND MONITORING OF THE HOMEROOM GUIDANCE PROGRAM', 'https://drive.google.com/file/d/1Qkzseklz_RXJ5ae6rxPIweR8hEFAfPgx/view?usp=sharing', '0', '2021-11-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1040, '', 'DENTAL PROFILING OF SDO-MANILA PERSONNEL FOR UGNAYANG DENTAL', 'https://drive.google.com/file/d/1QT8D1ybsp94X5bGXArF5GoMl1cqlzoJa/view?usp=sharing', '0', '2021-11-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1041, '', 'YEAR-END UPDATES OF NATIONAL DEPED TEACHER - TV BROADCASTERS CUM AWARDING', 'https://drive.google.com/file/d/1bHhy9LEnhW5lY3Fq-JTTINkJNIEEauCF/view?usp=sharing', '0', '2021-11-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1043, '', '\"REVIEW AND REFINEMENT OF RETURNS\" - CID PROGRAM IMPLEMENTATION REVIEW', 'https://drive.google.com/file/d/1jKnOKQbcGtEwpjrpC-u0CTUNnYq80HGt/view?usp=sharing', '0', '2021-11-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1044, '', 'DEVELOPING ROBOTICS SKILLS AND INNOVATIVE MINDS', 'https://drive.google.com/file/d/1bDFKsq1VLlNSSsqu30N3S9w8-pv0PZKX/view?usp=sharing', '0', '2021-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1045, '', 'POST EVALUATION CONFERENCE OF INCLUSIVE EDUCATION TRAINING TEAM, FEEDBACK SHARING AND REVIEW OF THE INCLUSIVE EDUCATION & ELLN ACTION PLANS', 'https://drive.google.com/file/d/1k80tEq-09JbBIot1DAp_fXxITDAICVTa/view?usp=sharing', '0', '2021-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1046, '', 'CONDUCT OF Q1 ASSESSMENT FOR SELECTED LEARNERS IN ALL GRADE LEVELS ACROSS LEARNING AREAS', 'https://drive.google.com/file/d/16i9vWAMA33nZczpGwRc0aGeFRsWnkz6Y/view?usp=sharing', '0', '2021-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1047, '', 'DEVELOPMENT OF MELCS-BASED DIGITAL LEARNING RESOURCE PACKAGE FOR PRACTICAL RESEARCH 1 AND 2', 'https://drive.google.com/file/d/1naMzM1bSwgOEYjQvLeXjQSiSCKwRkB1r/view?usp=sharing', '0', '2021-11-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1048, '', 'FEU - PROGRAM FOR THE ADVANCEMENT OF MATHEMATICS (FEU-PAM) FOR ELEMENTARY AND SECONDARY LEARNERS', 'https://drive.google.com/file/d/1mWtHlX9eXm1ecuPiwTiWEr6cKiZBlt9g/view?usp=sharing', '0', '2021-11-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1049, '', 'DIVISION ECO FESTIVAL 2021', 'https://drive.google.com/file/d/1t6d-N4tC6Ht96Lm0GxGKpqgnGxbRalbV/view?usp=sharing', '0', '2021-11-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1050, '', 'MANILA YOUTH CONGRESS 2.0', 'https://drive.google.com/file/d/15_V2moZwRWMIoF-txGPvJqMWX4uHCaL_/view?usp=sharing', '0', '2021-11-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1051, '', 'NATIONWIDE SURVEY ON THE REWARDS AND RECOGNATION (R & R) SYSTEM OF THE DEPARTMENT OF EDUCATION', 'https://drive.google.com/file/d/109Zys9llsnAPEHQBAjizqPhn0hSYn_9y/view?usp=sharing', '0', '2021-11-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1052, '', 'JOINT DELIVERY VOUCHERS PROGRAM IMPLEMENTERS, PARTNERS AND BENEFICIARIES', 'https://drive.google.com/file/d/1vIdXBf_PbjWCW103z79bEtM20X15GeDg/view?usp=sharing', '0', '2021-11-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1053, '', 'CID STRATEGIC PLANNING PRESENTATION AND DELIBERATION OF PROGRAMS, PROJECTS, AND ACTIVITIES FOR SY 2022', 'https://drive.google.com/file/d/1Gk7bNfvx5zcqqo-bBqlkGVm7Z4BZ-Md6/view?usp=sharing', '0', '2021-11-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1054, '', 'ELECTED OFFICERS OF THE MANILA PUBLIC SCHOOL GUIDANCE PERSONNEL ASSOCIATION (MPSGPA) FOR SCHOOL YEARS 2021-2022 & 2022-2023', 'https://drive.google.com/file/d/1H5ZrY9fW3X5l3_dQH065TPVZAeB_9Cqy/view?usp=sharing', '0', '2021-11-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1055, '', '2021 DIVISION OBSERVANCE OF FILIPINO VALUES MONTH', 'https://drive.google.com/file/d/1hot7dd-UTnpz2MMksEe1JtNC4mdk5-wH/view?usp=sharing', '0', '2021-11-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1056, '', 'SEMINAR ON CSC-PRIME-HRM (RECRUITMENT, SELECTION AND PLACEMENT) AND INVENTORY OF PERSONNEL (TEACHING AND NON-TEACHING)', 'https://drive.google.com/file/d/1xSjZRqsxLIUI_6YffHhebtS1i5_q-Car/view?usp=sharing', '0', '2021-11-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1057, '', 'ONLINE ORIENTATION ON THE IMPLEMENTATION OF THE SCHOOL-BASED FEEDING PROGRAM FOR SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/14LGQHg9oXuUafIBCxXmimgAOM3rbO5Xv/view?usp=sharing', '0', '2021-11-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1058, '', 'SUBMISSION OF SY 2021-2022 CLASS PROGRAMS AND TEACHERS\' CLASS SCHEDULES', 'https://drive.google.com/file/d/1ISiiOlpbzf_o5UZssdqHCqJBGUknQAG4/view?usp=sharing', '0', '2021-11-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1059, '', 'TRAINING FOR THE DEVELOPMENT AND PROMOTION OF CAMPUS JOURNALISM PROGRAM', 'https://drive.google.com/file/d/1mq4IPLN2OTLvoepXs6AzESXq3m8oJ0kr/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1060, '', 'ISSUANCE OF CERTIFICATE OF GOOD HEALTH FOR RETURN TO WORK ORDER', 'https://drive.google.com/file/d/1LcDYSH40dZkTTF9GiV7bpMPe0sji6G_L/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1061, '', '\"TEACHERS IN THE CHANGING WORLD\" - SDO MANILA TEACHERS\' INDUCTION PROGRAM', 'https://drive.google.com/file/d/1V7E2FJZ7kkkIgdIkTX7hZlLf2s06zaVN/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1062, '', 'TIBAY NG DIBDIB (TND) DIVISION DEMONSTRATION LESSONS HOSTED BY F. MA. GUERRERO ELEMENTARY SCHOOL', 'https://drive.google.com/file/d/1QwdmZK3Nb6ziuIo5w8wMckhsMKRM_Lf5/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1063, '', 'REITERATION ON THE USE OF LOCATOR/PASS SLIP', 'https://drive.google.com/file/d/1BkCZHMPQJue_XAPcu6HmB-IbvzQCjdtU/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1064, '', 'VIRTUAL CELEBRATION OF THE NATIONAL STUDENTS\' DAY 2021', 'https://drive.google.com/file/d/197oa5Q67E2l9KiZVfvCBjrUtse0hfpCd/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1065, '', 'VIRTUAL CELEBRATION OF THE NATIONAL DAY OF REMEMBRANCE FOR ROAD CRASH VICTIMS', 'https://drive.google.com/file/d/1ZB65VhJ-DUH7_WUXpvqDABDCg_QPabIJ/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1066, '', 'NATIONAL STUDENT PARLIAMENT 2021', 'https://drive.google.com/file/d/1917obYyVJVLWIVVk661qnUNQRxFmRkAB/view?usp=sharing', '0', '2021-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1067, '', 'LEARNING RESOURCE MANAGEMENT SECTION (LRMS)', 'https://drive.google.com/file/d/1Unpq_MoSVvm1Qd8OectilMRImV9ctDYP/view?usp=sharing', '0', '2021-11-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1068, '', 'UPDATING OF THE PHYSICAL AND FINANCIAL ACCOMPLISHMENT FOR FY 2018 DOWNLOADING OF FUNDS', 'https://drive.google.com/file/d/1idDXrCYKGw2F1EtQTIYVgaFz2NExkhOu/view?usp=sharing', '0', '2021-11-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1069, '', 'CAPACITY BUILDING FOR SCHOOL HEADS, ASSISTANT PRINCIPALS AND SUPERVISORS', 'https://drive.google.com/file/d/11iG8griJK9YiIvrjwYUiSVL_4B0IdN21/view?usp=sharing', '0', '2021-11-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1070, '', 'WRITESHOP ON THE DEVELOPMENT OF QUARTERS 1 & 3 ASSESSMENT TEST IN ALL LEARNING AREAS', 'https://drive.google.com/file/d/1-Oe1BEG_wOwbtfwZ9z8OxtS-UXhiEJkr/view?usp=sharing', '0', '2021-11-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1071, '', 'PARTICIPATION TO THE PHASE 4 - WEBINAR SERIES AND WORKSHOP FOR NEWLY-HIRED TEACHERS (DOST SCHOLARS UNDER RA 10612) BATHC 2', 'https://drive.google.com/file/d/1OHeFrqk0D-sLD3pgzG0jhDU9b5vsBvGX/view?usp=sharing', '0', '2021-11-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1072, '', 'DIVISION WINNERS IN THE 87TH NATIONAL BOOK WEEK ACTIVITIES (TELL IN TANDEM: BOOK BASED INTERACTIVE STORYTELLING AND PINOY BOOK CHARACTER ONLINE CATEGORY)', 'https://drive.google.com/file/d/1bR3Sw726Tpht34CbmKjxwwumcKmtbink/view?usp=sharing', '0', '2021-11-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1073, '', 'ONWARD: NURTURING FEARLESS EDUCATORS WEBINAR', 'https://drive.google.com/file/d/1DkpW7ph0mtg6uk_CwrfWlp8VZiLSxNiN/view?usp=sharing', '0', '2021-11-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1074, '', 'PANDIBISYONG PAGSASANAY NG MGA PAMPAARALANG TAGAPAGSANAY SA PAGTUTURO NG PANIMULANG PAGBASA SA PAMAMARAANG MARUNGKO BATAY SA ONLINE MODALITY', 'https://drive.google.com/file/d/1BqIX_5uhC8RTn5t3aDhSsI8dlLIxFnn_/view?usp=sharing', '0', '2021-11-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1075, '', '2021 ELEMENTARY SCIENCE CONTESTS', 'https://drive.google.com/file/d/15IXK8FCw73f6SrTYOpAkq7M-yNTdbssN/view?usp=sharing', '0', '2021-11-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1076, '', 'DUTIES OF NON-TEACHING PERSONNEL INVOLVED IN PROPERTY CUSTODIANSHIP AND FINANCE', 'https://drive.google.com/file/d/11RhTdJEW2RGnNsMEYFCSvITXP1-MbK9w/view?usp=sharing', '0', '2021-11-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1077, '', 'REITERATION OF PARTICIPATION TO THE 2021 4TH QUARTER NATIONWIDE SIMULTANEOUS EARTHQUAKE DRILL (NSED) ACTIVITIES', 'https://drive.google.com/file/d/1RkM-oyXzcHSxFr17oYToJvBL5VHSsgPK/view?usp=sharing', '0', '2021-11-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1078, '', 'DEADLINE FOR SUBMISSION OF FINANCIAL DOCUMENTS 2021', 'https://drive.google.com/file/d/1UkOAO7pnv91MdAw6hgdc--pcbGKwoyCc/view?usp=sharing', '0', '2021-11-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1079, '', 'ORIENTATION ON THE \"POLICY GUIDELINES ON THE PROVISION OF EDUCATIONAL PROGRAMS AND SERVICES FOR LEARNERS WITH DISABILITIES IN THE K TO 12 BASIC EDUCATION PROGRAM\"', 'https://drive.google.com/file/d/11SeQK9mGsvA0FlRgitcgJp7UBv_BHKIh/view?usp=sharing', '0', '2021-11-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1080, '', 'JOINT DELIVERY VOUCHERS PROGRAM IMPLEMENTERS, PARTNERS AND BENEFICIARIES', 'https://drive.google.com/file/d/10TWpoqDNPsNQmTttgjzO9QDV2KSOY0xb/view?usp=sharing', '0', '2021-11-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1081, '', 'VIRTUAL CONDUCT OF COMPETITIVE EXAMINATION, INTERVIEW AND APPRAISAL OF DOCUMENTS OF APPLICANTS FOR ELEMENTARY SCHOOL PRINCIPAL I APPLICANTS', 'https://drive.google.com/file/d/17ARKKuygvQheX7t7rkTL9umumWX5OuQ0/view?usp=sharing', '0', '2021-11-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1082, '', 'MANILA PUBLIC SECONDARY SOCIAL STUDIES TEACHERS ASSOCIATION (MAPSESSTA) OFFICERS 2021-2023', 'https://drive.google.com/file/d/1lhVFRQcG81xBLmjxr5hCdMAZLpstpJEP/view?usp=sharing', '0', '2021-11-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1083, '', 'VIRTUAL CONDUCT OF COMPETITIVE EXAMINATION, INTERVIEW AND APPRAISAL OF DOCUMENTS OF APPLICANTS FOR ELEMENTARY SCHOOL PRINCIPAL I', 'https://drive.google.com/file/d/1H1zw7IrJRvdGnyCNjGevBT6OmBXrcXiK/view?usp=sharing', '0', '2021-11-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1085, '', 'VIRTUAL SMASHER PHILIPPINES TRAINING OF TRAINERS: ALCOHOL EDUCATION TO EMPOWER A GENERATION', 'https://drive.google.com/file/d/1jqLl_kJ2yE_lK84-2h87mx_HVUA2hj-C/view?usp=sharing', '0', '2021-10-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1086, '', 'PARTICIPATION TO THE LEARNING AND DEVELOPMENT (L AND D) PROGRAMS FOR PRIME NCR CHAMPIONS', 'https://drive.google.com/file/d/1Omtbq5BljhMXCz_X_mA0Y35fffhULa_6/view?usp=sharing', '0', '2021-10-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1087, '', 'VIRTUAL TRAINING OF SELECT SENIOR HIGH SCHOOL GRADE 11 TEACHERS AND DISTRIBUTION OF STUDENT ACCOUNTS', 'https://drive.google.com/file/d/1-WYkIafZWw3fbvq-S8PxgynHNd766-Oj/view?usp=sharing', '0', '2021-10-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1088, '', 'GUIDELINES IN THE CONDUCT OF TEACHING DEMONSTRATIONS', 'https://drive.google.com/file/d/11MzIpgk9Nl-w7qMs0D-BnZ0QU88T8WRz/view?usp=sharing', '0', '2021-10-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1089, '', 'NATIONAL BARKADA KONTRA DROGA CONVENTION', 'https://drive.google.com/file/d/1JB3flxWG-VQe4G0X-13gxVWuPcIyadlL/view?usp=sharing', '0', '2021-10-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1090, '', 'DESIGNATION OF SCHOOL MENTAL HEALTH (SMH) PROGRAM FOCAL PERSONS', 'https://drive.google.com/file/d/1fOyExtOsSKJhVOw4Rl3aqN4qDbMsdTu-/view?usp=sharing', '0', '2021-10-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1091, '', 'ADDITIONAL LEARNING GADGETS TO SCHOOLS (BATCH 2)', 'https://drive.google.com/file/d/1IlSn3KC0WzQ0EV-nfubayI_0cZaL_AN2/view?usp=sharing', '0', '2021-10-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1092, '', 'AWARDEES FROM SIAM INTERNATIONAL MATH AND SCIENCE OLYMPICS (SIMSO) - SCIENCE CATEGORY NATIONAL ROUND', 'https://drive.google.com/file/d/1T0DGRCS8sQnflgA-Gvy0lWZUmnxBCMRL/view?usp=sharing', '0', '2021-10-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1093, '', 'PREPARATION OF READING PROFILE OF LEARNERS THROUGH THE REVISED PHIL-IRI ASSESSMENT TOOL', 'https://drive.google.com/file/d/1s1j586ysbByZyqJSq2tgK1BEincqvAJF/view?usp=sharing', '0', '2021-10-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1094, '', 'MANILA SECONDARY SCIENCE CLUB ADVISERS ASSOCIATION (MSSCAA) VIRTUAL ACTIVITIES FOR S.Y. 2021 - 2022', 'https://drive.google.com/file/d/1hVjKS4XTHS4UgyMx8nN3y8iJmAdtayEA/view?usp=sharing', '0', '2021-10-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1095, '', 'INVITATION TO JOIN THE NATIONAL SCIENCE AND TECHNOLOGY WEEK (NSTW) 2021 CELEBRATION', 'https://drive.google.com/file/d/1QZr_5-LcJNxRinkqOCpVYSqesZwexIoX/view?usp=sharing', '0', '2021-10-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1096, '', 'ENVIRONMENT PROTECTION AND SUSTAINABILITY WEBINAR SERIES', 'https://drive.google.com/file/d/113wXBvzdpjpxZv2gdk8U8_2Sb5dwUxlr/view?usp=sharing', '0', '2021-10-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1097, '', 'ASEAN YOUNG CLIMATE LEADERS PROGRAMME (ASEAN YCLP)', 'https://drive.google.com/file/d/1BAv_LmTLCVgN7XSnlC4kHWUz_eG99qwH/view?usp=sharing', '0', '2021-10-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1098, '', 'CONDUCT OF ONLINE DIVISION ORIENTATION ON DEPED ORDER #40, S. 2021, GUIDELINES ON THE JOINT DELIVERY VOUCHER PROGRAM FOR SENIOR HIGH SCHOOL TECHNICAL-VOCATIONAL-LIVELIHOOD (JDVP-SHS-TVL) S.Y. 2021-202', 'https://drive.google.com/file/d/1cccmb0aWRHfAwdY6cxqnBlr669Pili6e/view?usp=sharing', '0', '2021-10-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1099, '', 'VALIDATION OF SCHOOL PROTOCOL ON PROMOTING LEARNERS\' MENTAL HEALTH ON SCHOOLS (SP-PLMHS)', 'https://drive.google.com/file/d/1AUT9mceJZHBK6nHbPd1MQALwlGUFsTd3/view?usp=sharing', '0', '2021-10-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1100, '', 'PHILIPPINE IDENTIFICATION SYSTEM (PHILSYS) NATIONAL I.D. REGISTRATION SCHEDULE FOR SDO-MANILA EMPLOYEES (BATCH 4)', 'https://drive.google.com/file/d/1f1U6zp-IACGGug4m1NgDJ4Dj_tdTIaWx/view?usp=sharing', '0', '2021-10-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1101, '', 'WINNERS IN THE 2021 HONG KONG INTERNATIONAL MATHEMATICAL OLYMPIAD (HKIMO)', 'https://drive.google.com/file/d/1ylZHYkeC51d27rnGclH4ucrCN3vLM6U2/view?usp=sharing', '0', '2021-10-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1102, '', 'MATHEMATICS COORDINATORS IN ELEMENTARY TO SENIOR HIGH SCHOOL', 'https://drive.google.com/file/d/14NZtDKYU1V4lrjLgbsSnurF6xYGyBgK4/view?usp=sharing', '0', '2021-10-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1103, '', 'POLICIES AND GUIDELINES FOR COVID-19 RELATED SITUATIONS', 'https://drive.google.com/file/d/1sBXd47dSnWwAXM3YOL_9-bdm0g7EKRLU/view?usp=sharing', '0', '2021-10-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1104, '', 'CHANGE OF DATE OF SUBMISSION OF NOMINEES FOR THE SECRETARY\'S AWARD OF EXCELLENCE IN CURRICULUM AND INSTRUCTION (SAFE CI)', 'https://drive.google.com/file/d/19JCh9zzIOK71S-lUbp5bRl9lth6c14-O/view?usp=sharing', '0', '2021-10-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1105, '', 'FEU - PROGRAM FOR THE ADVANCEMENT OF MATHEMATICS (FEU-PAM) FOR ELEMENTARY AND SECONDARY LEARNERS', 'https://drive.google.com/file/d/1PK2NwXPc4mBX_wtvSjqAA11LgVIBy7td/view?usp=sharing', '0', '2021-10-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1106, '', 'JUNIOR HIGH SCHOOL MATHEMATICS DEPARTMENT AND ABM OFFICERS', 'https://drive.google.com/file/d/1Q-AhHOc5fQFB0V5WbYBM3x8H8A7PoDvz/view?usp=sharing', '0', '2021-10-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1107, '', 'ELMINA Q. PARAS, WINNER IN THE INTERNATIONAL SCIENCE COMPETITIONS', 'https://drive.google.com/file/d/17zgVOMBVEsLL4cGwmdGS8CCy6QgO7JiJ/view?usp=sharing', '0', '2021-10-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1108, '', 'ONLINE TECHNICAL ASSISTANCE, MONITORING, AND MENTORING SESSIONS FOR THE 2021 BASIC EDUCATION RESEARCH FUND (BERF)', 'https://drive.google.com/file/d/15pAEW6nxSixAGkrqbGeTMVAEFDlrnw6_/view?usp=sharing', '0', '2021-10-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1109, '', 'STUDY ON THE ACTUAL COST EXPENDITURE OF TEACHERS\' OUT-OF-POCKET EXPENSES LAST SCHOOLS YEAR 2020-2021', 'https://drive.google.com/file/d/1IOBvU9eU07U7RR1zoi0J0RC4SrxQMIy-/view?usp=sharing', '0', '2021-10-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1110, '', '2021 UNITED NATIONS ONLINE CULMINATION PROGRAM', 'https://drive.google.com/file/d/1jQbra0oPKIcWezYz8N7y6uH6CbQok1Cn/view?usp=sharing', '0', '2021-10-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1111, '', 'DISSEMINATION OF OFFICIAL SOCIAL MEDIA ACCOUNTS OF THE DEPARTMENT OF EDUCATION', 'https://drive.google.com/file/d/10T5IHwDKnKJ5m64MPFQzi-BzHsY2JVq_/view?usp=sharing', '0', '2021-10-13', 'UNNUMBERED MEMORANDUM', 'active'),
(1112, '', '5S INTERNAL AUDIT SELF-ASSESSMENT AND TECHNICAL ASSISTANCE SCHEDULE', 'https://drive.google.com/file/d/17Mcfukcwe2F4x7maif628nUe_6BLCc6y/view?usp=sharing', '0', '2021-10-13', 'UNNUMBERED MEMORANDUM', 'active'),
(1113, '', 'RESULTS OF THE FIVE-STAR VIDEO MAKING CONTEST', 'https://drive.google.com/file/d/1VYmMlr4_0AKYDN5VCXAUVidlUeJlwf9F/view?usp=sharing', '0', '2021-10-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1114, '', 'REASSIGNMENT OF ELEMENTARY SCHOOL NURSES', 'https://drive.google.com/file/d/1t8FZi-Cd0akcSLk0s5RvRy6bOYjhNVEW/view?usp=sharing', '0', '2021-10-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1115, '', 'LIVE CASCADE OF MODULES (ABM STRAND)', 'https://drive.google.com/file/d/1J5ktjHDNyIHk8dwITaqLqjt90ogQ837h/view?usp=sharing', '0', '2021-10-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1116, '', 'WORKSHOP ON THE UTILIZATION OF THE TEACHER-MADE CONTEXUALIZED READING AND SPEAKING MATERIALS FOR PROJECT WISER KIDS (WORLD INITIATIVE FOR SUCCESSFUL EDUCATIONAL READERS)', 'https://drive.google.com/file/d/19XSJp4P56OsOxOnMg9quutQMYUdE2IA3/view?usp=sharing', '0', '2021-10-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1117, '', 'FIELD CASCADING OF TEACHING GRAMMAR COMMUNICATIVELY IN THE PHILIPPINES', 'https://drive.google.com/file/d/1RRPE8pLfd_k4TepSjJt03K7yx8UsyHZK/view?usp=sharing', '0', '2021-10-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1118, '', 'PRESENTATION PORTFOLIO ASSESSMENT FOR ALS ELEMENTARY AND JUNIOR HIGH SCHOOL PROGRAM COMPLETERS OF SY 2020 - 2021 AND PREVIOUS YEARS', 'https://drive.google.com/file/d/1U7mAi4r2Z2ABm1G0eLZs5PrQn0XoiSZh/view?usp=sharing', '0', '2021-10-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1119, '', 'CREATION/PRODUCTION OF ALS INFED VIDEO LESSONS PHASE 1 - WEBINAR ON CREATION OF VIDEO LESSONS PHASE 2 - PRODUCTION OF VIDEO LESSONS FOR ALS INFED', 'https://drive.google.com/file/d/1wRcy1BgTFz6AaQTL3vjkOpy-kF_XStfC/view?usp=sharing', '0', '2021-10-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1120, '', 'SCHOOL ALLOCATION OF SUB-ALLOTMENT RELEASE ORDER FOR ELEMENTARY, JUNIOR AND SENIOR HIGH SCHOOLS THE ADDITIONAL MAINTENANCE AND OTHER OPERATING EXPENSES (MOOE)', 'https://drive.google.com/file/d/1G4aGTJpt5c5cvKQicd5JWXT5PGcS_5hv/view?usp=sharing', '0', '2021-10-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1121, '', 'PHILIPPINE IDENTIFICATION SYSTEM (PHILSYS) NATIONAL I.D REGISTRATION SCHEDULE FOR DEPED-MANILA TEACHERS AND EMPLOYEES (BATCH 3)', 'https://drive.google.com/file/d/1CM41dgzO8-mvNkh34HnKop1n28aBWB6J/view?usp=sharing', '0', '2021-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1122, '', 'DOCUMENTARY VIDEO EPISODES OF THE \"OUR FRAGILE EARTH: PROTECTED AREAS OF THE PHILIPPINES\"', 'https://drive.google.com/file/d/1P2mRtQCvlzxjmpxg0qebagllhpiCaIVF/view?usp=sharing', '0', '2021-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1123, '', 'PARTICIPATION OF MS. MARIA CECILIA A. SANTIAGO IN THE VIRTUAL WORKSHOP ON THE VALIDATION OF THE REVISED POLICIES OF THE YOUTH FOR ENVIRONMENT IN SCHOOLS ORGANIZATION (YES-O) PROGRAM', 'https://drive.google.com/file/d/1gbK_gxOlGY2uBrsAXM23x8_TvtmcFMUO/view?usp=sharing', '0', '2021-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1124, '', 'ISSUANCE OF CERTIFICATE OF ENROLLMENT FOR THE EDUCATIONAL ASSISTANCE PROGRAM (BATCH 3)', 'https://drive.google.com/file/d/1B7scaeZXjLJ5EFPRK-QuENBWOb73FGI0/view?usp=sharing', '0', '2021-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1125, '', 'PROJECT B.T.S.: A BALIK ESKWELA DIGITAL LITERACY STARTER PACK', 'https://drive.google.com/file/d/1H5DYsZFmG-UgadJh1E8la2XQQMwpQ5Rs/view?usp=sharing', '0', '2021-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1126, '', 'PRIVATE SCHOOLS MONITORING ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'https://drive.google.com/file/d/1K74EHfi4mG0XkiFgHBEq27ewFLjBfHlG/view?usp=sharing', '0', '2021-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1127, '', 'RESULTS OF THE 2021 FIRST ONLINE DIVISION SCHOOLS PRESS CONFERNCE (DSPC)', 'https://drive.google.com/file/d/1_v04Lzch2bFUlZG5wXBXYVtFaV32Gtdh/view?usp=sharing', '0', '2021-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1128, '', 'CORRIGENDUM TO UNNUMBERED MEMORANDUM NO. 234 DATED AUGUST 18, 2021 (ENHANCING THE BEHAVIORAL COMPETENCIES OF TEACHERS IN THE NEW NORMAL)', 'https://drive.google.com/file/d/1GGWJMJp8kTaG2u3nJyqkgKpTMtiPyser/view?usp=sharing', '0', '2021-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1129, '', 'DEPED NCR PRIME TV', 'https://drive.google.com/file/d/1w-TOQLL-MT7l0ssaZqnRUy6x0HwhX8hP/view?usp=sharing', '0', '2021-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1130, '', 'MANILA WORLD TEACHERS\' DAY CELEBRATION 2021', 'https://drive.google.com/file/d/1i8RWNvyX4SPbDkVmisC9ig4dIEZlN77T/view?usp=sharing', '0', '2021-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1131, '', 'COMPOSITION/RECOMPOSITION OF SCHOOL LEARNING RESOURCE MANAGEMENT AND DEVELOPMENT CENTER (SLRMDC) TEAM', 'https://drive.google.com/file/d/1s9YdikxOcKk9iYSlGrSWwThtTs55Ue8z/view?usp=sharing', '0', '2021-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1132, '', 'DIVISION ORIENTATION ON THE IMPLEMENTATION OF HOMEROOM GUIDANCE PROGRAM FOR SY 2021-2022', 'https://drive.google.com/file/d/1CG12gYjJ1h4D7RV60DbWBKBOSs380eOp/view?usp=sharing', '0', '2021-09-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1133, '', 'RESEARCH MENTORSHIP: VALIDATORS\' MENTORING TO RESEARCHERS', 'https://drive.google.com/file/d/1Ge1YihHp3EG0yPYmega34_-6TLhyOxLU/view?usp=sharing', '0', '2021-09-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1134, '', 'DEPED-NCR RESEARCH JAMBOREE 2021 AND CALL FOR SUBMISSION OF DISTRICT/SCHOOL RESEARCH MANAGEMENT BEST PRACTICES', 'https://drive.google.com/file/d/1wlo2knrOdE0cE8lWnME3nGRx7JeDP6Za/view?usp=sharing', '0', '2021-09-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1135, '', '20TH ASIA PACIFIC TRAINING WORKSHOP (APTW) ON EDUCATION FOR INTENATIONAL UNDERSTANDING (EIU)-MENTORSHIP AND GRANT COMPETITION PROGRAMS', 'https://drive.google.com/file/d/1d3BV6dehKPkog1_C_x2uNma4LXly2BRX/view?usp=sharing', '0', '2021-09-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1136, '', 'NEWLY ELECTED OFFICERS OF VARIOUS SCIENCE CLUBS', 'https://drive.google.com/file/d/1cKqACNLEWa7SJA70KyPwcgPBYgPkfXNP/view?usp=sharing', '0', '2021-09-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1137, '', 'ONLINE TRAINING-WORKSHOP FOR SCHOOL LIBRARIANS AND TEACHER-LIBRARIANS: BOOSTING ONLINE LIBRARY SERVICES', 'https://drive.google.com/file/d/1o-GDfGyMoshYpp_dpXAizBviT6dtp0I0/view?usp=sharing', '0', '2021-09-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1138, '', 'VIRTUAL DIVISION-WIDE ORIENTATION OF PRIVATE SCHOOLS ON THE IMPLEMENTATION OF SPECIAL ORDER (SO) AUTOMATION SYSTEM', 'https://drive.google.com/file/d/1vzwVnjDA8u_kznqFMuVHM0OUGnxMip3Q/view?usp=sharing', '0', '2021-09-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1139, '', 'PERFORMANCE-BASED BONUS (PBB) SCHOOL RANKING IN THE DIVISION OF CITY SCHOOLS (DCS), MANILA FOR FISCAL YEAR (FY) 2020', 'https://drive.google.com/file/d/1Jr64ZXiT_WUMQhVa70jbj-zSEb9p9y0y/view?usp=sharing', '0', '2021-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1140, '', 'WEDNSDAY MOMENTS FOR THE ENVIRONMENT', 'https://drive.google.com/file/d/1WbisgmU6RFHB5GaXZ5xewI6am_zH5Nzr/view?usp=sharing', '0', '2021-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1141, '', 'PERFORMANCE BASED BONUS FY 2020 PREPARATION TIMELINE', 'https://drive.google.com/file/d/1EUPgFnEjCsCElZNzOuWpDk4b3UEgFbIy/view?usp=sharing', '0', '2021-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1142, '', 'ONLINE SURVEY ON THE VACCINATION OF MINORS AGES 12-17', 'https://drive.google.com/file/d/1RzPYPRMEntm-7k66UI9Zvqn-VtDjBajx/view?usp=sharing', '0', '2021-09-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1143, '', 'MASS TRAINING OF HEADS OF ACADEMICS & SUBJECT AREA COORDINATORS (MTOHASACS) OF PRIVATE SCHOOLS', 'https://drive.google.com/file/d/1wilFp7YHxZqaySnVd8OPM_jpIQDpYG5o/view?usp=sharing', '0', '2021-09-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1144, '', 'ELECTED OFFICERS OF SUPERVISORS ASSOCIATIONS', 'https://drive.google.com/file/d/19XERlla_L-n8GWCIVEE6B_0gp-ymaR0W/view?usp=sharing', '0', '2021-09-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1145, '', 'PARTICIPATION OF SELECTED SDO-MANILA ATHLETES TO THE FIRST DEPED NATIONAL SKILLS DEMONSTRATION CONTEST', 'https://drive.google.com/file/d/1_c1ymVs4PfE7b-lp0x3ReSBZYwzEJ-yg/view?usp=sharing', '0', '2021-09-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1146, '', 'DIVISION-WIDE ONLINE TRAINING ON TEACHING STRATEGIES TO IMPROVE THE LITERACY AND NUMERACY SKILLS OF K - 3 LEARNERS', 'https://drive.google.com/file/d/1ne7uZJfZ3N5q_UlTYxAj1zHJR4yGpW88/view?usp=sharing', '0', '2021-09-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1147, '', 'SCHOOL ASSIGNMENTS OF DR. RONALD VINCENT R. SALVA, OIC, PUBLIC SCHOOLS DISTRICT SUPERVISOR', 'https://drive.google.com/file/d/1aj6cGKij17vFRSQMWZizqjmArr62B0ih/view?usp=sharing', '0', '2021-09-13', 'UNNUMBERED MEMORANDUM', 'active'),
(1148, '', 'COUNSELING AND REFERRAL SYSTEM FOR LEARNERS FOR SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1XoOI6pfqSkZQ-1OvLKrqGYMqwM4TREhY/view?usp=sharing', '0', '2021-09-03', 'UNNUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(1149, '', 'PARTICIPATION OF SELECT TEACHER IN THE VIRTUAL WRITESHOP ON THE POLICY REVISION OF YOUTH FOR ENVIRONMENT IN SCHOOLS ORGANIZATION (YES-O) PROGRAM', 'https://drive.google.com/file/d/1NLMV0SdoHtBbHShBxiI7bVx2ftmt3Hbq/view?usp=sharing', '0', '2021-09-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1150, '', 'SCHOOL ASSIGNMENT OF DR. SIMONETTE A. CASTRENCE, NEW PUBLIC SCHOOLS DISTRICT SUPERVISOR', 'https://drive.google.com/file/d/1Jk5Ej9Hy9u4WnOSQPxs_KUees10A25Jc/view?usp=sharing', '0', '2021-09-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1151, '', 'TEACHER INDUCTION PROGRAM 2021', 'https://drive.google.com/file/d/1AAo_UzQItwAq8aAXtQshmsl2SAJsAEmN/view?usp=sharing', '0', '2021-09-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1152, '', 'REITERATION OF PARTICIPATION TO THE 2021 3RD QUARTER NATIONWIDE SIMULTANEOUS EARTHQUAKE DRILL (NSED) ACTIVITES', 'https://drive.google.com/file/d/19bPrZ-MMX0EFeOvacU57MpPuvtYzERS-/view?usp=sharing', '0', '2021-09-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1153, '', 'BAYANIHAN PARA SA KALUSUGAN: OK SA DEPED, SA PAARALAN AT SA TAHANAN (ONE HEALTH WEEK)', 'https://drive.google.com/file/d/1BYDfgQSA5NJS-MxG-4Q5VUbrQKerA5tv/view?usp=sharing', '0', '2021-09-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1154, '', 'CALL FOR SEAMEO INNOTECH  SOUTHEAST ASIAN LEADERSHIP PROGRAM (SEA-SLP) FOR 2021 - 2022', 'https://drive.google.com/file/d/17ojK7bxjPL21Z_rLxDiC-K8pAsZTSbmT/view?usp=sharing', '0', '2021-08-31', 'UNNUMBERED MEMORANDUM', 'active'),
(1155, '', 'DIVISION RE-ORIENTATION ON SHS H.O.P.E. (HEALTH OPTIMIZING PHYSICAL EDUCATION) LEARNING COMPETENCIES', 'https://drive.google.com/file/d/1Z87QveU0qSZMvamZ6eWH_wVZWlUoADed/view?usp=sharing', '0', '2021-08-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1156, '', 'ADDITIONAL SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'https://drive.google.com/file/d/1SkZ2L7Q6Sv3POzI9rDpELh3HtQPLG7J7/view?usp=sharing', '0', '2021-08-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1157, '', 'VIRTUAL LAUNCH AND TRAINING OF TIBAY NG DIBDIB PROJECT IN PARTNERSHIP WITH UNIVERSITY RESERCH COMPANY (URC)', 'https://drive.google.com/file/d/1hHyXsKgbkzCvmOAImlF6fcz5vEGkWUi3/view?usp=sharing', '0', '2021-08-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1158, '', 'SUBMISSION OF INDIVIDUAL PERFORMANCE COMMITMENT AND REVIEW FORM (IPCRF) AND THE CITY OF MANILA - STRATEGIC PERFOMANCE MANAGEMENT SYSTEM (COM-SPMS)', 'https://drive.google.com/file/d/1plDh3ehi_MkkOciYPT3CDe_DSBxOEl20/view?usp=sharing', '0', '2021-08-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1159, '', 'SCIENCE MONTH 2021 CELEBRATIONAL', 'https://drive.google.com/file/d/1mk-Gm_WEdofCYGAL1YCz-DGyw5eYN0K9/view?usp=sharing', '0', '2021-08-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1160, '', 'AWARDEES FROM PHILIPPINES INTERNATIONAL MATH AND SCIENCE OLYMPICS (PIMSO) SCIENCE CATEGORY, NATIONAL ROUND', 'https://drive.google.com/file/d/1r8ARRu_N6yOeTLhUATLJRjjIb7mm-DRa/view?usp=sharing', '0', '2021-08-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1161, '', 'REQUEST FOR ASSISTANCE IN THE PRE-REGISTRATION OF TEACHERS IN THE PROFESSSIONAL DEVELOPMENT PROGRAM ON ASSESSMENT AND EMERGING LITERACIES WITH FOCUS ON PISA', 'https://drive.google.com/file/d/1ekeRx5hLvZoNGGe8yZfWH9P498vjlGTs/view?usp=sharing', '0', '2021-08-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1162, '', 'PARTICIPATION IN THE SECOND VIRTUAL IN-SERVICE TRAINING (VINSET) ON AUGUST 30 TO SEPTEMBER 3, 2021', 'https://drive.google.com/file/d/1rBtoBk4LMRka3tJBLIS5tf_3w7TsJSjj/view?usp=sharing', '0', '2021-08-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1163, '', 'SY 2021-2022 SCHEDULE OF ONLINE PROFESSIONAL MEETING OF EDUCATION PROGRAM SUPERVISORS AND PSDS IN-CHARGE OF LEARING AREAS WITH HEAD TEACHERS, MASTER TEACHERS, COORDINATORS, AND ALS IMPLEMENTERS', 'https://drive.google.com/file/d/1Tvo7PtaHtDLdzpIi3IT8pQ5uFONzkYaj/view?usp=sharing', '0', '2021-08-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1164, '', 'DIVISION SELECTION SUB-COMMITTESS ON THE SCREENING PROCESS OF CANDIDATES FOR MASTER TEACHERS I AND II POSITIONS (ELEMENTARY)', 'https://drive.google.com/file/d/1mFPznpjXZWHSSpWO94-07X7Z22SeDEUm/view?usp=sharing', '0', '2021-08-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1165, '', 'ENHANCING THE BEHAVIORAL COMPETENCIES OF TEACHERS IN THE NEW NORMAL', 'https://drive.google.com/file/d/1LaghaRUTazkxaVveKeS3XvPwQrOjiGBm/view?usp=sharing', '0', '2021-08-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1166, '', 'PAKIKIISA NG MGA PAMAHALAANG LOKAL, PANREHIYONG AHENSYA, KAGAWARAN AT TANGGAPAN SA PAGDIRIWANG NG BUWAN NG WIKANG PAMBANSA 2021', 'https://drive.google.com/file/d/1LuHKtogAzoKFXXj_pRYClyGSlfOIGUXL/view?usp=sharing', '0', '2021-08-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1167, '', 'CORRIGENDUM AND ADDENDUM TO MEMORANDUM NO. 226, S. 2021 (2021 VIRTUAL ROBOTICS TRAINING IN THE NORMAL)', 'https://drive.google.com/file/d/15KCXHeeEc7T3EVzh7CbgL27nJJFNwBd9/view?usp=sharing', '0', '2021-08-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1168, '', 'HOSTING OF THE NATIONAL HEROES DAY CELEBRATION', 'https://drive.google.com/file/d/10GfpO_vuAbkoUVrytOlMlQUi3Qn4SD1r/view?usp=sharing', '0', '2021-08-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1169, '', 'SELECTION AND SUBMISSION OF NOMINEES FOR THE 2021-22 SOUTHEAST ASIAN EDUCATIONAL INNOVATION AWARDS (SEA EIA)', 'https://drive.google.com/file/d/10efpHuZ_mErTiwCexebdsH-1qtISZiSZ/view?usp=sharing', '0', '2021-08-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1170, '', 'STRUCTURE MODIFICATION OF SCHOOL HEALTH AND NUTRITION', 'https://drive.google.com/file/d/1PqVbtjvSR6qh9dGrfO7uUrKVjHh9pM-e/view?usp=sharing', '0', '2021-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1171, '', 'VIRTUAL ROBOTICS TRAINING IN THE NEW NORMAL', 'https://drive.google.com/file/d/1fupJs5ccltaaFmJsoBoDogD7T93G0JPK/view?usp=sharing', '0', '2021-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1172, '', '\"MASHSIGABONG TAGUMPAY SA TRABAHO AT NEGOSYO PINANDAY\" (THE SHS GRADUATES SUCCESS STORIES)', 'https://drive.google.com/file/d/1iFtUCdzYYquwaJxM28hpmGvMw0-aLvcH/view?usp=sharing', '0', '2021-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1173, '', 'KAPAMILYA KO KAAGAPAY KO SA PAGBASA (KKP) PROJECT', 'https://drive.google.com/file/d/10Hw5XSA9Fib29LALrSIa05VckCrma0C5/view?usp=sharing', '0', '2021-08-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1174, '', 'GRANTING OF SERVICE CREDITS AND COMPENSATORY TIME-OFF TO PERSONNEL DIRECTLY ENGAGED IN DATA CAPTURE INITIATIVES', 'https://drive.google.com/file/d/10gDAnsfTnH_PFbbdjBSYkdWcheIyjg4A/view?usp=sharing', '0', '2021-08-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1175, '', 'FOCUS GROUP DISCUSSION (FGD) TO DEFINE ACADEMIC EASE IN DISTANCE LEARNING', 'https://drive.google.com/file/d/1YPrZqvp-yAqVWQdWVhZDl8rKZxwinAf3/view?usp=sharing', '0', '2021-08-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1176, '', 'SCHOOL ALLOCATION OF SUB-ALLOTMENT RELEASE ORDER OSEC-NCR-21-1697 DATED JUNE 9, 2021 ON THE ADDITIONAL MAINTENANCE AND OTHER OPERATING EXPENSES (MOOE)', 'https://drive.google.com/file/d/1eQ7XsUPfkcISj3UBMJzTekS1O2spOg6Z/view?usp=sharing', '0', '2021-08-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1177, '', '48TH DIVISION-WIDE VIRTUAL ALS GRADUATION AND COMPLETION CEREMONY', 'https://drive.google.com/file/d/139OVoM_2UHQYRGnn2Rga7ygSx5k_DdJY/view?usp=sharing', '0', '2021-08-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1178, '', 'DATA CAPTURE 6: BLENDED LEARNING MODALITIES, NEEDED RESOURCES, AND CONSOLIDATION OF QUARTERLY LEARNING PROGRESS', 'https://drive.google.com/file/d/17SEFWBwVjDxq12z7FRym8B8V9jW4Qplf/view?usp=sharing', '0', '2021-08-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1179, '', 'WINNERS OF SIYENSIKULA 2021', 'https://drive.google.com/file/d/1G2uYiggKEY7iH9IFqarT8fjbwpO0tMYr/view?usp=sharing', '0', '2021-08-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1180, '', 'PLASTIC BANK EDUCATION PROGRAM', 'https://drive.google.com/file/d/1XVA1F2CcnnYBDw6ndZyPlsg_uZsV7kMS/view?usp=sharing', '0', '2021-08-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1181, '', 'OFFICIAL DEPED NEW NATIONAL UNIFORM SWATCHES FOR TEACHING AND NON-TEACHING PERSONNEL', 'https://drive.google.com/file/d/1zDLQzrXxp642eqYicai5I_WsjLk_nD2f/view?usp=sharing', '0', '2021-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1182, '', 'CONTINUATION OF REPAIRS AND/OR CONSTRUCTION DURING THE ENHANCED COMMUNITY QUARANTINE (ECQ)', 'https://drive.google.com/file/d/1wCZlUaMqKl_RjW68PktnBcRZwIDGS_t4/view?usp=sharing', '0', '2021-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1183, '', 'AUTHORIZED PERSONNEL DURING THE IMPLEMENTATION OF THE ENHANCED COMMUNITY QUARATINE AND OTHER PERTINENT MATTERS', 'https://drive.google.com/file/d/19q8heAa79ovFNzKRhDlI7cI7hXV2q6wl/view?usp=sharing', '0', '2021-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1184, '', 'AUTHORIZED PERSONNEL DURING THE IMPLEMENTATION OF THE ENHANCED COMMUNITY QUARATINE IN THE DIVISION OFFICE AND OTHER PERTINENT MATTERS', 'https://drive.google.com/file/d/18kHU8Xqv6Bs7msGj6d2_2YM76pGQebdt/view?usp=sharing', '0', '2021-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1185, '', 'NEW SCHEDULE OF THE PROJECT PATIR (PURPOSIVE ALLIANCE OF TEACHERS FOR INTEGRATIVE REMEDIATION) WORKSHOP', 'https://drive.google.com/file/d/12Hyn9BFb-BaOW2tlsg3Zfk37XfmThtOv/view?usp=sharing', '0', '2021-08-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1186, '', 'BUWAN NG WIKANG PAMBANSA 2021', 'https://drive.google.com/file/d/1A2LDtI7lM2SKxtcCctOoJdr2oqOG9rNJ/view?usp=sharing', '0', '2021-08-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1187, '', 'PAKIKIISA SA 2021 PAGDIRIWANG NG BUWAN NG WIKANG PAMBANSA', 'https://drive.google.com/file/d/1Zfnef2b39ChiE0N9Nni83Vj3PJOPhLfL/view?usp=sharing', '0', '2021-08-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1188, '', 'RE-ORIENTATION AND ROLL-OUT ON STRENGTHENING SCHOOL-BASED MANAGEMENT - LEARNING CONTINUITY PLAN (SBM-LCP) IMPLEMENTATION AND TECHNICAL ASSISTANCE PROVISION', 'https://drive.google.com/file/d/17r73WWQKHs8cwXO1nQhJuZ5o6IdWNKP4/view?usp=sharing', '0', '2021-07-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1189, '', 'PAGGAMIT NG BAGONG LIHAM PAMUHATAN PARA SA MGA KORESPONDENSYA OPISYAL, KOMUNIKASYON, MEMORANDUM KALATAS, KAUTUSAN AT IBA PANG TRANSAKSYONG LEGAL', 'https://drive.google.com/file/d/1TpLSU3f3vM0QLnJ9sFn7ZfytNHSy0gOj/view?usp=sharing', '0', '2021-07-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1190, '', '07 NOVEMBER 2021 CAREER SERVICE EXAMINATION-PEN & PAPER TEST (CSE-PPT)', 'https://drive.google.com/file/d/1iyoIp5XMBq5IER0gAK-J_-yFDlaK5s7R/view?usp=sharing', '0', '2021-07-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1191, '', 'FIRST ONLINE DIVISION SCHOOLS PRESS CONFERENCE', 'https://drive.google.com/file/d/13YgQsyI4gkXKqBRnDrzR4ujvzVuPtZe6/view?usp=sharing', '0', '2021-07-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1192, '', 'PANAWAGAN SA PAGLAHOK SA PAGSULAT NG SANAYSAY AT PAGSULAT NG MALAYANG TULA', 'https://drive.google.com/file/d/13F5W_5uLWNQOLKM6_tIco_H-4fMteUKl/view?usp=sharing', '0', '2021-07-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1193, '', 'MONITORING AND EVALUATION OF THE FEASIBILITY STUDY ON ALS MICRO-CERTIFICATION', 'https://drive.google.com/file/d/13Qh5_5p1sZ0P0S69xVgdcOd1MOc4972j/view?usp=sharing', '0', '2021-07-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1194, '', 'PARTICIPATION IN THE PUBLIC LAUNCH OF THE NATIONAL STUDY ON OSAEC AND THE PH KIDS ONLINE SURVEY', 'https://drive.google.com/file/d/1eR_fzLSV3OdyysY6gw0kq4SFn1vgaofC/view?usp=sharing', '0', '2021-07-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1195, '', '2ND DOSE VACCINATION SCHEDULE FOR DEPED-MANILA TEACHERS AND EMPLOYEES', 'https://drive.google.com/file/d/10wJ21okJw9SWypxyx1JtV6P0UM1MwQ8K/view?usp=sharing', '0', '2021-07-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1196, '', 'PRIVATE SCHOOLS MONITORING ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'https://drive.google.com/file/d/17BxM5-22oRn6kMsCNyAXTp8Hcgrix63y/view?usp=sharing', '0', '2021-07-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1197, '', 'CHANGES IN UNNUMBERED MEMORANDUM 158-2021 DATED JUNE 16, 2021 (THREE-DAY ONLINE TRAINING-WORKSHOP ON STORYBOOK WRITING AND GRAPHIC DESIGN)', 'https://drive.google.com/file/d/1czhvPng8Vc3zQvWbRPujAbICzzodJP_c/view?usp=sharing', '0', '2021-07-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1198, '', 'ADDENDUM TO UNNUMBERED MEMORANDUM (UM) 192, S. 2021 DATED JULY 14, 2021 (QUALIFIED TRAINESS TO THE ELITE PROGRAM)', 'https://drive.google.com/file/d/1qEcmptRB2SWpEZiOOw2gDLiXaVFPBE6q/view?usp=sharing', '0', '2021-07-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1199, '', 'MASS DISSEMINATION OF INFORMATION ON SELF-REPORTING FOR COVID-19 VACCINATION TRACKER', 'https://drive.google.com/file/d/1L4phtxDm6sx0palbZ7w6r0oughMD2Ec_/view?usp=sharing', '0', '2021-07-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1200, '', 'FOCUSED GROUP DISCUSSION ON STREAMLINING FOR PROCESS AND PROCEDURES FOR QUALITY AND GOVERNANCE', 'https://drive.google.com/file/d/1cha5xKpa7D5fDcErNjL_uln07RO9YUh-/view?usp=sharing', '0', '2021-07-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1201, '', 'QUALIFIED TRAINEES FOR THE ELITE PROGRAM', 'https://drive.google.com/file/d/1K923ttnlYTddWo6Q2rjaLQNRbmALZFAU/view?usp=sharing', '0', '2021-07-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1202, '', 'SPECIAL EDUCATION TEACHER MODIFICATION OF VENUE FOR EVALUATION OF DOCUMENTS', 'https://drive.google.com/file/d/1RIefMk00NxKLaJVu1RlpubNfIbUpoC6T/view?usp=sharing', '0', '2021-07-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1203, '', 'WEBINAR ON MUSIC AND P.E. VIDEO LESSON PRODUCTION', 'https://drive.google.com/file/d/18l6Lb0SddAX7NBUTIiONktlz06dhMH5d/view?usp=sharing', '0', '2021-07-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1204, '', 'VIRTUAL PRESENTATION ON THE 47TH NUTRITION MONTH CELEBRATION', 'https://drive.google.com/file/d/1zSkjrMTM9eQ45ywzxwkdMW3R0KVBJ5wd/view?usp=sharing', '0', '2021-07-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1205, '', 'NEW SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS (PSDS)', 'https://drive.google.com/file/d/1g5_IpzX9sIELpNjCNve9QqqoLayXqWPx/view?usp=sharing', '0', '2021-07-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1206, '', 'VACANCIES, SCREENING AND SELECTION PROCESS OF ASATIDZ APPLICANTS FOR ARABIC LANGUAGE AND ISLAMIC VALUES EDUCATION (ALIVE)', 'https://drive.google.com/file/d/1t1mmsFZge2vafRmIiI2n8C9dwtIbX8-p/view?usp=sharing', '0', '2021-07-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1207, '', 'DISTRIBUTION OF DONATED HEALTH CARDS FOR SELECT TEACHING AND NON-TEACHING PERSONNEL', 'https://drive.google.com/file/d/1SHLckIv2IG5h8VbdyOUjBm89yIIDpIJh/view?usp=sharing', '0', '2021-07-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1208, '', 'SCHEDULE OF ONLINE EXAMINATION AND INTERVIEW FOR ELITE APPLICANTS', 'https://drive.google.com/file/d/1rWKw_lPout02qVr33dcbbhAr-kc0bG-j/view?usp=sharing', '0', '2021-07-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1209, '', 'SPECIAL EDUCATION TEACHER I SUBMISSION OF DOCUMENTS, SCHEDULE OF EVALUATION AND INTERVIEW', 'https://drive.google.com/file/d/1hMpEdEXjDCVwr4v-q29vlzB_gYH4JO17/view?usp=sharing', '0', '2021-07-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1210, '', 'SUMMER IN-SERVICE TRAINING FOR GUIDANCE COUNSELORS AND GUIDANCE TEACHERS', 'https://drive.google.com/file/d/1SxtKf46RnyzIBqL9FKMy3PYEAwVASqPO/view?usp=sharing', '0', '2021-07-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1211, '', 'WINNERS IN VARIOUS SCIENCE CONTESTS', 'https://drive.google.com/file/d/1pF8ekXFYej8LicpFZx68ROoLsIRMd9Ks/view?usp=sharing', '0', '2021-07-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1212, '', 'ASSESSMENT OF LEARNER\'S DEVELOPMENT AND MONITORING OF THE HOMEROOM GUIDANCE PROGRAM', 'https://drive.google.com/file/d/1vY7uMpRPyOkxgmMBSjYX-60Csse07QIe/view?usp=sharing', '0', '2021-06-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1213, '', '2021 MANILA COUNCIL TRAINERS\' UPDATE, CONFERENCE AND WORKSHOP', 'https://drive.google.com/file/d/1Sb9ZS6ZKPVFe9SeWDt1r5WdpOmcQzvxP/view?usp=sharing', '0', '2021-06-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1214, '', 'COUNCIL-WIDE ONLINE BOARD OF REVIEW FOR EAGLE SCOUT RANK', 'https://drive.google.com/file/d/1wbg5MXAJCkPI4NvZwgF14kONXwqFyDle/view?usp=sharing', '0', '2021-06-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1215, '', '1ST BATANG MAYNILA SPORTS CLINIC 2021', 'https://drive.google.com/file/d/1t_sFrakSMUn24S96bUAeqrjJ5w9bwveu/view?usp=sharing', '0', '2021-06-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1216, '', 'ELECTED OFFICERS OF THE MANILA SENIOR HIGH SCHOOL SCIENCE TEACHERS ASSOCIATION FOR S.Y. 2021-2023', 'https://drive.google.com/file/d/1wtJJaGTDxG-jzY7azmDUcQW1iOyNDmlz/view?usp=sharing', '0', '2021-06-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1217, '', 'REASSIGNMENT OF TEACHER-BROADCASTER FOR SY 2020-2021', 'https://drive.google.com/file/d/1C6rtOLWFUnISbPa_Bw7giliCQmwj9bJR/view?usp=sharing', '0', '2021-06-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1218, '', 'SUBMISSION OF MONITORING , EVALUATION, AND ADJUSTMENT (MEA) FORMS FOR F.Y. 2021', 'https://drive.google.com/file/d/1ZqltzPx8lcWwMht05OeLGzUS_19uZ73b/view?usp=sharing', '0', '2021-06-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1219, '', 'PULSE OF THE YOUTH: NATIONAL VOTER\'S REGISTRATION CAMPAIGN FOR THE 2022 ELECTIONS', 'https://drive.google.com/file/d/1lcm4f5IN9n32E6mqImkSbgh1nP6RCfwZ/view?usp=sharing', '0', '2021-06-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1220, '', 'PROJECT PC (PORTFOLIO CHECK)', 'https://drive.google.com/file/d/1Q-4XdSQSrLgjRO40uc8QA7SBe6f4-GDR/view?usp=sharing', '0', '2021-06-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1221, '', 'POLICY ON THE USE OF BIOMETRICS OR OTHER MEANS OF RECORDING OF ATTENDANCE', 'https://drive.google.com/file/d/11ydtLUwkWTs6Q-JePkx5d8PhHQ1dJSkI/view?usp=sharing', '0', '2021-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1222, '', 'DATA CAPTURE FOR PLANNING AND RESOURCE ALLOCATION', 'https://drive.google.com/file/d/155CoB0yxoxHZ_IHhPj1qIrtFs13QG-LF/view?usp=sharing', '0', '2021-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1223, '', 'CALL FOR APPLICANTS TO THE EXEMPLARY LEAGUE OF INNOVATIVE TEACHERS / EDUCATORS (ELITE) PROGRAM', 'https://drive.google.com/file/d/1EK9MbU9g0g7sc0VQytmfIZzt523RC6Rn/view?usp=sharing', '0', '2021-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1224, '', 'CHANGE IN MODALITY AND SCHEDULE OF THE CONDUCT OF ORIENTATION, INTERVIEW, AND APPRAISAL OF DOCUMENTS OF CANDIDATES FOR MASTER TEACHERS I AND II IN THE SENIOR HIGH SCHOOL', 'https://drive.google.com/file/d/1XY4vU_32GYBpQpgvxz6vpnwprCqhBXyj/view?usp=sharing', '0', '2021-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1225, '', 'CONSOLIDATED NUMBER OF SCHOOL DAYS FOR SY 2020-2021', 'https://drive.google.com/file/d/1qzDaLSnLSuCOkoNZC90jo7oSTjd6RKWk/view?usp=sharing', '0', '2021-06-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1226, '', 'COMPLIANCE TO THE DISINFECTION PROTOCOL', 'https://drive.google.com/file/d/1P9wLaggstkRkgI-L65WquRPTjcVEFF0C/view?usp=sharing', '0', '2021-06-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1227, '', 'CALL FOR ENTRIES FOR SIYENSIKULA 2021', 'https://drive.google.com/file/d/1iL6F89PV9e6DyqvReLiWG2Bs9AcOaxx5/view?usp=sharing', '0', '2021-06-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1228, '', 'WINNERS IN THE NATIONAL HERITAGE MONTH CELEBRATION', 'https://drive.google.com/file/d/1FgyAISyaLkQLE2x5mF6HXExtCsVfc9P8/view?usp=sharing', '0', '2021-06-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1229, '', 'WINNERS IN THE HONGKONG INTERNATIONAL MATHEMATICAL OLYMPIAD - HEAT ROUND 2021 (HKIMO)', 'https://drive.google.com/file/d/1pkJ2SysDpGXCxiQUBr5YKzFr6jlpV55e/view?usp=sharing', '0', '2021-06-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1230, '', 'SUBMISSION OF COVID-19 VACCINATION DATA', 'https://drive.google.com/file/d/1RJaWHyNR1m4LJG4oSW2g2TiS340VgpzL/view?usp=sharing', '0', '2021-06-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1231, '', 'THREE-DAY ONLINE TRAINING-WORKSHOP ON STORYBOOK WRITING AND GRAPHIC DESIGN', 'https://drive.google.com/file/d/19jUSZOBLCR2hamVMPp7OFweAeF_G2Lbc/view?usp=sharing', '0', '2021-06-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1232, '', 'WINNERS IN THE CULMINATING ACTIVITY OF ART WEBINAR', 'https://drive.google.com/file/d/17MWK9ti-dsosRTAYzFPoltfYiWpHMDQ3/view?usp=sharing', '0', '2021-06-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1233, '', 'ADDITIONAL SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'https://drive.google.com/file/d/1ks39cITFfs84VQHCp-QHKXY1XIu3Fn7s/view?usp=sharing', '0', '2021-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1234, '', 'OUTSTANDING HEAD TEACHERS IN MATHEMATICS SY 2020-2021', 'https://drive.google.com/file/d/1ZgoGjD4VqpA8U-a0QKr-AyHBQm1ug6hX/view?usp=sharing', '0', '2021-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1235, '', 'CELEBRITY QUIZ SHOWDOWN PRIZES TURNOVER CEREMONY', 'https://drive.google.com/file/d/1iItda3AOxKXBQxhER8PWTO_v4XR5S6JM/view?usp=sharing', '0', '2021-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1236, '', 'LIST OF CITY PAID EMPLOYEES/PERSONNEL WHO PHYSICALLY REPORTED FOR WORK DURING THE IMPLEMENTATION OF ENHANCED COMMUNITY QUARANTINE (ECQ) AND MODIFIED ENHANCED COMMUNITY QUARANTINE (MECQ)', 'https://drive.google.com/file/d/13ERZQlH6UcddVUg74miotOXCXE9jOyl7/view?usp=sharing', '0', '2021-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1237, '', 'STATUS REPORT ON ADDITIONAL TABLETS (LEARNING GADGETS)', 'https://drive.google.com/file/d/1vTje8EhDobxIYfPWbEZFBZ8G9-OTFxW4/view?usp=sharing', '0', '2021-06-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1238, '', 'CORRIGENDUM TO OUA MEMO 00-0521-0133 RE: SEARCH FOR HERITAGE TREES IN PUBLIC SCHOOLS', 'https://drive.google.com/file/d/1m6SXKBPPGoOdapgs_5aSqEWCxOzrIYPc/view?usp=sharing', '0', '2021-06-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1239, '', 'PROJECT DOUBLE B (BACK TO BASICS) FOR GRADE 1 - 3 TEACHERS IN MATHEMATICS', 'https://drive.google.com/file/d/1ooJX0AO7R10h6ZfjSUhP3r0QxfRToN93/view?usp=sharing', '0', '2021-06-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1240, '', 'KABATAAN AT KASARINLAN YOUTH FORUM', 'https://drive.google.com/file/d/1RxGvlar3uwY356mPXb-P2tghcCd9wpW-/view?usp=sharing', '0', '2021-06-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1241, '', 'SUBMISSION OF LDM PRACTICUM PORTFOLIO  AND EVALUATION SCHEDULE OF ACTIVITIES', 'https://drive.google.com/file/d/11uJcxynHlvAU0aEG4VWcen-7KQBSJDzv/view?usp=sharing', '0', '2021-06-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1242, '', 'REVITALIZING DIGITAL CAPACITY OF ALTERNATIVE LEARNING SYSTEM IMPLEMENTERS', 'https://drive.google.com/file/d/11z4r38MQSKd4CykMYvrQ33AfrNjMzuFd/view?usp=sharing', '0', '2021-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1243, '', 'FOCUS GROUP DISCUSSION ON THE DEVELOPMENT OF INDICATORS FOR TEACHER QUALITY OF DEPED NCR PRIME', 'https://drive.google.com/file/d/1Tj6EPpPxF2yjmBqJVT1Xl9BQIha9hoEb/view?usp=sharing', '0', '2021-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1244, '', 'ADDENDUM TO DIVISION MEMORANDUM NO. 127 S. 2021 (VIRTUAL TRAINING ON SCIENTIFIC RESEARCH IN THE NEW NORMAL)', 'https://drive.google.com/file/d/1poXRMNL9XwSkhOzLpceLCiG0XmGgHW1y/view?usp=sharing', '0', '2021-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1245, '', 'BIDYO KASAYSAYAN SERYE NG PAGGUNITA', 'https://drive.google.com/file/d/1HwObR7Rdald5afPjB94i7xeXYEIuO7_D/view?usp=sharing', '0', '2021-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1246, '', '\"BRUSH (W/ FLUORIDE TOOTHPASTE) FLOSS AND RINSE\" SDO-MANILA EMPLOYEES\' PPE FOR AN OPTIMUM ORAL HEALTH IN TIME OF PANDEMIC', 'https://drive.google.com/file/d/15OXtoinP02aK8DBeRyclTbxMmWBe_xV-/view?usp=sharing', '0', '2021-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1247, '', 'TRANSCRIPT OF RECORDS (TOR) EVALUATION', 'https://drive.google.com/file/d/1FPz_2edKbK6aL2Ja4Q_y-4JylLPA8sKr/view?usp=sharing', '0', '2021-06-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1248, '', 'KABATAAN AT KASARINLAN: THE PHILIPPIN INDEPENDENCE DAY YOUTH CAMPAIGN', 'https://drive.google.com/file/d/1S8s69Tko8zaTsQDfRt3ePWQtVYrQwJVs/view?usp=sharing', '0', '2021-06-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1249, '', 'TRAINING WORKSHOP FOR ELECTRONICS TEACHERS WITH THE THEME: \"DIFFERENT ICT PLATFORMS IN TEACHING ELECTRONICS PRODUCTS ASSEMBLY IN THE NEW NORMAL\"', 'https://drive.google.com/file/d/1dmDJw3PdgNnSulASzC3xY_r07BGzojwy/view?usp=sharing', '0', '2021-06-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1250, '', 'RECOGNITION OF PROFESSIONAL DEVELOPMENT PROGRAM', 'https://drive.google.com/file/d/1wWJHgGRx1EhwWktlNC9hKD7ECfIpCsWf/view?usp=sharing', '0', '2021-06-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1251, '', '1ST DEPED BEST OPEN EDUCATIONAL RESOURCES (OERS) CONTEST', 'https://drive.google.com/file/d/1SkG90F80IMrpFLtvJi6G_-YrAyppjzm1/view?usp=sharing', '0', '2021-06-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1252, '', 'DATA CAPTURE ON ICT EQUIPMENT AND INTERNET CONNECTIVITY IN SCHOOLS AND HOUSEHOLDS', 'https://drive.google.com/file/d/1Z7K58Fh9jEB951oBAbrc2-SGZfm2fCYv/view?usp=sharing', '0', '2021-06-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1253, '', 'ORIENTATION ON LDM PRACTICUM PORTFOLIO AND EVALUATION', 'https://drive.google.com/file/d/1qXQEFUISJOI-10XSKdYEnXLVl8InBC6p/view?usp=sharing', '0', '2021-06-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1254, '', 'EVALUATION OF APPLICANTS TO THE BASIC EDUCATION RESEARCH FUND (BERF) 2021', 'https://drive.google.com/file/d/1hMBWqD6b0frRcd_kHf1astaCXh2aOlsu/view?usp=sharing', '0', '2021-06-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1255, '', 'DIVISION ROLL OUT OF THE LITERACY INSTRUCTION TRAINING', 'https://drive.google.com/file/d/1esak2uU-P_309nOrB7Zsq-zls7nlEGtA/view?usp=sharing', '0', '2021-05-31', 'UNNUMBERED MEMORANDUM', 'active'),
(1256, '', 'PHILIPPINE IDENTIFICATION SYSTEM (PHILSYS) NATIONAL I.D. REGISTRATION SCHEDULE FOR SDO-MANILA EMPLOYEES', 'https://drive.google.com/file/d/1za5UtXv6PW6j7IXRNfAIwd5M99sx_pIB/view?usp=sharing', '0', '2021-05-31', 'UNNUMBERED MEMORANDUM', 'active'),
(1257, '', 'DISSEMINATION OF INFORMATION ON THE CLIMATE CHANGE YOUTH SURVEY', 'https://drive.google.com/file/d/1y7kfyxtdynSX4alHzqWmLlf1YJ5Q-MAe/view?usp=sharing', '0', '2021-05-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1258, '', 'MICROSOFT PHILIPPINES NATIONWIDE TRAINING FOR GRADE 12 TEACHERS AND STUDENTS', 'https://drive.google.com/file/d/1LSWscZjqeW8FcpCQhM45rWfeaxZ7n9l4/view?usp=sharing', '0', '2021-05-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1259, '', 'VACANCIES FOR SPECIAL EDUCATION TEACHER I POSITION (ELEMENTARY), DIVISION OF CITY SCHOOLS, MANILA', 'https://drive.google.com/file/d/1Gdk2Y75OYPN0AMnexKLENo9wUbF8fmxg/view?usp=sharing', '0', '2021-05-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1260, '', 'CONDUCT OF COMPUTER-BASED ENGLISH PROFICIENCY TEST (EPT) 2021 FOR TEACHER APPLICANTS', 'https://drive.google.com/file/d/1yZp5m6e_PElEAgGsdTxILfD-yhfs9aXd/view?usp=sharing', '0', '2021-05-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1261, '', 'TURN-OVER CEREMONY OF TEACHER-MADE READING AND SPEAKING READING MATERIALS', 'https://drive.google.com/file/d/1-K6SRnsxzr1SMGTTSnt-vRxuKP-thNSo/view?usp=sharing', '0', '2021-05-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1262, '', 'VIRTUAL TRAINING ON SCIENTIFIC RESEARCH IN NEW', 'https://drive.google.com/file/d/1-SfLFrgOOMoSwrahgVzh6lZ7dcOGfk1g/view?usp=sharing', '0', '2021-05-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1263, '', 'AUDIT FOR MOST ESSENTIAL LEARNING COMPETENCIES (MELCS) THIRD QUARTER OF SY 2020 - 2021', 'https://drive.google.com/file/d/17zW0cqmJJLm-0h2pI8d9qr3sMgfTx1wP/view?usp=sharing', '0', '2021-05-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1264, '', 'VIRTUAL ASSEMBLY OF SUPREME STUDENT / PUPIL GOVERNMENT TEACHER-ADVISERS AND YOUTH FORMATION PROJECT DEVELOPMENT OFFICERS', 'https://drive.google.com/file/d/1W2N2fb4Ko4gXxE5d-MUMHRyyOKdbzlql/view?usp=sharing', '0', '2021-05-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1265, '', 'SEARCH FOR HERITAGE TREES IN PUBLIC SCHOOLS', 'https://drive.google.com/file/d/1T8qjrWwSCkLpjCYMph3nwRyP4DLLfWn3/view?usp=sharing', '0', '2021-05-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1266, '', 'ONLINE CAPACITY BUILDING SEMINAR ON CAREER GUIDANCE', 'https://drive.google.com/file/d/1mKCWut0eSrdDOQKLshiv6ER6ybyPdntX/view?usp=sharing', '0', '2021-05-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1267, '', '2020 BRIGADA ESKWELA REGIONAL AWARDS', 'https://drive.google.com/file/d/1C6VSzr1m3VVujtztvFEr8IhOO5WrwdFV/view?usp=sharing', '0', '2021-05-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1268, '', 'MONITORING OF REGIONAL MID-YEAR ASSESSMENT 2021', 'https://drive.google.com/file/d/1B4AOZtjeAYqrQJEoQMF_XV4_tLY-3p2j/view?usp=sharing', '0', '2021-05-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1269, '', 'COMPOSITION OF THE DIVISION LEVEL SCREENING COMMITTEE FOR THE GAWAD SIKLAB 2021', 'https://drive.google.com/file/d/1W8ae6_3v8myX9nijo8R_4vDuUQOls4a0/view?usp=sharing', '0', '2021-05-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1270, '', 'COMPREHENSIVE VIRTUAL SESSIONS FOR THE SUPREME STUDENT GOVERNMENT', 'https://drive.google.com/file/d/1FviofOr6tyDBgJjucBpqSrClA-gjKIif/view?usp=sharing', '0', '2021-05-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1271, '', 'EMBEDDING GLOBAL CITIZENSHIP EDUCATION ACROSS LEARNING AREAS IN MAKING FIVE STAR LEARNING VIDEO CONTENT (FIVE-STAR VERSION 2.0: A VIDEO MAKING CONTEST)', 'https://drive.google.com/file/d/1NlD_D3HwR2HQ1AqYRLzBvwUCeIIiJH61/view?usp=sharing', '0', '2021-05-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1272, '', 'REQUEST FOR INFORMATION DISSEMINATION OF THE ONLINE COURSES FOR TEACHERS AND SCHOOL HEADS OF SOUTHEAST ASIA: PHILIPPINES', 'https://drive.google.com/file/d/1GId8djpfdDSPIrIdDhXZUQo4GfXVsqe3/view?usp=sharing', '0', '2021-05-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1273, '', 'SCHOOL-BASED MANAGEMENT - LEARNING CONTINUITY PLAN ROLL-OUT', 'https://drive.google.com/file/d/1GpmvpFlSoKi0s5twBkvK4aB0YV60c1gU/view?usp=sharing', '0', '2021-05-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1274, '', 'REGIONAL SURVEY ON LEARNING OUTCOMES', 'https://drive.google.com/file/d/1e4mfv5RDLZPBL1lIG4EmquHX4IWMayMS/view?usp=sharing', '0', '2021-05-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1275, '', 'UPDATING OF EARLY REGISTRATION FACILITY AND SUBMISSION OF 2021 EARLY REGISTRATION DOCUMENTATION REPORT', 'https://drive.google.com/file/d/170BhitfE6xCTQeSydVc8wQU82uKFsjmJ/view?usp=sharing', '0', '2021-05-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1276, '', 'CONDUCT OF ONLINE ACTIVITIES FROM 2021 UP TO 2022 FOR QUINCENTENNIAL COMMEMORATIONS IN THE PHILIPPINES (VICTORY AND HUMANITY 1521-2021)', 'https://drive.google.com/file/d/1eYkJoqAz3cfKQMFY0l5r_f45zM9JUl22/view?usp=sharing', '0', '2021-04-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1277, '', 'ADDENDUM AND CORRIGENDUM TO OUA MEMO 00-321-0042 RE: GAWAD SIKLAB 2021', 'https://drive.google.com/file/d/1h0k6dMJgtNqETvGlZj98MhNT7VXbuA1g/view?usp=sharing', '0', '2021-04-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1278, '', 'ART WEBINAR 2021 (THEME: \"ALAB SINING, ALAY SIGLA\")', 'https://drive.google.com/file/d/1rwksRuVhHg8Rm9wxVoSeuCeYjj_TIIZg/view?usp=sharing', '0', '2021-04-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1279, '', 'ADJUSTED TIMELING FOR RPMS IMPLEMENTATION IN VIEW OF THE AMENDEND SCHOOL CALENDAR FOR SY 2020 - 2021', 'https://drive.google.com/file/d/1btpI7z2f3b1ho6rYaaXYdirGXwqGJd-I/view?usp=sharing', '0', '2021-04-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1280, '', 'UPSKILLING AND RESKILLING PROGRAMS FOR TEACHERS AND SCHOOL LEADERS', 'https://drive.google.com/file/d/1Brzy_bgyyNcMuJzgq-jnnXjMj-J3Ddbl/view?usp=sharing', '0', '2021-04-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1281, '', 'CALIBRATION OF THE OFFICE PERFORMANCE COMMITMENT REVIEW FORM (OPCRF) AND INDIVIDUAL PERFORMANCE COMMITMENT REVIEW (IPCRF) OF THE REGIONAL OFFICE AND SCHOOLS DIVISION OFFICE FOR CALENDAR YEAR (CY) 2020', 'https://drive.google.com/file/d/1inoLuFBHEYi1LHInx2DYRtX-epCzFCCM/view?usp=sharing', '0', '2021-04-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1282, '', 'SUBMISSION OF ASSESSMENT FORM FOR SCHOOLS TO BE USED AS TESTING CENTERS FOR ENGLISH PROFICIENCY TEST', 'https://drive.google.com/file/d/1kM8Kiy_TZEUouhkY4hCbnzPOwWg8zQOW/view?usp=sharing', '0', '2021-04-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1284, '', 'NATIONAL CELEBRATION OF THE 500TH ANNIVERSARY OF THE BATTLE OF MACTAN ON 27 APRIL 2021', 'https://drive.google.com/file/d/1KgqCKyQq7K6nNLoM4t2NzvmlHz362AqG/view?usp=sharing', '0', '2021-04-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1286, '', 'DEPED MANILA E-LIBRARY LAUNCHING AND ORIENTATION', 'https://drive.google.com/file/d/1tQf1dRIuno0W0cQ1SoSvYnMhmYhxGywT/view?usp=sharing', '0', '2021-04-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1287, '', 'SUBMISSION OF DESIGNATED SCHOOL INFORMATION COORDINATORS (SICS)', 'https://drive.google.com/file/d/1hLkfpwGmPWenNH8rld44kNNnx6sNU3U2/view?usp=sharing', '0', '2021-04-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1288, '', 'ADDENDUM TO 2021 MANILA SCIENCE HIGH SCHOOL ADMISSION GUIDELINES FOR S.Y. 2021-2022', 'https://drive.google.com/file/d/1nJ7h-eHrPmiuFjxwnStN6zyAiMDPwfPl/view?usp=sharing', '0', '2021-04-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1289, '', 'WINNERS IN THE YMCA-FFPI COLORING, CARD & JINGLE MAKING CONTESTS', 'https://drive.google.com/file/d/1d6YlGcdbPEgpEXdi_CWAF1jb4-dWo7qm/view?usp=sharing', '0', '2021-04-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1290, '', 'SUBMISSION OF THE LIST OF VACCINATED SCHOOL PERSONNEL', 'https://drive.google.com/file/d/1xqLIrxWOfa2HfZ0JqQW4AV2UB-hfdi7U/view?usp=sharing', '0', '2021-04-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1291, '', 'SEARCH FOR THE OUTSTANDING MATHEMATICS HEAD TEACHER', 'https://drive.google.com/file/d/1f1I-5PycLTWgbsZhA3attm-l74kX6X0d/view?usp=sharing', '0', '2021-04-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1292, '', '1-HOUR LIVESTREAM WELLNESS SESSION ON FINANCIAL MANAGEMENT PROGRAM', 'https://drive.google.com/file/d/1mWd81bZUK4yalws-6uSQTw1XIKc0bfWB/view?usp=sharing', '0', '2021-04-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1293, '', 'CONDUCT OF SIMULTANEOUS FLAG RAISING CEREMONIES AND PARTICIPATION IN THE QUINCENTENNIAL D-DAY OR THE NATIONAL CELEBRATION OF THE 500TH ANNIVERSARY OF THE BATTLE AT MACTAN ON 27TH APRIL 2021 AND IN ACT', 'https://drive.google.com/file/d/15lcN1ovWgInoplMA_R853tWyaNNNNCOD/view?usp=sharing', '0', '2021-04-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1294, '', 'WINNERS IN THE 2020 SEARCH FOR ARALING PANLIPUNAN TEACHER OF THE YEAR AND TEN OUTSTANDING TRAINERS IN ARALING PANLIPUNAN (TOTAP)', 'https://drive.google.com/file/d/1IztDulnD35mFjhfhWdL5xymVAxj5zHse/view?usp=sharing', '0', '2021-04-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1295, '', 'EXTENSION OF SUBMISSION OF PRESENTATION PORTFOLIO ASSESSMENT FOR ALS ELEMENTARY AND JUNIOR HIGH SCHOOL PROGRAM COMPLETERS OF SY 2019-2020 AND PREVIOUS YEARS', 'https://drive.google.com/file/d/1exZSEcm5pX2v9WKTnJTi35vvhqz9Ea_0/view?usp=sharing', '0', '2021-04-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1296, '', 'WEBINAR-WORKSHOP ON TV BOADCAST LESSON SCRIPTWRITING AND VIDEO LESSON PRODUCTION FOR JUNIOR AND SENIOR HIGH SCHOOLS', 'https://drive.google.com/file/d/1SKKZjibGLhlJAKGWkfN0RniQe_rC9dya/view?usp=sharing', '0', '2021-04-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1297, '', 'IMBITASYON NG KOMISYON SA WIKANG FILIPINO SA PAGLAHOK SA PATIMPALAK NG SELYO NG KAHUSAYAN', 'https://drive.google.com/file/d/1KAyrvyKiZvWVOxjS9KNdEb4YPJmgdL5t/view?usp=sharing', '0', '2021-04-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1298, '', 'FILING & SUBMISSION OF STATEMENT OF ASSETS, LIABILITIES AND NETWORTH (SALN) FOR CY 2020', 'https://drive.google.com/file/d/1YfiEYg2Gq7n_1Frhf9_6UnyiOOMhRRBA/view?usp=sharing', '0', '2021-04-13', 'UNNUMBERED MEMORANDUM', 'active'),
(1299, '', 'AUDIO-VIDEO LESSON PRODUCTION FOR LSENS (SIGN LANGUAGE INTERPRETER VIDEO STREAM)', 'https://drive.google.com/file/d/1pJd_ZhkmRBB_6TWxpn1RphhEjuDrZ3Jb/view?usp=sharing', '0', '2021-04-13', 'UNNUMBERED MEMORANDUM', 'active'),
(1300, '', 'CAREER GUIDANCE PROGRAM (CGP) FOR SY 2020-2021', 'https://drive.google.com/file/d/1_jmka65UWXu-B2BZdzcyV9mnMPsDVYT2/view?usp=sharing', '0', '2021-04-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1301, '', 'CSC SEARCH FOR OUTSTANDING GOVERNMENT WORKERS 2021', 'https://drive.google.com/file/d/1xu9LtFn_-gy0eUgBRaQdOa4j6tFtesrt/view?usp=sharing', '0', '2021-04-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1302, '', 'DESIGNATION OF MS. LILIAN O. SAAVEDRA, SUPERVISING ADMINISTRATIVE OFFICER (BUDGET SERVICES) AS OFFICER-IN-CHARGE OF THE BUDGET SERVICES', 'https://drive.google.com/file/d/10Io4nbOZDkOpG2BP75oEO0T5ZEdDUquT/view?usp=sharing', '0', '2021-04-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1303, '', '2021 MANILA SCIENCE HIGH SCHOOL ADMISSION TEST (MSAT)', 'https://drive.google.com/file/d/1ZomvxKFVq9TNMKukUTIQeGY0dkMUXkkc/view?usp=sharing', '0', '2021-04-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1304, '', 'MANILA INTELLECTUAL PROPERTY, INNOVATION AND BUSINEES INCUBATION EXPO (MIPIBIEX)', 'https://drive.google.com/file/d/1BurfmyPXmWxybWLdq6unK_L2PbjSP01w/view?usp=sharing', '0', '2021-03-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1305, '', 'PRESENTATION OF PROGRAMS, PROJECTS, AND ACTIVITIES (PPAS) FOR C.Y. 2021', 'https://drive.google.com/file/d/1b5cueVPMOqHQL_LPTzbfb2Bc0Jq2ibnn/view?usp=sharing', '0', '2021-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1306, '', 'SCHEDULE OF ACTIVITIES AND DIVISION SELECTION SUB-COMMITTEES ON THE HIRING PROCESS OF TEACHER I POSITION FOR SCHOOL YEAR 2021 - 2022', 'https://drive.google.com/file/d/13QsO8aJMTuSFLGwB9OWCxx_D62RurNwb/view?usp=sharing', '0', '2021-03-19', 'UNNUMBERED MEMORANDUM', 'active'),
(1307, '', 'WINNERS IN THE 1ST VIRTUAL ARTS MONTH CELEBRATION 30TH NATIONAL ARTS MONTH CELEBRATION AND 9TH DEPED MANILA MUSIC AND ARTS FESTIVAL', 'https://drive.google.com/file/d/1pRPdJ740X2WVSNd8i2o_wKpDzHR8XVBh/view?usp=sharing', '0', '2021-03-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1308, '', 'UGNAYAN - KAALAMAN PARA SA MGA MAGULANG NG MGA MAG-AARAL NG MGA PAARALAN SA LUNGSOD NG MAYNILA', 'https://drive.google.com/file/d/1g2fsT5CODSgd6HzWZ69OBlOXGLCDuSHZ/view?usp=sharing', '0', '2021-03-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1309, '', 'SUBMISSION OF NATIONAL SCHOOL BUILDING INVENTORY (NSBI) SOFT COPY REPORTS', 'https://drive.google.com/file/d/1T8oGwxD-rfabNqeLoKfLnHz5xdvp_GjA/view?usp=sharing', '0', '2021-03-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1310, '', 'PHILIPPINE DAILY INQUIRER PLAYGROUNDS FOR THE MIND AND INQPLUS ', 'https://drive.google.com/file/d/1KLRcA_jW-k00T4U1qXI-LWseimFtTVpN/view?usp=sharing', '0', '2021-03-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1311, '', 'COVID-19 CASES REPORT', 'https://drive.google.com/file/d/1ckBVjV1JhdhBA6VxfC_qVpWYGc4XqcOW/view?usp=sharing', '0', '2021-03-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1312, '', 'PRESENTATION PORTFOLIO ASSESSMENT FOR ALS ELEMENTARY AND JUNIOR HIGH SCHOOL PROGRAM COMPLETERS OF SY 2019 - 2020 AND PREVIOUS YEARS (JOINT MEMORANDA OM-OAGA-2021-0021 AND DM-OUCI-2021)', 'https://drive.google.com/file/d/1AMQP12pUa69ZDyKbv4aOL-GunZgnE6w8/view?usp=sharing', '0', '2021-03-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1313, '', 'GAWAD SIKLAB: SEARCH FOR OUTSTANDING PROGRAM IMPLEMENTERS STUDENT LEADERS, TEACHER-ADIVERS, SCHOOL HEADS, AND REGIONAL AND DIVISION YOUTH FORMATION COORDINATORS', 'https://drive.google.com/file/d/1XUjz8XhKMVoNTwoN3Kcq-igpygSKCoMn/view?usp=sharing', '0', '2021-03-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1314, '', 'DIVISION ORIENTATION ON THE PHILIPPINE PROFESSIONAL STANDARDS SUPERVISORS (PPSS)', 'https://drive.google.com/file/d/1JDVuMg61vR-65y9ExV_8wQA1DhDOStDP/view?usp=sharing', '0', '2021-03-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1315, '', 'APPLICATION FOR TEACHER I POSITION IN THE DIVISION OF CITY SCHOOLS MANILA SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/18TNRS33XNJvEguX8f7Zcld-dCOC8i0xO/view?usp=sharing', '0', '2021-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1316, '', 'PROCESSING OF EQUIVALENT RECORD FORM (ERF) FOR TEACHER II AND TEACHER III', 'https://drive.google.com/file/d/17Sp-HlZ5FX4wVOguXYnQKLxDeCsj64Yh/view?usp=sharing', '0', '2021-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1317, '', 'REQUEST FOR ASSISTANCE IN FACILITATING AND/OR EXPEDITING THE COORDINATION AND COLLECTION OF FORM 137', 'https://drive.google.com/file/d/1By_X-nldhj1UBkG06iBM7TO-Wu86uQhZ/view?usp=sharing', '0', '2021-03-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1318, '', 'SURVEY ON THE PERCEPTION OF TEACHERS AND OTHER SCHOOL PERSONNEL ON VACCINATION', 'https://drive.google.com/file/d/1IIjOF-AtCJvIeia_Zo97vmXMNTrOthdz/view?usp=sharing', '0', '2021-03-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1319, '', 'BROADCAST OF \"TALA: TUKLASIN, ALAMIN, LIKHAIN, AT ALALAHANIN\"', 'https://drive.google.com/file/d/1TgszXxYTxCSItvCUn3MCVScv-vujmOgO/view?usp=sharing', '0', '2021-03-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1320, '', 'WORK IMMERSION ORIENTATION ON THE IMPLEMENTATION GUIDELINES DURING THIS SCHOOL YEAR 2020 - 2021', 'https://drive.google.com/file/d/1vpVU2ozww5HAmXWUBtnYz5sOlbCDmRt_/view?usp=sharing', '0', '2021-03-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1321, '', 'DIVISION ORIENTATION ON THE PHILIPPINE PROFESSIONAL STANDARDS FOR SCHOOL HEADS (PPSSH)', 'https://drive.google.com/file/d/1H730MdQYLX5QkFFW6P_H2fu3zsZOVTE_/view?usp=sharing', '0', '2021-03-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1322, '', 'REITERATION ON THE SCHEDULE FOR THE CONDUCT OF THE CY 2021 QUARTERLY NATIONWIDE SIMULATANEOUS EARTHQUAKE DRILL', 'https://drive.google.com/file/d/1yPmuh__QCklAfXaN3Z469QwYECiQwdSo/view?usp=sharing', '0', '2021-03-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1323, '', 'CURATED RESOURCES FOR CLIMATE CHANGE EDUCATION AND ACTION', 'https://drive.google.com/file/d/1LAqnOgMXm_awqzoSps3wuMxSyaN78udL/view?usp=sharing', '0', '2021-03-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1324, '', 'INVITATION TO WATCH STORIES FOR A BETTER NORMAL', 'https://drive.google.com/file/d/1YtrwuP2P2Ol-fe1Ilwt6DXNqJN2-ALOz/view?usp=sharing', '0', '2021-03-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1325, '', 'RENEWAL OF PROFESSIONAL LICENSE OF TEACHERS', 'https://drive.google.com/file/d/1gb47clqIyDEFdHsvEJ28vA78qR7wEX9r/view?usp=sharing', '0', '2021-03-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1326, '', 'REITERATION ON THE USER OF MELCS - MAPPED TEXTBOOKS TO SUPPLEMENT LEARNER\'S MATERIALS FOR S.Y. 2020-2021', 'https://drive.google.com/file/d/1d6XHiPAuqYTyT4Z3DpVyjV2YQtlUfI1S/view?usp=sharing', '0', '2021-03-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1327, '', 'PARTICIPANTS TO THE FOCUS GROUP DISCUSSION (FGD) ON ADAPTIVE TECHNICAL ASSISTANCE TRAINING WITH BAYAN ACADEMY', 'https://drive.google.com/file/d/1uLcHTYejlK4TKwbTBrPmHTwUyDYrpgsd/view?usp=sharing', '0', '2021-02-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1328, '', 'RETRIEVAL OF LEARNING CONTINUITY PLAN (BE-LCP) SUPPORT TO INSTRUCTION GADGETS', 'https://drive.google.com/file/d/1YApFPn8E8X-oode3eRG_aD8qG-U_L-gv/view?usp=sharing', '0', '2021-02-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1329, '', '2ND NATIONAL ARTS CONTEST IN CELEBRATION OF THE 65TH ANNIVERSARY OF PEACE TREATY BETWEEN PHILIPPINES AND JAPAN', 'https://drive.google.com/file/d/1dInC3hbhlI7Jx6qZEJizFGfmjCRQGoh0/view?usp=sharing', '0', '2021-02-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1330, '', 'JDVP TVI - PARTNERS MONITORING AND EVALUATION', 'https://drive.google.com/file/d/1klZbBTELCCnlLd6BTz3t92THMPx8YlpQ/view?usp=sharing', '0', '2021-02-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1331, '', 'ORIENTATION ON TECHNICAL ASSISTANCE PROVISION IN PREPARING JUNIOR AND SENIOR HIGH SCHOOL LEARNERS FOR CAREER TRACKS/OPPORTUNITIES', 'https://drive.google.com/file/d/1cUQQxZddR-5Mhjhbdg4-aEH6syX9HRxv/view?usp=sharing', '0', '2021-02-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1332, '', 'REGIONAL PARENTS TEACHERS ASSOCIATION (PTA) FORUM', 'https://drive.google.com/file/d/1fhkAQDwj7-qkRu1BTOK2gSr1mnZmFKqI/view?usp=sharing', '0', '2021-02-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1333, '', 'PARTICIPATION IN THE WEBINAR ON FINANCIAL LITERACY FOR TEACHERS', 'https://drive.google.com/file/d/1fjrMOwdBbHIiOOpmtVKSAbmMgKeFvlOL/view?usp=sharing', '0', '2021-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1334, '', 'CONDUCT OF INSTRUCTIONAL COACH-LED FOR LEARNING DELIVERY MODALITY 2 FOR TEACHERS', 'https://drive.google.com/file/d/1dcXXY9xwclgoHocC4dKk5XTIQQFuuGeO/view?usp=sharing', '0', '2021-02-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1335, '', 'JCI-MANILA ONLINE CHARITY CELEBRITY QUIZ SHOWDOWN', 'https://drive.google.com/file/d/10CZMzueBK2UDPyKOW73BKRWGlEn30d1Z/view?usp=sharing', '0', '2021-02-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1336, '', 'PARTICIPANTS TO THE METROBANK FOUNDATION FELLOWSHIP IN THE PUBLIC SERVICES (FPS)', 'https://drive.google.com/file/d/1TV_z-aK1wcyLIETq8dCfnY2ZeLcKRlLh/view?usp=sharing', '0', '2021-02-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1337, '', 'VIRTUAL SYMPOSIUM ON THE 149TH ANNIVERSARY OF THE MARTYRDOM OF GOMBURZA', 'https://drive.google.com/file/d/1btpzgwFCzwJ7DOCpNIcTgtrcXTffomXh/view?usp=sharing', '0', '2021-02-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1338, '', '1ST VIRTUAL ART MONTH CELEBRATION 30TH NATIONAL ARTS MONTH CELEBRATION AND 9TH DEPED MANILA MUSIC AND ARTS FESTIVAL', 'https://drive.google.com/file/d/1H_h4DBbQpNEF3eB0JLKTwgrMHj0jhJQ1/view?usp=sharing', '0', '2021-02-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1339, '', 'PROJECT FOR HUMAN RESOURCE DEVELOPMENT SCHOLARSHIP BY JAPANESE GRANT (JDS) FOR FY 2021-2023', 'https://drive.google.com/file/d/14Lvb1cLIUW5d29mcPJOit148sm3IByI9/view?usp=sharing', '0', '2021-02-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1340, '', 'JAPANESE GOVERNMENT (MEXT) SCHOLARSHIP PROGRAM FOR 2021', 'https://drive.google.com/file/d/1905QqUexZrfE-IhEs9Mg_R2DWMptx4me/view?usp=sharing', '0', '2021-02-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1341, '', 'SEAMEO REGIONAL CENTER FOR EDUCATION IN SCIENCE AND MATHEMATICS', 'https://drive.google.com/file/d/1S3QIBTBkjefqMzVMI2OaLXRRyGRni0lL/view?usp=sharing', '0', '2021-02-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1342, '', 'CORRIGENDUM TO UNNUMBERED DIVISION MEMORANDUM NO. 19-2021 (BAGS OF BLESSINGS 2021 TURN-OVER CEREMONY)', 'https://drive.google.com/file/d/13tgpkEL6CR7ctmrbHaj-vF2WdibeGZG1/view?usp=sharing', '0', '2021-02-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1343, '', 'SUBMISSION OF ELECTRIC AND WATER METER NUMBER', 'https://drive.google.com/file/d/1Xe8g0wOZdnwCtXOIKHg2v0hdbtBCXYrs/view?usp=sharing', '0', '2021-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1344, '', 'SUBMISSION OF REAL PROPERTY TAX DECLARATION OF LAND', 'https://drive.google.com/file/d/1bcqD22-oLcNaUj-mSh59liaB2I2BD4Nx/view?usp=sharing', '0', '2021-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1345, '', 'ORIENTATION OF SCHOOL HEADS ON INTERIM GUIDELINES ON ACADEMIC INSTRUCTION FOR THE REAMAINING QUARTERS OF SY 2020-2021', 'https://drive.google.com/file/d/1GQ2riRjYtklR5cJ-hwN2BRHSOzG8tiPz/view?usp=sharing', '0', '2021-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1346, '', 'NATIONAL ORAL HEALTH MONTH', 'https://drive.google.com/file/d/1eD3OXu4AUAj8am4NMHawmexO_EwWb-1K/view?usp=sharing', '0', '2021-01-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1347, '', 'DIVISION ORIENTATION FOR THE CONDUCT FO INSTRUCTIONAL COACH-LED FOR LEARNING DELIVERY MODALITY 2 FOR TEACHERS', 'https://drive.google.com/file/d/1UDpehHrPYNS9dQt8xhrZ_ogJZYzwclYo/view?usp=sharing', '0', '2021-01-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1348, '', 'WINNERS OF THE BATANG MANILENYO TUKLAS TALENTO CONTEST AND AWARDING CEREMONY', 'https://drive.google.com/file/d/13JJEC2DOVB4c8oE0oDh-j1D_Pjxe3AgL/view?usp=sharing', '0', '2021-01-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1349, '', 'LDM READINESS MIDLINE ASSESSMENT AND SUBMISSION UPDATES', 'https://drive.google.com/file/d/1gM3QIgc5mjvIIxYQvxc2btOJ9kGCGtEM/view?usp=sharing', '0', '2021-01-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1350, '', 'ADDENDUM TO UNNUMBERED DIVISION MEMORANDUM NO. 005-2020 DATED JANUARY 7, 2021 (SY 2020-2021 SCHEDULE OF ONLINE PROFESSIONAL MEETINGS OF EDUCATION PROGRAM SUPERVISORS AND PSDS IN-CHARGE OF LEARNING ARE', 'https://drive.google.com/file/d/1X7t6c2RF_gccTs7uXUH9YG7GJi7W90Ro/view?usp=sharing', '0', '2021-01-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1351, '', 'JDVP TVI - PARTNERS MONITORING AND EVALUATION', 'https://drive.google.com/file/d/187xZF_tqDa2k80rT8GfKoYCqAW9y1ECB/view?usp=sharing', '0', '2021-01-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1352, '', 'GUIDELINES ON THE IMPLEMENTATION OF THE RESULTS-BASED PERFORMANCE MANAGEMENT SYSTEM FOR SCHOOL YEAR 2020-2021', 'https://drive.google.com/file/d/1g3JmpipL5Z9-UsAArZYroF5yJR4jUAhb/view?usp=sharing', '0', '2021-01-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1354, '', 'MANILA PUBLIC ELEMENTARY SCHOOL LIBRARIANS ASSOCIATION (MAPESLA), MANILA PUBLIC SECONDARY SCHOOL LIBRARIANS ASSOCIATION (MPSSLA)', 'https://drive.google.com/file/d/1ptSLH2SxYFxDEgyAg0o0cukMT8M5bKVu/view?usp=sharing', '0', '2021-01-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1355, '', 'VIRTUAL ORIENTATION ON THE IMPLEMENTATION OF THE SCHOOL-BASED FEEDING PROGRAM FOR SCHOOL YEAR 2020 - 2021', 'https://drive.google.com/file/d/1X9ZVbOCwq8vqRkCnaNNmWDQbWtWbdhHP/view?usp=sharing', '0', '2021-01-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1356, '', 'PREPARATION AND SUBMISSION OF NOTICE OF SALARY ADJUSTMENT (NOSA) COVERING THE SECOND TRANCHE COMPENSATION ADJUSTMENT', 'https://drive.google.com/file/d/17Ltt3X-dYpW74EitKb8OV5LcAXrgVMAY/view?usp=sharing', '0', '2021-01-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1357, '', 'CLEARING ACTIVITY ALONG THE AREAS UNDER THE LRT IN FRONT OF THE MANILA CITY HALL', 'https://drive.google.com/file/d/1SVa5JdL-gEZDIzRYpE1qLr8s-z_WYTmU/view?usp=sharing', '0', '2021-01-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1358, '', 'ONLINE SUBMISSION OF PHILAB INDUSTRIES DELIVERY DOCUMENTS', 'https://drive.google.com/file/d/1AU93Kz1GtWnHuFll-FEoIu8HsSM_04LL/view?usp=sharing', '0', '2021-01-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1359, '', 'LOCAL POLICY GUIDELINES ON HOW TO DETERMINE LEARNERS ATTENDANCE IN THE ONLINE SYNCHRONOUS AND ASYNCHRONOUS CLASSES', 'https://drive.google.com/file/d/1lP-8OZxI5dj11ImMJa9AYsTfrhb8HhvJ/view?usp=sharing', '0', '2021-01-13', 'UNNUMBERED MEMORANDUM', 'active'),
(1360, '', 'EIGHT - DAY ONLINE JOURNALISM SKILLS  TRAINING AND WORKSHOP FOR SCHOOL PAPER ADVISERS AND CAMPUS JOURNALISTS IN THE ELEMENTARY AND SECONDARY LEVELS', 'https://drive.google.com/file/d/1eFPWfv3381jloGahQxLCLYJqORahmRzT/view?usp=sharing', '0', '2021-01-13', 'UNNUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(1361, '', 'SY 2020-2021 SCHEDULE OF ONLINE PROFESSIONAL MEETINGS OF EDUCATION PROGRAM SUPERVISORS AND PSDS IN-CHARGE OF LEARNING AREAS WITH HEAD TEACHERS, MASTER TEACHERS, COORDINATORS, AND ALS IMPLEMENTERS', 'https://drive.google.com/file/d/1HrPO3WOxVVHXiuRF-SpEdQwec1tA37rT/view?usp=sharing', '0', '2021-01-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1362, '', 'LEARNING ENGAGEMENT AND MANAGEMENT (LEM) MEETING HOSTING SCHEDULE', 'https://drive.google.com/file/d/1o88Ai4H1C91dCtdMMmjO5W0QwS1eRgXi/view?usp=sharing', '0', '2021-01-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1363, '', 'MONITORING OF BASIC EDUCATION LEARNING CONTINUITY PLAN (BE-LCP) SUPPORT TO INSTRUCTION', 'https://drive.google.com/file/d/1enx9jA83FtwNynLDoHjvo9jYf2vdG2oh/view?usp=sharing', '0', '2021-01-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1364, '', 'SCHEDULE OF 2019-2020 NATIONAL SCHOOL BUILDING INVENTORY (NSBI) VALIDATION', 'https://drive.google.com/file/d/1DRvvqKDIKxkzW59qoenH8WuCBHUnJr71/view?usp=sharing', '0', '2021-01-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1365, '', 'RESCHEDULED: PRINCIPALS ACADEMY BLENDED WORKSHOP', 'https://drive.google.com/file/d/1ensVJoXUKb17RnF4y5Kt6DtLIzSYWPTE/view?usp=sharing', '0', '2021-01-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1370, '', 'LSPIC 2022 ADN 21ST ESEA: A JOINT CONFERENCE', 'https://drive.google.com/file/d/1b6TEEJJgzIkq_gJ_tmRpLHNfIivk1Hdz/view?usp=sharing', '98', '2021-12-06', 'DIVISION ADVISORIES', 'active'),
(1371, '', 'INTRODUCTION TO R AND DATA MANAGEMENT USING THE TIDYVERSE ECOSYSTEM AND BASIC STATISTICS WITH EXPLORATORY DATA ANALYSIS', 'https://drive.google.com/file/d/1OsTMex8DlqIZ1TYAGSKmSDSu5MTuTVh6/view?usp=sharing', '97', '2021-12-06', 'DIVISION ADVISORIES', 'active'),
(1372, '', 'VIRTUAL WORKSHOP ON DATA SCIENCE, TECHNICAL WRITING, PROJECT MANAGEMENT, HR ANALYTIC AND BASIC STATISTICAL ANALYSIS', 'https://drive.google.com/file/d/1VoP7eGofNz8kQgsKQHhIZhKh9MO8dZJM/view?usp=sharing', '95', '2021-12-13', 'DIVISION ADVISORIES', 'active'),
(1373, '', 'GLOBAL CAREER COACH', 'https://drive.google.com/file/d/1sT6mH7o980Rr5dDqCFaMApVOAbmUqzn2/view?usp=sharing', '94', '2021-12-13', 'DIVISION ADVISORIES', 'active'),
(1374, '', 'HELPING EDUCATORS MANAGE WORKPLACE ANXIETY', 'https://drive.google.com/file/d/1qQgyivhb85stL_pRx3HPNzQC8fz_RmwP/view?usp=sharing', '93', '2021-12-13', 'DIVISION ADVISORIES', 'active'),
(1375, '', 'HOMEROOM GUIDANCE LEARNER\'S DEVELOPMENT ASSESSMENT', 'https://drive.google.com/file/d/1dKrZqFFHMUG5s737ayAK9YuXiO2sQGFd/view?usp=sharing', '92', '2021-12-03', 'DIVISION ADVISORIES', 'active'),
(1376, '', '5TH NATIONAL CAREER ADVOCACY CONGRESS (NCAC) WEBINAR SERIES AND CULMINATING ACTIVITY', 'https://drive.google.com/file/d/1NmT4A8f0taWErdXGGEUooDMPAfQsG1lL/view?usp=sharing', '91', '2021-11-26', 'DIVISION ADVISORIES', 'active'),
(1377, '', '2021 MTAP SATURDAY PROGRAMS IN MATHEMATICS FOR REGULAR AND TALENTED LEARNERS', 'https://drive.google.com/file/d/1kmJSEq7g7g_gL1vjw-WhPabsMGKZEJ04/view?usp=sharing', '90', '2021-11-24', 'DIVISION ADVISORIES', 'active'),
(1378, '', 'INVITATION TO ATTEND AN ONLINE WEBINAR ON TEACHING ORIENTATION AND DEMONSTRATION', 'https://drive.google.com/file/d/1DUJ34HOHFFshVVTL01g51ZgBEmZRyPZv/view?usp=sharing', '89', '2021-11-25', 'DIVISION ADVISORIES', 'active'),
(1379, '', 'VIRTUAL WORKSHOP ON RESEARCH, DATA SCIENCE, STRATEGIC PLANNING, DESIGN AND IMPLEMENTING A MONITORING AND EVALUATION SYSTEM, AND STATISTIC FOR PUBLIC HEALTH', 'https://drive.google.com/file/d/1ntZyshP87km9w3FnJnbjgUdEc-FRG__g/view?usp=sharing', '88', '2021-11-15', 'DIVISION ADVISORIES', 'active'),
(1380, '', 'CLASSROOM MANAGEMENT: READING MADE EASY', 'https://drive.google.com/file/d/188NoAdkBeS812wGCI3ccUkpYA7MbBHk7/view?usp=sharing', '87', '2021-11-12', 'DIVISION ADVISORIES', 'active'),
(1381, '', 'INVITATION TO ATTEND TO AN ONLINE WORKSHOP FOR DATA PRIVACY AWARENESS AND COMPLIANCE', 'https://drive.google.com/file/d/1hgmLIXdvtS28gF2dOjB5H4BVDDHzX2c_/view?usp=sharing', '86', '2021-02-02', 'DIVISION ADVISORIES', 'active'),
(1382, '', 'A SHORT COURSE ON LEARNING PHILIPPINE HERITAGE THROUGH THE NATIONAL FINE ARTS COLLECTION', 'https://drive.google.com/file/d/14hl5-wDh5p7a1iYeggU9CQDM-HLPtOgR/view?usp=sharing', '85', '2021-11-10', 'DIVISION ADVISORIES', 'active'),
(1383, '', '2021 NATIONAL SCIENCE AND TECHNOLOGY WEEK', 'https://drive.google.com/file/d/11wWT0kfe3XL5kAy2bKcCAZobMTmpRzOu/view?usp=sharing', '84', '2021-11-02', 'DIVISION ADVISORIES', 'active'),
(1384, '', 'INTERNATIONAL VIRTUAL CONFERENCE ON MULTI-DISCIPLINARY RESEARCH AND PAPER PRESENTATION', 'https://drive.google.com/file/d/1bRUlYxnBf99NpCj7IIXFrgIEcsSVNjRI/view?usp=sharing', '82', '2021-10-27', 'DIVISION ADVISORIES', 'active'),
(1385, '', 'VIRTUAL WORKSHOP ON RESEARCH, DATA SCIENCE, STRATEGIC PLANNING, DESIGN AND IMPLEMENTING A MONITORING AND EVALUATION SYSTEM, AND STATISTIC FOR PUBLIC HEALTH', 'https://drive.google.com/file/d/11KyiO7Zj3HRDliENrhHlKg7umXyJgr7D/view?usp=sharing', '81', '2021-10-27', 'DIVISION ADVISORIES', 'active'),
(1386, '', 'KABATAANG GITARISTA PROGRAM', 'https://drive.google.com/file/d/1ZmRvTzWyUWsXz3OblfbrAmggtTxDbFZ-/view?usp=sharing', '80', '2021-10-19', 'DIVISION ADVISORIES', 'active'),
(1387, '', 'SEMINAR WORKSHOPS FOR TEACHING AND NON-TEACHING PERSONNEL', 'https://drive.google.com/file/d/1nZkfMAWTxn9Zl4bEngKllSA1kRZ5-Pzq/view?usp=sharing', '79', '2021-10-19', 'DIVISION ADVISORIES', 'active'),
(1388, '', 'VARIOUS SEMINAR WORKSHOPS', 'https://drive.google.com/file/d/17cS61q4CF0BVwcf2FScIcwUsJvaQG1ux/view?usp=sharing', '78', '2021-10-20', 'DIVISION ADVISORIES', 'active'),
(1389, '', 'INTERNATIONAL SEMINAR WORKSHOPS', 'https://drive.google.com/file/d/1_7hgxcVOL77QRypZzfUCFibdq2aruZj8/view?usp=sharing', '77', '2021-10-19', 'DIVISION ADVISORIES', 'active'),
(1390, '', 'WEBINAR MARATHON ON EDUCATION', 'https://drive.google.com/file/d/1xGsrXGWcVWKoqAI57H77LdUqvPYwCQMc/view?usp=sharing', '76', '2021-10-15', 'DIVISION ADVISORIES', 'active'),
(1391, '', 'JA LEADER\'S SUMMIT', 'https://drive.google.com/file/d/1O-bf-bVfYY_LHc7DK3XuujEikUQRo_XO/view?usp=sharing', '75', '2021-10-14', 'DIVISION ADVISORIES', 'active'),
(1392, '', '2 - DAY LIVE WEBINAR ON CORRECTIVE ACTION REPORTING', 'https://drive.google.com/file/d/1pO7dlKQdsxOE4EslHsDkIsm_SLGCQl26/view?usp=sharing', '74', '2021-10-13', 'DIVISION ADVISORIES', 'active'),
(1393, '', 'HISTORICAL SIGNIFICANCE AND ITS PEDAGOGICAL TRAINING', 'https://drive.google.com/file/d/1tKRGuB7t8KH5Zm1TgGwASaI2houV409b/view?usp=sharing', '73', '2021-10-13', 'DIVISION ADVISORIES', 'active'),
(1394, '', 'GUANG DONG - HONG KONG - MACAO GREATER BAY AREA MATHEMATICAL OLYMPIAD', 'https://drive.google.com/file/d/1CWRoZI6ec1ouHhPviKjxZbyulMaAOpA-/view?usp=sharing', '72', '2021-10-12', 'DIVISION ADVISORIES', 'active'),
(1395, '', 'MOVE MORE FOR HEALTHIER FILIPINO TEENS (MOVE4TEENHEALTH)', 'https://drive.google.com/file/d/1HcqdLaVfQrY7QCAtc1ZFl5cn_lkma8ji/view?usp=sharing', '71', '2021-10-06', 'DIVISION ADVISORIES', 'active'),
(1396, '', 'RESCHUDLING OF THE WEBINAR ON RESEARCH MENTORSHIP: VALIDATORS\' MENTORING OF RESEARCHERS', 'https://drive.google.com/file/d/1htvNS5dbe9ulqY8QjdLPfEFhTH-uPO4Z/view?usp=sharing', '70', '2021-10-06', 'DIVISION ADVISORIES', 'active'),
(1397, '', 'CHANGE OF SCHEDULE OF THE ONLINE TRAINING-WORKSHOP FOR SCHOOL LIBRARIANS AND TEACHER-LIBRARIANS: BOOSTING ONLINE LIBRARY SERVICES', 'https://drive.google.com/file/d/12y_etm0-mmrZHrCQL0-fQE0csg6CnfK4/view?usp=sharing', '69', '2021-09-30', 'DIVISION ADVISORIES', 'active'),
(1398, '', 'INTERNATIONAL FACULTY DEVELOPMENT PROGRAM ON SEPTEMBER 27, 2021 TO OCTOBER 1, 2021', 'https://drive.google.com/file/d/1RBzTWVYeUk-139Lr4Dhs2LktKNcbzXgz/view?usp=sharing', '68', '2021-09-24', 'DIVISION ADVISORIES', 'active'),
(1399, '', 'DIGITATIZING OF EDUCATION DURING THE TIME OF COVID-19 AND BEYOND', 'https://drive.google.com/file/d/1orNwXUeCjO_I_25GNaBIJlLXHy-OWS9c/view?usp=sharing', '67', '2021-09-22', 'DIVISION ADVISORIES', 'active'),
(1400, '', 'THE IMPACT OF COVID-19, HUMAN TRAFFICKING, POLITICAL INSTABILITY AND IMMIGRATION BAN ON ECONOMIC GROWTH', 'https://drive.google.com/file/d/1xaZaAVrBNToONmyAShddj2qtufA_kC3T/view?usp=sharing', '66', '2021-09-20', 'DIVISION ADVISORIES', 'active'),
(1401, '', 'INTERNATIONAL SEMINAR WORKSHOP ON TRANSFORMATIONAL LEADERSHIP: DEVELOPING A GROWTH ORIENTED WORKPLACE CULTURE ON OCTOBER 2, 3 AND 9, 2021 (1ST BATCH) AND NOVEMBER 27-28 AND DECEMBER 4, 2021 (2ND BATCH', 'https://drive.google.com/file/d/1Xd2qMCd4sOEc-FbFUtf0e7qcrISCns_O/view?usp=sharing', '65', '2021-09-17', 'DIVISION ADVISORIES', 'active'),
(1402, '', 'INTRODUCTION TO STATISTICAL ANALYSIS IN PUBLIC HEALTH TRAINING-WORKSHOP ON NOVEMBER 3-5, 2021', 'https://drive.google.com/file/d/16XBdyj05uGFh-Uygyvpe1AdJQ8y3s2uX/view?usp=sharing', '62', '2021-09-15', 'DIVISION ADVISORIES', 'active'),
(1403, '', '87TH NATIONAL BOOK WEEK', 'https://drive.google.com/file/d/1y2jdH8_VS9qug_WZ4-0QCEXfBP_AEVTk/view?usp=sharing', '61', '2021-09-03', 'DIVISION ADVISORIES', 'active'),
(1404, '', '7TH ANNUAL CAPACITY BUILDING', 'https://drive.google.com/file/d/1RS95fZ5sji0GdigeiCJxTkUP34pMcrUN/view?usp=sharing', '60', '2021-09-03', 'DIVISION ADVISORIES', 'active'),
(1405, '', 'INTERNATIONAL AWARDS FOR OUTSTANDING EDUCATORS AND RESEARCHERS', 'https://drive.google.com/file/d/1uCpUc2AFgxyAAgq4qmDM2I8OM9cij9Dd/view?usp=sharing', '59', '2021-09-02', 'DIVISION ADVISORIES', 'active'),
(1406, '', 'RESEARCH WRITING, SAMPLING TECHNIQUES AND STATISTICAL ANALYSIS IN-DEPTH SEMINAR WORKSHOP ON OCTOBER 11-15, 2021', 'https://drive.google.com/file/d/1Nak8uJuNRh7PJg7R9OJVt_xqjLMz3osu/view?usp=sharing', '58', '2021-09-06', 'DIVISION ADVISORIES', 'active'),
(1407, '', 'TRAINING SEMINAR OF PRO-LIFE PHILIPPINES FOUNDATION, INC', 'https://drive.google.com/file/d/1RmGwz8OyYhCBZevwEA3wmWa0ds9jKybQ/view?usp=sharing', '57', '2021-09-01', 'DIVISION ADVISORIES', 'active'),
(1408, '', 'ADVANCED STATISTICAL ANALYSIS USING JASP & JAMOVI ON SEPTEMBER 20-22, 2021', 'https://drive.google.com/file/d/1HGbQEaBXpuTbIxwYwV3G-3wSf4y-ZGJ4/view?usp=sharing', '56', '2021-08-20', 'DIVISION ADVISORIES', 'active'),
(1409, '', '31ST LIBRARY AND INFORMATION SERVICES MONTH', 'https://drive.google.com/file/d/1zglZaMpB3UA4NoDBELrYSE6sHLtnMpY-/view?usp=sharing', '55', '2021-08-12', 'DIVISION ADVISORIES', 'active'),
(1410, '', 'NESTLE WELLNESS ACADEMY', 'https://drive.google.com/file/d/146q5CgjC-Hc5JsPWLv-pxRmC09uDarSy/view?usp=sharing', '54', '2021-08-02', 'DIVISION ADVISORIES', 'active'),
(1411, '', 'VIRTUAL WORKSHOP ON RESEARCH, DATA SCIENCE, STRATEGIC PLANNING, DESIGN AND IMPLEMENTING A MONITORING AND EVALUATION SYSTEM, AND STATISTIC FOR PUBLIC HEALTH', 'https://drive.google.com/file/d/1r_BH91sVzrNYNq0ZWYqblihCzz8chYV1/view?usp=sharing', '53', '2021-08-11', 'DIVISION ADVISORIES', 'active'),
(1412, '', 'LAUNCHING OF SMASHED ONLINE PHILIPPINES PROJECT', 'https://drive.google.com/file/d/1gQYVNfNVcG47fASXivr56Cm8G0djvACg/view?usp=sharing', '52', '2021-08-02', 'DIVISION ADVISORIES', 'active'),
(1413, '', 'VALUES RESTORATION OFFICERS TRAINING THE TRAINERS (VROTTT)', 'https://drive.google.com/file/d/15pi3k9Lp_GJCJqpWdfj4SayP-RtrNLdW/view?usp=sharing', '51', '2021-08-09', 'DIVISION ADVISORIES', 'active'),
(1414, '', 'UNDERSTANDING MENTAL HEALTH', 'https://drive.google.com/file/d/12XKdlLru0v31zwKlNRcaeQ2xElVJrabS/view?usp=sharing', '50', '2021-08-09', 'DIVISION ADVISORIES', 'active'),
(1415, '', 'MVP CRAFTING AND LESSON IN THOUGHT LEADERSHIP, YEAR 8: OPEN WINDOWS: DISCOVERING VENTURES', 'https://drive.google.com/file/d/1NLf8NSnAuXfVxMXLWtcTNRWifC-i16E7/view?usp=sharing', '48', '2021-08-04', 'DIVISION ADVISORIES', 'active'),
(1416, '', 'QUALITATIVE DATA ANALYSIS USING FREEWARE DEPTH TRAINING WORKSHOP', 'https://drive.google.com/file/d/1wfCf4YlbckSYh5tNv86Wg2jRS6JTpKhi/view?usp=sharing', '49', '2021-08-04', 'DIVISION ADVISORIES', 'active'),
(1417, '', 'WEBINAR ON THE TEACHERS LEAVE PRIVILEGES REQUIREMENTS PROCESS AND TEACHERS CAREER PATH PROMOTION AND EVALUATION RULES', 'https://drive.google.com/file/d/1feCe6vWFTTcqHk1Qej4VWVCiO2JAl1ck/view?usp=sharing', '46', '2021-07-21', 'DIVISION ADVISORIES', 'active'),
(1418, '', 'STRATONE - TIME SERIES AND FORECASTING IN-DEPTH SEMINAR WORKSHOP AND QUALITATIVE DATA ANALYSIS USING FREEWARE IN-DEPTH TRAINING WORKSHOP', 'https://drive.google.com/file/d/11S-YnTlAZsC96jzugzYwbMIE6WabwcT1/view?usp=sharing', '44', '2021-07-16', 'DIVISION ADVISORIES', 'active'),
(1419, '', 'PAGSASABAYIN KAY MABINI: SI APOLINARIO MABINI SA MATA NG TAUMBAYAN', 'https://drive.google.com/file/d/1DbEQW7wVRpB2_H9tq9-ZPJcpAMXBkWoD/view?usp=sharing', '43', '2021-07-13', 'DIVISION ADVISORIES', 'active'),
(1420, '', 'CENTER FOR HUMAN RESEARCH AND DEVELOPMENT FOUNDATION (CHRDF) INC. NEAP RECOGNIZED PROGRAMS', 'https://drive.google.com/file/d/1apeKYWxkCCXsrglmizKmHTggcW-CUMqR/view?usp=sharing', '42', '2021-07-12', 'DIVISION ADVISORIES', 'active'),
(1421, '', 'VALIDATION / VERIFICATION OF OFFICE OF MINDANAO EDUCATORS MUTUAL BENEFIT ASSOCATION, INC.', 'https://drive.google.com/file/d/1kFDdiM0_0pThjhaDjZSdgFQUO47Ea7yZ/view?usp=sharing', '41', '2021-06-29', 'DIVISION ADVISORIES', 'active'),
(1422, '', 'CANADA\'S PREMIER NATIONAL EVENT FOR INVERNTORS \"ICAN 2021\"', 'https://drive.google.com/file/d/1E0nVqsET5Gj9cZ44d7GSRQ-_OFR8G5K-/view?usp=sharing', '40', '2021-06-29', 'DIVISION ADVISORIES', 'active'),
(1423, '', 'INVITATION FOR INTERMEDIATE STATISCAL ANALYSIS IN-DEPTH TRAINING WORKSHOP', 'https://drive.google.com/file/d/18MOLKMIEM-mXw0Sy8aIxVALBFl4mkaM9/view?usp=sharing', '39', '2021-06-29', 'DIVISION ADVISORIES', 'active'),
(1424, '', 'UNANG PAMBANSANG KUMPERENSIYA SA GINHAWA', 'https://drive.google.com/file/d/1oz8n8JaJmFWEqMkvJgYsS9ObqfTfP4UJ/view?usp=sharing', '38', '2021-06-23', 'DIVISION ADVISORIES', 'active'),
(1425, '', 'EDUCATORS\' CONGRESS AND SEMINAR WORKSHOP ON DESIGNING LEARNING', 'https://drive.google.com/file/d/1ga9NsOrV_uMKhG0sDzqw1vnXaHaTtxB4/view?usp=sharing', '37', '2021-06-25', 'DIVISION ADVISORIES', 'active'),
(1426, '', 'STATISTICAL ANALYSIS USING R', 'https://drive.google.com/file/d/1T4O0PqiRgx9QGVX60kk65nf4yXIEZ5gk/view?usp=sharing', '36', '2021-06-21', 'DIVISION ADVISORIES', 'active'),
(1427, '', 'EXTENSION OF THE REGISTRATION FOR THE FLEX2LEAD PROGRAM BATCH 2 PARTICIPANTS', 'https://drive.google.com/file/d/1Cn6esdZn1UcNqN-FGhEjRcRmCaGXcs-H/view?usp=sharing', '35', '2021-06-18', 'DIVISION ADVISORIES', 'active'),
(1428, '', 'BEYOND WEBINARS: INTENSIVE CAPACITY BUILDING PROGRAMS FOR SCHOOL ADMINSTRATORS AND TEACHERS IN THE NEW NORMAL', 'https://drive.google.com/file/d/1u8a_iigGxPJxC_h5Bj0QtyfTexLxnjuY/view?usp=sharing', '34', '2021-06-16', 'DIVISION ADVISORIES', 'active'),
(1429, '', 'STATISTICAL TOOLS ENABLEMENT IN-DEPTH TRAINING WORKSHOP', 'https://drive.google.com/file/d/1MvlPPQ_wvt68R90DDsO5_3tVdOdr2Rqo/view?usp=sharing', '32', '2021-06-11', 'DIVISION ADVISORIES', 'active'),
(1430, '', 'PEACE WEBINAR SERIES: EDUCATION UNDER THE NEW NORMAL', 'https://drive.google.com/file/d/1UX63DF5WU7M_crwYo_N_vUHFTwW4i2CW/view?usp=sharing', '31', '2021-06-03', 'DIVISION ADVISORIES', 'active'),
(1431, '', 'MONEY TREE PH - 2022 1ST ASEAN MAYBANK FINANCIAL EDUCATION EXCELLENCE AWARDS', 'https://drive.google.com/file/d/1qItKrlqLHfQ9lh1DqLGdky9GlL0-jh76/view?usp=sharing', '30', '2021-06-04', 'DIVISION ADVISORIES', 'active'),
(1432, '', 'ONLINE TRAINING ON HUMAN RESOURCE MANAGEMENT WEBINARS (VIA ZOOM)', 'https://drive.google.com/file/d/1BL5RD150hzmi_NGlWWOdy90ZCA7rO3GY/view?usp=sharing', '29', '2021-06-01', 'DIVISION ADVISORIES', 'active'),
(1433, '', 'University of Asia and the Pacific - Admission', 'https://drive.google.com/file/d/1Iy0jvZ783SYdDpmnRtqeLID3VwRKZ8vk/view?usp=sharing', '28', '2021-06-01', 'DIVISION ADVISORIES', 'active'),
(1434, '', 'MASHAV ONLINE COURSE: MATHEMATICS IN A HUMANISTIC APPROACH', 'https://drive.google.com/file/d/10mcczPYAWLDqks6ucYE-4zodZpTKNnCF/view?usp=sharing', '27', '2021-06-04', 'DIVISION ADVISORIES', 'active'),
(1435, '', 'JCI MANILA TEN OUTSTANDING GURO AWARDS', 'https://drive.google.com/file/d/1GD43aXQoOn7_85YBkxdN-0aBKOraY7Xp/view?usp=sharing', '26', '2021-06-01', 'DIVISION ADVISORIES', 'active'),
(1436, '', 'INTERNATIONAL TRAINING SERIES ON HIGH IMPACT TEACHING', 'https://drive.google.com/file/d/1pNJUVxq_X6o0SkI03VNDkZQwNgkbhOjH/view?usp=sharing', '25', '2021-05-26', 'DIVISION ADVISORIES', 'active'),
(1437, '', 'NEW GRADUATE EDUCATION PROGRAMS', 'https://drive.google.com/file/d/1WTgW7CCRqKSswcOnM-Bo5qJNzqnXH7gh/view?usp=sharing', '24', '2021-05-31', 'DIVISION ADVISORIES', 'active'),
(1438, '', 'ONLINE LEARNING PROGRAM ON \"TRANSFORMING EDUCATION FOR THE FUTURE: RESHAPING WHAT IT MEANS TO EDUCATE\"', 'https://drive.google.com/file/d/17uqeksmdPSuC9X4xfrl4x6K-XGik9yUp/view?usp=sharing', '23', '2021-05-17', 'DIVISION ADVISORIES', 'active'),
(1439, '', 'THE ALOYSIAN PUBLICATION EDUCATION LINK', 'https://drive.google.com/file/d/1twA3EcmjY3n8G5wuGoTkU3neJr4rMefz/view?usp=sharing', '22', '2021-05-11', 'DIVISION ADVISORIES', 'active'),
(1440, '', 'NATIONAL WEBINAR ON GOOD GOVERNANCE, LEADERSHIP AND MANAGEMENT OF EDUCATION', 'https://drive.google.com/file/d/1kd2NLX-a_lmfQ91SzRCkC8B5S_qzDvXS/view?usp=sharing', '21', '2021-05-10', 'DIVISION ADVISORIES', 'active'),
(1441, '', 'WEBINARS ON CAPACITY BUILDING OF SCHOOL LEADERS AND TEACHERS OF PRIVATE AND PUBLIC SCHOOLS', 'https://drive.google.com/file/d/1Jzeb6ZqrN7eGrUBLZ_IpNaTvx3_AEJCF/view?usp=sharing', '20', '2021-04-21', 'DIVISION ADVISORIES', 'active'),
(1442, '', 'INTERNATIONAL YOUTH FELLOWSHIP (IYF) PHILIPPINES WEBINAR SERIES OF MIND EDUCATION SPECIALIST TRAINING (MEST)', 'https://drive.google.com/file/d/1pStCsB0FxchEqjfI-8b5BUBnlifn6bVM/view?usp=sharing', '18', '2021-04-13', 'DIVISION ADVISORIES', 'active'),
(1443, '', 'ONLINE 4TH KINGFISHER ABM CUP REGIONAL ELIMINATIONS', 'https://drive.google.com/file/d/1EqOxg0CfJAhfE6pXhR4PwwgCWpM01Rmb/view?usp=sharing', '17', '2021-03-15', 'DIVISION ADVISORIES', 'active'),
(1445, '', 'FREE TRAINING WORKSHOP FOR PUBLIC LIBRARIANS', 'https://drive.google.com/file/d/1tcERINOoueHk_XT3sefGQQF7TeSmdQQL/view?usp=sharing', '14', '2021-03-01', 'DIVISION ADVISORIES', 'active'),
(1446, '', 'LECTURE / ORIENTATION ON OCCUPATIONAL SAFETY AND HEALTH TO PUBLIC AND PRIVATE SCHOOL IN THE CITY', 'https://drive.google.com/file/d/1dzURfxIbECp_AeXMejh_d4FJIUUlxVpj/view?usp=sharing', '13', '2021-03-10', 'DIVISION ADVISORIES', 'active'),
(1447, '', '2021 SHANGHAI INTERNATIONAL INVENTION & INNOVATION EXPO', 'https://drive.google.com/file/d/1PPu2nG-mIcFXle-bRDMsfoW8YQmzRFkS/view?usp=sharing', '12', '2021-03-09', 'DIVISION ADVISORIES', 'active'),
(1448, '', '2021 JAPAN DESIGN, IDEA AND INVENTION EXPO', 'https://drive.google.com/file/d/1f5SfC299YIAJpSU5giU2JhMqKyhDXGcl/view?usp=sharing', '11', '2021-03-09', 'DIVISION ADVISORIES', 'active'),
(1449, '', '15-DAY SPECIALIZED TRAINING ON INTEGRATING RESEARCH INTO ONLINE CLASSROOM ASSESSMENTS', 'https://drive.google.com/file/d/19eGhqSwxfFkQ30lF3icyDnRoCZ6E2T8R/view?usp=sharing', '10', '2021-02-24', 'DIVISION ADVISORIES', 'active'),
(1450, '', 'SACEDA YOUTH LEAD SCHOOL, INC. 2021 MOST INSPIRING TEACHERS OF THE PHILIPPINES', 'https://drive.google.com/file/d/1T4cY4YV9hWxGn-I6_iJusCmMF3DBtpsI/view?usp=sharing', '9', '2021-02-23', 'DIVISION ADVISORIES', 'active'),
(1451, '', 'INTENATIONAL WOMEN SUMMIT', 'https://drive.google.com/file/d/16H0HDEH3iQ3C7Z1T9CMAnwxINSEy-_Tx/view?usp=sharing', '8', '2021-02-19', 'DIVISION ADVISORIES', 'active'),
(1452, '', '3-DAY ISO DOCUMENTATION INTENSIVE WORKSHOP MASTER CLASS ON FEBRUARY 15-17, 2021, 9:00 AM - 5:00 PM', 'https://drive.google.com/file/d/1h140R6KGNmJIU9AhZMTRc_7HNIci1WA2/view?usp=sharing', '6', '2021-02-10', 'DIVISION ADVISORIES', 'active'),
(1453, '', 'IN FOCUS EXPLORING AND UNDERSTANDING THE PHILIPPINE PUBLIC HEALTH', 'https://drive.google.com/file/d/1bwNHYagV9k0mEXsP3v_IRN-NTCnStmb2/view?usp=sharing', '5', '2021-02-05', 'DIVISION ADVISORIES', 'active'),
(1454, '', 'INVITATION TO ATTEND TO AN ONLINE WORKSHOP FOR DATA PRIVACY AWARENESS AND COMPLIANCE', 'https://drive.google.com/file/d/1EiiH6xOYhMXU3LkNHTnU9ZNgzJwc9AX-/view?usp=sharing', '4', '2021-02-02', 'DIVISION ADVISORIES', 'active'),
(1455, '', 'SINING PARA SA KAPAYAPAAN', 'https://drive.google.com/file/d/1EYMdPVn2UCveQ9bxqEwWPGTyp2LzSnm3/view?usp=sharing', '3', '2021-01-28', 'DIVISION ADVISORIES', 'active'),
(1456, '', 'ISO 31000 RISK MANAGEMENT IMPLEMENTATION COURSE', 'https://drive.google.com/file/d/1QBYorCPhONS-YkIvitXXEJq7Lje7RdUy/view?usp=sharing', '2', '2021-01-27', 'DIVISION ADVISORIES', 'active'),
(1457, '', 'INSTITUTE OF LEADERS IN EDUCATIONAL ADVANCEMENT AND DEVELOPMENT', 'https://drive.google.com/file/d/1MmcsvsRDYOU7HMo8xgRki-IyqTMxFffe/view?usp=sharing', '1', '2021-01-19', 'DIVISION ADVISORIES', 'active'),
(1460, '', 'CHANGE IN THE SCHEDULE OF THE ADVENT MASS', 'https://drive.google.com/file/d/1os6YM-M_FoqLhdTSeaWbIfdWjmRpQZrC/view?usp=sharing', '25', '2021-12-06', 'DIVISION CIRCULARS', 'active'),
(1461, '', 'INVITATION TO JOIN THE FEDERATION\'S PROGRAM AND ACTIVITIES FOR THE MONTH OF DECEMBER 2021', 'https://drive.google.com/file/d/1BpqNBiN8ItKEwtdX7ymbqhQyI2lARMxP/view?usp=sharing', '24', '2021-12-01', 'DIVISION CIRCULARS', 'active'),
(1462, '', '79TH (2021) ANNUAL COUNCIL MEETING, RE-ORGANIZATIONAL MEETINGS OF DISTRICT SCOUTING COORDINATING COMMITTEES AND COUNCIL YOUTH FORUM', 'https://drive.google.com/file/d/1YijfGjfFXjSGtkjkPLC3CFvKOWRl1zIw/view?usp=sharing', '23', '2021-11-29', 'DIVISION CIRCULARS', 'active'),
(1463, '', 'BOY SCOUTS OF THE PHILIPPINES NATIONAL LOWER AND HIGHER AWARDS (MANILA COUNCIL RECIPIENTS)', 'https://drive.google.com/file/d/1lAWJSViMhOyrp-VpljUNKDkh13eLIR90/view?usp=sharing', '22', '2021-11-29', 'DIVISION CIRCULARS', 'active'),
(1464, '', 'VOLUNTARY MEMBERSHIP OF GIRLS AND MEMBERS OF THE GIRL SCOUTS OF THE PHILIPPINES', 'https://drive.google.com/file/d/1u35BrB4Y5ARCcorrbz4_zi5IF65f4FRr/view?usp=sharing', '21', '2021-11-24', 'DIVISION CIRCULARS', 'active'),
(1465, '', 'WINNERS OF YMCA ONLIUNE ON-THE-SPOT ESSAY WRITTING AND PAGSULAT NG SANAYSAY CONTESTS', 'https://drive.google.com/file/d/1PZAlVMgn4zVbDgpJgbnLF40cAlUDVqxA/view?usp=sharing', '20', '2021-11-23', 'DIVISION CIRCULARS', 'active'),
(1466, '', 'Y-BUDS/ASSOCIATES COMMITTEE PROGRAM OF VIRTUAL ACTIVITIES', 'https://drive.google.com/file/d/1DpgzUp8XfDoNmxOj-3Wr-XjV_EULEJRi/view?usp=sharing', '19', '2021-11-16', 'DIVISION CIRCULARS', 'active'),
(1467, '', 'Y-PREP COMMITTEE MEETING', 'https://drive.google.com/file/d/1gcEV6KtHnyjAikZNvqHdOg17OhzI_P3S/view?usp=sharing', '18', '2021-11-16', 'DIVISION CIRCULARS', 'active'),
(1468, '', 'COMMITTEE CHAIRMANSHIP', 'https://drive.google.com/file/d/16MsBT7g8YuCuhqXrOSmvzLsus2M1tx3A/view?usp=sharing', '17', '2021-11-10', 'DIVISION CIRCULARS', 'active'),
(1469, '', 'FULL IMPLEMENTATION OF THE WEEK-LONG PROGRAM GPN SCHOOL TOUR 2.0 ROLL-OUT AND WEBINAR', 'https://drive.google.com/file/d/1BTrO1VFioqhiErCz91piJZF5gBkFdn9w/view?usp=sharing', '16', '2021-11-10', 'DIVISION CIRCULARS', 'active'),
(1470, '', 'INVITATION ON ITS 95TH FOUNDING ANNIVERSARY', 'https://drive.google.com/file/d/1zaqA2CG3nPcev2oa46JNwYxyjhPYev2I/view?usp=sharing', '15', '2021-10-21', 'DIVISION CIRCULARS', 'active'),
(1471, '', 'ONLINE ON-THE-SPOT ESSAY WRITING AND PAGSULAT NG SANAYSAY', 'https://drive.google.com/file/d/1UyjxFBkuMnzgZL4jR9z74q4mVagk_5tC/view?usp=sharing', '14', '2021-10-18', 'DIVISION CIRCULARS', 'active'),
(1472, '', 'COMMENDATION AND APPOINTMENT OF YWCA FFPI YOUTH DEVELOPMENT COMMITTEE', 'https://drive.google.com/file/d/1TztN4aSBiSnpMHG2O6FCy7_M0mARPjNr/view?usp=sharing', '13', '2021-10-18', 'DIVISION CIRCULARS', 'active'),
(1473, '', 'ONLINE JUNIOR FIRST AIDER PROGRAM (ONLINE JFAP)', 'https://drive.google.com/file/d/1vwTLNLHraiduQfbb0oDIVXARhm4yM2u2/view?usp=sharing', '12', '2021-10-08', 'DIVISION CIRCULARS', 'active'),
(1474, '', '2021 SCOUTING MONTH CELEBRATION', 'https://drive.google.com/file/d/16VgA9rzUdvT-_RSZARgQrqW406h690yg/view?usp=sharing', '11', '2021-09-23', 'DIVISION CIRCULARS', 'active'),
(1475, '', 'INVITATION TO A TWO-DAY WEBINAR AND ONLINE WORKSHOP ENTITLED \"STRENGTHENING YOUTH ENGAGEMENT\"', 'https://drive.google.com/file/d/1sP-OFptFKh4q928npglsXHok7RwK0zc3/view?usp=sharing', '10', '2021-09-29', 'DIVISION CIRCULARS', 'active'),
(1476, '', 'IHL: UPHOLDING THE LAW OF ARMED CONFLICT AMIDST THE COVID-19 PANDEMIC: PROTECTING HUMANITY FOR HEALING AND RECOVERY', 'https://drive.google.com/file/d/1qbocgBwgTJFfl6GvRZaPlHwtJzfgb4Lb/view?usp=sharing', '8', '2021-08-24', 'DIVISION CIRCULARS', 'active'),
(1477, '', 'MANILA CONCIL SCOUTING ORIENTATION COURSES/SEMINAR/WORKSHOP, ACTIVITIES AND CONFERENCE FOR AUGUST AND SEPTEMBER 2021', 'https://drive.google.com/file/d/18H7JZuldDEvn5PmcjzVRUlNujPzwwCa3/view?usp=sharing', '7', '2021-08-18', 'DIVISION CIRCULARS', 'active'),
(1478, '', '\"BAK-UNAWA: EVERYTHING YOU NEED TO KNOW ABOUT COVID-19 VACCINES\"', 'https://drive.google.com/file/d/1nSDmICXtBmZm4Vhuluv1jsV_X9dpKl9k/view?usp=sharing', '6', '2021-06-16', 'DIVISION CIRCULARS', 'active'),
(1479, '', 'DISSEMINATION OF SURVEY TOOLS FOR GRADES 7 - 10 TEACHERS, STUDENTS AND PARENTS', 'https://drive.google.com/file/d/1Z6GQ4NGs9qZpWGmsfk8Nup6j26ZMbnvJ/view?usp=sharing', '5', '2021-05-31', 'DIVISION CIRCULARS', 'active'),
(1480, '', 'INSTITUTING MEASURES TO INCREASE ENGAGED TIME-ON-TASK AND ENSURING COMPLIANCE THERWITH', 'https://drive.google.com/file/d/1QcW3SRWfR_faOy3dIWgCrqk8keQWeaHR/view?usp=sharing', '4', '2021-02-17', 'DIVISION CIRCULARS', 'active'),
(1481, '', '#MANILAARTS: A MENTAL HEALTH AWARENESS AND SUICIDE PREVENTATION WEBINAR AND ON-THE-SPOT POSTER MAKING CONTEST', 'https://drive.google.com/file/d/1rm6wI5rAd9eikTlEScAPnxNwRlkOoxip/view?usp=sharing', '3', '2021-02-01', 'DIVISION CIRCULARS', 'active'),
(1482, '', 'VIRTUAL STRATEGIC PLANNING WORKSHOP 2021', 'https://drive.google.com/file/d/1vJ2PcL25pZwoA8XS7xnpi8A9MVxAKS9b/view?usp=sharing', '2', '2021-01-20', 'DIVISION CIRCULARS', 'active'),
(1483, '', 'COLORING CONTEST', 'https://drive.google.com/file/d/1N1zvybTDAfoRSAvHtqCxXiskOn3FgCLN/view?usp=sharing', '1', '2021-01-06', 'DIVISION CIRCULARS', 'active'),
(1490, '', 'GAWAD ALUNIG', 'https://drive.google.com/file/d/1UmTLLOLO6IAopgjUv1ms3mRfBbvRCS03/view?usp=sharing', '122', '2021-12-22', 'MISCELLANEOUS MEMOS', 'active'),
(1491, '', 'INTERNATIONAL EDUCATORS\' CONCLAVE ON DIGITAL JOURNALISM AND SOCIAL MEDIA', 'https://drive.google.com/file/d/1e-1MX1nLGaCms_cx28HaQuXoVVaeMbVv/view?usp=sharing', '121', '2021-12-15', 'MISCELLANEOUS MEMOS', 'active'),
(1492, '', 'FUNDAMENTALS OF GAME DEVELOPMENT FOR EDUCATORS', 'https://drive.google.com/file/d/1I_PjRFARicSTkISo1SlX3htfF34iUcqF/view?usp=sharing', '120', '2021-12-03', 'MISCELLANEOUS MEMOS', 'active'),
(1493, '', 'REQUEST TO CONDUCT ONLINE EDUCATION LEADER\'S FORUM FEATURING GRACIAS CHRISTMAS CANTATA', 'https://drive.google.com/file/d/1TRwthn2M0jqY7TNtVPojUvHr-qwsqwp3/view?usp=sharing', '119', '2021-12-11', 'MISCELLANEOUS MEMOS', 'active'),
(1494, '', 'CONDUCT OF SEMINAR-WORKSHOP AND TEAM BUILDING CAPACITY ON GENDER AND DEVELOPMENT WITH THEME, GENDER RESPONSIVE EDUCATION FOR HARMONY AND GOOD RELATIONS IN THE WORK PLACE', 'https://drive.google.com/file/d/1InIL4CfcQE591cymuQl0pJB7hCQynoGH/view?usp=sharing', '118', '2021-12-03', 'MISCELLANEOUS MEMOS', 'active'),
(1495, '', 'CONDUCT OF CAPABILITY WEBINAR / TRAINING FOR JHS TEACHING AND NON-TEACHING STAFF WITH THE THEME INNOVATING MENTAL, PHYSICAL AND SPIRITUAL WAYS TO COPE WITH THE CHALLENGES OF THE NEW NORMAL', 'https://drive.google.com/file/d/1wi8BrmIVjECoQJ4f4OGK0D3OhhmfyIpS/view?usp=sharing', '117', '2021-12-03', 'MISCELLANEOUS MEMOS', 'active'),
(1496, '', 'MASKLAW NA ORYENTASYON: SA MILITANTE, PROGRESIBO AT MAKABAYANG UNYONISMO PARA SA MGA PAMPUBLIKONG GURO', 'https://drive.google.com/file/d/1gdj6LaQYiZ0fiB_c_YiJgj5CoEabSdnO/view?usp=sharing', '116', '2021-12-06', 'MISCELLANEOUS MEMOS', 'active'),
(1497, '', 'REQUESTING PERMISSION TO PERFORM SCHOOL MARKETING AND ADVOCACY TO NEARBY PUBLIC ELEMENTARY AND PUBLIC HIGH SCHOOLS VIA ONLINE', 'https://drive.google.com/file/d/1wKuuhgHmyXNMgturfyvzTejrevaRNpmZ/view?usp=sharing', '115', '2021-11-26', 'MISCELLANEOUS MEMOS', 'active'),
(1498, '', 'INVITING PUBLIC SCHOOL PRINCIPALS UNDER THE ARCHDIOCESE OF MANILA TO A VIRTUAL ADVENT RECOLLECTION', 'https://drive.google.com/file/d/16CwhGdW1sB2hUc0aa-qfMANb2F1-GKi2/view?usp=sharing', '114', '2021-11-26', 'MISCELLANEOUS MEMOS', 'active'),
(1499, '', 'FREE CREOAPPS MOBILE APPS IN MATH, ARALING PANLIPUNAN AND FILIPINO FOR KINDER TO GRADE 10 STUDENTS', 'https://drive.google.com/file/d/1aSV-CttHFkBTHUTkCEcnMYKXuOX7Xi9C/view?usp=sharing', '113', '2021-11-24', 'MISCELLANEOUS MEMOS', 'active'),
(1500, '', 'INVITATION TO ALL KINDER TO GRADE 6 PUPILS TO JOIN A DANCE CONTEST', 'https://drive.google.com/file/d/1pH_3FEnMxAwYrDX6MzXScU6TRpgL9aey/view?usp=sharing', '112', '2021-11-23', 'MISCELLANEOUS MEMOS', 'active'),
(1501, '', 'CONDUCT OF FACE TO FACE GENDER: SENSITIVITY AND DEVELOPMENT SEMINAR', 'https://drive.google.com/file/d/1leCwXtSQwpPtu2LcwNgT8f0u7Mb4YOoQ/view?usp=sharing', '111', '2021-11-22', 'MISCELLANEOUS MEMOS', 'active'),
(1502, '', 'HMO PRODUCT/HEALTH CARD', 'https://drive.google.com/file/d/1sP1VXbUB56sRo7rYy04b188ZeQfbP6ut/view?usp=sharing', '110', '2021-11-16', 'MISCELLANEOUS MEMOS', 'active'),
(1503, '', 'CONDUCT OF TRAINING WORKSHOP ON MATHENIK AND STRATEGIC PLANNING FOR ENRICH PROJECT AND TRAINING NEEDS ASSESSMENT', 'https://drive.google.com/file/d/1Xixtai3gu4pyifmHA8wbZUJQoSVztJZW/view?usp=sharing', '109', '2021-11-18', 'MISCELLANEOUS MEMOS', 'active'),
(1504, '', 'TEACHERS\' ORIENTATION PROGRAM', 'https://drive.google.com/file/d/1jGht5niM4Ol32QJUl9wAQkKHDdmdVyqJ/view?usp=sharing', '107', '2021-11-19', 'MISCELLANEOUS MEMOS', 'active'),
(1505, '', 'MANILA YOUTH CONGRESS 2.0', 'https://drive.google.com/file/d/1ZW7nfRH7wQnr2JxxKZMhu6qT45NnZlWe/view?usp=sharing', '102', '2021-11-17', 'MISCELLANEOUS MEMOS', 'active'),
(1506, '', '3-DAY NATIONAL VIRTUAL CONFERENCE AND TEACHING DEMO FESTIVAL', 'https://drive.google.com/file/d/17mXBaQw3RWn7DRCYkf198tSvdxWba8YF/view?usp=sharing', '101', '2021-11-16', 'MISCELLANEOUS MEMOS', 'active'),
(1508, '', 'CAPABILITY TRAINING ON GENDER RESPONSIVENESS FOR NON-TEACHING PERSONNEL TOWARDS QUALITY SERVICE AND CLIENT SATISFACTION', 'https://drive.google.com/file/d/1S_z7I-4Bz8XGmZMGysxh1FQ7EVhsOEG1/view?usp=sharing', '99', '2021-11-15', 'MISCELLANEOUS MEMOS', 'active'),
(1509, '', 'TO CONDUCT A SERIES OF INTERNATIONAL SEMINAR-WORKSHOP ON INNOVATIVE AND PEDAGOGICAL APPROACHES IN EDUCATION', 'https://drive.google.com/file/d/15w3h14K6vUzD8U6ZBA_9lGFzwDdW_Rrv/view?usp=sharing', '98', '2021-11-12', 'MISCELLANEOUS MEMOS', 'active'),
(1510, '', 'VIRTUAL MANILA CHILDREN\'S CONGRESS 2.0', 'https://drive.google.com/file/d/14x3dfTMnaBzkv6XS2ROqwazTb5r9hlQc/view?usp=sharing', '97', '2021-11-11', 'MISCELLANEOUS MEMOS', 'active'),
(1511, '', 'CONDUCT OF GENDER AND DEVELOPMENT WEBINAR', 'https://drive.google.com/file/d/1g5GyLy2iAbYvAPMTzxRbV2QgBfJ8BF3-/view?usp=sharing', '96', '2021-11-09', 'MISCELLANEOUS MEMOS', 'active'),
(1512, '', 'PLANNING TO FACILITATE THREE (3) BATCHES OF FACE TO FACE ORIENTATION FOR 33 SCHOOL NURSES AND 7 SCHOOL DENTISTS OF THE DIVISION AS EFFECTIVE TREATMENT PARTNERS FOR GRADE SCHOOL PUPILS WHO WILL BE DIAG', 'https://drive.google.com/file/d/1UoIDHnY45qxEcxwl6LaOppaT4ICfZr-5/view?usp=sharing', '95', '2021-11-11', 'MISCELLANEOUS MEMOS', 'active'),
(1513, '', 'PLANNING TO FACILITATE THREE (3) BATCHES OF FACE TO FACE ORIENTATION FOR 33 SCHOOL NURSES AND 7 SCHOOL DENTISTS OF THE DIVISION AS EFFECTIVE TREATMENT PARTNERS FOR GRADE SCHOOL PUPILS WHO WILL BE DIAG', 'https://drive.google.com/file/d/1iPkkt4mKOH80CQwVDd_7MJRa86YkRa72/view?usp=sharing', '94', '2021-11-11', 'MISCELLANEOUS MEMOS', 'active'),
(1514, '', 'FREE 4-DAY CONFERENCE FOR THE FIRST-EVER VIRTUAL ASIAN FEDERATION ON INTELLECTUAL DISABILITIES (AFID)', 'https://drive.google.com/file/d/1GikIeDrFEsRdkFSs16ASIXsvBNbQZIcy/view?usp=sharing', '93', '2021-11-09', 'MISCELLANEOUS MEMOS', 'active'),
(1515, '', 'LEGISLATIVE REVIEW OF MAGNA CARTA FOR PUBLIC SCHOOL TEACHERS (RA 4670) AND ORIENTATION ON PUBLIC SECTOR UNIONISM', 'https://drive.google.com/file/d/1SQTGDPDsOjzM3TXqjylyi0IKiN0YyYzY/view?usp=sharing', '92', '2021-11-09', 'MISCELLANEOUS MEMOS', 'active'),
(1516, '', 'TINDOG TAYO: PAGBANGON AT PANINIDIGAN PARA SA SARILI, KAPWA, AT BAYAN', 'https://drive.google.com/file/d/1T3BfhLhmfA6OLLPUDez4dmi6rjTHoOCH/view?usp=sharing', '91', '2021-11-03', 'MISCELLANEOUS MEMOS', 'active'),
(1517, '', 'MASHAV ONLINE COURSE: PEDAGOGICAL INNOVATIONS', 'https://drive.google.com/file/d/1p1QFwv_mcKRxfHYBNuni78_iIs-BEjKN/view?usp=sharing', '90', '2021-11-04', 'MISCELLANEOUS MEMOS', 'active'),
(1518, '', 'COMPREHENSIVE SCHOOL PROGRAM OF FORTUNE LIFE INSURANCE COMPANY', 'https://drive.google.com/file/d/1acz1inXcjoKypOTJZpfZvyPg-5UYZxEH/view?usp=sharing', '88', '2021-10-28', 'MISCELLANEOUS MEMOS', 'active'),
(1519, '', '2ND INTERNATIONAL CONFERENCE ON MULTI-PERSPECTIVE IN EDUCATION', 'https://drive.google.com/file/d/1D1bOUPwfAs7zQa8zy9_IshrUegZweb43/view?usp=sharing', '84', '2021-10-22', 'MISCELLANEOUS MEMOS', 'active'),
(1520, '', '2021 CORE NATIONAL YOUTH SUMMIT', 'https://drive.google.com/file/d/1HEhplXE3mchTDweu7l60mk3R5x9gPL3T/view?usp=sharing', '83', '2021-05-26', 'MISCELLANEOUS MEMOS', 'active'),
(1521, '', 'USE OF SCHOOLS AS MEASLES RUBELLA - TETANUS DIPHTHERIA (MR - TD) VACCINE SITES', 'https://drive.google.com/file/d/1bngu2xkMT0ozKiRNtZekFVKTlcav-4Uq/view?usp=sharing', '81', '2021-10-20', 'MISCELLANEOUS MEMOS', 'active'),
(1522, '', 'INFORMATION, EDUCATION AND COMMUNICATION (IEC) CAMPAIGN ON ECOLOGICAL SOLID WASTE MANAGEMENT', 'https://drive.google.com/file/d/1oijGONiptU4Qof_SyA1YJpOvyHfjZI-m/view?usp=sharing', '80', '2021-10-18', 'MISCELLANEOUS MEMOS', 'active'),
(1523, '', 'GUHIT, PINTA, LARO: LARONG PINOY ON-THE-SPOT PAINTING COMPETITION', 'https://drive.google.com/file/d/14CLbWH35kZ1gCWCLmvycI3BYkVD0A0L4/view?usp=sharing', '79', '2021-10-18', 'MISCELLANEOUS MEMOS', 'active'),
(1524, '', 'NURTURING STEM TALENT IN BASIC EDUCATION', 'https://drive.google.com/file/d/1fgrUcS17bq0VUV8hwAg8_NURGNOlZ-yS/view?usp=sharing', '77', '2021-10-12', 'MISCELLANEOUS MEMOS', 'active'),
(1525, '', 'GRADUATE ONLINE ACADEMIC LECTURE SERIES 12', 'https://drive.google.com/file/d/1Cv5XkakIurHxL4I2e4_mpAvKLW-b2yaZ/view?usp=sharing', '76', '2021-10-11', 'MISCELLANEOUS MEMOS', 'active'),
(1526, '', 'CONDUCT OF VIRTUAL CAREER TALK', 'https://drive.google.com/file/d/1PmaMNSdYr2rsT4m4S6iHDZDHsLnWIKDg/view?usp=sharing', '74', '2021-10-08', 'MISCELLANEOUS MEMOS', 'active'),
(1527, '', 'ONLINE ENGLISH LANGUAGE TEST FOR TEACHERS, STUDENTS, AND EMPLOYEES ACCREDITED BY CAMBRIDGE ASSESSMENT ENGLISH', 'https://drive.google.com/file/d/1HdZ2rK-sr3kvY5eTWc7uHYzdV2tQDrRl/view?usp=sharing', '73', '2021-10-01', 'MISCELLANEOUS MEMOS', 'active'),
(1528, '', 'RECYCLING CONTEST AND LIKHAIN', 'https://drive.google.com/file/d/1ZzI-DsxP_5SbmVKNPp6areKH_xh-KTXM/view?usp=sharing', '72', '2021-09-28', 'MISCELLANEOUS MEMOS', 'active'),
(1529, '', 'YOUTH LIFE ENRICHMENT PROGRAM\'S LUSOG ISIP NG KABATAAN (YLEP-LINK CLUB)', 'https://drive.google.com/file/d/1BvjvxMITbROXrWVVgNDXBrCOlZQ5N9c1/view?usp=sharing', '71', '2021-09-24', 'MISCELLANEOUS MEMOS', 'active'),
(1530, '', 'CATECHISM AND EVANGELIZATION', 'https://drive.google.com/file/d/1aEgJ2J-OInlOirRUWbPDV9Ij322E5LAD/view?usp=sharing', '70', '2021-09-24', 'MISCELLANEOUS MEMOS', 'active'),
(1532, '', 'STATISTICAL TOOLS ENABLEMENT IN-DEPTH TRAINING WORKSHOP (USING JASP AND JAMOVI)', 'https://drive.google.com/file/d/1jgSdUg6G2bRQuPSubrgOUq020znAbOEE/view?usp=sharing', '68', '2021-09-24', 'MISCELLANEOUS MEMOS', 'active'),
(1533, '', 'IKA-45 PAMBANSANG KUMPERENSIYA SA SIKOLOHIYANG PILIPINO', 'https://drive.google.com/file/d/1iGoRzKSTCVB59CfXzYwnWkXc87Qf5Cyu/view?usp=sharing', '67', '2021-09-22', 'MISCELLANEOUS MEMOS', 'active'),
(1534, '', 'ENDORSEMENT OF THE CATECHISTS FOR THE SCHOOL YEAR 2021-2022', 'https://drive.google.com/file/d/1Nhs5ElIex8h6RXYmWtOvde8wKTCULe4R/view?usp=sharing', '66', '2021-09-21', 'MISCELLANEOUS MEMOS', 'active'),
(1535, '', '2-DAY GAD WEBINAR FOR LEARNERS AND TEACHERS', 'https://drive.google.com/file/d/1LIGFwVZxj2oESaTmxBO-pl_-5cMMEAbc/view?usp=sharing', '64', '2021-09-07', 'MISCELLANEOUS MEMOS', 'active'),
(1536, '', 'PAMBANSANG KWERDAS-KONPERENSYAL WEBINAR SA EDUKASYONG RITMO TUNGO SA DALUYANG SINING', 'https://drive.google.com/file/d/1eR3B-uathUJnSQN5FNe27LKfK65crvsU/view?usp=sharing', '63', '2021-08-25', 'MISCELLANEOUS MEMOS', 'active'),
(1537, '', 'GENDER AND DEVELOPMENT WEBINAR SERIES', 'https://drive.google.com/file/d/1Sf7jRmhSXnOYagqIYlbx_sIv3kX1EHPe/view?usp=sharing', '62', '2021-08-26', 'MISCELLANEOUS MEMOS', 'active'),
(1538, '', '36TH YOUTH LEADERSHIP EXCELLENCE AWARDS (YLEA) - ACADEMICS', 'https://drive.google.com/file/d/1w6Z6ezrWW-1BK_VHFr-_1dx--uJfC-fo/view?usp=sharing', '61', '2021-08-25', 'MISCELLANEOUS MEMOS', 'active'),
(1539, '', 'CONDUCT OF 2 DAY GENDER AND DEVELOPMENT WEBINAR', 'https://drive.google.com/file/d/1JZGLkHHFl9nVB3d2kYKsvvjXtBBLQrkj/view?usp=sharing', '60', '2021-08-16', 'MISCELLANEOUS MEMOS', 'active'),
(1540, '', '22ND INTERNATIONAL YOUTH DAY', 'https://drive.google.com/file/d/1AzfTZtV1aFQK13-lba37ywF9wJUyplLO/view?usp=sharing', '59', '2021-08-13', 'MISCELLANEOUS MEMOS', 'active'),
(1541, '', 'OFFERING SCHOLARSHIPS AND DISCOUNTS FOR S.Y. 2021-2022 AS PART OF THEIR GIFTED2GIVE PROGRAMS', 'https://drive.google.com/file/d/1ZDpH1eKkHrTmn77zjX1N5ylMvyV1wwLl/view?usp=sharing', '58', '2021-08-12', 'MISCELLANEOUS MEMOS', 'active'),
(1542, '', 'OFFERING SCHOLARSHIPS AND DISCOUNTS FOR S.Y. 2021-2022 AS PART OF THEIR GIFTED2GIVE PROGRAMS', 'https://drive.google.com/file/d/1XswDYvmcNgLpBSuQWZKdUZk2aPONSYMp/view?usp=sharing', '57', '2021-08-12', 'MISCELLANEOUS MEMOS', 'active'),
(1543, '', '2021 STAKEHOLDER CONVERGENCE', 'https://drive.google.com/file/d/1NlC_U-jUcTAKZf1iXuSb4zRC3sYbAE_N/view?usp=sharing', '56', '2021-08-11', 'MISCELLANEOUS MEMOS', 'active'),
(1544, '', '2021 BRIGADA ESKWELA KICK-OFF', 'https://drive.google.com/file/d/1sej1zO2kRtxatRtNpGLNixVp5UE-314x/view?usp=sharing', '55', '2021-08-11', 'MISCELLANEOUS MEMOS', 'active'),
(1545, '', 'NATIONAL HEROES DAY', 'https://drive.google.com/file/d/1kqweDVOD0L3xyoDxgLaz2OOYZhq0nwm4/view?usp=sharing', '54', '2021-08-11', 'MISCELLANEOUS MEMOS', 'active'),
(1546, '', 'CONDUCT OF GENDER AND DEVELOPMENT WEBINAR', 'https://drive.google.com/file/d/1v2kXPZD2b36cGKhezt9KbZTWySz7jtW6/view?usp=sharing', '53', '2021-08-12', 'MISCELLANEOUS MEMOS', 'active'),
(1547, '', 'INVITATION TO PARTICIPATE IN THE PUBLIC SECTOR HR SYMPOSIUM WITH THE THEME \"TRANSFORMING GOVERNMENT AGENCIES INTO SMART ORGANIZATIONS: HONING RESILIENT AND FUTURE-READY PUBLIC SERVANTS VIA ZOOM PLATFO', 'https://drive.google.com/file/d/1uLS2JSdIAy_YtkGGhDHErdSvrumb_VUM/view?usp=sharing', '52', '2021-08-10', 'MISCELLANEOUS MEMOS', 'active'),
(1548, '', 'THE POWER OF INTERNATIONAL LINKAGES TO IMPROVE YOUR TEACHING AND LEARNING (FREE WEBINAR)', 'https://drive.google.com/file/d/1Tcq8mY2_iEnDImlg-pu0n5PNZ1hBkXU4/view?usp=sharing', '51', '2021-08-09', 'MISCELLANEOUS MEMOS', 'active'),
(1549, '', 'PARTICIPANTS OF GENDER AND DEVELOPMENT ORIENTATION', 'https://drive.google.com/file/d/1-UvZYqgdv82BidClnuncFjvHGWkevTT6/view?usp=sharing', '50', '2021-08-09', 'MISCELLANEOUS MEMOS', 'active'),
(1550, '', 'INVITATION TO PARTICIPATE IN THE FUND RAISING ACTIVITY TO RAISE FUNDS FOR THE PAMBANSANG LINGKOD BAYANI', 'https://drive.google.com/file/d/11nEf2pVYjfOXB_X6p4wjFUFFxmc4kZgo/view?usp=sharing', '49', '2021-07-30', 'MISCELLANEOUS MEMOS', 'active'),
(1551, '', 'FREE SYMPOSIUM FOR OUR SCHOOL LEADERS AND HUMAN RESOURCE PRACTITIONERS', 'https://drive.google.com/file/d/1npYylyoY3E9CDsdwc6aTRpaeWB1bFlp_/view?usp=sharing', '47', '2021-07-12', 'MISCELLANEOUS MEMOS', 'active'),
(1552, '', 'LAUNCHING OF BPI SINAG FOR EDUCATORS THROUGH AN OPEN HOUSE WEBINAR', 'https://drive.google.com/file/d/1sZknxdSHkr9AtY-Hjw6NLsUYALjFaDdq/view?usp=sharing', '45', '2021-06-29', 'MISCELLANEOUS MEMOS', 'active'),
(1553, '', '1ST VIRTUAL MVP FUTURE THOUGHT LEADERS\' SUMMIT (MVP-FTLS)', 'https://drive.google.com/file/d/1EEY_CZpEsL4MTfH87p1QOFBzGUskd_5H/view?usp=sharing', '44', '2021-06-30', 'MISCELLANEOUS MEMOS', 'active'),
(1554, '', 'CONDUCT OF GAD TRAINING WORKSHOP', 'https://drive.google.com/file/d/1jxCAUritDKrBzgwpGu5llB6nhPT66IPg/view?usp=sharing', '43', '2021-06-29', 'MISCELLANEOUS MEMOS', 'active'),
(1555, '', 'PERMISSION AND SUPPORT TO CONDUCT A SURVEY TO SCHOOLS AND STUDENTS FOR THEIR PARTNERED COMPANY SPRIX, LTD.', 'https://drive.google.com/file/d/1oLHCVO3Rq4qvbpRA7Bl5PMsucvrK_fwv/view?usp=sharing', '41', '2021-06-25', 'MISCELLANEOUS MEMOS', 'active'),
(1556, '', 'NEEDS ASSESSMENT SURVEY (NAS)', 'https://drive.google.com/file/d/1I-KNfaNpJwMsyWOCGx2JHqXYSCoEm8Cx/view?usp=sharing', '40', '2021-06-18', 'MISCELLANEOUS MEMOS', 'active'),
(1557, '', 'QUEZON\'S CODE: A CORNERSTONE OF FILIPINO CITIZENSHIP VALUES', 'https://drive.google.com/file/d/1MaT0OYh6ZE4jzLBIdWDkqUAw0OQLCIVl/view?usp=sharing', '39', '2021-06-14', 'MISCELLANEOUS MEMOS', 'active'),
(1558, '', 'REQUEST FOR MEETINGS REGARDING PHILIPPINE IDENTIFICATION SYSTEM (PHILSYS)', 'https://drive.google.com/file/d/1NDrb3ojueY8cx-C2g8Wu7WM_RoDQTrlp/view?usp=sharing', '38', '2021-06-15', 'MISCELLANEOUS MEMOS', 'active'),
(1559, '', 'CALL FOR PAPERS FOR THE 3RD ISSUE OF THE ASIAN JOURNAL ON PERSPECTIVES IN EDUCATION (AJPE)', 'https://drive.google.com/file/d/1O-OZ0XKgGM_nQOnjU9wYseGr2CPjJcht/view?usp=sharing', '37', '2021-06-11', 'MISCELLANEOUS MEMOS', 'active'),
(1560, '', 'YOUTH EMPOWERMENT SUMMIT', 'https://drive.google.com/file/d/1qId6DK9VMwNpByte5nUIQr9UgE8srmHU/view?usp=sharing', '36', '2021-06-07', 'MISCELLANEOUS MEMOS', 'active'),
(1561, '', 'CONDUCT OF FREE WEBINAR FOR PUBLIC SCHOOL TEACHERS', 'https://drive.google.com/file/d/1R0E15swSz7ecSw328-DROAjZAlxJuHj-/view?usp=sharing', '35', '2021-05-27', 'MISCELLANEOUS MEMOS', 'active'),
(1562, '', 'OBSERVANCE OF THE NATIONAL FLAG DAY', 'https://drive.google.com/file/d/1lvYCmAEvVCE14U_KGcBDNRTN4ly1P-i9/view?usp=sharing', '34', '2021-05-21', 'MISCELLANEOUS MEMOS', 'active'),
(1563, '', 'REQUEST FOR THE CONTACT DETAILS FOR THE LEARN FROM HOME SERVICE', 'https://drive.google.com/file/d/19ujFUJmZnWa8pUdWuUmvEcJA_8mOYE4A/view?usp=sharing', '33', '2021-05-18', 'MISCELLANEOUS MEMOS', 'active'),
(1564, '', 'POSITIVE IMPACT ON NATION CHANGE (P.I.N.C.)', 'https://drive.google.com/file/d/1dypey7AM6T6qS-gUHdZIfSV6601I5TU0/view?usp=sharing', '32', '2021-05-07', 'MISCELLANEOUS MEMOS', 'active'),
(1565, '', 'UPDATING OF MAGNUM 10 TABLETS', 'https://drive.google.com/file/d/1_cTq5CZh0hW7sTFzARUIwoPrqTcjRuhH/view?usp=sharing', '31', '2021-05-21', 'MISCELLANEOUS MEMOS', 'active'),
(1566, '', 'CONDUCT OF CAREER ORIENTATION WEBINAR (COW)', 'https://drive.google.com/file/d/1wSMX-iQEzvhrj3qS8VQyEWPaqBwMsTBn/view?usp=sharing', '30', '2021-05-05', 'MISCELLANEOUS MEMOS', 'active'),
(1567, '', 'ACTIVITIES OF THE CYBER YOUTH EMPOWERMENT PROGRAM', 'https://drive.google.com/file/d/1_OaVxrSSjVvr3n3fRZ1zRUbQpxS3du9K/view?usp=sharing', '29', '2021-04-23', 'MISCELLANEOUS MEMOS', 'active'),
(1568, '', 'ADHIKANG DIWA: TUNGKULING MAMAMAYAN PARA SA BAYAN', 'https://drive.google.com/file/d/1f0l_oM2IGJWQK_B78g8pF3jYqnOwn1lV/view?usp=sharing', '28', '2021-04-23', 'MISCELLANEOUS MEMOS', 'active'),
(1569, '', 'SERIES OF ONLINE CONSULTATIONS ON THE AMENDMENTS TO RA 4670', 'https://drive.google.com/file/d/1iizYuK5wFelldHqqZUVyvenM9RGI601L/view?usp=sharing', '27', '2021-04-27', 'MISCELLANEOUS MEMOS', 'active'),
(1570, '', 'CONDUCT OF CAREER ORIENTATION', 'https://drive.google.com/file/d/1sBqEbA6YzyNAymzNeYr2vd7VIoW14YvE/view?usp=sharing', '26', '2021-04-08', 'MISCELLANEOUS MEMOS', 'active'),
(1571, '', 'CONDUCT OF CAREER ORIENTATION', 'https://drive.google.com/file/d/1hYVT_Wkc8BdSBoTrEi1wzem7fXNH4gd9/view?usp=sharing', '25', '2021-04-08', 'MISCELLANEOUS MEMOS', 'active'),
(1572, '', 'INVITATION TO THE CONDUCT OF THE 2021 ONLINE SUMMER KIDS CAMP ON APRIL 26-28, 2021', 'https://drive.google.com/file/d/18pMTaBQH1tfB098huCgqVV0TBuRet38Y/view?usp=sharing', '24', '2021-04-16', 'MISCELLANEOUS MEMOS', 'active'),
(1573, '', 'REQUEST LETTER TO CAREER ORIENTATION TO GRADE 6 STUDENTS', 'https://drive.google.com/file/d/1ugr2D9lJmSlAnSwo9IP60f3Rx4Jh12Nu/view?usp=sharing', '23', '2021-04-16', 'MISCELLANEOUS MEMOS', 'active'),
(1574, '', 'WEBINAR SERIES TO PROVIDE A VENUE FOR LEARNING, EXCHANGE AND DISCUSSION OF DIFFERENT CONCEPTS AND CURRENT RESEARCH FIELD OF DEVELOPMENTAL BIOLOGY', 'https://drive.google.com/file/d/15gGFYZm4E0O-L47WcCtAVJZA439FWaN5/view?usp=sharing', '22', '2021-04-07', 'MISCELLANEOUS MEMOS', 'active'),
(1575, '', 'GURO NG BAYAN, UMIGPAW AT SUMULONG EDUKASYON, KALUSUGAN, KABUHAYAN, KARAPATAN, AT KALAYAAN IPAGLABAN', 'https://drive.google.com/file/d/1gnt6sK0pgDNvbsxHSH-qynWzerOmVWHf/view?usp=sharing', '20', '2021-03-01', 'MISCELLANEOUS MEMOS', 'active'),
(1576, '', 'ONLINE APPLICATIONS FOR COLLEGE ADMISSION FOR SCHOOL YEAR 2021 - 2022', 'https://drive.google.com/file/d/1mFMxpt4byZ6EOC6gGyZ8iIgXg2LNonV4/view?usp=sharing', '19', '2021-02-24', 'MISCELLANEOUS MEMOS', 'active'),
(1577, '', 'CALL FOR HUMANITARIAN ASSISTANCE FOR DISPLACED LEARNERS OF PAROLA TONDO', 'https://drive.google.com/file/d/1S2mgbHgzCG8AX4whqDtnj3r7U-WybB96/view?usp=sharing', '18', '2021-02-24', 'MISCELLANEOUS MEMOS', 'active'),
(1578, '', 'CONDUCT OF CAREER ORIENTATION WEBINAR (COW)', 'https://drive.google.com/file/d/115zllEZO4Pydgniwha4h9N9rCmFpAyaB/view?usp=sharing', '17', '2021-02-19', 'MISCELLANEOUS MEMOS', 'active'),
(1579, '', 'CHANGING THE DATE FOR PACSIYENSYA JR. AND TUMPACS JR.', 'https://drive.google.com/file/d/1NcS21FCnV3U6UPBfS2LC4ceMvjJUY86K/view?usp=sharing', '16', '2021-02-15', 'MISCELLANEOUS MEMOS', 'active'),
(1580, '', 'MASHAV ONLINE WEBINAR: HOW TO MENTOR PROFESSIONALS WORKING WITH CHILDERN AND YOUTH AT RISK', 'https://drive.google.com/file/d/1tZT_oS3GDLlnGrebFJIna1P8q-C8Gy1f/view?usp=sharing', '15', '2021-02-11', 'MISCELLANEOUS MEMOS', 'active'),
(1581, '', 'REQUESTING PERMISSION TO CONDUCT E-SEMINAR OR AN E-CAREER ORIENTATION TO YOUR GRADE 10 AND 12 STUDENTS', 'https://drive.google.com/file/d/1TFkCPupb2qxVx-QrlxVjm3wW61jmpLv_/view?usp=sharing', '14', '2021-02-09', 'MISCELLANEOUS MEMOS', 'active'),
(1582, '', 'STRENGTHENING THE DIGITAL LITERACY OF EDUCATORS IN THE TIME OF COVID-19 ON FEBRUARY 16, 2021', 'https://drive.google.com/file/d/1LKOaAhdqMi90MQuam9cscbOwC_OjFpDU/view?usp=sharing', '13', '2021-02-10', 'MISCELLANEOUS MEMOS', 'active'),
(1583, '', 'FREE WEBINAR WORKSHOP ON FINANCIAL LITERACY OF PUBLIC AND PRIVATE SCHOOLS TEACHERS', 'https://drive.google.com/file/d/1TbyF-66Q_xfXOdP5XTaYKe2K3jkdmVU7/view?usp=sharing', '12', '2021-02-10', 'MISCELLANEOUS MEMOS', 'active'),
(1584, '', 'REQUESTING PERMISSION TO CONDUCT ON ONLINE CAMPAIGN / CAREER ORIENTATION TO GRADE 6, GRADE 10 AND GRADE 12 STUDENTS IN THE DIFFERENT SCHOOLS IN DISTRICT V AND VI', 'https://drive.google.com/file/d/1ytIBTT5-HKBG1DMQJ1ex5klcGgES1Ykt/view?usp=sharing', '10', '2021-02-05', 'MISCELLANEOUS MEMOS', 'active'),
(1585, '', 'MASHAV ONLINE COURSE: EARLY CHILDHOOD DEVELOPMENT AND CHILDREN WITH DISABLITIES', 'https://drive.google.com/file/d/1pu87VR6w8R9z6yLynmTSDkCuvtfZANLM/view?usp=sharing', '9', '2021-02-03', 'MISCELLANEOUS MEMOS', 'active'),
(1586, '', 'MASHAV ONLINE WEBINAR: FUTURE THINKING IN EDUCATION FOR SCHOOLS', 'https://drive.google.com/file/d/1YTP88u3oFtEY2_Yt5Qh3lmBNnU60ad-T/view?usp=sharing', '8', '2021-02-03', 'MISCELLANEOUS MEMOS', 'active'),
(1587, '', 'INSTITUTING MEASURES TO INCREASE ENGAGED TIME-ON-TASK AND ENSURING COMPLIANCE THEREWITH', 'https://drive.google.com/file/d/1gWtRLUgWassCUzve7OTdwAz4HH3kdaQ2/view?usp=sharing', '7', '2021-02-02', 'MISCELLANEOUS MEMOS', 'active'),
(1588, '', 'THE 6TH INTERNATIONAL INVENTION INNOVATION COMPETITION IN CANADA, ICAN 2021', 'https://drive.google.com/file/d/1LKvh2Vi-co6AJhDPqdx8vpg6Zuqi1KcZ/view?usp=sharing', '6', '2021-02-02', 'MISCELLANEOUS MEMOS', 'active'),
(1589, '', 'JUNIOR CHEMISTRY CONGRESS', 'https://drive.google.com/file/d/1z2WXtF6Tafw12wNYceyU7q28NlVCZZZc/view?usp=sharing', '5', '2021-02-02', 'MISCELLANEOUS MEMOS', 'active'),
(1590, '', 'STEMHUB 2021 INTERNATIONAL TRAINING PROGRAMS', 'https://drive.google.com/file/d/1raqbNkRJtVTRBlF26A3UQTHTfsNfUKxP/view?usp=sharing', '4', '2021-02-02', 'MISCELLANEOUS MEMOS', 'active'),
(1591, '', 'INVITATION TO ONLINE ORIENTATION ON THE REVISED CIC GUIDELINES FOR SY 2020-2021', 'https://drive.google.com/file/d/1_5s-8MwGqIgenj950PJB9DoklGDu7u70/view?usp=sharing', '3', '2021-01-21', 'MISCELLANEOUS MEMOS', 'active'),
(1592, '', 'NESTLE WELLNESS CAMPUS PROGRAM', 'https://drive.google.com/file/d/1KiiQ7FjXEm1JaWYg_BHrkw-7HcBbZqnX/view?usp=sharing', '2', '2021-01-18', 'MISCELLANEOUS MEMOS', 'active'),
(1593, '', 'THAILAND INVENTOR\'S DAY - BANGKOK INTERNATIONAL INTELLECTUAL PROPERTY, INVENTION, INNOVATION AND TECHNOLOGY EXPOSITION (ONLINE COMPETITION & EXHIBITION)', 'https://drive.google.com/file/d/1XqOpJ5i7zxWeJaOcDaPI-XPW3pI9mTLr/view?usp=sharing', '1', '2021-01-06', 'MISCELLANEOUS MEMOS', 'active'),
(1600, '', 'BRIGADA EKSWELA AND STAKEHOLDERS CONVERGENCE TECHNICAL WORKING GROUP (TWG) POST - EVALUATION AND PLANNING MEETING', 'https://drive.google.com/file/d/1LaZ_aGr817fLfbxVVugdG1h_7NXw2Qq0/view?usp=sharing', '0', '2021-12-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1601, '', 'SUBMISSION AND EVALUTION OF LRS (SCHOOL & DIVISION LEVEL), OTHER MATTERS', 'https://drive.google.com/file/d/1Hh76xMhaW2het4frDHN9lwhnv39shYkb/view?usp=sharing', '0', '2021-11-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1602, '', 'KUMUSTAHAN ON THE PREPARATION AND UPDATING OF SBM, REVISTING OF SBM SELF-ASSESSMENT TOOL, CONDUCT OF SBM ASSESSMENT, SUBMISSION OF SELF-ASSESSMENT RESULTSS. VALIDATION OF SBM SELF-ASSESSMENT RESULT SC', 'https://drive.google.com/file/d/1sljdTf4okfrn43jQU8kxCye7JXSxqcNd/view?usp=sharing', '0', '2021-11-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1603, '', 'SPG/SSG TEACHER-ADVISER DISTRICT COORDINATORS MEETING', 'https://drive.google.com/file/d/10LXqV6QSy8JJfomGrPthSCsml1oVcKB6/view?usp=sharing', '0', '2021-11-08', 'UNNUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(1604, '', 'DIVISION ORIENTATION ON BARKADA KONTRA DROGA (BKD) PROGRAM', 'https://drive.google.com/file/d/1nNm4Dfi4RTsdJM1u10j9ch_LUDOFQnt7/view?usp=sharing', '0', '2021-11-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1605, '', 'CONSULTATIVE MEETING ON HR PRIME', 'https://drive.google.com/file/d/1aLwd6zIJ9cBjAhgbltEdJGNywcVWu4Te/view?usp=sharing', '0', '2021-10-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1606, '', 'COORDINATION MEETING OF SPG/SSG DIVISION ELECTION CORE GROUP', 'https://drive.google.com/file/d/1A9XxCa5onhx4KfSemgzd0GeLkQJvioP8/view?usp=sharing', '0', '2021-10-21', 'UNNUMBERED MEMORANDUM', 'active'),
(1607, '', 'POST-EVALUATION MEETING ON THE CONDUCT OF THE SPG/SSG ELECTIONS (SY 2021-2022)', 'https://drive.google.com/file/d/14ZDNHcfRtFcnetig3WoRAxQBfZ42T8R6/view?usp=sharing', '0', '2021-10-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1608, '', 'VIRTUAL INSPECTION PROCESS OF DR. JUAN NOLASCO HIGH SCHOOL BY THE NCR-QUALITY ASSURANCE DIVISION', 'https://drive.google.com/file/d/1ohJgW5SYA7SQp70jIcex9LmVTKmsrj2s/view?usp=sharing', '0', '2021-10-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1609, '', 'COORDINATION MEETING WITH THE QUIPPER REGIONAL MANAGER, MR. JEROME A. SEMPIO', 'https://drive.google.com/file/d/1TVKldpWParM2yBKV1iWOP7z-L0hE2M0a/view?usp=sharing', '0', '2021-10-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1610, '', 'TA PROVISION ON SLRMDC OTHER MATTERS', 'https://drive.google.com/file/d/1RGueDqGRWRFAQLt8yr6mQDzCZsZ8FMvQ/view?usp=sharing', '0', '2021-09-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1611, '', 'PLANNING MEETING FOR 2021 TEACHERS DAY CELEBRATION', 'https://drive.google.com/file/d/1ad724JL3xQM01PSCsbu6qNwCrHJ9AP9M/view?usp=sharing', '0', '2021-09-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1612, '', 'MEETING WITH ALIVE IMPLEMENTERS', 'https://drive.google.com/file/d/1dOEXF0WVjJeazID95mbNew5E7XLTLKkX/view?usp=sharing', '0', '2021-09-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1613, '', 'DIVISION ORIENTATION ON THE INTERIM GUIDELINES ON STUDENT GOVERNMENT ELECTIONS FOR SY 2021-2022 UNDER THE NEW NORMAL', 'https://drive.google.com/file/d/1kiqIcI8Ok5X-al1R0-NrXQqMy438rBOq/view?usp=sharing', '0', '2021-09-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1614, '', 'SCHOOL DISASTER RISK REDUCTION MANAGEMENT COORDINATORS MEETING/ORIENTATION', 'https://drive.google.com/file/d/1o7slfCLwdISXGZBjylqM4EUmulqty1Jo/view?usp=sharing', '0', '2021-09-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1615, '', 'SCHOOL YEAR 2021 - 2022 ACTIVTIES LEARNING COMPETENCIES/DBOW ADM MODULE LEARNING PLAN OTHER ACTIVITIES DOWNLOADED FROM NCR AND CENTRAL OFFICE', 'https://drive.google.com/file/d/1zwCXSPW0qva7Q0fsgfP0z9GEkCHbWV5m/view?usp=sharing', '0', '2021-09-03', 'UNNUMBERED MEMORANDUM', 'active'),
(1616, '', 'ORIENTATION ON THE DEVELOPMENT OF INTEGRATIVE ASSESSMENT TOOLS (GRASPS) WRITESHOP 1', 'https://drive.google.com/file/d/1qbAvk9_NfVH1oOYjl6VFjp2u-0pnuWPd/view?usp=sharing', '0', '2021-08-26', 'UNNUMBERED MEMORANDUM', 'active'),
(1617, '', 'PRE-CONSTRUCTION MEETING OF BEFF 2021 REPAIR AND REHABILITATION OF CLASSROOMS AND ORIENTATION OF DEPED ORDER NO. 009, S. 2020 RE: CONSTRUCTION SAFETY GUIDELINES FOR THE IMPLEMENTATION OF DEPED INFRAST', 'https://drive.google.com/file/d/1RHjHlA2Gkso2MwuDat6g2XFGUlqSZwrd/view?usp=sharing', '0', '2021-08-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1618, '', 'PLC: BUILDING A PROFESSIONAL LEARNING COMMUNITY 1. REVISITING THE ROLES OF MASTER TEACHERS 2. UNDERSTANDING MELCS: THE FOCUS ON COMPETENCIES AND SKILLS 3. REFINING THE CULTURE OF RESEARCH IN MATHEMATI', 'https://drive.google.com/file/d/15RcoVEGOGs9hRhmdVFfwlBZrQG2J5Sz8/view?usp=sharing', '0', '2021-08-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1619, '', 'COORDINATION MEETING ON THE EVALUATION OF COMPLETED RESEARCH', 'https://drive.google.com/file/d/1l4VyQnFRg2qqf9H4alZUgxygi_XMyWga/view?usp=sharing', '0', '2021-07-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1620, '', 'POST EVALUATION OF SCHOOL BASED FEEDING PROGRAM (SBFP) 2020-2021', 'https://drive.google.com/file/d/1BVg7_9y3QPPV7eACl3bfQCfsF0xyAJpC/view?usp=sharing', '0', '2021-07-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1621, '', 'SBM-LCP STATUS AND UPDATES OF ACTIVITIES, TA KNOWLEDGE MANAGEMENT FRAMEWORK, TA PROGRESS MONITORING REPORT (REVIEW), SELF-ASSESSMENT TOOL (DO 83 S. 2012)/CONTEXTUALIZED, TA CONGRESS, MONITORING SCHEDU', 'https://drive.google.com/file/d/1hrNQ05-JDEhqu4of18FZjfDOrB77WGNm/view?usp=sharing', '0', '2021-07-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1622, '', 'GABALDON SCHOOLHOUSE CONTEST 2021', 'https://drive.google.com/file/d/11-noLx2cy36GVJl15Q_7QHKeUx9x9Vbh/view?usp=sharing', '0', '2021-06-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1623, '', 'KAMUSTAHAN TIME DISCUSS PLAN OF 2021 DRUG-RELATED PROGRAMS AND ACTIVITIES CREATION OF TWG FOR 2021 NDEP EVENTS NATIONAL NDEP WEBINAR SERIES 2021 OTHER MATTERS', 'https://drive.google.com/file/d/188GdXDWpypQjEm7eK9PLq2arNzoczgtT/view?usp=sharing', '0', '2021-06-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1624, '', 'FINAL DELIBERATION OF SCHOOL HEADS OFFICE PERFORMANCE COMMITMENT REVIEW FORM', 'https://drive.google.com/file/d/1vUt1gPiFycsZVRmFrhvl-0UsXHwxJxv2/view?usp=sharing', '0', '2021-05-27', 'UNNUMBERED MEMORANDUM', 'active'),
(1625, '', 'REVIEW PROGRAM FOR REGIONAL MID-YEAR ASSESSMENT (LEARNING ASSURANCE FOR MONITORING AND PROGRESS [LAMP])', 'https://drive.google.com/file/d/1jvqQm0rcpkBrgm2XfbmZKbV178YoirGC/view?usp=sharing', '0', '2021-05-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1626, '', 'REGIONAL MID-YEAR ASSESSMENT (LEARNING ASSURANCE FOR MONITORING AND PROGRESS [LAMP])', 'https://drive.google.com/file/d/1wI7BzXfxhAKEWQ0j9Jqvht9l_ZvkODI7/view?usp=sharing', '0', '2021-05-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1627, '', 'ORIENTATION ON LDM2 EVALUATION OF TEACHERS AND SCHOOL LAC LEADERS / FACILITATORS', 'https://drive.google.com/file/d/1ct_J4N0tqmQfs2PTmcAc9ym0plPvQqLK/view?usp=sharing', '0', '2021-02-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1628, '', 'QUARTERLY MEETING OF TEACHER - ADVISERS', 'https://drive.google.com/file/d/1Dn8KrAJ4o5KQztRCLeY6rlLk5EcqMsgj/view?usp=sharing', '0', '2021-02-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1629, '', 'CONSULTATIVE MEETING WITH SELECTED PARENT - TEACHER ASSOCIATION OFFICERS (UGNAYAN PANAYAM)', 'https://drive.google.com/file/d/1l1tTMx5iP9iyZc1IM7AdBMPXiIEDMSmQ/view?usp=sharing', '0', '2021-02-17', 'UNNUMBERED MEMORANDUM', 'active'),
(1639, '', 'Learning Session on the Conduct and Facilitation of Psychosocial Support (PSS) Activities to Learners for the S.Y. 2022-2023 in Person Classes', 'https://drive.google.com/file/d/1FL_T2otbDu8Z2ZrHOISei5Ou6oNM4NJf/view?usp=sharing', '327', '2022-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1640, '', 'Training-Writeshop on the Development of Digital Citizenship Modules', 'https://drive.google.com/file/d/11ekbAMLGU26ufK9sLCB_bgidsU1I50uV/view?usp=sharing', '323', '2022-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1641, '', 'Preparation and Submission of Documents for the Payment of Cash Allowance for SY 2022-2023', 'https://drive.google.com/file/d/1-2_m0BbuUIgphpGDIIt9e7azA7vZ1HA7/view?usp=sharing', '316', '2022-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1642, '', 'Workshop on Enhancement of Region and Division Contingency Plan for Different Hazards', 'https://drive.google.com/file/d/1HWZnv2oYNgANtfkE7NVHlxm_Z2r-TSG2/view?usp=sharing', '311', '2022-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1643, '', 'Creation of the Asset Management Committee and Providing for its Members and Functions', 'https://drive.google.com/file/d/1rIUWHPRw_2Bkk6KS3x27z5Rnx-q8YSVq/view?usp=sharing', '216', '2022-08-05', 'NUMBERED MEMORANDUM', 'active'),
(1644, '', 'Vacancies for Non-Teaching Personnel at the Division of City Schools Manila', 'https://drive.google.com/file/d/1uT37j_4a4Z6d6wOphITGtRglKxvziMtO/view?usp=sharing', '219', '2022-08-04', 'NUMBERED MEMORANDUM', 'active'),
(1645, '', 'Dental Clinic Status Check for Oplan Balik Eskwela For School Year 2022-2023', 'https://drive.google.com/file/d/1tZ5T3qmx4Nj1O3jo6I1bHXlhIVDsJgkW/view?usp=sharing', '321', '2022-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1646, '0', 'Red Cross Youth 143 Brigada Eskwela ', 'https://drive.google.com/file/d/1IGeY_F5PjHifwiB8a-e2JKK1tsmnmKhY/view?usp=sharing', '44', '2022-08-02', 'DIVISION CIRCULARS', 'active'),
(1647, '0', 'Conduct of Structural Meeting', 'https://drive.google.com/file/d/1ChEKoYl7F8ZO56Qferw_DT9ksnBFMLCr/view?usp=sharing', '45', '2022-08-08', 'DIVISION CIRCULARS', 'active'),
(1648, '', 'Audio-Video Lesson Production for Learners with Special Educational Needs (LSENs) Through the Sign Language Interpreter Video Stream v2.0', 'https://drive.google.com/file/d/1FzKuKSR8WT8udbP7emKX83KCNOQwbCkM/view?usp=sharing', '324', '2022-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1649, '', 'Kumustahan sa Aklatan (Act of Sharing Knowledge for Leaners Advantage and Technical Assistance Needed)', 'https://drive.google.com/file/d/1fea6uOrZ8HXsry8ynlWQvV4GzwF0mvoY/view?usp=sharing', '325', '2022-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1650, '', 'Division Seminar-Workshop on Basic Records Management', 'https://drive.google.com/file/d/1IXCNde8ollfwgNrAUv4tEV7br7Rx5lCy/view?usp=sharing', '326', '2022-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1651, '', 'Vacancies for Non Teaching Personnel at the Division of City Schools Manila', 'https://drive.google.com/file/d/14pyuonNkHftstqMQaR4cbMEqAFTd1WDw/view?usp=sharing', '210', '2022-08-02', 'NUMBERED MEMORANDUM', 'active'),
(1652, '', 'Updating of the Learner Information System (LIS) Quick Count and Division Data Capture on Enrollment for School Year 2022-2023', 'https://drive.google.com/file/d/1HfEBSlWHuG8WYSZvxfOdlvnby8I896tv/view?usp=sharing', '217', '2022-08-03', 'NUMBERED MEMORANDUM', 'active'),
(1653, '', 'Vacancy for Non-Teaching Personnel at the Division of City Schools Manila ', 'https://drive.google.com/file/d/1HVp8k8Jj6jy6aExj5ZdA5X3sUxqpX_D1/view?usp=sharing', '220', '2022-08-04', 'NUMBERED MEMORANDUM', 'active'),
(1654, '', 'Manila City Roads, Boulevards, Street and Alleys where the No-Parking-No-Vending Policy Will be Strictly Implemented', 'https://drive.google.com/file/d/1tgIoDJpTi_XRxXpVTA54o99mYiWKZj5K/view?usp=sharing', '212', '2022-08-03', 'NUMBERED MEMORANDUM', 'active'),
(1655, '', 'Reorganization of the School Board of the City of Manila', 'https://drive.google.com/file/d/1AdrUsMk9xpXsH57VRlhNj67Ud1cPubAg/view?usp=sharing', '214', '2022-08-03', 'NUMBERED MEMORANDUM', 'active'),
(1656, '', 'Online Japihan sa Filipino sa Badong Kaywan', 'https://drive.google.com/file/d/1G3KUy4gWIrlSZKMbyKKBgBiH7eArgOZg/view?usp=sharing', '320', '2022-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1657, '', 'Invitation to JCI Manila Turn Over Ceremony', 'https://drive.google.com/file/d/1t2f0bm0f1P6bzCVt9Jr2N_m11OYrGpEz/view?usp=sharing', '157', '2022-08-08', 'MISCELLANEOUS MEMOS', 'active'),
(1658, '', 'Flying of all Philippine Flags in Half-Mast in the City of Manila as a Symbol of Mourning,  Respect and Salute to his Excellency Fidel V Ramos - 12th President of Republic of the philippines', 'https://drive.google.com/file/d/1DmXF7GqmjiOARsTz58_rqCiDWGXcnNqc/view?usp=sharing', '213', '2022-08-03', 'NUMBERED MEMORANDUM', 'active'),
(1659, '', 'Conduct of Virtual Orientation for Qualified Elementary, Junior High Schools and Senior High School Teacher Applicants', 'https://drive.google.com/file/d/1gLF5LK7f_YKsvpc7OY9g2cIkra_n3i9E/view?usp=sharing', '218', '2022-08-08', 'NUMBERED MEMORANDUM', 'active'),
(1660, '', 'Planning/Meeting and Creation of TWG for the Conduct of the Training Writeshop on the Development of Digital Citizenship Modules', 'https://drive.google.com/file/d/17peJ0FwdPTXIcgsv4LUgshZs28tMUvlm/view?usp=sharing', '0', '2022-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1661, '', 'Reiteration on the Implementation of Deped ORder 56, S. 2011 - Standard for Philippines Libraries', 'https://drive.google.com/file/d/1jEgZuRzPDsDlhnYCjKv6oixMZLpV1Eb6/view?usp=sharing', '314', '2022-08-04', 'UNNUMBERED MEMORANDUM', 'active'),
(1662, '', 'Antonio Maceda Integrated School (ELEM) Capacity Building for Teachers', 'https://drive.google.com/file/d/1Z981_zOYzA_cK4g_XvkVXL_CxD18OcNC/view?usp=sharing', '154', '2022-08-08', 'MISCELLANEOUS MEMOS', 'active'),
(1663, '', 'Request to use P. Guevarra ES Covered Court as Rehearsal Venue', 'https://drive.google.com/file/d/1gcjLnvxzLMpkT94qoDMvjNZnU4HWfrAi/view?usp=sharing', '155', '2022-08-01', 'MISCELLANEOUS MEMOS', 'active'),
(1664, '', 'FG Calderon Building Training', 'https://drive.google.com/file/d/1G2KWD0-J0sCU_twM_S17e5G810XOd_1S/view?usp=sharing', '153', '2022-08-04', 'MISCELLANEOUS MEMOS', 'active'),
(1665, '', 'Gen. Licerio Geronimo Elem School - Capacity Building Training', 'https://drive.google.com/file/d/1EUZTivS9xccA404-pYuz7Fg8ZIJl3j1p/view?usp=sharing', '152', '2022-08-04', 'MISCELLANEOUS MEMOS', 'active'),
(1666, '', 'Special Order - Mr Erwin V. Hombrebueno - Temporarily designated as OIC thereat', 'https://drive.google.com/file/d/1yGt5L-w4akuEFo_qjPhzDxFI6Wsn6skA/view?usp=sharing', '215', '2022-07-29', 'NUMBERED MEMORANDUM', 'active'),
(1667, '', 'F.G. Calderon Integrated HS - Capacity Building Training', 'https://drive.google.com/file/d/1ZJZqyyHR7E2GyFdEvYAQ_1ons48j-nR-/view?usp=sharing', '151', '0000-00-00', 'MISCELLANEOUS MEMOS', 'active'),
(1668, '', 'Laong-Laan Elem School - Capacity Building Program ', 'https://drive.google.com/file/d/1yE1tUJkjsKlOIW2an7xL6afKyh6aI_sd/view?usp=sharing', '149', '2022-07-27', 'MISCELLANEOUS MEMOS', 'active'),
(1669, '', 'Mapesla Calendar of Activities and Other Matters', 'https://drive.google.com/file/d/1dhRN29MMR9AyT6HvR-g1BeRcAR_c35FH/view?usp=sharing', '0', '2022-08-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1670, '', 'Designation of Public Schools District Supervisors in-charge of Science', 'https://drive.google.com/file/d/1NFvuzLvLtrfMvJfXuOnB-9fgwIYG6Oxk/view?usp=sharing', '319', '2022-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1671, '', 'Notice of Private School (BoSYA) Beginning of School Year Assembly 2022', 'https://drive.google.com/file/d/1UCsGgT_6aHXYMmefZAJU6xBLgqGGoC4H/view?usp=sharing', '0', '2022-08-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1672, '', 'Corrigendum to UNNUMBERED MEMORANDUM Memorandum Dated August 3, 2022 [Work Orientation for the Newly Hired of the Year (W.O.R.T.H.Y) Non Teaching Personnel]', 'https://drive.google.com/file/d/1y2pAJrIK9yr9bh7WfoLDI_dO9K4KBuQY/view?usp=sharing', '317', '2022-08-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1673, '', 'Designation of Clinic Teachers and Orientation/Training on School Health and Safety Management in School Health and Clinic Management and Operations', 'https://drive.google.com/file/d/1qfGS5TGDS1K30jz2-73xCkM5UtXkk56K/view?usp=sharing', '313', '2022-08-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1674, '', 'Bagong Diwa Elem. School - GAD Training and Capacity Building', 'https://drive.google.com/file/d/1QccntPFg7tcFTsL2FphyY-iEj_WCmgEL/view?usp=sharing', '156', '2022-08-08', 'MISCELLANEOUS MEMOS', 'active'),
(1675, '', 'Corrigendum to Division Memorandum No. 219 S.2022', 'https://drive.google.com/file/d/1AHL8fz8QMAP7kxayc7m0eDzwGB-b_2BP/view?usp=sharing', '0', '2022-08-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1681, '0', 'Re-establishment of School RCY Council and Assignment of Red Cross Youth Adviser/Coordinator', 'https://drive.google.com/file/d/1xFOAFZH1St69p-Jt_qEqipJTFOSRnIUf/view?usp=sharing', '47', '2022-08-11', 'DIVISION CIRCULARS', 'active'),
(1682, '', 'Talatakdaan para sa 2022 Pagdiriwang sa Buwan ng Wikang Pambansa', 'https://drive.google.com/file/d/1MJg_-9Ytil6Hw92ICSNk1jLTR1Zylj6Z/view?usp=sharing', '332', '2022-08-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1683, '', 'Reconstitution of the Inventory Committees for the Real and Personal Properties of the City of Manila', 'https://drive.google.com/file/d/1cJjjM45TkWHiEEZw69UIc4mqrrybqHQK/view?usp=sharing', '222', '2022-08-10', 'NUMBERED MEMORANDUM', 'active'),
(1685, '', 'Guidelines on Attendance to the Flag Raising Ceremony', 'https://drive.google.com/file/d/1RovAPbDqqh_Jj3gsJrIhUqXgslrjH2S5/view?usp=sharing', '221', '2022-08-10', 'NUMBERED MEMORANDUM', 'active'),
(1686, '0', 'Virtual Friendship Camp', 'https://drive.google.com/file/d/1HnpwZlUO05zSPdk13uT79JTRdaxs9PrD/view?usp=sharing', '46', '2022-08-09', 'DIVISION CIRCULARS', 'active'),
(1687, '', 'District information and Communication Technology for the School Year 2022-2023', 'https://drive.google.com/file/d/1s9n81hW7goavrcxe-YnSZdlvl4Uioj8b/view?usp=sharing', '225', '2022-08-11', 'NUMBERED MEMORANDUM', 'active'),
(1688, '', '2002 Premier Teacher Awards - The Rotary Club Makati Premier District', 'https://drive.google.com/file/d/1XdhhrfBPaOL6TE3yNQW15UDiWJhR5-1I/view?usp=sharing', '329', '2022-08-09', 'UNNUMBERED MEMORANDUM', 'active'),
(1689, '', '49th Division-Wide Virtual ALS Graduation and Completion Ceremony', 'https://drive.google.com/file/d/1XkrSi3aNtwl1KxxRJPDI9lZKUDAfZ6oE/view?usp=sharing', '333', '2022-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1690, '', 'Conduct of School Activities Before the Opening of Classes', 'https://drive.google.com/file/d/1g4gjWa8VHiDsE-5Xw4i_ZqSclwBnXPNV/view?usp=sharing', '226', '2022-08-11', 'NUMBERED MEMORANDUM', 'active'),
(1691, '', 'Reconstitution of the Division Human Resource Merit Promotion and Selection Board (HRMPSB) For Non Teaching Personnel', 'https://drive.google.com/file/d/15X5oE-RWWFlQuuFDl_DVn5ldbfQiKEbA/view?usp=sharing', '331', '2022-08-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1692, '', 'Participants to the Financial Literacy and Development and Increasing Adversity Quotient Training', 'https://drive.google.com/file/d/1--a8R-dwhl6JxszLwn_9siSQm5_QhRhe/view?usp=sharing', '330', '2022-08-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1693, '', 'School Disaster Risk Reduction Management Coordinators Meeting', 'https://drive.google.com/file/d/1-zkP6fXPDrKc0KrPVC2Mi7m3YLNLZ9HI/view?usp=sharing', '0', '2022-08-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1694, '', 'ICT Preparations for the S.Y. 2022-2023 and other matters', 'https://drive.google.com/file/d/1tjS4OoppArpkMvCm4wNGNQphUZEYbcLs/view?usp=sharing', '0', '2022-08-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1695, '', 'Reassignment of Elementary and Secondary Principals', 'https://drive.google.com/file/d/18ITljscuVBdpxrLXOEQ4Er5AULn2OOZ7/view?usp=sharing', '223', '2022-08-11', 'NUMBERED MEMORANDUM', 'active'),
(1696, '', 'Reorganization of the City Solid Waste Management Board', 'https://drive.google.com/file/d/13kfAi73b7m4RK4sB9Lmpx3sCelAZ4N5_/view?usp=sharing', '229', '2022-08-12', 'NUMBERED MEMORANDUM', 'active'),
(1697, '', 'Health Optimizing Physical Education In-Service Training', 'https://drive.google.com/file/d/1voo4LdVZBL-KHcKuIXTz1DmUjYU9qkIs/view?usp=sharing', '341', '2022-08-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1698, '', 'Orientation on the Functions and Duties of a Local Council Executive Board (LCEB) Member', 'https://drive.google.com/file/d/1fqZraqqdKsgzo24iu5_Y0jmttAYz_xyD/view?usp=sharing', '0', '2022-08-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1699, '', 'Seameo Relcs Scholarship Program for Calendar Year 2023', 'https://drive.google.com/file/d/1Ogzpi1aZqp0lfAPwez5xwykJ_PsMLe9E/view?usp=sharing', '338', '2022-08-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1700, '', 'Implementation of Homeroom Guidance Program for SY 2022-2023', 'https://drive.google.com/file/d/1vbf-zHWiC_J1oghPiz1y03ymZA6x8VQq/view?usp=sharing', '337', '2022-08-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1701, '', 'Submission of Accomplished Monitoring and Evaluation Form for School Heads on Teacher Induction Program', 'https://drive.google.com/file/d/1vJR6TXTgcO_YnIqdL_o8aH3YtF6pS3wz/view?usp=sharing', '335', '2022-08-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1702, '', 'No-disruption-of-classes', 'https://drive.google.com/file/d/1y4UmtLklQ3YOJZr2pje2CJlDpMedcy62/view?usp=sharing', '164', '2022-08-15', 'MISCELLANEOUS MEMOS', 'active'),
(1703, '', 'Poster Making and Campaign Video Contest on Food Loss and Waste Reduction', 'https://drive.google.com/file/d/1PV1SWhGhVr-gPtLabQ7CTggawj6k178h/view?usp=sharing', '163', '2022-08-15', 'MISCELLANEOUS MEMOS', 'active'),
(1704, '', 'iLearn. Create. iShare - Digital Capabilities Professional Certificate Program', 'https://drive.google.com/file/d/1EyC0EASX59K6z4Z740GCkIdY_sis6OT_/view?usp=sharing', '161', '2022-08-16', 'MISCELLANEOUS MEMOS', 'active'),
(1705, '', 'Cyber Safe: A Dog s Guide to Internet Security', 'https://drive.google.com/file/d/1tQxUGEyGkvifDPqIOEMyNy5YlACcB__g/view?usp=sharing', '160', '2022-08-09', 'MISCELLANEOUS MEMOS', 'active'),
(1706, '', 'Pediatric Optometrists Role in the DepEd Inclusive Learning Resource Center', 'https://drive.google.com/file/d/182lYFYH1LQTvD5feL5S0zteZFnAVemWV/view?usp=sharing', '159', '2022-08-11', 'MISCELLANEOUS MEMOS', 'active'),
(1707, '', 'Invitation to a Webinar Titled Basic Electrical Safety, Energy Efficiency Tips and Introduction to Sustainable Technology through Solar Power', 'https://drive.google.com/file/d/1xunzzr7Isp0z0NGOGomQ0bVDp6X6inP9/view?usp=sharing', '158', '2022-08-16', 'MISCELLANEOUS MEMOS', 'active'),
(1708, '0', 'Council Officers, Members of the Local Executive Board, Area Presiding Officers and Council Scout Representatives', 'https://drive.google.com/file/d/1gZyuWcX7qqDX5nAhvH-7AaU6-VPrOA-J/view?usp=sharing', '48', '2022-08-16', 'DIVISION CIRCULARS', 'active'),
(1709, '', 'An Order Reconstituting The Market Committee Pursuant to Ordinance No. 8331 Otherwise Known as the 2013 Omnibus Revenue Code of the City of Manila', 'https://drive.google.com/file/d/1E8AEfXmPXxNdtA9cQ-bB_KEJ3arf343r/view?usp=sharing', '228', '2022-08-15', 'NUMBERED MEMORANDUM', 'active'),
(1710, '', 'Corrigendum to Memorandum Dated July 20, 2022 Re: Partnership Learning Sessions', 'https://drive.google.com/file/d/1aH7LeOqFSkEW5Wj8aWnEf6ji01NKlzZs/view?usp=sharing', '336', '2022-08-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1711, '', 'School Based in-Service Training (INSET)', 'https://drive.google.com/file/d/1Kb5LtdkowixHec0Pbixt5Fd9mCLmyVlJ/view?usp=sharing', '162', '2022-08-10', 'MISCELLANEOUS MEMOS', 'active'),
(1713, '', 'Participation in the Training on the Use of School Forms and Student Data Management System', 'https://drive.google.com/file/d/1wgesRbDidf4WRAl_AKWSlJQ1AprKW3dw/view?usp=sharing', '230', '2022-08-12', 'NUMBERED MEMORANDUM', 'active'),
(1716, '', 'Vacancy for the Position of Administrative Officer V at The Division of City Schools Manila', 'https://drive.google.com/file/d/1itO7UPqoGlfdEkfyfPBTpwtZUS9UEGoz/view?usp=sharing', '239', '2022-08-25', 'NUMBERED MEMORANDUM', 'active'),
(1717, '', 'Designation of School Clinic Teachers', 'https://drive.google.com/file/d/1-uqADhKQJ1NqELYy-rzXEbLAcOAKk9aQ/view?usp=sharing', '241', '2022-08-25', 'NUMBERED MEMORANDUM', 'active'),
(1719, '', 'Roles and Responsibilities of Selected School Personnel Relative to the Conduct of the Regional Numeracy Assessment (ANA)', 'https://drive.google.com/file/d/18hpupHUHVEE5Nm7CS-yzWBErUTIa7Q8Q/view?usp=sharing', '242', '2022-08-25', 'NUMBERED MEMORANDUM', 'active'),
(1720, '', 'Reiteration of Deped Order No. 8, S. 2007 Titled - Revised Implementing Guidelines on the Operation of School Canteens in Public Elementary and Secondary Schools', 'https://drive.google.com/file/d/1yy22pXKXe0XE81oyckjO7Ic8JYdTw8ti/view?usp=sharing', '240', '2022-08-25', 'NUMBERED MEMORANDUM', 'active'),
(1721, '', 'Correction of Entries in School Records at the Division Level', 'https://drive.google.com/file/d/1MWfHrp50iVgKpo594PQW9xjgFFd_v54g/view?usp=sharing', '238', '2022-08-23', 'NUMBERED MEMORANDUM', 'active'),
(1722, '', 'Corrigendum to UNNUMBERED MEMORANDUM Memorandum Dated August 3 and 9, 2022 Re - Work Orientation For Newly Hired of the Year (WORTHY) Non Teaching Personnel', 'https://drive.google.com/file/d/1korWfLQBInMiSFSY8iXswlHhQxhkTrxE/view?usp=sharing', '347', '2022-08-25', 'UNNUMBERED MEMORANDUM', 'active'),
(1723, '', 'Conduct of Vocation Awareness Talks', 'https://drive.google.com/file/d/1UTmIdPQdcSSUSth8rNucF-pimA7EcE0h/view?usp=sharing', '167', '2022-08-26', 'DIVISION ADVISORIES', 'active'),
(1724, '', 'Conduct of the Licensure Examination for Teachers', 'https://drive.google.com/file/d/1Oko-12AMKqs0ONJde7oCxNdiJM7Ax3F9/view?usp=sharing', '169', '2022-08-26', 'DIVISION ADVISORIES', 'active'),
(1725, '', 'Philippine Statistics Authority (PSA) Phylsis Mobile Registration', 'https://drive.google.com/file/d/1bZB0_EDvjkHyR2GXyAGriwyme0bitTQP/view?usp=sharing', '168', '2022-08-26', 'DIVISION ADVISORIES', 'active'),
(1726, '', 'Winners in the Different Contests Conducted by the Information and Communication Technology Unit', 'https://drive.google.com/file/d/1PUWiR0vDqfNtXuwWyfcLMAp__UMVe_ds/view?usp=sharing', '156', '2022-06-21', 'NUMBERED MEMORANDUM', 'active'),
(1728, '', 'KADIWA Retail Selling Activity', 'https://drive.google.com/file/d/1MK_XtzLTpxAU0xtD9JPMAzpzSLxT52Ex/view?usp=sharing', '237', '2022-08-19', 'NUMBERED MEMORANDUM', 'active'),
(1730, '', 'Refresher Training on the Utilization of L.I.F.E and Other Matters', 'https://drive.google.com/file/d/15SYgvh5ReDhWyKJu295gOayAEYFiUS2g/view?usp=sharing', '0', '2022-08-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1731, '', 'Designation of Dr. Joie Fe. Ancheta as PSDS In-Charge of Guidance and Counseling', 'https://drive.google.com/file/d/1s5-gaqC4lhOVhpaz-pxYuuwxMZswXGgu/view?usp=sharing', '344', '2022-08-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1732, '', 'Professional Regulation Commission National Capital Region (PRC-NCR)', 'https://drive.google.com/file/d/17HNVtsrAhMscNNZyHomH1E5C4kys7sGs/view?usp=sharing', '166', '2022-08-17', 'MISCELLANEOUS MEMOS', 'active'),
(1733, '', 'NEAP Recognized Professional Development Program and Courses', 'https://drive.google.com/file/d/1wszujKjcch-VSD7ULa45O6YvPXW7fNyE/view?usp=sharing', '108', '2022-08-18', 'DIVISION ADVISORIES', 'active'),
(1734, '', 'Bone Mineral Densitometry (BMD) Screening', 'https://drive.google.com/file/d/1AmrCY-xMLlLg4iFnt9366A-NNvxi0Pm9/view?usp=sharing', '232', '2022-08-15', 'NUMBERED MEMORANDUM', 'active'),
(1735, '', 'Guidelines on the Use of the Division Document Tracking System', 'https://drive.google.com/file/d/1JqAnL2_NVAQuBgSw-8s6FGRjGnFdh78l/view?usp=sharing', '236', '2022-08-18', 'NUMBERED MEMORANDUM', 'active'),
(1736, '', 'Participants to the Regional Orientation on the Amplified Numeracy Assessment (ANA)', 'https://drive.google.com/file/d/1bMk0z7zU69nkKHVWlIZXV3IdUjcbvFrP/view?usp=sharing', '234', '2022-08-17', 'NUMBERED MEMORANDUM', 'active'),
(1737, '', 'Winners of Reel Math 2022 - Siyensikula Category- Division and Regional Levels', 'https://drive.google.com/file/d/1TP0LpRKuADuCFd3sqolPoMnNjTYc0JYp/view?usp=sharing', '340', '2022-08-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1738, '', 'Conduct of the 5th Division Learning Engagement and Management Meeting', 'https://drive.google.com/file/d/1Csyb-yrP-PxPHLy8E6ecPQxaXB6snvcR/view?usp=sharing', '233', '2022-08-18', 'NUMBERED MEMORANDUM', 'active'),
(1739, '', 'Monitoring of Opening of Classes for the School Year 2022-2023', 'https://drive.google.com/file/d/1V3IvcLdAHtplJSWpUUg-blvcQhM_9iXj/view?usp=sharing', '343', '2022-08-18', 'UNNUMBERED MEMORANDUM', 'active'),
(1740, '', 'Seminar-Workshop on Alternative Dispute Resolution (ADR)', 'https://drive.google.com/file/d/1ZDPrVzwZXKUMHRwmtQet5TDY5d4Fo5Uz/view?usp=sharing', '345', '2022-08-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1741, '', 'Philippine Home Economics Association (PHEA) 73rd National Conference and Training', 'https://drive.google.com/file/d/1hE9NdG4CAO1N4qLtTYm3YU7-igbKGO5r/view?usp=sharing', '106', '2022-08-16', 'DIVISION ADVISORIES', 'active'),
(1742, '', 'International Webinar-Workshop for Teaching in the Content Areas', 'https://drive.google.com/file/d/1r3VCPq8jVvP42VqbmywlIU-x1kmFnsxz/view?usp=sharing', '107', '2022-08-18', 'DIVISION ADVISORIES', 'active'),
(1743, '', 'International Virtual Conference and Demo Teaching', 'https://drive.google.com/file/d/1QBvmSb89coNZPwszc-NXRa084jCgzSwO/view?usp=sharing', '110', '2022-08-18', 'DIVISION ADVISORIES', 'active'),
(1772, '', 'Creation of the Local Committee Against Squatting Syndicates and Professional Squatters (LCASSPS)', 'https://drive.google.com/file/d/1yec1zgFMO0ll1dQyw4WJintanZzeN7OG/view?usp=sharing', '245', '2022-08-22', 'NUMBERED MEMORANDUM', 'active'),
(1773, '', 'Reconstitution of the Manila Peace and Order Council, Its Technical Working Group, Special Action Committees and Secretaria', 'http://192.168.88.4:5000/d/s/uzeyswTD56AkHWs8XS0T3Khp1T899iW2/o1ZYt-G4TwaN6qzNJBwk67bsaXBhG8RN-3LrgfFY2tQo', '246', '2022-08-23', 'NUMBERED MEMORANDUM', 'active'),
(1774, '', 'Reconstitution of the City of Manilas Housing Board Pursuant to City Ordinance No. 8185', 'https://drive.google.com/file/d/1BcYS3aBeIv_GTWjL06JhF84ug1V4ejhg/view?usp=sharing', '247', '2022-08-25', 'NUMBERED MEMORANDUM', 'active'),
(1775, '', 'Officer-in-Charge of the Asset Management Division Under Administrative Service-Central', 'https://drive.google.com/file/d/1b6w6-iTYpFDi1nw9J32znQQLC7MfCjsv/view?usp=sharing', '248', '2022-08-30', 'NUMBERED MEMORANDUM', 'active'),
(1776, '', 'Audio-Video Lesson Production for Learners with Special Educational Needs (LSENs) Through the Sign Language Interpreter Video Streamv2.0', 'https://drive.google.com/file/d/1aLEPOtlwGtiVpQM9kfypkXFQIqeDMmQk/view?usp=sharing', '253', '2022-08-04', 'NUMBERED MEMORANDUM', 'active'),
(1777, '', 'Designation of Officers-in-Charge (OIC) - School Principal', 'https://drive.google.com/file/d/1-J9U0tO9zYHyoiPpFAjQQUn_qwLgwSpn/view?usp=sharing', '255', '2022-09-01', 'NUMBERED MEMORANDUM', 'active'),
(1778, '', 'Addendum to UNNUMBERED MEMORANDUM Memorandum Dated June 27, 2022 (Customer Experience Program Training Under ALS-EST for ALS Learners)', 'https://drive.google.com/file/d/1wSWd3ayid1yWeBKlqB6m3Ols3NhmJVYV/view?usp=sharing', '353', '2022-09-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1779, '', 'Postponement of the Work Orientation for the Newly Hired of the YEAR (WORTHY) Non-Teaching Personnel', 'https://drive.google.com/file/d/1R8RcHiBkpwyzueOKZXqkwNeypChI1i06/view?usp=sharing', '354', '2022-09-01', 'UNNUMBERED MEMORANDUM', 'active'),
(1780, '0', 'Beata Elementary School - Capacity Building Program for Teachers', 'https://drive.google.com/file/d/1KfE7-rVs5my70ahNP-Zu7GEnqep-9U8E/view?usp=sharing', '50', '2022-08-30', 'DIVISION CIRCULARS', 'active'),
(1781, '0', 'Arnold M. Pangan - Indorsement Letter - Deployed in Public Schools from August 2022 - December2022', 'https://drive.google.com/file/d/1bHxZ1DW-k4gTsVqRezZ7Ic2nJuvr0eQp/view?usp=sharing', '49', '2022-08-30', 'DIVISION CIRCULARS', 'active'),
(1782, '', 'Corrigendum to Division Memorandum No. 235 S. 2022 [Corrigendum to Division Memorandum No. 224 s. 2022 (Schedule of Activities on the Screening of Administrative Officer II, Project Development Office', 'https://drive.google.com/file/d/1mRZrOVRmCK728PJ3iUEIG_zd1fMT69SF/view?usp=sharing', '243', '2022-08-30', 'NUMBERED MEMORANDUM', 'active'),
(1783, '', 'Submission of Report on School Status and Preparations During the Transition Period for SY 2022-2023', 'https://drive.google.com/file/d/1rlZSVXunIVJ0r7gU2gimKA0klA9suFhX/view?usp=sharing', '250', '2022-08-30', 'NUMBERED MEMORANDUM', 'active'),
(1784, '', 'Reassignment of the Alternative Learning System Education Program Specialist II', 'https://drive.google.com/file/d/1hVRPL6v63GsMwO3ta_u0RlJeWO3xKSVB/view?usp=sharing', '349', '2022-08-30', 'UNNUMBERED MEMORANDUM', 'active'),
(1785, '', 'Convergence Theory of Learning Workshop', 'https://drive.google.com/file/d/1uavkQwM9WBMBQZVXgCEHT2BwdbaX23FB/view?usp=sharing', '350', '2022-08-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1793, '', 'Five-Day Online Journalism Skills Training and Workshop For School Paper Advisers and Campus Journalists in the Elementary and Secondary Levels', 'https://drive.google.com/file/d/191SbJjkJj8Rv7CynaJ3VFiXZ9r7NXMJ5/view?usp=sharing', '258', '2022-09-05', 'NUMBERED MEMORANDUM', 'active'),
(1794, '', 'Application for Teacher I Position in the Division of City Schools, Manila School Year 2022-2023', 'https://drive.google.com/file/d/1W8unyRE7wTQI5dU2X-9lpK0641mchqJU/view?usp=sharing', '259', '2022-09-05', 'NUMBERED MEMORANDUM', 'active'),
(1795, '', 'Establishment of the City of Manilas Compliance for the Licensing and Accreditation of Primary Care Facilities and Ancillary Services as Set Forth Under Administrative Order No. 2022-0047 Issued by th', 'https://drive.google.com/file/d/16RSlw64IWN8tkv6HLB5g6juSj0oeqFte/view?usp=sharing', '252', '2022-08-25', 'NUMBERED MEMORANDUM', 'active'),
(1796, '', 'Planning Meeting for the Creation of the Library Manual and Other Matters', 'https://drive.google.com/file/d/1piyJaYbDpHMZuQFFRCD5Jmhea9pqXcZf/view?usp=sharing', '352', '2022-09-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1797, '', 'Interim Guidelines of the Youth Commission on Elections and Appointments (Youth Comea) and Conduct of Supreme Pupil/Student Government (SPG/SSG) Elections For School Year 2022-2023', 'https://drive.google.com/file/d/19E1aLevfZSuQsQhPKNYy1n2b8y7QFLop/view?usp=sharing', '257', '2022-09-02', 'NUMBERED MEMORANDUM', 'active'),
(1798, '0', 'Postponement of Technology Empowered Activities for Mathematics', 'https://drive.google.com/file/d/1hfTQCrWaYvTXOdLudSGGV8Ps8MNDVTV1/view?usp=sharing', '51', '2022-09-05', 'DIVISION CIRCULARS', 'active'),
(1799, '0', 'Request from Youth of Mary and Christ, Marikina City to Allow and Continue their Catechesis Evangelization and Organize Online Activities and Contests in the Identified Schools', 'https://drive.google.com/file/d/1oqQYxSmMBgc9Rkcl2dZDTmNDg5IbRxjU/view?usp=sharing', '52', '2022-09-05', 'DIVISION CIRCULARS', 'active'),
(1800, '', 'Application for Teacher I Position in the Division of City Schools, Manila School Year 2022-2023', 'https://drive.google.com/file/d/1ACJL4Ccmukj2QmQ1ArzYUnIitpUHrdjz/view?usp=sharing', '262', '2022-09-06', 'NUMBERED MEMORANDUM', 'active'),
(1801, '', 'No Change of Uniform for Pupils and/or Students of Manila', 'https://drive.google.com/file/d/1V1BXQ5AFp83_BVwiBDC6PaQEC9-16Ijb/view?usp=sharing', '261', '2022-09-06', 'NUMBERED MEMORANDUM', 'active'),
(1803, '', 'Submission of Quarterly Gender and Development (GAD) Accomplishment Reports', 'https://drive.google.com/file/d/1Pmii_wm_KmO_pps82nmC95F3uwJXnZgj/view?usp=sharing', '254', '2022-09-06', 'NUMBERED MEMORANDUM', 'active'),
(1804, '', 'Request for the Presentation of their Official Films in Relation to Ending Violence against Women', 'https://drive.google.com/file/d/13dQCWKfmrHvmyfFXNmpLelAzTs1mNbhi/view?usp=sharing', '116', '2022-09-01', 'DIVISION ADVISORIES', 'active'),
(1805, '', 'Certificate Course on Family Life Education', 'https://drive.google.com/file/d/1nHGp06kqFvIFgjsSlC_FlPlxfLi6Qauu/view?usp=sharing', '115', '2022-08-31', 'DIVISION ADVISORIES', 'active'),
(1806, '', 'Conduct of Orientation and Preliminary Evaluation of the Elementary and Junior High School Teacher II Candidates ', 'https://drive.google.com/file/d/1vw5-CViAFWZfixMBifP42lj6cTRUEd7D/view?usp=sharing', '260', '2022-09-06', 'NUMBERED MEMORANDUM', 'active'),
(1807, '', 'Rescheduling of Seminar Workshop on Alternative Dispute Resolution', 'https://drive.google.com/file/d/1kfoKzWVEZGyB7zEdUCh3W4rIuvNrEbUG/view?usp=sharing', '355', '2022-09-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1808, '0', 'Edwin H. Santos - Requesting permission to attend the 2022 Clustered Assemblies on Responsible Public Sector Unionism of the Department of Education National Employees Union', 'https://drive.google.com/file/d/1lmF-T8afyd4w7NEpqJhiGl49gkQ4MQ6I/view?usp=sharing', '348', '2022-08-26', 'DIVISION CIRCULARS', 'active'),
(1809, '', 'Conduct of Elections of the Parents-Teachers Association (PTA) At the School and Division Level', 'https://drive.google.com/file/d/1WsBYmWHzzVLnXiyS24rGP_rUCp6vftaO/view?usp=sharing', '264', '2022-09-07', 'NUMBERED MEMORANDUM', 'active'),
(1811, '', 'Corrigendum to UNNUMBERED MEMORANDUM Memorandum Dated August 10, 2022 (333-2022) Entitled 4th Division-Wide Virtual ALS Graduation and Completion Ceremony', 'https://drive.google.com/file/d/1NJ17BGjL6UWa2yqOfGBI6dkpwhchZjTb/view?usp=sharing', '361', '2022-09-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1812, '', 'Adoption of a Relocation and Displacement Plan In Relation to Executive Order No. 15 Series of 2022, Amending Sections 2 and 3 Thereof', 'https://drive.google.com/file/d/13lhk1zQoqm6ooSJlgdjQkiiY0OxEjftu/view?usp=sharing', '266', '2022-09-07', 'NUMBERED MEMORANDUM', 'active'),
(1813, '', 'Establishment of the Local Economic and Investment Promotion Office', 'https://drive.google.com/file/d/1Eg18t4ZhCCC0yAdJQ8p8wnsw8aRyc0HO/view?usp=sharing', '267', '2022-09-07', 'NUMBERED MEMORANDUM', 'active'),
(1814, '', 'Creation of the City Revenue Monitoring Committee', 'https://drive.google.com/file/d/1JuEmL7DH-ExQ84PTPuk88IW-8Ey5CZ93/view?usp=sharing', '268', '2022-09-07', 'NUMBERED MEMORANDUM', 'active'),
(1815, '', 'Special Order - Mr. Charlie DJ Duñgo', 'https://drive.google.com/file/d/14LGEWIoKcZu-A0nZDmR6KV4R3xxb7u_a/view?usp=sharing', '269', '2022-09-07', 'NUMBERED MEMORANDUM', 'active'),
(1816, '', 'Corrigendum to Division Memorandum No. 136 s. 2021 (Policy on Administrative Aide I (Utility) Personnels Management, Transfer and Restructuring)', 'https://drive.google.com/file/d/15-PNVibco7Kerzcv0J6nQPpGRKGdxxdn/view?usp=sharing', '362', '2022-09-08', 'UNNUMBERED MEMORANDUM', 'active'),
(1817, '', 'Conduct of Virtual Career Talk', 'https://drive.google.com/file/d/1-WtWWWbKn7wktnq-j1xm6jswSZB6PFah/view?usp=sharing', '118', '2022-09-08', 'DIVISION ADVISORIES', 'active'),
(1818, '', 'Institutionalizing Technical Assistance and Other Mechanisms on the Implementation and Utilization of the Basic Classroom Information System', 'https://drive.google.com/file/d/1Z1UXjhrzb0hQBLueFhJzmpSMTJEXnMng/view?usp=sharing', '263', '2022-09-07', 'NUMBERED MEMORANDUM', 'active'),
(1819, '', 'Administration of the Division Rapid Literacy Assessment', 'https://drive.google.com/file/d/1ZLsxnVgUIh1x38_CRILXSkhv_q-d2xfK/view?usp=sharing', '270', '2022-09-08', 'NUMBERED MEMORANDUM', 'active'),
(1820, '', 'Integrated Monitoring (Phase 3)', 'https://drive.google.com/file/d/1uxD1YcNCllg4hX3aEQhdoGGZLFnK_wIJ/view?usp=sharing', '272', '2022-09-08', 'NUMBERED MEMORANDUM', 'active'),
(1821, '', 'Public School Teachers Proportional Vacation Pay for School Year 2021-2022', 'https://drive.google.com/file/d/1qbzYi81X4_CWTDyyMXd8mLDHJq54P1sv/view?usp=sharing', '265', '2022-09-09', 'NUMBERED MEMORANDUM', 'active'),
(1822, '', 'Free Online Training Webinar for Teachers and Parents', 'https://drive.google.com/file/d/11Z2dty0QNA9BIrG11qxH_3Tfty1rIv3N/view?usp=sharing', '117', '2022-09-07', 'DIVISION ADVISORIES', 'active'),
(1823, '', 'Online Orientation on Division Rapid Assessment on Literacy and Amplified Numeracy Assessment', 'https://drive.google.com/file/d/1In1abRVcJXAdqWCufs3b5fMUfsC7ffrN/view?usp=sharing', '358', '2022-09-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1824, '', 'Training on Behavior Management Interventions For Special Education Teachers', 'https://drive.google.com/file/d/1-bNOoV1WpmjnVMuaWP_UF-o8yc3iWB7R/view?usp=sharing', '363', '2022-09-09', 'NUMBERED MEMORANDUM', 'active'),
(1825, '0', 'Girls Scout of the Philippines - Annual Sustaining Membership Fund Drive 2022', 'https://drive.google.com/file/d/1w5s3TiB7NjvFjq-LfsYi24f63pE58JXI/view?usp=sharing', '54', '2022-09-12', 'DIVISION CIRCULARS', 'active'),
(1826, '', 'Delivery of Supplementary Activity Worksheets from Rebisco Biscuit Corporation', 'https://drive.google.com/file/d/1zqFcbxu4KPsqUzgLbyJe3tlVXV-DI9E4/view?usp=sharing', '364', '2022-09-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1827, '', 'Reiteration of CSCs Annual Capacity Building VIII of the Council for the Restoration of Filipino Values', 'https://drive.google.com/file/d/1SMLIsGdmra4484lxxojJBHIK3tBPhNqa/view?usp=sharing', '271', '2022-09-12', 'NUMBERED MEMORANDUM', 'active'),
(1828, '', 'Conduct of Orientation and Preliminary Evaluation for the Elementary Teacher II and Teacher III Candidates', 'https://drive.google.com/file/d/1zZevwiuoWLjdN_G6BziMktSPAmRXn1e5/view?usp=sharing', '274', '2022-09-13', 'NUMBERED MEMORANDUM', 'active'),
(1829, '09142022', 'Preparation and Submission of Documents for the Payment of World Teachers Day Incentive Benefit for CY 2022 ', 'https://gofile.me/71xfF/BVajt4Swq', '277', '2022-09-14', 'NUMBERED MEMORANDUM', 'active'),
(1830, '09142022', 'Grant of One (1) Day Vacation Service Credit or Compensatory Time-off (CTO) to the Participants in the Division Seminar-workshop on Basic Records Management', 'https://gofile.me/71xfF/fNeYBgsBL', '359', '2022-09-05', 'UNNUMBERED MEMORANDUM', 'active'),
(1831, '09152022', 'Division-Wide Training Series on Integrated Learning in Early Childhood: Focus on Literacy and Numeracy', 'https://gofile.me/71xfF/mF4wEAxX6', '276', '2022-09-15', 'NUMBERED MEMORANDUM', 'active'),
(1832, '09152022', 'Request for Travel Authority', 'https://gofile.me/71xfF/hUAckgHfw', '273', '2022-09-09', 'NUMBERED MEMORANDUM', 'active'),
(1833, '09152022', 'Development and Utilization of Integrative Supplementary Instructional Materials and Suggested Enrichment Activities for the Special Interest Program of the Gifted and Talented Grade 4 Learners', 'https://gofile.me/71xfF/IFj7YEtTO', '275', '2022-09-15', 'NUMBERED MEMORANDUM', 'active'),
(1834, '', 'Orientation of Designated Focal Persons who will Monitor The work performance of School-Based Administrative Aide I Personnel', 'https://drive.google.com/file/d/1DQLjrGU1gHTofA9WIdiuIsdlw_iIitrb/view?usp=sharing', '263', '2022-06-23', 'UNNUMBERED MEMORANDUM', 'active'),
(1835, '09152022', 'Conduct of the 4th National Competition on Storybook Writing', 'https://gofile.me/71xfF/qXJO7c0D8', '256', '2022-09-15', 'NUMBERED MEMORANDUM', 'active'),
(1836, '0', 'INVITATION TO A ONE-DAY LEADERSHIP AND MENTAL HEALTH AND WELL-BEING WORKSHOP FOR ELEMENTARY STUDENT LEADERS IN THE CITY OF MANILA', 'https://gofile.me/71xfF/M8czxuBcC', '55', '2022-09-16', 'DIVISION CIRCULARS', 'active'),
(1837, '0', 'WEBINAR ON 2023 EDUCATION BUDGET', 'https://gofile.me/71xfF/VNQ1peW3A', '56', '2022-09-16', 'DIVISION CIRCULARS', 'active'),
(1838, '09202022', 'SY 2022-2023 SCHEDULE OF PROFESSIONAL MEETINGS OF EDUCATION PROGRAM SUPERVISORS AND PSDS IN-CHARGE OF LEARNING AREAS WITH DEPARTMENT HEADS', 'https://gofile.me/71xfF/0KccGDWnS', '283', '2022-09-16', 'NUMBERED MEMORANDUM', 'active'),
(1839, '09202022', 'ICOSTEM-PENANG 2022 INNOVATION COMPETITION', 'https://gofile.me/71xfF/bfm1xgRFy', '284', '2022-09-16', 'NUMBERED MEMORANDUM', 'active'),
(1840, '09202022', 'Drafting of Library Manual for Librarians and library-in Charge and Other Matters', 'https://gofile.me/71xfF/5tolWdwqv', '357', '2022-09-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1841, '09202022', 'Revisiting DepEd Order No. 13, S. 2017 re: Policy and Guidelines on the Healthy Food and Beverage Choices in Schools and in DepEd Offices and DepEd Order No. 8, s 2007 Re: Revised Implementing Guideli', 'https://gofile.me/71xfF/qb5Est9pe', '365', '2022-09-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1842, '09202022', 'Addendum to Division Memorandum No. 270, s. 2022 (Division Rapid Literacy Assessment)', 'https://gofile.me/71xfF/XikA6SXcq', '367', '2022-09-16', 'UNNUMBERED MEMORANDUM', 'active'),
(1843, '09202022', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 363 S. 2022', 'https://gofile.me/71xfF/6sOwknIHU', '0', '2022-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1844, '09202022', 'GUIDELINES IN THE ADMINISTRATIVE OF RAPID LITERACY ASSESSMENT AND ACADEMIC RESILIENCY-SOCIAL AND EMOTION LEARNING SCALE', 'https://gofile.me/71xfF/S5saHEF6a', '285', '2022-09-20', 'NUMBERED MEMORANDUM', 'active'),
(1845, '09202022', 'Submission of Updated Position Description Form DBM-CSC No. 1 (Revised Version No. 1, s. 2017)', 'https://gofile.me/71xfF/GFi6o3W1e', '278', '2022-09-05', 'NUMBERED MEMORANDUM', 'active'),
(1846, '09202022', 'CONDUCT OF THE DIVISION FEDERATION ELECTION OF THE SUPREME PUPIL GOVERNMENT (SPG) AND SUPREME STUDENT GOVERNMENT (SSG) FOR S.Y. 2022-2023', 'https://gofile.me/71xfF/myhuNF052', '287', '2022-09-20', 'NUMBERED MEMORANDUM', 'active'),
(1847, '09202022', 'KURIHENDUM PARA SA MEMORANDUM NA MAY PETSANG AGOSTO 11, 2022', 'https://gofile.me/71xfF/SRug3yO06', '0', '2022-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(1848, '09212022', 'POLICY REGARDING THE OBSERVANCE OF OFFICE HOURS AND ATTENDANCE', 'https://gofile.me/71xfF/hjX2vWIjs', '288', '2022-09-21', 'NUMBERED MEMORANDUM', 'active'),
(1849, '', 'RECONSTITUTION OF THE COMMITTEE ON PATRIMONIAL PROPERTIES', 'https://gofile.me/71xfF/mNXzywNnJ', '231', '2022-08-15', 'NUMBERED MEMORANDUM', 'active'),
(1850, '09212022', 'CONDUCT OF COORDINATION MEETING FOR SECONDARY SCHOOL HEADS AND FINANCIAL STAFFS', 'https://gofile.me/71xfF/mdCvl4x17', '291', '2022-09-21', 'NUMBERED MEMORANDUM', 'active'),
(1851, '09212022', 'JUNIOR CHAMBER INTERNATIONAL MANILA (JCI)YOUTH LEADERSHIP EXCELLENCE AWARD (YLEA) AWARDING CEREMONY', 'https://gofile.me/71xfF/3c2SfF6Km', '286', '2022-09-21', 'NUMBERED MEMORANDUM', 'active'),
(1852, '09222022', 'SPECIAL ORDER - TEMPORARILY ASSIGNED TO THE CITY SECURITY FORCE', 'https://gofile.me/71xfF/1USEJsSN9', '281', '2022-09-15', 'NUMBERED MEMORANDUM', 'active'),
(1853, '09222022', 'CONDUCT OF THE WORK ORIENTATION FOR THE NEWLY HIRED OF THE YEAR (W.O.R.T.H.Y) NON TEACHING PERSONNEL ON SEPTEMBER 29, 2022', 'https://gofile.me/71xfF/1tVAnhEZu', '374', '2022-09-22', 'UNNUMBERED MEMORANDUM', 'active'),
(1854, '09222022', 'APPLICATION FOR TEACHER I POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA  SCHOOL YEAR 2022-2023  SENIOR HIGH SCHOOL LEVEL', 'https://gofile.me/71xfF/NFVQKtTi3', '292', '2022-09-22', 'NUMBERED MEMORANDUM', 'active'),
(1855, '09232022', 'OPENING OF FIELD ENUMERATORS POSITIONS UNDER JOB ORDER FOR THE ALS COMMUNITY LEARNING CENTERS INVENTORY', 'https://gofile.me/71xfF/IXbzOqOZL', '289', '2022-09-22', 'NUMBERED MEMORANDUM', 'active'),
(1856, '09232022', 'VACANCIES FOR NONTEACHING PERSONNELAT THE DIVISION OF CITY SCHOOLS, MANILA', 'https://gofile.me/71xfF/1zZTAhB3E', '293', '2022-09-23', 'NUMBERED MEMORANDUM', 'active'),
(1857, '09272022', 'Submission of Members Request Form (MRF)  to the GSIS', 'https://gofile.me/71xfF/g4C36yFI8', '290', '2022-09-07', 'NUMBERED MEMORANDUM', 'active'),
(1858, '09272022', 'EXEMPLARY LEAGUE OF INNOVATIVE TEACHER-EDUCATORS (ELITE) BATCH LAWIN PRACTICUM', 'https://gofile.me/71xfF/lrphfUJmq', '299', '2022-09-27', 'NUMBERED MEMORANDUM', 'active'),
(1859, '09152022', 'CORRIGENDUM TO DIVISIONUNNUMBERED MEMORANDUM DATED JULY 5, 2022', 'https://gofile.me/71xfF/fKZk6Jm86', '0', '2022-09-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1861, '0', 'REQUEST FOR SUPPORT TO THE LIGHT UP BLUE FOR MENTAL HEALTH CAMPAIGN', 'https://gofile.me/71xfF/0WFIgy8zg', '60', '2022-09-28', 'DIVISION CIRCULARS', 'active'),
(1862, '09282022', 'EXEMPLARY LEAGUE OF INNOVATIVE TEACHER-EDUCATORS(ELITE) BATCH LAWIN SERVICE PLATFORM PRESENTATION', 'https://gofile.me/71xfF/OUUIsnZzQ', '298', '2022-09-27', 'NUMBERED MEMORANDUM', 'active'),
(1863, '09282022', 'REITERATION OF THE GUIDELINES ON SPECIAL CURRICULAR PROGRAMS', 'https://gofile.me/71xfF/OI0YF5hlV', '302', '2022-09-28', 'NUMBERED MEMORANDUM', 'active'),
(1864, '09282022', 'CORRIGENDUM  TO  DIVISION MEMORANDUMNO.  276,  s. 2022', 'https://gofile.me/71xfF/g1Cpkz9J5', '375', '2022-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(1865, '0', 'INVITATION TO A ONE - DAY LEADERSHIP ORIENTATION AND MENTAL HEALTH AND WELL-BEING WORKSHOP FOR HIGH SCHOOL STUDENT LEADERS IN THE CITY OF MANILA', 'https://gofile.me/71xfF/JKAnuCmCJ', '63', '2022-09-28', 'DIVISION CIRCULARS', 'active'),
(1866, '09282022', 'BEBRAS CHALLENGE PHILIPPINES', 'https://gofile.me/71xfF/ceB8TSwxe', '120', '2022-09-19', 'DIVISION ADVISORIES', 'active'),
(1867, '09282022', 'NATIONAL SEARCH FOR MOST OUTSTANDING EDUCATORS OF THE PHILIPPINES', 'https://gofile.me/71xfF/ERrtF0vMq', '121', '2022-09-19', 'DIVISION ADVISORIES', 'active'),
(1868, '09292022', '2022 WORLD TEACHERS’ DAY CELEBRATION', 'https://gofile.me/71xfF/CLwkKxu3q', '303', '2022-09-28', 'NUMBERED MEMORANDUM', 'active'),
(1869, '0', 'PLAI ANNUAL NATIONAL CONGRESS', 'https://gofile.me/71xfF/cXdM3mv2G', '61', '2022-09-28', 'DIVISION CIRCULARS', 'active'),
(1870, '0', 'RED CROSS YOUTH MOUTH', 'https://gofile.me/71xfF/Lhh3F9zlU', '62', '2022-09-28', 'DIVISION CIRCULARS', 'active'),
(1871, '09292022', 'RECONSTITUTION OF THE HINGA MAYNILA TASK FORCE FOR BETTER AIR QUALITY MANAGEMENT IN THE CITY OF MANILA', 'https://gofile.me/71xfF/80VOiFook', '296', '2022-09-15', 'NUMBERED MEMORANDUM', 'active'),
(1872, '09292022', 'RECONSTITUTION OF THE MARKET COMMITTEE', 'https://gofile.me/71xfF/LxDwT03nK', '295', '2022-09-15', 'NUMBERED MEMORANDUM', 'active'),
(1873, '09292022', 'RECONSTITUTION OF THE MANILA BAY TASK FORCE FOR CLEAN-UP PRESERVATION, REHABILITATION , AND FOR OTHER PURPOSES', 'https://gofile.me/71xfF/8I64XLiMb', '294', '2022-09-15', 'NUMBERED MEMORANDUM', 'active'),
(1874, '09292022', 'PHILGEPS TRAINING SCHEDULE FOR THE MONTH OF OCTOBER 2022', 'https://gofile.me/71xfF/E3uUl9UC3', '123', '2022-09-21', 'DIVISION ADVISORIES', 'active'),
(1875, '09292022', 'NEW    SCHEDULE    AND    VENUE    FOR    THE    DIVISION FEDERATIONSUPREME   STUDENT   GOVERNMENT   (SSG) ELECTIONS  FORSCHOOL  YEAR  2022-2023', 'https://gofile.me/71xfF/KhWVKmRM6', '379', '2022-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(1876, '09292022', 'CREATION OF THE COMMITTEE ON ANTI-RED TAPE', 'https://gofile.me/71xfF/1uMVcal6j', '300', '2022-09-22', 'NUMBERED MEMORANDUM', 'active'),
(1877, '09292022', '2022 CHRISTMAS CANTATA', 'https://gofile.me/71xfF/H771Z9OH4', '125', '2022-09-22', 'DIVISION ADVISORIES', 'active'),
(1878, '09302022', 'INTERNATIONAL VEDIC MATHS OLYMPIAD 2022', 'http://192.168.88.4:5000/d/s/uzed0RIzkDc0KhTmf9870XAI6NjsPsia/jO6jGLkehBqIJBbEROPAltZwdAhmsqZR-FLHAbV4OtQo', '124', '2022-09-20', 'DIVISION ADVISORIES', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(1879, '09302022', ' DESIGNATION OF SCHOOL TESTING COORDINATOR AND ASSISTANT SCHOOL TESTING COORDINATOR FOR SCHOOL YEAR 2022-2023', 'http://192.168.88.4:5000/d/s/uzez97SpbEjYewymPZgWr1iSCddBL7Cd/Z5KDNov_1-AkNL60vgX5ZHRAc5rfoyIr-b79AFqoPtQo', '305', '2022-09-30', 'NUMBERED MEMORANDUM', 'active'),
(1881, '10032022', 'RESULTS OF THE SECOND ONLINE DIVISION SCHOOLS PRESS CONFERENCE –SECONDARY LEVEL', 'http://depedmanila.net:5000/d/s/uzez7DWV08HUP486Anqeyar1IxxGZSNz/Ggfw5u8GgH-t6PqtktbE0Mg4zL0ubjpu-072ABi89ugo', '307', '2022-09-30', 'NUMBERED MEMORANDUM', 'active'),
(1882, '10032022', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FORNONTEACHINGPERSONNEL', 'http://depedmanila.net:5000/d/s/uzez7CxIjyxokkl3exxNL08k3bunMqRv/edqajQi7zMrEl2VzqSPthy14CUr2kVLl-2r2gEDw9ugo', '308', '2022-09-30', 'NUMBERED MEMORANDUM', 'active'),
(1883, '10032022', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FORTEACHING-RELATED PERSONNEL', 'http://depedmanila.net:5000/d/s/uzez7DwthGW8tY33cXFwoTNzmYZlJbsY/lyTYGQvlPW1RLwOzlanIuUfpt9oGHUp7-4b1AL0g9ugo', '309', '2022-09-30', 'NUMBERED MEMORANDUM', 'active'),
(1884, '10032022', 'JOINT-TASK FORCE FOR THE OPLAN SAGIP KALINGA NG INA NG MAYNILA', 'http://depedmanila.net:5000/d/s/uzez7C6VLkSZvjzCdr9sC5uvj6BAyT4n/oAbXPXlmL6KRTB1VvmulKY-fZk28aRRW-zL2AOh49ugo', '304', '2022-09-28', 'NUMBERED MEMORANDUM', 'active'),
(1885, '310100322', 'POLICIES ON SUPPLEMENTARY MATERIALS', 'http://depedmanila.net:5000/d/s/uzez7ENIOOpfVaswp10cbMunhJW9gOor/0atmWmGsmcOh-pEEWHnab3kJ04aKwvUu-vb0gbus8ugo', '310', '2022-10-04', 'NUMBERED MEMORANDUM', 'active'),
(1886, '313100522', 'REASSIGNMENT OF ELEMENTARY SCHOOL PRINCIPALS', 'http://depedmanila.net:5000/d/s/uzez7EetWUz00vWiHvh0rXbWmFEPHJ9c/WKatKDejBAtnPaWacK25ASjUfbI2B6Nq-t72gVOM8ugo', '313', '2022-10-04', 'NUMBERED MEMORANDUM', 'active'),
(1887, '10052022', 'Enclosed Copy of Resolution No. 144, Series of 2022', 'http://depedmanila.net:5000/d/s/uzez7Ge5R0rDxENuPGtF4ENd9zS5xz7T/7yIJ42Z4YQXBi2954wmmImIoa_DH_ydA-8b3gx149ugo', '306', '2022-09-27', 'NUMBERED MEMORANDUM', 'active'),
(1888, '311100522', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING PERSONNEL –ELEMENTARY LEVEL', 'http://depedmanila.net:5000/d/s/uzez7H4U88V0P3ltIn6G4e68yOYOuOwB/Yrk8cBX6R25biNwTglJvfdUhgTOlvAht-O72g6Hg8ugo', '311', '2022-10-05', 'NUMBERED MEMORANDUM', 'active'),
(1889, '312100522', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING PERSONNEL –SECONDARYLEVEL', 'http://depedmanila.net:5000/d/s/uzez7HM5GEGenb05470GbJwbIBiJxlqZ/foGcF8Rl4mQliEnGI1O8kXk3Rph1XGFv-NL1gymU8ugo', '312', '2022-10-05', 'NUMBERED MEMORANDUM', 'active'),
(1890, '317100522', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENTOF YEAR END BONUS AND CASH GIFTFOR FY 2022', 'http://depedmanila.net:5000/d/s/uzez7NJezixFGhijNpoZv2XdWa9iJlOA/hiZuAE7wcnBlTsYfNJVODwhogIdqka-D-Lr2gP148ugo', '317', '2022-10-05', 'NUMBERED MEMORANDUM', 'active'),
(1892, '318100522', '2ND KUMUSTAHAN SA AKLATAN (ACT OF SHARING KNOWLEDGE FOR LEARNERS ADVANTAGE AND TECHNICAL ASSISTANCE NEEDED)', 'http://depedmanila.net:5000/d/s/uzez7PA3LEHclxzcZ7LB7AowL60rZRVB/8_adRGDFESvCtx8A7ItEWqMk0WflNaFH-IL1gsk88ugo', '318', '2022-10-05', 'NUMBERED MEMORANDUM', 'active'),
(1895, '320100522', 'SERIES OF LEARNING ACTION CELL (LAC) SESSIONS: DEVELOPMENT OF THE IPCRF FOR EDUCATION PROGRAM SPECIALISTS II AND DISTRICT ALS COORDINATORS (DALSCS)', 'http://depedmanila.net:5000/d/s/uzez8BH3tGiQ0ru34v2auyTdWRSiNzj3/jSG63M_T3Jtw1uTiXg_ATezXuUqviiTy-Gb3g_UQ8ugo', '320', '2022-10-06', 'NUMBERED MEMORANDUM', 'active'),
(1896, '297100522', 'TRAINING WORKSHOP ON THE CREATION OF VIDEO LESSONS FOR ALTERNATIVE LEARNING SYSTEM TEACHERS', 'http://depedmanila.net:5000/d/s/uzez7G4tAqEVZLxVXvVK3GuuQLOZLv9S/W-CW6MnAM5s3_vmZQforfY-JGXAgYNsm-Eb3Ajjo8ugo', '297', '2022-10-05', 'NUMBERED MEMORANDUM', 'active'),
(1897, '66100622', 'GSP and Brownies Unlimited Partnership Campaign', 'http://depedmanila.net:5000/d/s/uzez7Ku4O4LBVJlKJumXMxqRk79NcyHm/Dewn9QXkZ0eJ5RObP8ibBYQefb7M5VLO-y7zAAcs7ugo', '66', '2022-10-06', 'DIVISION CIRCULARS', 'active'),
(1898, '319100522', 'MONITORING OF SCHOOL LIBRARIES AND LIBRARY HUBS', 'http://depedmanila.net:5000/d/s/uzez8AQGV0NrcgJkjzIWhxydkA41eaOv/Ld_uq6lPweHTuMZg-axwUNyXvFxs2JZC-Cb0gwy88ugo', '319', '2022-10-06', 'NUMBERED MEMORANDUM', 'active'),
(1900, '378100522', 'CORRIGENDUM TO MEMORANDUM DATED JULY 20, 2022', 'http://depedmanila.net:5000/d/s/uzez8AqfC8e1dTdVfOlioNna7mWRGHdU/hvxDiKZOpIL1Jg2C0fXeHKXU4uqMOoMo-A72AEyY8ugo', '378', '2022-10-06', 'UNNUMBERED MEMORANDUM', 'active'),
(1901, '10072022', 'RECONSTITUTION OF THE MANILA COUNCIL FOR THE PROTECTION OF CHILDREN', 'http://depedmanila.net:5000/d/s/uzez7MSrbUR7Hlym1IF3FxdbgOOrAPRI/Z7fZxAG6J6uJbj5Ew5uvNR5pPXvGMWug-_b2AypY9ugo', '314', '2022-09-29', 'NUMBERED MEMORANDUM', 'active'),
(1902, '10072022', 'REORGANIZATION OF THE COMMITTEE FOR INSPECTION OF ALL DORMITORIES IN THE CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzez7Nk3gqWgF103cDQivoRfmE7YzhNE/gAh7i16S9H10JJp_w3fOTC7IocDNHN2a-Bb4gU6s9ugo', '315', '2022-09-29', 'NUMBERED MEMORANDUM', 'active'),
(1903, '10072022', 'RECONSTITUTION OF THE JOIN VENTURE SELECTION COMMITTEE (JV-SC) AND THE JOINT VENTURE REGULATORY AUTHORITY (JV-RA) PURSUANT TO MANILA COUNCIL ORDINANCE NO. 8346 OTHERWISE KNOWN AS THE MANILA JV ORDINAN', 'http://depedmanila.net:5000/d/s/uzez7O1eow0QpUW06GyZeNBDsvUzAMOs/f-qdGv6utJn7YwPD8cm8kya06ROj1t6l-DL5gSbo9ugo', '316', '2022-09-29', 'NUMBERED MEMORANDUM', 'active'),
(1904, '327100722', 'CALL FOR PARTICIPATION - SPECIAL PROGRAM IN INFORMATION AND COMMUNICATIONS TECHNOLOGY (SP ICT)', 'http://depedmanila.net:5000/d/s/uzez5Tnj68SQ656ABPxnf7SRnA4y6HNc/UKb94931l77bOnEZ8iOYvr9ypyQHv4-3-vrxAZLg7ugo', '327', '2022-10-10', 'NUMBERED MEMORANDUM', 'active'),
(1910, '321100422', 'Special Order - Mr. Richard F. Zacarias temporarily designated as Office-in-Charge', 'http://depedmanila.net:5000/d/s/uzez5S68Je5y8QlcnPH2Frs26Bk4eQWN/9O5yS1M1x9dF61wYR7R2-tZbjX1fuCNp-bb2gTZs8ugo', '321', '2022-10-10', 'NUMBERED MEMORANDUM', 'active'),
(1911, '329101022', 'VALIDATON OF ALS LEARNING MATERIALS', 'http://depedmanila.net:5000/d/s/uzez5YlhsUGcQTzzSbjCaVaPbHWYmX7U/mnvRYlym2o1QGF4nhZS8Jj4Uwj3CMB4z-Ubxgn0o7ugo', '329', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1912, '322100522', 'Share Your Pre-love Books and Toys - A book Drive by the Manila City Library', 'http://depedmanila.net:5000/d/s/uzez5Uw7cSRatGuasXl293pS4A7JYB6x/WHIApMob5qHKMo7PVq6cXqO0kLak0N8L-9rzguhM8ugo', '322', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1913, '323100322', 'Creation of the Public Financial Management Assessment (PFMA) Team of the City of Manila', 'http://depedmanila.net:5000/d/s/uzez5VMWJa3eBUCLx7wFrmXt92XTONgJ/EMcyEpaNcnhGv-rl8V2_cwLycgn7ycQq-rr0g3dc8ugo', '323', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1914, '324100322', 'Reorganization of the Committee on Tourism', 'http://depedmanila.net:5000/d/s/uzez5UeWUMU7iH4nC2p4WHw0ruVFIxU2/SENkovJvMZE6-O_J-UOhCnhRTRFStPrR-p70gbc48ugo', '324', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1915, '325100522', 'Constitution of the City Tenants Security Committee', 'http://depedmanila.net:5000/d/s/uzez5WM7GqXnp9azsJRuNXTQzy8sLpPe/al8Cy6gF_SP1TqWJueo_NQAqAjq_Ef1_-77ygMQg8ugo', '325', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1916, '326100522', 'Reorganization of the Manila Disaster Risk Reduction & Management Council (MDRRMC)', 'http://depedmanila.net:5000/d/s/uzez5XdJMCZf6yH1F3iYl0J2yQO0x5gy/QIN-Qkhdl4DkO7IvPwFQYQy3gXiMzaeP-6LxAb_07ugo', '326', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1918, '386101122', 'CALL FOR ONLINE REGISTRATION OF COHORT 3 PARTICIPANTS AND OTHER RELATIVE ACTIVITIES IN THE IMPLEMENTATION OF LUNDUYAN SA KAHUSAYAN TRAINING PROGRAM', 'http://depedmanila.net:5000/d/s/uzez5bbhBEK06HacHdmHKIUui5NhHJ5q/GVEmFg3HZ7RWAbREjUhuGrSivO0oM9dq-ErwAx_g6ugo', '386', '2022-10-11', 'UNNUMBERED MEMORANDUM', 'active'),
(1919, '330101122', 'APPLICATION FOR PROMOTION TO MASTER TEACHER I AND II POSITIONS (SENIOR HIGH SCHOOL) IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzez5X4762GE2qFZ08wp7rlQcfEFGDBf/hxo1OyQ_1cFqQ09eU3Zopouuo5_xSRGs-CbzAvfE6ugo', '330', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1920, '382100722', 'UPDATING OF DATA ON FY 2022 CONDUCTED PROGRAMS, ACTIVITIES AND PROJECTS (PAPs) FOR TEACHERS AND SCHOOL LEADERS UNDER THE HRD FUND (PROGRAM SUPPORT FUND, ADDITIONAL PROGRAM SUPPORT FUND, INSET FUND)', 'http://depedmanila.net:5000/d/s/uzez8Cyefgi4fmObHOvFqzvv4JgIPmG3/u6HSs5o6HRJTxIB9CpXAmOYzG1y2hnlY-t7ygBa07ugo', '382', '2022-10-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1921, '67101222', 'Membership Accidental Assurance Benefits for Red Cross Youth Members', 'http://depedmanila.net:5000/d/s/uzez5c25sMKILtFDillLNFfKM4ymKqxK/yHACKoXIWrSq4_6qb5OB673VcNj2yjbk-xbugNRc6ugo', '67', '2022-10-12', 'DIVISION CIRCULARS', 'active'),
(1922, '312101222', 'CONSTITUTION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING PERSONNEL-SECONDARY LEVEL', 'http://depedmanila.net:5000/d/s/uzez5ck5hYdn8gmx7nnLucZI6BWmgOKA/erH4Bp4WUdEudyaNPYQ5s6oA0cpCTKmV-u7uA6wo6ugo', '312', '2022-10-12', 'NUMBERED MEMORANDUM', 'active'),
(1923, '331101222', 'REDEFINING THE ROLES OF PUBLIC SCHOOLS DISTRICT SUPERVISORS BY DEVELOPING A COLLABORATIVE GUIDEBOOK TOWARDS TRANSITIONING EDUCATIONAL PRACTICE', 'http://depedmanila.net:5000/d/s/uzez5eaU36xEddYxPCKTv30elN2GOK96/BVAG9LQoSl5Y1DbYVLlM1tVNY-ahXsGl-tLtAtgM6ugo', '331', '2022-10-12', 'NUMBERED MEMORANDUM', 'active'),
(1924, '387101222', 'Completion of Project under the Basic Education Facilities Fund (BEFF) Repair and Rehabilitation of Classroom CY 2021', 'http://depedmanila.net:5000/d/s/uzez5f0skEWOWF1DxRx4xpessNotseJk/HBWQ3ioPL-qvyao386rAf34955CaxCNV-rrtg9_o5ugo', '387', '2022-10-12', 'UNNUMBERED MEMORANDUM', 'active'),
(1925, '129100322', 'Kabataang Gitarista (KG) Program', 'http://depedmanila.net:5000/d/s/uzez5e1HmwfMpUYUBUH97EnhkUfbmACq/7lCsbhvvWUihk57hF5dMB4PGA5F0vyPv-Gb4Ai9I9ugo', '129', '2022-10-12', 'DIVISION ADVISORIES', 'active'),
(1926, '332101222', 'REOPENING OF APPLICATION FOR PDO I', 'http://depedmanila.net:5000/d/s/uzez62Qmyce7jHcrX0TJVHP5usrvJSS6/8-RjmDfZP05r4WrCid6_fXeY0UsTWDdW-pbvAIuE5ugo', '332', '2022-10-13', 'NUMBERED MEMORANDUM', 'active'),
(1927, '15101322', 'OM 15 s. 2022 SEMINAR ON SERVICE DELIVERY EFFICIENCY OF THE HUMAN RESOURCE MANAGEMENT SERVICES PERSONNEL', 'http://depedmanila.net:5000/d/s/uzez62rBfki0ivgj823gIxXP3ALFvNC5/OzBb1fnkfROpaU2Z5agoyesUsZ8sy2IH-mbvAB885ugo', '15', '2022-10-13', 'OFFICE ORDER', 'active'),
(1928, '09222022', 'OM 014, s. 2022 EMPOWERING SEASONED PERSONNEL THROUGH HOLISTIC HEALTH AND WELLNESS AGINGAND RETIREMENT SYMPOSIUM.pdf', 'https://gofile.me/71xfF/iLcp6ymdS', '14', '2022-09-22', 'NUMBERED MEMORANDUM', 'active'),
(1929, '388101422', 'Emergency Meeting of Health Personnel', 'http://depedmanila.net:5000/d/s/uzez6Af9kuBim6a3ss97OX8itRWQIxbE/vu3eyqByb_MLjejAGyPH047zgvEy9iwB-Zrsgt2E5ugo', '388', '2022-10-14', 'UNNUMBERED MEMORANDUM', 'active'),
(1930, '337101422', 'BUILDING-UP RESEARCH ADVISERS IN INVESTIGATION AND MODELLING', 'http://depedmanila.net:5000/d/s/uzez69FA6U4kIODQOwkgxGdjGDiXJVqO/eK-C6yvjhzHxv-tLLnPBK-2y5U1lmOnE-YLvAhFg5ugo', '337', '2022-10-14', 'NUMBERED MEMORANDUM', 'active'),
(1931, '336101322', '2022 DIVISION MUSABAQAH SKILLS EXHIBITION', 'http://depedmanila.net:5000/d/s/uzez67gMt2Kg8cO0UL2RpPhN01gSC1Um/4_fLZspQmveuamz8RvSvxbDTVadQjbbf-jbvghsI5ugo', '336', '2022-10-14', 'NUMBERED MEMORANDUM', 'active'),
(1932, '335101322', 'SCHEDULE OF QUARTERLY PROFESSIONAL MEETINGS OF ELEMENTARY MASTER TEACHERS/GUIDANCE TEACHERS/COUNSELORS, DISTRICT ALS COORDINATORS(DALSCs),JOURNALISM TEACHERS(ELEMENTARY AND SECONDARY) , LIBRARIANS/TEA', 'http://depedmanila.net:5000/d/s/uzez66glvkqWDRgYzUgeKWu33pQVob0k/5u-zII2jL_K6wrqxdhneEH420o60Rc8W-hrvg5LQ5ugo', '335', '2022-10-14', 'NUMBERED MEMORANDUM', 'active'),
(1933, '339101322', 'OPENING OF APPLICATION FOR EDUCATION PROGRAM SUPERVISOR(SCIENCE)', 'http://depedmanila.net:5000/d/s/uzez65pyXWNTSmsQNj4BmkkXCWRPUCXd/pG07-R9iRx5vGWky-j2ELu-opv331ReB-fLugUXw5ugo', '339', '2022-10-14', 'NUMBERED MEMORANDUM', 'active'),
(1934, '68101422', '96th Founding Anniversary of  YWCA in the Philippine', 'http://depedmanila.net:5000/d/s/uzez64YmSA1FjDUUUhGDSqHRCa2Kk5vc/hrTjJnA2TCf3OYOEz8wusfkFOZrUeAWk-WbuAbk85ugo', '68', '2022-10-14', 'DIVISION CIRCULARS', 'active'),
(1935, '385101022', 'Discussion on SGC Policy and Other Matters', 'http://depedmanila.net:5000/d/s/uzez6CvwnULRjUrOOireu92yqTj1zjKH/who9QqjSid4roowO-pqdarp06CG66M12-PLyAZDw7ugo', '385', '2022-10-15', 'UNNUMBERED MEMORANDUM', 'active'),
(1936, '328101122', 'FACE-TO-FACE REFRESHER TRAINING OF SELECTED GRADE 11 TEACHERS ON THE ONLINE LEARNING MANAGEMENT SYSTEM (QUIPPER VIDEO)', 'http://depedmanila.net:5000/d/s/uzez6DDXvaakzNQaF7WYqSzoHmYgOo2b/tZhAnseG_xpZiFnoLeBmsxto9nm85xXZ-6rtgt1w6ugo', '328', '2022-10-11', 'NUMBERED MEMORANDUM', 'active'),
(1937, '130101422', 'Philippine Guidance and Counseling Association - Mid-Year Conference', 'http://depedmanila.net:5000/d/s/uzez6DmkBkUZVowQeCgpBHnw7XSqaopG/hedfjwN6HXzXO7SkzfLFkZ88Jk-DlpXc-QLuA5To5ugo', '130', '2022-10-20', 'DIVISION ADVISORIES', 'active'),
(1938, '10172022', 'FIRST ADMINISTRATORS CONGRESS WITH THE THEME, SETTING THE TONE IN DYNAMIC SCHOOL LEADERSHIP IN THE EMERGING NEW NORMAL', 'http://depedmanila.net:5000/d/s/uzez6CMkXKvtmd3Xr8fMiW0e0hV6sdaE/YcOhHmp7nM-m45jfVlAx-JruV3-3953y-NL7Ao_Q9ugo', '57', '2022-09-20', 'DIVISION CIRCULARS', 'active'),
(1939, '344101822', 'TRANSITION PLAN FOR THE IMPLEMENTATION OF JOURNALISM AS A SPECIAL CURRICULAR PROGRAM THIS SCHOOL YEAR 2022-2023', 'http://depedmanila.net:5000/d/s/uzez6E4LJqzdateM3dQjTUiGpC5akGQ6/G-8KwOjKw706wbOWHhazcgwPutxCJEY7-Ebsgfg45ugo', '344', '2022-10-20', 'NUMBERED MEMORANDUM', 'active'),
(1940, '342101822', 'LITERACY AND NUMERACY IN-SERVICE TRAININGS FOR GRADE ONE READING AND MATHEMATICS TEACHERS', 'http://depedmanila.net:5000/d/s/uzez6HcKRmNfPmsk2QdE2wOWuW327b7N/RpOL6sRySXO0Vi5n6fFzno0TzbEhI6Vc-ArvAYtc4ugo', '342', '2022-10-21', 'NUMBERED MEMORANDUM', 'active'),
(1941, '347101722', 'John Marvin Nieto - Assumption as Acting Mayor', 'http://depedmanila.net:5000/d/s/uzez6IT7q2oa7W6PZso9nEedaNlxaT8V/nwAASkCbDll3y89u50iqXi2Nt_4BprGX-GrvAmB45ugo', '347', '2022-10-21', 'NUMBERED MEMORANDUM', 'active'),
(1942, '348101822', 'Designation of Hon Johanna Maureen Nieto Rodriguez as Vice Mayor in Acting Capacity', 'http://depedmanila.net:5000/d/s/uzez6KsiRcClyuqn4pdbgO3L2Gg27mQy/3ChRAt4ctFIYooi6SRs0DdBVeDJNvOBt-9LqASMo4ugo', '348', '2022-10-21', 'NUMBERED MEMORANDUM', 'active'),
(1944, '349102422', 'WORKSHOP ON THE DEVELOPMENT AND VALIDATION OF A MULTILINGUAL RESOURCE PACKAGE', 'http://depedmanila.net:5000/d/s/uzez6V6H88jtfb1DpEyOHQVOeLUQNtHJ/8299muYu2uZB8MOj4CdIw2gpilrLuMc4-4bmgxaoyugo', '349', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1945, '131102022', '2022 INTERNATIONAL SCHOOL LEADERSHIP AND MANAGEMENT TRAINING', 'http://depedmanila.net:5000/d/s/uzez6R7tJ6FIVUUtRnYccocAkmSw2hoR/hlo0YP-hGc0QjvQOeq6R-mojjrG9f4zG-XbrAV5Azugo', '131', '2022-10-24', 'DIVISION ADVISORIES', 'active'),
(1946, '355102122', 'RECONSTITUTION OF THE MANILA ZONING BOARD OF ADJUSTMENTS AND APPEALS', 'http://depedmanila.net:5000/d/s/uzez6oGCPgkpl83CKhVAG5DxWt5JrJUb/IWJwWQg-rDsLIeNA0f7exNhD6jV-jb-Z-LLrAdCQzugo', '355', '2022-10-21', 'NUMBERED MEMORANDUM', 'active'),
(1947, '356102122', 'REVISITING DEPED ORDER NO. 16, S. 2016 RESEARCH MANAGEMENT GUIDELINES (RMG)', 'http://depedmanila.net:5000/d/s/uzez6q6alAzydyffk3aMR9I1Tsql7hs6/v_16X66i6YV445VNgkJTAkMCJDtRNf_c-JbrAKhwzugo', '356', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1948, '354102122', 'IMPOSITION OF A LIQUOR BA, PROHIBITION OF AMBULANT VENDORS AND NOISE CONTROL FOR MITIGATION, ALL WITHIN THE 500-METER RADIUS OF SAN BEDA UNIVERSITY AND DE LA SALLE UNVIERSITY, MANILA CITY, FOR THE PEA', 'http://depedmanila.net:5000/d/s/uzez6npniYt2DTgJsGcYWsjznAzEX3Xy/_ErjIB5FaYsNUpQJiNN9Y1--m4k1RC74-H7rg9hQzugo', '354', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1949, '253102122', 'RESOLUTION NO. 207 SERIES OF 2022', 'http://depedmanila.net:5000/d/s/uzez6nYCaSfkSjahESGCZd0oz57LNMkK/PGJzB80enALZR25dRuEl_FqxhcInwF82-GLqgfgkzugo', '353', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1950, '352102122', 'RECONSTITUTION OF THE COMMITTEE ON AWARDS FOR DISPOTAL OF UNSERVICEABLE PROPERTIES', 'http://depedmanila.net:5000/d/s/uzez6jicKWul46EvijRYCS9yk99h4bha/pdHYZ6isv18MzI_BWfPlb1qTrV7HUIJJ-EbrgJwAzugo', '352', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1951, '351102122', 'AN ORDER AMENDING EXECUTIVE ORDER NO. 34 SERIES OF 2022 BY INCLUDING THE CITY TREASURER AS MEMBER OF THE CITY REVENUE MONITORING COMMITTEE', 'http://depedmanila.net:5000/d/s/uzez6Wf4LW0tzgqwFZ2jo7AZOlvrc1Tc/mxSN2W25SFrnf5ea5brv-XkLw3RZGTOL-C7oAuPcyugo', '351', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1952, '350102122', 'OFFICE OF THE MAYOR - MR JEFFREY L. PALAO, OFFICER-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzez6Tp52osdKZrCqIpU1xqC6gQTyXKJ/EGl0JLIjf4yqpEyO38lthMQ-zW7mtRJG-BLoA4u0yugo', '350', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1953, '358102422', 'VACANCIES FOR NON-TEACHING PERSONNEL', 'http://depedmanila.net:5000/d/s/uzez6pozd4fGS0W8qbgfaRrahu1szY8l/X_BGyvFOp965V_LqkGZCKKrjBt8JnWRg-2rngHaQyugo', '358', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1954, '359102422', 'PARTICIPATION IN THE ONLINE INTERNATIONAL TRAINING ON SCHOOL LEADERSHIP', 'http://depedmanila.net:5000/d/s/uzez6sNNnmjc0Ohoy7YWr90vmcprEJLT/4-GmglTcKENYg4lv4XtUUSXMrDTNXuQu-1LkgXpwyugo', '359', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1955, '360102422', 'PARTICIPATION IN THE WEBINAR-WORKSHOP ON EDUCATING DIVERSE LEARNERS AND LEARNERS WITH SPECIAL NEEDS IN THE NEW NORMAL', 'http://depedmanila.net:5000/d/s/uzez73IwJUZQRlWbdfn9dWhG6I5Sn9du/LAsisDBYTKoo9FUS7pmaVy-ldd_T2GWu-zblAm5Qyugo', '360', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1956, '391102122', 'ADDENDUM CORRIGENDUM TO DM 331 s. 2022', 'http://depedmanila.net:5000/d/s/uzez6uvlyQlSafu8QzXt9ThXw5SSWhfg/43nL5UknSHyaTdqlg1RPaCJfq4qbeY5Y-_bmgUOMyugo', '391', '2022-10-24', 'UNNUMBERED MEMORANDUM', 'active'),
(1957, '364102422', 'PARTICIPATION IN THEHIGH IMPACT TEACHING IN THE DIGITAL ERA - AN INTERNATIONAL ONLINE TRAINING PROGRAM', 'http://depedmanila.net:5000/d/s/uzez6RYI0ERcKYHcDv1mT3JQQiIN7y0N/yaGGcFsPiZZVW8fxGY-zm1HVboX6DV8N-xrmgl4syugo', '346', '2022-10-24', 'NUMBERED MEMORANDUM', 'active'),
(1958, '361102022', 'MANILA CITY HALL INTER-DEPARTMENT SPORT FEST 2022', 'http://depedmanila.net:5000/d/s/uzez6yC9yERTEMVkfSDk45eF1XzadHN9/0AIrUB29xylQcMVvRtdCZSyLzpt7bdCe-VLrgwm8zugo', '361', '2022-10-25', 'NUMBERED MEMORANDUM', 'active'),
(1959, '365102722', 'CONDUCT OF CONCRETE PETOGRAPHY ASSESSMENT OF DEPED SCHOOL BUILDING STRUCTURES', 'http://depedmanila.net:5000/d/s/uzez77Q7hWxv1aGRHCg3eIrstyDGw85m/gte5DXznYeEtfTxv7UsleEvm_wGoUj0W-qbkgu0oyugo', '365', '2022-10-27', 'NUMBERED MEMORANDUM', 'active'),
(1960, '368102722', 'ORIENTATION FOR ADMINISTRATIVE OFFICER II AND REGISTRAR I IN THE DIVISION OF CITY SCHOOLS, MANILA WITH ADDITIONAL SCHOOL ASSIGNMENTS', 'http://depedmanila.net:5000/d/s/uzez75I8DyCKEZjGZX4mfMblOqAQFxu9/ykKV54OWSHFNeePGsqvwLofRpUe0eWGT-o7mAmkMyugo', '368', '2022-10-27', 'NUMBERED MEMORANDUM', 'active'),
(1961, '369102722', 'DIRECTIVES ON THE SETTLEMENT OF PHILHEALTH ARREARS OF DEPED PERSONNEL NATIONWIDE FROM JANUARY TO MAY 2022', 'http://depedmanila.net:5000/d/s/uzez76083A39VfLvAX5VbPvJ3ASXpT9I/9JWnkBVIXKTswGmMR_CwyuaXPteQkJI3-nLngozoyugo', '369', '2022-10-27', 'NUMBERED MEMORANDUM', 'active'),
(1962, '364102722', 'Resolution No. 212 Series of 2022', 'http://depedmanila.net:5000/d/s/uzez78Gv5mwdHmEfxc6xmGUi9hQCbCBm/RlCMBwXk3Gl8ULTOrvENfqKiAdfbrJ1H-lLlAcDEyugo', '364', '2022-10-28', 'NUMBERED MEMORANDUM', 'active'),
(1963, '133102822', '5TH ANNUAL GEOPOTENTIAL', 'http://depedmanila.net:5000/d/s/uzez4b18xEs0Wl74MkektnXMAy42sq2G/ImfCUVUeHq532NCEJ9SdszeTsBDfX-8B-ZLlAgt8xugo', '133', '2022-11-02', 'DIVISION ADVISORIES', 'active'),
(1964, '363102022', '4TH NEGOSYO SA BAYAN NG ENTREPRENEURSHIP SUPPORT AND DEVELOPMENT TRAINING', 'http://depedmanila.net:5000/d/s/uzez4fH7uKpeEfZ1YZXwPU7UGlxGgjXQ/lfzH6Rg-YA7xvCg3vW37bykGOod_vetS-Srog41ozugo', '363', '2022-11-02', 'NUMBERED MEMORANDUM', 'active'),
(1965, '39611022022', 'Crafting of Lesson Budget for the implementation of E.S. Claveria Cartilla Techniques to teach reading to selected Grade One learners and other matters', 'http://depedmanila.net:5000/d/s/uzez4hgiW485HHYZLQQ67aemX19b9Wyr/rMMK9oOW9M8ZirTK0H02HpisvqicUMyi-TLUA2Lq8uQo', '396', '2022-11-02', 'UNNUMBERED MEMORANDUM', 'active'),
(1966, '01611022022', 'OM 016 s 2022 - FIRST FRIDAY MASS ON NOVEMBER 4 2022 AT THE MANILA CITY HALL', 'http://depedmanila.net:5000/d/s/uzez4gPWQgc1tFWoqTzqcmqpK5hMGJIy/SHF1A8JafYv7IsaMjNs8dIeorPex548E-YLWAC9a8uQo', '16', '2022-11-02', 'NUMBERED MEMORANDUM', 'active'),
(1967, '370102822', 'MONITORING OF THE FULL FIVE DAYS FACE-TO-FACE CLASSES FOR THE SCHOOL YEAR 2022-2023', 'http://depedmanila.net:5000/d/s/uzez78hJmuE7FK4IfShfKK8pPLXKZpkQ/KViXeTTpoREIJTvPTsNwcKP1fWKkum-X-WbkgqtExugo', '370', '2022-10-28', 'NUMBERED MEMORANDUM', 'active'),
(1968, '13411022022', 'MGA KUWENTONG PAGKAIN', 'http://depedmanila.net:5000/d/s/uzez4dHvzmqZJGR9lhEQv2rTFb3JQL2O/UXWDro7KZi3bHuq3i0JLIc-t_BSxbRdX-VbWAncC8uQo', '134', '2022-11-02', 'DIVISION ADVISORIES', 'active'),
(1969, '372102822', 'REASSIGNMENT OF SECONDARY SCHOOL PRINCIPALS', 'http://depedmanila.net:5000/d/s/uzez7B6uOUPrKXosZzAjiJmLvcinjToN/Xpqu_JH61OZ0B134Ses4F2iSKndaQj9u-UrlAl8oxugo', '372', '2022-10-28', 'NUMBERED MEMORANDUM', 'active'),
(1970, '367102822', '3rd KUMUSTAHAN SA AKLATAN (ACT OF SHARING KNOWLEDGE FOR LEARNERS’ ADVANTAGE AND PROVISION OF TECHNICAL ASSISTANCE NEEDED)', 'http://depedmanila.net:5000/d/s/uzez4e8jO2wqOWbX28lDm8tGrCk6P4J3/q5QDbLPOZ2ghmYCmfGn3oAID1sdnLoL--SrmAKrwxugo', '367', '2022-11-02', 'NUMBERED MEMORANDUM', 'active'),
(1972, '37311032022', 'ORIENTATION ON IMPLEMENTING GUIDELINES ON THE ESTABLISHMENT OF SCHOOL GOVERNANCE COUNCIL (SGC) FUNCTIONALITY ASSESSMENT TOOL FOR SECONDARY SCHOOLS', 'http://depedmanila.net:5000/d/s/uzez5JaAPI3CTeC1ecpVtQq9OCIL5rBX/4OorCTn47F2g7yhdW8czsxD4ztQfe8G3-O7UAoq-8uQo', '373', '2022-11-03', 'NUMBERED MEMORANDUM', 'active'),
(1973, '37511032022', 'VACANCY FOR THE POSITION NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS MANILA', 'http://depedmanila.net:5000/d/s/uzez5JrlXOP1Km0QmWHdrz0anFSBi8kR/gcLP7JqV0EbiKV5HcFCsJGSbEC0DTa-j-M7UAn6q8uQo', '375', '2022-11-03', 'NUMBERED MEMORANDUM', 'active'),
(1974, '37411022022', 'VICE MAYOR JOHN MARVIN YUL SERVO C. NIETO - ACTING MAYOR', 'http://depedmanila.net:5000/d/s/uzez5KZlMcyEOQ8AA7c0HYbiGUoaZE3A/aEkSnUqC0_TA0Hhnxlm5CEMkFT24c7Th-brXAUOS8uQo', '374', '2022-11-02', 'NUMBERED MEMORANDUM', 'active'),
(1975, '37711022022', 'Special Order - Johanna Maureen Nieto Rodriguez - Acting Vice Mayor', 'http://depedmanila.net:5000/d/s/uzez5KIAEWmAu8avjU3av9VKnz59Mnjc/7-NqwtwodHySsKVO2GHWMNXYrIsIqJKE-aLWgad68uQo', '377', '2022-11-02', 'NUMBERED MEMORANDUM', 'active'),
(1976, '37911072022', 'ASSIGNMENT OF ELEMENTARY AND SECONDARY SCHOOL NURSES', 'http://depedmanila.net:5000/d/s/uzez5OPLce74Ql4YUi3Dx9qpG6vWd3VP/Jebss23Jm-c1pESLGiMFQNQ4GWgf2ewA-CLUgdnC8uQo', '379', '2022-11-07', 'NUMBERED MEMORANDUM', 'active'),
(1977, '39811072022', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 297, S. 2022', 'http://depedmanila.net:5000/d/s/uzez5PXk90LdciWArkytBMmGt0Tv0XvL/U2XCPCW13rXowL55Dm0ehlDfpMdDXdi3-AbXAPmu8uQo', '398', '2022-11-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1978, '37811072022', 'REITERATING COMPLIANCE IN THE PROCESS FLOWS OF IMPLEMENTING UNITS (IUs)’ REMITTANCES TO GOVERNMENT SERVICE INSURANCE SYSTEM (GSIS), PAG-IBIG, PHILHEALTH AND PRIVATE LENDING INSTITUTIONS (PLIs)', 'http://depedmanila.net:5000/d/s/uzez5NywvWMBOCLYYa5R2EMO6f2ju8DD/0ww8xAHJEC2w2S1iSz9SXFakFTluWY1O-5rRAXem7uQo', '378', '2022-11-07', 'NUMBERED MEMORANDUM', 'active'),
(1979, '39911072022', 'OK SA DEPED FLAGSHIP PROGRAMS', 'http://depedmanila.net:5000/d/s/uzez5OgwkkxvUajZjMRhmukOSNmPud9N/To5bCRG5-dyDaQo7XxFa0J8TLdQTK5eO-4LTAO-O7uQo', '399', '2022-11-07', 'UNNUMBERED MEMORANDUM', 'active'),
(1980, '38111072022', 'SERIES OF LEARNING ACTION CELL (LAC) SESSIONS: ALTERNATIVE LEARNING SYSTEM PROGRAM IMPLEMENTATION  REVIEW AND DEVELOPMENT OF THE 5-YEAR ANNUAL IMPLEMENTATION PLAN FOR CALENDAR YEARS 2023-2027', 'http://depedmanila.net:5000/d/s/uzez5RO8USwhp8U0gTkdoMIihy1u6351/S5j08Q9AvEnFGvJb9swt0xd7Grj4J6f7-1bSAr9i7uQo', '381', '2022-11-07', 'NUMBERED MEMORANDUM', 'active'),
(1981, '38011082022', 'ALS-EST CUSTOMER EXPERIENCE PROGRAM(CxP)TRAINING CLOSING PROGRAM', 'http://depedmanila.net:5000/d/s/uzez5So88sr6wCutad03Czb2cbmlv2iB/usoh-JpWrrll519IjksJphIqIPTvpybM-zbTg98-7uQo', '380', '2022-11-08', 'NUMBERED MEMORANDUM', 'active'),
(1982, '38411092022', 'DESIGNATION ORDER OF DR. RONIKO C. NATIVIDAD,PUBLIC SCHOOLS DISTRICT SUPERVISOR', 'http://depedmanila.net:5000/d/s/uzez5SWX0mpREgPrL1in6QiejHBAm5my/J6gwTCLrWRuMWBh9NtFVNjaOTHY9vfhF-kbRg9n67uQo', '384', '2022-11-09', 'NUMBERED MEMORANDUM', 'active'),
(1983, '7211102022', 'Girl Scout Membership Campaign 2022', 'http://depedmanila.net:5000/d/s/uzez3M5qfiqMxUeWpNT0hraIul3MGtQb/NEXjgyN7j-4xdVFNekd54NPQywIov4E0-gbTAMmy7uQo', '72', '2022-11-10', 'DIVISION CIRCULARS', 'active'),
(1984, '7311102022', 'Girls Scout of the Philippines, face-to-face execom', 'http://depedmanila.net:5000/d/s/uzez3KoeaMoMllOKX2PT4oPwlT4zClVp/xuPWicQh2xkj0RU1xIIbNaAjDTWYY8Z8-erSgYme7uQo', '73', '2022-11-10', 'DIVISION CIRCULARS', 'active'),
(1985, '38511092022', 'FISCAL YEAR 2021 NATIONALQUALIFYING EXAMINATION FOR SCHOOL HEADS(NQESH) PASSERS FROM SDO MANILA', 'http://depedmanila.net:5000/d/s/uzez3VSby4kuo2sFB0l0cSd8hSqg7C21/Uaa3Ccxhw0NTpIARfXXURTfN2uGlA9Yt-irQg7Xm7uQo', '385', '2022-11-09', 'NUMBERED MEMORANDUM', 'active'),
(1986, '40211102022', 'DISTRICT V SECONDARY SCHOOLS TEACHING DEMONSTRATION CONSULTATIVE MEETING', 'http://depedmanila.net:5000/d/s/uzez3UT10oVXy8G9q578TCYh6p1KpCuI/9u4ohajWxImMmB_JhXdg4bGojy8oXTfr-dLRAa2G7uQo', '402', '2022-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(1987, '38611102022', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF PRODUCTIVITY ENHANCEMENT INCENTIVE (PEI) FOR FY 2022', 'http://depedmanila.net:5000/d/s/uzez3h6AIuLrLEG5rJRACt92XCVBM8ZW/U3Nf7Zo4XbQXfhwFyumLt30rbGf1uN_P-bLRAD1u7uQo', '386', '2022-11-10', 'NUMBERED MEMORANDUM', 'active'),
(1988, '38311102022', 'PARTICIPATION IN THE WEBINAR-WORKSHOP ON EDUCATIONAL MANAGEMENT AND LEADERSHIP: THE ROLE OF TEACHERS AND SCHOOL HEADS IN DEVELOPING EDUCATIONAL LEARNING', 'http://depedmanila.net:5000/d/s/uzez3Q4EUim34QHYaLmd6SrlP9l1ykd5/XPzTWx0Fd-a7Auwx7pgCTWPbcexo2C-2-ZbTgVFS7uQo', '383', '2022-11-10', 'NUMBERED MEMORANDUM', 'active'),
(1996, '7411112022', 'Fourth General Assembly', 'http://depedmanila.net:5000/d/s/uzez3rsvFYnBrky9Bqr72EHHp6XwJ3lo/VH0f-Fj4p3BGKpZbzklSKb8mqVbImtul-W7SAokW7uQo', '74', '2022-11-11', 'DIVISION CIRCULARS', 'active'),
(1997, '7511112022', 'Appointment and Reappointment of the Teachers and School Administrators to the Different   YWCA FPPI Youth Committees  as  Chairmen, Co-Chairmen, District  Coordinators and Advisers', 'http://depedmanila.net:5000/d/s/uzez3zY5lSMBdP8d4bzLjUNv6wZkRgnd/zG7Ix91lJH0-CqrWQ9D74vtaVvYTxOkE-VbQAzT67uQo', '75', '2022-11-11', 'DIVISION CIRCULARS', 'active'),
(1998, '13511112022', 'FREE NIHONGO CLASS', 'http://depedmanila.net:5000/d/s/uzez3sS7Vi91AP7p82mwjRWjsnq6FdNY/uyOYmjBeYzxqEzLY6bgh338kO6vmeIGH-RrSg0Be7uQo', '135', '2022-11-11', 'DIVISION ADVISORIES', 'active'),
(1999, '38811112022', '2022 STRENGTHENING THE SPORTS AND WELLNESS PROGRAM OF THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzez3v9JFMFqY9iYVHfrRlthURmDEzWz/syiOVt3lOjSHED5PA_yP_NYPIxU-4HAr-QLQg3RK7uQo', '388', '2022-11-11', 'NUMBERED MEMORANDUM', 'active'),
(2000, '38911142022', 'PAGDARAOS NG PAKITANG-TURO PARA SA UTILISASYON NG KAGAMITANG PANTURO NA MARUNGKO BILANG INTERBENSYON SA PAGTUTURO NG PANIMULANG PAGBASA SA FILIPINO', 'http://depedmanila.net:5000/d/s/uzez41XHfyUMyV4rnA606sufwx7aLPA5/HvXwgqM8dtYT82KoqP-OyQH-S9DPsfV8-DrQgRay6uQo', '389', '2022-11-14', 'NUMBERED MEMORANDUM', 'active'),
(2001, '39011142022', 'LECTURE ON THE SIGNIFICANCE OF HERITAGE SITES IN THE CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzez42FHVAm8TX6MEzhY4dL5QRlpeff8/6fH08XaMAquO6BdXoMa2eV6cgqjwMMhf-B7Sg76W6uQo', '390', '2022-11-14', 'NUMBERED MEMORANDUM', 'active'),
(2002, '39111142022', 'PAGLULUNSAD NG KAGAMITANG PANTURO SA PAMARAANG MARUNGKO BILANG INTERBENSYON SA PAGTUTURO     NG PANIMULANG PAGBASA SA FILIPINO', 'http://depedmanila.net:5000/d/s/uzez44W4XkfPUYqoS96CjPjYsVONV4Ey/mKEedDstVYWHdT5e0I5sZ1rjCUNqTRHF-AbRA1KC6uQo', '391', '2022-11-14', 'NUMBERED MEMORANDUM', 'active'),
(2003, '39211142022', 'PARTICIPANTS TO THE TEACHERS’ TRAINING COURSE ON ASSESSING LEARNING OUTCOMES USING SOLO FRAMEWORK APPROACH', 'http://depedmanila.net:5000/d/s/uzez4BkqMWKnWDELZq1ZpYHqwhrVepzX/3O_WRwc29uaG1JMeaZN7HtH-xe-t9pIn--rMAOZy6uQo', '392', '2022-11-14', 'NUMBERED MEMORANDUM', 'active'),
(2004, '39311142022', 'PROJECT BHS: BASIC HANDWRITING SKILLS IN-SERVICE TRAINING FOR GRADE ONE TEACHERS', 'http://depedmanila.net:5000/d/s/uzez47vG6aAkV72NfusYROLax3hl4LvE/MAIaF7ehktp2i0x95zFMgVquE-TRl8E--9LMgtpe6uQo', '393', '2022-11-14', 'NUMBERED MEMORANDUM', 'active'),
(2005, '', 'Research Evaluation Process and Other Matters', 'http://depedmanila.net:5000/d/s/uzez4DbEi2sCLkIUIjCHdiwvNtouPbda/48jqX4DhaOSWKHZBvxD6BccNPwTO8MWD-ObTgkQ27uQo', '407', '2022-11-11', 'UNNUMBERED MEMORANDUM', 'active'),
(2006, '', 'Pre-Work for Annual Implementation Plan (AIP) and other BEDs (eg. SOB, MCP, PPMP) Other Matters', 'http://depedmanila.net:5000/d/s/uzez4D22RsSnGdynlL6L6drDlx52n1bX/OI08cKDvJvGpOL9GOen5wpxRvbYsufqH-M7SAxQa7uQo', '408', '2022-11-11', 'UNNUMBERED MEMORANDUM', 'active'),
(2007, '39511162022', 'APPLICATION FOR SPECIAL SCIENCE TEACHER I POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA - SENIOR HIGH SCHOOL LEVEL', 'http://depedmanila.net:5000/d/s/uzez4FaQcWeomf7Ww5SCM4wUSJc2b5Z6/OrGlbD9pgoC3wc8ygvw4MtuVYFqUEo1W-NrMAnom3uQo', '395', '2022-11-16', 'NUMBERED MEMORANDUM', 'active'),
(2008, '39611162022', 'APPLICATION FOR TEACHER I POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA FOR JUNIOR AND SENIOR HIGH SCHOOL LEVELS', 'http://depedmanila.net:5000/d/s/uzez4Gip8oE0nMXMQnBC65MWk5sR8jJS/81JWE0-jaIf2KCPgAGLPTI0MGRIJFwI3-L7MgmYS3uQo', '396', '2022-11-16', 'NUMBERED MEMORANDUM', 'active'),
(2009, '7911162022', 'TWO NEW PROGRAMS MASTER OF ARTS IN EDUCATION AND DOCTOR OF PHILOSOPHY MAJOR IN EDUCATIONAL LEADERSHIP AND MANAGEMENT', 'http://depedmanila.net:5000/d/s/uzez4Kyo5uHRppEKgYV6Ffm1AWB1oXJO/k0OioRoIWxPrDmLt97XYElszbfUIWOwf-KLNgKny3uQo', '79', '2022-11-16', 'DIVISION CIRCULARS', 'active'),
(2010, '13611152022', 'PHILIPPINE CHRISTIAN UNIVERSITY GRADUATE DEGREE PROGRAMS', 'http://depedmanila.net:5000/d/s/uzez4JzD8cLJwp0VeWlvJPxycHoKbepO/FilzyJVSBbVSLlxdQF99KA-XKwT5aJh8-Y7Pg-cC3uQo', '136', '2022-11-15', 'DIVISION ADVISORIES', 'active'),
(2011, '13711162022', '88TH NATIONAL BOOK WEEK CELEBRATION', 'http://depedmanila.net:5000/d/s/uzez4LY0M4fkT5YCZ38uoWfwrnIBtliX/6ajGZUpBobU1XmJUjhsFfFi3MP-M0f9s-IbMgMXW3uQo', '137', '2022-11-16', 'DIVISION ADVISORIES', 'active'),
(2012, '39411162022', '2022 TUKLAS TALENTO CONTEST IN PARTNERSHIP WITH THE MANILA ANTI-DRUG ABUSE COUNCIL (MADAC) SUPPORT BY THE MANILA PEACE AND ORDER COUNCIL (MPOC)', 'http://depedmanila.net:5000/d/s/uzez4KPbpkUX9vL2tuNefRJODLixfWqC/Pig9MbaEbYYzc4i6ZST_AxOvnfm5Nggr-G7NAK2-3uQo', '394', '2022-11-16', 'NUMBERED MEMORANDUM', 'active'),
(2013, '', 'PROJECT WRAP: (WRITING READING and ARITHMETIC PROGRAMS) M&E TRAINING FOR SUPERVISORS AND SCHOOL HEADS', 'http://depedmanila.net:5000/d/s/uzez4ULZOQiEk7EktAZaMUaMF94CCIuQ/LzZi6jwdeSyo1k1xEmThy8UL1ZEx58sO-9LKAS4a2uQo', '398', '2022-11-17', 'NUMBERED MEMORANDUM', 'active'),
(2014, '41111232022', 'CONSULTATIVE MEETING ILRC WORK & FINANCIAL PLAN', 'http://depedmanila.net:5000/d/s/uzez4QnaGSIRvZQBrLk3p6d4vywd6YsR/-Tnl_Uw9vjVEQCbVfAutpD7iQsGgyOq1-9LFAc4uzuQo', '411', '2022-11-23', 'UNNUMBERED MEMORANDUM', 'active'),
(2015, '', 'SCHOOL DISASTER RISK REDUCTION MANAGEMENT COORDINATORS MEETING', 'http://depedmanila.net:5000/d/s/uzez4QNBZKUIdxUFT72zh0727SP2SqlS/GfzKqRVSL5rgpzKv4u-IcHrjZTrma8hD-FbMAT2i3uQo', '0', '2022-11-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2016, '40911162022', 'VIRTUAL CELEBRATION OF NATIONAL STUDENTS DAY 2022', 'http://depedmanila.net:5000/d/s/uzez4Sdyc0lZ6Dz4UkF2GLSQoKO54jVJ/7i5qQRSAEXQ1LkHF7g8iaK9XF5tP3Aa--C7NA7lu3uQo', '409', '2022-11-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2017, '39711172022', 'PARTICIPATION IN THE WEBINAR-WORKSHOP ON SCIENCE TEACHING IN THE 21ST CENTURY', 'http://depedmanila.net:5000/d/s/uzez4XT9pGhijjaQE2o73PVjjA67S2hD/w_WOhTLVbqw2kckFB5Dm2ICOpB_GpbfG-wLJAyem0uQo', '397', '2022-11-17', 'NUMBERED MEMORANDUM', 'active'),
(2018, '40011182022', 'SEMINAR WORKSHOP ON SCHOOL FINANCIAL PLANS FY 2023 FOR NON-IMPLEMENTING UNITS', 'http://depedmanila.net:5000/d/s/uzez4WKlIwTOCATKYjBFoo0EOKMpSBzm/SRsaEsfIg1_MCcd9GvCIH0_eZ2rjHlO2-qLJg48K0uQo', '400', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2019, '40111182022', 'SEMINAR WORKSHOP ON SCHOOL FINANCIAL PLANS FY 2023 FOR IMPLEMENTING UNITS', 'http://depedmanila.net:5000/d/s/uzez4WtxZ6F3uugEtub9Ijuw5n8dRVzh/LmMRk49q5y9nlObmDjin2kX41b2cukX4-orLAaL20uQo', '401', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2020, '40311182022', 'WINNERS IN THE 2022 DIVISION MUSABAQAH', 'http://depedmanila.net:5000/d/s/uzez4ixubODrF7Am5brMpldB2wHGRRNf/vEJv1RNDzkVFN_ZvXKqKPiM6d8kra64i-mrKA9ba0uQo', '403', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2021, '40411182022', 'WINNERS IN THE 2022 NATIONAL ROBOTICS COMPETITIONS', 'http://depedmanila.net:5000/d/s/uzez4oV5doFqBzwpIdlmwsKtvAOqHZQm/Lj5eSoTeLgifC4RzYAJOoEKvQPa-eOl_-kbKARLG0uQo', '404', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2022, '40211172022', 'PROJECT ATM: AWIT AT TULA SA MATEMATIKA', 'http://depedmanila.net:5000/d/s/uzez4neIFYMTUwoz4k1JEu2FmTiOGQrS/7mtXZKO7iFzeiJpUZGI9n6x4AUfNf5gg-uLKgF-C0uQo', '402', '2022-11-17', 'NUMBERED MEMORANDUM', 'active'),
(2023, '40511152022', 'SPECIAL ORDER - DR. MANUEL S. SOTELO - OIC HOSPITAL DIRECTOR', 'http://depedmanila.net:5000/d/s/uzez4ReNeirYAahS7MJvGtqiP0hE1TZn/DFdeSoKqhDN4cbpNbHVwVm_y3Otg3UHL-XLMgsbq3uQo', '405', '2022-11-15', 'NUMBERED MEMORANDUM', 'active'),
(2024, '8111182022', 'BSP Manila Council Annual Council Meeting', 'http://depedmanila.net:5000/d/s/uzez4rCHNUHmeoRbRYWQd6ORTpQ7PTua/khcMM01I9_SZaFyeNssdXHG2wbEAV7Mf-g7JgxJ20uQo', '81', '2022-11-18', 'DIVISION CIRCULARS', 'active'),
(2025, '13911182022', 'UPDATED TIMELINE OF ACTIVITIES FOR MAPESPA SCHOOL LEADERSHIP SUCCESSION PROGRAM', 'http://depedmanila.net:5000/d/s/uzez4qlsgMkFFKPya15BvOmHDXTfSQY0/uck4aJc6oGLshJgt052WNyIVVLw5AfFn-fLJABZi0uQo', '139', '2022-11-18', 'DIVISION ADVISORIES', 'active'),
(2026, '41311182022', 'CAPACITATING ADMINISTRATIVE ASSISTANT II PERSONNEL (SENIOR HIGH SCHOOL) IN PERFORMING REGISTRAR I FUNCTIONS', 'http://depedmanila.net:5000/d/s/uzez4sl4awxe4ugpWA1WQIE1pHXKp8Ws/IkrZjlxgDmG_J0PFhtfJBpRM0Gu8ypH_-drKgsZG0uQo', '413', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2027, '', 'Designation Order (Roniko Natividad)', 'https://gofile.me/71xfF/QFMKRCSyE', '384', '2022-10-07', 'UNNUMBERED MEMORANDUM', 'active'),
(2028, '40911182022', 'REITERATION OF THE GUIDELINES ON TLE-EXPLORATORY COURSES', 'http://depedmanila.net:5000/d/s/uzez4ruHCicUS54CgbscAMs5i9yYRiJi/_I_7CRkLRnWxroc1mcBVKMkN1yscglm_-b7LgQYq0uQo', '409', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2029, '41311212022', 'Consultative Meeting on Cancer Awareness and Orientation on HPV Immunization Program', 'http://depedmanila.net:5000/d/s/uzez4tKGr6jqOsXLQvLIUiM9XKprHpJ5/jGKTALt4HICIhzkap9dIraB1DC2fN0_O-GbLAwsGzuQo', '413', '2022-11-21', 'UNNUMBERED MEMORANDUM', 'active'),
(2030, '41111182022', 'OPTIONAL WEARING OF FACE MASKS INDOORS', 'http://depedmanila.net:5000/d/s/uzez4aALZ02Ks1UVkcT3RXQFYCsnA9ng/LQMIBV4LqNr60NAL8M5lygRM8tlqzXkm-ZbKgN3y0uQo', '411', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2031, '41211182022', 'RECONSTITUTION OF THE PEOPLES LAW ENFORCEMENT BOARD (PLEB) FOR THE SIX (6) LEGISLATIVE DISTRICTS OF THE CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzez4Zb9Iqd61hxmrsuc5hOYWtC9jBGN/f1i06FaKFzA-QzT9SFT7k6_uInp8aZya-XrKgn3a0uQo', '412', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2032, '40611182022', 'AMENDMENT OF EXECUTIVE ORDER NO. 53 SERIES OF 2022 ON THE RECONSTITUTION OF THE PEOPLES LAW ENFORCEMENT BOARD (PLEB) FOR THE SIX (6) LEGISLATIVE DISTRICTS OF THE CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzez4Yt9TcXOLOQOMwa84WR3Frxrd5kE/yi7UsNCOitBMtRt_yF_N-yWjoLU4ejfY-WLLAv3C0uQo', '406', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2033, '41011182022', 'RESOLUTION NO. 219 SERIES OF 2022', 'http://depedmanila.net:5000/d/s/uzez4ZAkbiI3clC62NfKsN8q86qI1tCU/vIzV7AFzSSrwN50gABM_-AlZlVKPo0F_-UbIg5Gq0uQo', '410', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2034, '38211182022', 'RESOLUTION NO. 203 SERIES OF 2022', 'http://depedmanila.net:5000/d/s/uzez4VLALgfLlfgkWKnTlOEKzxXMrSEy/kE0_OWsiOjnISi_bl-4i6kq-EzPrFTVC-S7LgGGW0uQo', '382', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2035, '42111222022', 'SEMINAR-WORKSHOP ON MAINSTREAMING GENDER SENSITIVITY FOR SCHOOL GENDER AND DEVELOPMENT (GAD) FOCAL PERSONS', 'http://depedmanila.net:5000/d/s/uzez575ofq02bbfRJggnojJX6jzAlo3l/xz8kzf4UFRuj73BwsJZLyVeT6BpMhY_W-CbIA-qWzuQo', '421', '2022-11-22', 'NUMBERED MEMORANDUM', 'active'),
(2036, '8411242022', 'Manila Council, BSP Regular Executive Board Meeting', 'http://depedmanila.net:5000/d/s/uzez4yieKW04ZhbkynVrFxFiT1MvDXCw/0sxtc5M-I3n0b9AIUI1eSH7tDBcV7TAy-47GgnnOzuQo', '84', '2022-11-24', 'DIVISION CIRCULARS', 'active'),
(2037, '366102722', 'WINNERS IN THE 4TH NATIONAL COMPETITION ON STORYBOOK WRITING (DIVISION MANUSCRIPT SCREENING)', 'https://gofile.me/71xfF/qIFzRM0vg', '366', '2022-10-27', 'NUMBERED MEMORANDUM', 'active'),
(2038, '42411252022', 'CRAFTING AND FINALIZATION OF WORK AND FINANCIAL PLANS (WFPs)', 'http://depedmanila.net:5000/d/s/uzez55xQ9Yy1thz085cr7Tg6Vih8miFW/qs4SEmNdo67eDGT-eAhb6PBN6UwH-eUN-grGAU9uyuQo', '424', '2022-11-25', 'NUMBERED MEMORANDUM', 'active'),
(2039, '8311212022', 'TUKLAS TALENTO CONTEST SCREENING COMMITTEE MEETING', 'http://depedmanila.net:5000/d/s/uzez4xIeg8ndNt7JM351qLjtQ19QoUbN/BqYi8pg87Ixwx3iBtg7bikB9TUPiMTO4-ELJANa-zuQo', '83', '2022-11-21', 'DIVISION CIRCULARS', 'active'),
(2040, '13811182022', 'ADOLESCENT HEALTH AND DEVELOPMENT TRAINING FOR MAPEH TEACHERS', 'http://depedmanila.net:5000/d/s/uzez52GdSWVTcfbfeeQmPG78RZ3Q0BOh/c4fd0RFe8uYlSRGU_UBBuk8k_t4Vg6P3-Q7KgIlS0uQo', '138', '2022-11-18', 'DIVISION ADVISORIES', 'active'),
(2041, '40511082022', 'FACE-TO-FACE REFRESHER TRAINING OF SELECTED GRADE 11 LEARNERS ON THE ONLINE LEARNING MANAGEMENT SYSTEM (QUIPPER VIDEO)', 'http://depedmanila.net:5000/d/s/uzez55X1SQyvvMnwDDiPiPO5psRoUrBW/jA_5l3q7Vmr7dQsxd2m6561nALKwezDG-xrRgBsm7uQo', '405', '2022-11-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2042, '8011182022', 'FEU - MR. CARL JOSEPH JAMOSIN - REQUEST FOR PERMISSION TO INVITE PARICIPANTS FROM SENIOR HIGH SCHOOLS WITH STEM PROGRAM TO TAKE ONLINE PRE-TEST AND TRAINING NEEDS ANALYSIS', 'http://depedmanila.net:5000/d/s/uzez51qElOGCDuentAdzSV66cxvTOKF7/v9LJ4tgrusejFDoD1uPvlsV6p1hwtn_x-PLIAJ0m0uQo', '80', '2022-11-18', 'DIVISION CIRCULARS', 'active'),
(2043, '761182022', 'CONDUCT OF OUTREACH ACTIVITIES INVOLVING PARENTS AND/OR CARETAKERS OF CHILDREN WITH SPECIAL NEEDS', 'http://depedmanila.net:5000/d/s/uzez51Pq4GEbGXdE4VxCtr8qT6llmQF6/rltHI3IZ_i5pChVXrkT0yn5wBuyV4Pad-NbJgxj60uQo', '76', '2022-11-18', 'DIVISION CIRCULARS', 'active'),
(2044, '70102122', 'MASS INVITATION FOR PLANNED GATHERING IN EACH SCHOOL WITHIN THE MANILA AREA', 'https://gofile.me/71xfF/5TiMw82af', '70', '2022-10-21', 'DIVISION CIRCULARS', 'active'),
(2045, '11212022', 'INDIE-SIYENSIYA FILMMAKING COMPETITION', 'https://gofile.me/71xfF/EvmdzExF4', '126', '2022-09-29', 'DIVISION ADVISORIES', 'active'),
(2046, '11212022', 'ENDORSEMENT OF CATECHISTS OF THE CATECHETICAL FOUNDATION OF ACHDIOCESE OF MANILA (CFAM)', 'https://gofile.me/71xfF/hMDXF3VWb', '64', '2022-09-30', 'DIVISION CIRCULARS', 'active'),
(2047, '7111042022', 'GIRL SCOUTS OF THE PHILIPPINES - DISTRICT CHAIRMANSHIP', 'http://depedmanila.net:5000/d/s/uzez518EwA8HInHcbOqKlE9rhI2wvdxn/xLVxpJWkvhPZoV6NclZXiNwUmzRtSrvd-KrVgpJm8uQo', '71', '2022-11-04', 'DIVISION CIRCULARS', 'active'),
(2048, '41411242022', 'SPECIAL ORDER - MR. PABLITO A. ABEJERO - OFFICE IN CHARGE ', 'http://depedmanila.net:5000/d/s/uzez5AvOvuP674WXCwH9RxzMJdacvO62/T_qYgT8njl_TK19bFJrKvfoiFVB3PP-b-0rGgM0mzuQo', '414', '2022-11-24', 'NUMBERED MEMORANDUM', 'active'),
(2049, '41611142022', 'THE TRAFFIC MANAGEMENT COMMITTEE', 'http://depedmanila.net:5000/d/s/uzez5A4bXglqw9Qg4dEyGVfoIcXqgBBC/1o7oNaApjHNpJOfg07-rrcLMDcyT5LJ--VrHg34yyuQo', '416', '2022-11-14', 'NUMBERED MEMORANDUM', 'active'),
(2050, '41711242022', 'AMENDMENT OF EXECUTIVE ORDER NO. 50, SERIES OF 2022 ON THE COMMITTEE AWARDS FOR DISPOSAL OF UNSERVICEABLE PROPERTIES', 'http://depedmanila.net:5000/d/s/uzez5BUbC4BwvkQAoUvBtuK1lS7Yklck/G0QUj7P1aFk3QvhwFpH3AQ0s8fpaltbr-y7GgAUOzuQo', '417', '2022-11-24', 'NUMBERED MEMORANDUM', 'active'),
(2051, '41811182022', 'OFFICIAL SOCIAL MEDIA ACCOUNTS', 'http://depedmanila.net:5000/d/s/uzez5FBNt61HeShGIo0yzzvuk7itTYIz/NjA69U-Kdbl4I96VdRadVqG60MrgG4V2-LrLg0DK0uQo', '418', '2022-11-18', 'NUMBERED MEMORANDUM', 'active'),
(2053, '42011242022', 'SPECIAL ORDER - JOHANNA MAUREEN APPLE NIETO RODRIGUEZ - ACTING VICE MAYOR AND PRESIDING OFFICER', 'http://depedmanila.net:5000/d/s/uzez5C3nSE6BZhePG2RNECLIkMska2X6/XistSWCuDt21yGest4qojJkVfqVohgqJ-xbFA2jyzuQo', '420', '2022-11-24', 'NUMBERED MEMORANDUM', 'active'),
(2054, '42211242022', 'CREATION OF THE LOCAL NUTRITION COMMITTEE', 'http://depedmanila.net:5000/d/s/uzez5CUC9M2TwGBhGiJ6T6RA6Hs3PU6H/mjZDtSwxqNeKNHFyGKcrh0pYZtqHyC7y-vrEgKTezuQo', '422', '2022-11-24', 'NUMBERED MEMORANDUM', 'active'),
(2055, '42311242022', 'RECREATION OF THE GENDER AND DEVELOPMENT (GAD) FOCAL POINTS SYSTEM OF THE CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzez5EkzByb72kpbjSLyXnmjsGYeouQA/u18CckLwNCTZQITRjKjo_yhyqhUUgMgY-TrGA4GyyuQo', '423', '2022-11-24', 'NUMBERED MEMORANDUM', 'active'),
(2056, '41511242022', 'CITY COUNCIL - ENCLOSED COPY OF RESOLUTION NO. 236, SERIES OF 2022', 'http://depedmanila.net:5000/d/s/uzez57NPnwZVBP1C3yU7MkK4WCwnOaps/pVx6Zk0cl_Os5TV8lw_Pd8eyXieHQEtl-eLFgaayyuQo', '415', '2022-11-24', 'NUMBERED MEMORANDUM', 'active'),
(2057, '41911242022', 'CITY COUNCIL - ECLOSED COPY OF RESOLUTION NO. 253, SERIES OF 2022', 'http://depedmanila.net:5000/d/s/uzez57noV4bT3nCR5LOytvO7YCVCfdPk/JTq00M2I7OfFDZYwIWtu4P7uWhPpnudt-sbEggSKzuQo', '419', '2022-11-24', 'NUMBERED MEMORANDUM', 'active'),
(2058, '42511282022', 'REOPENING OF THE LEARNER INFORMATION SYSTEM (LIS) BEGINNING-OF SCHOOL-YEAR (BOSY) ENROLLMENT AND UPDATING FOR SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzez5FbmaE07hw9QOS9QtlFHE1bdhEF2/LIlqsAe1Y8Ku1X55tUIrAlNh5ZQQTAxu-RrEA7l6yuQo', '425', '2022-11-28', 'NUMBERED MEMORANDUM', 'active'),
(2059, '42611162022', 'WEBINAR ON INCLUSIVE EDUCATION FOR UNTRAINED CID SUPERVISORS AND GRADE 3 & 9 RECEIVING TEACHERS: A CONTINUING ORIENTATION PROGRAM', 'http://depedmanila.net:5000/d/s/uzez5GkB6YhmNRo1KcsiM0wMtjKhfEz0/Nq8nC_cYuxMe0DQDQQHDpcki1tRhnHIy-OrFg5EKyuQo', '426', '2022-11-16', 'NUMBERED MEMORANDUM', 'active'),
(2060, '42711282022', 'DRY RUN AND FIELD TESTING OF THE DIVISION HUMAN RESOURCE INFORMATION SYSTEM', 'http://depedmanila.net:5000/d/s/uzez5GSZySqybwIKXNTQQVdP6G6hgIKU/0XDWGUdTDDhNaZXTSPvXzEdB9EBA4Wkz-M7GgQzeyuQo', '427', '2022-11-28', 'NUMBERED MEMORANDUM', 'active'),
(2061, '', 'MEETING ON LIS BOSY ENROLLMENT FOR SY 2022 -2023', 'http://depedmanila.net:5000/d/s/uzez5H1mEe3zIy6p57cTNlfoL4ja0UKP/N0fcSC5I50qoa9JvBC7Fif6cAoaNomMu-KLEgdCOyuQo', '415', '2022-11-28', 'UNNUMBERED MEMORANDUM', 'active'),
(2062, '422120622', 'DEPED K-12 G.A.B.AY.FOR PRIVATE SCHOOLS: IN GRATEFUL RETROSPECTION', 'http://depedmanila.net:5000/d/s/uzez2wgkWY8C44xHkXGqQVJJ2dchbiZV/ylTuKmC4KtOPFd-VBQpybpTgpQeJ_LhX-pbCAG-ewuQo', '422', '2022-12-06', 'UNNUMBERED MEMORANDUM', 'active'),
(2063, '443120622', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENTOF MONETIZATION OF LEAVE CREDITS FOR FY 2022', 'http://depedmanila.net:5000/d/s/uzez2mKOGuHDbHIhblIYr5r8FAHZ63JN/be-fqGrnJ7PLcOKIXGs7qPFYmoohaVqf-n7BAt9-wuQo', '443', '2022-12-06', 'NUMBERED MEMORANDUM', 'active'),
(2064, '439120622', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENTOF LOYALTY CASH AWARD (LCA) FOR FY 2022', 'http://depedmanila.net:5000/d/s/uzez2klb3WCGAuJDLIVrr22RqDkuUYJ9/JoM36mFHTir8hrQNXiTqBLIU-0ZnoYPi-mbAA2dmwuQo', '439', '2022-12-06', 'NUMBERED MEMORANDUM', 'active'),
(2065, '438120622', 'PARTICIPATION TO THE TURANDOT OPERA SCREENING ON DECEMBER 7, 2022 AT CULTURAL CENTER OF THE PHILIPPINES', 'http://depedmanila.net:5000/d/s/uzez2q9yWsk2MlOoGLxaJyGbSRb2rNdp/3KBa5Jxxsyq4hYVr66-8beZoQcxR88uY-krDgGNKwuQo', '438', '2022-12-06', 'NUMBERED MEMORANDUM', 'active'),
(2066, '435120222', 'ENDORSEMENT OF PROJECT MANAGEMENT FOR CAREER READINESS', 'http://depedmanila.net:5000/d/s/uzez2a7dg0AZChuxyDcehqVtWGltJEU8/k_TZjw-0HgNMg4zyavXmG4qOhv1mfJC5-BbHgVOKxuQo', '435', '2022-12-02', 'NUMBERED MEMORANDUM', 'active'),
(2067, '433120222', 'REORIENTATION AND REVISITING THE DUTIES AND FUNCTIONS OF ADMINISTRATIVE OFFICER II, ADMINISTRATIVE OFFICERI (SUPPLY OFFICER I) AND ADMINISTRATIVE ASSISTANTS II AND III', 'http://depedmanila.net:5000/d/s/uzez2s0MsM8sO4D5ENkAUUEDLgHu2xrz/BwUfWvvgbPDnAHmXP9jpEc_JSQCHUSRB-6bBgO1SxuQo', '433', '2022-12-02', 'NUMBERED MEMORANDUM', 'active'),
(2068, '432120222', 'SEAL OF OFFICE ACHIEVEMENT AND REFORM (SOAR) 2022 EXEMPLARY SCHOOL HEAD AND EMPLOYEE AWARDS', 'http://depedmanila.net:5000/d/s/uzez2qryM4fMKpaSHH4u22hYkYhMCheb/bRByqG6Ix3eYxbmQ1s1TIKfaOOK-V48O-8LAg1WCxuQo', '432', '2022-12-02', 'NUMBERED MEMORANDUM', 'active'),
(2069, '434120222', 'REOPENING OF APPLICATION FOR EDUCATION PROGRAM SUPERVISOR', 'http://depedmanila.net:5000/d/s/uzez2aY2N8Uu4Rpw9Zn1OdpKv5zUHdcE/I19VKe07BpmG6EYm1mMYD1NwsN-NNZYU-C7FAle2xuQo', '434', '2022-12-02', 'NUMBERED MEMORANDUM', 'active'),
(2070, '431120222', 'SCHEDULE OF MONTHLY PROFESSIONAL MEETINGS OF TEACHER-IN-CHARGE OF PHYSICAL EDUCATION AND SCHOOL SPORTS (TCPESS)', 'http://depedmanila.net:5000/d/s/uzez2ZhEyswX5jExRz4nSmp5dMFYAhTB/Vle3xeTxwtiE56ehrly0A1sEwfav_eYV-ErGgFvyxuQo', '431', '2022-12-02', 'NUMBERED MEMORANDUM', 'active'),
(2071, '430120122', 'CONDUCT OF INTERVIEW, EVALUATION OF DOCUMENTS, AND TEACHING DEMONSTRATION FOR TEACHER I APPLICANTS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzez2MvI7wszjzwJ3UqtXdV2G9uF9Uz6/pdAgyh9h86tsRNyeTex3sXOnxaT_bw7P-GbGAqAyyuQo', '430', '2022-12-01', 'NUMBERED MEMORANDUM', 'active'),
(2072, '', '88TH NATIONAL BOOK WEEK CLOSING CEREMONY', 'http://depedmanila.net:5000/d/s/uzez5A4bXglqw9Qg4dEyGVfoIcXqgBBC/1o7oNaApjHNpJOfg07-rrcLMDcyT5LJ--VrHg34yyuQo', '416', '2022-11-28', 'NUMBERED MEMORANDUM', 'active'),
(2073, '440120222', 'CHRISTIAN WORKERS MOVEMENT MULTI-PURPOSE COOPERATIVE (CWMMC) SPECIAL GENERAL ASSEMBLY ', 'http://depedmanila.net:5000/d/s/uzez33DWWAfDGhBaFKWChezFz9LAkQdk/ikTEQ9qKNG-nJoTYJiLntS-i56nLKmCM-3LDA1zOxuQo', '440', '2022-12-02', 'NUMBERED MEMORANDUM', 'active'),
(2074, '85120222', 'Proposed Career Orientation Activities for Grade 9 and 10 students', 'http://depedmanila.net:5000/d/s/uzez2z6L8AI7cKwIeTv4r4uAVnSQXK0F/JfkgUQSxmmf5JbZ8_06bXYYRRi8AQrLh-1bAg0yqxuQo', '85', '2022-12-02', 'DIVISION CIRCULARS', 'active'),
(2075, '88120722', 'YWCA FOUNDERS FEDERATION OF THE PHILIPPINES - WE LOVE Y RAFFLE', 'http://depedmanila.net:5000/d/s/uzez39B6FeMJ1n9Hp7dy0UPXyZe7TVRC/3y3I7F-9wf-9ymZHB-KCzBH8_Jw9vMLW-ibCg3a2wuQo', '88', '2022-12-07', 'DIVISION CIRCULARS', 'active'),
(2076, '445120722', 'VACANCIES FOR NONTEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzez39bUwm5LzXK5DBljYdJPqtRtXNwo/oQcX5glmhnFQPRYuOIrw2BhelqDGZE3G-grDAb6WwuQo', '445', '2022-12-07', 'NUMBERED MEMORANDUM', 'active'),
(2077, '423120722', 'MICROSOFT YOUTH AMBASSADOR (MYA) PROGRAM GRADUATION CEREMONY', 'http://depedmanila.net:5000/d/s/uzez3OvpyQ7ZhJ31XJB59uhoVQXtcHiw/M0oNdA3J_fxVYixGi5zKCRqd91e02HC3-fLAg_J6wuQo', '423', '2022-12-07', 'UNNUMBERED MEMORANDUM', 'active'),
(2078, '448121222', 'TRAINING WORKSHOP ON LANGUAGE ENHANCEMENT AND PEDAGOGY (LEaP) FOR ASATIDZ', 'http://depedmanila.net:5000/d/s/uzez1VhVD2AXat3nnxr1HWJzzxiM6GSO/SiqwpmBn3ADmqx2eZ9c-pDoXz5zTP63--c7CAa4WwuQo', '448', '2022-12-12', 'NUMBERED MEMORANDUM', 'active'),
(2079, '449121222', 'MANILA PUBLIC SECONDARY SCHOOL HEAD TEACHERS ASSOCIATION (MAPSESHTA) OFFICERS FOR SCHOOL YEARS 2022-2023 AND 2023-2024', 'http://depedmanila.net:5000/d/s/uzez1V8IwszENNkKxkXxjgRsT59JU7Bp/d_KS505ZVt0AyFZcPnuZh0z4LFDoQhSa-bLAgln-wuQo', '449', '2022-12-12', 'NUMBERED MEMORANDUM', 'active'),
(2080, '451121222', 'WEBINAR ON CERVICAL CANCER AWARENESS', 'http://depedmanila.net:5000/d/s/uzez1XpUgelUiAHsZpSUGnPdr24hkU0g/cvqsJDym9MaIXmgjDAHVgqGMBBF1n1pr-ZrCg9HmwuQo', '451', '2022-12-12', 'NUMBERED MEMORANDUM', 'active'),
(2081, '424121222', '2ND LEARNING ENGAGEMENT AND MANAGEMENT MEETING OF SECONDARY JOURNALISM', 'http://depedmanila.net:5000/d/s/uzez1YFtNmQhUssD1u0yL4P21s4WqkuP/tACjf5PoBjA7mjdH9tU-e5U6zRy8ptM3-X7DAG3GwuQo', '424', '2022-12-12', 'UNNUMBERED MEMORANDUM', 'active'),
(2082, '441120222', 'RECONSTITUION OF THE COMMITTEE ON AWARDS ON THE LEASE OF PATRIMONIAL PROPERTIES', 'http://depedmanila.net:5000/d/s/uzez1dMfj818hHveQc9SYvBSn0SzgAkm/umoFwkeejV70sPg_995hENvfMmLfZCap-179ASLevuQo', '441', '2022-12-02', 'NUMBERED MEMORANDUM', 'active'),
(2083, '442120222', 'SPECIAL ORDER - AUTHORIZED TRAVEL ABROAD - VICE MAYOR', 'http://depedmanila.net:5000/d/s/uzez1dn4QGs2937aJElXyfD6ueNgXsxb/jZbABL-0Spx0S2df9sreMl1_KLbokIC0-zr-g86qvuQo', '442', '2022-12-02', 'NUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(2084, '446120522', 'SPECIAL ORDER - OFFICER IN CHARGE - MR. RICHARD F. ZACARIAS', 'http://depedmanila.net:5000/d/s/uzez1eMGgS26cntAJFAPve82Y5XEtaAw/oE3LYmm0PFAT2cvRkp2J9EqdNBVoBys_-xb8Au6CvuQo', '446', '2022-12-05', 'NUMBERED MEMORANDUM', 'active'),
(2085, '447120522', 'SCHEDULE OF THE REGULAR-FLAG RAISING CEREMONY', 'http://depedmanila.net:5000/d/s/uzez1itqlg6LSeSFCOQa1Xt8mU0rQs92/ustQmrUhWhSqucOsZdySyi9qQOUzd2XT-o7_Aq3evuQo', '447', '2022-12-05', 'NUMBERED MEMORANDUM', 'active'),
(2086, '425121322', 'HOMEROOM GUIDANCE IMPLEMENTATION AND OTHER MATTERS', 'http://depedmanila.net:5000/d/s/uzez1h3SQ8CmOzpZ09dCtUabuoKNE9aF/5BScd4PmLnJ5ghdKQIcOwBMFPC9KHa8k-ULCgF1qwuQo', '425', '2022-12-13', 'UNNUMBERED MEMORANDUM', 'active'),
(2088, '91121322', 'MANILA COUNCIL, BSP SCOUTING ORIENTATION COURSE (SOC)', 'http://depedmanila.net:5000/d/s/uzez1fLrdin2ATyZo5utKhZ4pdZw27q6/oYb5cYrXvVVvXmvHp5-zMeCEVmixOJEl-6L_gSMyvuQo', '91', '2022-12-13', 'DIVISION CIRCULARS', 'active'),
(2089, '90121322', 'MANILA COUNCIL, BSP NATIONAL BOARD OF REVIEW FOR EAGLE SCOUT RANK AND VENTURER RANK', 'http://depedmanila.net:5000/d/s/uzez1cwH20QEwB8lQCfGybHiDMxJ963G/J9dVrNOd49AHOhxnHSBi6xXcXmopFMbR-9b-gntOvuQo', '90', '2022-12-13', 'DIVISION CIRCULARS', 'active'),
(2090, '89121322', 'CARE Ministries – ARAL Simula, Horizon Ministries', 'http://depedmanila.net:5000/d/s/uzez1Zft2ApyhiRBzoFAQwWP5vYLFzky/QxMpoCdjn3mSWyjjs0kir2ygvrwCIGQs--79AaNmvuQo', '89', '2022-12-13', 'DIVISION CIRCULARS', 'active'),
(2091, '452121322', 'PROGRAM IMPLEMENTATION REVIEW (PIR) FOR LIBRARIANS AND LIBRARY-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzez1hlSFMeTEmODvurLQu2ThOcEk73R/t0bwVn5XWa_dfxrYK_n8nchnbEvfy7F6-m7-AQ1qvuQo', '452', '2022-12-13', 'NUMBERED MEMORANDUM', 'active'),
(2092, '428121622', 'PARTICIPATION TO THE SCHOOL-BASED WASTEMANAGEMENT TO ENCOURAGE VOLUNTERISMIN THE ENVIRONMENT SECTOR', 'http://depedmanila.net:5000/d/s/uzez1kt2gEeTOXElJY7AB7FwyiJB7FkW/WZ4Oh4Mk_Hmk8W3-eBceIWeG2-q_d9IT-kb-Ahz6vuQo', '428', '2022-12-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2093, '455121522', 'MATHEMATICS MONTH CELEBRATION', 'http://depedmanila.net:5000/d/s/uzez1sPPdK9hZEpbYxKnPBMAoZNjf6E9/QJe766cejlNVddFJ4QGwl3DLiJ7tRF_S-iL9gUCyvuQo', '455', '2022-12-15', 'NUMBERED MEMORANDUM', 'active'),
(2094, '456121522', '1ST PROBLEM SOLVING MAPS (PSM) INTERNATIONAL SUMMIT PRESENTERS', 'http://depedmanila.net:5000/d/s/uzez1tGD1YZmLNgbKsTBzxUOsLOb9Zha/KyNKCChSOGv-4bTm0VFlu-5z_1scBHWJ-f7-AqfuuuQo', '456', '2022-12-15', 'NUMBERED MEMORANDUM', 'active'),
(2095, '457122022', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING-RELATED PERSONNEL', 'http://depedmanila.net:5000/d/s/uzez1y5OEmdJTHo70skxwFr5tIjhTePF/9I2s3ZOUPUdGz53X6pkTsPfTSFGCbe6i-d79gsOyuuQo', '457', '2022-12-20', 'NUMBERED MEMORANDUM', 'active'),
(2096, '458122022', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING PERSONNEL -ELEMENTARYLEVEL', 'http://depedmanila.net:5000/d/s/uzez1ywBd23vUilkfmmGpeLWeOz67JLz/ieRCIBXujmKIplbokOhHncGVePVpIHHU-cL8A8eCuuQo', '458', '2022-12-20', 'NUMBERED MEMORANDUM', 'active'),
(2097, '459122022', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHINGPERSONNEL –SECONDARY LEVEL', 'http://depedmanila.net:5000/d/s/uzez1zDml8wpD8ODxlInki6aSUaGMCxC/_7-PvBOtG4-83jPybrVvb4vDLVqg8aHw-ab_AgNWuuQo', '459', '2022-12-20', 'NUMBERED MEMORANDUM', 'active'),
(2098, '460122022', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHINGPERSONNEL –SECONDARY LEVEL', 'http://depedmanila.net:5000/d/s/uzez1zeBSGIowrix5CFmuO9OnI4BpiP8/YLKyOuEe2fQ1Mu51YO3GqZr6pdQlEqK8-Yr8g1MSuuQo', '460', '2022-12-20', 'NUMBERED MEMORANDUM', 'active'),
(2099, '461122022', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NON-TEACHINGPERSONNEL', 'https://gofile.me/71xfF/nXP58MoFt', '461', '2022-12-20', 'NUMBERED MEMORANDUM', 'active'),
(2100, '465122022', 'CONDUCT OF LOWER MEET SPORTS COMPETITIONS IN PREPARATION FOR THE 2023 PALARONG PAMBANSA', 'http://depedmanila.net:5000/d/s/uzez23cZHIJyAMdfsBispphj4II8fprw/1sl-Fxxr7A7yN48m1aefWSvMjo3EIiwr-Tr_g-qiuuQo', '465', '2022-12-20', 'NUMBERED MEMORANDUM', 'active'),
(2101, '464122822', 'DESIGNATION ORDER', 'http://depedmanila.net:5000/d/s/uzez21mAvoNqz3dujHJ492jIq0BNWte6/Jf9z-wmujfbvlhHozdL-aerMC5lRacZU-3r7As7StuQo', '464', '2022-12-28', 'NUMBERED MEMORANDUM', 'active'),
(2102, '429122822', 'ENHANCED PROCESSING REQUIREMENTS FOR PRIVATE SCHOOLSPERMIT TO OPERATE SCHOOL', 'http://depedmanila.net:5000/d/s/uzez28RkUW6Enq9hFuNc74muQgHxGXhC/gP3RXgh99FmjHn7NCjquy3cokgYU0gje-9L7A0tOtuQo', '429', '2022-12-28', 'UNNUMBERED MEMORANDUM', 'active'),
(2104, '0101032023', 'PROGRAMS, PROJECTS AND ACTIVITIEs (PPAs) IN PARTNERSHIP WITH THE MANILA ANTI-DRUG ABUSE COUNCIL (MADAC) SUPPORTED BY THE MANILA PEACE AND ORDER COUNCIL (MPOC_PROGRAMS, PROJECTS AND ACTIVITIEs (PPAs) I', 'http://depedmanila.net:5000/d/s/uzeyilbiCajvvrSf3HqGtMEsq1bM4xI8/sKvdiGAox8GrKlKc5l-_kbJTlIEqLfT8-Y74AfjusuQo', '1', '2023-01-03', 'NUMBERED MEMORANDUM', 'active'),
(2105, '468122922', 'RULES AND REGULATION ON THE MANUFACTURE, SALE, DISTRIBUTION OR USE OF FIRECRACKERS AND PYROTECHNIC DEVICES, INCLUDING THE CONDUCT OF COMMUNITY FIREWORKS DISPLAY WITHIN THE CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzeyjs12ZYQgC74TKFctOATwvBjRB45U/zepuIN0BZDcZQM7lcvM8KJmr45qDbe0k-qr4AawStuQo', '468', '2022-12-29', 'NUMBERED MEMORANDUM', 'active'),
(2106, '469122922', 'DECLARATION OF HALF-DAY WORK SUSPENSION FOR OFFICES IN THE CITY GOVERNMENT OF MANILA ON 23 AND 29 DECEMBER 2022', 'http://depedmanila.net:5000/d/s/uzeyjqJRn2mYh8WUMadxzqwja2pn2fBj/7ho7Sk7cqS_R8R0cAB_xneWBhd5-zW6t-sb5APRGtuQo', '469', '2022-12-29', 'NUMBERED MEMORANDUM', 'active'),
(2107, '470122922', 'SPECIAL ORDER - MS. JEAN B. JOAQUIN - OFFICER-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzeyjq1qewm2hMaIrmMisrB7va7xEtVY/_RayZ2XIxmOVxrn_HYZUr2747xKYPlrA-uL5gIB6tuQo', '470', '2022-12-29', 'NUMBERED MEMORANDUM', 'active'),
(2108, '471122922', 'SPECIAL ORDER - COUNCILOR JESUS \"TAGA\" FAJARDO JR. - ACTING VICE-MAYOR AND PRESIDING OFFICER', 'http://depedmanila.net:5000/d/s/uzeyjqjqUASGEkJRZMqzBqA6Xo8sIQAF/8qTOYngo0_BY3LLhwHRaUvHgBoLv9Bal-v75goimtuQo', '471', '2022-12-29', 'NUMBERED MEMORANDUM', 'active'),
(2109, '472122922', 'ENCLOSED COPY OF ORDINANCE NO. 8922, SERIES OF 2022', 'http://depedmanila.net:5000/d/s/uzeyjrJ2kKxLoXdojQrQSmgRrX7xZbsY/59DA_u0zWZ_nN0nQD9ajgOtlh_WJfc5v-xr6glzOtuQo', '472', '2022-12-29', 'NUMBERED MEMORANDUM', 'active'),
(2110, '473122922', 'SPECIAL ORDER - ENGR. GIDEON C. NAVARRO - OFFICER-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzeyjradsQ8S9ULpkGDuUrGzwFVuIhEQ/yFhMXRX1IdPLDnAyqOIrgTYwN5Ufu_1f-zr7AUFetuQo', '473', '2022-12-29', 'NUMBERED MEMORANDUM', 'active'),
(2112, '0201062023', 'PREPARATION AND SUBMISSION OF THE 2022 DIVISION ANNUAL ACCOMPLISHMENT REPORT', 'http://depedmanila.net:5000/d/s/uzeyk4MajqNfMF7NrKolpuGMk7suH87K/KJo9sQniwNw8FdUa95lahb8doEV6a9hR-Qr4gNtWruQo', '2', '2023-01-06', 'UNNUMBERED MEMORANDUM', 'active'),
(2113, '0301062023', 'WINNERS IN THE 2022 TUKLAS TALENTO CONTESTS', 'http://depedmanila.net:5000/d/s/uzeyjz70pSlNzWQL2Mvi1hHPSuHnALqs/RSkfVwNnYfmVif326VA8iwUavyMdElL--O74gpMaruQo', '3', '2023-01-06', 'NUMBERED MEMORANDUM', 'active'),
(2114, '0401052023', 'SUSPENSION OF WORK AND CLASSES IN ALL LEVELS IN THE CITY OF GOVERNMENT OF MANILA ON 09 JANUARY 2023, TO ALLOW DEVOTEES TO PARTICIPATE IN THE ACTIVITIES FOR THE FEAST OF THE BLACK NAZARENE', 'http://depedmanila.net:5000/d/s/uzeyk0obbsILytNZ5Ncg05hi3HRbDmYQ/VfPXl28FrTXTRWLcx3Ak7Xrx9HvCzy5c-Ub6AnQWsuQo', '4', '2023-01-06', 'NUMBERED MEMORANDUM', 'active'),
(2115, '0501052023', 'LIQUOR BAN FROM 07-09 JANUARY 2023 FOR THE PEACEFUL CONDUCT OF THE FEAST OF BLACK NAZARENE', 'http://depedmanila.net:5000/d/s/uzeyk2NOpGqJBmCv8AUjrliFIPGAGqYw/tnbgJIjIVJIYAMYetn3WSZSPN_e4Myrk-Sr4AyPuruQo', '5', '2023-01-06', 'NUMBERED MEMORANDUM', 'active'),
(2116, '0601052023', 'PREPARATION AND SUBMISSION OF THE DIVISION ANNUAL ACCOMPLISHMENT REPORT 2022', 'http://depedmanila.net:5000/d/s/uzeyk2ezxMJYYwROWaI4iboJ40kW7BXk/GMeBXXzbIL3GjiUD8S_a2-M2zf-KHDfr-NL5A9bqruQo', '6', '2023-01-06', 'NUMBERED MEMORANDUM', 'active'),
(2117, '0701062023', 'OPEN EDUCATIONAL RESOURCES (OER) DEEP DIVE DEPED MANILA AND KAISIPIN, INC. PARTNERSHIP', 'http://depedmanila.net:5000/d/s/uzeyk3ECDWeSbE0S5LbWhMlSBusHRazE/1hecFOceMAyIdnYM9vLj2ynTC1zsG-7S-Lb7gcrOruQo', '7', '2023-01-06', 'NUMBERED MEMORANDUM', 'active'),
(2118, '0301102023', 'SDO-MANILA EMPLOYEES SPORTSFEST (SUPERINTENDENTS CUP)', 'http://depedmanila.net:5000/d/s/uzeyhJuT2gCxtxddy5Qk6ByWJNM74ISX/-gUcmhjIFVPoGxecRM9CfdJ90zXRjBGB-_r2AhF-ruQo', '3', '2023-01-10', 'UNNUMBERED MEMORANDUM', 'active'),
(2119, '0901102023', 'VACANCIES, SCREENING AND SELECTION PROCESS OF ASATIDZ APPLICANTS FOR ARABIC LANGUAGE AND ISLAMIC VALUES EDUCATION (ALIVE)', 'http://depedmanila.net:5000/d/s/uzeyhVGQFkE9NHH5AvCPsHkfrJyVMET2/qDcWuXJvFyOrS34UFa3Z1Sji8dM-Q7Fd-9b3AXUyruQo', '9', '2023-01-12', 'NUMBERED MEMORANDUM', 'active'),
(2120, '1001112023', 'DISTRICT IV TEACHING DEMONSTRATION', 'http://depedmanila.net:5000/d/s/uzeyhVpcVu1XMX6dw9BDoaDgSfzTlZjC/ok-rUTu2v4AHqkND9J8nA2P38kvO3Lef-zb3AjwuruQo', '10', '2023-01-12', 'NUMBERED MEMORANDUM', 'active'),
(2121, '1101112023', '2022 RESEARCH JAMBOREE FOR BERF 2021 AND LAUNCHING OF REGIONAL RESEARCH JOURNAL 2022', 'http://depedmanila.net:5000/d/s/uzeyhikMwKFQ2hML7CLsX2S9TNWjGtrM/IzojcHSURZHeuDBxNp_7OM9EaxZAe72_-xb1gtP-quQo', '11', '2023-01-11', 'NUMBERED MEMORANDUM', 'active'),
(2122, '0401112023', 'Discussion on the Status, Issues and Concerns, Timeline Updates and Conversion Specifications of the Project under Conversion of Academic Classrooms into Inclusive Learning Resource Center (ILRC) Phas', 'http://depedmanila.net:5000/d/s/uzeyhjslScJ390Lc7hYFZSbv6DCdDl2R/VNjENyluSWrYoX2_ewvYVXThNQNxlwJp-v70ADvmquQo', '4', '2023-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(2123, 'SGODELIZ0111169', 'RECONSTITUTION OF THE REGIONAL, DIVISION AND SCHOOL LEVELS GENDER AND DEVELOPMENT (GAD) FOCAL POINT SYSTEM (GFPS)', 'http://depedmanila.net:5000/d/s/uzeyhNk3IeFHLhG2Xx3IYZgQfGE5uBrO/DVpvu-UdIKeT9XJNouugisc7fu_7FA6Y-s72A2tyquQo', '14', '2023-01-13', 'NUMBERED MEMORANDUM', 'active'),
(2124, 'CIDROCH0112772', 'COORDINATION MEETING ON THE CONDUCT OF THE SCHOOL LEARNING CONTINUITY & RECOVERY PLAN (LCRP) MONITORING & EVALUATION CONVERGENCE', 'http://depedmanila.net:5000/d/s/uzeyhQiqAUQG0oHp39ZALCo0r7i5hrh1/CL0Biur5R2SgUbqQHbaEeBKe9tDHijg9-gL0AHWKquQo', '6', '2023-01-13', 'UNNUMBERED MEMORANDUM', 'active'),
(2125, 'CIDROCH0112286', '4th KUMUSTAHAN SA AKLATAN (ACT OF SHARING KNOWLEDGE FOR LEARNERS’ ADVANTAGE AND PROVISION OF TECHNICAL ASSISTANCE NEEDED)', 'http://depedmanila.net:5000/d/s/uzeyhOaqgs8Ezq42FwtydYDQATsklzgH/MxDzISaVL2WbHYr_5iB4BlCknBUWsXCX-a72AVzOquQo', '16', '2023-01-13', 'NUMBERED MEMORANDUM', 'active'),
(2128, 'RCRDSDARN0111193', 'SPECIAL ORDER - MS. FRELYN M. MANIEBO - OFFICER-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzeyhniLiiOuLuol80vrSWOdcz43bDgw/4MoXDCPYgC76NALyVlq8URF0zwZGFKUe-Xr1AZSGquQo', '15', '2023-01-16', 'NUMBERED MEMORANDUM', 'active'),
(2129, '0301062023', '34TH DLSU-FOR THE KIDS (DLSU-FTK 2023)', 'http://depedmanila.net:5000/d/s/uzeyhXxbzSoDxfYgAZPQuoP7wOzwaLlp/aLV3560c9WrA6cstWKnagoJhbgjX4suK-Jr6AfairuQo', '3', '2023-01-17', 'DIVISION CIRCULARS', 'active'),
(2130, '0201062023', 'INTERNATIONAL EDUCATORS CONFERENCE 2023', 'http://depedmanila.net:5000/d/s/uzeyhYWoFcoOxCFgQdoyCnWXdNjxe8T8/r-4cHuWu9hEbxWvpcw5iUwt5NXVPYtyY-F74g8ZKruQo', '2', '2023-01-17', 'DIVISION ADVISORIES', 'active'),
(2131, '0301102023', 'CONDUCT OF SCHOOL MARKETING AND ADVOCACY', 'http://depedmanila.net:5000/d/s/uzeyhYxCwkCiUJlYddrtKh0dglFVcTzH/sB--zceSFbyFkwXapcgmwBra7xSJcM2I-5r1AYDyruQo', '3', '2023-01-17', 'DIVISION ADVISORIES', 'active'),
(2132, 'CIDNORS011086', 'SUPERVISORS LEADERSHIP TRAINING', 'http://depedmanila.net:5000/d/s/uzeyhZwnu0VcHZpMW7UYZDTNnezn8Izd/L3sSvVqK-A-jWTuB8PxRYggdF0kN2wqR-qr2gEc6quQo', '12', '2023-01-17', 'NUMBERED MEMORANDUM', 'active'),
(2133, 'CIDROCH0113186', 'MEETING FOR SENIOR HIGH SCHOOL (SHS) SCIENCE TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyhSi254oiXSWZnZ7kSZymudlU7gSe/yaFTtL_ILzCURIcnS2O-BxKh68m2p5Ew-eb1AK1SquQo', '8', '2023-01-13', 'UNNUMBERED MEMORANDUM', 'active'),
(2134, 'CIDROCH011352', 'National Achievement Test (NAT) for Grade 12 Other Concerns', 'http://depedmanila.net:5000/d/s/uzeyhUPcrWEveiMM75fwhiI1CIwFfkxX/rq1c35WnP_qrN-80XQkfbasPPyL8uvjg-Vr1AfBOquQo', '10', '2023-01-13', 'UNNUMBERED MEMORANDUM', 'active'),
(2135, 'SGODGAY 011374', 'RECOGNITION FOR LILOK AND TALA ADVOCATES', 'http://depedmanila.net:5000/d/s/uzeyhpYk4CO7c6fcfjq4xkW3n2t5A7zX/M5UtQB53W30ZkEVMDjmnNeTCeaVRbCox-Pr3g0OypuQo', '7', '2023-01-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2136, '0601162023', 'CHAPTER YOUTH ASSEMBLY - RED CROSS', 'http://depedmanila.net:5000/d/s/uzeyhmrYKUedUOANxboUF0ACJJa5hQbo/FX4qh0HpgQIgJFsALih_Z9dzSEq7bH5W-OL1gS-apuQo', '6', '2023-01-16', 'DIVISION CIRCULARS', 'active'),
(2137, 'sgodgay 0112978', 'SCHEDULE OF ACTIVITIES FOR 2023 BOTTOM-UP TECHNICAL ASSISTANCE (TA) DELIVERY ON SCHOOL GOVERNANCE  COUNCIL (SGC)', 'http://depedmanila.net:5000/d/s/uzeyi7rrxqCCfjbMEzFiwA6iioGCet5K/3RWNdzdxYbyypnnmwm7RtwrgvnDvMm_I-K71g2MWpuQo', '18', '2023-01-18', 'NUMBERED MEMORANDUM', 'active'),
(2138, 'SGODGAY 0117964', 'ADMINISTRATION OF THE NATIONAL ACHIEVEMENT TEST FOR GRADE 12 (NATG12) FOR SCHOOL YEAR 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyi8R4E0e5A9OynzfELuEd7ZtCMXcL/GjPQbg8RXu0MaJL75KVgUNPjhG3HkVrL-Hr3AvL2puQo', '19', '2023-01-18', 'NUMBERED MEMORANDUM', 'active'),
(2139, 'RECRTHAN0112494', 'VACANCIES OF NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeyi9ZSkINeW53xidWufTX9H54kK6s0/ZIdrFQRMqfBSpToFu7Wg8SdN7QqvfKZC-Eb1Ak7KpuQo', '20', '2023-01-18', 'NUMBERED MEMORANDUM', 'active'),
(2140, 'PUBLIABBI0117549', 'LIQUOR BAN IN THE AREAS OF STO. NINO DE TONDO PARISH AND STO. NINO PARISH PANDACAN FROM 14-15 JANUARY 2023, FOR THE PEACEFUL CONDUCT OF THE FEAST OF STO.NINO', 'http://depedmanila.net:5000/d/s/uzeyi714Zc5xzT4HnaAAU9o8GWbIuDYb/p70OqdIHK0bYra6v5Z4OC9o90YURZM0_-lL0As6-quQo', '17', '2023-01-18', 'NUMBERED MEMORANDUM', 'active'),
(2141, 'rcrdsdarn0106420', 'Aliwan Fiesta', 'http://depedmanila.net:5000/d/s/uzeyhvf7MkK8J78xAaaSVPTfLhvUmvdp/7IsaCVKPb7_xGwqtlZecl_8fSmd_GcRV-_byA95CpuQo', '7', '2023-01-18', 'DIVISION CIRCULARS', 'active'),
(2142, 'rcrdsdarn0113520', 'Club Advisers Orientation and Membership Kick-off', 'http://depedmanila.net:5000/d/s/uzeyhux7XYW2PZergEEn3TH70VWleN3x/RLCN26QulPizRCOaQIqD2p1Be0KTzhK_-97xgVIupuQo', '8', '2023-01-18', 'DIVISION CIRCULARS', 'active'),
(2143, 'RCRDSDARN0106129', 'SUBMISSION OF RECOMMENDATIONS FOR THE BSP NATIONAL AWARDS', 'http://depedmanila.net:5000/d/s/uzeyhzdVBi4BL9v8s7be3j37S1YdJvwQ/2bEx7ZvRG5Ytxti8bOblfwp8cido2yaM-8LzgAYWpuQo', '9', '2023-01-18', 'DIVISION CIRCULARS', 'active'),
(2144, 'RCRDSDARN0106426', '80TH ANNUAL COUNCIL MEETING & ELECTION OF REGULAR BOARD MEMBERS AND NOMINATION FOR MEMBERSHIP', 'http://depedmanila.net:5000/d/s/uzeyhyvVMW3r6eg0tnDSolZBsgqRsHtQ/vPhSrNP-BFIHLtZxLq-sLauafl60UH8J-6ryAFX6puQo', '10', '2023-01-18', 'DIVISION CIRCULARS', 'active'),
(2145, 'CIDNORS0116366', '2023 MATHEMATICS TEACHERS ASSOCIATION OF THE PHILIPPINES (MTAP) SATURDAY PROGRAMS IN MATHEMATICS FOR REGULAR AND TALENTED LEARNERS', 'http://depedmanila.net:5000/d/s/uzeyiHNQpQWpNtFFkSfLEmvGNyc4DMYN/52iTDy3Lridmz_M92UNS0OE5Pw1Rb-H3-4LwAjF-puQo', '4', '2023-01-20', 'DIVISION ADVISORIES', 'active'),
(2146, 'RCRDSDARN0111282', 'Career Talk - PCU', 'http://depedmanila.net:5000/d/s/uzeyiGoEZGNhjOWwuvFn7GQWIApc2Cfh/c2u7HiSWBO45wSUeJ3_CKPIm_EDXsy5v-2bzAJFipuQo', '13', '2023-01-20', 'DIVISION CIRCULARS', 'active'),
(2147, 'SGODGAY 01172', 'DIVISION PALARO 2023', 'http://depedmanila.net:5000/d/s/uzeyiCYFc4ada3QKtwK5jh9c3zxGSHNv/LzhKuVGj6QdctoNcPunQxd5nCAo1Hyw4-0rzgYlCpuQo', '22', '2023-01-19', 'NUMBERED MEMORANDUM', 'active'),
(2148, 'RCRDSKAEL0112465', 'Board Meeting and SMFD 2023 Raffle Draw', 'http://depedmanila.net:5000/d/s/uzeyiExqDmtclJ3Fk2RLgFSbYBSl6rHc/-GmFVrBKLjxB_W19Sz7qdnaZBEfapk9x-y7yg2UqpuQo', '12', '2023-01-19', 'UNNUMBERED MEMORANDUM', 'active'),
(2149, 'RECRTHAN0118354', 'CORRIGENDUM TO DIVISION MEMORANDUM NO.020, s .2023(Vacancies for Non teaching Personnel in the Division of City Schools, Manila)', 'http://depedmanila.net:5000/d/s/uzeyiHnpWYQWKY5U3sLYWcRYMostlzXH/vXgNyAjPLkqh2oCQYBucIMqawsnEWyh--vLzgNS-puQo', '13', '2023-01-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2150, 'ictstaf0123433', 'ART CERAMICS', 'http://depedmanila.net:5000/d/s/uzeyiFxRB2muAx9nw68VylcD19JmU6W5/SfsIgVWO9EhSBTNWznXpKCjcdg50gPHT-trygvSWpuQo', '5', '2023-01-20', 'DIVISION ADVISORIES', 'active'),
(2151, 'CIDNORS0116696', 'WINNERS IN VARIOUS INTERNTIONAL MATHEMATICS COMPETITIONS', 'http://depedmanila.net:5000/d/s/uzeyiDGFRIw5b0vYmsFwzPKaRuhZYLKP/i7cbRgl6syu5gXHgGIJ88MR2bNbP_jqK-xLwgL0CpuQo', '21', '2023-01-19', 'NUMBERED MEMORANDUM', 'active'),
(2153, 'SGODELIZ0123815', 'CONDUCT OF THE 1ST DIVISION LEARNING ENGAGEMENT AND MANAGEMENT (LEM) MEETING FOR 2023', 'http://depedmanila.net:5000/d/s/uzeyiM3oTe0arg4Uy43ZFtfFE99Yg0aC/SoutzJa6uNHAzlP1tiFbpY6_uvji98i9-mLxgnOaouQo', '26', '2023-01-23', 'NUMBERED MEMORANDUM', 'active'),
(2155, 'PUBLIABBI012341', 'STRENGTHENING THE LOCAL IMPLEMENTATION OF RESPONSIBLE PARENTHOOD AND REPRODUCTIVE HEALTH (RPRH)-RELATED PROGRAMS, PROJECTS AND ACTIVITIES', 'http://depedmanila.net:5000/d/s/uzeyiWhlrMHpPx5rqx5hktDB24FnUiML/VN9Dm0ktjL7L4_oP5jeA8gqUlqu0Odb3-kLwAV9youQo', '24', '2023-01-24', 'NUMBERED MEMORANDUM', 'active'),
(2156, 'SGODGAY 0123494', '2023 BASIC EDUCATION REPORT TASKING', 'http://depedmanila.net:5000/d/s/uzeyiZOxbAGdbA5qGUUdmGrSqRSMdO2X/qKS-9kE7lo4VnIqtzA9N8J8X3STX7vux-OrwghOOnuQo', '15', '2023-01-24', 'UNNUMBERED MEMORANDUM', 'active'),
(2157, 'ADMINMICH0119465', 'FILING OF SWORN STATEMENT OF ASSETS, LIABILITIES AND NET WORTH (SALN) AND DISCLOSURES OF BUSINESS INTERESTS AND FINANCIAL CONNECTIONS AND IDENTIFICATION OF RELATIVES IN THE GOVERNMENT SERVICES AS OF D', 'http://depedmanila.net:5000/d/s/uzeyiYplKy3m1d3jqekZMqtxqadfK1Fm/JeYgfnU7_rlRS5J1TfC7P36IvNMxEC56-ibxgs9SouQo', '25', '2023-01-24', 'NUMBERED MEMORANDUM', 'active'),
(2158, '0201232023', 'OM 002 s. 2023 SCHEDULE OF FIRST FRIDAY MASS FOR C.Y. 2023 AT THE MANILA CITY HALL', 'http://depedmanila.net:5000/d/s/uzeyiXyxwiuaPG7IPEDhrZmmgkwPmoK2/xmqE1ZB4lIsLchkcT4MX85GV5UmpJsQE-arwgX3WouQo', '2', '2023-01-24', 'OFFICE ORDER', 'active'),
(2160, ' CIDBREN0118396', 'the Organization of Technology and  Livelihood  Education – Educators of the Philippines,  Inc.  (OTLE-EP) 1st Convention', 'http://depedmanila.net:5000/d/s/uzeyibfkdoH6K0kA5dl8IGO0eSg5KmqD/9ln5SaDe6nZgXIlUiMAkN6kKNNrmI5Jx-87vg4wOnuQo', '7', '2023-01-26', 'DIVISION ADVISORIES', 'active'),
(2161, 'recrtale0125476', 'REQUEST TO ACCESS AND CONTINUOUSLY UPDATE GOOGLE SHEET FOR HRMS DATA VERIFICATION', 'http://depedmanila.net:5000/d/s/uzeyicNkT0GACOvlFvjb43puNjVI3x3w/fd4DjbCZJHZPC6i-L3Ul1lsPXqWB4OoS-xLugE3-muQo', '27', '2023-01-26', 'NUMBERED MEMORANDUM', 'active'),
(2162, '1701262023', 'Division Orientation on Basic Education Information System (BEIS) Data Gathering Forms for SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyie5LFYkRgZ1ysXIxPGMLaYePnW3x/viPRGMzTKsWWZSdEbN_C5DfJmn7qaR65-7Lsg-fmmuQo', '17', '2023-01-26', 'UNNUMBERED MEMORANDUM', 'active'),
(2163, 'RECRTDAR0124285', 'SUBMISSION OF UPDATED PERSONAL DATA SHEET (PDS) USING C.S. FORM NO. 212, REVISED 2017', 'http://depedmanila.net:5000/d/s/uzeyigdjQCVSn7SnuYEPSsDvSS9xLwMw/JBK95KC7Wb_HsS8tuOxBvfTm5fPYHbiN-27vAuPGmuQo', '18', '2023-01-26', 'UNNUMBERED MEMORANDUM', 'active'),
(2164, 'ADMINMICH0126153', 'REVISED DCS MANILA CAR PARK POLICIES JANUARY 2023', 'http://depedmanila.net:5000/d/s/uzeyijlJr4GxbbE1Hi1WBm2GQ138b1dX/3VtHfzaKSxrhEnMek0lqAQD8m2LjjBCj-vLuAtXKmuQo', '31', '2023-01-27', 'NUMBERED MEMORANDUM', 'active'),
(2166, 'SGODELIZ0126140', 'WORKSHOP FOR DISTRICT MEET', 'http://depedmanila.net:5000/d/s/uzeyj0eS6G0kYQakoJ1XpjhGGJ5ZoK16/FO0MMC-73SKMfbOS0iGkQJqXeiIo19dS-mrsgJiKmuQo', '20', '2023-01-30', 'UNNUMBERED MEMORANDUM', 'active'),
(2167, 'RECRTDAR0126301', 'SUBMISSION OF CITY MANILA STRATEGIC PERFORMANCE MANAGEMENT SYSTEM INDIVIDUAL PERFORMANCE COMMITMENT AND REVIEW (COM-SPMS IPCR) OF ALL CITYPAID NONTEACHING PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeyj2DFJgsQshZta6flPLz0NAA7K08x/G_pOQGOb6EeUfzeIc_f-CE08_JuHTaxw-k7sAahymuQo', '21', '2023-01-30', 'UNNUMBERED MEMORANDUM', 'active'),
(2168, 'SGODGAY 0124771', 'ADDENDUM TO UNNUMBERED MEMORANDUM DATED JANUARY 13, 2023', 'http://depedmanila.net:5000/d/s/uzeyj9sPpadZqXnqlOVkGb1NmU28lLHf/8n6XfIV6sWH2Br7pf0R0czSsp-cQDPBh-jbtgOxamuQo', '23', '2023-01-30', 'UNNUMBERED MEMORANDUM', 'active'),
(2169, 'ICTMICH0130901', '2023 TECHNICAL ASSISTANCE AND OTHER MATTERS ', 'http://depedmanila.net:5000/d/s/uzeyj8k1JGfvk7VUzZ7M85D8HKtbmj9a/mzemzlIKfxC4gjnl_382irxih7LRgcvE-hrvg3gymuQo', '24', '2023-01-30', 'UNNUMBERED MEMORANDUM', 'active'),
(2170, 'SGODELIZ0125902', 'Invitation to Attend the Schools Administrators’ Fellowship', 'http://depedmanila.net:5000/d/s/uzeyjVRvic6smBAEFZB8MDfjRpjrZJyT/dZmvJuxKpJ7qJyVgiXhTQV4FfSDWVfbb-frsgAPyluQo', '16', '2023-01-31', 'DIVISION CIRCULARS', 'active'),
(2171, 'RECRTHAN0125600', 'REITERATION ON THE FILING AND SUBMISSION OF DAILY TIME RECORD AND BIOMETRIC PRINT-OUT OF ALL SCHOOL PRINCIPALS AND NONTEACHING PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeymfjYHM93r5IK2p6iPwOPdVPvXrgZ/acXC1DZCm-sHsXZ9h2FU0SU0F17RYAdR-Z7pgK8ecuQo', '30', '2023-02-01', 'NUMBERED MEMORANDUM', 'active'),
(2172, 'RECRTVIN0125427', 'DESIGNATION OF OFFICER-IN-CHARGE (OIC) IN SCHOOLS AND SERVICES', 'http://depedmanila.net:5000/d/s/uzeymg9wyU7ZteC7QpmqkEbrTpEDxSCr/HaXRoujaQgQ1GuG-xXIGuKVWSrAfd4Tr-drpAS_GcuQo', '32', '2023-02-01', 'NUMBERED MEMORANDUM', 'active'),
(2173, '1901272023', '4th LEARNING ENGAGEMENT AND MANAGEMENT MEETING OF EDUCATION PROGRAM SUPERVISOR WITH ARALING PANLIPUNAN HEAD TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyiiLKCeKJ8CAePzykOBxTgPfV6fba/VlB1nwkXXfjIZ9KYaC5Y13CIdsXshY6v-tbuAGmKmuQo', '19', '2023-01-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2175, 'RECRTVIN0124527', 'CORRIGENDUM  TO DIVISION  MEMORANDUM  NO.  461,  S. 2022(COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NONTEACHING PERSONNEL)', 'http://depedmanila.net:5000/d/s/uzeymrehkIqyhyC8u4w03hpuy9ggoy9k/5bBoMIx41yqpPsSc3pSnVGApFseG_HSH-rLrgDYSduQo', '22', '2023-02-01', 'UNNUMBERED MEMORANDUM', 'active'),
(2176, '2901272023', 'ANNUAL ALPHA LIST OF ANNUAL RETURN OF INCOME TAXES WITHHELD COMPENSATION FOR CY 2022', 'http://depedmanila.net:5000/d/s/uzeyjXR7d6Sa8ZvYsybMXSLJ6qYiYqGk/msdl-WDD6NrHqdHwWHJJRYPxUadseevG-drtgLuCluQo', '29', '2023-01-31', 'NUMBERED MEMORANDUM', 'active'),
(2177, 'PUBLIABBI0130201', 'DEADLINE OF SUBMISSION OF ALL MANDATORY COMPLIANCES TO BUREAU IF INTERNAL REVENUE FOR CY 2022', 'http://depedmanila.net:5000/d/s/uzeyjXR7d6Sa8ZvYsybMXSLJ6qYiYqGk/msdl-WDD6NrHqdHwWHJJRYPxUadseevG-drtgLuCluQo', '29', '2023-01-31', 'NUMBERED MEMORANDUM', 'active'),
(2178, 'PUBLIABBI0130954', 'INVITATION FROM THE CIVIL SERVICE COMMISSION-CIVIL SERVICE INSTITUTE ON PROGRAMS & COURSES FOR THE MONTH OF FEBRUARY 2023', 'http://depedmanila.net:5000/d/s/uzeyjYr7HUIEksbHXznxJRf6YGtF12ZK/lAF9Ye1NnuU8BMwdi9aAMziHlaZF8tXL-pbtgPTumuQo', '28', '2023-01-31', 'NUMBERED MEMORANDUM', 'active'),
(2182, 'RCRDSDARN0117713', 'TULONG KO, PARA SA IYO', 'http://depedmanila.net:5000/d/s/uzeymbty1QaZouFI7oY2amUBIoQYOiX0/CEviTyT6S1OTszXcL-82NNSQk-B9Ssld-RbogdXicuQo', '17', '2023-02-01', 'DIVISION CIRCULARS', 'active'),
(2183, 'SGODELIZ0131204', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 1, S. 2023 PROGRAM, PROJECTS AND ACTIVITIES (PPAs) IN PARTNERSHIP WITH THE MANILA ANTI-DRUG ABUSE COUNCIL (MADAC) SUPPORTED BY THE MANILA PEACE AND ORDER COUNCIL', 'http://depedmanila.net:5000/d/s/uzeymmgiy670SG1nIIFPZTUSJ3Osc809/eRDEARqSI7Z1CNmpbfpJtUMscC-TJ5Qo-N7oA5lucuQo', '38', '2023-02-01', 'NUMBERED MEMORANDUM', 'active'),
(2184, 'CIDBREN012562', 'ADDITIONAL SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'http://depedmanila.net:5000/d/s/uzeymjzXEOybDXVOOHIbfV8AzXpw0nos/m8s0LxwjkhMO7TMyxwRAwJiMIrhgogn7-hLqAKBCduQo', '33', '2023-02-01', 'NUMBERED MEMORANDUM', 'active'),
(2186, 'RCRDSDARN0123868', 'CHARACTER DEVELOPMENT PROGRAM OF YOUTH ARISE CAMPUS', 'http://depedmanila.net:5000/d/s/uzeymfJ9aEoPmCml5lEpnZoZrNuOZj6g/oGUZ7dLTf3C3ObAMB-Yz8ILMZMoz48QS-U7rAsZicuQo', '19', '2023-02-01', 'DIVISION CIRCULARS', 'active'),
(2187, '0402022023', 'OM 004 s. 2023 SUBMISSION OF REPORT TO DEPED-NATIONAL CAPITAL REGION.', 'http://depedmanila.net:5000/d/s/uzeynZnKUwo9uNKaNhZz8hAbxBKNfPRM/7_gkGJrYBvXMDytbwdJkZVFrRQLo2R5I-0LlgIZebuQo', '4', '2023-02-02', 'OFFICE ORDER', 'active'),
(2188, 'SGODGAY 0127627', 'SEAMEO INNOTECH’s SOUTHEAST ASIAN SCHOOL LEADERSHIP PROGRAM (SEA-SLP) SCHOLARSHIP OFFERING 2023.', 'http://depedmanila.net:5000/d/s/uzeync47XaehLbizvokaEf9L1qvG8NZb/HOG90Du2oGutlWQpyC-kjbdDorifSdKd-AboAQ_GbuQo', '27', '2023-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(2189, 'PUBLIABBI0201890', 'POSTPONEMENT OF SGC COORDINATORS’ MEETING ON TEACHNICAL ASSISTANCE ON SCHOOL GOVERNANCE COUNCIL (SGC)', 'http://depedmanila.net:5000/d/s/uzeynVowfqdq8wF6BKpzVaDrAbFXnzT5/c5fom5YUgFQVtL7M6ySmhiHR43s0VnWt--rng8-ibuQo', '8', '2023-02-02', 'DIVISION ADVISORIES', 'active'),
(2190, 'RECRTNIC0201137', 'ORIENTATION ON THE NEW MERIT SELECTION PLAN (MSP) AND RECRUITMENT, SELECTION AND APPOINTMENT (RSA) GUIDELINES', 'http://depedmanila.net:5000/d/s/uzeynYwX6gpJve7VdyMH9QqozG2gZLwz/QKmGz2nGk4IZCnXk4uyE_PfHP9RhnjeU-6LmgPcqbuQo', '39', '2023-02-02', 'NUMBERED MEMORANDUM', 'active'),
(2191, 'SGODGAY 0131941', 'Division Meet Workshop', 'http://depedmanila.net:5000/d/s/uzeynbdiqSHoe3Sqh3XepN8yDknveegs/6ckuiDbKyFFtq5Yg4CEJ2kKfLGkP6DqO-4rkAysKbuQo', '26', '2023-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(2192, 'SGODGAY 020258', 'BASIC EDUCATION INFORMATION SYSTEM (BEIS) DATA COLLECTION FOR SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyo79CIuXa3j0cwaCOXEk0XsqbN35w/wdeRDMkoKU7X7zuqW4B69P8fzZVFNA2l-xbmg3VybuQo', '41', '2023-02-03', 'NUMBERED MEMORANDUM', 'active'),
(2193, '4002032023', 'SCHEDULE OF ACTIVITIES RELATIVE TO THE IMPLEMENTATION OF THE TECHNOKIDS PROGRAM.', 'http://depedmanila.net:5000/d/s/uzeyo4JD0AfXvNfQI7FPaIQMlthqFrow/gCe48ZNUHcXiBjzTEhLX7OqAGh1iX1rU-vrkgO1WbuQo', '40', '2023-02-03', 'NUMBERED MEMORANDUM', 'active'),
(2194, 'RECRTDAL0202333', 'DISTRICT ASSIGNMENTS OF ASSISTANT SCHOOLS DIVISION SUPERINTENDENTS.', 'http://depedmanila.net:5000/d/s/uzeyo8qn5O6ykwiha0f8Y6sGrNyKlACc/lK0xSjRQjZstCMqMLmpfz82Zvp_EZdy1-uLnAw0ubuQo', '42', '2023-02-03', 'NUMBERED MEMORANDUM', 'active'),
(2195, 'recrtdal0202772', 'ASSIGNMENTS OF ASSISTANT SCHOOLS DIVISION SUPERINTENDENTS.', 'http://depedmanila.net:5000/d/s/uzeyoAymZ0HpJPd8kT5fGZHfG9t5VCvm/sFMJ-bv2DE9buhpS6lZk7sPi4hFmxlOR-sbmgUkKbuQo', '43', '2023-02-03', 'NUMBERED MEMORANDUM', 'active'),
(2196, 'CIDBREN0130857', 'DISTRICT II TEACHING DEMONSTRATION (ELEMENTARY)', 'http://depedmanila.net:5000/d/s/uzeyoBGNh6074bFBMQ7VlkhD8m0UUvF2/e3Pdesu2hSnpP3XmUYSBESo_AQSRZN5J-qrmgyCubuQo', '44', '2023-02-03', 'NUMBERED MEMORANDUM', 'active'),
(2197, 'RECRTDAL0202812', 'RECONSTITUTION OF THE COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR TEACHING PERSONNEL -SECONDARY LEVEL', 'http://depedmanila.net:5000/d/s/uzeyoAYNrsBEa5GCGwyDkIuxZb2F0ivA/MmFWRsUNmP1NeqQHRfJKKjV60wsZ_Tyf-o7lgiCGbuQo', '45', '2023-02-03', 'NUMBERED MEMORANDUM', 'active'),
(2198, 'CIDBREN0126512', 'MASS TRAINING OF ALTERNATIVE LEARNING SYSTEM (ALS) TEACHERS IN THE IMPLEMENTATION OF THE ALS LAW AND ITS IMPLEMENTING RULES AND REGULATIONS', 'http://depedmanila.net:5000/d/s/uzeyml7vkghFVqhIfbLVyXcFWfzyOkOy/Sn_nMzwzjX4LhRKZXlXv8izu7Vcl3WcE-kboALSqduQo', '36', '2023-02-01', 'NUMBERED MEMORANDUM', 'active'),
(2199, 'RCRDSDARN012395', 'OPEN FOR REQUESTS FROM SCHOOLS FOR ALL ENVIRONMENTAL-FRIENDLY ACTIVITES PROPOSING FOR THE USAGE OF PARK AS VENUE.', 'http://depedmanila.net:5000/d/s/uzeyo3Jc2uQDPsnsuKRYxJeMzgGOMxiU/_SHZ9UDeFlGleMEgQg0mpaMRk7YOmqeA-irmAYfWauQo', '21', '2023-02-03', 'DIVISION CIRCULARS', 'active'),
(2201, 'CIDBREN0201915', 'CONDUCT OF TRAINING OF INSTRUCTIONAL MANAGERS FOR PERSONS DEPRIVED OF LIBERTY (PDL) ON ALTERNATIVE LEARNING (ALS)', 'http://depedmanila.net:5000/d/s/uzeyoExAOCdPy2bFtiJUEBPF9GWKAkkf/Jt9i_RIlBgH324TEO5VJBexhIfOwE8_3-erlAMNyauQo', '47', '2023-02-06', 'NUMBERED MEMORANDUM', 'active'),
(2202, 'RECRTNIC0203383', 'ADDENDUM TO DIVISION MEMORANDUM NO. 39, S. 2023 (ORIENTATION ON THE NEW MERIT SELECTION PLAN (MSP) AND RECRUITMENT, SELECTION AND APPOINTMENT (RSA) GUIDELINES.', 'http://depedmanila.net:5000/d/s/uzeyoEFAYyqHRG9jB1A9KU5jUSVIdmYu/AEbREZrOatvDxH7amQ-qNe1rDcIFzka_-dLkAYdSauQo', '29', '2023-02-06', 'UNNUMBERED MEMORANDUM', 'active'),
(2205, 'SGODGAY 01172', 'SERIES OF COLLECTIVE NEGOTIATION AGREEMENT (CNA) DISCUSSIONS OF THE IN-SERVICE TRAINING FOR TEACHERS (INSET)', 'http://depedmanila.net:5000/d/s/uzeyoEfZG62jsgxcp7jAyAhUCO4JcfiE/8VfDLP8i4urszYnRkthPNpBzFZt8le3G-QLmg8YCauQo', '22', '2023-02-06', 'DIVISION CIRCULARS', 'active'),
(2206, 'RECRTNIC0203486', 'OPENING OF APPLICATION FOR ADMINISTRATIVE OFFICER II.', 'http://depedmanila.net:5000/d/s/uzeyoIMLx4MCPniNPxgnBvYoKcGHMRLY/pnBNS4JKBuXQaBLNCeTK2niLGpvOexyw-NbmA2EmauQo', '48', '2023-02-07', 'NUMBERED MEMORANDUM', 'active'),
(2207, 'CIDBREN0206946', 'INCLUSION OF THE RPMS-PPST IN THE CONDUCT OF MID-YEAR IN-SERVICE TRAINING OF TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyoKlwYiVDPUMWLy5zKSJqoXvpTtzm/VTTwd80pZdblPXSAbkSRxaZYj9xCHEHc-L7lgdkOauQo', '49', '2023-02-07', 'NUMBERED MEMORANDUM', 'active'),
(2208, 'RCRDSDARN0127145', 'Y-PREP MASS INDUCTION PROGRAM', 'http://depedmanila.net:5000/d/s/uzeyoJUkTOxh4P5LI1bDKmz9afVk5DFy/YBeLBwa5VPRMhwhO_Byru7P_cdTj9cdI-KLlgxTuauQo', '23', '2023-02-07', 'DIVISION CIRCULARS', 'active'),
(2209, 'RCRDSKAEL0120441', 'REQUEST TO CONDUCT MHCC FACE-TO-FACE CAMPUS MINISTRY IN VARIOUS SECONDARY SCHOOLS', 'http://depedmanila.net:5000/d/s/uzeyoImkeCsojixfMr7tiE7K6AaNOvQL/RFJ8rN-qjglGn4d8p8_Fh025O-r9tytI-IrmAJDOauQo', '20', '2023-02-07', 'DIVISION CIRCULARS', 'active'),
(2210, 'RECRTNIC0203794', 'SUBMISSION OF UPDATED PERSONAL DATA SHEET (PDS) USING C.S. FORM NO. 212, REVISED 2017', 'http://depedmanila.net:5000/d/s/uzeyoOB87cZO4ZpQJSIrPX30n06FretX/PRrXWUQFKuHZ3BYEiGCM-Cql7bmhmJpL-G7mgRyuauQo', '30', '2023-02-07', 'UNNUMBERED MEMORANDUM', 'active'),
(2212, 'SGODGAY 020312', 'INTERNATIONAL AWARDS FOR MOST OUTSANDING EDUCATORS, RESEARCHERS, PROFRESIONALS AND HUMANITARIAN ADVOCATES (ETCOR AWARDS 2023)', 'http://depedmanila.net:5000/d/s/uzeyoMtw2EDnPBYXipG5MnQ6I6RwgrwP/pbXD7H69k2SkJ7V4G1_UXZsFoAL8A8xw-mLmgYAibuQo', '10', '2023-02-08', 'DIVISION ADVISORIES', 'active'),
(2214, 'RCRDSKAEL0131477', 'DOS-NCR VIRTUAL REVIEW CLASS', 'http://depedmanila.net:5000/d/s/uzeyoPb7lyBmV56ukLU8p0hV0mzxaasy/LbPBHLmEikWXlTJMwbhO0j_zrdDawjua-EbngNRSauQo', '12', '2023-02-09', 'DIVISION ADVISORIES', 'active'),
(2215, 'ICTSTAF0207509', 'ARCZONE PROFESSIONAL DEVELOPMENT INC.', 'http://depedmanila.net:5000/d/s/uzeyoQaijEfulzKTZd4GysE7r7kbFf9P/99fSiqjcaYgjUBCh9VFQzcNBO0sBy28Q-BbnA9u-ZuQo', '14', '2023-02-09', 'DIVISION ADVISORIES', 'active'),
(2216, 'SGODGAY 0206918', 'CALL FOR PROPOSALS AND INTERIM GUIDELINES FOR BASIC EDUCATION RESEARCH FUND (BERF) 2023', 'http://depedmanila.net:5000/d/s/uzeyoRRW7S72icSSYG7I5FNsr2jfQUE2/kRv1DigiWoJ8UoMPw0Pnzxp8R6-Geh6E-_bhADeiZuQo', '50', '2023-02-09', 'NUMBERED MEMORANDUM', 'active'),
(2217, 'SGODELIZ0208425', 'PRESENTATION OF PRIME HRML TEMPLATES AND OTHER MATTERS.', 'http://depedmanila.net:5000/d/s/uzeyoUhu7OU1JjdviviRtEAMmO5Px2vw/o_pE7j76-Ua3zN81VxFmzq9T0KZ-6j7u-9rigG-GZuQo', '32', '2023-02-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2218, 'CIDBREN0207342', 'TEALEAF AND TRAINING PROGRAM AND OTHER MATTERS.', 'http://depedmanila.net:5000/d/s/uzeyoUHVQGQXk7EPFq9StCK9erK93Q9o/UfVFfaVZt2_QM9oyLDYftS2Cw11UgPMf-7riAO9mZuQo', '33', '2023-02-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2219, 'PUBLIABBI020814', 'PARTICIPATION TO THE CONDUCT OF REGIONAL GENDER AND DEVELOPMENT RESEARCH PLANNING AND CAPABILITY BUILDING.', 'http://depedmanila.net:5000/d/s/uzeyoSZudmAKD4WOE1sSDX5veyb75OFc/r5zinZlJrlGdyX3ekGY0J3Bl5mDDWC4g-57hA9tCZuQo', '52', '2023-02-09', 'NUMBERED MEMORANDUM', 'active'),
(2220, 'RCRDSDARN0207344', 'GSP - MANILA COUNCIL REFRESHER COURSE, SATURDAY, FEBRUARY 18,  2023 - GIRL SCOUT', 'http://depedmanila.net:5000/d/s/uzeyoSrVls49npB271vq7TDUvAlZo49l/QhEWSD_DRQDxRvFrNHY3iqfELI-BzG3I-4bhgesmZuQo', '24', '2023-02-09', 'DIVISION CIRCULARS', 'active'),
(2221, 'SGODGAY 0206362', 'PALARONG MAYNILA 2023', 'http://depedmanila.net:5000/d/s/uzeyoTHuT0TVObpKYlq9VMnWqUyDCEjh/fNvU5GclNnXrFw79Y870MBpFKi2TKMVv-w7gAMo-ZuQo', '53', '2023-02-09', 'NUMBERED MEMORANDUM', 'active'),
(2222, '', 'NATIONAL DENTAL HEALTH MONTH', 'http://depedmanila.net:5000/d/s/uzeymt4hOgXr5puivgJdXvc77Kpb6Gem/fPPGYFq3eyy7wvsMDYx__sGP9y-__lP8-o7ggpVmZuQo', '56', '2023-02-10', 'NUMBERED MEMORANDUM', 'active'),
(2223, 'RCRDSDARN0210368', 'REQUEST FOR ACCREDITATION OF BIBLE STUDY GROUP AND PERSONALITY DEVELOPMENT', 'http://depedmanila.net:5000/d/s/uzeymu4ILwbkcex7k9w1PcL9DqRjPKS3/XA0KAmGxiYlTzOpPzC9ByjatJ5D5fWhc-mLhgIj6ZuQo', '25', '2023-02-13', 'DIVISION CIRCULARS', 'active'),
(2225, 'CIDBREN0209317', 'CONDUCT OF PROGRAM IN ADVANCING LITERACY IN MATHEMATICS (PALM) PHASE 1', 'http://depedmanila.net:5000/d/s/uzeymyT4sCV3p2ALtXfXBvWL8Zr0T5C7/bgriVBQcQ-ECsAbOVidKjoZxGnFWUd49-kLjgujWZuQo', '59', '2023-02-13', 'NUMBERED MEMORANDUM', 'active'),
(2226, 'cidbren0209956', 'CONDUCT OF THE MID-YEAR RAPID ASSESSMENT IN THE FILIPINO, ENGLISH, SOCIO-EMOTIONAL LEARNING (SEL) AND ACADEMIC RESILIENCY (AR)', 'http://depedmanila.net:5000/d/s/uzeymxTTuuVlcSmCekvU7TpbE1GylNWM/9IV-4Mhvdv1SqlF6b4Y3i4t8JQ4LHdv5-1rggt7WZuQo', '60', '2023-02-13', 'NUMBERED MEMORANDUM', 'active'),
(2228, 'SGODELIZ0124488', 'HOSTING SCHEDULE FOR LEARNING ENGAGEMENT AND MANAGEMENT (LEM) MEETING FOR CY 2023', 'http://depedmanila.net:5000/d/s/uzeymy2gB4lzjFI8iZLtRXTlywsycahv/FIueY-2qpb21QtFLEiBURy3AvTFUW0pI-MrwAsdKnuQo', '62', '2023-02-13', 'NUMBERED MEMORANDUM', 'active'),
(2232, 'PUBLICHRI0210232', 'SPECIAL ORDER - DR.JONHN V. SILVA - OFFICER-IN-CHARGE ', 'http://depedmanila.net:5000/d/s/uzeymumIB8U5G5hn337yO1WiBKdmLoqh/9K9eWqAuEYWAVbzCKAiY2zqJgaN3n_w--zbhgBaWZuQo', '54', '2023-02-13', 'NUMBERED MEMORANDUM', 'active'),
(2233, 'CIDBREN0209733', 'CONDUCT OF THE PROJECT EQUIP PHASE 1 LEARNING CONTINUITY AND RECOVERY PLAN (LCRP) MONITORING AND EVALUATION QUARTERLY CONVERGENCE', 'https://gofile.me/71xfF/fvNajxgRM', '63', '2023-02-14', 'NUMBERED MEMORANDUM', 'active'),
(2234, 'CIDBREN0213967', 'CONDUCT OF TEST OF FUNDAMENTAL ACADEMIC SKILLS (TOFAS) ASSESSMENT ORIENTATION', 'http://depedmanila.net:5000/d/s/uzeymytTZKrrnV2RUIpJlC7FDX7CdX9p/z-LKsZQSVAOkZ_rDpiq8y-4i4VAPv1Aw-lbzg6bWcwgo', '35', '2023-02-14', 'UNNUMBERED MEMORANDUM', 'active'),
(2235, '', 'BASIC OCCUPATIONAL SAFETY AND HEALTH COURSE', 'http://192.168.88.4:5000/d/s/uzeyn0Afeg1qYgAfpihfhysp9EOQJaDz/98yVeqNCZ069QC6AyhrATa-kfuPNsaLG-b7FADUbgtQo', '15', '2023-02-15', 'DIVISION ADVISORIES', 'active'),
(2237, 'RCRDSDARN0207521', 'CAMP STAFF LINE-UP OF THE WORLD THINKING DAY CAMP FOR JUNIOR GIRL SCOUTS ON FEBRUARY 18-19, 2023', 'http://depedmanila.net:5000/d/s/uzeyn1jSs6RiwK4zlgsXyOrD8YRRkNpw/xcLBe1G4RnsyVM6EDoN93f_6G-PposgA-erFg747gtQo', '26', '2023-02-13', 'DIVISION CIRCULARS', 'active'),
(2238, 'PUBLICHRI0214344', 'PROPER WEARING OF THE PRESCRIBED UNIFORM ', 'http://depedmanila.net:5000/d/s/uzeyn30exQF1AyONanbvXB71i255l62R/W0czDnaAN0KKqUCM-kzbWeeBXrw4tmyk-gbHgiJ3gtQo', '55', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2239, 'RECRTHAN021382', '2023 CSC SEARCH FOR OUTSTANDING GOVERNMENT WORKERS', 'http://192.168.88.4:5000/d/s/uzeyn6H2xIHhAMUinpf2dEQXBr6FDRIf/Ty-lpPmtVNa5l2Ut_oleZMnc3iLRVstj-abHABT_gtQo', '64', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2240, 'RECRTHAN0213865', 'CIVIL SERVICE COMMISSION - NATIONAL CAPITAL REGION (CSC-NCR) ONSITE TRAINING PROGRAMS FOR THE FIRST AND SECOND QUARTER OF 2023', 'http://192.168.88.4:5000/d/s/uzeyn5HS00CGpYp9DhvGmrTlSDpdIyya/EQeHaMtLLn9pXblRq9fqhtEOJbqa7z-L-Y7FApzngtQo', '65', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2241, 'RCRDSELSA0208268', 'EXECUTIVE MEETING', 'http://depedmanila.net:5000/d/s/uzeyn7PRTcNQJycJG4k85Sialu5v9yfL/Or4yDlnwBRueMjGeWH657LRCeoq7T5zx-W7Hg7ingtQo', '37', '2023-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(2242, 'SGODGAY 0214836', 'FOCUS GROUP DISCUSSION', 'http://depedmanila.net:5000/d/s/uzeyn6hReQxz5UaFNP2uLSSQwlarMDEG/luMA_zXOrIQLa9qVE_bSH3SV520gGi1I-VbFgqCLgtQo', '38', '2023-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(2243, '', 'WORLD VISION DEVELOPMENT FOUNDATION, INC.', 'http://depedmanila.net:5000/d/s/uzeyn1J4AyZltxCUJ6nQ9wahElqtHjDS/8MrYDk43ZCmcGT36lFrfhHIWDJRZnlNJ-TrFgLRvgtQo', '27', '2023-02-15', 'DIVISION CIRCULARS', 'active'),
(2244, '', 'SEMINAR ON THE MENTAL HEALTH OF CHILDREN DURING COVID 19 IN JAPAN AND IN THE PHILIPPINES', 'http://depedmanila.net:5000/d/s/uzeyn5qeGA2zYCROjzNZzmW0B6B5kJ37/6oBzN84JBWeQOvuVMawKOqD2X1xvxhVy-SLHAERLgtQo', '28', '2023-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(2245, '', 'DIVISION EDUCATION FIELD TRIP ACTIVITIES', 'http://depedmanila.net:5000/d/s/uzeyn4r3IsyefJPlhjJXLb8rSVJr6IBx/8AKpAjwDjce5UpQwgdTAmP2jALIyCSk8-iLHAwqfgtQo', '73', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2246, 'RCRDSDARN0210894', '80th Annual Council Meeting, for information and appropriate action', 'http://depedmanila.net:5000/d/s/uzeyn8XpzuwpETekHxuwzP3s3SKQjRy9/tuaXj-M-GaJkJl2xLO_b7lcDzuG1URB9-MbEAr9bftQo', '28', '2023-02-16', 'DIVISION CIRCULARS', 'active'),
(2247, 'CIDBREN0215558', 'Updates on District Coordinators Functions and Matters.', 'http://depedmanila.net:5000/d/s/uzeyn8yEh2aVsIN4xCkva2Cg4fCj37bz/Kc0zrDz__CClxvQV9LqrCUawNlMm2Q52-KrFABdHftQo', '40', '2023-02-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2248, 'CIDBREN0214703', 'Planning for the Accreditation And Equivalency Presentation Portfolio Assessment', 'http://depedmanila.net:5000/d/s/uzeyn9p25IRvDVFuWtmHBctMvF6DMNfZ/bS48WSQK-GD4LRjl9YA7YpQCxqquDeJo-JLFgwMnftQo', '41', '2023-02-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2249, 'CIDBREN0209601', 'Addendum to division memorandum no. 23, s. 2023 (Search for division level outstanding teachers for school year 2022-2023)', 'http://depedmanila.net:5000/d/s/uzeynAOELSfZnyrnA0tOoq9vwOTS8epo/jy4B2o6TPzHglt5Y56hUDk1I3Dfr7Nyb-HrGgRcPftQo', '39', '2023-02-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2250, 'RECRTDAL0214544', 'Reassignment of assistant school principals', 'http://depedmanila.net:5000/d/s/uzeyn9OdOA7r83pz4SZppYZSdOyaaM5a/9noyfB9R04oXhmwprq3DFiPrvBsTOy4Q-F7GAl7zftQo', '74', '2023-02-16', 'NUMBERED MEMORANDUM', 'active'),
(2251, 'CIDBREN0215998', 'First learning engagement and management meeting of secondary journalism for sy 2023-2024', 'http://depedmanila.net:5000/d/s/uzeynGD0VsuOZ5H2Vp0hGbXYrND2wDjp/UdiqJD0fIxt-ym8X1IsydNE6v0NoDWVh-EbFgY7XftQo', '42', '2023-02-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2252, 'SGODGAY 0131375', 'CENTER FOR HUMAN RESEARCH & DEVELOPMENT FOUNDATION INC. (CHRDF) SERIES OF NEAP RECOGNIZED PROGRAMS', 'http://depedmanila.net:5000/d/s/uzeynJTOVgzkFGT2YQNd0dqF5a1J2Aqe/S2d_GLXiJKxJaba9UpKytsbiKAAPLPMC-8rAAnGXftQo', '9', '2023-02-17', 'DIVISION ADVISORIES', 'active'),
(2253, 'SGODGAY 0126511', 'LIST OF OFFICIALS, VENUES AND SCHEDULES FOR THE DIVISION PALARO 2023', 'http://depedmanila.net:5000/d/s/uzeyjgf5MMKViQs4JFwszt41SRepCghj/96S82JTdeOfmDMCSHcwPy1ajz-cuXYKF-L7qA2EucuQo', '35', '2023-01-31', 'NUMBERED MEMORANDUM', 'active'),
(2254, 'RCRDSABBI0206491', 'Conduct of Career Guidance', 'http://depedmanila.net:5000/d/s/uzeynI3OrKJCCdvOkwGXTaX7A9qnVO4q/290aMwndL8DDq-vYDz7q1wpomErz2a4j--bCA_3PftQo', '30', '2023-02-17', 'DIVISION CIRCULARS', 'active'),
(2255, 'ACCREOB0216345', 'Preparation and Submission of documents for the payment of clothing allowance (U CA) for fy 2023', 'http://depedmanila.net:5000/d/s/uzeynP9N78SEIS6AgrKnrav2mbUWSmId/vF6yZo_5MqwP6N8k7qNjnlZw53VGVXBe-67Bg91fftQo', '75', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2256, 'sgodmarl0215812', 'DEPLOYMENT OF QUALITY ASSURANCE DIVISION PERMIT & RECOGNITION OPTIMIZER (QuAPRO) V.2', 'http://depedmanila.net:5000/d/s/uzeynOaAqyHYX9kOlpqMMga58uD0MtFZ/zUQCtywLExkSTt4tya63Cns-VyOQ7ubi-5bAAnVHftQo', '77', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2257, 'sgodmarl0215956', 'APPLICATION FOR THE INCREASE IN TUITION AND OTHER FEES', 'http://depedmanila.net:5000/d/s/uzeynSPl6wLNZknSjxwX6rvbvP8kqYnm/SZ7VLB-igsCnUCj-8SGY9KLvUSC4EUUg-3LCgMivftQo', '80', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2258, 'rcrdselsa0209453', 'PERMISSION TO CONDUCT LIFE GROUPS (OR SMALL GROUPS)', 'http://depedmanila.net:5000/d/s/uzeynK2alqpLX5uIndYFuqAVV2OrK1tM/nrgniuDOn-OOFXad0N6s8uLj6b7AYqFj-1rDAyyLftQo', '31', '2023-02-17', 'DIVISION CIRCULARS', 'active'),
(2259, 'rcrdsdarn020990', 'REQUEST FOR 800 PUBLIC SCHOOL TEACHERS AS PROCTORS ROOM WATCHERS FOR THE CONDUCT OF THE LICENSURE EXAMINATION FOR PROFESSIONAL TEACHERS (LEPT) ON MARCH 19, 2023 (SUNDAY)', 'http://depedmanila.net:5000/d/s/uzeynF4bzY6gCNHvsIhS4vWWamvjTAK2/qzfInEOvVD5GR__qfMkus4xx7vllIQwV-z7AAWR3ftQo', '29', '2023-02-17', 'DIVISION CIRCULARS', 'active'),
(2260, 'cidbren0215717', 'DEVELOPMENT OF PALM INTERVENTION MATERIALS', 'http://depedmanila.net:5000/d/s/uzeynNjNSigt6pRLlIdF185TT6Brjwvo/ZWX_puFkNOmBAici_duz--exe5RNdERA-ybCgyRXftQo', '76', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2262, 'rcrdselsa0206996', 'WANDERING MINDS SCHOOL-BASED ROAD SHOW PROGRAM', 'http://depedmanila.net:5000/d/s/uzeynFmbokq1hqS4vWhagONe3ujErper/RIBNzz8ShSBdEns0K_fuQSshdWwcyEUc-v7AgqdLetQo', '16', '2023-02-17', 'DIVISION ADVISORIES', 'active'),
(2263, 'cidbren0209734', 'DEVELOPING STUDENTS BASIC PROGRAMMING SKILLS USING THE DLSZ ROBOTICS INTERVENTION STRATEGY DLSZ RIS VIRTUAL ROBOTICS TRAINING FOR STUDENTS', 'http://depedmanila.net:5000/d/s/uzeynSq9o443pZJJODLSUtJ54oVOOFNG/fZ8EdxI3yAGo0mFXU3gH_P8w5WFxMYar-uLBA4czetQo', '81', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2264, 'sgodeliz0208777', 'DCS MANILA SPORTSFEST 2023 (SUPERINTENDENTS CUP)', 'http://depedmanila.net:5000/d/s/uzeynVOXyivWERcZQRyMqQDUZkuSQY2W/cr8702mBu9t2J7I2LAeFn80CxNxRraaW-srCgfMbetQo', '78', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2265, 'sgodgay 0213597', 'ASSIGNMENT OF TEACHER-COORDINATORS IN PHYSICAL EDUCATION AND SCHOOL SPORTS (TCPESS) IN ALL PUBLIC ELEMENTARY SCHOOL', 'http://depedmanila.net:5000/d/s/uzeynRHMae2FoJs4aU5IcNJRAhn1clTH/jSZZb7krlbuzoSyLpatuNomyrihmnSdg-pbDAcL_etQo', '84', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2267, 'SGODGAY 021758', 'CONDUCT OF MEETING ON THE REQUEST FOR PHOTOGRAPHS FOR DEPED EDUCATION FACILITIES WEBSITES.', 'http://192.168.88.4:5000/d/s/uzeyngSu3i2ks0zNmUESyRz6TiAcLYG8/oJdY8XJAnO3QFciSsumGyOmKfd8JwVdg-TrDg4tDatQo', '43', '2023-02-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2268, 'RECRTDAL0216704', 'VACANCIES FOR ASSISTANT SCHOOL PRINCIPAL II (SHS), SECONDARY SCHOOL PRINCIPAL II (SHS), ELEMENTARY SCHOOL PRINCIPAL I, SECONDARY SCHOOL PRINCIPAL II & III, EDUCATION PROGRAM SPECIALIST II AND SENIOR ', 'http://192.168.88.4:5000/d/s/uzeyngtIkqsVzDrAkbERU7xUzV1wO5vX/SCumsb_oam-actyW0KLS_XCo0SK-UXNX-R7AA-snatQo', '85', '2023-02-20', 'NUMBERED MEMORANDUM', 'active'),
(2269, 'publiabbi0217512', 'HEART MONTH CELEBRATION \"HEALTHY KA-HEARTNER FOUREVER\"', 'http://192.168.88.4:5000/d/s/uzeyneKuaCXCEQyclP7lyBXnA7n9LXxQ/GhsBh8k-gw9cvjcgeV3XhVaFvHjS0DCH-QbBAY8PatQo', '66', '2023-02-20', 'NUMBERED MEMORANDUM', 'active'),
(2270, 'sgodmarl021683', 'PRIVATE SCHOOLS GENERAL ASSEMBLY AND ORIENTATION ON BASIC EDUCATION INFORMATION SYSTEM (BEIS) CUM TECHNICAL ASSISTANCE ON QUADPRO FOR GOVERNMENT PERMITS APPLICATION', 'http://192.168.88.4:5000/d/s/uzeynka5RkEeXLcICiGylUEcgCYEOzwH/kGQhYTgzY3esVv2GDt4gscGJyiA2_WjV-CLCgOYjatQo', '86', '2023-02-20', 'NUMBERED MEMORANDUM', 'active'),
(2271, 'sgodeliz0213384', 'SUBMISSION OF MID-YEAR IN-SERVICE TRAINING OF TEACHERS', 'http://192.168.88.4:5000/d/s/uzeynlZgP2T66VO15KqlmO9ywItLzuWT/0nin_2Gw_q3IwVeg4i9XrEW8FElY1w7x-D7AAD5XatQo', '88', '2023-02-20', 'NUMBERED MEMORANDUM', 'active'),
(2272, 'hlthjen0220324', 'CONDUCT OF PHILHEALTH REGISTRATION FOR KONSULTA PROJECT', 'http://depedmanila.net:5000/d/s/uzeyncm7MmsQrFiPWx3rlhDBnypKo362/t9CE5rSEpeoO36LFF46AdqEvXzSjJfgE-XLAASfLatQo', '17', '2023-02-21', 'DIVISION ADVISORIES', 'active'),
(2273, 'SGODGAY 0214288', '2023 LIST OF ATHLETES, COACHES, TRAINERS, CHAPERONS, AND OFFICIATING OFFICIALS FOR THE PALARONG MAYNILA 2023', 'http://depedmanila.net:5000/d/s/uzeynn8TcSLRKa4hAZJS3NMaGht7yU0q/1bjzoXUQiZ_2Hgr5oDajoQCaxxMXy9ON-VbAA0OTatQo', '83', '2023-02-21', 'NUMBERED MEMORANDUM', 'active'),
(2274, 'cidbren0213198', 'COMICS AS INTERVENTION AND SUPPLEMENTARY LEARNING MATERIALS FOR GRADE 4 ENGLISH MATH SCIENCE AND FILIPINO', 'http://depedmanila.net:5000/d/s/uzeynl9HhuUZHcjoyJVDvoE1xGF7qyy8/qoBAJ4mY4Ag-F_z605tCA6UQaWia2t4o-ALDg3mvatQo', '79', '2023-02-21', 'NUMBERED MEMORANDUM', 'active'),
(2275, 'ADMINMICH0215240', 'REITERATION OF COMPLETENESS AND CORRECTNESS IN THE SUBMISSION OF CSC (DAILY TIME RECORD) AND OTHER PERTINENT REMINDER ON OFFICIAL ATTENDANCE', 'http://depedmanila.net:5000/d/s/uzeynmi4vKNMDxsQ9hSq3uTxRgbLzWKQ/6rxKXpa0MBe5ENpOkTNauQGO1N49LU-e--b-AcGPatQo', '90', '2023-02-21', 'NUMBERED MEMORANDUM', 'active'),
(2276, 'ICTTRAI0210718', '2023 FIRA ROBOWORLD CUP-PHILIPPINE PRELIMINARIES AND YOUTH ROBOTICS CONVENTION.', 'http://depedmanila.net:5000/d/s/uzeynhJhRy3hj2SZCWHnn8Z9wgr1Fi6u/1cBjPDHBPhhxB70Nl-W5DVkQNzCYyjWS-87_AJV7atQo', '18', '2023-02-21', 'DIVISION ADVISORIES', 'active'),
(2277, 'ictstaf0203381', 'CONDUCT OF THE CAREER SERVICE EXAMINATION - PEN AND PAPER TEST (CSE-PPT) SUB-PROFESSIONAL LEVEL', 'http://depedmanila.net:5000/d/s/uzeynoGs8mEQh68QboIUVUhCWilO5AxT/xnUTtjvO7Gce55h0jrzIs4gxlvO8r_5z-47-gAzjatQo', '32', '2023-02-22', 'DIVISION CIRCULARS', 'active'),
(2279, 'LNPANN0217606', 'REVISED ABSTRACT OF DAILY TIME RECORDS AND DATE OF SUBMISSION OF THE ABSTRACT OF ABSENCES AND ELECTRONIC FORM 7', 'http://depedmanila.net:5000/d/s/uzeynoq4OwrHSB9yuEmd2Jy5b0BUMbgZ/yxqhZC1SOjR7ZhGMmuCCozGt_SBmuR7m-3b_gijDatQo', '91', '2023-02-22', 'NUMBERED MEMORANDUM', 'active'),
(2280, 'CIDCID-0221170', 'ADDENDUM TO DIVISION MEMORANDUM NO. 297, S. 2022 (TRAINING WORKSHOP ON THE CREATION OF AUDIO LESSONS FOR ALTERNATIVE LEARNING SYSTEM TEACHERS', 'http://depedmanila.net:5000/d/s/uzeynpY4E8n6pwLpqsF5QbuzVQbWmQRE/IbUelzL76BZJn7qke4gawhk-JQ2ZP-U--17_AeSratQo', '92', '2023-02-22', 'NUMBERED MEMORANDUM', 'active'),
(2281, 'rcrdskael0214645', '2023 SPECIAL ORDER TO ATTY. DANILO G. DE GUZMAN, OFFICER-IN-CHARGE.', 'http://192.168.88.4:5000/d/s/uzeynnhfscRdu6kS59zYV6jrF61ujxFm/8Ew7HlWhpj7NJlNHdzWCyutCx_potOAZ-6r8Ap0fatQo', '69', '2023-02-14', 'NUMBERED MEMORANDUM', 'active'),
(2282, 'SGODELIZ0221306', '2023 Basic Education Report Post-Evaluation', 'http://depedmanila.net:5000/d/s/uzeyntwqkIu2QI2Oy71otxfYYJq6CFV2/3gJRDU0Z-ffRa61TEIKVeIPG0PQsO3O7-zL8ATRvatQo', '44', '2023-02-23', 'UNNUMBERED MEMORANDUM', 'active'),
(2284, 'cidbren0214112', '7TH INTERNATIONAL SYMPOSIUM ON MATHEMATICS EDUCATION AND INNOVATION PAPER PRESENTER', 'http://depedmanila.net:5000/d/s/uzeynrOSZcBAuqBJ51RdZ9dLzLAlvLzU/6tZ-iUlbM8XOLjRV4COUeYZs_IJmcB7q-xr_AehTatQo', '87', '2023-02-23', 'NUMBERED MEMORANDUM', 'active'),
(2285, 'sgodgay 0214471', '2022 WINNERS IN THE NESTLE WELLNESS CAMPUS POSTER MAKING AND VIRTUAL RECYCLE ART CONTEST.', 'http://depedmanila.net:5000/d/s/uzeyntEqv6G8vyyRKHTn0WVKHJ7vyANT/bgFAggsQvEDAkHxP6Oewk7Xv6ITOssv2-wL_gyw7atQo', '89', '2023-02-23', 'NUMBERED MEMORANDUM', 'active'),
(2287, 'rcrdselsa0208890', 'PHILIPPINE RED CROSS MANILA CHAPTER 7TH MANILA RED CROSS YOUTH WIDE CAMP.', 'http://depedmanila.net:5000/d/s/uzeynqy3sU6CD3nkAQchLryreHUsrqm8/S7zMsu23db4ttnu15Sjv0BLLawlg5BOu-ub8A9ATatQo', '34', '2023-02-23', 'DIVISION CIRCULARS', 'active'),
(2288, 'cidbren0220326', 'PARTICIPATION TO THE DOST-NCR TRAINING TEACHING SCIENCE BEYOND THE CLASSROOM THROUGH THE PSC VIDEO-BASED EXHIBIT AND LAB IN A BOX FOR GRADE 7-12 SCIENCE TEACHER IN NCR', 'http://depedmanila.net:5000/d/s/uzeynvw2eqbbRcP4ZKv1PF1kitDW3Cqe/EFH7aEbL-SyvZvhYSt_rOQLNB3XY21_e-s7_g3P7ZtQo', '94', '2023-02-23', 'NUMBERED MEMORANDUM', 'active'),
(2289, 'ICTTRAI021042', 'INVITATION TO AN INTERACTIVE WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeynveRWkHEbZUTvqoW0djGuuaOwroA/atKFiYfa8Gpg0vaXBBvBcwQD0ZYwVJTk-nL9g1cnZtQo', '35', '2023-02-27', 'DIVISION CIRCULARS', 'active'),
(2290, 'RCRDSDARN0213546', '2023 COUNCIL SCOUT YOUTH FORUM', 'http://depedmanila.net:5000/d/s/uzeynxDEkAa1APDC6SIosOVbzndtPL0V/z0YaveK2yatD_-WC7VkTQdwi9-kZPAW--lr-gpMPZtQo', '36', '2023-02-27', 'DIVISION CIRCULARS', 'active'),
(2291, 'cidbren0216240', 'UPSKILLING AND RESKILLING OF GUIDANCE COUNCELORS TEACHERS AND PUBLIC SCHOOLS DISTRICT SUPERVISORSON GUIDANCE PROGRAMS AND SERVICES.', 'http://depedmanila.net:5000/d/s/uzeyo0KpB444BEZHdPtjKahjq6XD088w/u-nIHHUuxPqa0osEe75wub_6ZpE5E8VE-j78grr3ZtQo', '100', '2023-02-27', 'NUMBERED MEMORANDUM', 'active'),
(2292, 'recrtdal0222516', 'CONDUCT OF DISTRICT VI JUNIOR AND SENIOR HIGH SCHOOL TEACHING DEMONSTRATION', 'http://depedmanila.net:5000/d/s/uzeynydEOaqT8WQNAc8AFdjclQPxoedy/kIkxIox4OebVgNVLI2ns94DeUbrchxEl-ib9gXLfZtQo', '95', '2023-02-27', 'NUMBERED MEMORANDUM', 'active'),
(2293, 'CIDBREN0216675', 'PRIME-NCR KNOWLEDGE HUB: ASEAN AND UNESCO LEARNING ENGAGEMENT EXHIBIT', 'http://depedmanila.net:5000/d/s/uzeynyCphSfVTsFUCmsiBGRnXktedfSc/oSrd2jpXlgxPJO0k1hk68E158rZFCAIS-gr_Aw7HZtQo', '96', '2023-02-27', 'NUMBERED MEMORANDUM', 'active'),
(2294, 'CIDBREN0223108', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 079 DATED FEBRUARY 14, 2023 (COMICS AS INTERVENTION AND SUPPLEMENTARY LEARNING MATERIALS FOR GRADE 4 ENGLISH, MATH, SCIENCE AND FILIPINO', 'http://depedmanila.net:5000/d/s/uzeynxddRITeyYo1mNoVrvdNRWxLYuMl/42N5XaR5sBM-5t2Ceo70VUtiN-ZtB-eO-fL_gfqvZtQo', '97', '2023-02-27', 'NUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(2295, 'HLTHJEN0206348', 'CONDUCT OF TRAINING FOR FOUNDATIONAL COURSE ON ADOLESCENT HEALTH', 'http://depedmanila.net:5000/d/s/uzeynz3d5idL7fIQy7FFTWFTMeIX8SCY/_Kag63IsV1fnLVzwZ40-MOGLB31vWcia-db_gb6XZtQo', '98', '2023-02-27', 'NUMBERED MEMORANDUM', 'active'),
(2296, 'HLTHJEN0221821', '19TH NATIONAL DENTAL HEALTH MONTH CULMINATING PROGRAM', 'http://depedmanila.net:5000/d/s/uzeynzU1mqJo9rlrbxGh9Scy0hNmrCIm/XYxnB_f9E3YSPI4vu5hJOYYmJjJSuoVa-b78AaJ7ZtQo', '99', '2023-02-27', 'NUMBERED MEMORANDUM', 'active'),
(2297, 'RCRDSELSA0208935', '8th YMCA FITNESS CAMP', 'http://depedmanila.net:5000/d/s/uzeyo2SoeeCD8VygohRwWtGB5xAyIZkh/SXm_FVZSTkl5We3HBR2Y5la8DSugfd6h-Zr_AbHrZtQo', '33', '2023-02-28', 'DIVISION CIRCULARS', 'active'),
(2298, 'ICTJOSH0221465', 'TECHNOKIDS PROGRAM ON MEDIA AND INFORMATION LITERACY AND EMPOWERMENT TECHNOLOGIES', 'http://depedmanila.net:5000/d/s/uzeynvE2pcrKjHARno89O9TcF4d5eyFx/6WiXv-ST42DitpOA_oMhj1oWJhYHngA8-q7_A3-TZtQo', '45', '2023-02-23', 'UNNUMBERED MEMORANDUM', 'active'),
(2299, 'CIDBREN0223433', 'PLANNING MEETING FOR DIVISION MEET PARAGAMES', 'http://depedmanila.net:5000/d/s/uzeyo2tDLmYP5wp9GkIWRX0rnAAXs8Hy/n3pWcIdMiKHP9WGWGWIoOQQnccLMS2F0-X7-gwXTZtQo', '46', '2023-02-28', 'UNNUMBERED MEMORANDUM', 'active'),
(2300, 'rcrdsdarn0216852', 'CONDUCT OF Y-KIDS FAMILY DAY CAMP', 'http://depedmanila.net:5000/d/s/uzeyo1BcZI3T8WLJNt0VnDXxZFP9Qt4C/99hAO4Pe7iXE0MXAELUAGMMKEOCslwIN-Wb9AcG7ZtQo', '37', '2023-02-28', 'DIVISION CIRCULARS', 'active'),
(2301, 'rcrdsdarn0210816', 'LOCAL ACADEMIC OLYMPICS', 'http://depedmanila.net:5000/d/s/uzeyo2BDWYsaclknBf0xYYurPU9p89Cf/JS35YtAYpmvA9qBZWsYlSU8DtTDIKrcC-Ur_AkmjZtQo', '38', '2023-02-28', 'DIVISION CIRCULARS', 'active'),
(2302, 'HLTHJEN0223865', 'CONDUCT OF FREE BREAST AND CERVICAL CANCER SCREENING FOR SDO MANILA EMPLOYEES', 'http://depedmanila.net:5000/d/s/uzeytqWzIU9GtWxwnznEfbmFmiEL0J2o/UUD1_qS06Aic_i2EqAyGDdrWJXWEprJF-5r6gJEnXtQo', '19', '2023-03-01', 'DIVISION ADVISORIES', 'active'),
(2303, 'SGODMARL0227222', 'PRIVATE SCHOOL GENERAL ASSEMBLY AND ORIENTATION ON BASIC EDUCATION INFORMATION SYSTEM (BEIS) CUM TECHNICAL ASSISTANCE ON QUADPRO FOR GOVERNMENT PERMITS APPLICATION', 'http://depedmanila.net:5000/d/s/uzeytrEz7gDU6aOhrW5qWikdNpWoF3lT/BI2JT7QZrr0ZNkEITh3oJqOdOgCvn0Sn-4L7gTUPXtQo', '23', '2023-03-01', 'DIVISION ADVISORIES', 'active'),
(2304, 'HLTHJEN0216691', 'BUILDING BACK TOGETHER: EMPOWERING MENTAL HEALTH, NATIONAL DRUG EDUCATION PROGRAM AND COMPREHENSIVE TOBACCO CONTROL PROGRAM IN SUSTAINING AND BALANCING LIFE OF LEARNERS 2023', 'http://depedmanila.net:5000/d/s/uzeyts5mVwC3TnTq9UV5ykttqQqJ2AIV/TxBiZur4XA2ivyQjVKqHik8eHVFfUt4r-2b4g4D3XtQo', '104', '2023-03-01', 'NUMBERED MEMORANDUM', 'active'),
(2305, 'SGODELIZ0227773', 'CONDUCT OF THE 2ND DIVISION LEARNING ENGAGEMENT AND MANAGEMENT MEETING', 'http://depedmanila.net:5000/d/s/uzeytrfNooJITOes3EsvT0jK8FUydSNz/JN8elA19ZpStUyea4Naj7gxv8NPg-Jil-074gmjjXtQo', '103', '2023-03-01', 'NUMBERED MEMORANDUM', 'active'),
(2306, 'CIDTRAI0228479', 'GUIDELINES IN THE FINALIZATION OF LEARNING CONTINUITY AND RECOVERY PROGRAM (LCRP) DASHBOARDS', 'http://depedmanila.net:5000/d/s/uzeytvdldu7lhMRrWpIWjsXLMaVwuKE6/xzNY-O3hq04WX0S9gcuQeLvOQfmNUwmb-zL4gSjLXtQo', '47', '2023-03-01', 'UNNUMBERED MEMORANDUM', 'active'),
(2307, 'recrtdal0222516', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 085-23 (VACANCIES FOR ASSISTANT SCHOOL PRINCIPAL II (SHS), SECONDARY SCHOOL PRINCIPAL II (SHS), ELEMENTARY SCHOOL PRINCIPAL I, SECONDARY SCHOOL PRINCIPAL II & II', 'http://depedmanila.net:5000/d/s/uzeynsxFn0EjRRO5MWqXCOuGnTDeYOzU/GY470JoISU17F9iN5JbIhhf8OlBhpHDi-pL_AhNvZtQo', '93', '2023-02-23', 'NUMBERED MEMORANDUM', 'active'),
(2308, 'CIDBREN0221182', 'TRAINING WORKSHOP ON SAFE USE OF CHEMICALS IN THE LABORATORY', 'http://depedmanila.net:5000/d/s/uzeyueumuwZX0m9WtCddhEOZ6hjMwBpd/kzSSDHwrLKlcW54FAGALsiYabVsZ8m-I-ib7guAbXtQo', '105', '2023-03-02', 'NUMBERED MEMORANDUM', 'active'),
(2309, 'rcrdselsa0209332', 'ACTIVITIES FOR REGISTERED GIRL SCOUTS', 'http://depedmanila.net:5000/d/s/uzeyuWgQ8etwdHrL2ylB5jeDXEIrzln8/ZfYGceduhEWZV6yDMfbC9TEQYIi-VruM-g75g3wDXtQo', '39', '2023-03-02', 'DIVISION CIRCULARS', 'active'),
(2310, 'cidbren0301201', 'ACTIVITIES FOR REGISTERED GIRL SCOUTS', 'http://depedmanila.net:5000/d/s/uzeyuZWPRO5ToSQTxBkfo5O4iKglFJVz/RWe5Ej1bs9rvR8lUAeEWGQiBKVM6dH8M-fL7AS_vWtQo', '40', '2023-03-02', 'DIVISION CIRCULARS', 'active'),
(2311, 'publiabbi0228826', 'INVITATION TO THE 6TH EDITION OF WATER PHILIPPINES CONFERENCE AND EXHIBITION', 'http://192.168.88.4:5000/d/s/uzeyudDC8QRVsfqAXhO6fptLMcpSOcWA/U09cpf4s6Q9R3nafVmHCpf4gL39VavpL-Mr8AOg3ZtQo', '68', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2312, 'publiabbi0228544', 'RENAMING THE INTERIM HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD TO HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD', 'http://192.168.88.4:5000/d/s/uzeyucdzsGC88W4I5ejI88arWh5LmEZS/h524WcAmS7QXq2gcAfLgwuV_uc9LTCU1-Ob-AtyLZtQo', '70', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2313, 'publiabbi0228971', 'SCHOLARSHIP INVITATION FROM THE NATIONAL DEFENSE COLLEGE OF THE PHILIPPINES (NDCP)', 'http://192.168.88.4:5000/d/s/uzeyubw034qhH3I8M5qDDI1bhDuN9UJh/mlLKD0hIy3qgT2lVNM1dSxybi3kD3aqY-Kr9gU_fYtQo', '67', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2314, 'publiabbi0228562', 'AMENDMENT TO EXECUTIVE ORDER NO 8 SERIES OF 2022 AMENDING THE COMPOSITION OF THE BIDS AND AWARDS COMMITTEE (BAC) SECRETARIAT AND THE TECHNICAL WORKING GROUP (TWG) FOR GOODS AND SERVICES', 'http://192.168.88.4:5000/d/s/uzeyudUnGW2d4It9Y2HNYYxRTKpZDU3Y/3nfldjk2_GjjCTbGiP8IKqFSu-lPenQD-QL9gEzDZtQo', '71', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2315, 'publiabbi0228484', 'RECONSTITUTION OF THE FISHERIES AND AQUATIC RESOURCES MANAGEMENT COUNCIL (FARMC) IN THE CITY OF MANILA', 'http://192.168.88.4:5000/d/s/uzeyue3zWglt3PKFgZXDObbXgpDFFsRH/QTaWItNQQ-49chR3__Nl4bFmZ1VYpIHi-R78gKTzZtQo', '72', '2023-02-15', 'NUMBERED MEMORANDUM', 'active'),
(2316, 'sgodeliz0215199', 'SERIES OF NEAP-RECOGNIZED VIRTUAL PROGRAMS FOR SCHOOL HEADS, SCHOOL LEADERS, MASTER TEACHERS, AND TEACHES', 'http://depedmanila.net:5000/d/s/uzeyuZ60kGPqkw8ed5MvqePK4iLvpEDY/s-OEia10s6PQTn48V69PCsojXe2Z55LA-db5A8vTWtQo', '21', '2023-03-02', 'DIVISION ADVISORIES', 'active'),
(2317, 'sgodeliz0215603', 'INTERNATIONAL WHOS WHO AWARDEES', 'http://depedmanila.net:5000/d/s/uzeyua5bhY79Bti2jYGKznG2SFkYCx2J/gK4exNteJ4I9HeEApAx9bivF7D1i7YL5-bb6gcO7WtQo', '20', '2023-03-02', 'DIVISION ADVISORIES', 'active'),
(2318, 'sgodeliz0301909', 'COORDINATION MEETING - NCR PALARO 2023', 'http://depedmanila.net:5000/d/s/uzeyuflaJCh9FEF8zHVlL2eIO7jVZ2e9/7rZtDls3BmHcFR6Sa27aNp_lT8WF2fpZ-Zb5gC-fWtQo', '48', '2023-03-02', 'UNNUMBERED MEMORANDUM', 'active'),
(2319, 'publiabbi0301650', 'ADDENDUM TO THE 08 FEBRUARY 2023 MEMO RE:PROPER WEARING OF THE PRESCRIBED UNIFORM', 'http://depedmanila.net:5000/d/s/uzeyufLBc4ilZssq3pHB2UlaRd3rGv2J/7JYEAiuhLSzkVPm_GQw3o93BUhVjj_5A-xL4gISvXtQo', '102', '2023-03-01', 'NUMBERED MEMORANDUM', 'active'),
(2320, 'rcrdsdarn0227455', 'AN ACT TO DECLARE MARCH OF EVERY AS NATIONAL WOMENS MONTH', 'http://depedmanila.net:5000/d/s/uzeyueUODo4unQfQzPO09EK03HpjtRSL/bCZvWRZvhLcz5eahxJaiBbRi7mo5HHdO-vb4gZCLXtQo', '101', '2023-03-01', 'NUMBERED MEMORANDUM', 'active'),
(2321, 'rcrdskael0221727', 'INVITATION TO ATTEND THE INTERNATIONAL WOMENS FORUM 2023', 'http://depedmanila.net:5000/d/s/uzeyuaW0OgW6GcFfmZm0Fvmg7190lau8/Dx3s6EBWdx-sgs-dkU5QkV1l2riJO1dT-Xb7g99jWtQo', '41', '2023-03-02', 'DIVISION CIRCULARS', 'active'),
(2322, 'cidbren0301860', 'BASIC TRAINING COURSE FOR TROOP LEADERS AND WOULD BE TROOP LEADERS ON MARCH 18-19, 2023 AND MARCH 25-26, 2023 (F2F) AT 8:00 A.M - 5:00 P.M.', 'http://depedmanila.net:5000/d/s/uzeyubE0DsbTwJSqkKbzvJqlURAC10aW/L5aUcOHmoPMN0kgtlgkXJrV9-D0Gyqby-V76AkdHWtQo', '42', '2023-03-02', 'DIVISION CIRCULARS', 'active'),
(2323, 'rcrdsdarn0126514', 'CONDUCT OF TECHNOLOGICAL INSTITUTE OF THE PHILIPPINES (TIP) COMPETITIVE STUDENT EXAMINATION', 'http://depedmanila.net:5000/d/s/uzeyuXooewu9SgYPca5WuQu1PoOCb1hY/ZxUP9zNPAIXTtCvTs2rSJYvgTC0lDNdJ-Sb6gasnWtQo', '24', '2023-03-02', 'DIVISION ADVISORIES', 'active'),
(2324, 'SGODELIZ0301371', 'CALL FOR NOMINATION OF PARTICIPANTS FOR COHORT 4 LUNDUYAN SA KAHUSAYAN AND CYCLE 2 OF SEAMEO INNOTECH BATCH 2 COURSES', 'http://depedmanila.net:5000/d/s/uzeyvfDjzW7xnDhu8sVcbBJ3OgTSNopW/E4o1Q82qKl93fdcwLYAx95teIh7hvRWb-K77gJXvWtQo', '108', '2023-03-06', 'NUMBERED MEMORANDUM', 'active'),
(2325, 'HLTHJEN0302510', 'ANNUAL PHYSICAL HEALTH EXAMINATION FOR SDO-BASED EMPLOYEES', 'http://depedmanila.net:5000/d/s/uzeyvnsVSYPsuSts9mZbx2X33JM9AQ4L/yF056cNHvGRyyTh-tw09pKY3cwS1-X1L-JL6gBnXWtQo', '109', '2023-03-06', 'NUMBERED MEMORANDUM', 'active'),
(2326, 'RCRDSMARI0301840', 'REITERATION ON THE SCHEDULE FOR THE CONDUCT OF CY 2023 QUARTERLY NATIONWIDE SIMULTANEOUS EARTHQUAKE DRILL', 'http://depedmanila.net:5000/d/s/uzeyw1MS8yeNaTBO7rnIDutDgHTQVPyx/0xrezBspaoMUFVtIYXa3w4dFTQRNVlPf-HL7ANmzWtQo', '110', '2023-03-07', 'NUMBERED MEMORANDUM', 'active'),
(2327, 'RCRDSMARI0306168', 'DECLARATION OF THE HOLDING OF ASYNCHRONOUS CLASSES IN ALL LEVELS FROM MARCH 6, 2023 UP TO MARCH 10, 2023 FOR ALL PUBLIC SCHOOLS INCLUDING STATE UNIVERSITIES AND COLLEGES IN THE CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzeyw2deEKdL52sb7dNAuXug43DZbLIi/sFkPfgD9KJaQ7U4tOCv5jRiadcjRkYgC-Fb4A0WLWtQo', '112', '2023-03-07', 'NUMBERED MEMORANDUM', 'active'),
(2328, 'SGODSIAS0307945', 'SUMMARY OF RESULTS OF SCHOOL GOVERNANCE COUNCIL (SGC) FUNCTIONALITY ASSESSMENT FOR SECONDARY SCHOOLS MANILA', 'http://depedmanila.net:5000/d/s/uzeywGGOTeCxf5FZEjAahgLwfPWJXENu/g35ZdutgbFh53h2c6n_SbsKGbFFULNq0-5b3Aw-rVtQo', '50', '2023-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2329, 'sgodeliz0301288', 'REGIONAL ATHLETIC MEET (NCR PALARO 2023) (SCHOOL YEAR 2022-2023)', 'http://depedmanila.net:5000/d/s/uzeywA1Dc49aWRZ7TAMPTeeRY6rJGOek/esANB1cWnWR8-QXoSeS5_SNvrgRyj67F-3b1AHOXVtQo', '113', '2023-03-08', 'NUMBERED MEMORANDUM', 'active'),
(2330, 'cidbren0306281', 'PARTICIPATION TO THE REGIONAL COMMITMENT REVIEW AND ALIGNMENT WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeywHXaYydsoF9cCwSm3vpuCxEhApHI/4LpOHelHfkJ7t3tmCMZWGv6ej_HOktYK-171g3t7VtQo', '49', '2023-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2331, 'rcrdselsa0222490', 'CURRENT EVENTS QUIZ BEE AND SPELLING BEE CONTEST', 'http://depedmanila.net:5000/d/s/uzeywARcJCCbj44Fjd75QDnWadhOXLZw/R80mfAqxGIECr29rrfIAqxDeGXbf-6uJ-0L0gK9jVtQo', '45', '2023-03-08', 'DIVISION CIRCULARS', 'active'),
(2332, 'cidbren0306101', 'CORRIGEBDUM TO DIVISION MEMORANDUM NO. 079, S. 2023 DATED FEBRUARY 14, 2023 (COMICS: AS INTERVENTION AND SUPPLEMENTARY LEARNING MATERIALS FOR GRADE 4 ENGLISH, MATH, SCIENCE AND FILIPINO', 'http://depedmanila.net:5000/d/s/uzeywDzbR6ddGmD84gxr0rcfNdk64GXt/Yot3oXONw8R1dnkiZ5q6kT3YU6OBK9N_-yb2gydHVtQo', '51', '2023-03-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2333, 'cidnors030283', 'RESULTS OF THE 2023 COUNCIL SCOUT YOUTH FORUM', 'http://depedmanila.net:5000/d/s/uzeyw1veP8arlYQ8QgKarkkPcv1fQy57/jdYSIseHTTEifxi6BoLkfZ7oz8AO-RBM-wr1AIsrVtQo', '43', '2023-03-08', 'DIVISION CIRCULARS', 'active'),
(2334, 'rcrdsdarn0228177', 'INVITATION TO THE CLUB ADVISERS LEADERSHIP TRAINING AND FELLOWSHIP PROGRAM WITH THE THEME \"GETTING TO KNOW YOU, GETTING TO WORK WITH YWCA FFPI\"', 'http://depedmanila.net:5000/d/s/uzeyw5u2E6hRP6Kea2h2U7s89DZZZqqT/utjdcgAi-F1cmAb-886k9Lu9-MGcVFSK-u72guMPVtQo', '46', '2023-03-08', 'DIVISION CIRCULARS', 'active'),
(2335, 'rcrdsdarn0307400', 'DIVISION SEMINAR-WORKSHOP ON BASIC RECORDS MANAGEMENT FOR SCHOOL PRINCIPALS AND SDO PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeywCZbmko1fJ3tfPIsPmi91cNfRpI0/G4kG3VT7oH7g9FII-DVY-r8bS852acZ_-tL3AiLzVtQo', '115', '2023-03-08', 'NUMBERED MEMORANDUM', 'active'),
(2336, 'rcrdsdarn0227912', 'COLORING CONTEST WITH THE THEME \"BATANG Y-PREP: HANDA AT MATATAAG SA PAGSUSULONG NG FACE FACE NA EDUKASYON SA NEW NORMAL,\"', 'http://depedmanila.net:5000/d/s/uzeywC9D5cd2igEDqbRYEqSi38eCwGz8/Luw2kufPBWF6eUbWwSYWWUnCKHzjnJtR-rb3gDbbVtQo', '44', '2023-03-08', 'DIVISION CIRCULARS', 'active'),
(2337, 'CIDBREN0306634', 'REVISED SCHEDULE OF UPSKILLING AND RESKILLING OF GUIDANCE COUNSELORS/TEACHERS AND PUBLIC SCHOOLS DISTRICT SUPERVISORS ON GUIDANCE PROGRAMS AND SERVICES', 'http://depedmanila.net:5000/d/s/uzeywIONxCbpf2G3VqNa4MYI23YEFH7A/epXRfN6Mcd5A7SMVdeiMhwC1e26JTJLI-l71Ab6HVtQo', '25', '2023-03-09', 'DIVISION ADVISORIES', 'active'),
(2338, 'rcrdsmari030677', 'UNIVERSIDAD DE MANILA FACE-TO-FACE ADMISSION APPLICATION', 'http://depedmanila.net:5000/d/s/uzeywJFBLQyfvI5remE6zEQ7oTPFYVfD/oM8dDTD7rxwcSnvxwjt2b89mpmwIEgIO-j71Ak5rVtQo', '47', '2023-03-09', 'DIVISION CIRCULARS', 'active'),
(2339, 'rcrdsdarn0307705', 'MANILA GIRL SCOUT COUNCIL EXECUTIVE MEETING ON MARCH 16, 2023 (THURSDAY), 2:00 P.M. AT BASIC EDUCATION DEPARTMENT, JP-AVR ADAMSON UNIVERISTY, SAN MARCELINO ST., MANILA', 'http://depedmanila.net:5000/d/s/uzeywKwm7qRAer5r9rXphjxU91m0SSu2/0qGc2KKWN0Xu2rBnPuakC-gZYBJ7xcAR-ib2Am5PVtQo', '48', '2023-03-09', 'DIVISION CIRCULARS', 'active'),
(2340, 'cidtrai0308413', 'PARTICIPATION TO THE REGIONAL COMMITMENT REVIEW AND ALIGNMENT WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeywRcLgUa2lukcQaQilT5bw8PjAstc/K0X3B8_zdhcW5AT2TmPfUJWkUNXC9ARC-gb0AlIvVtQo', '52', '2023-03-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2341, 'ictjosh0306671', 'APPOINTMENT OF SCOUTER JUAN CARLOS SARMIENTO, WBH TO BE THE COUNCILS INFORMATION COMMUNICATION TECHNOLOGY (ICT) COMMISSIONER', 'http://depedmanila.net:5000/d/s/uzeywLwN56xH8kJt8Ik2cWCh35XCRPZs/5r7b2m_5QWDpybULw6-uyrHJp-pGQDsX-e73AXIXVtQo', '49', '2023-03-09', 'DIVISION CIRCULARS', 'active'),
(2342, 'rcrdsdarn0301825', 'CAMERROL ENTERTAINMENT PRODUCTION', 'http://depedmanila.net:5000/d/s/uzeywNvYzatFe8IT6vVzrCilPyM3dcwp/2BdbJUxbEqTHk6rz3NMHNw0IqSfOw3DG-c71gEn3VtQo', '26', '2023-03-09', 'DIVISION ADVISORIES', 'active'),
(2343, 'rcrdsmari030737', '67TH ANNUAL CONVENTION', 'http://depedmanila.net:5000/d/s/uzeywTbXb0wdxSj9nGmojMrKhOBv3Wr7/L_V5DNM166G2AfAn_bg7PDc7M7w_s5_n-bb2A53XVtQo', '50', '2023-03-09', 'DIVISION CIRCULARS', 'active'),
(2344, 'CIDTRAI0308550', 'ADDITIONAL SCHOOLS TO MONITOR AND SPECIAL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'http://depedmanila.net:5000/d/s/uzeytw4AL2SUBcEYKYpjIlK6TtqDgOWm/czwIwgec5s38wnEirDppjdbRsuhTxdwi-T71g6D3VtQo', '118', '2023-03-10', 'NUMBERED MEMORANDUM', 'active'),
(2345, 'icttrai0301308', 'ROBOTICS SUMMER CUP', 'http://depedmanila.net:5000/d/s/uzeyttMybGkue5ZzqJjrtesRwWgWkGn6/PqDe3twvxigAW8jI5Kdwa8-e-GtcYtPk-SL0gYzjVtQo', '27', '2023-03-10', 'DIVISION ADVISORIES', 'active'),
(2346, 'sgodsias0307635', 'CONDUCT OF ADVANCE SITE VALIDATION IN PREPARATION FOR THE NATIONAL SCHOOL BUILDING INVENTORY (NSBI) CY 2023 AND REVISION OF SCHOOLS SITE DEVELOPMENT PLANS', 'http://depedmanila.net:5000/d/s/uzeytwuxjGFC1zv7IKLbBYVDmuPYh3vK/3qyfWDaDiVZ1WV5gnEdR-E0BueEsHPPm-Qb2gijLVtQo', '120', '2023-03-10', 'NUMBERED MEMORANDUM', 'active'),
(2348, 'rcrdskael0306324', 'ASSUMPTION AS ACTING MAYOR', 'http://depedmanila.net:5000/d/s/uzeytuVN7aCKCIyfnuIzeiIfU6aT04ke/BsANO0JMApjZoucRGP_XO702VajrlAFU-O73A8izVtQo', '114', '2023-03-10', 'NUMBERED MEMORANDUM', 'active'),
(2349, 'publichri0310635', 'VALUES FORMATION AND MORAL RECOVERY PROGRAM', 'http://depedmanila.net:5000/d/s/uzeytuDlzUcYkZngu1fT6VJgB3QSt2W0/U3tC1RvoDtEP4SxIDHIgvsPMXomGqVLi-M72giCbVtQo', '22', '2023-03-10', 'DIVISION ADVISORIES', 'active'),
(2350, 'sgodeliz0309951', 'RESCHEDULED FACE-TO-FACE CONSULTATION ON SALARY UPGRADING', 'http://depedmanila.net:5000/d/s/uzeytv4ZNkttgS4MGMD57K7IBlCwYdAj/r8VHxVTtFrYV1G0eoY-Vams3vvfPjCny-Lb0AsR_VtQo', '51', '2023-03-10', 'DIVISION CIRCULARS', 'active'),
(2351, 'SGODSIAS030962', 'SCHEDULE OF ACTIVITIES FOR THE 2023 TECHNICAL ASSISTANCE (TA) DELIVERY ON SCHOOL GOVERNANCE COUNCIL (SGC)', 'http://depedmanila.net:5000/d/s/uzeyu5I84OoIxdHNcQrB2IlRgLnj714D/4M9YMjHw-Gik_M8mtIORIk6ZVbiLWbHJ-JL1A1RHVtQo', '122', '2023-03-13', 'NUMBERED MEMORANDUM', 'active'),
(2352, 'RCRDSDARN022820', 'FUNCTIONS AND GUIDELINES IN THE AVAILMENT OF SERVICES OF THE CITY GOVERNMENT EMPLOYEES CLINIC AND SPECIALIZED MEDICAL SERVICES', 'http://depedmanila.net:5000/d/s/uzeyu2JLCe2737reEMzOii9POVMz3pTE/mD1iUEaBygb_JCL9N7OPI8ZhGfJHOdwy-Hb3gKQzVtQo', '117', '2023-03-13', 'NUMBERED MEMORANDUM', 'active'),
(2353, 'RCRDSDARN0228381', 'FEBRUARY 28 AND MARCH 24, 2023 BONE MINERAL DENSITOMETRY AT THE CGEC', 'http://depedmanila.net:5000/d/s/uzeytxuYgYeYYBk1aSQ80sEXpQYzyRaw/ZWUNs2wIUWIGXeCb71Gl1pm-9Pz0GcHl-Fr0AfAbVtQo', '116', '2023-03-13', 'NUMBERED MEMORANDUM', 'active'),
(2354, 'LNPCHR030843', 'REMINDERS ON THE SUBMISSION OF MASTER LIST FOR THE MONTHLY ALLOWANCE PAY', 'http://depedmanila.net:5000/d/s/uzeytzkx206hPiWaGD7CKQxBqLmjsPa1/JUDSc4RxdtXDUjINPHiCbvrRJ9hbCwsD-EL0g7f_UtQo', '121', '2023-03-13', 'NUMBERED MEMORANDUM', 'active'),
(2355, 'icttrai03101000', 'STATUS OF THE IMPLEMENTATION AND UTILIZATION OF INFORMATION AND COMMUNICATIONS TECHNOLOGY PROGRAMS, INFRASTRUCTURES AND INITIATIVES', 'http://depedmanila.net:5000/d/s/uzeyu9yVieTgU6uM4I3Bd1CWQtijE5lG/OV6TG5Z03AweNIyQ4Dtd0qFX5SqF70xV-9rzg6eHUtQo', '54', '2023-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(2356, 'hlthjen0308645', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 098, S. 2023 (THE CONDUCT OF TRAINING FOR FOUNDATIONAL COURSE ON ADOLESCENT HEALTH)', 'http://depedmanila.net:5000/d/s/uzeyu97iKOWRB7u5YEAio2M5oAnrIDJ9/KTseqJiycG3cP5N2PI535Tyj90b7P3Zy-77zAS9zUtQo', '55', '2023-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(2357, 'RCRDSKAEL0313179', 'ADDENDUM TO DIVISION MEMORANDUM NO. 115, S. 2023 DIVISION SEMINAR-WORKSHOP ON BASIC RECORDS MANAGEMENT FOR SCHOOL PRINCIPALS AND SDO PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeyu8q7CIBkv7lpHQuFt5UU7SjgnU5i/X96geEXql6n3VA7sRolur-rpELP9YHuH-6bxgwtbUtQo', '56', '2023-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(2358, 'SGODMARL030115', 'DIVISION ORIENTATION ON NAT DATA AND LEARNERS QUARTERLY/FINAL GRADES INTEGRATION IN THE LIS', 'http://depedmanila.net:5000/d/s/uzeyu7Q7Xw0t8D4CUaX50sZXPFHeq22P/4yxVsLEyhRnzYUSGKFIe5KH4R8ichaax-4bxgD9HUtQo', '53', '2023-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(2359, 'RECRTNIC0313802', 'SCHOOL REQUEST FOR TEACHER DEPLOYMENT', 'http://depedmanila.net:5000/d/s/uzeyu607ta1X3xNnEBRMKi4Mljo25lvl/vkrbqymtUHfXyf_Q1u18hi2vsAfGYzNE-27wg5sbUtQo', '125', '2023-03-14', 'NUMBERED MEMORANDUM', 'active'),
(2360, 'rcrdsmari0302224', 'THE LEGEND OF PHILIPPINE ACROBATIC TROUPE', 'http://depedmanila.net:5000/d/s/uzeyu1swVWQ2IlHuy8hrEFX3HiMRhW7G/juRmgDe-lHojCLtWxdQP2xj1W69BcyGv-07yAbMHUtQo', '28', '2023-03-14', 'DIVISION ADVISORIES', 'active'),
(2361, 'adminmich0314612', 'CONDUCT OF MEETING ON THE UPDATING FORM1.0 PBB 2021', 'http://depedmanila.net:5000/d/s/uzeyu9Y71W21ZoIAP3mLgHLPR7a2yp1P/5nMcPzG83CTkyOv-StwPK3-WSfldcp-U-zbxAyrvUtQo', '57', '2023-03-14', 'UNNUMBERED MEMORANDUM', 'active'),
(2362, 'ictkevi0313806', 'AYALA FOUNDATION PROJECT CODE IT', 'http://depedmanila.net:5000/d/s/uzeyuDwtXa6pyvlz4Dc6VFl5ks6ai8Ha/jfzMetrLPXdGBce5CrG8zFt_FRjuKxcI-vLzAvp_UtQo', '52', '2023-03-15', 'DIVISION CIRCULARS', 'active'),
(2363, 'CIDTRAI0314766', 'ADDENDUM TO DIVISION MEMORANDUM NO. 022, S. 2023 DIVISION PALARO 2023', 'http://depedmanila.net:5000/d/s/uzeyuFMtC0CVZGlXUcWAPG7yt49klZ7e/8GXAk2VRXj6Cm-uFMXZ63T3PyisVTpWp-trxAh5rUtQo', '126', '2023-03-15', 'NUMBERED MEMORANDUM', 'active'),
(2364, 'ADMINMICH0313201', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 090-23 DATED FEBRUARY 21,2023, REITERATION OF COMPLETENESS AND CORRECTNESS IN THE SUBMISSION OF CSC FORM 48 (DAILY TIME RECORD) AND OTHER PERTINENT REMINDER ON O', 'http://depedmanila.net:5000/d/s/uzeyuJlfiAZXn1eD3qsDIpmJi7DIHEQA/HysjVL0tYs_fo_Fe_NKc28Xe4fOJYZJL-p7ygh4zUtQo', '123', '2023-03-16', 'NUMBERED MEMORANDUM', 'active'),
(2365, 'CIDBREN0313387', 'COORDINATION MEETING ON THE RESULT OF TOFAS DIAGNOSTIC TEST', 'http://depedmanila.net:5000/d/s/uzeyuJLH12KHgRntoyazWfUoRUJe8OxH/9NJka3a6MeeWs1xDzQyVvnFRXyoIYZgr-n7zgZofUtQo', '59', '2023-03-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2366, 'cidbren0310406', '3RD PROFESSIONAL MEETING OF HOME ECONOMICS DEPARTMENT HEADS AND OICS', 'http://depedmanila.net:5000/d/s/uzeyuLBfMWBHagzq0vwH0cfNQmPAJAUS/Rv6Xtl6PYuU7kdRPtNuQsRBNFICqEdqR-l7xgHHrUtQo', '60', '2023-03-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2367, 'sgodsias0316301', 'CONDUCT OF BRIEFING FOR THE CAREER SERVICE EXAMINATION (PEN AND PAPER TEST)', 'http://depedmanila.net:5000/d/s/uzeyuHvHMenGwZGJWPuzcRzTJfFcq4Dw/sJed2rb_AksUbbQhFj2s8H7ueKiC7cfE-kbygQXPUtQo', '54', '2023-03-16', 'DIVISION CIRCULARS', 'active'),
(2368, 'rcrdsmari0314924', 'MASS INDUCTION FOR Y-BODS/ASSOCIATES CLUB OFFICERS', 'http://depedmanila.net:5000/d/s/uzeyuEwUUssdrBJOpb8YTNdlPln5XHps/F7PPZ2W3RUqiDvSf_-Fli9CPYSpGVS2T-iLyAdWnUtQo', '55', '2023-03-17', 'DIVISION CIRCULARS', 'active'),
(2369, 'cidtrai0314468', '2023 PHRELC SFI TEACHERS LEARNING JOURNEY SERIES', 'http://depedmanila.net:5000/d/s/uzeyuQIRhyP5pjuKbGRuZQ38bNRoh3aP/x1odCdINDWD1ESD6Oc-TqJPEM818bKo--ZLxAGFXUtQo', '131', '2023-03-20', 'NUMBERED MEMORANDUM', 'active'),
(2370, 'rcrdskael0320296', 'ADDENDUM TO DIVISION MEMORANDUM NO. 115, S. 2023 (DIVISION SEMINAR-WORKSHOP ON BASIC RECORDS MANAGEMENT FOR SCHOOL PRINCIPALS AND SDO PERSONNEL)', 'http://depedmanila.net:5000/d/s/uzeyuPA3BcFn5mTNFkro2d2CVC63oIsY/Z2wwGJ8ZV8nAkQnq_WIMnNDfF5qhfHf3-Wbwguk3UtQo', '63', '2023-03-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2371, 'SGODMARL0317117', 'ORIENTATION FOR QUALIFIERS OF 2023 BASIC EDUCATION RESEARCH FUND (BERF 2023)', 'http://depedmanila.net:5000/d/s/uzeyuOsS3W5cHQ98u7kXm4jP53jjrB9q/z-OztjE74ewZDQFzb-lOayOtI-Z82uS2-TbwgJEbUtQo', '130', '2023-03-20', 'NUMBERED MEMORANDUM', 'active'),
(2373, 'cidtrai0315698', 'CHANGE OF DATE OF PROFESSIONAL MEETING FOR MATHEMATICS HEAD TEACHERS FROM MARCH 17, 2023 TO MARCH 23, 2023 DUE TO THE ATTENDANCE OF THE EDUCATION PROGRAM SUPERVISOR IN STEAM SEMINAR AT UP NISMED', 'http://depedmanila.net:5000/d/s/uzeyuOS3MOjpB6y3VXzB3NY5lWLAsFxO/jb52z1uHnKeM2MMdCO8922JQLhoGp0Vq-QLwg1j_UtQo', '61', '2023-03-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2374, 'cidbren0310985', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 007, S. 2023 (OPEN EDUCATIONAL RESOURCES (OER) DEEP DIVE)', 'http://depedmanila.net:5000/d/s/uzeyuPs30qzkuSP75JGigcQ51mMn1cdc/ekAKCLKw7azIdis5gr3buQoWwbRzS5pw-N7ygWjjUtQo', '62', '2023-03-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2375, 'ictjosh0308306', 'ARCZONE PROFESSIONAL DEVELOPMENT INC', 'http://depedmanila.net:5000/d/s/uzeyuMbf0utAjSiApc63AFXXKiOi2rhl/YHqU_yS39R7yI-hQic97FJHbh7A-lxzM-MLwgSjHUtQo', '29', '2023-03-20', 'DIVISION ADVISORIES', 'active'),
(2376, 'CIDNORS0316180', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 092 S. 2023 (TRAINING WORKSHOP ON THE CREATION OF VIDEO LESSONS FOR ALTERNATIVE LEARNING SYSTEM TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyuNbFyAFqWEVYKtPq3Lb4TTwcLCBV/siFLvQuLijHX8ilvITNgP0KbZK7gwq47-KbwgbirUtQo', '132', '2023-03-20', 'NUMBERED MEMORANDUM', 'active'),
(2377, 'CIDBREN0316592', 'SCHEDULE OF INTERVIEW FOR OUTSTANDING MASTER TEACHER AND TEACHER DIVISION LEVEL QUALIFIERS', 'http://depedmanila.net:5000/d/s/uzeyuPaRskbwxWLNB0rPWDGvSQ6bHeKR/6JYchouv_1s2TqDrLMYLoqoho6sDOHQN-I7wATCTUtQo', '64', '2023-03-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2378, 'cidtrai0314621', 'DEVELOPMENT AND UTILIZATION OF INTEGRATIVE SUPPLEMENTARY INSTRUCTIONAL MATERIALS AND SUGGESTED ENRICHMENT ACTIVITIES FOR THE SPECIAL INTEREST PROGRAM OF THE GIFTED AND TALENTED GRADE 4 LEARNERS PHASE ', 'http://depedmanila.net:5000/d/s/uzeyuLc43ebm9gliJL4Y9mxgji6MMWOQ/FKhEkEbfjSAQ4tFCfyoZt-QMsuiqMHLM-G7wg1hzUtQo', '129', '2023-03-20', 'NUMBERED MEMORANDUM', 'active'),
(2379, 'CIDBREN0313439', '3RD MVMNC/INVITATION FOR AREA FACILITATORS/MATH-INIC PHILIPPINES', 'http://depedmanila.net:5000/d/s/uzeyuiBAuodyfo0JT6NBe71gr1Qk57Ts/4mt8UOeUzyDp6w1T76BjHLZK3IAJ4Si--BbygeAfUtQo', '30', '2023-03-21', 'DIVISION ADVISORIES', 'active'),
(2380, 'rcrdsmari0309454', 'CONDUCT OF HI-Y SPORTFEST', 'http://depedmanila.net:5000/d/s/uzeyuj1yJ44VbIduoBL5JxGb7YGhCcTI/6tSYejlOaqkVCNtVHOUllo-tJkny-2i9-_bvARwHUtQo', '57', '2023-03-21', 'DIVISION CIRCULARS', 'active'),
(2381, 'rcrdskael0316433', 'MONTHLY MEETING', 'http://depedmanila.net:5000/d/s/uzeyuhtZmi3vBClEJWDuSqrI0loYt5pl/JrfPttkKrN7hDIcgqCMPuMOyx35ZdbT0-97vg2fvTtQo', '56', '2023-03-21', 'DIVISION CIRCULARS', 'active'),
(2382, 'adminmich0313575', 'COMPOSITIONS OF THE SCHOOLS DIVISION OFFICE PERFORMANCE MANAGEMENT TEAM', 'http://depedmanila.net:5000/d/s/uzeyuibZbw7EVyzSnViB2XL5v5qHAh59/AW-KIwrUHXHwTMitY5VU4Vn0ac2DZd_J-7LvgCvbTtQo', '133', '2023-03-21', 'NUMBERED MEMORANDUM', 'active'),
(2383, 'cidbren0321394', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 060, s 2023 (MID-YEAR RAPID ASSESSMENT IN FILIPINO, ENGLISH, SOCIO-EMOTIONAL LEARNING (SEL), AND ACADEMIC RESILIENCY(AR))', 'http://depedmanila.net:5000/d/s/uzeyujSN0CgfbU0s19KDXCNe95d6W5Pp/Q0ljyFYxJBxpeO4J9erQg1z1rpcbjJAC-47vAYO_TtQo', '65', '2023-03-21', 'UNNUMBERED MEMORANDUM', 'active'),
(2384, 'recrthan0321662', 'SCHEDULE OF ACTIVITIES ON THE SCREENING OF NONTEACHING APPLICANTS', 'http://depedmanila.net:5000/d/s/uzeyuRiRMMfHOvp6YokhGw2xULGZTpjO/LsBZHGkeaUg7t6tEmknm141HQthogo0_-1LvgsN7TtQo', '135', '2023-03-22', 'NUMBERED MEMORANDUM', 'active'),
(2385, 'rapalv0317990', 'SUBMISSION OF ABSTRACT OF ABSENCES AND ELECTRONIC FORM 7 FOR THE MONTH OF APRIL 2023', 'http://depedmanila.net:5000/d/s/uzeyuSi2Jekx6tWguzLn8KvJcUNaAyth/gIl5M1xkaHjXLcQD00SRluM0oQvwBXbn-v7uACNnTtQo', '66', '2023-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(2386, 'recrtnic0320858', 'OPENING OF APPLICATION FOR ADMINISTRATIVE ASSISTANT II (SENIOR HIGH SCHOOL) POSITION', 'http://depedmanila.net:5000/d/s/uzeyuR0RXA3s57nhToDYwqhojLRNq87a/lNYZDfnJnkZHWQ68iIufiUPpcPfuEtog-ubuA1tLTtQo', '134', '2023-03-22', 'NUMBERED MEMORANDUM', 'active'),
(2387, 'sgodrodo0317478', 'PROTOCOLS AND GUIDELINES  ON THE SUBMISSION, RECEIPT, AND PROCESSING OF REQUESTS RELATED TO THE SCHOOL BUILDING PROGRAM', 'http://depedmanila.net:5000/d/s/uzeyuSzdRk4QUQiHh2DWO7kwbf9jVFOg/KrCMYnff_3OAKKzv2ziurnmZK8f6rJtz-s7uApszTtQo', '137', '2023-03-22', 'NUMBERED MEMORANDUM', 'active'),
(2388, 'cidtrai0315115', 'CONDUCT OF DISTRICT VI ELEMENTARY SCHOOLS TEACHING DEMONSTRATION', 'http://depedmanila.net:5000/d/s/uzeyuS8q3UPFOyppMf53NIMu9smQyHmA/Ml65OK5vWLutIULa1xuYWt6bbW1oDnj0-nbuALMXTtQo', '136', '2023-03-22', 'NUMBERED MEMORANDUM', 'active'),
(2389, 'cidtrai032161', 'PRESENTATION OF THE GUIDELINES AND MECHANICS ON THE  SEARCH FOR DIVISION LEVEL OUTSTANDING HEAD TEACHERS (SY 2022-2023)', 'http://depedmanila.net:5000/d/s/uzeyuTzEP076xgIf0WWeOQ6I7uoowztY/OrMaeTjiY2B7akDel9xHrrtUzebcil-f-kbvA9b7TtQo', '67', '2023-03-22', 'UNNUMBERED MEMORANDUM', 'active'),
(2390, 'rcrdsmari031677', 'CORRIGENDUM TO DIVISION LETTER NO. 10 34-23 (7th MANILA RED CROSS YOUTH WIDE CAMP)', 'http://depedmanila.net:5000/d/s/uzeyuoHYDUUf5UAoyKOCoSQfhKwgjBec/e2WJes3qcqScDmh0Vzo-jvZfPCLNuAcU-grug9bPTtQo', '68', '2023-03-23', 'UNNUMBERED MEMORANDUM', 'active'),
(2391, 'rcrdsmari0317364', '2nd MANILA WOMEN SUMMIT ON GENDER BASED VIOLENCE INTERVENTIONS AND MANAGEMENT WITH THEME: BIDA ANG BABAE SA MAYNILA', 'http://depedmanila.net:5000/d/s/uzeyumil04d8bq78c49ihKYJgT3fcina/j0faI5aPfZ6l91mnOvDWZjTHrFZF7hjc-dbtAPq3TtQo', '58', '2023-03-23', 'DIVISION CIRCULARS', 'active'),
(2392, 'cidtrai0315668', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 060, s. 2023 (MID-YEAR RAPID ASSESSMENT IN FILIPINO, ENGLISH , SOCIO-EMOTIONAL LEARNING(SEL), AND ACADEMIC RESILIENCY (AR))', 'http://depedmanila.net:5000/d/s/uzeyumIMIw2HcU05BH5qHxno4avfxWdK/zaJ4B0ymlwXbxLBRwbACvlYx_1w_9sQE-brugLafTtQo', '141', '2023-03-23', 'NUMBERED MEMORANDUM', 'active'),
(2393, 'rcrdsdarn0309590', 'BAPTIST YOUTH IMPACT', 'http://depedmanila.net:5000/d/s/uzeyulrxbo2Wssm2FqsnXS1YH9HcI4ZR/YqhTNpYKZJEo7v_7XUoqU72rmM83RWk8-YbtAJaHTtQo', '32', '2023-03-23', 'DIVISION ADVISORIES', 'active'),
(2394, 'publichri0322248', 'PHILIPPINE HOME ECONOMICS ASSOCIATION(PHEA) WORLD HOME ECONOMICS DAY (WHED)', 'http://depedmanila.net:5000/d/s/uzeyukjZ5WEz0gCWhhp6V7q2hHOQldFw/DJDYAFIBq-HA4JP8FpVHc9dErQSJxpGb-Ursgl5rTtQo', '31', '2023-03-23', 'DIVISION ADVISORIES', 'active'),
(2395, 'rcrdskael0316518', 'RESULTS OF THE 2022 ASMD RAFFLE TICKET DRAW', 'http://depedmanila.net:5000/d/s/uzeyuohwucZwdIZeV6JbHOhNCj6XkwEc/IwK1fKCw1ZWo8qOAD4OGSlH5jn4I65Cr-TLvgkJTTtQo', '59', '2023-03-23', 'DIVISION CIRCULARS', 'active'),
(2396, 'recrtshe0320422', '2023 TRAINING FROM THE PERSONNEL OFFICERS ASSOCIATION OF THE PHILIPPINES, INC.', 'http://depedmanila.net:5000/d/s/uzeyupH9AmIjWxGAnfjXKOoNA2tx3Sqa/1WGvRJ__crY_6otxv42YlNq4KdAsRLBv-OLvAsojTtQo', '148', '2023-03-23', 'NUMBERED MEMORANDUM', 'active'),
(2397, 'recrtmar0322652', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF ADMINISTRATIVE ASSISTANT II APPLICANTS', 'http://depedmanila.net:5000/d/s/uzeyuniLxK66ehnOKSiWibzqRztDXsHS/4Sl0yjwx4LKyjRfTu5yUoZzuUN7uFDqs-KrtgX3_TtQo', '146', '2023-03-23', 'NUMBERED MEMORANDUM', 'active'),
(2398, '149032423', '2nd MANILA INTELLECTUAL PROPERTY, INNOVATION AND BUSINESS INCUBATION EXPO (MIPIBIEX) 2023', 'http://depedmanila.net:5000/d/s/uzeyvIed8kGrDjGW9CVtIRsMdW2Apzun/uAkHeGhF9d3kob_KswrNIpuxcTCl6McL-17rA-B_TtQo', '149', '2023-03-24', 'NUMBERED MEMORANDUM', 'active'),
(2399, 'sgodsias0322945', 'PRE-WORK ACTIVITY ON THE SDO-MANILA MATATAG PRIME COMMINTMENT REVIEW AND ALIGNMENT WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeyv4B5VQyGrokOLIggfOazlvraksx5/jTW9itA5E5iQBGQTOubl1hEf3MLPpVbU-wrogmhnTtQo', '150', '2023-03-24', 'NUMBERED MEMORANDUM', 'active'),
(2400, 'rcrdskael03167', 'REQUEST TO MINISTER COUNSELLING TO STUDENTS IN DIFFERENT PROBLEM AREAS IN LIFE', 'http://depedmanila.net:5000/d/s/uzeyuxvudytX5LY5UzzCufA2uZz7mCGg/Rb6viAP3jn6KfG6t5Y8H-9aly5Xp8YQX-trqgDQ7TtQo', '60', '2023-03-24', 'DIVISION CIRCULARS', 'active'),
(2401, 'rcrdsmari0315411', ' SCOUTING ORIENTATION COURSE', 'http://depedmanila.net:5000/d/s/uzeyusOjbYvgYYWV97iX5xd6LfNPE7bn/Teax4mOaulPIKBFwWigamV54KUAXd2xw-rbpgcQjTtQo', '61', '2023-03-24', 'DIVISION CIRCULARS', 'active'),
(2402, 'ictjosh0302438', 'PUP RADIO FESTIVAL 2023', 'http://depedmanila.net:5000/d/s/uzeyusgKjevP33JMQIppky3EMC0hpePV/9Dr0BSAnr0nRkdLIESzTFzLVnwnbQ_PK-obpgbgDTtQo', '33', '2023-03-24', 'DIVISION ADVISORIES', 'active'),
(2403, 'PUBLICHRI0323871', 'LANDBANKS REITARATION ON THE PROPER PROCESSING OF REPAYMENTS FOR LIVELIHOOD LOAN FACILICTY', 'http://depedmanila.net:5000/d/s/uzeyus78TS2Wd9z3YaDfslXRP8kJPHmG/E1y3kMrYA2qaD5uckQtw1_bNj0MFFPeI-hbqgt-rStQo', '144', '2023-03-24', 'NUMBERED MEMORANDUM', 'active'),
(2404, 'publichri0323929', 'CONSOLIDATED LINE-UP OF ACTIVITIES FOR WOMENS MONTH CELEBRATION CY2023', 'http://depedmanila.net:5000/d/s/uzeyuwnW7c7Hq2aqRT2jUHpktyCniqHM/n2ZN2pv7sXzBbEB92pS6exUqFwi6_VDw-Y7rAlsPStQo', '139', '2023-03-24', 'NUMBERED MEMORANDUM', 'active'),
(2405, 'publichri0323726', 'AMENDMENT OF EXECUTIVES ORDER NO. 56, SERIES OF 2022 RENAMING THE LOCAL NUTRITION COMMITTEE TO LOCAL NUTRITION CLUSTER', 'http://depedmanila.net:5000/d/s/uzeyuxDuokFe9UCSnNtjjjbb3vKQ97WI/eEogR3eIJj4qSnbIyq25tAD-amHwqdh--XLrgRLzStQo', '140', '2023-03-24', 'NUMBERED MEMORANDUM', 'active'),
(2406, 'publichri0323155', 'DEHECHOS LETTER REQUEST FOR TRAVEL AUTHORITY', 'http://depedmanila.net:5000/d/s/uzeyuxVVwqsUK46AGRVy0skP1xXUCgUV/zoH9dMSRC3H0R00gt7kX9CwenRWhC4QS-Vrpg37XStQo', '145', '2023-03-24', 'NUMBERED MEMORANDUM', 'active'),
(2407, 'SGODSIAS0322439', 'DIVISION TRAINING WORKSHOP ON DATA MANAGEMENT AND INFORMATION REQUIREMENTS (DMIR)', 'http://depedmanila.net:5000/d/s/uzeyvNcbv4Iyjuxh97ZnWG5mQcIJitdV/goCX_BZvz5AH5hrESNbWQHoNFSWVu30I-Mbog1pvStQo', '69', '2023-03-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2408, 'adminmich032095', 'UPDATING AND CHECKING OF FORM1.0 2021', 'http://depedmanila.net:5000/d/s/uzeyvMd0xm7YspLdCz7WdGpFhPbBhOCh/4AzFahchiV4muR2djySdNrIoBk_c5iax-KbogvJXStQo', '70', '2023-03-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2409, 'rcrdsmari0322479', 'INVITATION TO TEACHERS AND STUDENTS IN THE SENIOR HIGH LEVEL FOR THE CELEBRATION OF THE PHILIPPINE RED CROSS 75TH YEAR ANNIVERSARY IN THE FIELD OF HUMANITARIAN SERVICE', 'http://depedmanila.net:5000/d/s/uzeyvJVQX0RKTOrJgJPihbtVIHIOFODf/5GQYSZ5_N-S0LOIW8J5L0pLu6Sqfldfd-I7ogBo_StQo', '62', '2023-03-27', 'DIVISION CIRCULARS', 'active'),
(2410, 'rcrdsmari0317709', '3-DAY SALE AT SM STORE MANILA', 'http://depedmanila.net:5000/d/s/uzeyvJ51psMY6t4bPblthzpkg3c0ctI2/T5rnPwuxZTxQIdY7o8HMUlJqkdUOXLz5-HbrgKYnStQo', '142', '2023-03-27', 'NUMBERED MEMORANDUM', 'active'),
(2411, 'rcrdsmari0317187', 'PNEUMONIA VACCINES FOR MANILA CITY HALL BASED SENIOR CITIZEN EMPLOYEES', 'http://depedmanila.net:5000/d/s/uzeyvLD1JQGnGJZGVxM1d9LfaNbhcd9N/hWvaldk7Bob0r3Pzn48lcfxXLDbqzKP3-Fbqg54HStQo', '143', '2023-03-27', 'NUMBERED MEMORANDUM', 'active'),
(2412, 'LNPMAR0323270', 'CAPACITY BUILDING OF SCHOOL-BASED ADMINISTRATIVE OFFICERS/PERSONNEL ON LEAVE ADMINISTRATION', 'http://depedmanila.net:5000/d/s/uzeyvSsBpQWP1gUZbXsyxzujO8PjyKlp/REO6iI_SU5k3L9v_R4PQWaXI5Y0YmHcb-CLrAP2jStQo', '71', '2023-03-28', 'UNNUMBERED MEMORANDUM', 'active'),
(2414, 'hlthjen0322284', 'ASKING FOR MEDICAL ASSISTANCE FOR THE OPERATION OF JOSEFINO MENDOZA', 'http://depedmanila.net:5000/d/s/uzeyvMuc5s74g8YOp14b4e7otSwZwiCc/x0PBrd6BFP47jlUkXIHUarwREg_i_2S2-ArqgKWLStQo', '63', '2023-03-28', 'DIVISION CIRCULARS', 'active'),
(2415, 'cidtrai0327371', 'SUPERVISORY PLAN OPERATIONALIZATION: INTERGRATING SOCIO-EMOTIONAL LEARNING (SEL) THROUGH PROJECT INITIATIVE', 'http://depedmanila.net:5000/d/s/uzeyvQSbDmMb4jDa1KoeJX0c7IZkLWfd/nay5oeRy031dKvB2b2bZFBtmFw-sWvyr--7nA-1vStQo', '153', '2023-03-28', 'NUMBERED MEMORANDUM', 'active'),
(2416, 'recrtedi0327973', 'SUBMISSION OF I.D. INFORMATION SHEET FOR CITY-PAID EMPLOYEES', 'http://depedmanila.net:5000/d/s/uzeyvO30cCjSXlWdUefygDpAN605TcUF/Bn5BfBiV-2VRLMSB8gymWXAscOBFLnxo-9Lmgp1TStQo', '152', '2023-03-28', 'NUMBERED MEMORANDUM', 'active'),
(2417, 'RECRTNIC0327128', 'REOPENING OF APPLICATION FOR ADMINISTRATIVE ASSISTANT II (SENIOR HIGH SCHOOL) POSITION', 'http://depedmanila.net:5000/d/s/uzeyvVZNZ8uWOkZI84dmIpmolKB6Iw5E/L3bjCZa2SKr9To7YC3A3hiGDYtoESSpE-77fAzlXNtQo', '155', '2023-03-29', 'NUMBERED MEMORANDUM', 'active'),
(2418, 'recrthan0323522', 'VACANCIES FOR NON-TEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOL, MANILA', 'http://depedmanila.net:5000/d/s/uzeyvWQAxOzSZyDyLEMDb4Hp62VbGKVZ/B_SIQ3MBYWERbXYlc2h6oeBpFt103JVW-6LegHFDNtQo', '156', '2023-03-29', 'NUMBERED MEMORANDUM', 'active'),
(2419, 'ICTMICH0130324', 'MOBILE EDUCATIONAL EVENT ON CLIMATE CHANGE.', 'http://depedmanila.net:5000/d/s/uzeyoNkjQUwEVIph6VdAIedwzlH8xA8o/Qltfpzs633kNZ-Mmk-g_v-UrsTDymtw2-E7rgDyKcuQo', '13', '2023-02-08', 'DIVISION ADVISORIES', 'active'),
(2420, 'HLTHJEN0207517', 'COORDINATION MEETING \"TIBAY NG DIBDIB\" IMPLEMENTATION.', 'http://depedmanila.net:5000/d/s/uzeyoS9VweLRUbKwVowo4YT1IrsNsCKH/U6tRgTo1kKXTYpYte72VeXnbzcW2Ris1-XrngXqqauQo', '31', '2023-02-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2421, 'recrtalf0206282', 'VACANCY FOR THE POSITION OF SUPERVISING ADMINISTRATIVE OFFICER AT THE DIVISION OF CITY SCHOOLS, MANILA.', 'http://depedmanila.net:5000/d/s/uzeymvCgsGWu3Nh7jx7OdGcs2gPEDa8q/L5evinIWnLCy2dZLX_gjRrGY0sDCCktX-UrnAt5WauQo', '51', '2023-02-13', 'NUMBERED MEMORANDUM', 'active'),
(2422, 'LNPANN0324457', 'DATE OF FILING AND DOCUMENTARY REQUIREMENTS OF APPLICATION FOR LEAVE OF ABSENCE', 'http://depedmanila.net:5000/d/s/uzeyvTIaWYkR4modxaCPB6vLU6ASTcQr/1eL9pw2VAUgwMcwN9HjkMIS2yFSUJn0p-4bfgV0nNtQo', '154', '2023-03-29', 'NUMBERED MEMORANDUM', 'active'),
(2423, 'RECRTNIC02107', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF ADMINISTRATIVE OFFICER II APPLICANTS.', 'http://depedmanila.net:5000/d/s/uzeymw3UGWvgf1uB5H5EEguoYvxF2SQE/GvmHUqHXPwbrnamHu3PXSi-DKR53wt0R-drhADuOYuQo', '58', '2023-02-13', 'NUMBERED MEMORANDUM', 'active'),
(2425, 'RECRTALF0209554', 'SCHEDULE OF ACTIVITIES ON THE SCREENING OF NON-TEACHING APPLICANTS.', 'http://depedmanila.net:5000/d/s/uzeymx35Dm7n6ISSxVnsar3gQrYmZthz/-FTCuu1imwFp9Fdu1BN3FStZ8pO9OL1d-bbjAfNmYuQo', '61', '2023-02-13', 'NUMBERED MEMORANDUM', 'active'),
(2426, 'hlthjen0328321', 'DIVISION MEMO FOR MEDICAL ASSISTANCE OF INJURED TEACHER PARTICIPATING SUPERINTENDENTS CUP', 'http://depedmanila.net:5000/d/s/uzeyvqI64AsbPGKrBcWeteGDLMD08xaT/LqW7lQwgBpoFoTnkVZwa6ku2I0xQCuCc-ybfgwTDNtQo', '64', '2023-03-30', 'DIVISION CIRCULARS', 'active'),
(2427, 'SGODELIZ0210686', 'COORDINATION MEETING FOR THE DIVISION EDUCATION DEVELOPMENT PLAN.', 'http://depedmanila.net:5000/d/s/uzeynTY9dGC18ecU6zgGikhSsq3cPmEE/O0hsjIO4kyD2ovsQoqYtQzi3cYXgnbDM-B7EgkIvftQo', '82', '2023-02-17', 'NUMBERED MEMORANDUM', 'active'),
(2428, 'SGODSIAS0324887', 'EXTENSIONS TO THE PERIOD OF CONSULTATIONS AND APPLICATIONS FOR CHANGES IN TUITION/OTHER SCHOOL FEES, RENEWAL OF PERMITS TO OPERATE, AND NEW COURSE OFFERINGS OF PRIVATE EDUCATIONAL INSTITUTIONS IN LIGH', 'http://depedmanila.net:5000/d/s/uzeyvtq5C4te0azwQi8fX296Ff3GFsBt/IxJAZPclS0FfxqikHoaQzE1EoH5RZYl7-w7egIyrNtQo', '151', '2023-03-30', 'NUMBERED MEMORANDUM', 'active'),
(2429, 'rcrdsmari0314496', 'REQUESTING TO PROMOTE SAINT RITA COLLEGE-MANILA, INC. TO PUBLIC AND PRIVATE SCHOOLS (GRADE SCHOOL, JUNIOR HIGH SCHOOL) IN THE DIVISION OF MANILA', 'http://depedmanila.net:5000/d/s/uzeyvsQ5XicOAV7iuNlYdu0V8yKvnGP3/m2uNyMx6lsGPxxJJijs3xdolIrI1nmfW-vLdgPCPNtQo', '67', '2023-03-30', 'DIVISION CIRCULARS', 'active'),
(2430, 'rcrdsmari0317343', 'REQUESTING TO CONDUCT SCHOOL INFORMATION CAMPAIGN', 'http://depedmanila.net:5000/d/s/uzeyvrQUaSv4vvwXvIuUI7tbVdBfN85Y/kBHZuMxrYPaQAW--TPCsv_85vnutBQTl-tbeAbh3NtQo', '66', '2023-03-30', 'DIVISION CIRCULARS', 'active'),
(2431, 'sgodmarl0329821', 'DCS MANILA MATATAG PRIME COMMITMENT REVIEW AND ALIGNMENT WORKSHOP CRAW', 'http://depedmanila.net:5000/d/s/uzeyvvOsPSj4B1KagKA34Iv35yzMBOcV/NiaHCP3fjcu-6WQVJqlSnokLy9ZYwDWQ-rrfAiBfNtQo', '157', '2023-03-30', 'NUMBERED MEMORANDUM', 'active'),
(2432, 'rcrdsmari0321732', 'CONDUCT OF PHILSYS REGISTRATION IN ALL ELEMENTARY AND SECONDARY SCHOOLS IN MANILA', 'http://depedmanila.net:5000/d/s/uzeyvpRIfwawyACCoKqXt1tNOKUTZTju/xrjwm81Uk-6YX0Z9vnUGALzmOPisDKvK-p7dgVw7NtQo', '65', '2023-03-30', 'DIVISION CIRCULARS', 'active'),
(2433, 'sgodsias0327416', 'GENDER AND DEVELOPMENT (GAD) MAINSTREAMING EVALUATION FRAMEWORK (GMEF) ORIENTATION WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeyvwFfnglP1Z3UaZPudlHMUxeuywcd/wI8xdkHUkK3xcpIUkFb9oc7YstFagJCy-n7dA7QTNtQo', '159', '2023-03-30', 'NUMBERED MEMORANDUM', 'active'),
(2434, 'rcrdskael0216818', 'WINNERS IN THE THAILAND 2023 INVENTORS DAY AND BANGKOK INTERNATIONAL INTELLECTUAL PROPERTY, INVENTION, INNOVATION AND TECHNOLOGY EXPOSITION (IPITEX)', 'http://depedmanila.net:5000/d/s/uzeyvxFGkwmhGPLdLOGkt4b8wW8ttjIR/NL_ohqkBWYyq0nxlLQwwynI_VBq8OIxC-mbcAHf7MtQo', '160', '2023-03-30', 'NUMBERED MEMORANDUM', 'active'),
(2435, 'accmjil0329497', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF MID YEAR FOR FY 2023', 'http://depedmanila.net:5000/d/s/uzeyvxffS4UdFL7c3NAGH7ZmYVkRHocT/ScQ8IcEhBBSansxQNWs70k96vlliIdnu-kbdgYfbMtQo', '158', '2023-03-30', 'NUMBERED MEMORANDUM', 'active'),
(2436, 'cidbren0328881', 'MATH IN ACTION (A VIDEO-MAKING CONTEST IN MATHEMATICS FOR THE LEARNERS BY THE LEARNERS)', 'http://depedmanila.net:5000/d/s/uzeyvz5f6QczedgueGGxMGtwa1oIl9sZ/s_q8oXtUW-GwAbjTaqJinbzCd3tEWUmL-iLfg_u_MtQo', '161', '2023-03-30', 'NUMBERED MEMORANDUM', 'active'),
(2437, 'recrtmar03288', 'DELEGATION OF VARIOUS RESOURCE ACTIONS TO SCHOOLS', 'http://depedmanila.net:5000/d/s/uzeyvi3jICbG2FFjmUnCRpNvQLng0HxU/wQq6dgNyqoxQTUBgvUvJ4Qz-GXY8beZX-cLeAtuDMtQo', '162', '2023-03-31', 'NUMBERED MEMORANDUM', 'active'),
(2438, 'CIDBREN0328671', 'BITE-SIZE LECTURES IN MANAGING SCHOOL LIBRARIES', 'http://depedmanila.net:5000/d/s/uzeyvbFMAaVke8L2nGTZ4ppnFqCeRuja/Onm0oiUCI3Skck8Gkc5k4pUooOHaNaDJ-abfgndrMtQo', '163', '2023-03-31', 'NUMBERED MEMORANDUM', 'active'),
(2439, 'CIDBREN0328461', 'ON-THE-SPOT PERFORMANCE EVALUATION OF TLE/EPP LEARNERS', 'http://depedmanila.net:5000/d/s/uzeykwZycAmUfuS3zLnGfXDiTkaAopNp/eRKyB53mJKApkamswEScDl16fbKSC3X7-J7Ngh7zItQo', '164', '2023-04-03', 'NUMBERED MEMORANDUM', 'active'),
(2440, 'CIDBREN0328522', 'SEARCH FOR DIVISION LEVEL OUTSTANDING HEAD TEACHERS SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyl1gkxQCB6GtOhEgq96Ljg5VVqYCi/NUAmTj0j-2KrOBUE3Btzh3FNnTonzw4U-PrPg6tfItQo', '165', '2023-04-03', 'NUMBERED MEMORANDUM', 'active'),
(2441, 'publitrai040327', 'PARTICIPATION OF TEACHERS IN VOLUNTEER WORK AND EXTRA CURRICULAR ACTIVITIES.', 'http://depedmanila.net:5000/d/s/uzeykvrymyYuyAIY3dzQyFLnlOEyHbg3/Jjf8-zz3svxLdgyftqGNXk7qYt7F6exy-aLNgmgzJtQo', '167', '2023-04-04', 'NUMBERED MEMORANDUM', 'active'),
(2442, 'publitrai0403107', 'PROMPT SUBMISSION OF DOCUMENTS RE: PAYROLL AND SALARY VOUCHERS OF JOB ORDERS', 'http://depedmanila.net:5000/d/s/uzeykv1BOi8ZWVNzzD34nE6Bthuz3d1o/qwx9LPsDwriems6qaJXywqZJ_1jHBFL3-YbPgbAHJtQo', '166', '2023-04-04', 'NUMBERED MEMORANDUM', 'active'),
(2443, 'rcrdsmari0329979', '2023 SCOUTING ORIENTATION COURSE FOR CORAZON AQUINO HIGH SCHOOL', 'http://depedmanila.net:5000/d/s/uzeykvRa5qnLU6S1QjyeHOiA1dzrys5w/pTVVixwoUzqHuDZn0r9cWWb6aJLaionB-WLNgGvnItQo', '68', '2023-04-04', 'DIVISION CIRCULARS', 'active'),
(2444, 'ICTKEVI0405169', 'CONDUCT OF BASELINE ASSESSMENT OF INTERNAL CONTROL SYSTEM - OPERATIONS LEVEL IN THE NATIONAL CAPITAL REGION, SELECTED SCHOOLS DIVISION OFFICES AND SCHOOLS', 'http://depedmanila.net:5000/d/s/uzeylBlW56drmazIGrY6xivBJhencOWK/c_lVpzfrgea5gI-dEicrc06ptuUyA0pV-07NAoafJtQo', '72', '2023-04-05', 'UNNUMBERED MEMORANDUM', 'active'),
(2445, 'sgodsias0403215', '1st QUARTER RE-ORIENTATION AND COORDINATION MEETING ON THE CHILD PROTECTION', 'http://depedmanila.net:5000/d/s/uzeylA3vIeiGBtoh9ple5HWfgtrc0eM1/nS4dDSmNF9RAa77m7VrrCZ1tYX1qKott-yrNgfJ_JtQo', '73', '2023-04-05', 'UNNUMBERED MEMORANDUM', 'active'),
(2447, 'cidtrai0327275', 'WINNERS IN ROBOTICS INNOVATIVE PROJECT', 'http://depedmanila.net:5000/d/s/uzeylAUJzmBnN03ZrIVj0FBkpMyc5QId/9dAEEtShNdOBJloI07S4zHEIhf7VwiRM-urMgVZXJtQo', '170', '2023-04-05', 'NUMBERED MEMORANDUM', 'active'),
(2448, 'cidtrai0327777', 'ENHANCING AND RESKILLING OF TEACHERS HANDLING CHILDREN WITH AUDITORY DIFFICULTY', 'http://depedmanila.net:5000/d/s/uzeyl7vvp69kevXJ8w7fWL9GYH5GSNTI/xKm0twvTdURRASySrA1SbQrB2Rg7Ug8X-q7MAiozJtQo', '169', '2023-04-05', 'NUMBERED MEMORANDUM', 'active'),
(2449, 'CIDBREN0328588', 'MANILA KNOWS, MANILEÑO KNOWS QUIZ BEE CONTEST', 'http://depedmanila.net:5000/d/s/uzeyl6N8bepbXIN8s4t7k1XEGI1OAi8X/Mqc2PcXDTbL-WaKc9s_GQgjXGZ_Qi9Su-o7MA14PJtQo', '168', '2023-04-05', 'NUMBERED MEMORANDUM', 'active'),
(2450, 'rcrdsmari0324717', 'CONDUCT OF FUN RUN', 'http://depedmanila.net:5000/d/s/uzeyl6ejjkrv2XpRezOwWjYv5xmh8p43/uDFTqNcTvsA-qb_3I_iAALk5qPVOIQt3-nLPgBXnJtQo', '70', '2023-04-05', 'DIVISION CIRCULARS', 'active'),
(2451, 'rcrdsdarn0329950', 'REQUESTING TO CONDUCT ORIENTATION PROGRAM FOR GRADUATING STUDENTS', 'http://depedmanila.net:5000/d/s/uzeyl7DvzuadFzhHqsaRPReCKqLLmPfe/6y-Tyaj3xUxcYiRWNUUcgR2oolhCQB02-k7OgY2HJtQo', '69', '2023-04-05', 'DIVISION CIRCULARS', 'active'),
(2452, 'ICTJUAN0324544', 'NATIONAL CONSULTATION-TRAINING FOR TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyl5Ek5MN4rlqnwmDO6paacwHfVJ0f/2j_ZC3xRAJ3ZasDJit_ZbrD_uQRArmlJ-i7NAoFbJtQo', '34', '2023-04-05', 'DIVISION ADVISORIES', 'active'),
(2453, 'CIDBREN0404702', 'ONLINE ORIENTATION ON DEPED ORDER No. 006, s. 2023: GUIDELINES ON THE IMPLEMENTATION OF THE JOINT DELIVERY VOUCHER PROGRAM FOR SENIOR HIGH SCHOOL TECHNICAL-VOCATIONAL-LIVELIHOOD SPECIALIZATIONS SY: 20', 'http://depedmanila.net:5000/d/s/uzeyk8lNG2KjpNnZ7WK8cLL4egJ2ifdI/mpmHjXmvgQI66WWxoxofHgbBuhnGH1-B-97OgLNPJtQo', '172', '2023-04-11', 'NUMBERED MEMORANDUM', 'active'),
(2454, 'cidtrai0404453', 'SCHOOL LIBRARY HANDBOOK', 'http://depedmanila.net:5000/d/s/uzeyl9dWbWW8iVvV9C7dtIdcZllINGWO/2IMk-fKYoeuDNAyeCB3FXuJ_3gVlozto-g7MgJUnJtQo', '74', '2023-04-05', 'UNNUMBERED MEMORANDUM', 'active'),
(2455, 'cidtrai040455', 'PRESENTATION PORTFOLIO ASSESSMENT FOR ALTERNATIVE LEARNING SYSTEM ACCREDITATION AND EQUIVALENCY ELEMENTARY SAND JUNIOR HIGH SCHOOL LEARNERS FOR SY 2022  2023', 'http://depedmanila.net:5000/d/s/uzeykFZkNmmevY8hddhgWk7r9ms8YO0I/zPGkPB2xzw1fpsY8GMU9PCWYQ7QMz7en-J7SAExrKtQo', '173', '2023-04-12', 'NUMBERED MEMORANDUM', 'active'),
(2456, '04122023', 'DIVISION WIDE IMPLEMENTATION OF THE SPECIAL PROGRAM FOR INFORMATION AND COMMUNICATIONS TECHNOLOGY', 'http://depedmanila.net:5000/d/s/uzeykErkYYHTKgBr9GruwwZ8fyDfnl3M/GAhtuZjlm3gPWusR_TAMhf0IRHpYboKD-IbQg5RDKtQo', '334', '2023-04-12', 'NUMBERED MEMORANDUM', 'active'),
(2457, '04122023', 'DISTRICT AND DIVISION LEAD INFORMATION AND COMMUNICATIONS\nTECHNOLOGY (ICT) COORDINATORS FOR THE SCHOOL YEAR 2021-2022', 'http://depedmanila.net:5000/d/s/uzeyk9kyDKp24xQ5EXQ3MhqFE8VlEYHc/YqFpDbUwHBV-jmeAfZ21oQqp8vNEHu0g-GrRA7AnKtQo', '111', '2023-04-12', 'DIVISION CIRCULARS', 'active'),
(2458, '04122023', 'CREATION OF A SCHOOL INFORMATION COMMUNICATIONS TECHNOLOGYICT CIMMITTEE', 'http://depedmanila.net:5000/d/s/uzeyk9KZWC8ZtmGFOqPZ05qDtbEk9KmN/nZMHvepCaNZiPJ9x5yqdaEPyMOdSLOqV-E7QgXADKtQo', '199', '2023-04-12', 'DIVISION CIRCULARS', 'active'),
(2459, '04122023', 'FOCUS GROUP DISCUSSION FGD ON THE UTILIZATION AND IMPLEMENTATION OF INFORMATION AND COMMUNICATIONS TECHNOLOGY PROGRAMS INFRASTRUCTURE AND INITIATIVES', 'http://depedmanila.net:5000/d/s/uzeykABMuSj1s0oCDfojgEFrT32co973/XuiHjIu63PYls4-LHpsBCjt9gTy9O5Vp-DbQg7_bJtQo', '119', '2023-04-12', 'DIVISION CIRCULARS', 'active'),
(2460, 'RECRTDAL0412307', 'ASSIGNMENT AND REASSIGNMENT OF ELEMENTARY SCHOOL PRINCIPAL', 'http://depedmanila.net:5000/d/s/uzeykG094uJ7G4fxbV02QuOVO3n3PJYS/gHdFl39yTsqsq3VRRK9YGxzUQfC2mrz5-BrRAjerJtQo', '174', '2023-04-12', 'NUMBERED MEMORANDUM', 'active'),
(2461, 'cidbren0411680', 'ALS PPA Year 4, ALS CAREER ORIENTATION 2023 AND OTHER MATTERS', 'http://depedmanila.net:5000/d/s/uzeykFI9FgW5fb73PZM0tuiQ95ZSjZfn/Gg_uRvACdCNKN4vO0HR-uAHJOswXSE-w-_7NgX9_JtQo', '75', '2023-04-12', 'UNNUMBERED MEMORANDUM', 'active'),
(2462, 'CIDTRAI0404419', 'COMPILATION OF THE HISTORY OF PUBLIC ELEMENTARY AND SECONDARY SCHOOLS IN THE DIVISION OF MANILA', 'http://depedmanila.net:5000/d/s/uzeyk6dNmSOZt8G2pUCpvIYgHUnXXd7l/yTXWLOF5h6RWHTf_tfwl6kP1_3fRshzJ-WLTAMYbKtQo', '171', '2023-04-13', 'NUMBERED MEMORANDUM', 'active'),
(2463, 'SGODSIAS0404647', 'APPLICATION FOR GOVERNMENT PERMIT FOR NEW SCHOOL OR COURSE/ OFFERINGS FOR SCHOOL YEAR 2024-2025 USING QUALITY ASSURANCE DIVISION PERMIT & RECOGNITION OPTIMIZER (QADPRO) AND APPLICATION FOR TUITION/OTH', 'http://depedmanila.net:5000/d/s/uzeyk73mTapoSm21vrI7kTB5a7wrP5Bl/6046OCn10ty-4AHfBJJ9yhxSCRtf9sML-ULSgOH7KtQo', '177', '2023-04-13', 'NUMBERED MEMORANDUM', 'active'),
(2464, 'sgodsias041241', 'TECHNICAL ASSISTANCE (TA) ON SCHOOL GOVERNACE COUNCIL (SGC) FOR SECONDARY SGC COORDINATORS AND OTHER MATTERS', 'http://depedmanila.net:5000/d/s/uzeyk7LNbg9bHZUAJuW9wOIFjJ4XszXy/XHrydNu4FRbbyMCZAW8GysCc72RUdZVl-SrSAb3bKtQo', '76', '2023-04-13', 'UNNUMBERED MEMORANDUM', 'active'),
(2465, 'rcrdsmari0412267', '2ND MANILA INTELLECTUAL PROPERTY, INNOVATION & BUSINESS EXPO (MIPIBIEX)', 'http://depedmanila.net:5000/d/s/uzeykIhKoY39AqU5gTI2mEbd1TcaZcu9/IdmaBjIIuGeS21LLgYz5DVgefWZvrzVe-i7SgHrTKtQo', '35', '2023-04-14', 'DIVISION ADVISORIES', 'active'),
(2466, 'rcrdsmari0404717', 'IMPLEMENTATION OF CITY ORDINANCE NO. 8591 ESTABLISHING THE MANILA TOURISM, CULTURE AND ARTS COUNCIL', 'http://depedmanila.net:5000/d/s/uzeykKy7rAumZUZRS5cfVvVBYBGQJJCb/LGSgFGrFPT41we_ic-VxRn5I7ORKVdeN-grTgGKDKtQo', '176', '2023-04-14', 'NUMBERED MEMORANDUM', 'active'),
(2467, 'HLTHJEN0412798', 'ANNUAL MEDICAL CHECK-UP PROGRAM FOR ALL CITY HALL EMPLOYEES', 'http://depedmanila.net:5000/d/s/uzeykJgvlogtIg1jz6rswAbI3igL13En/-WrrxonFrgsg5i6eFSeMz1NqaJ1m8zeD-e7Qg9ZjKtQo', '178', '2023-04-14', 'NUMBERED MEMORANDUM', 'active'),
(2468, 'RCRDSMARI0404723', 'REGIONAL MAYBANK FINANCIAL EDUCATION EXCELLENCE AWARD OF CASHVILLE KIDZ PROGRAM', 'http://depedmanila.net:5000/d/s/uzeykMxJleFhH9AKJPIrsWBp7gkfLBy5/soGpZcy2hyDp0KrczYDbaGSuKlUMvpFo-ErXABiDLtQo', '37', '2023-04-17', 'DIVISION ADVISORIES', 'active'),
(2469, 'rcrdsmari0412960', 'CORRIGENDUM ON THE PARTICIPANTS OF THE REGIONAL ATHLETIC MEET (NCR PALARO 2023) S.Y. 2022-2023', 'http://depedmanila.net:5000/d/s/uzeykNNiSma861yAyWTcAILXxj3H7aMQ/7KZgaCtb2ErlC4cHiXiL53xDNPA1PXxs-BrUgRRnLtQo', '38', '2023-04-17', 'DIVISION ADVISORIES', 'active'),
(2470, 'cidbren0413580', 'MEETING ON EXISTING STE AND SSES ADMISSIONS PROCEDURE', 'http://depedmanila.net:5000/d/s/uzeykNwuiwhP34Cj5XXF1CRpUCWL5aBH/CEWBMt-yjhnMOTlKi5TnmKne7r_XnhYc-9bRgORDLtQo', '77', '2023-04-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2471, 'cidbren0412529', '4TH LIBRARIANS INSTITUTIONAL AND VALUABLE ENGAGEMENT (LIVE) SESSION OF THE SECONDARY LIBRARIANS AND LIBRARY-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzeykRvIY4wsTQTeu6VvBrCGYvxByegy/qz6iwLqnAY7P1elW4x4zx3GTYc5t9GGO-67TAzAjLtQo', '78', '2023-04-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2472, 'cidbren0412239', '4TH LEARNING RESOURCE-REPORT ENABLING ACTIVITIES FOR LEARNERS (LR-REAL)', 'http://depedmanila.net:5000/d/s/uzeykPw6dUWIuH3Ap3BXJ8y24pDk5Ngu/4epTp-YbwR4KE3NFy44l30mID1teQk-w-3rQgkgHLtQo', '79', '2023-04-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2473, 'CIDBREN0413626', 'PROFESSIONAL MEETING OF MATHEMATICS DEPARTMENT HEAD TEACHERS AND OFFICERS-IN-CHARGE (OIC)', 'http://depedmanila.net:5000/d/s/uzeykRUtqw0EkrW31x6nnlisd8esj3jR/YXK7DaDEPsSpIhXr-Akkf6oR0AxsJw0K-0bRgnvnKtQo', '80', '2023-04-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2474, 'cidtrai0414267', 'PROFESSIONAL MEETING OF THE TLE-TE DEPARTMENT HEADS AND OFFICERS-IN-CHARGE (OIC)', 'http://depedmanila.net:5000/d/s/uzeykR4V9omnIBjy4muB6UErFw8hcXZb/uMjXUXxSsXxB0ZRDCoc4nMnMttLZtlVu-xLTgu_DKtQo', '81', '2023-04-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2475, 'cidbren0413194', 'PROFESSIONAL MEETING OF MAPEH HEAD TEACHERS AND OFFICERS-IN-CHARGE (OIC)', 'http://depedmanila.net:5000/d/s/uzeykQe6SgPzO9vqnOuR4BjbLLiaZbOx/jFLy9iAtWXcZQwmnEFXJ1GSRtBkQbngA-sLRgRN7KtQo', '82', '2023-04-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2476, 'SGODSIAS0414485', 'CONDUCT OF THE FIRST QUARTER DIVISION PROGRAM IMPLEMENTATION REVIEW (PIR) MONITORING, EVALUATION AND ADJUSTMENT (MEA) 2023', 'http://depedmanila.net:5000/d/s/uzeykONJQ4fJI9gbornRKRZBU65VirXs/WoZllBSeaOebrEJLO8bR19uYq5PasRKR-n7TgEtTKtQo', '180', '2023-04-17', 'NUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(2477, 'cidfelm0413679', '2023 SIAM INTERNATIONAL MATH AND SCIENCE OLYMPICS (SIMSO) NATIONAL ROUND AND 19TH NATIONAL SCIENCE QUEST WINNERS', 'http://depedmanila.net:5000/d/s/uzeykOni7ClprVs9yRfyciePEEz0oYo8/pvaDRDACCFW-aVdcD3iimZ3zXZFfjty3-lbTAq8zKtQo', '181', '2023-04-17', 'NUMBERED MEMORANDUM', 'active'),
(2478, 'rcrdsdarn0413552', 'BRAHMA KUMARIS PHILIPPINES SPIRITUAL FOUNDATION, INC', 'http://depedmanila.net:5000/d/s/uzeykT3h4MlZv9BSVOQQow37tLEDCxO3/Kazv5ndzsxesabNeH3ChMx-5yfTn_qaR-VrVALlHLtQo', '42', '2023-04-18', 'DIVISION ADVISORIES', 'active'),
(2479, 'rcrdsdarn0327692', 'FREE MEDOLICA TRAINING FOR PUBLIC SCHOOL TEACHERS', 'http://depedmanila.net:5000/d/s/uzeykTlgtalT8BvuQFaFgp61rWk5VU5z/v5b9UFomWot9fYMO2CdOYvVJJfTP1Ra4-SbWAEkrLtQo', '41', '2023-04-18', 'DIVISION ADVISORIES', 'active'),
(2480, 'rcrdsmari0412738', '9TH AREA STUDIES NATIONAL CONFERENCE', 'http://depedmanila.net:5000/d/s/uzeykTLICSO0aCSsDAzzbB6By0mumhKE/8BHG1Zmo_9WU3VrFf8Vf0R16IxCIFWEl-QLWAMkPLtQo', '36', '2023-04-18', 'DIVISION ADVISORIES', 'active'),
(2481, 'SGODMARL0412372', 'LIST OF ATHLETES, COACHES, MEET OFFICIALS AND OFFICIATING OFFICIALS (REGIONAL ATHLETIC MEET - NCR PALARO 2023)', 'http://depedmanila.net:5000/d/s/uzeykbQrPYmoXihrlj4CgqnGeY3oqmiM/4mAtGUK-KYpqpF3LCIxQV7Y5TxQaoPcQ-ObXAPjzLtQo', '182', '2023-04-18', 'NUMBERED MEMORANDUM', 'active'),
(2482, 'ICTKEVI0418310', 'COMPOSITION OF SCHOOLS DIVISION OFFICE EXECUTIVE COMMITEE (EXECOM)', 'http://depedmanila.net:5000/d/s/uzeykVBgXwc2hL8eVcAnyj0L1HPaZDwX/2JwiThe7X28MrnRSWgmHI320kHWbNqtP-MrWgKDTLtQo', '183', '2023-04-18', 'NUMBERED MEMORANDUM', 'active'),
(2483, 'cidtrai0417814', '4TH LIBRARIANS INSTITUTIONAL AND VALUABLE ENGAGEMENT (LIVE) SESSION OF THE ELEMENTARY LIBRARY-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzeyl2gLuiVKxcCKvks30ZehAyTv8UdP/evWNfymLg5VyK5ZWkv5WWquxbBHFfl3j-dLUgw2HLtQo', '83', '2023-04-19', 'UNNUMBERED MEMORANDUM', 'active'),
(2484, 'rcrdsmari0405383', 'ON-SITE UPDATING OF PHILHEALTH MEMBERS RECORD', 'http://depedmanila.net:5000/d/s/uzeyl3xY02Sq7dHMULrEfHyX7mK0IAfv/IJUewL_mxVh5ljqoaKwvYOetUB4Nl86t-lrVgOnnLtQo', '184', '2023-04-19', 'NUMBERED MEMORANDUM', 'active'),
(2485, 'rcrdsmari0412128', 'ECON-TUHAN SERIES', 'http://depedmanila.net:5000/d/s/uzeykzqMbwXNmxYj2m6tPyTAPjPl6S8p/11my-Uj1uwXFaRoJ-RT8Q-Wa1oHWlh_Q-ibXg73LLtQo', '39', '2023-04-19', 'DIVISION ADVISORIES', 'active'),
(2486, 'rcrdsmari0414992', 'U.P FILIPINIANA ANNUAL AUDITIONS', 'http://depedmanila.net:5000/d/s/uzeyl0GlJ4wVKyX0LsfgGzfAAyqTZKzy/jWCVbWT31486IbQbtKz7E3wfBRtYiPzU-f7UAiGrLtQo', '40', '2023-04-19', 'DIVISION ADVISORIES', 'active'),
(2487, 'cidbren0413469', 'PROFESSIONAL MEETING OF ELEMENTARY SCIENCE MASTER TEACHERS (MT)', 'http://depedmanila.net:5000/d/s/uzeyl2FxDaMo35Ck2TwCOiBOLZ0Rg6CE/hNb9qcyAJbu-V_Jzl_Tr-JXizWImTTdO-ZLUgLVrLtQo', '84', '2023-04-19', 'UNNUMBERED MEMORANDUM', 'active'),
(2488, 'RCRDSDANI0417284', 'MEETING WITH PARTNERS FROM GLOBAL OPERATIONS OF CHILDFUND INTERNATIONAL', 'http://depedmanila.net:5000/d/s/uzeykXAsSQ2kYfvOIMc9xpcPlLfb65qX/ukFCK5KRCHMDq3B3gRaLJsDgu_f6yL9J-wLUgO5LLtQo', '71', '2023-04-20', 'DIVISION CIRCULARS', 'active'),
(2489, '04242023', 'SCHOOL SECURITY AND USE OF SCHOOL FACILITIES AND SERVICES', 'http://depedmanila.net:5000/d/s/uzeyksBC5y9KkogePcWyRaoSAXjO5oVl/Hr7TJiHlISivI3Jj5safqa3JiOAWUMHl-67XAr7PLtQo', '185', '2023-04-24', 'NUMBERED MEMORANDUM', 'active'),
(2490, 'rcrdsmari041423', 'MONTHLY MEETING', 'http://depedmanila.net:5000/d/s/uzeykrKOhkme2E7LwNlYiMRX3q4XjJlD/DaomNmTq2GbkvJwJSmj6VeTmDtafJu87-47UgaqzLtQo', '72', '2023-04-24', 'DIVISION CIRCULARS', 'active'),
(2491, 'lnpchr0419843', 'GUIDELINES ON APPLICATIONS OF NATIONAL-PAID EMPLOYEES FOR PERSONAL FOREIGN TRAVEL', 'http://depedmanila.net:5000/d/s/uzeykt1zUCo0TQCBwDadxmeUFMwaKOqb/YH6O4e_zmJdaoMtfJ1RmUL2yWed1Ryb--z7Wgqp7LtQo', '187', '2023-04-24', 'NUMBERED MEMORANDUM', 'active'),
(2492, 'recrthan042098', 'SUBMISSION OF DOCUMENTARY REQUIREMENTS FOR FY 2022 RICE ASSISTANCE', 'http://depedmanila.net:5000/d/s/uzeyka0rlASV0pU1o7sFZemHGDYFg3Lw/6dwALXXi2B4vF4yfPtOnmIvG99LhnKWi-LrZAj9PLtQo', '188', '2023-04-25', 'NUMBERED MEMORANDUM', 'active'),
(2493, 'cidbren0419334', 'FOURTH LEARNING ENGAGEMENT AND MANAGEMENT MEETING OF SECONDARY JOURNALISM FOR SY 2023-2024', 'http://depedmanila.net:5000/d/s/uzeykZRfV03gnGzoFA7RuoxnyhFFQ3E4/eD4w8yOj8zPc-uTNxiCkyDeXoSDaSG_Z-FbYAps3LtQo', '85', '2023-04-25', 'UNNUMBERED MEMORANDUM', 'active'),
(2494, 'cidfelm0420257', 'JOINT DELIVERY VOUCHERS PROGRAM', 'http://depedmanila.net:5000/d/s/uzeykb0SiQ9pt3jhYrXnsxLYcSrbs3xx/pH0uVr04WnuXuJFWhKrfayDRBidx4v7b-CrZgIsbLtQo', '86', '2023-04-25', 'UNNUMBERED MEMORANDUM', 'active'),
(2495, 'rcrdsdarn0413878', 'COMMITTEE MEETING', 'http://depedmanila.net:5000/d/s/uzeykXbH9YEAM2CgO0IcC8F77aGidqFL/jEAHOzdJ8GKOma2W0TjbdcLydKpIjcPh-ALag-L3LtQo', '73', '2023-04-25', 'DIVISION CIRCULARS', 'active'),
(2496, 'adminlour0418340', 'SDO MANILA FLAG RAISING CEREMONY', 'http://depedmanila.net:5000/d/s/uzeykgXdkwkFHqpzLfY2FSx82JeghkfZ/-AbFedT__cFyc6PE-9aF14AsALQPlv-C-jbbAbxPMtQo', '192', '2023-04-26', 'NUMBERED MEMORANDUM', 'active'),
(2497, 'cidtrai0420679', 'CONDUCT OF THE ENHANCEMENT COURSE ON ARABIC EMERGENT READING AND CULTURE AWARENESS (AERCA)', 'http://depedmanila.net:5000/d/s/uzeykg7F3ohPZ2WNCjXN9mpZAT0V648b/ZEzYCsKOQcrYo1Xb6voZV9MSfSyrL6D5-hrbg1A3MtQo', '191', '2023-04-26', 'NUMBERED MEMORANDUM', 'active'),
(2498, 'cidbren0417447', '5TH MANILA ROBOTICS CUP', 'http://depedmanila.net:5000/d/s/uzeykfpdviV3spYosOQD6ZPC4x1RHuOk/TAK4786rlrQzLkg4sScVb1dyAz6yj856-fLYgmwXMtQo', '190', '2023-04-26', 'NUMBERED MEMORANDUM', 'active'),
(2499, 'rcrdsdarn0413728', 'ELECTION OF ADVISORY COUNCIL FOR SY 2022-2023 AND THE MASS INDUCTION OF CLUB MEMBERS', 'http://depedmanila.net:5000/d/s/uzeykcHenoG7Icu439yOex1LzNuiEfMB/cAokg-chuKwwLdY6oVaBY7F8OzIBY7Yz-b7aA9P7LtQo', '74', '2023-04-26', 'DIVISION CIRCULARS', 'active'),
(2500, 'rcrdsmari0414538', 'REQUEST TWO TEACHERS TO ATTEND THE ORIENTATION TRAINING OF TRAINERS FOR TEACHERS', 'http://depedmanila.net:5000/d/s/uzeykehFPQ0yvxs0SlZUPAh5hj8IgjkD/AxatYq12taLijRbaKEl7CBrGEtIAgsor-YrbgsfnLtQo', '75', '2023-04-26', 'DIVISION CIRCULARS', 'active'),
(2501, 'ictmich0418192', 'WINNERS IN THE YWCA COLORING CONTEST', 'http://depedmanila.net:5000/d/s/uzeykbrG6g5o7WRUIlIOcQr304I0onqQ/Pi07edyY8uSW4dIzOOq1Gq8-7Muwomoo-Wbagx_HLtQo', '43', '2023-04-26', 'DIVISION ADVISORIES', 'active'),
(2502, 'ASDSMLALA0425314', 'RECALL OF DIVISION MEMORANDUM NO. 073 S. 2023', 'http://depedmanila.net:5000/d/s/uzeyke839Gz85UeDo2D96oWBGKvpLmo0/7y3fyU6WmOy-vVbKbceWVXAHwVZ_b9Ai-TrbgourLtQo', '189', '2023-04-26', 'NUMBERED MEMORANDUM', 'active'),
(2503, 'CIDBREN0425174', 'ADOPTION OF FLEXIBLE CLASS PROGRAMS TO MITIGATE THE EFFECTS OF HIGH SUMMER HEAT INDEX', 'http://depedmanila.net:5000/d/s/uzeykhFda8jxcXyBQKFg1neZViUxhcEE/qwohAvadoprvvEAXZ7Wca26Pk-wxnCv8-QbYAlOLLtQo', '193', '2023-04-26', 'NUMBERED MEMORANDUM', 'active'),
(2504, 'CIDTRAI0414663', '3RD PROFESSIONAL MEETING OF KINDERGARTEN MASTER TEACHERS OR COORDINATORS OR MAKITA OFFICERS - ONE (1) PER SCHOOL', 'http://depedmanila.net:5000/d/s/uzeyknvD8qVl0IiTL9jzTWZOH8CLUGoE/SQtE0wxDBkK8AdJlDSINnDqBohFHDs7k-DrcgWWnMtQo', '87', '2023-04-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2505, 'rcrdsdarn0411392', 'AGE LEVEL SPECIALIZATION COURSE FOR REGISTERED TROOP LEADERS WHO HAVE COMPLETED THE BASIC TRAINING COURSE', 'http://depedmanila.net:5000/d/s/uzeykixEMYkpk1kRpKTNj1ZwHR2BMMzp/cbdCMoCdXN7d0yQAkQR2J7lg0xkyc_ex-BregMWLMtQo', '76', '2023-04-27', 'DIVISION CIRCULARS', 'active'),
(2506, 'sgodsias0426832', 'ORIENTATION OF TALA/LARS FOCAL PERSON AND MORE', 'http://depedmanila.net:5000/d/s/uzeykpuP3ObAsIin3Tz6gr4Mfgj8tgMH/o0eCTRYUqHX4JwWvy3iJaN4l_dOVuhB3--rbgCFzMtQo', '89', '2023-04-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2507, 'sgodsias0425382', 'ORIENTATION AND PROVISION OF TECHNICAL ASSISTENCE USING pR1Me SCHOOL FEES APPLICATION SYS TECH (SFAST)', 'http://depedmanila.net:5000/d/s/uzeykpCPECtxup1s5yOBGLQ5ksYgigoe/RlH23AiT1pgkWR7o-qhaR9GAWyb1rRT0-87bgq1XMtQo', '88', '2023-04-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2508, 'ictmich0412788', 'AGE LEVEL SPECIALIZATION COURSE FOR REGISTERED TROOP LEADERS WHO HAVE COMPLETED THE BASIC TRAINING COURSE', 'http://depedmanila.net:5000/d/s/uzeyklnDfGFOFUUxiPuPf4FnwoU2fNjs/jfpnOvRyfvPUj-0V448BDQdT7wpP_q0W-5rYAA0_MtQo', '77', '2023-04-27', 'DIVISION CIRCULARS', 'active'),
(2509, 'cidtrai0425311', 'ADDENDUM TO THE DIVISION MEMORANDUM No. 173-23, S. 2023 (PRESENTATION PORTFOLIO ASSESSMENT FOR ALTERNATIVE LEARNING SYSTEM ACCREDITATION AND EQUIVALENCY ELEMENTARY AND JUNIOR HIGH SCHOOL LEARNERS)', 'http://depedmanila.net:5000/d/s/uzeykuRz8YQfe8ArgtvkS0YyDuubVhFK/VSElQoZxqJl8CBo7mN3Z5hcdz-27g4_t-2bbgjEbMtQo', '90', '2023-04-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2510, 'CIDBREN0425633', 'REITERATION OF THE REQUIREMENTS FOR THE CONDUCT OF END-OF-SCHOOL-YEAR(EOSY) CLASSES', 'http://depedmanila.net:5000/d/s/uzeyknDDJeweCnoiqfqpL4AI7dmAiesb/2PE5Q52b_140yjf5SzCeGgsqlHyPREwj-zLZA1D_MtQo', '195', '2023-04-27', 'NUMBERED MEMORANDUM', 'active'),
(2511, 'adminmich0425375', 'NO GIFT POLICY IN THE SDO MANILA', 'http://depedmanila.net:5000/d/s/uzeykoLbpyT1CnqFMc3MmZA7OjrSsRVl/LbgFOlqxTa1Wb4J8RrXZPVqsxXCpH1Lx-xbaAETnMtQo', '194', '2023-04-27', 'NUMBERED MEMORANDUM', 'active'),
(2512, '04272023', '4 - DAY BASIC OCCUPATIONAL SAFETY AND HEALTH TRAINIG (S02) FOR SCHOOL DISASTER RISK REDUCTION AND MANAGEMENT COORDINATORS (SDRRMC)', 'http://depedmanila.net:5000/d/s/uzeykmvcBYF3xusLnqUehOJm9PAYQJAc/qxQahpQMjqeJnqMyirShgiMIYHHNvq_y-vrbABDLMtQo', '196', '2023-04-27', 'NUMBERED MEMORANDUM', 'active'),
(2513, 'rcrdsdani0404828', 'YMCA ACADEMIC OLYMPICS', 'http://depedmanila.net:5000/d/s/uzeykjNd3gwNHbN5PBKZzLC3J3KvG8Po/xhkINnFP23XTnmg3asMHuWt_ME-KBJn9-t7ZALivMtQo', '78', '2023-04-27', 'DIVISION CIRCULARS', 'active'),
(2514, 'ictkevi0420297', 'SEMINAR ON INTEGRATION OF SCIENCE PROJECTS WITH ROBOTICS AND ROBOT EXHIBIT', 'http://depedmanila.net:5000/d/s/uzeyxZIs94EGnzW61mHKUirq6DRbamHm/_3NscePj7S-MUv2nJuRlvMjVRYni011_-YbAgqfGptQo', '44', '2023-05-02', 'DIVISION ADVISORIES', 'active'),
(2515, 'rcrdskael0427446', '4-DAY BASIC OCCUPATIONAL SAFETY AND HEALTH TRAINING (SO2) FOR SCHOOL DISASTER RISK REDUCTION AND MANAGEMENT COORDATORS (SDRRMC)', 'http://depedmanila.net:5000/d/s/uzeyxdqSECAY1hI7h1IvpT0OXtOmH6TG/rxsEUTTasoPO2gbYOf76kFJ1Tte2aWA9-97dgTy7zuAo', '198', '2023-05-02', 'NUMBERED MEMORANDUM', 'active'),
(2516, 'SGODSIAS0425999', 'CONDUCT OF THE  NATIONAL SCHOOL BUILDING INVENTORY (NSBI) FOR SY 2022 - 2023', 'http://depedmanila.net:5000/d/s/uzeyxh6qDyudtF1uUCAPuTFkSvCZqUBU/EJc7tjotIFBAmBesj6cWKiUdZmMCQAOz-d7Bg_SSqtQo', '197', '2023-05-02', 'NUMBERED MEMORANDUM', 'active'),
(2517, '  rcrdsdarn0413474', 'INVITATION FOR SENIOR AND CADET GIRL SCOUTS (JUNIOR AND SENIOR HIGH SCHOOL) AND THEIR TROOP LEADERS TO ATTEND THE FLAG RAISING CEREMONY EVERY FIRST MONDAY OF THE MONTH AT 8:00 A.M AT THE INDEPENDENCE ', 'http://depedmanila.net:5000/d/s/uzeyxbiSkeXisnQy38h1vjvIKLm2ZrhB/q_wiwXrsLb9GIlCbhzvrHC9DBxRbw_J7-b7BgOQqqtQo', '79', '2023-05-02', 'DIVISION CIRCULARS', 'active'),
(2518, 'ictmich0418192', '1ST QUANTUM CLASH: MATH WITH PHYSICS SHOWDOWN', 'http://depedmanila.net:5000/d/s/uzeyxd8SP0d9qjQuPMVbC07X6PnXQwgL/I5IJlupsRmfo8qkfehhZMFScRA64kL99-aLDA3_2ptQo', '45', '2023-05-02', 'DIVISION ADVISORIES', 'active'),
(2519, 'PUBLICHRI0502458', 'SALIKSEEK 2023', 'http://depedmanila.net:5000/d/s/uzez0FmbxyU39rxu2bvakeFOdHFa8bWi/k_PkPuN0a8-kxB5DdnVV5_nmyoot5_SB-f7Bg7jCqtQo', '46', '2023-05-03', 'DIVISION ADVISORIES', 'active'),
(2520, 'CIDNORS011632', 'SEARCH FOR DIVISION LEVEL OUTSTANDING TEACHERS SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyiN3PQuGPh3HEnbZINDb4YJaL3tGy/lN_jvogwGkrly08c_VCwKkgdgbjBjOM7-crxAe4CouQo', '23', '2023-01-23', 'NUMBERED MEMORANDUM', 'active'),
(2521, 'cidtrai0427185', 'EVALUATION OF DOCUMENTS OF CANDIDATES FOR THE DIVISION SEARCH FOR OUTSTANDING HEAD TEACHERS AND INTERVIEW', 'http://depedmanila.net:5000/d/s/uzez14S0i2NRPYww575XYBZWt6UFGPIm/mXuMWH8szaLiEjWi8aSqOlwrFhs4TwkI-xbCgfWmstQo', '91', '2023-05-04', 'UNNUMBERED MEMORANDUM', 'active'),
(2523, 'cidtrai0420848', 'LIST OF QUALIFIED JDVP- TVI /HEI PARTNEERS OF SENIOR HIGH SCHOOLS AND LIST OF QUALIFIED LEARNERS BENEFICIARIES', 'http://depedmanila.net:5000/d/s/uzez17rCGsQ8etMAyeI7opwwuL4EQkVL/JjIgSPt0g98C1gb1cTEVIgWicLVjBNgf-07CATYistQo', '94', '2023-05-04', 'UNNUMBERED MEMORANDUM', 'active'),
(2524, 'recrtjoe0428479', 'APPLICATION FOR TEACHER I POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA FOR ELEMENTARY, JUNIOR HIGH SCHOOL, AND SENIOR HIGH SCHOOL LEVELS', 'http://depedmanila.net:5000/d/s/uzez0yCpqUV3mLJ7tOed4q7DoUYO2uax/WyQpE-8hw6Y0CSZYZp_G4DAKAY2v_pPi-orAgKLqqtQo', '200', '2023-05-04', 'NUMBERED MEMORANDUM', 'active'),
(2525, 'cidtrai042758', 'ADDENDUM TO DIVISION MEMORANDUM NO. 193-23 (ADOPTION OF FLEXIBLE CLASS PROGRAMS TO MIGRATE THE EFFECTS OF HIGH SUMMER HEAT INDEX)', 'http://depedmanila.net:5000/d/s/uzez17I00iQpfWjjJLbPQibzTlQ2vMhm/Zf5aJ_Hsd2pvfrEzHs1sfNJyZ13wmAV8-zLBg-3istQo', '93', '2023-05-04', 'UNNUMBERED MEMORANDUM', 'active'),
(2526, 'rcrdsmari042061', 'WINNERS OF THE HI-Y SPORTSFEST', 'http://depedmanila.net:5000/d/s/uzez0uneHaxhYRo3FR9pmWla8dk4yUhY/pY1EizWgm5rg4JrVSsSL8O0AfXALt0Tk-jrAgwZuqtQo', '53', '2023-05-04', 'DIVISION ADVISORIES', 'active'),
(2527, 'sgodsias0428183', 'REQUEST TO SHOWCASE THEATER ARTS IN EDUCATION ADVOCACY TO SCHOOLS IN NCR FRONTLINE PRODUCTION AND TRAINING DEVELOPMENT INC', 'http://depedmanila.net:5000/d/s/uzez0wmqC6qWWlhh9PelhHRXVrlqgJo1/FHPBl-VCf4CLZDb17cVST6ZJk5UpaCfF-lLCA2KWqtQo', '80', '2023-05-04', 'DIVISION CIRCULARS', 'active'),
(2528, 'sgodrodo0427837', 'UPDATES AND DISCUSSION ON ISSUES AND CONCERNS OF SCHOOLS WITH ON-GOING ELECTRICAL SERVICE APPLICATION TO MERALCO AND OTHER RELATED CONCERNS', 'http://depedmanila.net:5000/d/s/uzez122Q6SDmZfdHJp4bSbRnzWCdRnsQ/Q7aNlDx8AZKDYGTMSij6zlQ7VOf7p55v-2rCAWJistQo', '95', '2023-05-04', 'UNNUMBERED MEMORANDUM', 'active'),
(2529, 'ictmich0502392', 'INVITATION TO THE 9TH BUSINESS CONFERENCE JUNIOR HIGH SCHOOL COMPETITION', 'http://depedmanila.net:5000/d/s/uzez0oYTQ28eybNXDun55n7UDlQnW1Uh/pDmek8PIGNDPDvQ0K3uhWkeVZwRLwNQv-_LBgW_istQo', '55', '2023-05-05', 'DIVISION ADVISORIES', 'active'),
(2530, 'recrthan0427879', 'VACANCY FOR THE POSITION OF SUPERVISING ADMINISTRATIVE OFFICER AT THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzez0oys7A26VucmL0hqralFR1u9GIlU/lVaksqvsGeP0ct-rd1s5USuG_HQMGZM--A7HgMwuttQo', '204', '2023-05-05', 'NUMBERED MEMORANDUM', 'active'),
(2531, 'recrtnic0428699', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB)', 'http://depedmanila.net:5000/d/s/uzez0pY4NK0DxdgwzgohHcbtCVaLd6k3/XH9uL-5yCt-LikyjzF4iUd5tGvU6Grrg-D7EABl2ttQo', '205', '2023-05-05', 'NUMBERED MEMORANDUM', 'active'),
(2532, 'sgodmarl0504102', 'DATA AND INFORMATION GATHERING ON THE IMPLEMENTATION OF YOUTH FORMATION PROGRAMS FOR SCHOOL YEAR 2022-2023', 'http://depedmanila.net:5000/d/s/uzez0uNFaSOf5UkDz43zuWwPtuSpzf7o/VzjJ5s471KDlbrefIGCFuZJhk-XO8dEQ-HbGAw3uttQo', '96', '2023-05-05', 'UNNUMBERED MEMORANDUM', 'active'),
(2533, 'rcrdsmari0427765', 'ACTIVITIES FOR GARCIA, ATIENZA AND JACINTO ES FOR REGISTERED GIRL SCOUT/GSP', 'http://depedmanila.net:5000/d/s/uzez0ym26e5HWslcVs8nsOzlk63JTtHz/HgdUo4UtigWxP62y_UwCH4jlT-2QkHrv-m7Dg7a6qtQo', '81', '2023-05-04', 'DIVISION CIRCULARS', 'active'),
(2534, 'rapjea0505361', 'COORDINATION MEETING OF AUTHORIZED AGENCY OFFICERS (AAOs), ELECTRONIC REMITTANCE FILE(ERF) HANDLERS, DEPED-NCR RPSU AND OTHER DEPED DIVISION OFFICE PERSONNEL WITH THE GOVERNMENT SERVICE INSURANCE SYST', 'http://depedmanila.net:5000/d/s/uzez1DxZZOUwYaOKyM6vbKe3XVncBr4g/erQRCn3MDki2oMSKWbBaFC4qPb84gQGc-ObGA-a-ttQo', '206', '2023-05-08', 'NUMBERED MEMORANDUM', 'active'),
(2535, 'sgodsias0502583', 'ANG BATANG MATIBAY AWARDS 2023', 'http://depedmanila.net:5000/d/s/uzez1J4LugtEIKCqYFuqWLqRJgDOjBBF/QG7wVecDGZkrfkP7YpkS_Ce9jxgDv-zg-R7FAGMqttQo', '208', '2023-05-08', 'NUMBERED MEMORANDUM', 'active'),
(2536, 'cidtrai0502475', 'PARTICIPATION IN THE 1ST PHILIPPINE BOOK FESTIVAL', 'http://depedmanila.net:5000/d/s/uzez1ENyGWjtjumRpTIIn0d21hhZZHLd/152aqFca--HiLDHVuGrtFoQq1bXM3Fav-M7HgkqSttQo', '202', '2023-05-08', 'NUMBERED MEMORANDUM', 'active'),
(2537, 'cidtrai0427777', 'LEARNING ENGAGEMENT AND MANAGEMENT MEETING OF THE MADRASAH EDUCATION PROGRAM ASATIDZ', 'http://depedmanila.net:5000/d/s/uzez1FWMmobqCFUKipaCiVtJs9zpaQGY/uUn17_WGznHX8rvCnEyi9lX1IEK7A5l9-VLHAoN2ttQo', '97', '2023-05-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2538, 'cidtrai0503377', 'ADDENDUM TO DIVISION MEMORANDUM NO. 164, S. 2023 (ON-THE-SPOT PERFORMANCE EVALUATION OF TLE/EPP LEARNERS)', 'http://depedmanila.net:5000/d/s/uzez1Jv9IusVOuOavBu7JCXOXb31Ddh2/c6iNUJNFvvlHBcTbkeTrjXxj8LQoBYgB-XLFgIe6ttQo', '98', '2023-05-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2539, 'cidbren0413194', 'BASIC LEADERSHIP TRAININGFOR Y-TEENS/ASSOCIATES CLUB OFFICERS/YMCA', 'http://depedmanila.net:5000/d/s/uzez1AhBZanNde3nk1dmKHTSPZ2KfEqk/DY5dFr5UVsvZ0sENjxhmFUOhMfZXYgkS-LLEARZuttQo', '82', '2023-05-08', 'DIVISION CIRCULARS', 'active'),
(2540, ' sgodsias0504970', 'LEARNERS PARTICIPATION TO VARIOS OFF-CAMPUS ACTIVITIES', 'http://depedmanila.net:5000/d/s/uzez1G5Z2ypNmYiR9HmAcOwkXXvi3j6l/xFpknmjXtKVZMTPEJ4Fag_JH0YLc42XN-QLEAm76ttQo', '207', '2023-05-08', 'NUMBERED MEMORANDUM', 'active'),
(2541, 'rcrdskael0427908', 'PHILIPPINE PUBLIC SCHOOL TEACHERS ASSOCIATION (PPSTA) MASSIVE NATIONWIDE MEMBERSHIP ENLISTMENT CAMPAIGN', 'http://depedmanila.net:5000/d/s/uzez1B7aGiiEmnMNBSTiZdR732ilJrQs/0lL90rqQAekk7W2RsOqQx8d8IW6akAx6-JLEAd4SttQo', '56', '2023-05-08', 'DIVISION ADVISORIES', 'active'),
(2543, 'bdgtrona0417234', 'AMENDMENT TO DEPED ORDER NO. 008, S. 2021 (REVISED SIGNING AUTHORITIES FOR ADMINISTRATIVE AND FINANCIAL MATTERS IN THE DEPARTMENT OF EDUCATION)', 'http://depedmanila.net:5000/d/s/uzez1MBwLU24KYybigjuorHbnrjdCIqj/u689ST8WdvLmkQGDoeMUupr-z-rTCIdY-Y7EA0_6ttQo', '99', '2023-05-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2544, 'cidtrai0503857', 'PROFESSIONAL MEETING OF MAPEH HEAD TEACHERS AND OFFICERS-IN-CHARGE (OIC)', 'http://depedmanila.net:5000/d/s/uzez1OkKWCJgDN1wLMc3clwe24YD2W3C/ODVU1KwskPKqCUqLcd8zxy3WFIyje3Ix-gLEAWzuutQo', '100', '2023-05-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2545, 'ASDSMLALA050930', 'RECOMPOSITION OF THE BIDS AND AWARDS COMMITTEE FOR THE FISCAL YEAR 2023', 'http://depedmanila.net:5000/d/s/uzez1NT8QoeQEqKFEh9Fb4s1oYCbqYF5/E6vj5PUtTvFDpWl1JBUcMdHJ8ZzoOlQK-ebGgEzKutQo', '209', '2023-05-09', 'NUMBERED MEMORANDUM', 'active'),
(2547, 'rcrdskael050558', 'INVITATION TO HEROES TO ZERO ANIMATED SERIES LAUNCH', 'http://depedmanila.net:5000/d/s/uzez1NkjYu9PpuqO2duYKVhNuyZl1tkG/dyXbX0sILBja2oG4ALVIc1sbSvSce9lO-a7HA7A-utQo', '57', '2023-05-09', 'DIVISION ADVISORIES', 'active'),
(2548, 'rcrdsmari0425813', 'GIRL SCOUT ACTIVITIES FOR STA. ANA AND T. YANGCO ELEMENTARY SCHOOLS', 'http://depedmanila.net:5000/d/s/uzez1OJvp4rH9XBfy4kd1w5BlT7Sb8ad/t6F3KOU_mpNX4qfaByvNSUNcdv8gJfl1-crGAjxyutQo', '83', '2023-05-09', 'DIVISION CIRCULARS', 'active'),
(2549, 'cidmeri0427177', 'PREWORK FOR THE CONSULTATIVE FORUM WORKSHOP ON THE REVISION OF THE SPECIAL PROGRAM FOR STEM CURRICULUM', 'http://depedmanila.net:5000/d/s/uzez1PSKLOGKmm8RLBcy4mZQIBSAXEqi/mQSDoumpfinE-kJ1yWRG6b5qOgnPlYIY-hrFg5EOutQo', '101', '2023-05-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2550, 'rcrdsmari0420693', 'INVITATION TO THE 2023 WIN REGIONAL SEMINAR', 'http://depedmanila.net:5000/d/s/uzeywXIKHwY5iz4JKunztv7UHjLAySCb/UT5kl6-_Q_i515pOTIK07ytfAKRjCTqY-sLFAMbiutQo', '102', '2023-05-10', 'UNNUMBERED MEMORANDUM', 'active'),
(2551, 'cidtrai0508744', 'INVITATION TO LUSOG ISIP NG KABATAAN (LINK) WEBISODE SERIES ON DEPRESSION AND SUICIDE AWARENESS', 'http://depedmanila.net:5000/d/s/uzeywSBXweWbTZQrqmdvm8RMdpKZv9Gy/q25hJFsF-3HkO0cwowv3dwYLLSRiQhpW-t7GAO8autQo', '58', '2023-05-10', 'DIVISION ADVISORIES', 'active'),
(2552, 'RCRDSMARI0419586', 'NATIONAL MUSEUM OF THE PHILIPPINES REQUEST FOR SIGN LANGUAGE INTERPRETERS ASSISTANCE', 'http://depedmanila.net:5000/d/s/uzeywUAjrAkLsIu7m0ppDIMDMPXiVxb3/DCy0Xb98f_rNjGBiBDtLA-G5AycGLNYo-jrHgz06utQo', '59', '2023-05-10', 'DIVISION ADVISORIES', 'active'),
(2553, 'RCRDSMARI0428390', 'PSY SYSTEM AND INNOVATIONS, OPC (PSI) SPECIAL EDUCATION ASSESSMENT SERVICES FOR LEARNERS WITH SPECIAL NEEDS', 'http://depedmanila.net:5000/d/s/uzeywV1XFOvquBRvHDmfoG3IF2lyO0ST/KGqf0ie458kwG-XAEFKBFvoXNpBdFHYv-lbFga1eutQo', '60', '2023-05-10', 'DIVISION ADVISORIES', 'active'),
(2554, 'CIDAMCY0510303', 'KASAMA KA EDUCATION INCLUSIVITY CAMPAIGN', 'http://depedmanila.net:5000/d/s/uzeywZZ7KWwuU42FRoY62n10K3WvO7L4/ILBzfLALn-IAW5qJOkLFKvNJkDzgEp44-xrHgVOWutQo', '62', '2023-05-11', 'DIVISION ADVISORIES', 'active'),
(2555, 'CIDAMCY0510370', 'NATIONAL INFORMATION AND TECHNOLOGY (IT) BOOT CAMP FOR YOUTH WITH DISABILITIES', 'http://depedmanila.net:5000/d/s/uzeywY0K787TF2SD5L5yTGn9g4eVEuIL/3nlslteHPktuxkpwIaJgqW_89DJL_eJ7-v7FgUteutQo', '61', '2023-05-11', 'DIVISION ADVISORIES', 'active'),
(2556, 'cidbren0511230', 'EXTENSION OF THE ADOPTION OF ALTERNATIVE DELIVERY MODE TO MITIGATE THE EFFECTS OF HIGH SUMMER HEAT INDEX', 'http://depedmanila.net:5000/d/s/uzeywd76SStfjssERgbKOe4dgearaoBL/Py3y6NniYaLnJd-kAv2_xopi0K1lHdcj-37GgFwSvtQo', '103', '2023-05-11', 'UNNUMBERED MEMORANDUM', 'active'),
(2557, 'rapjul050989', 'GUIDELINES ON THE PREPARATION AND PAYMENT FOR SUPPLEMENTARY PAYROLL OF SECONDARY SCHOOLS (IMPLEMENTING UNITS)', 'http://depedmanila.net:5000/d/s/uzeywbGi6yQ9qxilpZ7ZMcqrQrWOzF3z/Ajnjk2ryJIplvKohGprGopBc5jQR_N3B-zbGAaO2utQo', '211', '2023-05-11', 'NUMBERED MEMORANDUM', 'active'),
(2558, 'CIDTRAI0508368', 'E-FAST: ELECTRONIC FEEDBACK ACCOMPLISHMENT SYSTEM FOR TECHNICAL ASSISTANCE WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeywbyhwAQIBQe0RoMPKqemetVJcuQy/9kVTCxK_PeXHeou-dD0xC6v3s_2gNHhB-1LGgmPautQo', '212', '2023-05-11', 'NUMBERED MEMORANDUM', 'active'),
(2559, 'sgodmarl0508848', 'DESIGNATION OF SCHOOL RESEARCH COORDINATOR', 'http://depedmanila.net:5000/d/s/uzeywj4gBy1qOPXyEhxF572a5dIz59pp/D5euMISfMAwhnMTDnNdKPaDOpfscyzgm-E7KgRnWvtQo', '213', '2023-05-12', 'NUMBERED MEMORANDUM', 'active'),
(2560, 'cidtrai0509206', 'ORIENTATION MEETING FOR EVALUATORS OF ON-THE-SPOT PERFORMANCE EVALUATION OF TLE EPP LEARNERS', 'http://depedmanila.net:5000/d/s/uzeywjmg1ArJnP7vsLpKr2TpUw9n7vYg/7JKph8AVFVdOWDhefXBTy4mjQ6_QGtlu-GrKAPH6vtQo', '104', '2023-05-12', 'UNNUMBERED MEMORANDUM', 'active'),
(2561, 'cidtrai0508187', 'STATUS OF IMPLEMENTATION OF HOMEROOM GUIDANCE', 'http://depedmanila.net:5000/d/s/uzeywld4MeVxiCX0xS743mb1T3nwBZOQ/oiDd6slqoOQcesbBKhHfQLGdtuRt9huu-IbIAXYyvtQo', '105', '2023-05-12', 'UNNUMBERED MEMORANDUM', 'active'),
(2562, 'cidbren0505490', 'ADDENDUM TO DIVISION MEMORANDUM NO. 163, S. 2023 (BITE-SIZE LECTURES IN MANAGING SCHOOL LIBRARIES)', 'http://depedmanila.net:5000/d/s/uzeywnKf94fhxbpNcDRScWsUEXjISYUG/KRtaiLybBptRbdYaT4j5iD8gtw49y5JY-S7OAiO3ItQo', '106', '2023-05-12', 'UNNUMBERED MEMORANDUM', 'active'),
(2563, 'cidtrai0508227', 'INTERVIEW OF TOP CANDIDATES PER LEARNING AREA FOR THE DIVISION SEARCH FOR OUTSTANDING HEAD TEACHERS', 'http://depedmanila.net:5000/d/s/uzeywp2FvUqLkaK1NYLdC0JuaGDH8ZOj/GnrfP3xFBfNGi37Lvr13SpiMoOQ4WZUL-UrNgtPXItQo', '107', '2023-05-12', 'UNNUMBERED MEMORANDUM', 'active'),
(2564, 'sgodsias051122', 'CONDUCT OF EARLY REGISTRATION FOR SCHOOL YEAR 2023-2024', 'http://depedmanila.net:5000/d/s/uzeywkdTPOCMKB6PxwqRjJ8QVX24SaL9/G6hdLDQxZM2VwdLFbDh_-jdCXtljkTty-BrLgkGSvtQo', '217', '2023-05-12', 'NUMBERED MEMORANDUM', 'active'),
(2565, 'sgodeliz0505152', 'SUBMISSION OF MID-YEAR IN-SERVICE TRAINING OF TEACHERS', 'http://depedmanila.net:5000/d/s/uzeywrsFECzAydCCN97yIy2VNss26BPg/6LWshZ0-U-VB6FfurIJ9X6NsPwt5_3P7-DbJAzW2vtQo', '218', '2023-05-12', 'NUMBERED MEMORANDUM', 'active'),
(2566, 'rcrdskael0428958', 'PERMISSION TO CONDUCT MINISTRY IN CLARO M. RECTO HIGH SCHOOL AND VICTORINO MAPA HIGH SCHOOL', 'http://depedmanila.net:5000/d/s/uzeywh5UHSIccKPDb6KEJSkoeD7zULzy/56Az0Y7TsT8z7EvsRo2I6YgGIb0tEmi5--bHAIE2vtQo', '85', '2023-05-12', 'DIVISION CIRCULARS', 'active'),
(2567, 'rcrdskael0505697', 'CELEBRATION OF 442ND ARAW NG MAYNILA / SEARCH FOR THE MOST OUTSTANDING YOUTH OF MANILA 2023', 'http://depedmanila.net:5000/d/s/uzeywhwHfgs2m5hhqk116kbep9vcldw1/dnXNdXYbeuzWi7476Yb7lRO_Xx63ZS2w-_7GA81mvtQo', '86', '2023-05-12', 'DIVISION CIRCULARS', 'active'),
(2568, 'publichri0511221', 'LEARNING PATHWAYS FOR NON-TEACHING PERSONNEL TRAINING SERIES', 'http://depedmanila.net:5000/d/s/uzeywdgIicRQguocW7HrIPrkybPArvSR/JutxHmrlTtF-9qk2GKgmpWBD5DIVfeAt-6rEg7SevtQo', '47', '2023-05-12', 'DIVISION ADVISORIES', 'active'),
(2569, 'publichri051180', 'INVITATION FOR NATIONAL HERITAGE MONTH CELEBRATION OF NLP', 'http://depedmanila.net:5000/d/s/uzeywpbSBeKeBCWHeLCxR63fnTuiEWGu/vkeAnNHkCZk62CozT4c70rCC5S3dSCgl-orSAytTKtQo', '49', '2023-05-15', 'DIVISION ADVISORIES', 'active'),
(2570, 'lnpchr0511374', 'SIGNING AUTHORITIES AND REQUIREMENTS FOR THE DIVISION CLEARANCE FORM (C.S. FORM NO. 7, REVISED 2018)', 'http://depedmanila.net:5000/d/s/uzeywzXPkAQRjsvXNSRqUOh7yOJorSvK/617ICrSrJNMGedbVFDu4RwS5HuTLe7c1--LTAYxDLtQo', '219', '2023-05-15', 'NUMBERED MEMORANDUM', 'active'),
(2571, 'publichri0511908', 'INTERNATIONAL MATHEMATICS AND SCIENCE COMPETITIONS OF MTG', 'http://depedmanila.net:5000/d/s/uzeywvhpUAmiFByudNWQCNASSsdYZC8u/ATdNkcqmuJpZEY9xTH7uFJ1GlG_C-ij0-trQAI-TKtQo', '54', '2023-05-15', 'DIVISION ADVISORIES', 'active'),
(2572, 'publichri0511509', 'CARDIOPULMONARY RESUSCITATION QUIZ BOWL', 'http://depedmanila.net:5000/d/s/uzeywsRRUMuA3V7aI7zCniAa042IWKPE/08CQ_pbzsJ0RNCNNPnqit95f89Yi1arD-rbRgl93KtQo', '50', '2023-05-15', 'DIVISION ADVISORIES', 'active'),
(2573, 'sgodsias0510305', 'PREPARATION OF JOURNAL ON TECHNICAL ASSISTANCE (TA) ACCOMPLISHMENT REPORT AND NOTABLE PRACTICES', 'http://depedmanila.net:5000/d/s/uzeyx1fPDiigLclydXhzOCbCxRXdsSzw/1v8-6sqsWclb3t-lgowt0AklHGdqzPBW-D7WAzR_LtQo', '221', '2023-05-15', 'NUMBERED MEMORANDUM', 'active'),
(2574, 'sgodsias0510205', 'PROGRESSIVE DATA ON SCHOOLS IMPLEMENTING ALTERNATIVE DELIVERY MODES AS PROVIDED IN DEPED ORDER NO. 037, S. 2022', 'http://depedmanila.net:5000/d/s/uzeywz7132tPj1TBO1f8pjG3EhoVRSji/RCVr0o0Wi5MKkxQW8sYcvbuzwA4tseG0-_7TA6BfLtQo', '220', '2023-05-15', 'NUMBERED MEMORANDUM', 'active'),
(2575, 'rcrdskael0504610', 'ACTIVITIES FOR REGISTERED GIRL SCOUTS', 'http://depedmanila.net:5000/d/s/uzeywwH1kKt7LhTsjTcGsP3ElZn850np/o-A05-hAovL5xGAI5W4rSE_17JzMrLRs-17Qgn_rKtQo', '87', '2023-05-15', 'DIVISION CIRCULARS', 'active'),
(2576, 'rcrdsmari0428885', 'TRAINING OF FACILITATORS ON DIGITAL CITIZENSHIP AND PROTECTION OF CHILDREN FROM ONLINE SEXUAL EXPLOITATION', 'http://depedmanila.net:5000/d/s/uzeywy7Q5maJoqMlbagLcu2Wxdi4XMf6/_xaRVvRyPD4TIpe2VLsr3zBH6tba-iA7-5bSgMAXLtQo', '88', '2023-05-15', 'DIVISION CIRCULARS', 'active'),
(2577, 'publiadri0512729', 'PGCA 58TH ANNUAL NATIONAL AND 2023 INTERNATIONAL CONFERENCE', 'http://depedmanila.net:5000/d/s/uzeywv8dE0I6zqDPqOPudvHcce3QqLQJ/Av0EC0UsEAIKEcATSZLZLTWwXbpRILTJ-vrRgf-3KtQo', '63', '2023-05-15', 'DIVISION ADVISORIES', 'active'),
(2578, 'publiadri0512839', 'NATIONAL GEOGRAPHY CHALLENGE 2023', 'http://depedmanila.net:5000/d/s/uzeyx06c0KkPOZwRR30f6eW2ofKosHqJ/DQDqiTYneuHDtzGr93ojTZSUCVbImOgM-yrTAwPTKtQo', '64', '2023-05-15', 'DIVISION ADVISORIES', 'active'),
(2581, 'sgodsias050845', 'RECONSTITUTION OF THE REGIONAL, DIVISION AND SCHOOL LEVELS GENDER AND DEVELOPMENT (GAD) FOCAL POINTS SYSTEM (GFPS)', 'http://depedmanila.net:5000/d/s/uzeyxAblow82IUPstokEVTnr5taMjVYp/dvSECY7W146zolcc_77lUppBSxCU05si-a7XgfV3LtQo', '108', '2023-05-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2582, 'rcrdskael0511765', 'REMINDER ON PREVENTIVE MEASURES AGAINST COVID-19', 'http://depedmanila.net:5000/d/s/uzeyx3VnZEctF1yzbZYnPeQcUZ7a2bga/bJlRT-tFk8ZCI906OAdXSbtBMbXRme3Y-T7Xgl0vLtQo', '215', '2023-05-16', 'NUMBERED MEMORANDUM', 'active'),
(2583, 'rcrdskael0511904', 'ENCOURAGES ALL PERSONNEL OF THE CITY GOVERNMENT OF MANILA TO WEAR FACE MASK / OFFICE OF THE CITY ADMINISTRATOR', 'http://depedmanila.net:5000/d/s/uzeyx35Os63qcMP27ATyAwxDi1B0RHkp/TXkX2KF1j8nZ2JewCSJg9Xj-uXNGIgT1-XrXAIFbLtQo', '216', '2023-05-16', 'NUMBERED MEMORANDUM', 'active'),
(2587, 'PUBLIADRI0512764', 'CREATION OF COMMITTEE ON 8888 CITIZENS COMPLAINTS CENTER', 'http://depedmanila.net:5000/d/s/uzeyx2f0Ayq3cR9rDnOm5zFfio5flru1/6H0rmTXLpD9nD_0YFYWhT1iWy0qiml4i-KLXgdinLtQo', '199', '2023-05-16', 'NUMBERED MEMORANDUM', 'active'),
(2588, 'RCRDSDARN0510709', 'PHILIPPINES RED CROSS MANILA CHAPTER COUNCIL MANAGEMENT TRAINING', 'http://depedmanila.net:5000/d/s/uzeyxABN7oplZEHLUj805wtaQgSMQhZ9/QsPn_SdeY2dXR3y8jnToBRTfGo-CZTsK-gLUgiGrLtQo', '75', '2023-05-17', 'DIVISION ADVISORIES', 'active'),
(2589, 'sgodsias0511294', 'AMPLIFIED NUMERACY ASSESSMENT-POST TEST', 'http://depedmanila.net:5000/d/s/uzeyxGQXzO7FaZUYLsWTtn6daCwAN2wS/kJ9Ok2gL3QmzOm_EmPZzLrbEaTTbQLfl-urUgxZDLtQo', '224', '2023-05-18', 'NUMBERED MEMORANDUM', 'active'),
(2590, 'adminmich0517296', 'PBB 2021 FORM1.0 VALIDATION - (ELEMENTARY)', 'http://depedmanila.net:5000/d/s/uzeyxMWvHs4GDZ18H1hjY0eageAWKJDQ/q-A6X7hu-B6sKLdIUSERSbZgqwm9HiBM--rVASLzLtQo', '109', '2023-05-18', 'UNNUMBERED MEMORANDUM', 'active'),
(2592, 'SGODELIZ0112368', 'SUBMISSION OF INDIVIDUAL PERFORMANCE COMMITMENT AND REVIEW FORM (IPCRF) OF ALL DIVISION OFFICE PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeyhQ9duKbwVpNVwbg0oBHfTQ8yNqzz/xzVrI2m0jVt4lfsUbYCOn_T9yYUMV0k3-cr0gkUaquQo', '1', '2023-01-13', 'OFFICE ORDER', 'active'),
(2593, 'ADMINMICH0111712', 'SCHEDULE OF FIRST FRIDAY MASS FOR C.Y. 2023 AT THE MANILA CITY HALL', 'http://depedmanila.net:5000/d/s/uzeyiXyxwiuaPG7IPEDhrZmmgkwPmoK2/xmqE1ZB4lIsLchkcT4MX85GV5UmpJsQE-arwgX3WouQo', '2', '2023-01-24', 'OFFICE ORDER', 'active'),
(2594, 'adminmich0120853', 'DCS MANILA SCHEDULE FOR THE TAKING OF BODY MEASUREMENTS RE: NEW UNIFORM FOR REGULAR CITY-PAID PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeyiYPMdqHo47Z5qVJ8hv7trl2pVCJz/TNWOw3kl0NCpa3JGVB_DZv5xpQQ3WOva-XrygqmWouQo', '3', '2023-01-24', 'OFFICE ORDER', 'active'),
(2595, 'sgodsias0330132', '2023 NATIONAL WOMENS MONTHS CELEBRATION', 'http://depedmanila.net:5000/d/s/uzeyvaXMLOOfGiWsBXnjuSEIK4K8Arhx/tANNm7KkqH4xcUM7DEKkMLa8gzi3PvfI-YrdAHdTMtQo', '5', '2023-03-31', 'OFFICE ORDER', 'active'),
(2596, '402022023', 'SUBMISSION OF REPORTS TO DEPED NATIONAL CAPITAL REGION', 'http://depedmanila.net:5000/d/s/uzeynZnKUwo9uNKaNhZz8hAbxBKNfPRM/7_gkGJrYBvXMDytbwdJkZVFrRQLo2R5I-0LlgIZebuQo', '4', '2023-02-02', 'OFFICE ORDER', 'active'),
(2597, 'ACCIMAR0503826', 'REITERATION OF THE EXISTING GUIDLINES FOR LOCAL OFFICIAL TRAVEL OFF ALL PERSONNEL OF THE DEPARTMENT OF EDUCATION', 'http://depedmanila.net:5000/d/s/uzez0x4RKCCrxIPSVRP374LDlSJ8jI3g/AhctHARmj-cXShRMZM5FEd7lbPx2tAxG-FbFAyWattQo', '6', '2023-05-05', 'OFFICE ORDER', 'active'),
(2598, 'accimar04271', 'REITERATION OF THE EXISTING GUIDELINES ON THE PROVISION AND USE OF OFFICIAL MOBILE PHONES, POSTPAID LINES AND PREPAID LOADS FOR DIVISION OFFICE EMPLOYEES', 'http://depedmanila.net:5000/d/s/uzez1KULZ4FuiwAgd056VrCsll7ZpvN5/amzq0q7SKDAuoEYdx033wAmjz1kjpMYW-TrHgJtGttQo', '7', '2023-05-08', 'OFFICE ORDER', 'active'),
(2599, 'ASDSMLALA0517590', 'CONDUCT OF FUN RUN', 'http://depedmanila.net:5000/d/s/uzeyxDRl7eaf4Jb0SxQ6tVYGIIx7S5Oh/zc6i7bhHJSkux20vpAH92IVlWyi4cYsv-srUgSYjLtQo', '90', '2023-05-18', 'DIVISION CIRCULARS', 'active'),
(2600, 'ASDSMLALA0518710', 'EXTENSION OF THE ADOPTION OF ALTERNATIVE DELIVERY MODE TO MITIGATE THE EFFECTS OF HIGH SUMMER HEAT INDEX', 'http://depedmanila.net:5000/d/s/uzeyxQvhny9L44jpMC7asXfyskgwXsaA/6uHZjafW_j54gbIX6_wN8F61Ml0K4TED-DbYglMbLtQo', '110', '2023-05-18', 'UNNUMBERED MEMORANDUM', 'active'),
(2601, 'publiadri0516449', 'INTERNATIONAL TRADE CHALLENGE PLAN COMPETITION 2023', 'http://depedmanila.net:5000/d/s/uzeyxG09IGIaTpDHnSbnzHVJoRgUuO4L/ikbedrmhdLbaxLCsmlmoe-iNXil5baQY-pLWg13_LtQo', '65', '2023-05-18', 'DIVISION ADVISORIES', 'active'),
(2602, 'publiadri0517652', '2023 NATIONAL FOLK DANCE WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeyx8CBDKcHHf4Shz0Hhoc3M8PT8CvY/qRiDQw_9SzP39q3pkr9uJMhkD-0TH2HS-GrZgD87LtQo', '51', '2023-05-18', 'DIVISION ADVISORIES', 'active'),
(2603, 'rcrdsmari0512219', 'RAJAH SULAYMAN AWARD 2023', 'http://depedmanila.net:5000/d/s/uzeyxPE71YgCr0uJAgdiVEDNXS8hkpxd/BBBU94_4XnFeXh2EnrPcNmnCapCucaoD-3LWg9afLtQo', '227', '2023-05-18', 'NUMBERED MEMORANDUM', 'active'),
(2604, 'cidtrai0517122', 'CONDUCT OF DISTRICT III ELEMENTARY SCHOOLS TEACHING DEMONSTRATION', 'http://depedmanila.net:5000/d/s/uzeyxJyX7Gkq1XbiTZTp9LsI0BRWaGQ6/2xTNA-qeC3Fx4ESrrDcLWOAR7HRiqz5m-1bXgXaDLtQo', '226', '2023-05-18', 'NUMBERED MEMORANDUM', 'active'),
(2605, 'accimar0515812', 'RECONSTITUTION OF DEPED MANILAS AUTOMATIC PAYROLL DEDUCTION SYSTEM (APDS) TASK FORCE', 'http://depedmanila.net:5000/d/s/uzeyxGqwgWdeRsDm2GMVMNMrAf8aV53i/ffVyNVsFvxNDY1FWTlKy60ePdUVv3u1e-x7XAv5jLtQo', '225', '2023-05-18', 'NUMBERED MEMORANDUM', 'active'),
(2606, 'cidmeri0516112', 'WINNERS IN THE DIVISION SEARCH FOR OUTSTANDING TEACHERS AND MASTER TEACHERS FOR SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyxOW7CMN1dYnqWfAgULAICvHytBNH/s_3tYZwbrilMFXWGQ7Ztx0IY7bSOYWua-8rWgz7TLtQo', '230', '2023-05-18', 'NUMBERED MEMORANDUM', 'active'),
(2607, 'CIDTRAI0515855', 'BIDYOTURISMOMAYNILA PLANNING WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeyxYJHBowQ5aAqtTczU1U9UfUpOUla/Yl8wpQRaPlplG_SCr7afBRolPyGgcTBD-dbbAbwHMtQo', '229', '2023-05-19', 'NUMBERED MEMORANDUM', 'active'),
(2608, 'rcrdselsa0511218', 'AREA-WIDE KABSULONG (KAB ADVANCEMENT DAY CAMP)', 'http://depedmanila.net:5000/d/s/uzeyxUu5cwR3UiYsvU4wSui6thDYSUmh/Y6OcypJDvKgL8XXv5VaFUdq6F6YQVtrE-aLYAYfrLtQo', '91', '2023-05-19', 'DIVISION CIRCULARS', 'active'),
(2609, 'cidmeri0516539', 'WINNERS OF ASMEPPS AND TIMO', 'http://depedmanila.net:5000/d/s/uzeyxXJgEYPfLF3a2GycCudIOG7yTSTA/0FjBXENAzkIclYvpKkVJ5qGIaWKTzAdD-WLagx_HLtQo', '76', '2023-05-19', 'DIVISION ADVISORIES', 'active'),
(2610, 'PUBLIADRI051779', 'KAKASA KA BA? 2023: MALAY SA NAKARAAN, TANGLAW SA HINAHANAP', 'http://depedmanila.net:5000/d/s/uzeyxWbgPM3wkTFDkzjSRmYr348pZZE4/9sSMz_C3aIh6jfLyvCR_j7mq6uTlAbqe-O7ZAruHLtQo', '66', '2023-05-19', 'DIVISION ADVISORIES', 'active'),
(2611, 'publiadri0517493', '6TH PATAPE NATIONAL CONVENTIONS', 'http://depedmanila.net:5000/d/s/uzeyxTlh6e9bEAyjNis5trB8X81vFCRE/1IyeKaPNvmuN79_8CE6FuAWF2r5UwSOz-SLbADOnLtQo', '69', '2023-05-19', 'DIVISION ADVISORIES', 'active'),
(2613, '0101032023', 'DONATION DRIVE FOR A. MABINI ES AND V. MAPA HS', 'http://depedmanila.net:5000/d/s/uzeyilBJVSWtamAoiLuMUs2TasbJZSyA/reeIF74RcMrABy9jjJkaOwZVFjBjIAfJ-XL7ACDGsuQo', '1', '2023-01-03', 'DIVISION CIRCULARS', 'active'),
(2614, 'sgodsias0511736', 'MONTHLY TECHNICAL ASSISTANCE (TA) ON SCHOOL GOVERNANCE COUNCIL (SGC) FOR SECONDARY SGC  COORDINATORS AND MORE', 'http://depedmanila.net:5000/d/s/uzeyxtSONy08T1NVIKvH3gCqjfdnLXGz/sZosB1emt5pgrLUbmzwMz2DNo1XM38Ei-7bYg4VTMtQo', '111', '2023-05-22', 'UNNUMBERED MEMORANDUM', 'active'),
(2615, '', 'FACE TO FACE CONSULTATION ON SALARY UPGRADING', 'http://depedmanila.net:5000/d/s/uzeyxmvcOQH2kMHEe1OqNtqmIXXMYPMX/cOPVSZmMCpsye3NTdKX9RyYVD9gm45pW-0rbgZUHMtQo', '92', '2023-05-22', 'DIVISION CIRCULARS', 'active'),
(2617, 'RCRDSDARN0113583', 'Requesting to Conduct an Online/Face-to-Face Campaign to Students', 'http://depedmanila.net:5000/d/s/uzeyiSsBbOVcJr9TCS2HZ7xqQKTGIbU7/kUlwT0wXbB9MdleB-smYDWUSJRSu3KVL-IbyAXrKnuQo', '14', '2023-01-24', 'DIVISION CIRCULARS', 'active'),
(2618, 'CIDBREN0130287', 'Capacity Building Seminar for Guidance Counselors and Career Advocates', 'http://depedmanila.net:5000/d/s/uzeymlYKRoRoLqRyl9yNrzph0pIpDHho/5fZgIo4Qp7nJw_kK4IyW3e7WTzaQ2xOE-obpglWeduQo', '37', '2023-02-01', 'NUMBERED MEMORANDUM', 'active'),
(2619, 'rcrdsdarn051053', 'INVITATION TO THE ANNUAL Y-KIDS ACADEMIC CONTEST', 'http://depedmanila.net:5000/d/s/uzeyxkEQekaoBOhE9egpeLdF5o7vzYP8/y21REkG8v4AS1vTchnwH6RYaktT6Oe48-sbbAXSrMtQo', '79', '2023-05-22', 'DIVISION ADVISORIES', 'active'),
(2620, 'rcrdsdarn0511859', 'INVITATION TO THE 1ST YWCA FFPI REGIONAL ASSEMBLY FOR NCR AND SOUTH LUZON REGION', 'http://depedmanila.net:5000/d/s/uzeyxjNdGWgx6aRBNh57rZaXNTdVhFEI/a8YGBNRpHQh1h86APfU2AVGIpSWOiAax-m7agjh3MtQo', '78', '2023-05-22', 'DIVISION ADVISORIES', 'active'),
(2621, 'RCRDSDARN012395', 'open for requests from schools for all environmental-friendly activities proposing for the usage of park as venue', 'http://depedmanila.net:5000/d/s/uzeyo3Jc2uQDPsnsuKRYxJeMzgGOMxiU/_SHZ9UDeFlGleMEgQg0mpaMRk7YOmqeA-irmAYfWauQo', '21', '2023-02-03', 'DIVISION CIRCULARS', 'active'),
(2622, 'icttrai0509277', 'REQUEST FOR TWO TEACHERS TO ATTEND THE ORIENTATION TRAINING OF TRAINERS ON MAY 19, 2023 (FRIDAY), FROM 9:00 AM TO 12:00 PM VIA ZOOM PLATFORM', 'http://depedmanila.net:5000/d/s/uzeyxnM15YLdUr0CW0twVDpaBlPNbqby/4JZm5VGdPDHiJkjRupe9DgUFMbZnHvKh-37aAzEnMtQo', '93', '2023-05-22', 'DIVISION CIRCULARS', 'active'),
(2623, 'SGODGAY0203169', '2023 RESCHEDULING OF SCHOOL GOVERNANCE COUNCIL COORDINATORS VIRTUAL MEETING ON TECHNICAL ASSISTANCE ON SCHOOL GOVERNANCE', 'http://depedmanila.net:5000/d/s/uzeyoDXAjk4pwGj3G1ZSZat1L1PfLyXh/TlTipZjEDbroO1QHlnBtYdsfwnfVbPw_-RrkAY4eauQo', '11', '2023-02-06', 'DIVISION ADVISORIES', 'active'),
(2624, 'ICTSTAF0203270', 'Series of Collective Negotiation Agreement (CAN) Discussions of the In-Service Training for Teachers (INSET)', 'http://depedmanila.net:5000/d/s/uzeyoEfZG62jsgxcp7jAyAhUCO4JcfiE/8VfDLP8i4urszYnRkthPNpBzFZt8le3G-QLmg8YCauQo', '22', '2023-02-06', 'DIVISION CIRCULARS', 'active'),
(2625, 'sgodsias0517463', 'INTERIM GUIDELINES FOR THE LEARNER GOVERNMENT PROGRAM (LGP) FOR SCHOOL YEAR 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyy3xYCWu2uQFZkmqwVl6dz4A0lkyM/5cvTEBUyMxp-IYypwo0ydD4FT3cGeW55-ALegUWHMtQo', '112', '2023-05-22', 'UNNUMBERED MEMORANDUM', 'active'),
(2626, 'publiadri051781', '2023 JAPAN DESIGN, IDEA AND INVENTION EXPO', 'http://depedmanila.net:5000/d/s/uzeyxlVck47O2T7pyO9FhbrRGxGU2Cq1/RdSHr_R_AuWu8hMoJF__cCt-VyxjM2Xe-lLbAaRbMtQo', '68', '2023-05-22', 'DIVISION ADVISORIES', 'active'),
(2627, 'cidtrai0502733', 'ONLINE ORIENTATION ON THE CONDUCT OF PRESENTATION PORTFOLIO ASSESSMENT FOR ALTERNATIVE LEARNING SYSTEM ACCREDITATION AND EQUIVALENCY ELEMENTARY AND JUNIOR HIGH SCHOOL LEARNERS FOR THE SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzez0zLEMoHTCZvu0ySobIjA43m84rqX/btpmIlcm6c7Wjzg-_9LL-WQcGOo-lfUy-6bBA7MOstQo', '201', '2023-05-04', 'NUMBERED MEMORANDUM', 'active'),
(2628, 'cidtrai0502427', 'CAREER ORIENTATION FOR ALS LEARNERS COMPLETERS PRESENTATION PORTFOLIO ASSESSMENT (PPA YEAR 4) ALS GRADUATION AND MOVING-UP CEREMONY OTHER MATTERS', 'http://depedmanila.net:5000/d/s/uzez188nOymlQC11wUWokb3UsV4rQZY1/PHh7Vlz6WrGlbOjsdYtWXnMbPThsP7bF-8rAAStCstQo', '92', '2023-05-04', 'NUMBERED MEMORANDUM', 'active'),
(2629, 'RECRTNIC0317979', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF ASSISTANT SCHOOL PRINCIPAL II (SHS), SECONDARY SCHOOL PRICIPAL II (SHS), ELEMENTARY SCHOOL PRINCIPAL I, AND SECONDARY SCHOOL PRINCIPAL II & III APPLICANTS', 'http://depedmanila.net:5000/d/s/uzeyuHDHXSA5IieBIYBIJicJ3ODXdEDX/ph8JowxiL_k5olHhQcPMeL8gnDy_fHUr-grzgeGTUtQo', '127', '2023-03-17', 'NUMBERED MEMORANDUM', 'active'),
(2630, 'recrtnic0317534', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF ASSISTANT SCHOOL PRINCIPAL II (SHS), SECONDARY SCHOOL PRINCIPAL II (SHS), ELEMENTARY SCHOOL PRINCIPAL I, AND SECONDARY SCHOOL PRINCIPAL II & III APPLICANTS', 'http://depedmanila.net:5000/d/s/uzeyuICsUk3QClkGgl1r73LGM71yArjt/MKxTC7oUF8LrLaz7XbvHWZxvKY2gKeDe-drzgBF_UtQo', '128', '2023-03-17', 'NUMBERED MEMORANDUM', 'active'),
(2631, 'recrtnic0309830', 'CORRIGENDUM TO DIVISION MEMMORANDUM NO. 107, 2023 (SCHEDULE OF ACTIVITIES FOR THE SCREENING OF ASSISTANT SCHOOL PRINCIPAL II (SHS), SECONDARY SCHOOL PRINCIPAL II (SHS), ELEMENTARY SCHOOL PRINCIPAL I, ', 'http://depedmanila.net:5000/d/s/uzeyuENIEimuCSXN5Y3AIgkgPI6aLmbZ/96snRXugNV2ovAUjnEO-1e1VMkDI5XmH-rrzAsJTUtQo', '58', '2023-03-15', 'UNNUMBERED MEMORANDUM', 'active'),
(2632, 'RECRTNIC0309645', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF ASSISTANT SCHOOL PRINCIPAL II (SHS), SECONDARY SCHOOL PRINCIPAL II (SHS) ELEMENTARY SCHOOL PRINCIPAL I, SECONDARY SCHOOL PRINCIPAL II & III, EDUCATION PROGR', 'http://depedmanila.net:5000/d/s/uzeyu4rjNGorhrscIXXSdsdNNYX1k3T4/C_9xP8W6VsCVLC4ypbe11NtTG1zi83Z4-xbygcLLUtQo', '124', '2023-03-14', 'NUMBERED MEMORANDUM', 'active'),
(2633, 'RAPJEA0519803', 'GSIS NEW EMPLOYEES ORIENTATION (NEO)', 'http://depedmanila.net:5000/d/s/uzeyyN7TUWM2x7mMyOwf63MfoL1sL5ek/LEFcnIF1xZBbz9w0BTxNnRjVxpo2gtyG-UrdgLcfMtQo', '240', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2634, 'ICTTRAI0509532', 'THIRD INSTABRIGHT INTERNATIONAL AWARDS FOR EDUCATORS', 'http://depedmanila.net:5000/d/s/uzeyyDkiC03MwT5QIUdK99g3RwJspZPH/j3lAH2i82huOp0J0yi_j1Ab2ThOWejqb-FbfAd2rMtQo', '80', '2023-05-23', 'DIVISION ADVISORIES', 'active'),
(2635, 'sgodsias0519463', '2023 DIVISION RESEARCH CONGRESS', 'http://depedmanila.net:5000/d/s/uzeyyP6fP0tZJGwkgTfX6P8ieTLxOh4b/nvy0XxEKkzIDZxk6qZ_oJ9DJoDK7kFzV-K7igKCrOtQo', '113', '2023-05-23', 'UNNUMBERED MEMORANDUM', 'active'),
(2636, 'sgodsias0519633', 'PRIME HRM FOR L & D ACCREDITATION', 'http://depedmanila.net:5000/d/s/uzeyyPX468vk3ufXeRc6vhpVmYkHqf2P/OXyvanB5EOxLOAVEJSMwS-FpOAndDH7I-MrigoDbOtQo', '114', '2023-05-23', 'UNNUMBERED MEMORANDUM', 'active'),
(2637, 'sgodsias0519158', 'GUIDELINES IN DETERMINING POOL OF SCHOLARSHIP AND TRAINING GRANTEES', 'http://depedmanila.net:5000/d/s/uzeyyL8HZwOMjOY3NDhAtGR7iKRd56TV/IayIrPFrj9dN_vlgJ5jiFFXef6c_aHsX-fregUejMtQo', '243', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2638, 'rcrdsdarn0516316', 'REQUEST FOR ASSISTANCE', 'http://depedmanila.net:5000/d/s/uzeyyCTW6ggM5ZV4v5zubwtUNeKJHL98/VS5DHX6LfVk-uNMTdvBjpkzLUKTZdDxS-HbfATXrMtQo', '94', '2023-05-23', 'DIVISION CIRCULARS', 'active'),
(2640, 'sgodsias0517785', 'SCHEDULE OF ACTIVITIES FOR THE 2023 TECHNICAL ASSISTANCE (TA) FOR LEARNERS AT-RISK OF DROPPING OUT', 'http://depedmanila.net:5000/d/s/uzeyyLhTq6ABCbA4LRbiugrj6Evy8uGu/K84-PuWIjCmZWxgvkAqBP5v2hk69yhQB-iregBfDMtQo', '244', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2641, 'rcrdsmari0511110', 'NATIONAL FLAG DAY CELEBRATION', 'http://depedmanila.net:5000/d/s/uzeyyJQgnWhJHf3iqeyfW7q5Dt5xkHc3/6cXc9-y759UrAYfbuMn-67bWaZmKyqBI-drfAjOHMtQo', '242', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2642, 'cidmeri0519304', '2023 DISTRICT AND DIVISION LEVEL FESTIVAL OF TALENTS (DFOT)', 'http://depedmanila.net:5000/d/s/uzeyyIIIHEYzgLnD2K0zY4q1i4yjDV8f/P3kVbx0fzvxnhu37_bj7pQHTCK6kJsed-W7dgrc_MtQo', '241', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2643, 'cidmeri0516151', 'INTERIM GUIDELINES ON ADMISSION PROCEDURE FOR SPECIAL SCIENCE ELEMENTARY SCHOOLS (SSES) AND SCIENCE TECHNOLOGY AND ENGINEERING (STE) PROGRAM FOR SY 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyyH9tkwgddmDbxRYhaQvMssoG5cEb/PXUHWJn7mnqeJOvjtJJ0q0yE5Qv3gEow-S7cgkb3MtQo', '239', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2644, 'rcrdsdarn0516846', 'ACTIVITIES FOR REGISTERED GIRL SCOUTS', 'http://depedmanila.net:5000/d/s/uzeyyFb6XWtzb0LcMxZCD4W6RmVqZfXM/8nOkQfuhUN9ONHhi3iHNpTfpOdE6Wxbm-MreA6KDMtQo', '95', '2023-05-23', 'DIVISION CIRCULARS', 'active'),
(2645, 'recrtmar0523781', 'SCHEDULE OF ACTIVITIES AND DIVISION SELECTION SUB-COMMITTEES ON THE HIRING PROCESS OF TEACHER I POSITION INTHE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeyyM7sXEy2G8NaedmJlLPNQv86rfZm/6_DB6Xgg_jZ5UonjtX8vH0kW4zJoEZXh-HbggFRXOtQo', '245', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2646, 'cidbren0523371', 'AMPLIFIED NUMERACY ASSSESSMENT (ANA)-POST TEST', 'http://depedmanila.net:5000/d/s/uzeyyMPTfKLQ5tkgXB4fSvHugSltUkkb/wfXSRb1fbmWz-dsDi85M4pMKrKleHvXQ-JbiAqSLOtQo', '248', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2647, 'rcrdsmari0518147', 'MANDATORY WEARING OF FACE MASKS INSIDE OFFICES', 'http://depedmanila.net:5000/d/s/uzeyyEkJ9Gcdv6H7TEjJci1RPCvm43L0/fyk1UKV2UicrQJLKsjTne0_yQTdilLBq-Q7dAibXMtQo', '236', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2648, 'publiadri0519244', 'INSTITUTING MEASURES TO INCREASE ENGAGED TIME-ON-TASK AND ENSURING COMPLIANCE THEREWITH', 'http://depedmanila.net:5000/d/s/uzeyyFAhqOuyOQae12gMMAw9SlyswKxk/ZewxlvTbkIWgbd7RFEWFtayXXBQY-28k-O7cAGq3MtQo', '235', '2023-05-23', 'NUMBERED MEMORANDUM', 'active'),
(2649, 'rcrdsmari0512585', 'PERMISSION TO CONDUCT CAMPUS MINISTRY IN JOSE ABAD SANTOS HIGH SCHOOL AND RAJAH SOLIMAN SCIENCE AND TECHNOLOGY HIGH SCHOOL', 'http://depedmanila.net:5000/d/s/uzeyxvRaISCDKZh14y9qhSLOEyvGiLkL/knGuwo89a6XJONWRkVUlqYnE96rCQJBY-QbiAOk7OtQo', '97', '2023-05-24', 'DIVISION CIRCULARS', 'active'),
(2650, 'publiadri0523759', 'FACE TO FACE CONSULTATION ON SALARY UPGRADING', 'http://depedmanila.net:5000/d/s/uzeyxy8m26w8BZIiKBTe7j2VmwvvQjyx/-ocxGUWNiM0kMtA-8jI3y73mnBqUMShm-OrhAh0HOtQo', '96', '2023-05-24', 'DIVISION CIRCULARS', 'active'),
(2651, 'sgodsias0522767', 'SUBMISSION OF NON-BERF PAPERS', 'http://depedmanila.net:5000/d/s/uzeyy7n8SYzaNtZ8KuhLwJpOl7SAB9vT/69Uw5AuCPaY_X57Tw981OK3m8xN9-VoB-mLggdrvOtQo', '115', '2023-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(2652, 'sgodsias0522793', 'CONDUCT OF THE SYNCHRONIZED SUPREME ELEMENTARY LEARNER GOVERNMENT (SELG) AND SUPREME SECONDARY LEARNER GOVERNMENT (SSLG) ELECTIONS FOR SCHOOL YEAR 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyy3X9VOpKNsrJcoKNqJvvy5g9j3Fk/nEDH9hUOE6eVBX63XrupFlFop7quBa9z-YLige2nOtQo', '249', '2023-05-24', 'NUMBERED MEMORANDUM', 'active'),
(2653, 'publiadri0519831', '(MMDA) LAUNCH OF SIMULTANEOUS BRIGADA ESKWELA', 'http://depedmanila.net:5000/d/s/uzeyy4oLakaVEfuSRViKNUK6vEhAi03c/JCjCGHFnKeT4kvHFeSlOzIUpRWOUVWbx-WbjgOWHOtQo', '231', '2023-05-24', 'NUMBERED MEMORANDUM', 'active'),
(2654, 'recrtnic0518926', 'ORIENTATION FOR EVALUATORS OF TEACHERS I APPLICANTS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeyy55wiqt89QigsupOAWQAj5IzCETu/c29PwOb3LKyJUmrk4FJuaAFYsebsUBsH-aLigDn3OtQo', '250', '2023-05-24', 'NUMBERED MEMORANDUM', 'active'),
(2655, 'recrtnic0518873', 'ORIENTATION OF TEACHER I APPLICANTS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeyy7MjlQPUrYR5R6TyhPxzpc1GFaj4/V1ZYI1QmaHm4MsVjJG4HWmMFVqPdPZvp-b7jAaYXOtQo', '251', '2023-05-24', 'NUMBERED MEMORANDUM', 'active'),
(2656, 'recrtnic0518660', 'ORIENTATION OF TEACHER I APPLICANTS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeyy6nXVGXSTuaB36VLeilShnxC4Z3I/0rlS6OFCqT29BeFAaYKx67FbCip_5jdS-kbhgBLTOtQo', '252', '2023-05-24', 'NUMBERED MEMORANDUM', 'active'),
(2661, 'RCRDSMARI0517355', 'INVITATION TO DISTRICT II TEACHING DEMONSTRATION LESSONS ON JUNE 1-2 AND JUNE 5-7, 2023', 'http://depedmanila.net:5000/d/s/uzeyy0GlVckP6lNXmSqpLBuXHQOmp3XJ/qp1gOm80qmr0B0gMygGlrJvZh64Nkg7P-UbjgMFjOtQo', '98', '2023-05-24', 'DIVISION CIRCULARS', 'active'),
(2662, 'sgodsias0523918', 'COMPLIANCE WITH THE REQUIREMENTS UNDER RA 11032', 'http://depedmanila.net:5000/d/s/uzeyy9mKN2nM2VFixepSu8gQkqWZUynF/MKmauJSkBQLkWY3bRKP2yJYuv02shqiF-prjAZs_OtQo', '117', '2023-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(2663, 'sgodsias0523679', 'ORIENTATION ON THE INTERIM GUIDELINES OF THE LEARNER GOVERNMENT PROGRAM (LGP) FOR SCHOOL YEAR 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyyFshfctngy2cvNlioYNhgzMFKqPy/02ljGNh46J3J4RlI3OArOYX2qjOldeBM-n7hA38TOtQo', '116', '2023-05-24', 'UNNUMBERED MEMORANDUM', 'active'),
(2664, 'ictnath0517159', 'WINNERS IN THE GLOBAL LEAGUE OF WINNERS (GLOW), INC', 'http://depedmanila.net:5000/d/s/uzeyzk8Kx6ywclmziLoys7RtjxOtND9e/EVlnB128j7PGFSJag15zkFYjFgsBPghv-27jA2AzPtQo', '84', '2023-05-25', 'DIVISION ADVISORIES', 'active'),
(2665, 'ictnath0517603', 'PHILIPPINE CONTINUING PROFESSIONAL DEVELOPMENT TRAINING CENTER', 'http://depedmanila.net:5000/d/s/uzeyzy2gKIbIAoPSfbzvXu49lscrMP1l/jks7VAG465HVWNq8p8nbeh1P99I6D_4i-4bjAbxXPtQo', '85', '2023-05-25', 'DIVISION ADVISORIES', 'active'),
(2666, 'rcrdsdarn051166', 'REQUEST ISSUANCE OF CIRCULAR MEMO FOR NEW DATE OF ACTIVITY YMCA', 'http://depedmanila.net:5000/d/s/uzeyzyT51QRmHNo1Xj0vpEc11lAxt4Vo/JGQWe-DpeTylRO9oGXD4a_suYVkRjkI0-6biASyfPtQo', '99', '2023-05-25', 'DIVISION CIRCULARS', 'active'),
(2667, 'rcrdsmari0517592', 'CONDUCT OF PHILSYS REGISTRATION IN ALL ELEMENTARY AND SECONDARY SCHOOLS IN MANILA', 'http://depedmanila.net:5000/d/s/uzeyzytTiYS7oPHEbSafSgrxDJBSZQq5/s4hV931rVQP6q53Foz2rF7dlTVy8NCa6-77igXS_PtQo', '100', '2023-05-25', 'DIVISION CIRCULARS', 'active'),
(2668, 'RCRDSDARN0511606', 'MGA BATANG T-PREP HANDA AT MATATAG SA PAGSUSULONG NG FACE TO FACE NA EDUKASYON SA NEW NORMAL', 'http://depedmanila.net:5000/d/s/uzez00b4UyY38a6onoOHEjuGgqEwvIPU/GXKBBs-yP71XypHvbXwYndijN83efSmq-9riAFznPtQo', '102', '2023-05-25', 'DIVISION CIRCULARS', 'active'),
(2669, 'rcrdsmari0517791', 'EDUCATIONAL CONTEST', 'http://depedmanila.net:5000/d/s/uzez039SfeYdRUUDn64tT4aTtPsoAeML/SNQMa1qQqHupiZIswkU6cdFxn2Xw9YsH-_Lggaz_PtQo', '103', '2023-05-25', 'DIVISION CIRCULARS', 'active'),
(2670, 'rcrdskael0504718', 'EDUCATIONAL PROGRAMS AND ACTIVITIES FOR SY 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyyVLqGadaRDMnA9unpWoH7EWBvjC9/NKd0_YnJMqA9xZJbYt0XxkiR5DaQZsxP-rbggG9fOtQo', '67', '2023-05-25', 'DIVISION ADVISORIES', 'active'),
(2671, 'rcrdsmari0414947', '9TH HSM: HANEP SA SCIENCE AT MATH', 'http://depedmanila.net:5000/d/s/uzeyyUvRZSyB6GGL1ootvDgBaMBEtIWD/OvySI5oPL2quGSz8VGpgKhJW12lPbfge-t7hgN-zOtQo', '72', '2023-05-25', 'DIVISION ADVISORIES', 'active'),
(2672, 'publiadri0522155', 'BAYANI LOVE', 'http://depedmanila.net:5000/d/s/uzeyySnS5u6C4FYQ115vU2ndYtC52uNj/PgyNcqHoDb9_Z521JT8gG2xmLud8qHeb-vrjA5_LOtQo', '77', '2023-05-25', 'DIVISION ADVISORIES', 'active'),
(2673, 'publiadri0523775', 'EMSS INTERSCHOLASTIC QUIZ 2023', 'http://depedmanila.net:5000/d/s/uzeyyWlpuwiHtnmjXSGAHSyPbsCabOwK/zLQjZrgULNYTExvm7cRjzP3SCYlAEal7-1LhAoQbPtQo', '82', '2023-05-25', 'DIVISION ADVISORIES', 'active'),
(2674, 'publiadri0523191', 'NATIONAL RESEARCH CONFERENCE ON BUSINESS, EDUCATION, AND TECHNOLOGY (NRCBET) TO BE HELD AT HENANN REGENCY RESORT & SPA, GOLDEN PAVILION, BORACAY ISLAND, AKLAN ON MAY 27 - 28, 2023', 'http://depedmanila.net:5000/d/s/uzeyyTMeM4FqdD6qdwHYEU1MLoP6ovJ9/E2qxQ5Z-nP2xEgE2YaKDnZMi4W5MsKj1-zrhA-_zOtQo', '81', '2023-05-25', 'DIVISION ADVISORIES', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(2675, 'CIDBREN0522672', 'STATUS OF IMPLEMENTATION OF HOMEROOM GUIDANCE AND MORE', 'http://depedmanila.net:5000/d/s/uzez0C5pH0FaQtbLt1EKgsGdMbJll8It/bwpj7X_93hnwAxaKuknP3d_vE9iTx9e5-gLngWSHQtQo', '118', '2023-05-26', 'UNNUMBERED MEMORANDUM', 'active'),
(2676, 'publiadri05231000', 'THE 2023 GAWAD AWARD CAREER EXECUTIVE SERVICE (CES) AWARD', 'http://depedmanila.net:5000/d/s/uzez0DnQ3UfD2wrd3A9uDmM3dVVK3pGN/0mD9h-nvhdBuOgoR193X_WUniXbeZ67p-eblgqRrQtQo', '247', '2023-05-26', 'NUMBERED MEMORANDUM', 'active'),
(2677, 'HLTHJEN0524636', 'CONDUCT OF SERIES OF LECTURES ABOUT ADOLESCENT SEXUALITY AND REPRODUCTIVE HEALTH AMONG JUNIOR AND SENIOR HIGH SCHOOL STUDENT DURING THEIR HOME ROOM GUIDANCE', 'http://depedmanila.net:5000/d/s/uzez0Cf1XAcAybUzV1DbW1PDauY79xo8/xYZ6ZG08iNK1wFP6BdVndyTq9cCs4EWR-hrlAISnQtQo', '119', '2023-05-26', 'UNNUMBERED MEMORANDUM', 'active'),
(2678, 'publiadri0525163', 'PHILGEPS TRAINING SCHEDULE FOR THE MONTH OF JUNE 2023', 'http://depedmanila.net:5000/d/s/uzez0AfpceoRmJHNjdsNneBpUGecKnXv/l6_1D54pGUmTAcb4nMw0z66d1G-O4Odh-c7kA0BLQtQo', '93', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2679, 'publiadri0525223', 'ON-LINE TRAINING FOR SPA AND SENIOR HIGH SCHOOL ARTS & DESIGN', 'http://depedmanila.net:5000/d/s/uzez09XR6KuwwPKNSuyANEL5oiytQsW3/RzZui_rjaNJFYOMzpIn3MFquq6kfrYrL-ZbngQgLQtQo', '91', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2680, 'publiadri0525729', 'SECOND INSTABRIGHT LITERARY AWARDS', 'http://depedmanila.net:5000/d/s/uzez0AFQvWYi87WvkEUM2uFu4iaeV3id/VasaPvc4H8H2EIQSeJ3LRXbN-JGs5CMb-bLkgQgrQtQo', '92', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2681, 'publiadri0525595', 'NATIONAL ASSOCIATION OF PUBLIC SECONDARY SCHOOL HEADS, INC. (NAPSSHI)-NCR', 'http://depedmanila.net:5000/d/s/uzez08yEqAa5Ipkygm8OyPCUPjNEPpQR/AwrIH4gJhXE55HEMMG3gcflkqEKLNh6o-X7kgAvrPtQo', '90', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2682, 'publiadri0525721', 'PAMBANSANG SEMINAR-PAGSASANAY', 'http://depedmanila.net:5000/d/s/uzez07Ge3i4USsIivYGdG0yXU4zeE0qQ/gEPtVI94G4y-Q7x-YMAHhSmMeCOZGWPJ-Tblgt-_PtQo', '89', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2683, 'publiadri0525638', 'FUNDAMENTALS OF CREATING AND IMPLEMENTING DASHBOARDS WITH LOOKER STUDIO TRAINING WORKSHOP TO BE HELD ON JUNE 14-15, 2023 VIA ZOOM PLATFORM', 'http://depedmanila.net:5000/d/s/uzez06YeEURtc1LkAovJEgGFkUNPTidS/laeRgyi4dWV8bB6XyByp-BMsmzR8Sls2-Rrng-ePPtQo', '88', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2684, 'publiadri0525102', '25TH ANNUAL NATIONAL CONFERENCE AND TRAINING', 'http://depedmanila.net:5000/d/s/uzez07YFBoVgDCfnUuAkZgdQ8CKnAyFd/eOfuxVoLBNFlMAb0D1gjE0_xAWeM3wfu-QLkAptvPtQo', '87', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2685, 'publiadri0525503', 'THE YBARRA LECTURES', 'http://depedmanila.net:5000/d/s/uzez06qFMa5ClFzlUluiRGwRXNSFXws9/jgiAoCVMxdmUiYmGl1euCH2qyTT7f5TG-ObkAidTPtQo', '86', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2686, 'publiadri0525533', 'PHILIPPINE INTERNATIONAL MODEL UNITED NATIONS (PHIMUN) 2023', 'http://depedmanila.net:5000/d/s/uzez03ZrMmOnnsLxFVIJE0mVYiIsagC5/KpGIcn4xM6okUj96stNZgd12JWBOcId--B7kg41XPtQo', '48', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2687, 'publiadri0517294', '1ST NATIONAL RESEARCH CONFERENCE', 'http://depedmanila.net:5000/d/s/uzez02RSqSDpooMDh0xW2J1KJeVoMNtB/diMWzLULdfpq5sqkBOCvgm9NI3x5Eufj-M7ngR8zPtQo', '71', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2688, 'publiadri0517984', 'PHILIPPINE HOME ECONOMICS ASSOCIATION (PHEA) 74TH NATIONAL CONFERENCE AND TRAINING', 'http://depedmanila.net:5000/d/s/uzez01sGaIlqr7dEb1Ew79AcLB10fcHJ/7tgEoFaSNCB7KHmIOQbPFRQ-TP5cKYPo-H7lgx6XPtQo', '70', '2023-05-26', 'DIVISION ADVISORIES', 'active'),
(2689, 'CIDAMCY0522249', 'FINAL PROFESSIONAL MEETING OF KINDERGARTEN MASTER TEACHERS, MAKITA OFFICERS, AND SELECTED TEACHER-WRITERS', 'http://depedmanila.net:5000/d/s/uzez0D5QEIIOeS60YUoFpNbTO2EfaxEt/VkcodA3To4ddXbF8qSrKrRGNSzBaPcPG-trmAIzbRtQo', '120', '2023-05-26', 'UNNUMBERED MEMORANDUM', 'active'),
(2690, 'CIDBREN0526528', 'BIDYOTURISMOMAYNILA PLANTING WORKSHOP', 'http://depedmanila.net:5000/d/s/uzez0GLoE8H0qlPj2rzhKntCTRsTtVeS/G1n_-HRXC6l12BHdlQjMOeks19lpyy0u-vblgYUDRtQo', '95', '2023-05-29', 'DIVISION ADVISORIES', 'active'),
(2691, 'PROPEMARI0525587', 'CONDUCT OF PHYSICAL COUNT OF PROPERTY, PLANT AND EQUIPMENT IN THE DIVISION OFFICE', 'http://depedmanila.net:5000/d/s/uzez0LJn0QQSl5eoYrhztxdNageXFwhl/909hH1b4VxO2QbUy8b4fFQ1hgkjuV9y3-p7rAVQTTtQo', '121', '2023-05-29', 'UNNUMBERED MEMORANDUM', 'active'),
(2692, 'publiadri0525854', 'TRAINING ON BASIC FOOD SAFETY (BFS), HAZARD ANALYSIS AND CRITICAL CONTROL POINT (HACCP), AND FOOD SAFETY COMPLIANCE OFFICER (FSCO)', 'http://depedmanila.net:5000/d/s/uzez0JBnWuZaOObYc5wCZL4YGalGFicY/uLSTdtvj-Z2FFAualF6A2glZU-7uPcgj-dLoAet7StQo', '255', '2023-05-29', 'NUMBERED MEMORANDUM', 'active'),
(2693, 'cidbren0522996', '2023 CAREER ORIENTATION FOR ALTERNATIVE LEARNING SYSTEM JUNIOR HIGH SCHOOL COMPLETERS', 'http://depedmanila.net:5000/d/s/uzez0IlOpmza7RMHHYB0X6dkyBS88U8i/oq8szx3Kkb-vEBnGUxMPKoWf5UsVXwnm-jLqgse7StQo', '258', '2023-05-29', 'NUMBERED MEMORANDUM', 'active'),
(2694, 'publiadri0525368', 'CORRIGENDUM TO REGIONAL MEMORANDUM NO. 344 , S. 2023 MAGNA SED OULINAR ULTRICIES. FURUS LECTUS MALESUADA', 'http://depedmanila.net:5000/d/s/uzez0HlnsUfEUkul3susezdyk20WKFDE/QiCg9mNdpRHa1YR6guSOFoLrthSHQdQU-5rkAaSHStQo', '253', '2023-05-29', 'NUMBERED MEMORANDUM', 'active'),
(2695, 'rcrdsmari0517209', 'COUNCIL OFFICERS, AND LOCAL COUNCIL EXECUTIVE BOARD MEMBERS FOR CY 2023', 'http://depedmanila.net:5000/d/s/uzez0ICCZcttgkcZSyNUATMsj5DZlJZL/M9NZyEJJxDFvA6AOBhLnk1iJRIXNFPDI-37kglhPStQo', '105', '2023-05-29', 'DIVISION CIRCULARS', 'active'),
(2696, 'cidchar0524282', 'PROJECT LR-LEAD (LANGUAGE EDITING AND ANNOTATIONS OF LEARNING MATERIALS DEVELOPED)', 'http://depedmanila.net:5000/d/s/uzez0N1Nmu9TgVjGWqvt8HletfV8rikD/eUv9hX_8BuCka5QLlb1BJ6OoWXwsTlmN-k7pAAffStQo', '260', '2023-05-29', 'NUMBERED MEMORANDUM', 'active'),
(2697, 'SGODSIAS0524544', 'ORIENTATION ON DEPED ORDER 013, S. 2022 [OMNIBUS GUIDELINES ON THE REGULATION OF OPERATIONS OF PARENT-TEACHER ASSOCIATIONS (PTAs) FOR ALL SPTA-BOD CHAIRPERSONS OF SDO-MANILA]', 'http://depedmanila.net:5000/d/s/uzez0LkBhYevwB1o3wJcZRqRzroykRtM/yUjc_5SD_KJnIn4_n9HjZe0MmXfsYbNA-mrqg6v3StQo', '261', '2023-05-29', 'NUMBERED MEMORANDUM', 'active'),
(2698, '01172023', 'MEETING WITH SCHOOL GUIDANCE COORDINATORS', 'http://depedmanila.net:5000/d/s/uzeyhfCNoSAHoIC06odTeNCS7UrQNSDv/8Hff6PsrE3wzIWIipWn4L5-kZYY3x7So-Bb1AYaOpuQo', '11', '2023-01-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2699, '01242023', 'Coordination Meeting on Conduct of Remediation and\nIntervention Program in Elementary Mathematics', 'http://depedmanila.net:5000/d/s/uzeyiaOYYSNNWH1FK7TRqRDeZFGonKzL/Q9EWKWHgsvrfJH4RlpTTXAIIexjvV5wx-GbygLpWnuQo', '16', '2023-01-24', 'UNNUMBERED MEMORANDUM', 'active'),
(2700, '01062023', 'LEARNING AND DOING MATHEMATICS WITH PROF. LOH', 'http://depedmanila.net:5000/d/s/uzeyjvZ1hUXbYZraKe5FxsAVX9MWhnXi/C7d4ROFgetc5Tu4DGMOhjvlnxTb5pX09-Br6AFHGruQo', '1', '2023-01-06', 'DIVISION ADVISORIES', 'active'),
(2701, 'SGODELIZ0120528', 'INTERNATIONAL FIELD STUDY, ASIAN CENTER OF EDUCATION, RESEARCH AND TRAINING FOR INNOVATION (ACERT) PROFESSIONAL DEVELOPMENT', 'http://depedmanila.net:5000/d/s/uzeyiU0a7gvefZatxQxLymvdtCN45M8n/ZoLEBHSnDQBDzl6PGBFCmJKkb-1qbYGZ-ErxgZYynuQo', '6', '2023-01-24', 'DIVISION ADVISORIES', 'active'),
(2702, 'ASDSMLALA0516133', 'REITERATION OF THE CONTINUED ADOPTION OF AUSTERITY MEASURES PURSUANT TO ADMINISTRATIVE ORDER NO. 103, S. 2004', 'http://depedmanila.net:5000/d/s/uzeyxBSZDAEvoGdAwzM8tnanXKasX5f3/xpihueCYYzMlPGIJu-v6XUrsaVbz6tMS-j7XglXbLtQo', '1', '2023-05-17', 'Office Order', 'active'),
(2703, 'sgodsias0525882', 'CORRIGENDUM TO DIVISION UNNUMBERED MEMORANDUM DATED MAY 23, 2023, TITLED \"PRIME HRM FOR L&D ACCREDITATION\"', 'http://depedmanila.net:5000/d/s/uzez0dCWD2oer1ECnejAjBIYSaDuKX16/HPpJ-sTPQx0co9xmOQ_A7VkRn1DkN3Qb-WLvgtZvTtQo', '122', '2023-05-30', 'UNNUMBERED MEMORANDUM', 'active'),
(2704, 'sgodsias0524851', 'ENCODING OF LEARNERS QUARTERLY AND FINAL GRADES IN THE LEARNER INFORMATION SYSTEM (LIM) FOR SY 2022 - 2023', 'http://depedmanila.net:5000/d/s/uzez0amvbMSXFbdlAj4pXD6xVP0VGaxh/iDsIS5icNZNOiS4QVcwFHKhb5jW7YZs5-G7sggG7TtQo', '263', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2705, 'sgodmarl0526856', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 244, S. 2023, SCHEDULE OF ACTIVITIES FOR THE 2023 TECHNICAL ASSISTANCE (TA) FOR LEARNERS AT-RISK OF DROPPING OUT', 'http://depedmanila.net:5000/d/s/uzez0ZMvx0oSAjvrFPXBD53h24SZyazn/YU7RuopGuJrhS9yloYBKpiFwh8Sj1f62-CLuAF0rTtQo', '262', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2706, 'rcrdsmari0518816', 'INVITATION FROM THE CENTER FOR GLOBAL BEST PRACTICES', 'http://depedmanila.net:5000/d/s/uzez0Xo8jajy5IgqTrnozOLsbFDBQbYR/D8T6MMDbYDHXzIV9ZwpM_LVPiJ6--v8k--LqgODPTtQo', '238', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2707, 'publiadri0517697', 'PHILGEPS TRAINING SCHEDULE FOR THE MONTH OF MAY 2023', 'http://depedmanila.net:5000/d/s/uzez0Maz5mv737n3Fi5gNhr7j0tHlc2a/XqIESeXiyIFQf58Dhx4nnF_DHq7hzFEa-57yAnCALuQo', '83', '2023-05-30', 'DIVISION ADVISORIES', 'active'),
(2708, 'publiadri0524733', 'CACHET FAMILY SPORTS AND GAMES FESTIVAL', 'http://depedmanila.net:5000/d/s/uzez0NIyv0PoM9PAcqTNNMCLhE6iwA0A/o8I6VuXc3RQa6v-DyxRY6iRW1cr5fXaP-zrpgAhzTtQo', '97', '2023-05-30', 'DIVISION ADVISORIES', 'active'),
(2709, 'publiadri0524179', 'CAMPAIGN FOR CHARACTER EDUCATION TENACITY (CACHET) PROGRAM', 'http://depedmanila.net:5000/d/s/uzez0OiyZMJTDC1W69jH9knahVKumotj/g9YvmMD0qSJqIBJ2SnlQyH1nzScG9FP5-vLog8g_TtQo', '96', '2023-05-30', 'DIVISION ADVISORIES', 'active'),
(2710, 'recrtnic0529651', 'VACANCIES FOR RELATED TEACHING AND NONTEACHING POSITIONS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzez0WxLLMRfpJHXVrIYnsu4ys87Q5nS/E7uYxThORzmC9fCkaAD3xvOmXqjpOdob-JLsAmnvTtQo', '264', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2711, 'ASDSMLALA0530967', 'COMPOSITION OF THE SDO-MANILA PROVIDENT FUND SECRETATIAT', 'http://depedmanila.net:5000/d/s/uzez0Yew7osAKz3l1702SD4dGNhWIBBe/1s5iOhZauhAdUhFXDYlt2LqDH0DNLqV--PrtgnIvTtQo', '266', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2712, 'publiadri0525286', 'INVITATION FROM THE DEVELOPMENT ACADEMY OF THE PHILIPPINES (DAP) SENIOR EXECUTIVES CLASS SHUTTLE COURSE', 'http://depedmanila.net:5000/d/s/uzez0UpLrmTPFPU6S7xaFH89m11aHKxr/vcxNJQq4KdVjSIpJbkeM38NiIkoJcrKc-ALugpj3TtQo', '254', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2713, 'publiadri0525821', 'INTERNATIONAL AIDS CANDLELIGHT MEMORIAL 2023', 'http://depedmanila.net:5000/d/s/uzez0VxkO60r6TFzozTV6IPggxZFZJ5V/RYJhf-BPG1sQyjCsIff9G8PA4HQWQvmR-8roA3ivTtQo', '223', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2714, 'rcrdsmari0509475', 'CONDUCT OF USAPANG ESTUDYANTE PROGRAM', 'http://depedmanila.net:5000/d/s/uzez0Vg9G0sjeWchaBtyBLclaPH2q4BX/OFnnlq5la4-dZRrYcMtr63JsIEUquvid-3brAmyLTtQo', '106', '2023-05-30', 'DIVISION CIRCULARS', 'active'),
(2715, 'sgodmarl0529128', 'CONDUCT OF THE 2023 MANILA RESEARCH CONGRESS', 'http://depedmanila.net:5000/d/s/uzez0cLiom7jsGDyVg55mZ33gF75zfeO/UvB8dSU7A3NAR8-ydh9K5qRZdPN9nZOm-MbvAXYLTtQo', '265', '2023-05-30', 'NUMBERED MEMORANDUM', 'active'),
(2716, 'sgodsias0523848', 'COMMITTEE ON ANTI-RED TAPE (CART)', 'http://depedmanila.net:5000/d/s/uzez0bvK7eraJ5ToZWET732X0jztLs8N/QAW6CoVdnfHWiZYdzU_G0s8F2wLhJiLD-Rrsgg5HTtQo', '8', '2023-05-30', 'OFFICE ORDER', 'active'),
(2717, 'rcrdsdani0523558', 'MEMO. TO SURRENDER OF FIRE ARMS AND DANGEROUS WEAPONS IN ENTERING THE MANILA CITY HALL', 'http://depedmanila.net:5000/d/s/uzez0hSVACd2w79DrKyPoCuTKaUi8yJ6/XY4mU_BaXWBU6HEziJg8zR13vQxEdj_7-7rsgEfbTtQo', '256', '2023-05-31', 'NUMBERED MEMORANDUM', 'active'),
(2718, 'rcrdsdani0524312', 'REMINDER ON THE UNLAWFUL USE OF FAKE PWD AND SOLO PARENT IDENTIFICATION CARDS', 'http://depedmanila.net:5000/d/s/uzez0iAUzQNvReFLGxwR59GxjZj6hKCF/Ogs6DQM85tfFc_vF9dmVV1nhfDh_S_3E-R7zAoUTUtQo', '257', '2023-05-31', 'NUMBERED MEMORANDUM', 'active'),
(2719, 'rcrdsdani0523424', 'OBSERVANCE OF THE NATIONAL FLAG DAY', 'http://depedmanila.net:5000/d/s/uzez0jRh4kG7WKGRkyEvmOQJdal8arNV/4eUJUcyGXn1vmVgF90KskloiKWN4RfMq-U7zAU0zUtQo', '259', '2023-05-31', 'NUMBERED MEMORANDUM', 'active'),
(2720, 'publiadri0524180', 'LEARN HOW TO TEACH SCIENCE INVERSTIGATORY PROJECT (SIP)', 'http://depedmanila.net:5000/d/s/uzez0hstrKMuU6cWJ2VCc0O4MI7Csu4e/pznOW6bbcEJz07D7CuGEenvhtjH7ONtt-zrvgdNvTtQo', '104', '2023-05-31', 'DIVISION CIRCULARS', 'active'),
(2721, 'cidbren0530786', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 260, S. 2023 PROJECT LR-LEAD (LANGUAGE EDITING AND ANNOTATIONS OF LEARNING MATERIALS DEVELOPED)', 'http://depedmanila.net:5000/d/s/uzez0krgj8OobHBSN3cS2JNeLcOVY3f9/-DBwSWziBCq0ysZhFu2rMx246JJ2Rt1d-Z7wAW1XUtQo', '267', '2023-05-31', 'NUMBERED MEMORANDUM', 'active'),
(2722, 'cidbren0529892', 'AREA-WIDE KABSULONG AND UNIT LEADERS ROUNDTABLE', 'http://depedmanila.net:5000/d/s/uzez0h26T4WmqJwws5RoJJ1lUUO6ISFM/pMvzS3SGtQDBMC7NaZBQQAgDLKC-9ctg-2rug1ObTtQo', '107', '2023-05-31', 'DIVISION CIRCULARS', 'active'),
(2723, 'cidbren0531799', 'TRANSITION FROM ALTERNATIVE DELIVERY MODE (ADM) TO FACE-FACE (F2F) MODALITY', 'http://depedmanila.net:5000/d/s/uzez0ka5b25MCRUapbaksyy6DyFiC6Gj/JfryUgkLfUkcHlrZkFyiKTA3UP6zaYvl-b7ygV13UtQo', '270', '2023-05-31', 'NUMBERED MEMORANDUM', 'active'),
(2724, 'accimar0524222', 'ORIENTATION AND WORKSHOP ON THE PREPARATION OF DISBURSEMENT VOUCHER PER SERVICES OF THE SCHOOLS DIVISION OFFICE MANILA', 'http://depedmanila.net:5000/d/s/uzez0nzH9swCduqEstLhcUA1qeZcQcmp/7w-wyuewLiXq0w4YNnkiiTkqsDBx1LKF-f7xgYmTUtQo', '9', '2023-05-31', 'OFFICE ORDER', 'active'),
(2725, 'publiadri052675', 'FIRA ROBOTWORLD CUP', 'http://depedmanila.net:5000/d/s/uzez0fKVgcoqpxb2lTEq8u6dNd4g5EqX/EChC9VBvEAzWDFQEeLSxcIWYRaFGV9Dj-l7sgCsLTtQo', '100', '2023-05-31', 'DIVISION ADVISORIES', 'active'),
(2726, 'publiadri0526384', 'PUPPETERIA VALUESKWELA', 'http://depedmanila.net:5000/d/s/uzez0fc6oiRwELZkKS4EWeFWSKsMzxDg/SHr5AuQqkmjNPQNH5Ae2EEO51otHYQiO-sLsAaczTtQo', '101', '2023-05-31', 'DIVISION ADVISORIES', 'active'),
(2727, 'publiadri0526282', 'NYSTESC 2023', 'http://depedmanila.net:5000/d/s/uzez0duW2E5MMF93RuN3EyQKA6wASEvt/ZqZtCvYP_y8dlwwcSZqQ5HWyd1IrHV18-fLvAJLHTtQo', '98', '2023-05-31', 'DIVISION ADVISORIES', 'active'),
(2728, 'publiadri051727', 'SEARCH FOR AMBASSADOR ANTONIO L. CABANGON CHUA GINTONG PARANGAL PARA SA EDUKASYON AWARDEES', 'http://depedmanila.net:5000/d/s/uzez0cm7VuMJ6gdn31vhXUs0TRuCCupL/CCrK1y-pskzado5q7ALB2Rc-4m7l1HJ8-aLuAjKPTtQo', '73', '2023-05-31', 'DIVISION ADVISORIES', 'active'),
(2729, 'publiadri0526262', 'INSTABRIGHT INTERNATIONAL CONFERENCE ON EDUCATIONAL LEADERSHIP AND RESEARCH AND CONFERMENT CEREMONY TO BE HELD ON JULY 8-10, 2023 AT VIEW PARK HOTEL, TAGAYTAY CITY WITH THE THEME \"ELEVATING ORGANIZATI', 'http://depedmanila.net:5000/d/s/uzez0eTiIOagjjkZ0wlJW2GD9gtpnV2p/e-i1mFSnb67NeW0wjMO2HTKYQC0xxSKg-ibtgBbnTtQo', '99', '2023-05-31', 'DIVISION ADVISORIES', 'active'),
(2730, 'RCRDSDANI052352', 'MANILA INTELLECTUAL PROPERTY, INNOVATION AND BUSINESS INCUBATION EXPO (MIPIBIEx) 2023', 'http://depedmanila.net:5000/d/s/uzeyrBc2ecjKIN2xLREfTtHqtaLAGedg/aSCsNixSobLfCy2SXzv7RlebR0kVNotJ-mboA-W01tQo', '102', '2023-06-01', 'DIVISION ADVISORIES', 'active'),
(2731, 'accimar0531519', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF ANNIVERSARY BONUS FOR FY 2023', 'http://depedmanila.net:5000/d/s/uzeyrJQ0jaCfOn6hs3GDTKfSee1ZSVTS/1Rw9ZXdakRZfsbdbPutl2RnW7KOdW8bg-f7rA9_Q0tQo', '271', '2023-06-01', 'NUMBERED MEMORANDUM', 'active'),
(2732, 'publiabbi0531491', 'SEMINAR ON BEST PRACTICES ON FILING, RETRIEVAL, AND DISPOSITION OF RECORDS IN GOVERNMENT OFFICES', 'http://depedmanila.net:5000/d/s/uzeyrGRDrs7cTmggZZy1cVrx99egFpK5/3QlrcK64Wae0F9xSbHix6HysVsUjE508-kLqgMhQ1tQo', '106', '2023-06-01', 'DIVISION ADVISORIES', 'active'),
(2733, 'cidbren0529196', 'AREA-WIDE KABSULONG (KAB ADVANCEMENT DAY CAMP) AND KAWAN LEADERS ROUNDTABLE (SEMINAR/WORKSHOP ON ADVANCEMENT FOR SCOUT LEADERS)', 'http://depedmanila.net:5000/d/s/uzeysw2oNyTDGliWFZAmA0wxdxCmIxaK/_4od-6UyKbd5SXKdrdFoKyTbH6319fiB-_LqAdY42tQo', '108', '2023-06-05', 'DIVISION CIRCULARS', 'active'),
(2734, 'publiadri0526701', 'PROJECT  CIRCULAR EXPLORER EDUCATION ACTIVATION IN SELECTED SCHOOLS IN NCR', 'http://depedmanila.net:5000/d/s/uzeyswtbmE6rx4gvT4FSxosJJ8GK2tbr/JHKHZXBQrmwghKcQWLJy3eUS3DekTj_j-zrrADTY2tQo', '269', '2023-06-05', 'NUMBERED MEMORANDUM', 'active'),
(2735, 'publiadri0523370', 'RECONSTITUTION OF THE REGIONAL GRIEVANCE COMMITTEE', 'http://depedmanila.net:5000/d/s/uzeyswTD56AkHWs8XS0T3Khp1T899iW2/o1ZYt-G4TwaN6qzNJBwk67bsaXBhG8RN-3LrgfFY2tQo', '246', '2023-06-05', 'NUMBERED MEMORANDUM', 'active'),
(2736, 'RCRDSDANI0529453', 'PATROL LEADERS TRAINING COURSE (PLTC) FOR REGISTERED JUNIOR (INCOMING GRADE VI), SENIOR AND CADET GIRL SCOUTS, PHYSICALLY FIT, FOR INFORMATION', 'http://depedmanila.net:5000/d/s/uzeysuuPreGsPAv2Hr4mTLHdJeqhLNCe/jfmFl1Tse2UsB4pZcagw5B3JK9UdkgRA-8rqgf4I2tQo', '109', '2023-06-05', 'DIVISION CIRCULARS', 'active'),
(2738, 'rcrdsdani0522801', 'CONSTITUTION OF THE CITY PERFORMANCE MANAGEMENT TEAM CPMT AND THE DEPARTMENT PERFORMANCE MANAGEMENT TEAM DPMT FOR THE EFFECTIVE IMPLEMENTATION ETC.', 'http://192.168.88.4:5000/d/s/uzeyt29BgYKgJXa2bEfxgY4efUk0A8nA/E8sEiUCCuMAIBaLz1AWnjn81X-pescCx-qLogP9s1tQo', '276', '2023-06-05', 'NUMBERED MEMORANDUM', 'active'),
(2739, 'publiadri0526407', 'INVITATION TO THE DAY OF AI - PHILIPPINES ON JUNE 10,2023 AT UP NISMED', 'http://depedmanila.net:5000/d/s/uzeysvlDFsYg8cPq1Ib7Hy9FZ6vci2hm/_TQAEHLjWLJbxY7GDcSABpayPzWVvXEx-1bpgrUs2tQo', '268', '2023-06-05', 'NUMBERED MEMORANDUM', 'active'),
(2740, 'rcrdsdarn060130', 'CHED MERIT SCHOLARSHIP PROGRAMS (CMSP)', 'http://depedmanila.net:5000/d/s/uzeyst41W8ZoKKakrbho1wJoOgi7rydO/rlpGe0BWFskHpj0vB1nqH59mtpYrdAvx-TLXgaczguAo', '108', '2023-06-05', 'DIVISION ADVISORIES', 'active'),
(2741, 'rcrdsdarn0601235', 'TEACHERS DIGNITY COALITION', 'http://depedmanila.net:5000/d/s/uzeystLceEZc2C6L4rET82Nx1XyGtqTz/aXtbCYVEb34xWErbGg6tarlGZnlCO7m5-A7ugEpY2tQo', '107', '2023-06-05', 'DIVISION ADVISORIES', 'active'),
(2742, 'rcrdsdarn0601340', 'BUILDING A SUSTAINABLE DIGITAL PRESERVATION PROGRAM IN LIBRARIES', 'http://depedmanila.net:5000/d/s/uzeystm1LMUCMvDrPcByU0ES8uvzt15j/jFEu74VrZ--DEp_e31UUWaWDe7bZDAJb-V7WgQN3guAo', '109', '2023-06-05', 'DIVISION ADVISORIES', 'active'),
(2743, 'sgodsias0605417', 'TRAINING ON RA 9184 AN ACT PROVIDING FOR THE MODERNIZATION, STANDARDIZATION, AND REGULATION OF THE PROCUREMENT ACTIVITIES OF THE GOVERNMENT AND FOR THE OTHER PURPOSES FOR DIVISION OFFICE PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeytSXsnGVLAmmkiENClQaqwLpFqo8Y/Y2zu6o5bnaU53R2GW6ybeiloPSmx8pTi-SrugVeU2tQo', '278', '2023-06-06', 'NUMBERED MEMORANDUM', 'active'),
(2744, 'sgodsias0605640', 'LAUNCHING OF THE MANILA RESEARCH E-CATALOGUE AND MANILA RESEARCH JOURNAL', 'http://depedmanila.net:5000/d/s/uzeytSyHUOO0fov0BmsYgN595naGJG3I/8GtYVd0VcSm-6crHu6Knt9hKmk6MEtWc-Q7vA5ts2tQo', '279', '2023-06-06', 'NUMBERED MEMORANDUM', 'active'),
(2745, 'cidchar0531944', 'CORRIGENDUM TO THE DIVISION MEMORANDUM NO. 258, S. 2023', 'http://depedmanila.net:5000/d/s/uzeytTgHJaMvuYxyGx6mEU6ZK6NTaNIO/HeBajDEUs9EZhpPzMu_THY7rv-bLcqBf-Crugr582tQo', '282', '2023-06-06', 'NUMBERED MEMORANDUM', 'active'),
(2746, 'ictjuan0605895', 'DISCONTINUANCE OF THE manila.edu.ph DOMAIN', 'http://depedmanila.net:5000/d/s/uzeytUX4hq05fMTsqiDYtl0X06i2qCSe/5vUYYi9yamB3DP8p94RInVY5jRBhL8UX-EbvA36c2tQo', '281', '2023-06-06', 'NUMBERED MEMORANDUM', 'active'),
(2747, 'cidbren060165', 'WINNERS IN THE DIVISION SEARCH FOR OUTSTANDING HEAD TEACHERS FOR SY 2022-2023', 'http://depedmanila.net:5000/d/s/uzeytU6g0iG21KJoKNSuiymcYBxIw2HE/7w0MgoMkgAEuALBiCHSvEcR-d3iU4n85-PbsApdQ2tQo', '280', '2023-06-06', 'NUMBERED MEMORANDUM', 'active'),
(2748, 'rcrdsdarn0601141', 'TEACHSTEM SCHOLARSHIP PROGRAM', 'http://depedmanila.net:5000/d/s/uzeytOQhPEywkAjYS0IF5Tn6xGptebML/16aIluFgEbnkmybei6x2qKBRwxs1b-d1-V7tAYvg2tQo', '110', '2023-06-06', 'DIVISION ADVISORIES', 'active'),
(2749, 'rcrdsdarn0530821', '1st MATH2SHINE INTERNATIONAL VEDIC MATH COMPETITION', 'http://depedmanila.net:5000/d/s/uzeytPHUnUffl9Fks2ILz5wLz3Baa9I5/KvucKI6o_6Y_PI2FoCB4yLgxUJeTOE7V-drugv2c4tQo', '104', '2023-06-06', 'DIVISION ADVISORIES', 'active'),
(2750, 'rcrdsdarn0601358', 'LEARNING PATHWAYS FOR NON TEACHING PERSONNEL SERIES', 'http://depedmanila.net:5000/d/s/uzeytOztfO4aieDYrHX7o7lfebjsRCUl/EvyM2fwT3qoWb1RE27V_35Z-ZYAAE9Ay-ULvAG-02tQo', '112', '2023-06-06', 'DIVISION ADVISORIES', 'active'),
(2751, 'rcrdsdarn0530510', 'SEAMEO INNOTECH YOUTH SUMMIT', 'http://depedmanila.net:5000/d/s/uzeytNZu10iJcXsKJl8Ccmh16aWS4rzr/vkN27wPDFW-MJyrDoXqpteDkjBgQDrMw-g7vg7nA4tQo', '103', '2023-06-06', 'DIVISION ADVISORIES', 'active'),
(2752, 'cidchar0606530', 'FINAL PRESENTATION OF THE LIBRARY HANDBOOK FOR LIBRARIANS AND THE LIBRARY IN CHARGE AND OTHER MATTERS', 'http://depedmanila.net:5000/d/s/uzeytf2EWUDrGpAgqw4vwQiVoEdSeQpk/C-f7-wzfK4K2-Zu-ufEE4qOTb4FAT1BX-irsgxHk4tQo', '123', '2023-06-08', 'UNNUMBERED MEMORANDUM', 'active'),
(2753, 'sgodsias0606809', 'COORDINATION MEETING FOR LARS FOCAL PERSON', 'http://depedmanila.net:5000/d/s/uzeytXwGGeIFbNHYB6xEwJXzt0S0bQ9M/xZVlpjq8RnmMBgDd9T0iZKfKlp0juuE0-pbuA2Z04tQo', '115', '2023-06-08', 'DIVISION ADVISORIES', 'active'),
(2754, 'cidbren0605897', '2023 REGIONAL SCHOOLS PRESS CONFERENCE (RSPC) ELEMENTARY AND SECONDARY DELEGATES', 'http://depedmanila.net:5000/d/s/uzeytYvrDue42Mvr7kvkRHdVSKwvtnUZ/ISrz9icCPQdBWgLuTmglUSeEqSB5zner-l7ugfIs4tQo', '277', '2023-06-08', 'NUMBERED MEMORANDUM', 'active'),
(2755, 'sgodsias0601838', 'ACTIVITIES FOR THE HIGHER ORDER THINKING SKILLS PROFESSIONAL LEARNING PACKAGE (HOTS-PLPs) FOR SCIENCE, MATHEMATICS, AND ENGLISH TEACHERS', 'http://depedmanila.net:5000/d/s/uzeytamFZOJpYaKLnrGYcMbDFiIm2xUL/D4CRIC5hg2aJrwcsL-nmCtTImjLsqUKL-kbtglYM4tQo', '285', '2023-06-08', 'NUMBERED MEMORANDUM', 'active'),
(2756, 'rcrdsdani0523614', 'INVITATION TO THE YWCA-FFPIS ANNUAL ALAY SA PUSO OUTREACH PROJECT', 'http://depedmanila.net:5000/d/s/uzeytZvSBAB6Ca1roSlebX9soGkejyWV/2g6taZDdmxozE0IAlVGwM8gh0pfq_yfz-nrvg8ZM4tQo', '116', '2023-06-08', 'DIVISION ADVISORIES', 'active'),
(2757, 'CIDBREN0602734', 'LAUNCHING OF THE ART SA ALS PROJECT OF DISTRICT II', 'http://depedmanila.net:5000/d/s/uzeythjQGAFLuc72vACjodRiU2TcEgmq/E3xZjr0vnYu4we589R-IwUsQ_z9A9wc_-97vgkuw4tQo', '286', '2023-06-09', 'NUMBERED MEMORANDUM', 'active'),
(2758, 'ictjuan052643', 'ARCZONE PROFESSIONAL DEVELOPMENT INC', 'http://depedmanila.net:5000/d/s/uzeytd32bwGZhFK8crw6L7OWxj2jULPr/_uF0vZi3UF5bKg5BxcQgRWMPH9mjqKn6-wLUA4i7juAo', '117', '2023-06-09', 'DIVISION ADVISORIES', 'active'),
(2759, 'rcrdsdarn0602898', 'GSP PARTICIPATION IN THE 25TH ANNIVERSARY OF THE PHILIPPINE INDEPENDENCE AND NATIONHOOD ON JUNE 12, 2023, FOR THE INFORMATION AND GUIDANCE OF ALL CONCERNED', 'http://depedmanila.net:5000/d/s/uzeytk0DIiTkdrHvy02WUhXsLOXArdL0/J1d2HTlxA6p9El8KbWJ5_qBPzLxezaKS-ELyAtxA5tQo', '111', '2023-06-09', 'DIVISION CIRCULARS', 'active'),
(2760, 'icttrai052458', '1ST MATH2SHINE VEDIC MATH OLYMPIAD', 'http://depedmanila.net:5000/d/s/uzeytdtq0AtTLmOjrgtBLywMO8S6RhCZ/0fcEdP8QfjafNWT18NlSRhV44NTPU3sd-KrzgYoY5tQo', '118', '2023-06-09', 'DIVISION ADVISORIES', 'active'),
(2761, 'rcrdsdani052416', 'CONDUCT OF SCHOOL EVANGELISM EVENT TO ALL PUBLIC AND PRIVATE SCHOOLS IN TONDO, MANILA', 'http://depedmanila.net:5000/d/s/uzeyteT2GKW2323vm31N1wO2FsUPGXx8/g2oSaCR1A4d8nhewi6BFFhVLRBo2UKfo-FryghR05tQo', '120', '2023-06-09', 'DIVISION ADVISORIES', 'active'),
(2762, 'cidbren0607268', 'DIVISION LCRP UPDATES AND OTHER MATTERS', 'http://depedmanila.net:5000/d/s/uzeytngzziiviq2TvrEqhFTGooHHniS9/nZ_FWxrJUIrgFzq1dd5yAlH0EpffkCbV-0LsAS7k4tQo', '124', '2023-06-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2763, 'rapjea0609227', 'COMPOSITION OF THE TECHNICAL WORKING GROUP (TWG) FOR THE MANAGEMENT AND RECONCILATION OF DCS MANILAS GSIS ALLEGED PREMIUM DEFICIENCIES', 'http://depedmanila.net:5000/d/s/uzeytmPnuMXIrWuVHQFXAAKBtcLt4di0/8FxsQM4dvlVXWE8WLvVD7iw_3maCYFs_-8LvA4-M4tQo', '287', '2023-06-09', 'NUMBERED MEMORANDUM', 'active'),
(2764, 'recrtnic06067', 'VACANCY FOR CHIEF EDUCATION SUPERVISOR POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA (DCS-MANILA)', 'http://depedmanila.net:5000/d/s/uzeytkiD7uxSoUOxGLHvNAvVlOd1R9WY/lMgo5PLgCfFFBxnP3uGuCvg6HBS-jifc-6rvAk9k4tQo', '288', '2023-06-09', 'NUMBERED MEMORANDUM', 'active'),
(2766, 'sgodsias06067', 'TRAINING ON RA 9184 \"AN ACT PROVIDING FOR THE MODERNIZATION, STANDARDIZATION, AND REGULATION OF THE PROCUREMENT ACTIVITIES OF THE GOVERNMENT AND FOR OTHER PURPOSES\" FOR NON-IMPLEMENTING UNITS', 'http://depedmanila.net:5000/d/s/uzeyto7OgqobJf4SXULwZBsOaii9ecEW/lPWW4BBQtpekihTPzTjrGcEf1hH81DEa-1rtA18E4tQo', '291', '2023-06-09', 'NUMBERED MEMORANDUM', 'active'),
(2767, 'cidbren0608712', 'ADDENDUM TO DIVISION MEMORANDUM NO. 241 S. 2023 (2023 DISTRICT AND DIVISION LEVEL FESTIVAL OF TALENTS)', 'http://depedmanila.net:5000/d/s/uzeytoXnNybwvj6WZreXntcAo0xUGzgC/tVuXpuhG5T8y8JNzItymvz4UeHWBdZlK-xLtgYLA4tQo', '125', '2023-06-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2768, 'ADMINMICH0609898﻿', '125TH ANNIVERSARY OF THE PROCLAMATION OF THE PHILIPPINES INDEPENDENCE', 'http://depedmanila.net:5000/d/s/uzeytoyC5664MNoPQsUdmgwTyz9x39zZ/sHC2YRoykrJojuEEPo4fvr_kBn1OtPR_-ubtgqqc4tQo', '126', '2023-06-09', 'UNNUMBERED MEMORANDUM', 'active'),
(2769, 'sgodsias0609729', '125TH ANNIVERSARY OF THE PROCLAMATION OF PHILIPPINES INDEPENDENCE', 'http://depedmanila.net:5000/d/s/uzeytmqCbUNy7xUMVbxNeArSjo4O7j8o/wF0p3NHr2aqpj4O5kSEoihIm_v_sUXLh-3bvATcs4tQo', '290', '2023-06-09', 'NUMBERED MEMORANDUM', 'active'),
(2770, 'rcrdsdarn0529107', 'INVITATION TO PARTICIPATE IN THE INTERNATIONAL RECRUITMENT FOR THE MAGSAYSAY CHILDRENS CHARALE, FOR COMMENTS AND APPROPRIATE ACTION', 'http://depedmanila.net:5000/d/s/uzeyrKPbgqsGJjFXpVCvVuHTNCQ5r9BT/hdEN9KUt9dWZt_ZqLJb83Ep268UMNKE1-XryA_eU5tQo', '112', '2023-06-13', 'DIVISION CIRCULARS', 'active'),
(2771, 'recrthan0606888', 'VACANCIES FOR NONTEACHING PERSONNEL AT THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeytlZ0W82hMtuKiXGYNaIDOzVZfQrR/yZHMWcjfinCuefmDE448tRTnHvdCJ0E7-47tAM9I4tQo', '289', '2023-06-09', 'NUMBERED MEMORANDUM', 'active'),
(2772, 'rcrdsdarn0602265', '6th ASEAN RURAL DEVELOPMENT AND POVERTY ERADICATION AWARDS', 'http://depedmanila.net:5000/d/s/uzeyrOoOCwIE0So5VVIbpQgTD04biiow/lLtb0mMQTqiifVwuvOAnu3yc6BFnYHIy-T7ygBtQ5tQo', '293', '2023-06-13', 'NUMBERED MEMORANDUM', 'active'),
(2773, 'ictkevi0601354', '2022 SEARCH FOR OUTSTANDING GOVERNMENT WORKERS', 'http://depedmanila.net:5000/d/s/uzeyrG0pAkqwqypGAZW5rHn52SqJ3utF/1SLmEWWmD0vZL6F9XGt0zWdCxJ3ZcAsM-fbwgCx86tQo', '121', '2023-06-13', 'DIVISION ADVISORIES', 'active'),
(2774, 'rcrdsmari0606529', 'ARAW NG MAYNILA ACTIVITIES', 'http://depedmanila.net:5000/d/s/uzeyrKq0NyvskHxriaMJPCgwBb5R9OCE/-GdV7bWc3EXy-qWw6irtyH-jNEKiGVLA-V7zAT905tQo', '284', '2023-06-13', 'NUMBERED MEMORANDUM', 'active'),
(2775, 'rcrdsdarn0608484', 'USE OF GOVERNMENT SERVICE INSURANCE SYSTEM (GSIS) TOUCH MOBILE APPLICATION', 'http://depedmanila.net:5000/d/s/uzeyrPfBbAHq2R57xxz3hGQkJFUH3Goy/5dTizpIzGjUHBmqQb_uYbMSiB11X2LW7-QbxAdLo5tQo', '295', '2023-06-13', 'NUMBERED MEMORANDUM', 'active'),
(2776, 'recrtden060857', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 245, S. 2023 (SCHEDULE OF ACTIVITIES OF DIVISION SELECTION SUB-COMMITTEES ON THE HIRING PROCESS OF TEACHER I POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA)', 'http://depedmanila.net:5000/d/s/uzeyrNfzgeBcFA8jElAtq5AEFxEkxQBI/G1PQMVbSOsIoNJcznfUqx_IeI-7UK4v6-SLxgc805tQo', '294', '2023-06-13', 'NUMBERED MEMORANDUM', 'active'),
(2777, 'rcrdsmari0601553', 'CITY EMPLOYEE AWARDEES CY2023 FOR 25,30,35,40,45 & ABOVE AND ABOVE 40 YEARS IN SERVICE WHO ARE DUE FOR COMPULSORY RETIREMENT AFTER ARAW NG MAYNILA 2023 AND BEFORE ARAW NG MAYNILA 2024', 'http://depedmanila.net:5000/d/s/uzeyrQwNgUsLLYZ2GW3aSKdeD2y0mcOX/qFEsAwlURLBIqRi07_Qbr17o9uHZsBHx-hbzgXig6tQo', '283', '2023-06-14', 'NUMBERED MEMORANDUM', 'active'),
(2778, 'sgodsias0607965', '40TH PRINCIPALS TRAINING AND DEVELOPMENT PROGRAM CUM NATIONAL BOARD CONFERENCE OF PHILIPPINES ELEMENTARY SCHOOL PRINCIPALS ASSOCIATION, INC', 'http://depedmanila.net:5000/d/s/uzeyrV3Z4W6RBBJtBGu3MNsXiTAE01Ox/aX8QvKs2o9vfmUGMuZrmrAXCTqd5qWGc-k7xAWD46tQo', '297', '2023-06-15', 'NUMBERED MEMORANDUM', 'active'),
(2779, 'rcrdsbryl0607747', 'MONTHLY MEETING', 'http://depedmanila.net:5000/d/s/uzeyrSMNKsH3DAl06LPdtZd4q5Lf58Nb/rpfejA6tjfSc7gfhkEORNICCegspnVP9-oLxAbE06tQo', '113', '2023-06-15', 'DIVISION CIRCULARS', 'active'),
(2780, 'sgodsias0608285', 'LEARNING ASSURANCE FOR MONITORING AND PROGRESS YEAR 3 YEAR END EXIT ASSESSMENT (LAMP-YE)', 'http://depedmanila.net:5000/d/s/uzeyrc9XKGNDV6wSRAk7RXMfqnJoUIkl/8Dpzs_8Impsa_JykFzC1iY3MioDJK1v5-jLwgODM6tQo', '298', '2023-06-15', 'NUMBERED MEMORANDUM', 'active'),
(2781, 'rcrdsmari0614528', 'SIMULTANEOUS TREE-PLANTING ACTIVITY', 'http://depedmanila.net:5000/d/s/uzeyrS4mCmmKWzBr726mztAkYpRdUFor/cKuc5fcdsK4_O0BYbWx4wlAMicK3t6tP-mrygOEU6tQo', '296', '2023-06-15', 'NUMBERED MEMORANDUM', 'active'),
(2782, 'RECRTNIC0614933', 'VACANCY FOR SENIOR HIGH SCHOOL TEACHER II POSITIONS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeyrmnUi0HpBoVhHjfmcluibjnIZvYU/7nFTSkztzLLYvYzBjRh-2jiw9gHKOcmk-3rwgQ6E6tQo', '299', '2023-06-16', 'NUMBERED MEMORANDUM', 'active'),
(2783, 'RCRDSMARI061491', '2023 JUNE PRIDE MONTH CELEBRATION', 'http://depedmanila.net:5000/d/s/uzeyrodt3UQhR5VXtiVHgcKGqOTZ0LEk/55O2nJHqGbm5xwavovuoD4afOFT5z_t--vbzgv3Y6tQo', '2', '2023-06-16', 'Office Order', 'active'),
(2784, 'RAPJEA0614847', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 287, S. 2023 (COMPOSITION OF THE TECHNICAL WORKING GROUP (TWG) FOR THE MANAGEMENT AND RECONCILIATION OF DCS MANILAS GSIS ALLEGED PREMIUM DEFICIENCIES)', 'http://depedmanila.net:5000/d/s/uzeyrqLTpuDDZyySxuWp18kf5p8bYp6G/brYB1foASg5AtSzOCCVqGAHs8gvv7qr7-trygrWc6tQo', '127', '2023-06-16', 'UNNUMBERED MEMORANDUM', 'active'),
(2785, 'sgodsias0615466', 'ADMINISTRATION OF THE NATIONAL ACHIEVEMENT TEST FOR GRADE 10 FOR SCHOOL YEAR 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyrlEhUcW5MZFus1cRpB6t33I3vnn1/mVyGqJFYd67mvZz0Vl4dFMnlTJ2T-8co-0bxAypE6tQo', '301', '2023-06-16', 'NUMBERED MEMORANDUM', 'active'),
(2786, 'sgodsias0614506', 'STRENGTHENING OF SDO MANILA LEARNERS SUPPORT UNITS', 'http://depedmanila.net:5000/d/s/uzeyrkoInUa5SPxYF1UMxPZAhQu3Ki5E/JNR0tuQRpanQFfp-7RcvGmncnHXGAR3u-yrxAfoc6tQo', '302', '2023-06-16', 'NUMBERED MEMORANDUM', 'active'),
(2787, 'sgodsias0614502', 'PARTICIPATION IN THE PILOT TESTING OF THE IPCRF DATA COLLECTION (e-IPCRF) AND CONSOLIDATED SYSTEM FOR MULTI-YEAR RPMS-PPST', 'http://depedmanila.net:5000/d/s/uzeyrnVUXCYbQK4JG1QkanXR61t2CuHY/SucUHUFDgv9dQZp4j569OkkHedMKojVu-w7wgen46tQo', '303', '2023-06-16', 'NUMBERED MEMORANDUM', 'active'),
(2788, 'rcrdsdarn0601927', 'FIRST WORLD FAMILY PEACE LEADERSHIP CONVENTION', 'http://depedmanila.net:5000/d/s/uzeyrgyiXUKDbU9b8YQm0dZQrhKQnayu/2owNdJUEtHrILNAujf2-Har6tYMoneT7-Hr1ArwY7tQo', '111', '2023-06-16', 'DIVISION ADVISORIES', 'active'),
(2789, 'rcrdsdarn0602542', 'ECTORS SERIES OF INTERNATIONAL RESEARCH CAPABILITY-BUILDING SEMINAR-WORKSHOP CUM INTERNATIONAL RESEARCH CONFERENCE PAPER PRESENTATIONS', 'http://depedmanila.net:5000/d/s/uzeyrgYJqMvdzDtZBeto9jY5H2K1tGjv/zzCDOAL1n7GQ7EU7culbIq2ikV06GlUc-Fb3gTvw6tQo', '113', '2023-06-16', 'DIVISION ADVISORIES', 'active'),
(2790, 'rcrdsdarn0607685', 'NATIONAL ORIENTATION OF KEY OFFICIALS ON THE NATIONAL LEARNING CAMP', 'http://depedmanila.net:5000/d/s/uzeyrg7v9E3jTZzTf3FDJxDwqKM9VJLc/ulGDhvcR7OJalAdObpqqYBU1qfXT-Vtu--LwA3MQ6tQo', '122', '2023-06-16', 'DIVISION ADVISORIES', 'active'),
(2791, 'rcrdsdarn0608351', 'KALAYAAN FOLK DANCE CONTEST', 'http://depedmanila.net:5000/d/s/uzeyrhGJfaCkhkSkZroPIWZK2J5wbUMC/3xE0xjyFSXu8n2F5XExjoaMVtRltUGtu-8bxAx7k6tQo', '123', '2023-06-16', 'DIVISION ADVISORIES', 'active'),
(2792, 'RCRDSDARN0609212', 'MICROSOFT AMBASSADOR (MYA) 2.0 PROGRAM SUCCESSFUL APPLICANTS', 'http://depedmanila.net:5000/d/s/uzeys66DYmq2AVa0IMO5jH3phQtnSPyk/wXNMChprRbRY5c0FzhHWpy5wY6y6d8Fq-17yAnZo6tQo', '300', '2023-06-16', 'NUMBERED MEMORANDUM', 'active'),
(2793, 'cidbren061319', 'GUIDELINES ON THE TRANSITION FROM FACE-TO-FACE (F2F) MODALITY TO ALTERNATIVE DELIVERY MODE (ADM)', 'http://depedmanila.net:5000/d/s/uzeyriXVkutA4MbignNtFf3HKwuHYLQn/bNzbYZxel5bw45bYT271Q7dPtoZhB2jS-67ygZrA6tQo', '304', '2023-06-16', 'NUMBERED MEMORANDUM', 'active'),
(2794, 'cidmeri0613268', 'SPECIAL SCIENCE ELEMENTARY SCHOOL (SSES) ADMISSION EXAM SCHEDULE', 'http://depedmanila.net:5000/d/s/uzeyrjxVPGx7Cdj47omfQlQS2rrHJIVD/i4vBSqJl6XC7btCaM6b8Svm6qkWa2MyP-5LzAc6g6tQo', '305', '2023-06-16', 'NUMBERED MEMORANDUM', 'active'),
(2795, 'rcrdsmari0605234', 'OSCAR M. ALCARAZ, ANG BOY SCOUT NA BAYANI', 'http://depedmanila.net:5000/d/s/uzeyrdzvfiOpkaJnC6bp9LSyByA3wGZL/DNB6fZdjah3DQkjNmUkjq6K17z_in8PV-D7ZA6PnjuAo', '125', '2023-06-16', 'DIVISION ADVISORIES', 'active'),
(2796, 'CIDBREN0615492', 'NUMBER OF SCHOOL DAYS FOR SCHOOL YEAR 2022-2023', 'http://192.168.88.4:5000/d/s/uzeyrYkLlQMgR9MNAlh8PFRUKDjkvA6G/LOKHqGKtBP3YM2RDtRk-kB8kMYKcUesr-LL0A-R87tQo', '306', '2023-06-19', 'NUMBERED MEMORANDUM', 'active'),
(2797, 'rcrdsbryl060776', 'INVESTITURE AND DAY CAMP', 'http://depedmanila.net:5000/d/s/uzeyrYkLlQMgR9MNAlh8PFRUKDjkvA6G/LOKHqGKtBP3YM2RDtRk-kB8kMYKcUesr-LL0A-R87tQo', '114', '2023-06-19', 'DIVISION CIRCULARS', 'active'),
(2798, 'CIDAMCY0616679', 'REGIONAL FESTIVAL OF TALENTS (RFOT) MEETING OF TRAINERS WITH REGIONAL OFFICE FOCAL PERSONS', 'http://depedmanila.net:5000/d/s/uzeyrbj8d8CuTGXGHOeBOiF4xcxi67Oo/tEZNGhNpaB1mGZH8HmM8w0cmSYnPLdRS-Jr3g9RM7tQo', '128', '2023-06-19', 'UNNUMBERED MEMORANDUM', 'active'),
(2799, 'accimar0619743', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF MONETIZATION OF LEAVE CREDITS FOR FY 2023', 'http://depedmanila.net:5000/d/s/uzeyrscGsSYYyZJ9JkE96ojCUgxETp7z/Ta-XT_H9W4LHdYPJxNXwwXusOEW7T77T-X7bgrjTluAo', '307', '2023-06-20', 'NUMBERED MEMORANDUM', 'active'),
(2800, 'sgodmarl0616501', 'MANILA ATHLETIC DELEGATION TO THE 2023 NATIONAL PRE-QUALIFTYING MEET FOR TEAM SPORTS', 'http://depedmanila.net:5000/d/s/uzeyrzQe083ExBFBjVCPHh5PhPWGDZUA/qivZwU_7WBahZrRRzIXXZb1LgbtIG-Pu-O70gVjE7tQo', '308', '2023-06-20', 'NUMBERED MEMORANDUM', 'active'),
(2801, 'RCRDSDARN0616729', '4TH BOARD MEETING OF THE SCHOOL HEALTH EMPLOYEES ASSOCIATION-NCR (SHEAN)', 'http://depedmanila.net:5000/d/s/uzeyrt2fZaIFkaYSatLUr3JAvPIj29Sa/R3nxmrZwTdP49LhDFEMCVLjPo-b9VV9W-rb3A77k7tQo', '126', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2802, 'ictkevi0613911', '5TH FREE PRC-CPD INTERNATIONAL WEBINAR MARATHON ON EDUCATION', 'http://depedmanila.net:5000/d/s/uzeys2h1zwEXNWqbELJMCcgyJ3aZFSjg/l5AoyATaySsZObcXkomzEt00w1lPzjE_-eb0giJg7tQo', '130', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2803, 'sgodsias0620783', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 278 S.2023 DATED JUNE 5, 2023 TITLED TRAINING ON RA 9184 AN ACT PROVIDING FOR THE MODERANIZATION, STANDARDIZATION, AND REGULATION OF THE PROCUREMENT ACTIVITIES', 'http://depedmanila.net:5000/d/s/uzeysHSAlWnaD8zpvfyVQ1GlJIZoyB0P/NtoNDtSajPXiYFfLGBYbvGxUpWqZYn-K-Sb1AgUc7tQo', '129', '2023-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(2804, 'ictnath0613792', 'CYWTAC 9TH SPECIAL EDUCATION CONFERENCE', 'http://depedmanila.net:5000/d/s/uzeys6fPowE6AUZV3L9OZ1RSuqR99j75/TfTdYB7q9MY_emTsyUCRtCURTsqe0O-N-a73gD4M7tQo', '132', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2805, 'rapjea062191', 'SUBMISSION OF PROOF OF PAYMENTS RELATIVE TO THE REMITTANCES OF IMPLEMENTING UNITS (IUS) TO GOVERNMENT SERVICE INSURANCE SYSTEM (GSIS), PAG-IBIG, PHILHEALTH AND PRIVATE LENDING INSTITUTIONS (PLIS)', 'http://depedmanila.net:5000/d/s/uzeysFkZz6ZijU6zBln4PWixGmdK6R38/jjz2TMnpYlSx9AaNfMRX0ZzgF9KTMK4_-UL2go1I7tQo', '311', '2023-06-21', 'NUMBERED MEMORANDUM', 'active'),
(2806, 'rcrdsdarn0615177', 'EXECOM MEETING', 'http://depedmanila.net:5000/d/s/uzeysNYY3wegOLhkV7gT0qgaQh8WF1is/oyTBaabldlYyAGl6S20vctJTVXLJ4j4D-Q73AFz47tQo', '130', '2023-06-21', 'UNNUMBERED MEMORANDUM', 'active'),
(2807, 'cidbren0616551', 'CONDUCT OF END-OF-SCHOOL YEAR (EOSY) CLASSES', 'http://depedmanila.net:5000/d/s/uzeys9eCgegeudzdGE3kaOHUEpKyawju/h4kQjyGYH_dx6wuUGFdLW8e9M9EaDLLk-Xr1AsGw7tQo', '309', '2023-06-21', 'NUMBERED MEMORANDUM', 'active'),
(2808, 'cidbren0619481', 'RESUMPTION OF IMPLEMENTATION OF THE POLICY ON CHECKING OF SCHOOL FORMS AS PRESCRIBED IN D.O NO. 11 S. 2018', 'http://depedmanila.net:5000/d/s/uzeysEKaKk9CcfFHJwcteT91pWiERw60/l0uFMq0bNxjpZpmdhMogK0JIIU1PX6Ow-V73AFl07tQo', '310', '2023-06-21', 'NUMBERED MEMORANDUM', 'active'),
(2809, 'rcrdsmari0615732', 'NATIONAL CONVENTION OF THE PHILIPPINE ASSOCIATION OF CHEMISTRY TEACHERS (PACT)-NATIONAL CHAPTER', 'http://depedmanila.net:5000/d/s/uzeys5fore1xpcbsVDcSlDhLciTX3BQI/xPYAKciOFE7-ESCpe80kcn2AqPMwhxNV-cr1gNIo7tQo', '131', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2810, 'ictmich0613222', 'LENKESON GLOBAL CHRISTIAN UNIVERSITY, INC', 'http://depedmanila.net:5000/d/s/uzeyrxIeWcLo8UOM05sk4a4GfTqhVwnW/cjGHONiHOCOA1SY1ob5zC1cKyEKeVpQ6-pr1A6K87tQo', '127', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2811, 'ictmich0613746', 'PAMBANSANG SEMINAR-PAGSASANAY', 'http://depedmanila.net:5000/d/s/uzeyrwaehQreUcsh8LxuVKP6EDGvjcdb/Uj2kv20e-_F71HYXFwl7Iqh-qdFjLGgV-mL0Abak7tQo', '128', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2812, 'ictnath061337', 'CONTINUING PROFESSIONAL DEVELOPMENT (CPD) PROGRAMS FOR LICENSED PROFESSIONAL TEACHERS', 'http://depedmanila.net:5000/d/s/uzeys1z2AktO669dvSFfYsH2Pjgq41yc/ICZTdMaktRDvDFvKG-hOGMMonVWbRdnL-hr3gtaE7tQo', '129', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2813, 'rcrdsmari0614514', 'WINNERS OF ASMEPPS REGIONAL AND NATIONAL MARATHON OF SKILLS AND TALENTS', 'http://depedmanila.net:5000/d/s/uzeysNq9C2LyNZfenGgxPN5AUl4uqocc/Q3jIl-YR4_Wr4UgwP9vt-azfj3aOxknc-Zb2AyHg7tQo', '133', '2023-06-21', 'DIVISION ADVISORIES', 'active'),
(2814, 'ICTJOHN0613595', '2023 INTERNATIONAL EDUCATORS CONFERENCE AND GLOBAL EDUCATORS AWARD', 'http://depedmanila.net:5000/d/s/uzeyscbHxk7lP6wQUHpU6BQ7vwShFzB2/o3_cuo3f_P7RBlOSWSUsqV97r10S-t0D-Cb7gTr08tQo', '137', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2815, 'rcrdsdarn0620826', 'SEAMEO INNOTECH YOUTH SUMMIT', 'http://depedmanila.net:5000/d/s/uzeysZu6E4D9NH3yxIIYcX0SV1gxpHvx/EICEBH0iJWEiI6YOikIwbu38cnd7Ee0L-9LbgVg7nuAo', '135', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2816, 'rcrdsdarn0620730', 'NYSTESC 2023', 'http://depedmanila.net:5000/d/s/uzeysYlhhkpAXvd69g7F1eIHBtzgsOsV/tcNSx4USnyiITq_3kPkSZd4XBpcu1ivH-67YAfwXnuAo', '134', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2817, 'rcrdsdarn0620402', 'CONDUCT OF THE 2ND GRADUATE TEACHER EDUCATION SUMMIT (IGTES) 2023', 'http://depedmanila.net:5000/d/s/uzeysac63G9lloQNUjzx4ntQk2ArCR3c/bll2DocVFeVuW8ZTTRcpNVsjp6_ZYqXU-GL6g8Mo8tQo', '136', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2818, 'cidremy062279', 'MATHEMATICS TEACHERS SEMINAR WORKSHOP ON CONTENT AND PEDAGOGY', 'http://depedmanila.net:5000/d/s/uzeysiQ48MGJskR3K57nEa2fOEdEkJQv/cRh-bYt-3rZpy5B6QztBqkIolRuhkABv-zL1AQlU8tQo', '148', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2819, 'rcrdsdarn0614589', 'ADVISORY ON THE CHANGE OF DATES FOR THE WRITESHOPS ON THE VALIDATION AND FINALIZATION OF THE MERGED K TO 3 ARABIC LANGUAGE AND ISLAMIC VALUES EDUCATION CURRICULUM', 'http://depedmanila.net:5000/d/s/uzeysZC6OsJKMquvuTkfV30Li1Sp4IGa/QxWS6t7cZkNSOour0w4dDdk4qxdKZ5G3-3raAH-7muAo', '124', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2820, 'rcrdsdarn0614130', 'BUILDING THE DISASTER RISK REDUCTION MANAGEMENT (DRRM) CAPABILITY OF STEM TEACHERS IN NCR THROUGH DEVELOPMENT OF LEARNING ACTIVITIES ON EARTH SCIENCE', 'http://depedmanila.net:5000/d/s/uzeyshqrsCodgrpqeTS5K6YFDVBZPm0F/RUV6cAQD6SEABG83VgteaPpdIKQoPdmi-0r1gF108tQo', '147', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2821, 'rcrdsdarn060874', '3-DAY NATIONAL SEMINAR WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeysgZfmsomV5EyTasheYdgknwe8Wlw/7h72Xcs4f_1z-3qmf0ejBHtfwLhk3ass-4b2gJ4g8tQo', '145', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2822, 'rcrdsdarn060921', 'WANDERING MINDS', 'http://depedmanila.net:5000/d/s/uzeysfrfxggfhiEJ2pD2LGMVT3SHQSuH/f_pqhpkcfrcdlzSL1trDycKOVlbTa9c--6L2AdpA8tQo', '144', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2823, 'rcrdsdarn0607737', '1ST PHILIPPINE BOOK FESTIVAL', 'http://depedmanila.net:5000/d/s/uzeysejHRMlKWvtXcmCllGyxZH8KAd2Q/77eqz-9lwzHHtN65XIyzSlYNDTzgGMHK-7r3AL5g8tQo', '143', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2824, 'rcrdsdarn0616222', 'TANGHAL PAARALAN-NATIONAL CONFERENCE WORKSHOP ON CULTURE AND ARTS EDUCATION CUM DAKILANG PILIPINO AWARDS', 'http://depedmanila.net:5000/d/s/uzeysdasv2MkK60jglAFwqwNTYLOmWdP/mvxqe1hk3y9fj7sSFG2QewXm_R4oiAsK-9b0g_J88tQo', '142', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2825, 'rcrdsdarn0614695', 'NATIONAL CONFERENCE-WORKSHOP ON CULTURE AND ARTS EDUCATION CUM NATIONAL SEARCH FOR OUSTANDING CULTURE EDUCATORS AND IMPLEMENTERS', 'http://depedmanila.net:5000/d/s/uzeysd1gesLsubcbPzmsDZ8uh6g0RUFF/WUk2i4--SFNzOrm74eOlVcwm3X_oawit--73ASak8tQo', '139', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2826, 'rcrdsdarn0616666', 'BATANG MATIBAY AWARDS 2023 CALL FOR NOMINATIONS', 'http://depedmanila.net:5000/d/s/uzeyseA5BC5f7whL38bSY8COZY1ur0ZZ/8lguuUq5GoIl_FqKUClU9x5eEYKt_kj--Ar5gzbU8tQo', '138', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2827, 'rcrdsdarn0530470', 'LEARNING PATHWAYS FOR NON-TEACHING PERSONNEL TRAINING SERIES', 'http://depedmanila.net:5000/d/s/uzeysYCVRaUMoxznpVydvmYxg0JzPuCT/LdpAbPAJOX3s2SSlSpMBtibkFn3bg6Yx-ubZgT4jmuAo', '105', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2828, 'rcrdsdarn0614795', 'REQUEST OF ENCHANTED KINGDOM, INC. TO PROMOTE ITS EDUCATIONAL PROGRAMS TO SCHOOLS IN THE NATIONAL CAPITAL REGION', 'http://depedmanila.net:5000/d/s/uzeysf9g8UGXIWkzK59L8KLRyfEZwD76/0bYiyXa0NBNQw7Y7fvysAOTQUZRFSo9k-2b2gyWg8tQo', '146', '2023-06-23', 'DIVISION ADVISORIES', 'active'),
(2829, 'NO TRACKING NUMBER', 'CLARIFICATION ON DIVISION MEMORANDUM NO. 344, S. 2022, TITLED, \"TRANSITION PLAN FOR THE FULL IMPLEMTATION OF JOURNALISM AS A SPECIAL PROGRAM THIS SCHOOL YEAR 2022-2023\"', 'http://depedmanila.net:5000/d/s/uzeysmxeDYfFJzSW4aUB03vEmdnGqKXO/Wxf65doN6b9rLBVyHqhnZ0A6Q9AN9ZCE-xb2AvUw8tQo', '312', '2023-06-23', 'NUMBERED MEMORANDUM', 'active'),
(2830, 'cidchar06219', 'OFFICIAL DELEGATES TO THE 2023 NATIONAL SCHOOLS PRESS CONFERENCE (NSPC)', 'http://depedmanila.net:5000/d/s/uzeysjPf5cNEq9S7Ayh4zY5lHvaCk07L/hck61AUSUtUFr-dmViV10N2uDKJlypcr-vr2Av0A8tQo', '313', '2023-06-23', 'NUMBERED MEMORANDUM', 'active'),
(2831, 'RCRDSDARN0605690', 'PANDAIGDIGANG WEBINAR-TRAINING SA ARALING PANLIPUNAN', 'http://depedmanila.net:5000/d/s/uzeysOGXtAydl8eBgvfgiWsiaUqiPSGy/2BiGrjBMdUNSQxKbA9_dUkKE536lzWjU-LL6AOuY8tQo', '141', '2023-06-26', 'DIVISION ADVISORIES', 'active'),
(2832, 'CIDCHAR062283', 'NATIONAL LEARNING CAMP ORIENTATION FOR ELEMENTARY AND SECONDARY SCHOOL HEADS', 'http://depedmanila.net:5000/d/s/uzeysUVikc6NuMPobvcpT2sReClheD2o/AKF_Ye47fbaqVzsDp5pht-La5ZjYTTl0-H75ABNM8tQo', '316', '2023-06-26', 'NUMBERED MEMORANDUM', 'active'),
(2833, 'RCRDSBRYL0607691', 'WINNERS OF THE Y-KIDS ACADEMIC CONTEST', 'http://depedmanila.net:5000/d/s/uzeysXLi3MMMeKAbcjrhXSOgYMmLmE8P/TAnWbQEj71oomuTGW1K_KH0_OgPAocZH-Jr5gk9s8tQo', '150', '2023-06-26', 'DIVISION ADVISORIES', 'active'),
(2834, 'cidedwi0622995', 'SDO-MANILA REGIONAL FESTIVAL OF TALENTS (RFOT) 2023 WINNERS', 'http://depedmanila.net:5000/d/s/uzeysUw7Rk7GQVjrhrGAnwISeeZX2SIX/koOz65t80GWsachfgMMrhH_musAvz_Ps-NL7gyfU8tQo', '317', '2023-06-27', 'NUMBERED MEMORANDUM', 'active'),
(2835, 'cidbren0623145', 'MANILA COUNCIL BSP PROJECTS, EVENTS AND ACTIVITIES', 'http://depedmanila.net:5000/d/s/uzeysWmVnCNQJp9ETcYhQ5rELTSPWLq3/uG7ERkJ4REzBpvm250HuXEWu5aYRhdY2-O74ACv88tQo', '115', '2023-06-27', 'DIVISION CIRCULARS', 'active'),
(2836, 'cidchar0627299', 'AMENDMENTS TO DIVISION MEMORANDUM NO.312,S.2023 (CLARIFICATION ON DIVISION MEMORANDUM NO.344 S. 2022, TITLED TRANSITION PLAN FOR THE FULL IMPLEMENTATION OF JOURNALISM', 'http://depedmanila.net:5000/d/s/uzeytIT7fkF3Qf0UbxyGlWml5Z5WDTo0/xOW9KgRxTB8Y9mPwkOZeQMnXf1a4AHjs-UL6grho9tQo', '131', '2023-06-29', 'UNNUMBERED MEMORANDUM', 'active'),
(2837, 'rcrdsdani0626589', 'GUINNESS WORLD RECORD - THE LARGEST SIMULTANEOUS 3 BALL JUDGING', 'http://depedmanila.net:5000/d/s/uzeyt8FYzAAMoQEQb7yUPOPklJklEDvZ/HY6b0kUFYtTBBz3UwTlZrqJSs9yoMtEC-hL5gQls9tQo', '154', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2838, 'rcrdsdani0623478', 'KALAYAAN FOLK DANCE CONTEST', 'http://depedmanila.net:5000/d/s/uzeyt7gMj0oiIU7EmQJwsZHGMEyHoL9f/5hCHf9tsJez7E_aWtTQeEK_dl-nyzs8s-i75A7WM9tQo', '153', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2839, 'rcrdsdani0623377', 'EDUCATION CONFERENCE', 'http://depedmanila.net:5000/d/s/uzeyt6PAdgWOGxz6TIqmMazdqACwuGoP/2SbXjqhrfl1cbmhtjpZj6JJluqEcE__i-kb6AWGs9tQo', '152', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2840, 'rcrdsdani0623301', 'NATIONAL SUMMER LEADERSHIP CAMP OF THE SACEDA YOUTH LEAD (SYL)', 'http://depedmanila.net:5000/d/s/uzeyt67ZVaXJpYaywE2dWoMkvr5vWEWC/3bWEE4JvBqOEFipZ6ZRZU-wV2JonoNxq-mL4gW3Q9tQo', '151', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2841, 'rcrdsdani0626988', '5TH INTERNATIONAL LOVING PEACE ART COMPETITION', 'http://depedmanila.net:5000/d/s/uzeyt9oMCYTb7pbDNiGRAlvMImyDsaNS/uftQ6Gl3kiOle-BqopZ989BnT2_rxgk1-d77g-E09tQo', '156', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2842, 'rcrdsdarn0622257', 'EARLY EDUCATION TRAINING 2023', 'http://depedmanila.net:5000/d/s/uzeyt5PZgOqKJpctssbeZops5smZ9Z67/Tn22GlA1h82SrQLugvYP_rtHiY1RLrEQ-n77A4309tQo', '149', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2843, 'rcrdsdarn0613871', 'ASSOCIATION OF GOVERNMENT ACCOUNTANTS OF THE PHILIPPINES (AGAP) INC. ANNUAL CONVENTION-SEMINAR', 'http://depedmanila.net:5000/d/s/uzeytCvwdM6qrRFHJ6l5Ihp5UaXZYFLK/LqP2AA1Q8QntA2V9Le-JEkUrpj_V7qEN-ar7Abj49tQo', '159', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2844, 'rcrdsdarn0606392', '49TH SEMINAR SERIES ON FOOD AND NUTRITION RESEARCHES AND S&T ACTIVITIES (FSS)', 'http://depedmanila.net:5000/d/s/uzeytC59F8PCprBNvmiuOUuihE00B8VR/3g7-0VPkLGFd6neH4u5nk_8IyW65JtBe-cb7gTEY9tQo', '158', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2845, 'rcrdsdarn0615463', 'JOINT 14TH ANNUAL NATIONAL CONVENTION AND CY 2023 MEMBERSHIP CONFERENCE', 'http://depedmanila.net:5000/d/s/uzeyt4hZrC6NI7QjSho3gr7kFn0LqGZe/7wXx7Ox1lDJg9QzxMYT6-nHpLOWlIQYP-pb4A-4M9tQo', '140', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2846, 'rcrdsdani0626376', '2023 SUMMIT \"AAIG NEXUS: NEW VISIONS, NEW FRONTIERS, NEW STRATEGIES AND PRACTICES\"', 'http://depedmanila.net:5000/d/s/uzeytBnY72YC9MIf3yoBmZedplxmW8fC/Bk5iAEu4s6U2TWiSn3MuC5Onpkd31kp7-fr4A_lQ9tQo', '155', '2023-06-29', 'DIVISION ADVISORIES', 'active'),
(2847, 'cidbren0627165', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 316 S. 2023 (NATIONAL LEARNING CAMP ORIENTATION FOR ELEMENTARY AND SECONDARY SCHOOL HEADS)', 'http://depedmanila.net:5000/d/s/uzeytELwHkiniIfosOdkyscJy16l42KO/5loHOYVAm3GfZnAwVSEMPOHUdKfgY-vc-Sb7A5A89tQo', '132', '2023-06-29', 'UNNUMBERED MEMORANDUM', 'active'),
(2848, 'cidbren0623472', 'CORRIGENDUM TO DIVISION MEMORANDUM 282, S. 2023 (CORRIGENDUM TO DIVISION MEMORANDUM 258, S 2023 - CAREER ORIENTATION FOR ALS JUNIOR HIGH SCHOOL COMPLETERS)', 'http://depedmanila.net:5000/d/s/uzeytGTvlGuCDBttAYMRxrTF8owsl6PL/GJoYz2IfxFRuf6s4RQM6_JUUnKYiTivO-Q77g-Qc9tQo', '133', '2023-06-29', 'UNNUMBERED MEMORANDUM', 'active'),
(2849, 'cidbren0623137', 'ARAW NG MAYNILA 2023 FLOAT PARADE PARTICIPANTS', 'http://depedmanila.net:5000/d/s/uzeytDdwSYCvNqbw2gnsLbBCICBub79S/f-iU08PyHCFzDetktpW0-xm9eh2gt8WT-ZL4g8TY9tQo', '315', '2023-06-29', 'NUMBERED MEMORANDUM', 'active'),
(2850, 'cidarie0616345', '2023 DISTRICT AND DIVISION FESTIVAL OF TALENTS WINNERS', 'http://depedmanila.net:5000/d/s/uzeytJB7Uwmf8mp1qlgiVLuYMQ9XgZ8q/xSsYCqf0c7BNkeeCSpy16WeUbNHDTZz4-Xb7gGiw9tQo', '318', '2023-06-29', 'NUMBERED MEMORANDUM', 'active'),
(2851, 'sgodsias0626414', 'LAUNCHING OF THE MANILA RESEARCH E-CATALOGUE AND BAGWIS - THE MANILA ACADEMIC RESEARCH JOURNAL, VOLUME I. ISSN 2984-9462', 'http://depedmanila.net:5000/d/s/uzeytJt7K8ySARK7raeElE19SI7kOqx0/ldRr_szDVmHpVw3mhhgn9XgMGBBAmu6l-V74gZCQ9tQo', '320', '2023-06-29', 'NUMBERED MEMORANDUM', 'active'),
(2853, 'sgodsias062789', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 308,S. 2023 RE: MANILA ATHLETIC DELEGATION TO THE 2023 NATIONAL PRE-QUALIFYING MEET FOR TEAM SPORTS', 'http://depedmanila.net:5000/d/s/uzeyssM1gwhYnLKJnEy4GjQfxqYvMNTS/3jkx0m6epmuKfVOAyCVxU-7ekmzLbPsT-s74Aq5Y9tQo', '134', '2023-06-30', 'UNNUMBERED MEMORANDUM', 'active'),
(2854, 'rcrdsmari0620579', 'YOUTH EMPOWERMENT SERVICE-LEADERSHIP SEMINAR WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeysm6qpIqd2XibqCQjPK4nDPmBpSwi/5HhEBn1Ca6U78V69f3gnKHsKUY83IsUa-1b6Av9A9tQo', '117', '2023-06-30', 'DIVISION CIRCULARS', 'active'),
(2855, 'rcrdsdarn0622851', 'TWO-DAY WELLBEING WORKSHOP SERIES', 'http://depedmanila.net:5000/d/s/uzeysmXFWQsS4yfGNlE6yp7qlZnBp8Z2/H_0VpQG0D7LDy9eMQRKkU65B6vn9f75D-z75gTcY9tQo', '118', '2023-06-30', 'DIVISION CIRCULARS', 'active'),
(2856, 'sgodsias0629266', 'TECHNICAL WORKING GROUP/FACILITATORS COORDINATION ON THE CONDUCT OF CONSULTATION CONFERENCES FOR THE ENHANCEMENT OF DEPED ORDER 40, S.2012', 'http://depedmanila.net:5000/d/s/uzeysq5EeKd6jFwr8IDr38C8BGs9Yymg/MmNx1Hx3BvBZQho4CZA7TcUmEIiOU-i--rb4g14w9tQo', '135', '2023-06-30', 'UNNUMBERED MEMORANDUM', 'active'),
(2857, 'SGODSIAS0629128', 'CONDUCT OF CONSULTATION CONFERENCES FOR THE ENHANCEMENT OF DEPED ORDER NO. 40. S,  2012, OTHERWISE KNOWN AS THE DEPED CHILD PROTECTION POLICY', 'http://depedmanila.net:5000/d/s/uzeysrmpQmJIo9C3ztcKwhFFpnYAPb4P/3G5uu01lrI_FqgxL6WErlSztJG0AbBIW-ur4AIKU9tQo', '324', '2023-06-30', 'NUMBERED MEMORANDUM', 'active'),
(2858, 'rcrdsdani0626741', 'COORDINATORS TO A MEETING AND SEMINAR ON PSYCHOLOGICAL FIRST AID', 'http://depedmanila.net:5000/d/s/uzeyslOr06JRA4RKTYeTkJW0MF0ArWdD/ecr_Gcevc74W2NdKdfFp1gOSe0zyAM6M-3L7gs9g9tQo', '116', '2023-06-30', 'DIVISION CIRCULARS', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(2859, 'recrtmar0626720', 'VACANCY FOR ELEMENTARY AND SECONDARY SCHOOLS TEACHER II AND III POSITIONS IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeysnxFAoJDNvwq2MyeBRIEMfBQgAXj/KEB8Uw7z4qWfFgv78jPAwR6MIg1m_P80-yL5ArLo9tQo', '322', '2023-06-30', 'NUMBERED MEMORANDUM', 'active'),
(2860, 'recrtshe0623372', 'OPENING APPLICATION FOR HEAD TEACHER VI AND HEAD TEACHER III POSITIONS', 'http://depedmanila.net:5000/d/s/uzeyqxqUpsEGW7mtShQyWXaR6X9jsegq/HNMLu-YAXH5k3LgT47lIKA433FKyAeQw-5LlghhwxtQo', '325', '2023-07-03', 'NUMBERED MEMORANDUM', 'active'),
(2861, 'recrtnic06298', 'SCHEDULE OF ACTIVITIES FOR THE SCREEN OF APPLICANTS FOR RELATED-TEACHING AND NONTEACHING POSITIONS', 'http://depedmanila.net:5000/d/s/uzeyqxQ68kFrbXg4f78BBrqQ170woFYp/Y9wGJlSjPhTM9PviGSsCwjJ8ryeeQ6P_-2bngHhQxtQo', '326', '2023-07-03', 'NUMBERED MEMORANDUM', 'active'),
(2862, 'asdsmlala0703857', 'REITERATING PROVISIONS OF DEPED ORDER NO. 9,S. 2023', 'http://depedmanila.net:5000/d/s/uzeyqyGtX0vXJUctZ9SwIJewUujTiM6q/ac3JUmr5oOsTE3mEbX7g41mQg6aA2Z5X-0rkgFwwxtQo', '327', '2023-07-03', 'NUMBERED MEMORANDUM', 'active'),
(2863, 'hlthjen0626464', 'DESIGNATION OF DIVISION DENTIST-IN-CHARGE', 'http://depedmanila.net:5000/d/s/uzeyqyYUf6NypyH5sUkQ0fzTSeBtNzQf/dC7qYQ9nB_82Tu5ggOSTNI99qPOkYoIr-zLngTgIxtQo', '328', '2023-07-03', 'NUMBERED MEMORANDUM', 'active'),
(2864, 'sgodsias062944', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 249, S. 2023 RE CONDUCT OF THE SYNCHRONIZED SUPRIME ELEMENTARY LEARNER GOVERNMENT (SELG)', 'http://depedmanila.net:5000/d/s/uzeyqzyUJSog6TQzP9j4imwy7JBwBTEp/XhXZTQtp9lE2-7dytjGsQVMuy3Ie9twi-w7mAU-AwtQo', '136', '2023-07-03', 'UNNUMBERED MEMORANDUM', 'active'),
(2865, 'rcrdsdarn0627127', 'MAKABAGONG SAN JUAN PINAGLABANAN SHRINE PHOTO AND VIDEO CONTEST', 'http://depedmanila.net:5000/d/s/uzeyquiuP0nRhZzq7yTLb3yzBBHYuKTh/mXzK8kWZz6z-UuPjaum5Xh7RJvUQPGB4-97mASjYxtQo', '160', '2023-07-03', 'DIVISION ADVISORIES', 'active'),
(2866, 'rcrdsdarn0608426', 'SEMINAR ON PUBLIC FINANCIAL MANAGEMENT', 'http://depedmanila.net:5000/d/s/uzeyqwZIkUvpZM7FmSlehb6U1qqoLIXp/uQUBbWkri25_Kq0NxFd_2KyXRXM3ile7-8bnAMC4xtQo', '161', '2023-07-03', 'DIVISION ADVISORIES', 'active'),
(2867, 'sgodsias063069', 'PARTICIPATION IN THE 7TH INDIE-SIYENSYA FILMMAKING COMPETITION OF THE DEPARTMENT OF SCIENCE AND TECHNOLOGY-SCIENCE EDUCATION INSTITUTE', 'http://depedmanila.net:5000/d/s/uzeyqwzhRcqlNvHjAT06jG2V6vqCIa9t/ycXKFMMBQSr0hgncucCjKCqlwPWq_wh4-6rlgjyUxtQo', '162', '2023-07-03', 'DIVISION ADVISORIES', 'active'),
(2868, 'rcrdsdarn0615803', 'REITERATION AND CLARIFICATION ON THE IMPLEMENTATION OF THE MULTI-YEAR GUIDELINES ON RPMS-PPST DM 008, S. 2023', 'http://depedmanila.net:5000/d/s/uzeyr0XgZcBzeRPWMKNdDCQY5pH7VmeS/TQgwVEez6RxNE95Tzrz-rEcM359ug_Bj-vLlgoNQwtQo', '319', '2023-07-04', 'NUMBERED MEMORANDUM', 'active'),
(2869, 'adminmich0630610', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF PERFORMANCE BASED BONUS (PBB) FOR FY 2021', 'http://depedmanila.net:5000/d/s/uzeyr1OTxsWlJL8h3CtFpxc77FD64ehk/VEy3QjejAPDuWRJHtQkkNM9evUMkWYeJ-tbkg98owtQo', '329', '2023-07-04', 'NUMBERED MEMORANDUM', 'active'),
(2870, 'cidbren0703454', '13TH CHINA IN YOUR CLASSROOM', 'http://depedmanila.net:5000/d/s/uzeyr0y5Gkvxtb6a1jXVRIOdnkJbCodD/5QmMho2p20QMcqd008fVj45YyR9XXM4Y-rLlA278wtQo', '330', '2023-07-04', 'NUMBERED MEMORANDUM', 'active'),
(2871, 'rcrdsdarn0630337', 'NATIONAL WEBINAR ON UNDERSTANDING AND UTILIZING MEDIA IN TEACHING (UUMT)', 'http://depedmanila.net:5000/d/s/uzeyr5MrmunmaCXFZBceF5Ft2QuCkEkW/wDcAb798VSsE5nX6a0yDQC-0GmuDrHcG-nrkgebYwtQo', '163', '2023-07-05', 'DIVISION ADVISORIES', 'active'),
(2872, 'cidchar070435', 'ALS GRADUATION AND MOVING-UP CEREMONY AND OTHER MATTERS', 'http://depedmanila.net:5000/d/s/uzeyr6MSkEC0xDiEABKhOFWH62stgAgg/Ad3CxZ5x5PIzBkihXBUDyFQ01iRksGIS-g7nATZwwtQo', '137', '2023-07-05', 'UNNUMBERED MEMORANDUM', 'active'),
(2873, 'adminmich0619753', 'PROCESSING OF OVERSEER DESIGNATION IN SCHOOLS AND SERVICES', 'http://depedmanila.net:5000/d/s/uzeyr5w4369evo599QlyQE4nXRqvdWdb/x50IqSOiQS2bOWaC6gJyRDFDN4bZJfZV-l7mAS6wwtQo', '331', '2023-07-05', 'NUMBERED MEMORANDUM', 'active'),
(2874, 'hlthjen0703157', '49TH NUTRITION MONTH CELEBRATION', 'http://depedmanila.net:5000/d/s/uzeyr9U3B0gJcdvN8Q1o8nUQphzGb7iv/_ZpUbdDHPI4ruPdah7LnOgNkRBWacr0R-ibmAlKUwtQo', '332', '2023-07-05', 'NUMBERED MEMORANDUM', 'active'),
(2875, 'RCRDSBRYL0627616', 'DISTRICTWIDE INVESTITURE AND DAY CAMP', 'http://depedmanila.net:5000/d/s/uzeyrAKqZGD57IXWREL1pnSdifZhAc95/UBvT1wGNCbO5JkgEzO-QzuaLCPbGG4iH-dLngVoYwtQo', '119', '2023-07-06', 'DIVISION CIRCULARS', 'active'),
(2876, 'HLTHJEN062938', 'SCHOOL ASSIGNMENT OF DEPED DENTISTS', 'http://depedmanila.net:5000/d/s/uzeyrB2qOSK7nUfEzrOnZ2rdzkCnYBXr/LEqEnvfiu-pzSB0kzWBrJP0jf3gf7dfW-YLkg2H0wtQo', '333', '2023-07-06', 'NUMBERED MEMORANDUM', 'active'),
(2877, 'HLTHJEN0704496', 'SCHOOL ASSIGNMENT OF DEPED DENTISTS', 'http://depedmanila.net:5000/d/s/uzeyrCbdbwhoBz8zLg1t1qZme8KWy5Ia/uUh87ph4QdbODFgR4qHWBo_ld8cE2DjK-dLfAlMkgtQo', '138', '2023-07-06', 'UNNUMBERED MEMORANDUM', 'active'),
(2878, 'sgodsias0629544', 'DIVISION ADMINISTRATION OF THE NATIONAL LEARNING CAMP ASSESSMENT (NLCA) FOR GRADE 7 AND GRADE 8 FOR SCHOOL YEAR 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyrBtdmi7J9UVHN3j4tkMEJS3bNVCK/Nchjy3lUfrZxxyujE4RBC4ZasPhh89j5-WLkgT3QwtQo', '334', '2023-07-06', 'NUMBERED MEMORANDUM', 'active'),
(2880, 'ictmich0630702', 'INTERNATIONAL MULTI-SECTORAL SUMMIT OF THE ACADEME, ALUMNI, INDUSTRY, AND GOVERNMENT (AAIG) SUMMIT', 'http://depedmanila.net:5000/d/s/uzeyr93eTsk98JSciJmJFIX0ffjU923q/ZR_XV6EEtlm5ya8ya4tCfqzdJ7TFjO9b-e7lAHZIwtQo', '165', '2023-07-06', 'DIVISION ADVISORIES', 'active'),
(2881, 'cidchar0704842', 'QUIPPER YEAR-END ONLINE SURVEY', 'http://depedmanila.net:5000/d/s/uzeyrCK2Tqat31QOUx0hx6NxdxyXAOqh/EPXLV4WB62nr5vUS_WLpSWjiqYKut4ZE-TrlgVWwwtQo', '335', '2023-07-06', 'NUMBERED MEMORANDUM', 'active'),
(2882, 'RECRTSHE0623475', 'VACANCY FOR REGISTAR I POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeysrMQjetVvkiwsR6aF9voKqHQssol/1MC7nSwWsiiIms73wNvIdeCFIYEUffAu-wb5ABK89tQo', '323', '2023-06-30', 'NUMBERED MEMORANDUM', 'active'),
(2884, 'recrtnic0704181', 'EXTENSION OF APPLICATION FOR CHIEF EDUCATION SUPERVISOR POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeyr9uRs8We6YtvrV2yqFQfv0EhtmB7/c5-ocimQvUgz3dzlqXrHccg4P6Q-_2aW-Zrfglb4gtQo', '336', '2023-07-07', 'NUMBERED MEMORANDUM', 'active'),
(2891, 'cidremy0703628', 'DEVELOPMENT OF GRADES 2 AND 3 MATHEMATICS COMICS', 'http://depedmanila.net:5000/d/s/uzeypuhYRudBWFzyGlmmdulzJo6L7pez/GY8VFEUk0TCFFS4glQkuAXXqKCsPKgxn-OrfAUYMgtQo', '337', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2892, 'sgodsias0706467', 'GUIDELINES FOR THE REQUEST OF THE UTILIZATION OF THE SCHOOLS DIVISION OFFICE CONFERENCE ROOM', 'http://depedmanila.net:5000/d/s/uzeyq0WKcQEmOgdCQebSEvHjZRkN5Bfx/YuydKvTsuv6Hu34Ns1nqqFqpTlszzDHg-_rVgX5AZtQo', '11', '2023-07-10', 'OFFICE ORDER', 'active'),
(2893, 'rcrdsbryl0703528', 'BASIC LIFE SUPPORT-STANDARD FIRST AID TRAINING AND AUTOMATED EXTERNAL DEFIBRILLATOR (AED)', 'http://depedmanila.net:5000/d/s/uzeypqryBwDQIDZ6vSOv5HL5yqikQhw0/3VsHrqq4oLSBlYg02GfA9J0RADTqzRn4-AbcA96QftQo', '166', '2023-07-10', 'DIVISION ADVISORIES', 'active'),
(2894, 'recrthan070797', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 322, S. 2023 (VACANCY FOR ELEMENTARY AND SECONDARY SCHOOLS TEACHER II AND III POSITIONS IN THE DIVISION OF CITY SCHOOLS, MANILA)', 'http://depedmanila.net:5000/d/s/uzeyq1VvZgWOq574uoai6FIBjpgqb03E/fREYl0_UANVVCJBVfqUniExR_UckNcqg-9rUAaYAZtQo', '139', '2023-07-10', 'UNNUMBERED MEMORANDUM', 'active'),
(2895, 'rcrdsmari063026', 'COMMUNICATIONS TECHNOLOGY (ICT) DAY', 'http://depedmanila.net:5000/d/s/uzeypsQlPKl8pZWVWx2aI0YP0rZ31IHa/UmdtdcXkb53ru_hIGW-Qz9f5ne5cIBy7-Lrfg-i4gtQo', '120', '2023-07-10', 'DIVISION CIRCULARS', 'active'),
(2896, 'cidchar070545', 'RECONSTITUTION OF THE DIVISION REVIEW AND EVALUATION COMMITTEE (DREC) FOR THE ESTABLISHMENT, MERGING CONVERSION AND NAMING RENAMING OF PUBLIC SCHOOLS, AND SEPARATION OF ANNEXES IN BASIC EDUCATION', 'http://depedmanila.net:5000/d/s/uzeyptzYciC3EEtB9vy95A5YLl6s4AHg/CqZ38195lel8KFM_03fDngz2E5cWGVko-QbcAPZAgtQo', '338', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2897, 'cidbren0706278', 'SUBMISSION AND EVALUATION OF LEARNING RESOURCE MATERIALS', 'http://depedmanila.net:5000/d/s/uzeypwGLfKtUjmBcJsuKk1g40EzTPBtv/gIz4ylkNCh5GVXcOP5Rl5oiuDh-a1-WF-SLdA0JsgtQo', '340', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2898, 'sgodsias0705347', 'NON-COMPLETION OF LINKING STANDARDS AND QUALITY PRACTICE (LiSQuP) SCHOLARSHIP PROGRAM', 'http://depedmanila.net:5000/d/s/uzeypvYLq89yNrzY9tAi1c51qEKG5uLE/ai0b57MN7MeXCASWaI0wGx0snqTrNisr-TrdAH6QgtQo', '341', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2899, 'sgodmarl0706264', 'REGIONAL FEDERATION OF LEARNER GOVERNMENT PROGRAM (LGP) ELECTIONS FOR SCHOOL YEAR 2023-2024', 'http://depedmanila.net:5000/d/s/uzeypyX8huy40I3HqPy7vtjke7qojdLq/DW8Na7OUUsaFce4lqb9AnDOHbFjMIzr1-VbegvawgtQo', '342', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2900, 'cidchar0706684', 'TEACHERS LEADING THE FRONTLINES (TEALEAF) PROGRAM TRAINING TO PUBLIC SCHOOLS DISTRICT SUPERVISORS, SCHOO HEADS, GUIDANCE COUNSELORS AND TEACHERS', 'http://depedmanila.net:5000/d/s/uzeypxFwcaoU62pg0e7U9IZTvRMVGxpn/3HLRhQ6BEJ9bKekTTA-zf5yvYQDgmg_h-W7cAkrMgtQo', '343', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2901, 'cidchar0707667', 'WRITESHOP ON THE DEVELOPMENT OF DIVISION LEARNING OUTCOMES ASSESSMENT TOOLS', 'http://depedmanila.net:5000/d/s/uzeyq3MJv8zZsspWG9z420lFzeGnf4ei/4tuUgtAoSbZioW1GDrRYykzcNVlsGmEL-C7agGKcZtQo', '344', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2902, 'cidlea 0704530', '50th DIVISION-WIDE ALTERNATIVE LEARNING SYSTEM GRADUATION AND COMPLETION CEREMONY', 'http://depedmanila.net:5000/d/s/uzeypzoKnERNbOqGlCsVOoHFKSvUxQs3/Ps969yqLmUmO0YuRJ_ZHTfX9CzPxeQW--BLag8J0ZtQo', '345', '2023-07-10', 'NUMBERED MEMORANDUM', 'active'),
(2903, 'rcrdsdarn0704205', 'DATA ANALYTICS USING SPREADSHEET WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeypXHeD8Uzykb7vUJJReKX9QkY2ykZ/0xG5SDKqu2aCUHuMuznVSGsHLGrmt5nm-77Xgx3gZtQo', '164', '2023-07-11', 'DIVISION ADVISORIES', 'active'),
(2904, 'publiadri0707414', 'YMCA FFPI ANNUAL GENERAL MEMBERSHIP AND FIRST TRIENNIAL CONVENTION', 'http://depedmanila.net:5000/d/s/uzeypYQ2jSr7kN1wZQqKUORI3N6zmTRi/oLRyuXgg8wcb4JJb8D5Olcsbmrk-o-Jq-6LXg628ZtQo', '167', '2023-07-11', 'DIVISION ADVISORIES', 'active'),
(2905, 'recrtjan0707988', 'MALL PARKING GUIDELINES AT SM CITY MANILA', 'http://depedmanila.net:5000/d/s/uzeypXze2Kh6CtLvi7CZXj1HF9M8UoVL/Hv8xV4J9QANtit4pzf_u7KTQ2SeHFwH2-2rXg3E8ZtQo', '346', '2023-07-11', 'NUMBERED MEMORANDUM', 'active'),
(2906, 'cidbren0711330', 'CHANGE IN THE SCHEDULE OF PROJECT LR-LEAD (LANGUAGE EDITING AND ANNOTATIONS OF LEARNING MATERIALS DEVELOPED)', 'http://depedmanila.net:5000/d/s/uzeyoVPtwaUTBLAzHbeZur0XaqL2xxSJ/eBFhFD3UtQJ2nVFX-FczgA1QomEDlTaq-4bVA0FoZtQo', '169', '2023-07-11', 'DIVISION ADVISORIES', 'active'),
(2907, 'cidbren0710382', 'SCHOOL ASSIGNMENT OF PUBLIC SCHOOLS DISTRICT SUPERVISORS FOR SCHOOL YEAR 2023-2024 AND 2024-2025', 'http://depedmanila.net:5000/d/s/uzeypojyiOAw4TcyFiWku25REATixOvz/2qscZL_IiXolfLBMh7vc6JRelRjBqEJW-urXglwgZtQo', '348', '2023-07-12', 'NUMBERED MEMORANDUM', 'active'),
(2908, 'cidbren0710434', 'DESIGNATION OF PUBLIC SCHOOLS DISTRICT SUPERVISORS AS INTERNAL AUDITORS', 'http://depedmanila.net:5000/d/s/uzeypgnD4WGZDIcI4FYdn6qlULGwdyGn/iHWZxE1OJ-UdspFuhP-jTQ8tqtawLF53-xbWgozIZtQo', '347', '2023-07-12', 'NUMBERED MEMORANDUM', 'active'),
(2909, 'recrtjan0711487', 'SUBMISSION OF CITY OF MANILA STRATEGIC PERFORMANCE MANAGEMENT SYSTEM INDIVIDUAL PERFORMANCE COMMITMENT AND REVIEW (COM-SPMS IPCR) OF ALL CITY-PAID NONTEACHING PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeyppjZfefEMUoGYtOsH0CJQuxMGEXr/fha7YWl-twIe4qaZZ2qlfDxa0TTf0QSo-tLVAvQAZtQo', '349', '2023-07-12', 'NUMBERED MEMORANDUM', 'active'),
(2910, 'sgodsias0706798', 'DIVISION FEDERATION OFFICERS OF SUPREME ELEMENTARY LEARNER GOVERNMENT (SELG) AND SUPREME SECONDARY LEARNER GOVERNMENT (SSLG) AND DISTRICT COORDINATORS FOR S.Y. 2023-2024', 'http://depedmanila.net:5000/d/s/uzeypjdCNCfCvw9YuPRot7sZfeQuutbi/zFMBJC_TO6zSj9g7J7y7g7H88YAvenPY-zLXAZjwZtQo', '339', '2023-07-12', 'NUMBERED MEMORANDUM', 'active'),
(2911, 'cidbren071161', 'BIDYOTURISMOMAYNILA PLANNING WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeypfEPr6DQdYWwIIZPlnYx95dNQYQy/PTbN3eL7BZyzX6Lr_xOa7ybXKZBSDAKr-0rUg4kQZtQo', '170', '2023-07-12', 'DIVISION ADVISORIES', 'active'),
(2912, 'cidremy0710355', 'CONDUCT OF THE NATIONAL LEARNING CAMP', 'http://depedmanila.net:5000/d/s/uzeypapdL2FF7j2U47ioaOLvVWQWsbWj/3j9_9tEBUMcT-haS94-BRF_pNJYhGmCg-prUgY68YtQo', '350', '2023-07-13', 'NUMBERED MEMORANDUM', 'active'),
(2917, 'asdsmaria0713693', '2023 NATIONAL ASSEMBLY OF EDUCATION LEADERS', 'http://depedmanila.net:5000/d/s/uzeypbpEII0pmTiXLuc2Gh9EjEc2YgS3/YEE_MbXoqbEWmawBulT3x5a9x3Nio7pU-mbWgop4YtQo', '352', '2023-07-13', 'NUMBERED MEMORANDUM', 'active'),
(2918, 'recrtnic070621', 'REOPENING OF VACANCY FOR SENIOR HIGH SCHOOL TEACHER II POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://depedmanila.net:5000/d/s/uzeypgE0oMCcJlVfyrRB5kd8SwZXm48d/XaDgfQFDAujdTK5_at56lIzuTiR2ZdPq-oLUgPqgYtQo', '351', '2023-07-13', 'NUMBERED MEMORANDUM', 'active'),
(2919, 'hlthjen0713239', 'PROFESSIONAL MEETING AND OATH-TAKING OF THE NEWLY ELECTED OFFICERS', 'http://depedmanila.net:5000/d/s/uzeyq5CiGcuUIelihJf4vGlCI9Xo07bP/9JVXCKt6OgVuTW7HzxREQINCcRffCU9T-g7WgXnEYtQo', '140', '2023-07-14', 'UNNUMBERED MEMORANDUM', 'active'),
(2920, 'cidbren0712422', 'PRACTICE FOR ALS GRADUATION AND COMPLETION CEREMONY', 'http://depedmanila.net:5000/d/s/uzeyq4mJZUCcRe8pEZuXRcERzfZqDHAL/CLlywoJYyC3YtEw6sTWfQsUnjqostR3R-irWAtoIYtQo', '353', '2023-07-14', 'NUMBERED MEMORANDUM', 'active'),
(2921, 'rcrdsmari0613915', 'PHILIPPINE STARS LEARNING EXPERIENCE ACQUIRED THROUGH READING NEWSPAPERS (LEARN)', 'http://depedmanila.net:5000/d/s/uzeyq63VeqkmESjZ65yvk5MUQBC3LoL7/QSgTO4VOBDpl9vy493_y86Q1rCBtuSoz-kbXgQosYtQo', '121', '2023-07-14', 'DIVISION CIRCULARS', 'active'),
(2922, 'sgodsias0714227', 'REQUEST FOR THE INFORMATION OF MEMBERS OF THE CHILD PROTECTION COMMITTEE (CPC) IN SCHOOLS', 'http://depedmanila.net:5000/d/s/uzeyq82hZMJ1oJs33c44Uuvsb9POl8im/uj8zRtMl65EAW7JvxJdWA-YJ5-rM9iQS-dLWgPlsYtQo', '354', '2023-07-17', 'NUMBERED MEMORANDUM', 'active'),
(2923, 'sgodsias0713234', 'REQUEST FOR THE CONSOLIDATED REPORTS OF LEARNER RIGHTS AND PROTECTION CASES', 'http://depedmanila.net:5000/d/s/uzeyqCrsmcexjM1hrkXRnFSqw0mEluxs/ckbIJCWeRdFSa3PlAdPHNec4cQJ_jPXj-brUgVVMYtQo', '355', '2023-07-17', 'NUMBERED MEMORANDUM', 'active'),
(2924, 'sgodsias0711672', 'DIVISION GUIDELINES ON THE SUBMISSION OF SCHOOL FORMS FOR END OF SCHOOL YEAR (EOSY) 2022 - 2023 AND OTHER RELATED REPORTS', 'http://depedmanila.net:5000/d/s/uzeyqAb5k0eQcaWDAftyGWjkAmhcNBdv/9PXO06AiIgucsVHQFXLsseCLid_y-lbS-Z7XgIkwYtQo', '359', '2023-07-17', 'NUMBERED MEMORANDUM', 'active'),
(2925, 'cidchar0713969', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 348, S. 2023 (SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS FOR SCHOOL YEARS 2023-2024 AND 2024-2025)', 'http://depedmanila.net:5000/d/s/uzeyqCRU5Uy6dFyXQAmTJhpz6LPTqGQV/bbyRsOggi_4l0IfC08J1piI27ZUVicXy-VrWAGBUYtQo', '141', '2023-07-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2926, 'cidlea 0713528', 'CULMINATING ACTIVITY OF DISTRICT II ART SA ALS PROJECT', 'http://depedmanila.net:5000/d/s/uzeyqBsHpKyzdlCvdEgMlZBm5JDNBOvO/oj_q4yhakRS5P5rvauk2VR74juch69pV-T7XAEg0YtQo', '142', '2023-07-17', 'UNNUMBERED MEMORANDUM', 'active'),
(2927, 'recrtnic0714149', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF APPLICANTS FOR RELATED-TEACHING AND NONTEACHING POSITIONS', 'http://depedmanila.net:5000/d/s/uzeyq9t5uoGYMiJkzag0Micuk2f4rjJc/xSDsK4tXu2Q_EZhWO0DfsNJANmtQutU_-YbXg8D4YtQo', '360', '2023-07-17', 'NUMBERED MEMORANDUM', 'active'),
(2928, 'rcrdsdarn0710776', '\"2023 FREE EDUCATION AND GAWAD TUGATOG WITH THE THEME: \"EMPOWERING EDUCATION: NURTURING THE FUTURE\"', 'http://depedmanila.net:5000/d/s/uzeyq6uJ34kn9wUg8LQhDGPrfcQERgmj/rkebYz9UnHzhXBJhEKKxOsecDo00FVzC-e7WAr2QYtQo', '168', '2023-07-17', 'DIVISION ADVISORIES', 'active'),
(2929, 'rcrdsmari0707753', 'UNIVERSIDAD DE MANILA (UDM) OFFERS GRADUATE PROGRAMS TO SCHOOL HEADS AND TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyqEr4h60NrJbuaxN531Nal3mylCWw/5OLCcvqFzm3ZLX8_PpSkZV2jmi-hx2Bp-RbUgldoXtQo', '171', '2023-07-18', 'DIVISION ADVISORIES', 'active'),
(2930, 'rcrdsbryl0711409', 'WINNERS IN THE SEARCH FOR MR. AND MS. Y-PREP DISTRICT LEVEL', 'http://depedmanila.net:5000/d/s/uzeyqIGGFut33Xx0eEaJSAYJWxpRLCwA/zPCf1mEZB64ZuEzdzTmRfn0dOwOIGJei-PbVAFscXtQo', '122', '2023-07-18', 'DIVISION CIRCULARS', 'active'),
(2931, 'cidmeri0717992', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 350, S. 2023 CONDUCT OF THE NATIONAL LEARNING CAMP', 'http://depedmanila.net:5000/d/s/uzeyqKOFjUWZxcT8zIaDGJDLzVurOTRk/Em17n6nDPg5Z9j2m2TMnhWm_vf4lvYAX-LbXgQq8XtQo', '143', '2023-07-18', 'UNNUMBERED MEMORANDUM', 'active'),
(2932, 'CIDLEA 071726', 'ALS GRADUATION AND MOVING-UP CEREMONY', 'http://depedmanila.net:5000/d/s/uzeyqIpSW4ThepsOzLzzGyJFvLRXRZ9U/4whh0d6kbeHseH4RQIPvo82ROTvesqq9-JrXgGaYXtQo', '144', '2023-07-18', 'UNNUMBERED MEMORANDUM', 'active'),
(2933, 'cidmeri0712643', 'SEI STEM TEACH 7ES OF TEACHING PHYSICS', 'http://depedmanila.net:5000/d/s/uzeyqJp3TKsyKDuHeTHZsN7RCSyJqE70/kTPEHKfnra9_m6HiKcjVqiICR8FD_VTE-M7Xg0LcXtQo', '361', '2023-07-18', 'NUMBERED MEMORANDUM', 'active'),
(2935, 'lnpchr0717701', 'PUBLIC SCHOOL TEACHERS PROPORTIONAL VACATION PAY FOR SCHOOL YEAR 2022-2023', 'http://depedmanila.net:5000/d/s/uzeyqM5qVuxOnGtZuYgulATiBjA4r8Kw/zEWvUDM6jUuCjgdbRBcKxOrAaxcXj3_c-HrUAYJwXtQo', '362', '2023-07-19', 'NUMBERED MEMORANDUM', 'active'),
(2936, 'sgodeliz0718126', 'MULTI-YEAR RPMS-PPST GUIDELINES AND THE ELECTRONIC INDIVIDUAL PERFORMANCE COMMITMENT AND REVIEW FORM (E-IPCRF) DATA COLLECTION AND CONSOLIDATED SYSTEM', 'http://depedmanila.net:5000/d/s/uzeyqRd1YGBajng4lUuPZSHkNOiwPOFq/_K2nOaD_EYPZ6iPWYMOI5hoUVHCXkl5i-GLVgopUXtQo', '363', '2023-07-19', 'NUMBERED MEMORANDUM', 'active'),
(2937, 'sgodeliz0718785', 'PRE-PLANNING WORKSHOP ON THE CONDUCT OF REGIONAL TRAINING OF TRAINERS ON HOTS-PLPs, MATHEMATICS, AND SCIENCE FOR GRADES 9 AND 10 TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyqSlQ4Y3ly7dRFUdyJAWjcNHfCp4I/FCMYJmxXvG_IZaekm01THLKCpnGtjJJn-CbWg8n4XtQo', '365', '2023-07-20', 'NUMBERED MEMORANDUM', 'active'),
(2938, 'rcrdsdarn0717985', 'CALL FOR NOMINATION FOR SEAMEO-RECSAM REGULAR COURSE OFFERINGS FOR FY 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyqPmdCm2wmsxLWyzP3HSug5Sbv0TA/ZZFe1gNqvlJTiOy_7rxdFHjhWIohqWU9-ELUgKYoXtQo', '364', '2023-07-20', 'NUMBERED MEMORANDUM', 'active'),
(2939, 'sgodsias0718723', 'LEARNERS CONVERGENCE PH 2023', 'http://depedmanila.net:5000/d/s/uzeyqXjOqqVkjzR4zJBb7pk8MIsd2GVB/GYqZEbjw3IRJi7Nu5fFcFgQpDIZCO-Mw-67SAVEUXtQo', '145', '2023-07-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2940, 'rcrdsdarn0714116', 'FINAL SCREENING OF REGIONAL DELEGATION DOCUMENTS FOR PALARONG PAMBANSA 2023', 'http://depedmanila.net:5000/d/s/uzeyqTTPtkHX1ieU9NRkYzKDSUdaVDiQ/d6dtckSQWFbrcFTXiaXzSZk0aYcrq3OH-5LRg_TwXtQo', '146', '2023-07-20', 'UNNUMBERED MEMORANDUM', 'active'),
(2942, 'sgodrodo071829', 'INVITATION TO PARTICIPATE IN THE MARINE LITTER LEARNING KIT FACILITATORS TRAINING', 'http://depedmanila.net:5000/d/s/uzeyqUboQ2Jt8jGq4wSDhmNpWBcRMrTI/VTyjPqDk7ZgxtbWOhnF8KdqbBAtVo95C-8bTgB1AXtQo', '367', '2023-07-20', 'NUMBERED MEMORANDUM', 'active'),
(2943, 'SGODELIZ072013', 'CRAFTING OF SDO-MANILA CONTINGENCY PLAN FOR DIFFERENT HAZARDS TRAINING WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeyqbHNymfY2VkNPCCY28BavVaixaeH/1lDChPhMEzv0AXiKLsR2Rvoj1K61qD4h-vbTAVOoWtQo', '370', '2023-07-21', 'NUMBERED MEMORANDUM', 'active'),
(2945, 'rapjey0719299', 'ADDITIONAL ALTERNATE VERIFIER OF SDO MANILA', 'http://depedmanila.net:5000/d/s/uzeyqYrnNAwtAhVnaGJlpb7w75qJ3WjJ/r2ja0xFHtPnZ8aa1w-1jKB6t86rVoaO_-pbQgYboWtQo', '368', '2023-07-21', 'NUMBERED MEMORANDUM', 'active'),
(2946, 'rcrdsmari0714473', 'YOUNG LEADERSHIP EXCELLENCE AWARDS (YLEA)', 'http://depedmanila.net:5000/d/s/uzeyqWsbSaROoqe8lHRRoDfdscPtH7qZ/0BThEypPhUeuXB0qOt6ZWqHHTr-0Xnnn-mLRAKKUWtQo', '123', '2023-07-21', 'DIVISION CIRCULARS', 'active'),
(2947, 'sgodmarl0719462', 'MANILA ATHLETIC DELEGATION TO THE 2023 PALARONG PAMBANSA', 'http://depedmanila.net:5000/d/s/uzeyqe7NHY0zoOX1Tw4pV0wlVhMYnPNX/whMTbQnr5KsoGbBpZXIodgEYd7b3gyek-xLTAQfIWtQo', '371', '2023-07-21', 'NUMBERED MEMORANDUM', 'active'),
(2948, 'rcrdsmari0710867', 'A 4-DAY IN-HOUSE TRAINING OF HIV/AIDS, SUBSTANCE ABUSE, PREVENTION EDUCATION AND PLEDGE 25 (BLOOD DONATION VNRBD) FACILITATORS COURSE', 'http://depedmanila.net:5000/d/s/uzeyqYIb70JRbvLQHO5Ba3PgGXlYIpZm/lEUhpHS3KKMdIxsWIa_jLo3isa-Vyhk9-n7QgVLMWtQo', '124', '2023-07-21', 'DIVISION CIRCULARS', 'active'),
(2949, 'sgodsias0719473', 'CONDUCT OF THE SECOND QUARTER DIVISION PROGRAM IMPLEMENTATION REVIEW (PIR) MONITORING, EVALUATION AND ADJUSTMENT (MEA) 2023', 'http://depedmanila.net:5000/d/s/uzeyqegZXiCzSXupMShkCF9Y4eyqlzsL/D6tNJhzJOVxn1pIiCLoRAM0FPStxaFMw-3LQAtDEXtQo', '374', '2023-07-21', 'NUMBERED MEMORANDUM', 'active'),
(2950, 'hlthjen0719377', 'DENTAL PROFILLING FOR ALL SDO-MANILA PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeyqbqaEwVZk65XMfPG4AtW0bdL9IU1/tNhUTrYZUJ07qMBdoplI6YzYW2exQose-zrTAwQ0XtQo', '372', '2023-07-21', 'NUMBERED MEMORANDUM', 'active'),
(2951, 'CIDAMCY0719913', 'DEVELOPMENT AND CONTEXTUALIZATION OF THE KINDERGARTEN WORDLESS STORY BOOKS', 'http://depedmanila.net:5000/d/s/uzeyqcPmV6KMap3roctGILQ99AoUK3oR/Y8Z-Tzpe4LTY7dUE0CoAODOzWy27rBkG-1LSAohgXtQo', '373', '2023-07-21', 'NUMBERED MEMORANDUM', 'active'),
(2952, 'RCRDSVICT0725507', 'POSTPONEMENT OF CRAFTING OF SDO-MANILA CONTINGENCY PLAN FOR DIFFERENT HAZARDS TRAINING WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeyqXJ09ifIsxlA5cpDuOqyDvSilUrW/wD0893MrfyJMDlknOeMAfTtUAIFfDe2E-kLSAgZcWtQo', '179', '2023-07-25', 'DIVISION ADVISORIES', 'active'),
(2953, 'rcrdsdarn0718484', 'INTERNATIONAL JOURNAL OF MULTIDISCIPLINAY EDUCATIONAL RESEARCH AND INNOVATION: CALL FOR PAPERS VOL. 01, ISSUE 03 AUGUST 2023', 'http://depedmanila.net:5000/d/s/uzeyqh6A9Mbz8MPzOYPSxiyj1i7yixIH/WuPTRUoSVjya4Di3A0rRmQsXUhp1ytHG-W7TAdzgWtQo', '175', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2954, 'rcrdsdarn0718811', 'UNESCO - APNIEVE ASIA - PACIFIC NETWORK FOR INTERNATIONAL EDUCATION AND VALUES EDUCATION', 'http://depedmanila.net:5000/d/s/uzeyqhfMPWngYrRCjWz3EJIiHYVaFnQN/fTSW5-UuQxW1mvVd-dMV2hukOlU1Z6Dj-VbRA8jAWtQo', '174', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2955, 'rcrdsdarn0718729', '11TH DIWANG: SAGISAG KULTURA NG PILIPINAS', 'http://depedmanila.net:5000/d/s/uzeyqg6ZC6R7qES9bGD94Ejmqho77EBd/pbgViihUZxTWqHXsDnt6ZL0PqFMsi0uM-TrQADioWtQo', '173', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2956, 'rcrdsdarn0718822', 'INVITATION FROM THE PHILIPPINE ASSOCIATION OF PRIVATE SCHOOL DENTISTS INC', 'http://depedmanila.net:5000/d/s/uzeyqfOZMu1qB520GHqnrqiLbVHDeUdE/qQA4CB4E9yhFc5jyRFsBSd8zkML6xxAq-SLRgySIWtQo', '172', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2957, 'accimar0720795', 'DISSEMINATION OF COMMISSION ON AUDIT (COA) CIRCULAR NO. 2023-004 DATED JUNE 14, 2023, PRESCRIBING THE UPDATED DOCUMENTARY REQUIREMENTS FOR COMMON GOVERNMENT TRANSACTIONS', 'http://depedmanila.net:5000/d/s/uzeyqpkvckMXDsxS9NwKDss4jB8nVbRQ/OM7MTCdJH5i4tQt7LXYaaC7mA9Sbn21S-h7TgSI8WtQo', '375', '2023-07-26', 'NUMBERED MEMORANDUM', 'active'),
(2958, 'rcrdsdarn0718778', 'APNIEVE NATIONAL CONVENTION', 'http://depedmanila.net:5000/d/s/uzeyqjnLt6CsHoo7EAnE5NNbYjPQhqrz/ubCxIyqXpeYGuY7TLnHQsFIfo8edjf6X-YrRgNkMWtQo', '176', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2959, 'rcrdsdarn0718351', '2023 FREE EDUCATION SUMMIT AND GAWAD TUGATOG', 'http://depedmanila.net:5000/d/s/uzeyqiexMmnNl1yAuk4x9tUDyhef3Wxi/PkhLSt164giABBJMwzt1fWpZLYsOIQ7J-abTgblAWtQo', '177', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2960, 'rcrdsdarn0718199', 'WORKSHOP ON TRADITIONAL KNOWLEDGE', 'http://depedmanila.net:5000/d/s/uzeyqj5M3uV6TmbjRfj8jhBqykZqpRW3/uTCy-e_-xn75uDJcL2kVsQDAKhBRxh-q-cLQg8loWtQo', '178', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2961, 'rcrdsdarn0721448', 'MOBILE EDUCATIONAL EVENT ON CLIMATE CHANGE', 'http://depedmanila.net:5000/d/s/uzeyqkvkPQn4OY4EZqs9TSEFky6rKkAR/UwiftaWCY_OIRFkHlj4xmVjTuYwdz1yp-drQgSmYWtQo', '180', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2962, 'CIDCHAR0725498', 'CHANGE IN THE SCHEDULE OF THE WRITESHOP ON THE DEVELOPMENT OF DIVISION LEARNING OUTCOMES ASSESSMENT TOOL', 'http://depedmanila.net:5000/d/s/uzeyqkDkaEyPQwnQ5KUJ367D1bqTNLqk/ZQ4OYcmmgvsh0YU7rBjwl4us8u6Qt07o-gLRAzX4WtQov', '181', '2023-07-26', 'DIVISION ADVISORIES', 'active'),
(2963, 'rcrdsdarn0721284', 'REITERATION ON THE COMMITMENT IN MAINTAINING THE LEARNING RESOURSE FACILITIES IN THE REGION, SCHOOLS DIVISION OFFICES AND IN THE SCHOOLS', 'http://depedmanila.net:5000/d/s/uzeyqnU8a6dqHZwtvPP7an05vxQwUq7k/aJXpvAnlGojtVvDU5Euwu_VWJSG_cJM_-NrQgDv8VtQo', '376', '2023-07-27', 'NUMBERED MEMORANDUM', 'active'),
(2964, 'cidchar0720270', 'INDAK GURO 2.0 (SAMUT SARING SAYAW SA CURRICULUM)', 'http://depedmanila.net:5000/d/s/uzeyqnuXHEDsyFPy3WmOVIwObqlvTtK6/oSyPudCsnrFU2RHJPATBl20hqjsDnQEd-L7QgT-gVtQo', '377', '2023-07-27', 'NUMBERED MEMORANDUM', 'active'),
(2965, 'sgodsias0726692', 'VENUE FOR THE 2ND QUARTER DIVISION PROGRAM IMPLEMENTATION REVIEW (PIR) MONITORING, EVALUATION, AND ADJUSTMENT (MEA) 2023', 'http://depedmanila.net:5000/d/s/uzeyqnCXS0oc56EmC5wxMC70KzRuy33g/MTPgol6YmMIkEPTUqPHQKGVIy8dW5d0l-QLSgpBUWtQo', '183', '2023-07-27', 'DIVISION ADVISORIES', 'active'),
(2966, 'publiabbi0726655', 'PROBLEM-SOLVING ENRICHMENT AND TRAINING (ProbSET) PROGRAM', 'http://depedmanila.net:5000/d/s/uzeyqlM96YOiYr8dZRXoPDRNePdHOgB8/IqLk1Ep6I_hng-JCi76Sa61duztUGALr-472g6FUQuQo', '182', '2023-07-27', 'DIVISION ADVISORIES', 'active'),
(2967, 'CIDCHAR0721624', 'CORRIGENDUM TO DIVISION MEMORANDUM NO.334,S. 2023 (WRITESHOP ON THE DEVELOPMENT OF DIVISION LEARNING OUTCOMES ASSESSMENT TOOLS)', 'http://depedmanila.net:5000/d/s/uzeyqqbj0y5cIjvVQUasgBITsgPGmO9S/iDJccuZ3aPtkAxFxg2lZ8NSoHSoeIrf--F7TgebEVtQo', '147', '2023-07-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2968, 'CIDAMCY0720858', 'UPDATED GUIDELINES ON THE GRANT OF VACATION SERVICE CREDITS TO TEACHERS', 'http://depedmanila.net:5000/d/s/uzeyqpBjMYyC49Ev1IPy7kL7YLUdweap/-yIkxASw7Chens3f3OO1fsQIK04FsgyC-JLRgu8MVtQo', '378', '2023-07-27', 'NUMBERED MEMORANDUM', 'active'),
(2969, 'sgodanna0725987', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 370, S. 2023 MANILA ATHLETIC DELEGATION TO THE 2023 PALARONG PAMBANSA', 'http://depedmanila.net:5000/d/s/uzeyqtIukcTylhkFDVEH5xpuQHqXxAVH/DlLt3bUz-2cr8sJzYCI2TljmM4IFr7fA-DbTA4pkVtQo', '148', '2023-07-27', 'UNNUMBERED MEMORANDUM', 'active'),
(2970, 'recrtden0718536', 'COMPOSITION OF SCHOOL AND DISTRICT SUB-COMMITTEES FOR THE SCREENING OF APPLICANTS FOR TEACHER II AND III POSITIONS IN THE ELEMENTARY AND SECONDARY LEVELS.', 'http://depedmanila.net:5000/d/s/uzeyqpTKUeIP0WR45pZUGSGlpkrN200m/5U07Y_7fw3KhIGWVQGtPduVd1sAjsn3P-HrQggboVtQo', '379', '2023-07-27', 'NUMBERED MEMORANDUM', 'active'),
(2971, '12282022', 'GUIDELINES ON THE PREPERATION OF DISTRICT DIVISION MEET EXPENDITURES', 'http://depedmanila.net:5000/d/s/uzez25tMJs8Wjqs58585H02HqlilQRUh/JULn9r_-LLsEA1FN4P1cddekwCti2JqA-AL9ArNmtuQo', '467', '2022-12-28', 'NUMBERED MEMORANDUM', 'active'),
(2972, 'accima0727303', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF CASH ALLOWANCE FOR SY 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyqu9i8qPcAFla5r8MgSOEH7TAnePK/JQMDtBHFr8lArW3NL26R1u59AAqs98n--_LOgh3wVtQo', '380', '2023-07-28', 'NUMBERED MEMORANDUM', 'active'),
(2973, 'sgodsias0630450', 'MANILA BULLETIN SKETCHFEST', 'http://depedmanila.net:5000/d/s/uzeyqv9J68JZv99XHoT251PXrPCsiTDX/havolbVHHkdGnxwSj9NBXg6Or3uuNBGQ-BbSgGY0VtQo', '184', '2023-07-28', 'DIVISION ADVISORIES', 'active'),
(2974, 'hlthjen0717981', 'SCHOOL AND DIVISION OFFICE ASSIGNMENT OF DEPED ELEMENTARY AND SENIOR HIGH SCHOOL NURSES', 'http://depedmanila.net:5000/d/s/uzeyr5eSv0RhH3Mm3NdAFqeBtIHwEb34/H4y5VeazWdr-KBIV9ZJYUIBKpDFWI1o8-9bMgNnQVtQo', '381', '2023-07-31', 'NUMBERED MEMORANDUM', 'active'),
(2975, 'cidbren0728394', 'PARTICIPANTS IN THE REGIONAL TRAINING OF CRLA TRAINERS FOR THE LEARNING FACILITATORS OF TARA, BASA! TUTORING PROGRAM', 'http://depedmanila.net:5000/d/s/uzeyr4nfWkwQzQmB77E3jOFEadkmBVai/gPI1pG5KAOx8OQ0Dw_dp3UW8xAU14kcn-7rNgwmQVtQo', '382', '2023-07-31', 'NUMBERED MEMORANDUM', 'active'),
(2976, 'cidbren0726215', 'CONDUCT OF THE CURRICULUM IMPLEMENTATION DIVISION MID-YEAR PROGRAM IMPLEMENTATION REVIEW (PIR) FOR FISCAL YEAR 2023', 'http://depedmanila.net:5000/d/s/uzeyr3EsJMJwVvRbVEnU4wrwmTRrNaED/qERXaDfLqeCqXuRa9rMLNeDptxETklwg-4LOAR1EVtQo', '384', '2023-07-31', 'NUMBERED MEMORANDUM', 'active'),
(2977, 'recrtnic0726911', 'REASSIGNMENT OF SECONDARY SCHOOL PRINCIPALS', 'http://depedmanila.net:5000/d/s/uzeyr2O4v8Q5j7f2hqWL6hAWrQ3MCovT/DQgyy_4T4-w7Bfh4juDALKhK6w7ALPf1-57NAa1kVtQo', '383', '2023-07-31', 'NUMBERED MEMORANDUM', 'active'),
(2978, 'icttrai072513', '2022 SEARCH FOR OUTSTANDING GOVERNMENT WORKERS', 'http://depedmanila.net:5000/d/s/uzeylLz4luxIBqrnbwAXgCF5FRXKvokM/2geD4nR-FyxYr1zZZHz7VWsuWeBIrBut-krOgY9MUtQo', '193', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2979, 'sgodsias0726543', 'SDO MANILA AD HOC COMMITTEE, RATERS, AND APPROVING AUTHORITIES FOR OPCRF AND IPCRF OF THE SCHOOL HEADS, HEAD TEACHERS, AND MASTER TEACHERS', 'http://depedmanila.net:5000/d/s/uzeylSeeKmYmxt2CZ2YTv2M7G36t6SwD/gJ6SpqU1bBpuBUJ1XVCpevIgQuVcaSXT-a7NA2qIUtQo', '390', '2023-08-01', 'NUMBERED MEMORANDUM', 'active'),
(2980, 'sgodsias0731655', 'TRAINING AND PLANNING WORKSHOP ON THE FORMULATION OF THE SCHOOL IMPROVEMENT PLAN (SIP) FOR 2023-2028 USING DEPEDS STRATEGIC FRAMEWORK AND PILLARS ALIGNED WITH MATATAG AGENDA', 'http://depedmanila.net:5000/d/s/uzeylOxrdmURxeOitAFQkGb0aSLk9GAz/dYAZ87CfdtQ5XcU1aBv5lV4JTV-J9CRu-cbNg26sUtQo', '389', '2023-08-01', 'NUMBERED MEMORANDUM', 'active'),
(2981, 'rcrdsdani0725366', 'CREATION OF THE HEALTH PROMOTION COMMITTEE FOR THE GOVERNANCE AND IMPLEMENTATION OF HEALTH PROMOTION POLICIES, PROGRAMS, AND ACTIVITIES IN THE CITY WIDE HEALTH SYSTEM OF CITY OF MANILA', 'http://depedmanila.net:5000/d/s/uzeylOOfNcb0XERSO04v8P3JVozrWGRg/rAudP1hx_atIVOkNEOLN6qbGLBWVmoQX-frMgzL0UtQo', '387', '2023-08-01', 'NUMBERED MEMORANDUM', 'active'),
(2982, 'rcrdsdani072548', 'S.O DESIGNATED AS ACTING CITY MAYOR FOR THE DURATION OF THE AUTHORIZED TRAVEL ABROAD OF THE UNDERSIGNED', 'http://depedmanila.net:5000/d/s/uzeylNXrzMynLzdjhO3yoC58iWDg6Fgo/n-AqDZpbuOHNEkykk1sblYeaSUlsjcXL-eLNgD7YUtQo', '388', '2023-08-01', 'NUMBERED MEMORANDUM', 'active'),
(2983, 'rcrdsdani0725503', 'CREATION OF THE HEALTH EDUCATION AND PROMOTION UNIT', 'http://depedmanila.net:5000/d/s/uzeylNyGgUuAdTVh21iQQDkqnRoV04zc/Hrp1HG55ORT4_7LGZJhK0cmCYSWe4Oab-hbOgh8QUtQo', '386', '2023-08-01', 'NUMBERED MEMORANDUM', 'active'),
(2984, 'rcrdselsa0727174', 'ASSUMPTION OF ACTING MAYOR', 'http://depedmanila.net:5000/d/s/uzeylMYH24lDfYBLuznuPgkhhFRGvIos/Q6BlwlmVdm4D6WqOqqwR1J5dSSP5W4dl-i7NgbswUtQo', '385', '2023-08-01', 'NUMBERED MEMORANDUM', 'active'),
(2985, 'rcrdsdarn0727415', 'GRADUATE DIPLOMA IN CULTURE EDUCATION SCHOLARS: LIST OF NCR PASSERS', 'http://depedmanila.net:5000/d/s/uzeylKHTzSQJOp2pn8Ec8oIcOf7ieMbq/lOGLXiZEIu6uirvLqP_NCcHsSBYjSjAD-p7NgWuMUtQo', '190', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2986, 'rcrdsdarn0727253', 'PHILIPPINE GAME DEVELOPMENT EXPO (PGDX)', 'http://depedmanila.net:5000/d/s/uzeylLH4wiHoaLtsTr2qeNaj0kRIC9wl/hU_3M-4IX2TzCewVTN82xSDH52ge8KR4-vbQAU976tQo', '192', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2987, 'rcrdsdarn0727604', 'INVITATION TO THE 3RD WEBINAR ON ORGANIZATION OF SOCIAL STUDIES TEACHERS IN THE PHILIPPINES (OSSTP) SOCIAL STUDIES EDUCATION', 'http://depedmanila.net:5000/d/s/uzeylMyfjCtHAwbr4YfrycGef2OQTUpl/_-HWumIscx6oyQ_FTAaKXJ8D8nSaCtLf-mLMg5doUtQo', '191', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2989, 'rcrdsdarn0727736', 'DATA ANALYTICS USING SPREADSHEET WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeylJZUAGnl86mZ8Z3O1u2ihgaIYz3X/ROcfiZ4ORhd6XOfU6w9JdrLDPCiFhQWP-rbPgFuoUtQo', '189', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2990, 'rcrdsdarn0727558', 'MANILA BULLETIN SKETCHFEST', 'http://depedmanila.net:5000/d/s/uzeylIR5dwtaYqbbPdzAo3tPoqBuAJrN/Q1v17L8x0Jtw371jEg3X_n2iAzAbXKUX-0LNghDsVtQo', '188', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2991, 'rcrdsdarn0727109', 'WORLD ROBOT GAMES - TAIPEI 2023', 'http://depedmanila.net:5000/d/s/uzeylJ0Hu66LWCJHKDMdpHAGGVCsA6jN/xaMe571ZlL9sXAauDHldJ4zG48q06rh5-17OAOEQVtQo', '187', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2992, 'rcrdsdarn0727565', 'DATA PRIVACY AND ONLINE PROTECTION FOR SCHOOLS WORKSHOP', 'http://depedmanila.net:5000/d/s/uzeylHIh7cS4ckid8BCixYpY4fluOMsU/BFP26rcEOfoZWImtL2zhUCcGNgiG_9Nd-d7QAkWz6tQo', '186', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2993, 'rcrdsdarn0727761', '2023 INTERNATIONAL RESEARCH CONFERENCE', 'http://depedmanila.net:5000/d/s/uzeylI0gwoiCxXb80431efTiCnRSNDR2/YdtHRtlFjDG0yrQL9PUstLjkCgjwNgkJ-I7TgCf75tQo', '185', '2023-08-01', 'DIVISION ADVISORIES', 'active'),
(2994, 'ictmich0718238', 'WINNERS ROBOT GAME-TAIPEI 2023', 'http://depedmanila.net:5000/d/s/uzeylqM9iCGbCTPWirLfD98EOlW760xL/8zA6610K3PHU8USqjH9thM_T07jbktbZ-MLMAmmkUtQo', '194', '2023-08-03', 'DIVISION ADVISORIES', 'active'),
(2995, 'icttrai0725315', 'WINNERS OF ASIAN MATHSCI LEAGUE INC. (AMSLI)', 'http://depedmanila.net:5000/d/s/uzeylsU9BmDDkGyPHqjNySm3BvWLI1MP/pSeLEAwSbrso25WztiIWDB7CByEmyS6I-VLNgvowUtQo', '196', '2023-08-03', 'DIVISION ADVISORIES', 'active'),
(2996, 'rcrdselsa0728536', 'INVITATION FOR GRADUATE EXTENSION PROGRAM OF PHILIPPINE CHRISTIAN UNIVERSITY', 'http://depedmanila.net:5000/d/s/uzeylrCx6SMoqR9ykncG5mGTGcg9RG1f/o5kIWv5euXyp8W86VcsmD5EQ3tOwtZOi-RLMgGHgUtQo', '195', '2023-08-03', 'DIVISION ADVISORIES', 'active'),
(2997, 'rcrdsdarn0717590', '37TH ASEAN COUNCIL OF TEACHERS PLUS ONE CONVENTION', 'http://depedmanila.net:5000/d/s/uzeylsuXsuAR2dFeFPwjA228m0pFdfad/BLtlyHrB-RJlGg35kKM5SLwL4OZgt_yr-BLNgCkUUtQo', '198', '2023-08-04', 'DIVISION ADVISORIES', 'active'),
(2998, 'rcrdsdarn0725854', 'CENTER FOR HUMAN RESEARCH AND DEVELOPMENT FOUNDATION INC', 'http://depedmanila.net:5000/d/s/uzeylxS7y0nU3YQ3aUtCpn7lZVHtp0NU/w_zFgXdsr4sMxHx0X9MjYjUPsa2xFaIX-GbMAdloUtQo', '199', '2023-08-04', 'DIVISION ADVISORIES', 'active'),
(3000, 'ictmich0718823', 'STRATEGIES FOR HARMONIZING ACADEMIC REINFORCEMENT IN THE K-12 CURRICULUM (SHARK)', 'http://depedmanila.net:5000/d/s/uzeym6XI8MfrrgH1e7UPvDtUPJgscre1/XUfo96PY1TaCcO3Zi5IDusGpAPAG9431-TLMAnYAUtQo', '200', '2023-08-07', 'DIVISION ADVISORIES', 'active'),
(3001, 'rcrdsdarn0718957', 'LIST OF STUDENTS FROM PUBLIC SCHOOLS IN MANILA WHO WILL BE AFFECTED BY THE RELOCATION TO TRECE MARTICES, CAVITE CITY, FOR INFORMATION AND GUIDANCE', 'http://depedmanila.net:5000/d/s/uzeym7O5Wc5bapxphv7B8sQHSI6GBsAx/MDyV3FoAGE9NScX0qjEPT40miMHL_NfM-PbNg9XUUtQo', '125', '2023-08-07', 'DIVISION CIRCULARS', 'active'),
(3002, 'ictjuan0801325', 'DISSEMINATION OF DEPED ORDER 16, S. 2023 AND ADOPTION OF THE STANDARD INFORMATION AND COMMUNICATIONS TECHNOLOGY (ICT) MONITORING TOOLS', 'http://depedmanila.net:5000/d/s/uzeym7fgeiextXXudfZwrOAG8L99Gm4N/rW3VFKV1aMJnCxmjZ0eDgnW8VfnOgWA4-NrNgF24UtQo', '391', '2023-08-07', 'NUMBERED MEMORANDUM', 'active'),
(3003, 'sgodsias0803799', 'REGIONAL EDUCATION SUMMIT FOR PRIVATE SCHOOLS', 'http://depedmanila.net:5000/d/s/uzeym9esZCKfHlo9JhVM2ymunlIzGs9t/f9bcXc3ExWnKF8jobD-pcVtOdSrwK4rc-KLMg9GUUtQo', '392', '2023-08-07', 'NUMBERED MEMORANDUM', 'active'),
(3004, 'sgodsias0719997', 'CAREER SERVICE EXAMINATION - PEN AND PAPER TEST (CSE-PPT) SUBPROFESSIONAL LEVEL', 'http://depedmanila.net:5000/d/s/uzeymBMTLgRd6vUFsXFjf8WY23mHhJKK/QzGwyV4FBOWp55YNesU4V2FpHWpXAr_Y-H7MArlsUtQo', '393', '2023-08-07', 'NUMBERED MEMORANDUM', 'active'),
(3005, 'sgodsias0803936', 'PARTICIPATION IN THE ONLINE VALIDATION OF BASELINE DATA ON THE NON-TEACHING TASKS ASSIGNED TO TEACHERS', 'http://depedmanila.net:5000/d/s/uzeymAw4eYVla1tVgbZTLXGO3YneMuVn/X7c_DTBwnYdfGxM3ix9bkxDAl3gk7MkD-CrPAMUcUtQo', '149', '2023-08-07', 'UNNUMBERED MEMORANDUM', 'active'),
(3006, 'cidbren0802797', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 348 s. 2023 (SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS FOR SCHOOL YEARS 2023-2024 AND 2024-2025) AND ADDITIONAL SCHOOL ASSIGNMENTS', 'http://depedmanila.net:5000/d/s/uzeymDm3xMddSa5gu8gLP13vA4guIOtc/fogaahQcIDi9qMnqUpPeenmJEXrI9kb_-_bLA0D8UtQo', '150', '2023-08-07', 'UNNUMBERED MEMORANDUM', 'active'),
(3007, 'CIDLEA 0802251', 'ALS GRADUATION AND COMPLETION CEREMONY', 'http://depedmanila.net:5000/d/s/uzeymCvGZ6OpY3DjbMM1QDimupwuelvH/645oQ5ZiiD38HeARksDYRW8Rep0VxQ75-9LJgljYUtQo', '151', '2023-08-07', 'UNNUMBERED MEMORANDUM', 'active'),
(3008, 'sgodeliz0802446', 'ADDENDUM TO DIVISION MEMORANDUM NO. 389, S. 2023 (TRAINING AND PLANNING WORKSHOP ON THE FORMULATION OF THE SCHOOL IMPROVEMENT PLAN (SIP) FOR 2023-2028 USING DEPEDS STRATEGIC FRAMEWORK AND PILLARS ', 'http://depedmanila.net:5000/d/s/uzeymDLfGEkJ06vE9LdcGEe8q02isIqn/4nKYuu2vkdfo-bYvqLdXxXiJfKsHvygu-57LAxiEUtQo', '152', '2023-08-07', 'UNNUMBERED MEMORANDUM', 'active'),
(3009, 'cidbren0803330', 'TARA BASA! CAMP LEARNING FACILITATORS TRAINING', 'http://depedmanila.net:5000/d/s/uzeymAMsOOq2onWLJSsxBHIyKUFXCKM1/_yfpacXRxMdLraBLaC4oVw9MwJgD_xSF-ErOA-FAUtQo', '394', '2023-08-07', 'NUMBERED MEMORANDUM', 'active'),
(3010, 'cidbren0801239', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 337, s. 2023 (DEVELOPMENT OF GRADES 2 AND 3 MATHEMATICS COMICS)', 'http://depedmanila.net:5000/d/s/uzeymCUrryqqfwRZRTcQzcfKW6vdHOST/d6LJkxyvwZKCiq4OXdsydlEGyyC12dsb-4LKgbRgUtQo', '153', '2023-08-07', 'UNNUMBERED MEMORANDUM', 'active'),
(3011, 'rcrdsdarn0727313', 'ANNOUNCEMENT OF THE 2023 SEAMEO-JAPAN EDUCATION FOR SUSTAINABLE DEVELOPMENT (ESD) AWARD', 'http://depedmanila.net:5000/d/s/uzeymX4mo8O8Yb4pWyXWD667EIGrqk5i/QhICbFmIjOF5Er62zl2n_-K866zqWXQo-vrLAcgEUtQo', '395', '2023-08-08', 'NUMBERED MEMORANDUM', 'active'),
(3012, 'cidbren0804128', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 260, S. 2023 (PROJECT LR-LEAD (LANGUAGE EDITING AND ANNOTATIONS OF LEARNING MATERIALS DEVELOPED)', 'http://depedmanila.net:5000/d/s/uzeymTfbFIAbjHCbipgWzpW3WdJJ0RZk/XwsMqRkRCET4JkMSpKLQ0_0wsuxQUPC9-o7IguPITtQo', '154', '2023-08-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3013, 'ICTTRAI0804682', 'DEPLOYMENT OF DEPEDMANILA.NET ACCOUNTS', 'http://depedmanila.net:5000/d/s/uzeymXVBVGXouxHA9r3QlgD59d7kXlHm/6dyRWQ0I9F6t_xccOSxkNHSkeDlsAhgv-fbLgCsUTtQo', '156', '2023-08-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3014, 'cidbren0803737', 'PAANYAYA MULA SA KOMISYON NG WIKANG FILIPINO SA PAGGAMIT/PAGSASALIN SA WIKANG FILIPINO NG MGA DOKUMENTO', 'http://depedmanila.net:5000/d/s/uzeymXvaCOjoQjvNBQZ5V8duCGnGy1LO/XV27dCOWlXw_GtbYBiH4ea2HZD8wUNta-lbIAzOkTtQo', '155', '2023-08-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3015, 'rcrdsdarn0801389', 'PARTICIPATION IN THE INSTRUMENTATION AND IMPROVISATION IN SCIENCE AND MATHEMATICS TEACHING AND LEARNING', 'http://192.168.88.4:5000/d/s/uzeymUEnVSgpZaaDRj5VnI0pad9XEIKd/oViXBSqzgVybmReAKP5OBOMIM6uYaC1t-qbIgx_oTtQo', '396', '2023-08-08', 'NUMBERED MEMORANDUM', 'active'),
(3016, 'rcrdsdani0802254', 'INVITATION TO SHEAN, INC. MID-YEAR SCIENTIFIC CONFERENCE 2023', 'http://depedmanila.net:5000/d/s/uzeymSg0I2mlDiuIHTDT7zGZ0e2ETpAX/L3Db2iusFi23Vkj_YoOSpzBOezLuV-K6-xLLAQAkUtQo', '197', '2023-08-08', 'DIVISION ADVISORIES', 'active'),
(3017, 'CIDLEA 0802334', 'ADDENDUM TO DIVISION MEMORANDUM NO. 345, S. 2023 (50TH DIVISION-WIDE ALTERNATIVE LEARNING SYSTEM GRADUATION AND COMPLETION CEREMONY)', 'http://depedmanila.net:5000/d/s/uzeymLa22IswvnmKyhLeflDXBOv69egn/_dZjeR2mT-1uESIVLeG5hkd4c3FbiPtZ-y7Jg6w4UtQo', '157', '2023-08-09', 'UNNUMBERED MEMORANDUM', 'active'),
(3018, 'cidbren0809619', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 260, S. 2023 (PROJECT LR-LEAD (LANGUAGE EDITING AND ANNOTATIONS OF LEARNING MATERIALS DEVELOPED)', 'http://depedmanila.net:5000/d/s/uzeylGRtjOEI226aoT99X1bMc368JLx6/v_l7Bg47_HwHz2WPE094sXzbUqkNCB7Q-LrIgRoATtQo', '158', '2023-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(3019, 'rcrdsdarn0727678', 'BUILDING THE DISASTER RISK REDUCTION MANAGEMENT (DRRM) CAPABILITY OF STEM TEACHERS IN NCR THROUGH DEVELOPMENT OF LEARNING ACTIVITIES ON EARTH SCIENCE', 'http://depedmanila.net:5000/d/s/uzeylFjtuCz2ao39CJOkxffNjXWDtNd7/_3DDDTd5Hb6tfvvHDhhoa6SndRKfrzhT-H7IAx3UTtQo', '159', '2023-08-10', 'UNNUMBERED MEMORANDUM', 'active'),
(3020, 'cidbren0809170', 'LEARNING TOOLS AND EQUIPMENT (LTE) UTILIZATION SURVEY', 'http://depedmanila.net:5000/d/s/uzeylCKiLGRXcWm1q5nb666cLqbwYqiy/I0OQQRmZZFwTtnQ4wCGE6O90VmWt1FqB-YbJgxboTtQo', '397', '2023-08-10', 'NUMBERED MEMORANDUM', 'active'),
(3021, 'recrtnic0804172', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NATIONAL PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeylDT6rcDJCsly2qxrvb3rv651pWyK/6OkptgMY4zh8pCtS8hl2ezZ2n2knvCjF-WrJA0LATtQo', '398', '2023-08-10', 'NUMBERED MEMORANDUM', 'active'),
(3022, 'recrtnic0804942', 'COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR CITY-PAID PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeylCl72OWrAnFcpBHopprsY48iktkY/9c37ni8fkVR-ao_r5jos4NqOUAUUYDyd-P7Jg-aYTtQo', '401', '2023-08-10', 'NUMBERED MEMORANDUM', 'active'),
(3023, '08102023', 'CORRIGENDUM TO OFFICE MEMORANDUM NO. 007-23 \"REITERATION OF THE EXISTING GUIDELINES ON THE PROVISION AND USE OF OFFICIAL MOBILE PHONES, POSTPAID LINES AND PREPAID LOADS FOR DIVISION OFFICE EMPLOYEES\"', 'http://depedmanila.net:5000/d/s/uzeylDBVjWFmHkBZ2jbZytnIvVx5xkka/KR50Mo5t0aec2PrwUb96pWA95RCEogGK-NbLAKYgTtQo', '12', '2023-08-10', 'OFFICE ORDER', 'active'),
(3024, 'sgodsias0811676', '2023 BRIGADA ESKWELA IMPLEMENTING GUIDELINES', 'http://depedmanila.net:5000/d/s/uzeylEB6goPREinEplFJhViCPvtWsTWK/iRnTXvuG9MHSuaSt_pQu1iLj4UlXoRyY-CrIgp2wTtQo', '402', '2023-08-11', 'NUMBERED MEMORANDUM', 'active'),
(3025, 'rcrdsdarn0801253', 'GBF STEM COLLAB 2023 CALENDAR OF WEBINAR TOPICS AND ACTIVITIES', 'http://depedmanila.net:5000/d/s/uzeylRnqwWSobXhtGSWoLKdbLlLajJJB/mcw8gJx7aX9oRIuYjxktJHHPVgXWV4hX-9LHgtlITtQo', '126', '2023-08-14', 'DIVISION CIRCULARS', 'active'),
(3026, 'rcrdsdani0804380', 'S.O. DR. JOSEPHINE M. PAMITTAN, MEDICAL SPECIALIST I TEMPPORARILY DESIGNATED AS OFFICER-IN-CHARGE OF THAT HOSPITAL', 'http://depedmanila.net:5000/d/s/uzeylTDqawmgENXHEOPP7gJdtoYaJ4LZ/BT0s_le1DY3s0bL26z1-Ak2XuUQx0ER0-3rHA-ToTtQo', '400', '2023-08-14', 'NUMBERED MEMORANDUM', 'active'),
(3027, 'rcrdsdani0804123', 'RONALD I. FLORES DESIGNATED AS ACTING OFFICER-IN-CHARGE OF THE SAID DEPARTMENT', 'http://depedmanila.net:5000/d/s/uzeyleR0EwrsVi6fB7oFu9wOd353eOXV/CUVwKi1DWpIWvFl5IrQINVVYv9g10MtX-8bDgSz4StQo', '399', '2023-08-14', 'NUMBERED MEMORANDUM', 'active'),
(3028, 'ictnath0804887', 'PROMO PERMIT INVITATION TO THE SALES PROMOTION TITLED YAN ANG ISIP BATA: TANG KIDNOVATOR CAMP', 'http://depedmanila.net:5000/d/s/uzeylQNrI88Bf0rmyh95GdVxVDBOCTq2/65xfK3h10AVGK4cDGID0Sf1UQ6Hm3tt0-BLKgIGsTtQo', '203', '2023-08-14', 'DIVISION ADVISORIES', 'active'),
(3029, 'icttrai0804326', 'NATIONAL COORDINATING BODY OF CLUBS FOR UNESCO IN THE PHILIPPINES (NCBUCP.) APPLICATION TO APPLY FOR NEW CLUBS FOR UNESCO 2023', 'http://depedmanila.net:5000/d/s/uzeylSEFdeMfhlDX0xqKSTBa4olP1w5g/zj7qDlpwVsoUR7z_Ij3I8bJ6R7OSytOx--rHg1FkTtQo', '204', '2023-08-14', 'DIVISION ADVISORIES', 'active'),
(3030, 'rcrdsdani0803661', 'MIND EDUCATION SPECIALIST TRAINING', 'http://depedmanila.net:5000/d/s/uzeylUDRYC6ip8qJYMt6OFANoKg0iK5B/bMFOWytuqWk1anpYFHh9Dv_PW_4vlx6U-zLHgxy0TtQo', '205', '2023-08-15', 'DIVISION ADVISORIES', 'active'),
(3031, 'rcrdsdarn0809475', 'DOKYUBATA 2023 CONTEST MECHANICS', 'http://depedmanila.net:5000/d/s/uzeylZbp1YOxkSwuExqTyB3oB5Z3CPTd/WyVRU5P-LKliiJqR1QnfJIcsrSPTCWxz-17HA-DcTtQo', '206', '2023-08-15', 'DIVISION ADVISORIES', 'active'),
(3032, '08162023', 'ADDENDUM TO DIVISION MEMORANDUM 209-23: RECOMPOSITION OF THE BIDS AND AWARDS COMMITTEE FOR THE FISCAL YEAR 2023', 'http://depedmanila.net:5000/d/s/uzeylhYafmhBtD1EOH3WaXvQhDu5yIaF/7IkIUo34meg6omE15t0ZB2RzxBAQKggR-z7HABS4TtQo', '403', '2023-08-16', 'NUMBERED MEMORANDUM', 'active'),
(3033, 'ICTKEVI0731937', 'BALLET MANILAS INVITATION TO GERARDO FRANCISCOS IBONG ADARNA', 'http://depedmanila.net:5000/d/s/uzeymJ1dre8zaK4qmssF4CqqidbPEyyr/iE0hKz7tSoDD21wHbGhXcmFp8Nz6e_CL-K7Ig038TtQo', '201', '2023-08-16', 'DIVISION ADVISORIES', 'active'),
(3034, 'RCRDSBRYL0803282', 'BAGUIO CITY 3-DAY NATIONAL SEMINAR-WORKSHOP FOR NON-TEACHING PERSONNEL ON E-PERSONNEL AND LEADERSHIP 5.0 FOR HUMAN RESOURCE, RECORDS AND OFFICE MANAGEMENT AND ADMINISTRATION PHILIPPINE CONTIUING', ' https://gofile.me/71xfF/zD5a4mUDQ', '202', '2023-08-09', 'DIVISION ADVISORIES', 'active'),
(3035, 'sgodsias0811893', 'DIVISION VIRTUAL ORIENTATION ON THE CONDUCT OF ENROLLMENT FOR SY 2023-2024', 'http://depedmanila.net:5000/d/s/uzeyliyaKAcBiGzPSL84fBPnlHIZxxRZ/9680PABVe0bf3P6yzAsU9iqkOQddjC2l-hrGgCucStQo', '160', '2023-08-16', 'UNNUMBERED MEMORANDUM', 'active'),
(3036, 'cidbren0814949', 'SCHOOL LIBRARY PROFILLING (DM-CT-2023-183) AND MORE', 'http://depedmanila.net:5000/d/s/uzeyljXmaKuKp7IhzV1cvDlOskRUu66N/l22BP7pvwSe-Kp9Lu70_wB656Af75bUT-eLHgk9oStQo', '161', '2023-08-16', 'UNNUMBERED MEMORANDUM', 'active'),
(3037, 'hlthjen0810570', 'PROFESSIONAL MEETING', 'http://depedmanila.net:5000/d/s/uzeylfqztKfCQW5EHq0MB0zkcW6RLNlc/AZ174mLJhqv_TKn37PdmrMBQGW8p88Mr-wrBgpw4StQo', '162', '2023-08-17', 'UNNUMBERED MEMORANDUM', 'active'),
(3038, 'sgodsias0811275', 'INTERNATIONAL YOUTH DAY CELEBRATION 2023', 'http://depedmanila.net:5000/d/s/uzeylh8Bye2uo0WRgT2k00tosRMAYkQ1/vg3tOJELdbWoorTaC-0TUjWMLb7aYGRn-tbAAVgEStQo', '163', '2023-08-17', 'UNNUMBERED MEMORANDUM', 'active'),
(3039, 'sgodsias0811192', 'REITERATION ON THE ADOPTION OF THE GUIDELINES ON ENROLLMENT FOR SCHOOL YEAR 2023 - 2024', 'http://depedmanila.net:5000/d/s/uzeylat16uYqGXiiI2QaL89lWvpqvUOI/4ugmhBlgzOQTox1Sx5AS9z8x6Ocsf_JT-LLFAaI0StQo', '405', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3040, 'cidbren0814616', 'DIVISION LEARNING RESOURCE COMMITTEE PER LEARNING AREA', 'http://depedmanila.net:5000/d/s/uzeylaJoqkm68rrZm3iQJsVHnlL9QbG5/zGssxfKV3F7iSPDc-xpFzyT22kwFrXrV-I7FgIIcStQo', '406', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3041, 'cidbren0814673', 'MONITORING OF SCHOOL LIBRARIES AND LIBRARY HUB', 'http://depedmanila.net:5000/d/s/uzeylbb0w8OhypaswmQDuYdb4VYZSTXW/6asw83WVScyFZCbPjY1_TGf4X8CUpsUA-GrFAeYAStQo', '407', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3042, 'rcrdsbryl0804674', 'ASSUMPTION OF DIRECTOR IV VICTORIA F. ESBER AS THE NEW REGIONAL DIRECTOR OF THE CIVIL SERVICE COMMISSION NATIONAL CAPITAL REGION (CSC-NCR)', 'http://depedmanila.net:5000/d/s/uzeylcADCI668hhXHCRRuu8PwGeG8GaR/GI99AvANIGbVau6s26RTF4rsRBGfSxmo-D7GAtWoStQo', '408', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3043, 'cidbren0814930', 'SUBMISSION OF SCHOOL LIBRARY PROFILE', 'http://depedmanila.net:5000/d/s/uzeyle0bXoZoXM00xYbnW4tNotK7rywj/jUwGbu9Kbp7jpJPpG99tvOJwtvJwIOV6-CLHA42EStQo', '409', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3044, 'sgodsias0801134', '2023 PROGRAMS, PROJECTS AND ACTIVITIES (PPAs) IN PARTNERSHIP WITH MANILA ANTI-DRUG ABUSE COUNCIL (MADAC) SUPPORTED BY THE MANILA PEACE AND ORDER COUNCIL (MPOC)', 'http://depedmanila.net:5000/d/s/uzeyldRPHefXbrRKXHiENPCeAqYSV9cx/UeSAVNCtfwCAslM-DAMvPOquYSG4TN09-AbHADFgStQo', '410', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3045, 'cidchar0815295', 'VACANCIES, SCREENING AND SELECTION PROCESS OF APPLICANTS FOR MADRASAH EDUCATION PROGRAM (MEP)-ARABIC LANGUAGE AND ISLAMIC VALUES EDUCATION (ALIVE) ASATIDZ', 'http://depedmanila.net:5000/d/s/uzeylcRoKOps61H86yQoLFQse02eNJ2q/ln0wfZ6WX5W4ie7epe4_gTRqDFpuOy5m--bAADk8StQo', '411', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3046, 'sgodeliz0811215', 'GUIDELINES FOR THE REQUEST ON THE USE OF THE SCHOOLS DIVISION OFFICE TEMPORARY FUNCTION ROOM (FORMERLY SDO MANILA CANTEEN)', 'http://depedmanila.net:5000/d/s/uzeylf0CV6eJD9FVxhv8KKRRdROWu81U/HS11Ts_g0ZANOzDapQAtP_rTfAGRJOOc-6bCgpy0StQo', '13', '2023-08-17', 'OFFICE ORDER', 'active'),
(3047, 'RECRTNIC0726214', 'EXTENSION OF APPLICATION FOR CHIEF EDUCATION SUPERVISOR POSITION IN THE DIVISION OF CITY SCHOOLS, MANILA', 'http://192.168.88.4:5000/d/s/uzeyleR0EwrsVi6fB7oFu9wOd353eOXV/CUVwKi1DWpIWvFl5IrQINVVYv9g10MtX-8bDgSz4StQo', '412', '2023-08-17', 'NUMBERED MEMORANDUM', 'active'),
(3048, 'rcrdsdarn0811567', 'ENCOURAGEMENT TO SUPPORT THE SCREENING IN SCHOOLS OF THE BIONIC \"OSCAR M. ALCAREZ, ANG BOY SCOUT NA BAYANI\" PRODUCED BY ETR FILMS', 'http://depedmanila.net:5000/d/s/uzeylbJPo2kirqpNtw5jX4VjDY3OAWoK/-aj6hrBodkfIIOmG1Tj6x2dR6d8k16Eh-NLEApZQStQo', '128', '2023-08-17', 'DIVISION CIRCULARS', 'active'),
(3049, 'rcrdsdarn0809350', 'INVITING THE PARTICIPATION OF SENIOR HIGH SCHOOL AND JUNIOR HIGH SCHOOL TEACHERS HANDLING SPECIAL SCIENCE CLASSES TO ATTEND THE CURIES CLASS', 'http://depedmanila.net:5000/d/s/uzeylYBpNAZHQe6MihiZN5Vbg8rCZeNc/sIHIOwjBMy61-wB6pwsZjCij5-FDxyH9-O7HAbqAStQo', '127', '2023-08-17', 'DIVISION CIRCULARS', 'active'),
(3050, 'rcrdsdarn0816681', 'GOVERNMENT FINACIAL MANAGEMENT INNOVATORS CIRCLE (GFMIC), INC', 'http://depedmanila.net:5000/d/s/uzeylXcd70GQDH5cGyzvJt2fOwRUc39j/xrqvyH81TocrsTVIOBDPBvksdbUqRIxo-arHgENAStQo', '207', '2023-08-17', 'DIVISION ADVISORIES', 'active'),
(3051, 'rcrdsdarn0816633', 'SCHEDULE KOREAN LANGUAGE TRAINING FOR THE SPECIAL PROGRAM IN FOREIGN LANGUAGE-KOREAN (SPFL-KOREAN) BATCH 6 TEACHER - TRAINEES', 'http://depedmanila.net:5000/d/s/uzeylZ2clOjrE2JE4KNnRiH0a1bgeY2Y/6i__sqMt0MsFCfe5ghxFIkM5oXBCnldh-XLEgJMYStQo', '208', '2023-08-17', 'DIVISION ADVISORIES', 'active'),
(3052, 'rcrdsdarn0814888', 'BRAINMESH INTER-HIGH SCHOOL (BMH) 2023', 'http://depedmanila.net:5000/d/s/uzeylyjK3M3p71kiEAVwbXYvI1qZVtti/t2qeKzaSRO6UtH7E0oTDQj9hc86LSjpE-rrAguv0RtQo', '209', '2023-08-18', 'DIVISION ADVISORIES', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(3053, 'rcrdsbryl0814628', '2023 REGIONAL SCIENCE, TECHNOLOGY AND INNOVATION WEEK', 'http://depedmanila.net:5000/d/s/uzeylvBKvSDRiLFohWsZvDXW0gDVlGBy/TRw22-gFo81l59dXweocAer7zCrUlso_-xbDgFA8StQo', '210', '2023-08-18', 'DIVISION ADVISORIES', 'active'),
(3054, 'rcrdsdarn0815124', 'FIBA BASKETBALL WORLD CUP 2023', 'http://depedmanila.net:5000/d/s/uzeylz9ikUu8FfDc0bkCIB56dYH3Lm90/HxcM3wSEDYAvWdCE7Huks7ASqVQdW4Lq-zbDA2hwStQo', '211', '2023-08-18', 'DIVISION ADVISORIES', 'active'),
(3055, 'rcrdsdarn0815412', '34TH NATIONAL STATISTICS MONTH CELEBRATION', 'http://depedmanila.net:5000/d/s/uzeyly1KEAM42fPqZbxxMre2aXozO2p6/yHFSkF1s_OvsVlDpB-nZO_yvJqsYBnQ0-4rBgqikStQo', '212', '2023-08-18', 'DIVISION ADVISORIES', 'active'),
(3056, 'rcrdsdarn0815575', 'TANGHALAN MANDALUYONG', 'http://depedmanila.net:5000/d/s/uzeylza7Rc6l6kxrcNrO5QYZ0UjdZEjP/OfebULiXvC8papuw9ISZCT9V_ZMIbNlv-SLFgEroStQo', '213', '2023-08-18', 'DIVISION ADVISORIES', 'active'),
(3057, 'rcrdsdarn081034', 'INVITATION REGARDING VALUES RESTORATION TRAINING THE TRAINERS (VROTTT) ON AUGUST 29-SEPTEMBER 1, 2023', 'http://depedmanila.net:5000/d/s/uzeym10760Wj8uXdhEJa3uH2CpdKlXmP/TQO9-0k-EzpNASFjXBH4ZIH5rSFQH_Vz-YrEguscStQo', '214', '2023-08-18', 'DIVISION ADVISORIES', 'active'),
(3058, 'OSDSNIKK0818547', 'DELINEATION OF AUTHORITIES OF SDO-OFFICIALS', 'http://depedmanila.net:5000/d/s/uzeym0ZiOsEljLqpCpPgWQa5BigTL5XW/wGLhL7P77U3L_hCW4pBqsnd5EmuaVvd2-lLHgNPYStQo', '413', '2023-08-18', 'NUMBERED MEMORANDUM', 'active'),
(3059, 'asdsmlala0818708', '2023 A-BEST CONFERENCE', 'http://depedmanila.net:5000/d/s/uzeym1ZJMAcnBBq67rakm3HgQ7eTCd9F/S2X2_4UjNE-NuUTaH5Di2tLwlPlB0DJD-cLFAmtYStQo', '215', '2023-08-18', 'DIVISION ADVISORIES', 'active'),
(3060, 'sgodsias0815691', 'CONDUCT OF COACHING AND MENTORING SESSIONS FOR THE NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS (NQESH) 2021 CATEGORY B ASPIRING SCHOOL HEADS', 'http://depedmanila.net:5000/d/s/uzeym6otGSLddHRnAWdTNWMRZ0vuwsg5/9CS4O0-6c-vutXjjfGdpKdPsfhlt1ywl-m7FgZQATtQo', '414', '2023-08-18', 'NUMBERED MEMORANDUM', 'active'),
(3061, 'sgodeliz081821', 'CPD SEMINAR ON BASIC UNDERSTANDING AND ASSESSMENT SKILLS IN THE ENHANCEMENT OF EXECUTIVE FUNCTION IN YOUNG CHILDREN FOR ALL PROFESSIONAL TEACHERS IN PRE-SCHOOL AND GRADES 1-3', 'http://depedmanila.net:5000/d/s/uzeym1zi3ItHy1N3BV2GRP0TSfMht1hi/WRJ5_EiKAnq0du2H_wXIDh53E5ekceQm-g7FAh-YStQo', '216', '2023-08-18', 'DIVISION ADVISORIES', 'active'),
(3062, 'SGODSIAS0816359', 'DIVISION WIDE OPLAN BALIK ESKWELA FOR SY 2023-2024', 'http://depedmanila.net:5000/d/s/uzeylkoyfg7Oke59Go29lqsI35yp3ENV/tmDq6XxGgSJgl2_CgGVp0zY2KDFLr9d5-prAgPPYRtQo', '415', '2023-08-22', 'NUMBERED MEMORANDUM', 'active'),
(3063, 'sgodsias0816666', 'SUBMISSION OF RESEARCH MANUSCRIPTS AND PUBLICATIONS OF THE REGIONAL RESEARCH JOURNAL MANYUSKRIP', 'http://depedmanila.net:5000/d/s/uzeyll6ZnmBqUWLD4WQhBI58X9bKvvyv/a97uPNx0B0bXW48HWWzIdjLOLHeQ5w4n-nbAATusRtQo', '416', '2023-08-22', 'NUMBERED MEMORANDUM', 'active'),
(3064, 'cidmeri0816135', 'POST EVALUATION OF SCHOOL NLC', 'http://depedmanila.net:5000/d/s/uzeylk6yqUCU40KI1cCUSJtKlLUme9Fk/fVLx0VR2UTVZpvVlTk5oQt4joorXzHIN-aLCglrURtQo', '164', '2023-08-22', 'UNNUMBERED MEMORANDUM', 'active'),
(3065, 'rcrdsdani0810478', 'EDUCATION PLAYS BY TANGHALAN AT OBRA', 'http://depedmanila.net:5000/d/s/uzeylqmYPK5pO5JdW30BseDjoWS2y6EP/TefI3QX1WIGSOWd4Hbu3D3-UsAZIgvu1-7b-gTjQRtQo', '220', '2023-08-23', 'DIVISION ADVISORIES', 'active'),
(3066, 'rcrdsdarn0814373', 'CENTER FOR HUMAN RESEARCH AND DEVELOPMENT FOUNDATION INC', 'http://depedmanila.net:5000/d/s/uzeylm6Al4ZTeKRZqyC5AIJq530OxZ09/69vpf-0PNcvEjGLuirdXLS9o1ZrrjT7_-N7DgDn4RtQo', '217', '2023-08-23', 'DIVISION ADVISORIES', 'active'),
(3067, 'rcrdsbryl0815262', 'FEDERATION OF APSSAM-MAPESA-MAPPRESA PRIVATE SCHOOLS ASSOCIATION, INC. (FAAMPSA) ANNUAL GENERAL ASSEMBLY', 'http://depedmanila.net:5000/d/s/uzeylmfN1E6geypxj39eakZSB3TyuJ8T/yDqMm_KfUflwgFO8BZUV9P8zvJtN6mUy-MLAgK3URtQo', '218', '2023-08-23', 'DIVISION ADVISORIES', 'active'),
(3068, 'rcrdsdarn0815102', 'ARCZONE PROFESSIONAL DEVELOPMENT INC', 'http://depedmanila.net:5000/d/s/uzeyllfm3wK90GnumDERnGUnONou7ogK/OWgxHc2ibDZNddl-sqDs7Fa_3VNib4wB-F7Cgo1cRtQo', '219', '2023-08-23', 'DIVISION ADVISORIES', 'active'),
(3069, 'rcrdsbryl0817822', 'UPDATE ON THE DEPED-MATATAG LOGO AND PRESCRIBING THE USE OF BAGONG PILIPINAS LOGO', 'http://depedmanila.net:5000/d/s/uzeylnexyWNxvwg4Ae1twe7h39un0Moz/iJO5X9lmngZKPXpIeGlKzV8wQCB0pjQl-wb8A8PMQtQo', '418', '2023-08-23', 'DIVISION ADVISORIES', 'active'),
(3070, 'rcrdsdani0809978', 'TRAINING IN THE JUNIOR FIRST AIDER PROGRAM AND YOUTH VOLUNTEER FORMATION COURSE', 'http://depedmanila.net:5000/d/s/uzeylowA3qLgy8Lt9j9HqVPDZg9TLVjs/HIakXN3LxP0-3Upqmp7UARjunKgW4ZiV-2b9gbhARtQo', '130', '2023-08-23', 'DIVISION CIRCULARS', 'active'),
(3071, 'rcrdsbryl0804467', '123RD PHILIPPINE CIVIL SERVICE ANNIVERSARY', 'http://depedmanila.net:5000/d/s/uzeylnEZHO8orwcphIbZMaPVHNbD54nf/0MFIc79kiTPfWrpacntCpneOs6U0YoIc-4r-grycRtQo', '129', '2023-08-23', 'DIVISION CIRCULARS', 'active'),
(3072, 'RECRTHAN0816149', '123rd PHILIPPINE CIVIL SERVICE ANNIVERSARRY (PCSA)', 'http://depedmanila.net:5000/d/s/uzeymJS2YmFAXKoIZGoZymtrCqWEtEBl/0HK38bbAP9beX7x57AH_Ju1uh6pZQdZu-U7Dg9a0RtQo', '417', '2023-08-24', 'NUMBERED MEMORANDUM', 'active'),
(3073, 'sgodeliz0818934', 'TRAINING WORKSHOP ON EMBARKING REGIONAL INITIATED DEVELOPMENT AUTOMATION SYSTEM: THE INTRODUCTORY TO SDO WIDE UTILIZATION', 'http://depedmanila.net:5000/d/s/uzeymPyoYMIaf9cAAlzfIbKAEk0PV346/gR5JvbqRoHtjLiRcZhlGOGBTci4rq5yd-p7_AttAQtQo', '420', '2023-08-24', 'NUMBERED MEMORANDUM', 'active'),
(3074, 'rcrdsdani0808520', 'MMHC REQUEST TO CONDUCT OF ACTIVITY', 'http://depedmanila.net:5000/d/s/uzeymM0QjQPpl5hz3SZorjmW6GbSqM9G/GnuyHQe8tkvNLBwV7BkCxAok75ZDW7g4-cLAgI8QRtQo', '131', '2023-08-24', 'DIVISION CIRCULARS', 'active'),
(3075, 'rcrdsbryl0818584', 'INVITATION TO THE 4TH PHILIPPINE NATIONAL VEDIC MATHEMATICS OLYMPIAD', 'http://depedmanila.net:5000/d/s/uzeymGTFh2np3kMgWZVRtYq3EJ4QREqn/U6XnFEWx1XfmxeSbr3A2IXn9WJE95eAy-e7CANtERtQo', '221', '2023-08-24', 'DIVISION ADVISORIES', 'active'),
(3076, 'OSDSNIKK0824116', 'DELINEATION AND SIGNING AUTHORITIES OF ADMINISTRATIVE AND FINANCE SERVICES  OF NATIONAL AND CITY-PAID OFFICIALS AND PERSONNEL', 'http://depedmanila.net:5000/d/s/uzeymQY0oWVVLvKsTOSj8zrGBsEkHUOM/0oMuGNmZFDEV0sYjigEAUhevtV5qMfDd-tL9gieEQtQo', '419', '2023-08-24', 'NUMBERED MEMORANDUM', 'active'),
(3077, 'RCRDSBRYL0803282', 'BAGUIO CITY 3-DAY NATIONAL SEMINAR-WORKSHOP FOR NON-TEACHING PERSONNEL ON E-PERSONNEL AND LEADERSHIP 5.0 FOR HUMAN RESOURCE, RECORDS AND OFFICE MANAGEMENT AND ADMINISTRATION PHILIPPINE CONTIUING', 'http://depedmanila.net:5000/d/s/uzeymECSeUM3nyQtMZr52MC2zZPY2Yq6/MSzLmXB7uzdI1ZYhOO83H1wwuLVpPQVp-m7LABO4TtQo', '202', '2023-08-09', 'DIVISION ADVISORIES', 'active'),
(3078, 'rcrdsdarn0822228', 'CONDUCT OF MARY HELP OF CHRISTIAN CRUSADE IN VARIOUS SECONDARY SCHOOLS IN NATIONAL CAPITAL REGION', 'http://depedmanila.net:5000/d/s/uzlHZu4HuuyORMH3F91E2jnHqNTN2Pkl/cfMCUzdMC8X2q1eMtokZ6UeQ1jhIDBTT-sreA0tIjtQo', '222', '2023-08-29', 'DIVISION ADVISORIES', 'active'),
(3079, 'rcrdsbryl0818214', 'AGORA: CROSSROADS OF CREATIVITY, CULTURE AND IDEAS PRESENTS PERYAHAN NG SINING, BUKAL NG GALING (PERYA)', 'http://depedmanila.net:5000/d/s/uzlVygmMRNTMEfsKabpmTdCAZg2paSLQ/IghZlfT2hJgYqBAAJEUYdM0O5uOYTbbe-6bdAk58ktQo', '223', '2023-08-29', 'DIVISION ADVISORIES', 'active'),
(3080, 'sgodsias0824398', 'ABS-CBN BALIK ESKWELA COVERAGE', 'http://depedmanila.net:5000/d/s/uzlotXTQgTM4MUZJcWIFJxhLUQWlsEXn/qah0XiORbu_gyQZPL6mArZF8NWvg_AXh-D7gAan4ltQo', '132', '2023-08-29', 'DIVISION CIRCULARS', 'active'),
(3081, 'sgodsias0822633', 'ADMINISTRATION OF THE 2023 EDUCATIONAL MANAGEMENT TEST (EMT)', 'http://depedmanila.net:5000/d/s/uzm6qUo3JxYVDAjsjuU5ibOoAjlKyOkJ/5ukeSBkUNFtgWjtRvIR53jyhG2s-5nQd-QLigZ2smtQo', '166', '2023-08-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3082, 'sgodsias0824662', 'OPLAN-BALIK ESKWELA MONITORING', 'http://depedmanila.net:5000/d/s/uzmj4iw9BFbtAwqOO8UbhmblY5DkjxVT/1jbV8yJxt8L90Soi65uNESei1BbyIsDL-nLjgem8otQo', '421', '2023-08-29', 'NUMBERED MEMORANDUM', 'active'),
(3083, 'ASDSCJOAN0823567', 'DESIGNATION AS OVERSEER OF LEGAL AFFAIRS AND COMPLAINTS SERVICES', 'http://depedmanila.net:5000/d/s/uzmyez3i0xRh3Y5Q7EEkobrIAJUYrcF4/A1iCZNtsg8skRWFVQ_t2xnJ66k3xakEa-sLhggCgptQo', '422', '2023-08-29', 'NUMBERED MEMORANDUM', 'active'),
(3084, 'ASDSCJOAN0822378', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 413, S. 2023 (DELINEATION OF AUTHORITIES OF SDO OFFICIALS)', 'http://depedmanila.net:5000/d/s/uznH1v78FCKnkP1C7OrpJBW6Dm6oIKrd/a9Wg1vAEH03RuAm6nVbBSvK-DnHjl19C-1bjgTEEqtQo', '165', '2023-08-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3085, 'rcrdsdarn0815150', 'CONDUCT OF THE DIVISION ROLLOUT OF THE ABC+ PROJECT ON INSTRUCTIONAL LEADERSHIP TRAINING (ILT)', 'http://depedmanila.net:5000/d/s/uzoVTP3YmX3BbOfXqJOSvSVhC1puCCje/g_yJSkf9fEDSnS9wIv4Bt-xZFyzxg26z-97hA5SIutQo', '423', '2023-08-29', 'NUMBERED MEMORANDUM', 'active'),
(3086, 'sgodsias0824775', 'ADMINISTRATION OF THE NATIONAL LEARNING CAMP ASSESSMENT (POST-TEST) FOR INCOMING GRADE 8 AND GRADE 9 LEARNERS FOR SY 2023-2024', 'http://depedmanila.net:5000/d/s/uzotJCl6UEKocmBqiaRqz0hbqn3qruvF/k7luAiKOIloT1rMSWyEaFQEHj3Yn0C9F-ILmgS18vtQo', '424', '2023-08-29', 'NUMBERED MEMORANDUM', 'active'),
(3087, 'rcrdsdarn072794', 'SUBMISSION OF AFFIDAVIT OF UNDERTAKING ON DEFECTS AND DEFICIENCES OF SCHOOL BUILDINGS AS INSPECTED BY THE BUREAU OF FIRE PROTECTION (BFP) MANILA', 'http://depedmanila.net:5000/d/s/uzpDVkcXTLMSVQfQNLgkZarHFxSthAiu/UTcG0OpBEmb27O2MZVC5P8BA4XJ9jAza-UrmgcG0wtQo', '425', '2023-08-29', 'NUMBERED MEMORANDUM', 'active'),
(3088, 'sgodsias08236', 'ADDENDUM TO DIVISION MEMORANDUM NO. 414, S. 2023 CONDUCT OF COACHING AND MENTORING SESSIONS FOR THE NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS (NQESH) 2021 CATEGORY B ASPIRING SCHOOL HEADS', 'http://depedmanila.net:5000/d/s/v0cZIlozlH0cHn6DiYuubbsiEbmqHCZ9/3jrUBMgsGhkFBAK7M5o58hO9mWFFGPF5-ebhACJPOtQo', '167', '2023-08-30', 'UNNUMBERED MEMORANDUM', 'active'),
(3089, 'sgodeliz0823655', 'PLANNING WORKSHOP ON THE CONDUCT OF REGIONAL TRAINING ON ABC+ ON INSTRUCTIONAL LEADERSHIP PROGRAM (ILP)', 'http://depedmanila.net:5000/d/s/v0cx1AFZ32wd9g57uMItNdeRQpA2U9aR/_Kk-dBQle3zKrca8HkfeeWZJJf2le0-L-KLlAebXPtQo', '168', '2023-08-30', 'UNNUMBERED MEMORANDUM', 'active'),
(3090, 'adminnikk0823682', 'PHILIPPINE CIVIL SERVICE (CSC) NATIONWIDE BLOODLETTING ACTIVITY', 'http://depedmanila.net:5000/d/s/v0dFYrV8XVGKy47NknjNaWKfoCxvGFkb/PTql1cDVsFshY8_6xzO5XOWILHtStFgg-pbmgRp_QtQo', '426', '2023-08-30', 'NUMBERED MEMORANDUM', 'active'),
(3091, '08-30-2023', 'REGISTRATION FOR THE PHILIPPINE EDUCATIONAL PLACEMENT TEST (PEPT)', 'http://depedmanila.net:5000/d/s/v0inQVidAJNDEb8ivPZT9U3d4eXtckZm/-5PGetVg9gfBPg90ZN0-uMTSroUzMZjz-uLEgMGHitQo', '427', '2023-08-30', 'NUMBERED MEMORANDUM', 'active'),
(3092, '04/09/2023', 'EMERGENCY OPERATIONS CENTER TRAINING COURSE', ' http://depedmanila.net:5000/d/s/v4guXBBumhSvQSEsZkxYIveSR0f4pezF/WGopRBc4RmrfE5v1Qdz0WJph0twvWuZP-9rgAGab2uAo', '169', '2023-09-04', 'UNNUMBERED MEMORANDUM', 'active'),
(3095, '2023-09-04.3', 'NOTICE OF MEETING ON THE DEFECTS AND DEFICIENCIES OF SCHOOL BUILDINGS AS INSPECTED BY THE BUREAU OF FIRE PROTECTION (BFP) MANILA', ' http://depedmanila.net:5000/d/s/v4pqusCqqUTuY4INqSUxNiUoanwErQeT/mrCKZJTLO4xQWeFPTm-dcFHB1UiEzBOh-Fb8g4VsTuQo', '170', '2023-09-04', 'UNNUMBERED MEMORANDUM', 'active'),
(3096, '2023-09-04.4', 'BSP-MANILA COUNCIL LOCAL EXECUTIVE BOARD MEMBERS MEETING', ' http://depedmanila.net:5000/d/s/v4r7nSQSMGlCMS0z4ktrDmeDFgR5PLwX/KlEVrct_zS5P8ZD5vNU4uXDRle1Ko0Ck-GbBgKFsXuQo', '224', '2023-09-04', 'DIVISION ADVISORIES', 'active'),
(3097, '05/09/2023', 'LIBRARIANS LEADERSHIP BOOTCAMP', ' http://depedmanila.net:5000/d/s/v5faNpm854oZ7wkC72QnCiyHngR7XPcQ/EvV060tSnHTC3Zj1a0QnpedCL10TgKoy-uLOgqPa4uQo', '230', '2023-09-05', 'DIVISION ADVISORIES', 'active'),
(3098, '2023-09-05.1', '9TH RIZAL LIBRARY INTERNATIONAL CONFERENCE', ' http://depedmanila.net:5000/d/s/v5fx6qADkLVrSwHMRTVonCcUHHIrTpnm/f-huDp61_wkXUtR1rkl_aYYW8OU0W7Fd-6rNAyyK6uQo', '225', '2023-09-05', 'DIVISION ADVISORIES', 'active'),
(3099, '2023-09-05.2', 'SY 2023-2024 SCHEDULE OF PROFESSIONAL MEETINGS OF EDUCATIONS PROGRAM SUPERVISORS AND PSDS IN-CHARGE OF LEARNING AREAS WITH DEPARTMENT HEADS, TCPESS, AND ALS EPS COORDINATORS', ' http://depedmanila.net:5000/d/s/v5hY91aO5nHl7UGvHiioEDsbCCFUz2Qp/IqQItv15OaHwsdMzUi3gOOy5a0gH8CtS-rLXACmW_uQo', '434', '2023-09-05', 'NUMBERED MEMORANDUM', 'active'),
(3100, '2023-09-05.3', '2023 BSKE BRIEFING SCHEDULE (MANUAL ELECTIONS)', ' http://depedmanila.net:5000/d/s/v5hkrevhveucUIEvGLg3SxVh8wXXl7vs/aKRmUlM0bFvlY2JVSQm_LrM-vgRhxP1O-yLXgxeS_uQo', '435', '2023-09-05', 'NUMBERED MEMORANDUM', 'active'),
(3101, '2023-09-05.4', 'SCHEDULE OF QUARTERLY PROFESSIONAL MEETINGS OF ELEMENTARY AND SENIOR HIGH SCHOOL MASTER TEACHERS, GUIDANCE TEACHERS COUSELORS, DISTRICT ALS COORDINATORS (DALSCs)', ' http://depedmanila.net:5000/d/s/v5htEvEBfO9XBPDXNcRojOHwgpnJgwlA/Hqkh6jcCKuBueXIAPgTlD5vsJnZtK_7u-4rUgxYjAuQo', '436', '2023-09-05', 'NUMBERED MEMORANDUM', 'active'),
(3102, 'rcrdsbryl0823730', 'JUNIOR, SENIOR AND CADET WEEKEND GATEAWAY ON SEPTEMBER 30 AND OCTOBER 1, 2023 AT THE EPIC PARC RAINFOREST CAMP, TANAY RIZAL', ' http://depedmanila.net:5000/d/s/v6INfYWVYA7ZaZqduD3SmJmug4LSmL3A/Y7iXP7ER9mlQ_dmHH_6H7DeGXyDbMjqu-j7qAL041ugo', '133', '2023-09-06', 'DIVISION CIRCULARS', 'active'),
(3103, 'rcrdsbryl0823183', 'CAREER GUIDANCE ORIENTATION FOR SY 2023-2024', ' http://depedmanila.net:5000/d/s/v6ImoAVkAVsrZyzSr1HXVJT7JqDh6zZz/G6wxC98yhjUq_G1kbKhYiwDkUz0snRmA-u7rgJoY2ugo', '134', '2023-09-06', 'DIVISION CIRCULARS', 'active'),
(3104, '06/09/2023', 'UNIVERSIDAD DE DAGUPAN GRADUATE COURSES OFFERING FOR TEACHERS', ' http://depedmanila.net:5000/d/s/v6PkgtthNPdj3DymptZae2YMJ1HBm2mT/8hrcLKMYUNjhoUqocp_CyJg6bAYxqQbP-37_AK9ZMugo', '226', '2023-09-06', 'DIVISION ADVISORIES', 'active'),
(3105, '2023-09-06.1', 'NATIONAL ROBOTICS COMPETITION (NRC) 2023', ' http://depedmanila.net:5000/d/s/v6PwamjVIQnXJFDn3qT9mEabJyqTuIxK/zTRkHL8J0kr31eQc7M_cHYFHe2ARep5Y-FrAgkG5Nugo', '227', '2023-09-06', 'DIVISION ADVISORIES', 'active'),
(3106, '2023-09-6-06.2', '2023 NATIONAL SCULTURE COMPETITION MECHANICS, RULES, AND REGULATIONS', ' http://depedmanila.net:5000/d/s/v6QAJWFvRIcEyNEsv2BgW4htxWZWwK4M/-mZKPQ19e17UU_TU26WKFD7JEfKHBs7Z-N7AA2zBOugo', '228', '2023-09-06', 'DIVISION ADVISORIES', 'active'),
(3107, '2023-09-6-06.3', '24TH DUSKIN LEADERSHIP TRAINING IN JAPAN A PROGRAM FOR PERSONS WITH DISABILITIES IN ASIA AND THE PACIFIC', ' http://depedmanila.net:5000/d/s/v6QKTtNQuuPl13U2fl8PdL7ijZtRDcQZ/spdDhNGQ8HHI4yLh2b1h6-HLnqT85ph0-V7BAUMBOugo', '229', '2023-09-06', 'DIVISION ADVISORIES', 'active'),
(3108, 'rcrdsdani0810144', 'THE AWARDS, APPRAISAL AND DISPOSAL COMMITTEE', 'http://depedmanila.net:5000/d/s/v7v2F113HZobyYL1StMtnhlqMzOXN9Ui/R48EwVvmqRaEQxjyd5vs3eFT50yV0lL7-gb-g1Il3uwo', '430', '2023-09-06', 'NUMBERED MEMORANDUM', 'active'),
(3109, 'rcrdsdani081098', 'CREATION OF MANILA CITYS COMMITTEE ON ANTI-TRAFFICKING AND VIOLENCE AGAINST WOMEN AND THEIR CHILDREN', 'http://depedmanila.net:5000/d/s/v7v9WTAdW3qpwKw61QQAeu0rI5zsT4Jk/F8nHGypEfGT8QyES-EY46HBoPHuFGzYZ-y7-gTe53uwo', '431', '2023-09-06', 'NUMBERED MEMORANDUM', 'active'),
(3110, 'rcrdsbryl0823431', 'CELEBRATION OF THE 2023 NATIONAL HEROES DAY', 'http://depedmanila.net:5000/d/s/v7vmlBSvISlxGinlg04auTt5AR1PA6Sx/lzGeqmQFLpk7gryE6SrLSGTOBUOlT_Th-3rLABPF5uwo', '432', '2023-09-06', 'NUMBERED MEMORANDUM', 'active'),
(3111, 'rcrdsbryl0817773', 'INVITATION TO ALLOW DEPED PERSONNEL TO ATTEND THE 6TH ANNUAL NATIONAL CONVENTION OF ASSOCIATION OF GOVERNMENT INTERNAL AUDITORS, INC. (AGIA)', 'http://depedmanila.net:5000/d/s/v7w2NDreBf8BYmFpGQKXZzc6lIJu527e/k0JcTo_c_mBNjBVgzgqA_EpmmrAUIpmJ-R7PgRr56uwo', '433', '2023-09-06', 'NUMBERED MEMORANDUM', 'active'),
(3112, '2023-09-06.4', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 420, S. 2023 TRAINING WORKSHOP ON EMBARKING REGIONAL INITIATED DEVELOPED AUTOMATION SYSTEMS THE INTRODUCTORY TO SDO WIDE UTILIZATION', 'http://depedmanila.net:5000/d/s/v6VlPIO81g3k7yXDfDmz3oVBhyByIjBy/4oJXxFkOf2PFwh6HHJIHJJ_h5CLh3Vs3-FrJA-Dhgugo', '171', '2023-09-06', 'UNNUMBERED MEMORANDUM', 'active'),
(3113, '2023-09-06.5', 'DISTRICT COORDINATORS MEETING', ' http://depedmanila.net:5000/d/s/v6W8nzFx0iUpdH0VJyKQOm6kOhLlOg07/qJpPWSBBrnlg7Jhcmf-EBXA73iSBSHij-XLJgukJhugo', '172', '2023-09-06', 'UNNUMBERED MEMORANDUM', 'active'),
(3114, 'CIDARIE0823469', 'DEFERMENT OF EVENING VOCATIONAL CLASSES AND PROVISION OF HONORARIA FOR NIGHT ACADEMIC', ' http://depedmanila.net:5000/d/s/v78NOAoMDtSsXnh54TfVW5TstTvj7cRx/GG1EFT02yQrkcoS7TWvLv2JkafWrhr1E-k7Zgf8rbugo', '438', '2023-09-07', 'NUMBERED MEMORANDUM', 'active'),
(3115, 'CIDEDWI0815182', 'TALATAKDAAN NG MGA GAWAIN AT PATIMPALAK KAUGNAY SA PAGDIRIWANG SA BUWAN NG WIKANG PAMBANSA 2023', ' http://depedmanila.net:5000/d/s/v78pZLz8iSXNXQA6DW4dMv6VPaugGxD4/hsbavcLRtJ_7SuIBT-VNnELaNFevksW_-u7ZAgkrdugo', '439', '2023-09-07', 'NUMBERED MEMORANDUM', 'active'),
(3116, 'rcrdsdarn082272', 'INVITATION FOR A DINNER DANCE TO 10 GIRL SCOUTS FROM AURORA  A. QUEZON ELEMENTARY SCHOOL, LAKAN DULA ELEMENTARY SCHOOL AND PRESIDENT OSMENA HIGH SCHOOL', ' http://depedmanila.net:5000/d/s/v79J1MFhfYRqveTPvmefXaTKpD0CvMz3/Mnk8unth11A8GBDKxHLGMfTlTAqnIGLx-07ZApdXeugo', '135', '2023-09-07', 'DIVISION CIRCULARS', 'active'),
(3117, 'rcrdsdarn0816170', 'YISRAEL SOLUTIONS AND TRAINING CENTER, INC', ' http://depedmanila.net:5000/d/s/v7Fy4jZEY5rq7IsBj14inmDP3QwpisK2/RR2fGPq6ca_URPnfRZKKiTXRo27A2ayn-Prkg_wr0ugo', '231', '2023-09-07', 'DIVISION ADVISORIES', 'active'),
(3118, '2023-09-07DM440', 'DIVISION VIRTUAL ORIENTATION FOR NEW TUTORS OF THE TARA BASA TUTORING PROGRAM', ' http://depedmanila.net:5000/d/s/v7KfHDFVnl1cyjEZprJBrr53vih0jnZn/dI0OZKG-0PTqml6IS5YvRFWJNcXpUjf0-EbpANSIDuwo', '440', '2023-09-07', 'NUMBERED MEMORANDUM', 'active'),
(3119, '2023-09-07DM441', 'INVITATION TO ROBOQUEST 2023', ' http://depedmanila.net:5000/d/s/v7KykoFDjtJIG7s6UqSsdStcJXGmd6SF/BaoTyiMTrENzOt13PprXcfwfhIR_LUXB-TLrAZhkEuwo', '441', '2023-09-07', 'NUMBERED MEMORANDUM', 'active'),
(3120, '2023-09-07DM443', 'BEGINNING OF THE SCHOOL YEAR (BOSY) GENERAL ASSEMBLY FOR MANILA PRIVATE SCHOOLS FOR SY 2023-2024', ' http://depedmanila.net:5000/d/s/v7L9BUjVfLMPEPeqDEAzz802UaCtjmtS/5M7Z8pE2Ab8jmdv6QqScqGckeAi076nO-ZLogQq0Euwo', '443', '2023-09-07', 'NUMBERED MEMORANDUM', 'active'),
(3121, '2023-09-07DM442', 'INVITATION TO THE WORLD ROBOT GAMES-TAIPEI 2023', ' http://depedmanila.net:5000/d/s/v7LSc4FABauWwZYA7r5Waan76VgmT5fX/or-nCKWYuqGyOg7D8-w33jKMEX-1umgz-i7qAJqcFuwo', '442', '2023-09-07', 'NUMBERED MEMORANDUM', 'active'),
(3122, '2023-09-07UM173', 'ADDITIONAL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERSVISORS', ' http://depedmanila.net:5000/d/s/v7LksiQXG0fehRic60TQp2Fzlc1EkHrr/Jrb8mWxKKFHGkFcGqBzEWzumSFVfPaq6-obogSJ4Guwo', '173', '2023-09-07', 'UNNUMBERED MEMORANDUM', 'active'),
(3123, '2023-09-07DA232', 'PHILIPPINE LIBRARIANS ASSOCIATION INC. (PLAI) CENTENNIAL ANNIVERSARY CONGRESS', ' http://depedmanila.net:5000/d/s/v7Lxv4BOkfsO6lGxhvzeICu3qmX8xarQ/J1nLmpgwmJYVmAtfzMq0erXwdxXHIQBv-w7pgTFsHuwo', '232', '2023-09-07', 'DIVISION ADVISORIES', 'active'),
(3124, '2023-09-07DL136', 'LICENSURE EXAMINATION FOR PROFESSIONAL TEACHERS (LEPT) ON SEPTEMBER 24, 2023 (SUNDAY)', ' http://depedmanila.net:5000/d/s/v7MLtmXwiWtT4t9ole6g4ea3XVsoTMtQ/64HPjOv8N077tQzm_OFjKc8xw6VR-qpp-FLtAeXUIuwo', '136', '2023-09-07', 'DIVISION CIRCULARS', 'active'),
(3125, '2023-09-07DM444', 'GUIDANCE ON THE UPCOMING 2023 BARANGAY AND SANGGUNIAN KABATAAN ELECTIONS', ' http://depedmanila.net:5000/d/s/v7N7LXRFDBuTHF9eoDMjv0cGXEDeaoEu/jgLdWNEAj7AjVafL_Fp7AaRYVmduf4x2-U7vgswELuwo', '444', '2023-09-07', 'NUMBERED MEMORANDUM', 'active'),
(3126, 'rcrdsbryl0824799', 'INVITATION TO PARTICIPATE TO THE COMIC STRIP DEVELOPMENT WORKSHOP ON ENVIRONMENT ADVOCACY FOR THE YOUTH', ' http://depedmanila.net:5000/d/s/v7uM7JmRX96oy7j4bAYeDJ0MBE6y4cy2/fEDWbCGWcbt_MSN51fH_d7Mb1sGH7kKa-0b7gS351uwo', '137', '2023-09-08', 'DIVISION CIRCULARS', 'active'),
(3127, '2023-09-08DL138', '123RD PHILIPPINE CIVIL SERVICE ANNIVERSARY WITH THE 10-YEAR THEME \"TRANSFORMING PUBLIC SERVICE IN THE NEXT DECADE: HONING AGILE AND FUTURE READY SERVANT-HEROES\"', ' http://depedmanila.net:5000/d/s/v7ugKbU62KNOjxu6TYBn6IvmLEwHE728/0e5JkS9zs_QjZi_1caRpzcDqEncns-_4-KL9gv692uwo', '138', '2023-09-08', 'DIVISION CIRCULARS', 'active'),
(3128, '2023-09-08UM174', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 390, S. 2023 SDO MANILA AD HOC COMMITTEE, RATERS, AND APPROVING AUTHORITIES FOR OPCRF, IPCRF OF THE SCHOOL HEADS, HEAD TEACHERS, AND MASTER TEACHERS', ' http://depedmanila.net:5000/d/s/v7yON4hKAKDfTW7uRula62837yaf4bNn/Tw9_Jv7iOrxNpUrFnza5Y6KcTYOaEW6a-87RAQnuCuwo', '174', '2023-09-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3129, '2023-09-08UM175', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 466, S. 2009 REITERATION OF CERTAIN PROVISIONS OF DEPED ORDER NO. 8, S. 2007', ' http://depedmanila.net:5000/d/s/v7yj36iIOPylmCIpsKJ8zIKGYwr3VDmL/n5z-BYtsm1hFpj9Y9RuFwbZhNgPBeXzr-KLVAGH-Duwo', '175', '2023-09-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3130, '2023-09-08UM176', 'PREPARATION OF TOFAS ASSESSMENT FOR GRADES 1 TO 10 LEARNERS', ' http://depedmanila.net:5000/d/s/v7yzdSs9yuj1Co2OAW1NavfuVGnS8CCH/XCdH9xmFGjwGAKLifsc6iM7qOcdb0UG3-YLVAQEmEuwo', '176', '2023-09-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3132, '2023-09-08DM446', 'DAP GRADUATE SCHOOL OF PUBLIC AND DEVELOPMENT MANAGEMENT ONLINE CERTIFICATE COURSE ON PUBLIC FINANCE AND BUDGETING', ' http://depedmanila.net:5000/d/s/v7zYhJzQlQZbyyx5AjxYBpHFEU53PjxN/xEHRyRLAk31o3UAb1IFZskfO16VU1mwu-4rWAFTKGuwo', '446', '2023-09-08', 'NUMBERED MEMORANDUM', 'active'),
(3133, '2023-09-07DA233', 'SCHOOL PRESS ADVISERS MOVEMENT INC', ' http://depedmanila.net:5000/d/s/v7ztWvgRXUlMuWEo6UgbZJ5yUQ1DBsz5/0TSlIPejl3GMKhdlSpxBPwlllKX6EWTe-HbaAHCaHuwo', '233', '2023-09-08', 'DIVISION ADVISORIES', 'active'),
(3134, '2023-09-07DA234', 'INTERNATIONAL MULTI-SECTORAL SUMMIT OF THE ACADEME, ALUMNI, INDUSTRY, AND GOVERNMENT (AAIG) SUMMIT', ' http://depedmanila.net:5000/d/s/v80JjT0dexWRIm4pBAEKie2oOhK7mKdH/J1dYhn2PEjqY2UMUOfM1xrYk_qUN61jV-w7ag_syIuwo', '234', '2023-09-08', 'DIVISION ADVISORIES', 'active'),
(3135, '2023-09-08DA236', 'VARIOUS COMPETITIONS IN ENGLISH, MATHEMATICS AND SCIENCE', ' http://depedmanila.net:5000/d/s/v84vkWfIh5mgl1ymnbdw61iLsYC5A8gH/4m2hR3pmOHgbxDcqqRvfXkIMLkcZK_So-_rgA_0yXuwo', '236', '2023-09-08', 'DIVISION ADVISORIES', 'active'),
(3136, 'rcrdsbryl0824762', 'THE PHILIPPINE STAR EDUCATION PROGRAM, READISCOVER', ' http://depedmanila.net:5000/d/s/v85KIBFdqyaAF8KcvegcQzuwYb671lqW/2SBtrCjTgESy76y7PTUEpcDoYaJj_V-k-97kgm46Yuwo', '237', '2023-09-08', 'DIVISION ADVISORIES', 'active'),
(3137, '2023-09-08DA235', 'IPOPHL MANUSCRIPT WRITING WORKSHOP', ' http://depedmanila.net:5000/d/s/v84e9rhBVmbDuVN5jQ5OtNGE15O0aZqj/_S9QEtI_Mv1CEILXYR_fWP-TgecvRxQY-z7hgm5-Wuwo', '235', '2023-09-08', 'DIVISION ADVISORIES', 'active'),
(3138, '2023-09-11DM447', 'DESIGNATION OF LEARNER INFORMATION SYSTEM (LIS) AND BASIC EDUCATION INFORMATION SYSTEM (BEIS) COORDINATOR FOR SCHOOL YEAR 2023 - 2024', ' http://depedmanila.net:5000/d/s/vAXxD0PRIsDEEsrj9GojPTZNyuN0eLFL/jDHOoO2b7Ed3_HZP_Uas1OpM2GK-cXGO-8LwACHiBvQo', '447', '2023-09-11', 'NUMBERED MEMORANDUM', 'active'),
(3139, '2023-9-8-499', 'SCHOOL-BASED CELEBRATION OF NATIONAL TEACHERS\' MONTH', ' http://depedmanila.net:5000/d/s/vAYHkn42ip6Lgg7MAZPIXCrEU4TWYFP5/Crn-u5ax-iCvSm2M2GKXyY_CDRDqHFhw-07-AL7uHvQo', '448', '2023-09-11', 'NUMBERED MEMORANDUM', 'active'),
(3140, '2023-9-7-352', 'DATA PRIVACY ACT AWARENESS (DPA) WORKSHOP, PRIVACY INPACT ASSESSMENT (PIA) AND CYBER SECURITY', ' http://depedmanila.net:5000/d/s/vAbLbJ4MXXT2tAFFtnVAZeWFNJTZSGun/TRaF5jxg9JGTf5qIaHEbgfjvRpDlfg74-w7GgHVyMvQo', '240', '2023-09-11', 'DIVISION ADVISORIES', 'active'),
(3141, '2023-09-11UM177', 'ADDENDUM TO DIVISION MEMORANDUM NO. 424, S. 2023', ' http://depedmanila.net:5000/d/s/vAfA2vEZQg64qnygeuGcIzlMMwVZ5806/aXILycQ2l_7OHbs6OlbkoH5SEyCRnHbS--LbAdnyYvQo', '177', '2023-09-11', 'UNNUMBERED MEMORANDUM', 'active'),
(3142, '2023-9-4-6', 'SAMAHANG LIKHA PARA SA KABATAAN NG ATING BAYAN (SALIKANA-BAYAN)', ' http://depedmanila.net:5000/d/s/vBFbyIN85XAm6n4J3OoCbjIBrbFC0XSu/LzFytHvO4YZPor3fZxtrkEl7whLBjjrC-QrKg818Nvgo', '139', '2023-09-12', 'DIVISION CIRCULARS', 'active'),
(3144, '2023-9-5-9614', 'BAYBAYIN BUHAYIN SUMMIT-IKATLONG YUGTO 2023', ' http://depedmanila.net:5000/d/s/vBUZsi86y3BuJmnSY1Cwvr4yzbo7NYal/g42GiFGY74XMbmOo5oRq8-Y-i_MwrmtX-NLfApyw9vgo', '243', '2023-09-12', 'DIVISION ADVISORIES', 'active'),
(3145, '2023-09-12DA244', 'MASHAV INTERNATIONAL TRAINING ON INCLUSIVE EARLY CHILDHOOD EDUCATION FOR CHILDREN WITH DISABILITIES TRAINING CODE 6926', ' http://depedmanila.net:5000/d/s/vBUnD5hKhkFvGFQs6qJwiaaBacT3vujC/boFNj2hCSiduIjVa95APZ2gr6S4XGUeP-nbdgLuo9vgo', '244', '2023-09-12', 'DIVISION ADVISORIES', 'active'),
(3146, '2023-09-13DM452', 'COMPOSITION OF THE DIVISION APPRAISAL COMMITTEE AND ACTIVITY TIMELINE FOR THE SUBMISSION OF ENHANCED SCHOOL IMPROVEMENT PLAN (SIP) SY 2023-2028', ' http://depedmanila.net:5000/d/s/vCKOb6NdeqE4JHTKmdlrTgVCDjDTTRC2/FL-adpLjEpiEZuLyDgU-mLW138P0xdch-o72Aojbjvgo', '452', '2023-09-13', 'NUMBERED MEMORANDUM', 'active'),
(3147, '2023-09-14UM179', 'NOTICE OF MEETING REGARDING THE JOURNALISM ELEMENTARY GAWAD PAMAHAYAGAN 2023 AND 1ST LEARNING ENGAGEMENT MANAGEMENT', ' http://depedmanila.net:5000/d/s/vCyyWQbkODACz6Ye6bKtOMOxQuV7Q80Y/ymZWI34LajqeiXM8ZMwFVquVl0JP1kce-KL_gyCxlvwo', '179', '2023-09-14', 'UNNUMBERED MEMORANDUM', 'active'),
(3148, '2023-09-14DA246', 'AREA STUDIES WEEK 2023', ' http://depedmanila.net:5000/d/s/vD4ABQHZuqzk03iQv9WrjpFc30UvkTsy/9Wheq5EHO39UZL6AvV0dpJ5z_Tc2R3Sl-qLWAgsh1vwo', '246', '2023-09-14', 'DIVISION ADVISORIES', 'active'),
(3149, '2023-09-15DA238', 'PARTICIPATION OF DEPED NCR TO 34TH NATIONAL STATISTICS MONTH IN OCTOBER 2023', ' http://depedmanila.net:5000/d/s/vDkB6I62P2YEtVVK3m8GcgqlpOVpVUHw/y079xoBirKHNOeJw8L6KUBYTM_aCr87R-JrVAJlr8vwo', '238', '2023-09-15', 'DIVISION ADVISORIES', 'active'),
(3150, '2023-8-29-9382', 'NATIONAL CONSULTATION-TRAINING FOR TEACHERS', ' http://depedmanila.net:5000/d/s/vDkNhlmJwsBZF1i5G8mC4SDxbHJFBZcR/GGNtkkpwixSzbeqOEla94QCunnowq5H5-dbVAtvD8vwo', '239', '2023-09-15', 'DIVISION ADVISORIES', 'active'),
(3151, '2023-9-12-741', 'VALIDATION OF E-EAST GUIDELINES', ' http://depedmanila.net:5000/d/s/vDkn5HHUHrblgI8qqDLGz6J7QvBNfPRO/-iJfjfy-Pqnc0Cu7Jvy1rQSbUjl5rhmL-ErbA_IP-vwo', '2023912741', '2023-09-15', 'UNNUMBERED MEMORANDUM', 'active'),
(3152, '2023-9-6-175', 'ALL-HAZARD INCIDENT MANAGEMENT TEAM TRAINING COURSE (AHIMT)', ' http://depedmanila.net:5000/d/s/vDm0ZBAC9clD2pLBvhtpamZv2dn4pjem/2x4njJ_Iy66pwKK-hSpH82Rt7KA9PWwI-l7cA7i0CwAo', '181', '2023-09-15', 'UNNUMBERED MEMORANDUM', 'active'),
(3153, '2023-9-11-545', 'CALL FOR APPLICATIONS TO THE TEACHSTEM MASTERS SCHOLARSHIP PROGRAM OF THE GOKONGWEI BROTHERS FOUNDATION,INC (GBF)', ' http://depedmanila.net:5000/d/s/vDmLlBbgpZhCvDXgOk2HM56C5yMg1HSI/0XdBG3X61u3a8EwbunwJ5Fz-AGNh7fWi-ObigeXEDwAo', '453', '2023-09-15', 'NUMBERED MEMORANDUM', 'active'),
(3154, '2023-9-11-613', 'DISSEMINATION OF OASOPS MEMORANDUM NO. 2023-174 REQUEST FOR DATA ON INTERNET CONNECTIVITY', ' http://depedmanila.net:5000/d/s/vDnLriQJPJKQR07xZbLsSxDvM6YOxVZg/7prEQAGWlf4yuySEQQIIFXtYIFBWTjZt-j7jgiqAGwAo', '2023911613', '2023-09-15', 'UNNUMBERED MEMORANDUM', 'active'),
(3155, '2023-9-6-184', 'ADDENDUM TO DIVISION MEMORANDUM NO. 302, S. TITLED STRENGTHENING OF SDO MANILA LEARNER SUPPORT UNITS', ' http://depedmanila.net:5000/d/s/vDzjIBE3lySYQO86iT9ZIhnZxxN40zNa/XSJcXafkmeiO7cy0_AyCgxBI02Jf8rl8-hrhg1TAuwAo', '182', '2023-09-15', 'UNNUMBERED MEMORANDUM', 'active'),
(3156, '2023-9-12-660', 'ELECTION APPOINTMENT OF LEARNER GOVERNMENT REPRESENTATIVES FOR GRADES 7 AND 11 FOR SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/vGMCApWx40GETC4wlqDS93UDhzt8uLuR/s79a-OC5n-Pgd8tfD5yDuTVqu_J1Y36Z-771AEk0Dwgo', '183', '2023-09-18', 'UNNUMBERED MEMORANDUM', 'active'),
(3157, '2023-09-18DM455', 'SUBMISSION OF SCHOOL RECOGNIZED STUDENT ORGANIZATIONS AND CLUBS FOR SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/vGMzlPH8AERr4trmuadW50iqRo9t8dGH/mXTj0X_xD7EsaKEOoJtfyB26BcEgY8IO-Hr-AltwFwgo', '455', '2023-09-18', 'NUMBERED MEMORANDUM', 'active'),
(3158, '2023-09-18DM454', 'PARTNERSHIP WITH NESTLE PHILIPPINES', ' http://depedmanila.net:5000/d/s/vGNXByrLuOVGvcS3rgq9DUf9p88NGOMP/3pi6FSlXAqR8FlZ5kZF6AFD20n8skXTe-hr9giIAHwgo', '454', '2023-09-18', 'NUMBERED MEMORANDUM', 'active'),
(3159, '2023-09-18DL141', 'INVITATION TO EDUCATION INNOVATION AND TEACHING PEDAGOGIES SEMINAR', ' http://depedmanila.net:5000/d/s/vGQTXA4JZ6EAIGwSdGt2sXCplL5mpuPN/W-yaj0n0dnKS1P0LJ5xm4uJ3ReJ0nPiQ-ibpgz-8Qwgo', '141', '2023-09-18', 'DIVISION CIRCULARS', 'active'),
(3160, '2023-09-19UM184', 'PROFESSIONAL MEETING OF SHS MASTER TEACHERS', ' http://depedmanila.net:5000/d/s/vH6rj9OrSxk7QSaIGPKl6PUhSSQ4NWiE/qSjCEm0ST2VLfPdAs5T-Ki9oqWAvM0MP-XroggLGYwgo', '184', '2023-09-19', 'UNNUMBERED MEMORANDUM', 'active'),
(3161, '2023-9-15-993', 'Conduct of Division Pre-Assessment Activities on Literacy and Numeracy for Learning Continuity and Recovery', 'http://depedmanila.net:5000/d/s/vH8bzcYqZJg3AZVRNFFrCJjsHoN7SDq0/9pCrjgeFCvoi9URBdPbhByD2jtj3m2JW-ZL3A00mewgo', '450', '2023-09-15', 'NUMBERED MEMORANDUM', 'active'),
(3162, '2023-9-14-894', 'LEARNING CONTINUITY AND RECOVERY PLAN (LCRP) YEAR 2 IMPLEMENTATION, MONITORING & EVALUATION WORKSHOP', 'http://depedmanila.net:5000/d/s/vH8qyRu1wonvv2FI8Z7hqUdNw1JwlrEG/CH1gdqCcMpOWOOdL_o_ch-EIunCJ9RiY-wb0A7gKfwgo', '451', '2023-09-15', 'NUMBERED MEMORANDUM', 'active'),
(3163, '2023-09-19DL142', 'REQUEST TO USE THE SCHOOLS AS BILLETING FOR THE ATHLETES OF THE PHILIPPINE NATIONAL GAMES (PNG) AND BATANG PINOY (BP)', ' http://depedmanila.net:5000/d/s/vH92j6481NdfxBjW2m1MlINZgXGDM7QG/NKaX_E0TPqoW898GomIalcM0zya_P2pA-Sb5g6Nyfwgo', '142', '2023-09-19', 'DIVISION CIRCULARS', 'active'),
(3164, '2023-09-19DA248', 'ISSUANCE OF DEPED ADVISORY ON THE CONDUCT OF MTAP POEM-SATURDAY PROGRAM', ' http://depedmanila.net:5000/d/s/vHF2ZYlqpJ2CkMHyNYFQarf8uUTpeVcF/KE9mj9BSDQOxYeJjHsgcZFroPDdk0LjE-orbAmvaywgo', '248', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3165, '2023-09-19DA249', '35TH MATHEMATICAL SCIENCE WEEK WITH THE THEME \"AI CAPTAIN! EXPLORING THE VAST EXPENSE OF ARTIFICIAL INTELLIGENCE\"', ' http://depedmanila.net:5000/d/s/vHFg00rf1yDndEybppyLU5hnmBxQ5rZL/qAqrpLS3lCUPoP-QIjCiL2X0OC9dcuHB-o7cAUiG1wgo', '249', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3166, '2023-09-19DA250', 'FUN-FIESTA SA PILIPINAS ARTS FESTIVAL COMPETITION 2023', 'http://depedmanila.net:5000/d/s/vI4if8cJiQ9jebsXVLaDAQKHakMXNFer/VLeKT1vxv3OJdTYpPL7jCCPWKQyGK_ch-TbFAXlhYwwo', '250', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3169, '2023-9-12-10031', 'CDRC 2023 POSTER MAKING CONTEST\n', ' http://depedmanila.net:5000/d/s/vHH95TLD8qyYM4avR6GZmSY7VxRQYiN5/yxJTxIucV0mq9mzI-ZLFiBWpUTwWnKT2-s7kgFJ65wgo', '247', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3170, '2023-9-5-9607', 'Advisory No 337 s 2023 REINVENTING THE FUTURE AND ADVANCING COMMUNITIES THROUGH ASMEPPS', ' http://depedmanila.net:5000/d/s/vHHnBi9vWh4eNLYG2o0STvYdtZ3jAopK/NBLMfY-Bm5fd_0idkCCqobDMldCLM4GY-wbpAMsO7wgo', '2023959607', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3171, '2023-9-4-9592', 'IOER INTERNATIONAL LUMINARE AWARDS', ' http://depedmanila.net:5000/d/s/vHHurPb8dK8cm5eWDAyePhkW5Hgc1MiD/qERAqmvIWRLd3RJqXd5NSU76F8W3IIfO-BLsg8hi8wgo', '241', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3172, '2023-9-14-793', 'LEARNING RESOURCE MANAGEMENT SECTION (LRMS) EVALUATIONS TOOLS', ' http://depedmanila.net:5000/d/s/vHI3bI82whrVNSxbyl9nys8L9UU6NeAB/HnZsM6rkeS6GewxJ6UXHeLh0mwKDPWn1-VrvgTpG8wgo', '449', '2023-09-19', 'NUMBERED MEMORANDUM', 'active'),
(3174, '2023-9-8-471', '123RD PHILIPPINE CIVIL SERVICE ANNIVERSARY WITH THE 10 YEAR THEME \"TRANSFORMING PUBLIC SERVICE IN THE NEXT DECADE HONING AGILE AND FUTURE READY SERVANT-HEROES\"', ' http://depedmanila.net:5000/d/s/vHJYXAEDBJ2L09wpVJ08sKfAmZ4Fry1q/LVcMqAPMuDTGHt9lbQiYpjaD4dC6xNCY-KL6A94fBwgo', '143', '2023-09-19', 'DIVISION CIRCULARS', 'active'),
(3175, '2023-9-8-454', 'MONTHLY MEETING', ' http://depedmanila.net:5000/d/s/vHJhh5b6TUs2Dsfqh6T66DgmVArA3sl2/afIV-mQEWLsPKXCvF9pnKGN0t6QzFzTH-W74g-9PBwgo', '144', '2023-09-19', 'DIVISION CIRCULARS', 'active'),
(3176, '2023-9-11-615', 'YISRAEL SOLUTIONS AND TRAINING CENTER, INC', ' http://depedmanila.net:5000/d/s/vHJpopD0a3Iyny96UFYxQfuMxRPfPo6K/57rglazQ1cyVA7vqWd_KZE17c2ZlVzBL-lL6AQzbCwgo', '251', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3177, '2023-9-7-367', 'SACEDA YOUTH LEAD SCHOOL', ' http://depedmanila.net:5000/d/s/vHJxVHldHNxGuXR619ERtOI4rY6OZBZ8/CiPKFOZFVw4NtwPcPk0QlRwJJIzTf_s9-3L5AhpzCwgo', '252', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3178, '2023-9-4-9565', 'ADMINISTRATION OF THE 2023 SPECIAL PHILIPPINE EDUCATIONAL PLACEMENT TEST (PEPT)', ' http://depedmanila.net:5000/d/s/vHK4kP9nBL8yJbIJJoEocZcsIvJfEBI4/UtzB1E3TXLtim5OkG2_Z9sQytkXOhfu2-I7_gXgnDwgo', '253', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3179, '2023-9-4-14', 'TEAM BUILDING \"PARA SA MATATAG NA EDUKASYON, KALINGA NG MAGULANG AY PAGTIBAYIN PARA SA MGA BATA AT PAARALAN\"', ' http://depedmanila.net:5000/d/s/vHKBFiJdZXyx3HdLqPucRbuwStCJyHtK/3jcfBSE1hwKrgmDpl9m-XfW6hmug69L8-WL8AFWPDwgo', '254', '2023-09-19', 'DIVISION ADVISORIES', 'active'),
(3180, '2023-9-6-195', 'COORDINATION MEETING OF THE OK SA DEPED FOCAL AND MANILA HEALTH DEPARTMENT PROGRAM COORDINATOR', ' http://depedmanila.net:5000/d/s/vHKIhJlvBIAZBbxKMxzslq2wOjCSg0Vi/CByyDYCPL-o0P1ZSDm7S0tZW69JA5vqH-kb9g58HDwgo', '185', '2023-09-19', 'UNNUMBERED MEMORANDUM', 'active'),
(3181, '2023-9-6-193', 'WATER, SANITATION AND HYGIENE (WASH) IN SCHOOLS (WINS) PROGRAM RESUBMISSION OF ONLINE MONITORING SYSTEM (OMS)', ' http://depedmanila.net:5000/d/s/vHKPJCXkMAbMcoEtvTBRqTfLI0M5J386/Cl6SBpd_mPHNIUOYLMAKP_OUf6rDamXn-yL-glh_Ewgo', '459', '2023-09-19', 'NUMBERED MEMORANDUM', 'active'),
(3182, '2023-9-6-244', 'BEGINNING OF THE SCHOOL YEAR (BOSY) GENERAL ASSEMBLY FOR MANILA PRIVATE SCHOOLS FOR SY 2023-2024.', ' http://depedmanila.net:5000/d/s/vHKVWsaKpuryhB55KMHy6h0g2b3MVEwc/Chhilj-okY_sucWA3PwZmqNjDq2aN4AG--r8gqGvEwgo', '457', '2023-09-19', 'NUMBERED MEMORANDUM', 'active'),
(3183, '2023-9-5-130', 'UPDATE ON THE DEPED MATATAG LOGO AND PRESCRIBING THE USE OF THE BAGONG PILIPINAS LOGO', ' http://depedmanila.net:5000/d/s/vHKdZhCEcIKfo386FM7E2UBK82dD7I24/MwF5T4RaQVJvmzKTPTl4Hmv3ePe4lkp7-T7Dg1tXEwgo', '458', '2023-09-19', 'NUMBERED MEMORANDUM', 'active'),
(3184, '2023-9-4-11', 'MATATAG AGENDA REDIRECTING EPP, TLE AND TVL EDUCATORS TOWARDS ACCEDDIBILITY, QUALITY, RESILIENCY IN EDUCATION\"', 'http://depedmanila.net:5000/d/s/vHrRa0H3P6NTidbEvWtZ3WAutznz6O2i/s176N2wdch1FLl7Pxk4L7FpGB8KwRqVV-a7zgvdUtwwo', '245', '2023-09-20', 'DIVISION ADVISORIES', 'active'),
(3185, '2023-09-20DM456', 'CONDUCT OF TRAINING OF LEARNING FACILITATORS FOR PERSONS DEPRIVED OF LIBERTY (PDL) ON ALTERNATIVE LEARNING SYSTEM', ' http://depedmanila.net:5000/d/s/vHt3NJg0mQY6yJpEYcgo3bmHxRm00Bwa/_CVaJaJEtr-moRerV5o7a-efN3zaDbY0-GL_Ajxczwwo', '456', '2023-09-20', 'NUMBERED MEMORANDUM', 'active'),
(3186, '2023-09-20DM460', 'STRICT COMPLIANCE TO DEPED ORDER 30 AND 31 S. 2019 AND DEPED PAS MEMORANDUM OD-2023-031', 'http://depedmanila.net:5000/d/s/vI1VG3PAvbaJuFt5cGfQR4khnbfaacjO/l8D0kuOFO8G6ggEKKD_KIzxguUkKnQds-17tgbxJOwwo', '460', '2023-09-20', 'NUMBERED MEMORANDUM', 'active'),
(3189, '2023-09-20UM186', 'REIMBURSEMENT OF TRAVEL EXPENSES FOR THE WORKSHOP ON THE REVISION VALIDATION AND FINALIZATION OF SPECIAL CURRICULAR PROGRAMS CURRICULUM GUIDES', 'http://depedmanila.net:5000/d/s/vNxn7jSDPtijpNRso0ycpKYDXy0WzqJC/y9tcG1LQt2qdXW5WzObbL300NRR6NK1m-VbbgSJ_pxwo', '186', '2023-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(3190, '2023-09-20UM187', 'CURRICULUM GUIDE AND MORE', ' http://depedmanila.net:5000/d/s/vHxVtzHbw7QbTcYIPQpZoVXzuw7ptlTi/R24sCAo-d4qboG0y7VBMPoFRWrUofDwQ-YbbgKlBBwwo', '187', '2023-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(3191, '2023-09-20DM461', 'PHASE 1 CAPACITY BUILDING HOLISTIC TEACHING INTEGRATING MIND, BODY AND SPIRITUAL IN EDUCATION', ' http://depedmanila.net:5000/d/s/vI058Xqi0zva5bid4gizsSag5cK5crld/2uzhpjDUfP0DbPNbuj841NpX_gLi6xsH-vbkAPZxJwwo', '461', '2023-09-20', 'NUMBERED MEMORANDUM', 'active'),
(3192, '2023-09-20DM462', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF WORLD TEACHERS DAY INCENTIVE DENEFIT (WTDIB) FOR CY 2023', 'http://depedmanila.net:5000/d/s/vMDgnd7wjHRgAgp1PKgJDjuboKclhrYl/8XURaWe9SOwFciquDRHMjs8BuF6JSr1Q-BrfAOGSPxgo', '462', '2023-09-20', 'NUMBERED MEMORANDUM', 'active'),
(3194, '2023-09-20UM189', 'FIRST LEARNING ENGAGEMENT AND MANAGEMENT MEETING OF SECONDARY JOURNALISM FOR SY 2023-2024', ' http://depedmanila.net:5000/d/s/vI3b2F8bDSFyB6SueCM9wSR1MnR1kd41/FjVGOOIJ5DBABXHcdQJGZZeRSxFR-PMC-H79AHddUwwo', '189', '2023-09-20', 'UNNUMBERED MEMORANDUM', 'active'),
(3197, '2023-9-19-1217', 'INVITATION FROM THE MUSEUM, DE LA SALLE UNIVERSITY', ' http://depedmanila.net:5000/d/s/vI8meMyjsVwRrwJxcrZq6lCpvitvlbj9/aCwdDccidmJcCMGNlCwbCzk_YQ5n_a14-hrcgC29lwwo', '257', '2023-09-20', 'DIVISION ADVISORIES', 'active'),
(3198, '2023-9-7-337', 'CAREER GUIDANCE OF 2024 SENIOR HIGH SCHOOL GRADUATING STUDENT AND GRADE 10 COMPLETERS', ' http://depedmanila.net:5000/d/s/vIgU0kIqmPxNoLVf3LifmMHxlWhv5syx/wnAfgF6k-qOo92NAS-VqNCNcZeAfbqnk-fbMAznvRwwo', '337', '2023-09-21', 'DIVISION CIRCULARS', 'active'),
(3199, '2023-9-11-9948', 'WRITESHOP ON THE FINALIZATION OF MONITORING TOOLS FOR IMPLEMENTATION OF INCLUSION PROGRAMS', ' http://depedmanila.net:5000/d/s/vIgyDDolZiYL2QScJwkHvIDBRKJsMTPE/XXNfg2JMjRrGj0-b4sIu6jSkkqWl2Lco-HbSgywLTwwo', '255', '2023-09-21', 'DIVISION ADVISORIES', 'active'),
(3200, '2023-09-21DM464', 'REVISED COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NATIONAL - PAID PERSONNEL', ' http://depedmanila.net:5000/d/s/vIsc8rPp9ESwwf5Md04fDyVJejHHtDwE/SoyoTvFheb8yFC_RuWThNnvHGnkoudNV-MLOgZE34wwo', '464', '2023-09-21', 'NUMBERED MEMORANDUM', 'active'),
(3201, '2023-8-31-9489', 'DATA PRIVACY ACT AWARENESS (DPA) WORKSHOP, PRIVACY IMPACT ASSESSMENT (PIA) AND CYBER SECURITY', ' http://depedmanila.net:5000/d/s/vIt4jqfRuPXoPFPNkiTkX6ESB8iT18n4/dTd1cqPAO5BrDF0bAwpaFgrjtWHEkrXs-B7Qg37v5wwo', '256', '2023-09-21', 'DIVISION ADVISORIES', 'active'),
(3202, '2023-09-21UM190', 'CORRIGENDUM TO THE UNNUMBERED DIVISION MEMORANDUM DATED SEPTEMBER 6, 2023 WITH CONTROL NUMBER 175-23', ' http://depedmanila.net:5000/d/s/vIu9SV9Bb5efv2ei8nVHzQ6lv7G4dhYM/patPxF1fHnoCQg6_Mtjjwt8f4OGykOmI-qrWA1zH9wwo', '190', '2023-09-21', 'UNNUMBERED MEMORANDUM', 'active'),
(3203, '2023-09-21UM191', 'CREATION AND COMPOSITION OF SDO MANILA MONITORING TEAM FOR CITY PROGRAMS PROJECTS', ' http://depedmanila.net:5000/d/s/vIy4T2r9CgoRJ5IXmk3NbTRVlm7YT7qs/i20TaG6X9ruGyexPvq5plRVhDn2uUZZ7-JruAdLgJxAo', '191', '2023-09-21', 'UNNUMBERED MEMORANDUM', 'active'),
(3204, '2023-09-25UM193', 'INCIDENT COMMAND SYSTEM-TRAINING FOR INSTRUCTIONS (TFI)', ' http://depedmanila.net:5000/d/s/vM6rASjyg85S4dY2yXGx00gD3hOJthwC/gcYwzoGVNb9ufQxLxjhzUDkJtsU2PxlX-k7vAIZR5xgo', '193', '2023-09-25', 'UNNUMBERED MEMORANDUM', 'active'),
(3205, '2023-09-25UM192', 'COORDINATION AND PLANNING MEETING IN PREPARATION FOR LOWER MEET COMPETITIONS FOR SCHOOL YEAR 2023-2024 (SPORTS CLUB)', ' http://depedmanila.net:5000/d/s/vM9WTVVvdOp5COJN8eBTIKQplwcjeiue/1yK15YRG2JZdL9XGOTUgMEbq1ACo7q_0-ar_gkC2Cxgo', '192', '2023-09-25', 'UNNUMBERED MEMORANDUM', 'active'),
(3206, '2023-09-25DM465', 'CONDUCT OF LOWER MEET SPORTS COMPETITIONS IN PREPARATION FOR THE 2024 PALARONG PAMBANSA', ' http://depedmanila.net:5000/d/s/vM9k8c5FDabZryBoL9pnm0vtHvGHYCVc/cUSOuZFn2h3J_pM4J8oNy2WbpjZ0J5eD-3b8gYtmCxgo', '465', '2023-09-25', 'NUMBERED MEMORANDUM', 'active'),
(3207, '2023-9-21-1438', 'THE EFFECTIVE METHODS AND ENABLING POLICY OF MANAGING RECORDS DISPOSITION PROGRAM IN GOVERNMENT OFFICE', 'http://depedmanila.net:5000/d/s/vMA1L1LJngugK8GYchkothJH9kdfIkb5/ctIo9z8N5wtpLqhn6yh_zTp52PpKCnxT-frAA8cWDxgo', '260', '2023-09-25', 'DIVISION ADVISORIES', 'active'),
(3208, 'RCRDSDANI071194', 'MEDIA AND INFORMATION LITERACY ADVOCACY', ' http://depedmanila.net:5000/d/s/vMEP9lVFeErsNvPYYCZSfQO9jwJqcrMM/Yv1AeVFzfhL8ntlj8WKaOFVVW49w01Dx-K7gACbyRxgo', '145', '2023-09-25', 'DIVISION CIRCULARS', 'active'),
(3209, '2023-9-21-1440', '3 Day Training Program on Boosting Employee Productivity Through Values Formation', ' http://depedmanila.net:5000/d/s/vMpu7BeWgSJdL5YGwXQZ55W9J9wFlqjC/ILWAGgUbNCvyQjek1N8gE2gBsB0MjamT-BL6gvuAJxwo', '20239211440', '2023-09-26', 'DIVISION ADVISORIES', 'active'),
(3210, '2023-9-21-1448', 'Fun Fiesta sa Pilipinas 2023', ' http://depedmanila.net:5000/d/s/vMpu7udwnmyvDMOyLDzBM74ntOnxvxGY/0VlJXl860w66RFlbgAp_msWTw2e2ynyF-Pb5geIUKxwo', '20239211448', '2023-09-26', 'DIVISION ADVISORIES', 'active'),
(3211, '2023-9-21-1437', 'Workshop on the Finalization of Policy Guidelines on the Safe Use of Technology in Teaching and Learning', ' http://depedmanila.net:5000/d/s/vMpu8HmFu8CcilBsLBhG2dHSEAyQhyGX/ujI7AujPdeIduJyVgQZxxM2Ssxup6shx-UL6AtfEKxwo', '20239211437', '2023-09-26', 'DIVISION ADVISORIES', 'active'),
(3212, '2023-9-21-1442', 'PBED Sibika Ph Online Contests', ' http://depedmanila.net:5000/d/s/vMt5lNquDlbyZIejhzr63RFAIFlMP27Z/EhGhP6UTII5O8blbJv7GOEEt00MEp7hy-ArDg0R4Uxwo', '20239211442', '2023-09-26', 'DIVISION ADVISORIES', 'active'),
(3213, '2023-9-21-1444', 'A Booster for Records Management', ' http://depedmanila.net:5000/d/s/vMtKz59D0lZqxN99XUPPKNrczdwgXnHG/lNgO70KY4y61XBJrPd5d8_XrG0IhScUc-W7AAcNAUxwo', '20239211444', '2023-09-26', 'DIVISION ADVISORIES', 'active'),
(3214, '2023-9-21-1450', 'POEM-MTAP Saturday Program in Mathematics for Regular and Talented Students for Schools Year 2023-2024', ' http://depedmanila.net:5000/d/s/vMtXHNucFh3e0YRT8q1ESPj3nt2fNaXP/ZmhYuUOsot5O9gkgMhd3BNonYX-B8lcn-xLDAPXEVxwo', '20239211450', '2023-09-26', 'DIVISION ADVISORIES', 'active'),
(3215, '2023-9-21-1452', '12th Philippine Professional Summit PPS12', ' http://depedmanila.net:5000/d/s/vMtgiz5xBv72dzLVgQPUEnE7b09R1Otq/Mn-_zNQBYGbnTtq_MLGtSp87A0_5Ns1Y-BrGA_e4Vxwo', '20239211452', '2023-09-26', 'DIVISION ADVISORIES', 'active'),
(3216, '2023-09-26DM466', 'TRAINING ON LEARNER INFORMATION SYSTEM (LIS) BEGINNING OF-SCHOOL-YEAR (BOSY) ENCODING AND UPDATING REQUIREMENTS', 'http://depedmanila.net:5000/d/s/vN4rsXo7V5sV1d17AGI0cDlE6GHeD0p3/ONuuHi3bapVrZxMJWdvMQwF1DJoKcmdJ-7bBgJRM6xwo', '466', '2023-10-07', 'NUMBERED MEMORANDUM', 'active'),
(3217, '2023-8-31-9489', 'DATA RPIVACY ACT AWARENESS (DPA) WORKSHOP, PRIVACY IMPACT ASSESSMENT (PIA) AND CYBER SECURITY s. 2023', ' http://depedmanila.net:5000/d/s/vNvxmA7r07n7ClF7pzrTPkCKTNicng4I/0WfvmAAJAg6r9sMV3le25UfjyTrpJL2R-nbJAmtfjxwo', '256', '2023-09-27', 'DIVISION ADVISORIES', 'active'),
(3218, '2023-9-20-1327', 'CERVICAL CANCER AWARENESS AND SCREENING', ' http://depedmanila.net:5000/d/s/vNw5XbwRuxC8UclWj9ZRV4o9lEFsINMN/NKok1lZyai3wumRtlCPCde6tZPW8D7K3-7rIgPTrkxwo', '194', '2023-09-27', 'UNNUMBERED MEMORANDUM', 'active'),
(3219, '2023-09-27DL146', '\"ME AND MY HERO\" PHOTO CONTEST', ' http://depedmanila.net:5000/d/s/vNwJSNZVTWBw7yY6JJUndm42k7e5V7ds/oqO0KEah8yngKXqSIXamq7-xzTdAnkh9-WrMArvzkxwo', '146', '2023-09-27', 'DIVISION CIRCULARS', 'active'),
(3220, '2023-09-27DM469', 'DESIGNATION OF SCHOOL TESTING COORDINATORS AND ASSISTANT SCHOOL TESTING COORDINATORS FOR SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/vNwT0WwpYIQJwuM8rWP2jM9wI93l4Oge/2gXapjUTEWY1A52G3-hUnGkS240dqQaA-s7MgmHnlxwo', '469', '2023-09-27', 'NUMBERED MEMORANDUM', 'active'),
(3221, '2023-9-26-1802', 'LEARNING INFORMATION SYSTEM (LIS) BEGINNING OF SCHOOL YEAR (BOSY) ENCODING FOR SY 2023 - 2024', 'http://depedmanila.net:5000/d/s/vNwcQMzOz3cCvUbVfb6gnKi14Axytv9g/RRN1KCDMu2bFlOjrFvTRep8yqfPVFCli--LPAAfXlxwo', '470', '2023-09-27', 'NUMBERED MEMORANDUM', 'active'),
(3222, '2023-9-15-1065', 'CONDUCT OF THE PHILIPPINE SCIENCE HIGH SCHOOL (PSHS) NATIONAL COMPETITIVE EXAMINATION (NCE) FOR S.Y. 2024-2025', ' http://depedmanila.net:5000/d/s/vNwrdw3M4Pg9aFgjP17LHMEnYZdUt2cP/dHHqJ13BpJyX2_uRnXhmIxJONPhbmSKV-crRgecPmxwo', '468', '2023-09-27', 'NUMBERED MEMORANDUM', 'active'),
(3223, '2023-9-21-1435', 'VENUE AND PARTICIPATION OF SDO SEPS-HRD IN THE CONDUCT OF REGIONAL TRAINERS ON HOTS-PLPs IN FOR GRADES 9 AND 10 SCIENCE TEACHERS', ' http://depedmanila.net:5000/d/s/vNx2BGPbkHQCmDMIwGFm5r8CGlYHzXK4/yaTbm33A4kIEf0HzkYma4r67t4H_KNO_-2LRAyVLnxwo', '261', '2023-09-27', 'DIVISION ADVISORIES', 'active'),
(3224, '2023-9-12-636', 'ADDENDUM TO THE INVITATION TO THE 23RD NATIONAL ASSOCIATION OF DENTAL TRADERS, INC. (NADTI) TRADE EXHIBITS', ' http://depedmanila.net:5000/d/s/vNxCA36N28rZGaM5wxf2A1qcvX2MF7CC/bBXQ08T1-F2o1Yx1ImjVrqYmZhPLvI64-QbWgJ9rnxwo', '242', '2023-09-27', 'DIVISION ADVISORIES', 'active'),
(3225, '2023-9-21-1443', 'INVITATION TO THE 15TH ASSEMBLIES OF PUBLIC SECONDARY SCHOOL HEADS', ' http://depedmanila.net:5000/d/s/vNxLbUCwrbiIjFPnc7D2DSNUNGPNnS7r/7tXfcw7lHoJAuPbRKDTFquDdCjNEiKSS-r7UACmHoxwo', '262', '2023-09-27', 'DIVISION ADVISORIES', 'active'),
(3226, '2023-09-26DM467', 'VACANCIES FOR NONTEACHING PERSONNEL IN THE SCHOOLS DIVISION OFFICE OF MANILA', ' http://depedmanila.net:5000/d/s/vN5SlWvWQIroXra18dqb7qAj4mnzxP2l/yR1zfPjW1E9wP5uNnaAOdB9bp1oA0jGE-J70gL9tRyAo', '467', '2023-09-26', 'NUMBERED MEMORANDUM', 'active'),
(3227, '2023-9-11-610', 'TANG KIDNOVATORS CAMP', ' http://depedmanila.net:5000/d/s/vOWw6TIJaSQURiobKDfwvBZ129L9QznU/HzHVmG_vkgKFLVeL3ep0vOhtb4lYpWaK-QLEAiEVayAo', '265', '2023-09-28', 'DIVISION ADVISORIES', 'active'),
(3228, '2023-9-18-1087', '51ST NATIONAL DEMONSTRATION FESTIVAL (DEMOFEST)', 'http://depedmanila.net:5000/d/s/vOfv1ONj2spDxztKIv6jeOw7kHAhSE20/WA8NAJiz_WQb2IDp23CYntBtWhed_U3M-3b0gdfh2yAo', '263', '2023-09-28', 'DIVISION ADVISORIES', 'active'),
(3229, '2023-9-25-1651', 'INVITATION TO ATTEND THE 11TH CONFERENCE ON CHILDREN AND YOUNG ADULT LIBRARIANSHIP (11TH CCYAL)', ' http://depedmanila.net:5000/d/s/vOfbXQxhnqjaej1WzyoFgmgY8YWSrxpV/hKoXlchVY2j5JVTJ9u0NJa42QMtyRzTI-Qb0AoRd2yAo', '264', '2023-09-28', 'DIVISION ADVISORIES', 'active'),
(3230, '2023-9-13-756', 'APPOINTMENT AND REAPPOINTMENT OF THE TEACHERS AND SCHOOL ADMINISTRATORS TO THE DIFFERENT YWCA FFPI YOUTH', ' http://depedmanila.net:5000/d/s/vOZGBkuP3BbpXlGabZBXP4mqfbttGO0k/96Z_4SXUgY7UkYyeTbYz0FoIlfJFXmbx-NL6g5YF3yAo', '147', '2023-09-28', 'DIVISION CIRCULARS', 'active'),
(3231, '2023-09-28DM471', 'DISSEMINATION OF THE CITY COUNCIL OF MANILA RESOLUTION NOS. 412, 413, AND 414, SERIES OF 2023', ' http://depedmanila.net:5000/d/s/vOgS0jT3aWNrspPEaQSTVwtC10JquZsq/cuSfIgt4bsnaPV1APCZHaKiwZxRHBuJW-6L5gHsF4yAo', '471', '2023-09-28', 'NUMBERED MEMORANDUM', 'active'),
(3232, '2023-09-28DM472', 'E-FAST ELECTRONIC FEEDBACK ACCOMPLISHMENT SYSTEM FOR TECHNICAL ASSISTANCE GUIDELINES', ' http://depedmanila.net:5000/d/s/vOgk0BmfGGnKX6wfr7Ix61LfaqPiao48/aX_i7Mpp6ccBk8o__fKx_rUgzDjOIji_-V79gY615yAo', '472', '2023-09-28', 'NUMBERED MEMORANDUM', 'active'),
(3233, '2023-9-20-1324', 'ORIENTATION ON THE USE OF TEACHER\'S AUDIT FORMULA FOR SCHOOL PERSONNEL ASSIGNMENT LOADING', ' http://depedmanila.net:5000/d/s/vOjLOWxBiMtkvrKrv1Rm5vqjlYgyW0V3/Q0F3cLRoyZI_D3ISwEfwdD4LspA-gdkX-_7LAYTSCyAo', '474', '2023-09-28', 'NUMBERED MEMORANDUM', 'active'),
(3234, '2023-9-21-1540', 'ESTABLISHMENT OF THE SCHOOL COORDINATING COUNCIL FOR SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/vOjlcPaeX3Ujdhx1Qk84F5aHfjvz2pIs/i_QmNNmYMRfpKDO9D7gkFw6Amz9yVMez-qrPgy2iDyAo', '475', '2023-09-28', 'NUMBERED MEMORANDUM', 'active'),
(3235, '2023-9-22-1567', 'AGUS PRODUCTIONS\' GUSTO KO MAGING', ' http://depedmanila.net:5000/d/s/vOk2SLqHKo7JZsw6jtvzpGrkxguRXea6/eTF2be2u8_jH6IJcT_gK8FxxiHbrYsnl-GbQA9jaEyAo', '266', '2023-09-28', 'DIVISION ADVISORIES', 'active'),
(3236, '2023-9-22-1599', 'RELEASE OF LOAD EXPENSES FOR SCHOOL DRRM COORDINATORS', ' http://depedmanila.net:5000/d/s/vOkb9fPVEH5boyRcA1pWojviBEFqvmBd/96XY62QvBCt9-jlHBRPk7Cvva-Il3jcL-67SgZwOGyAo', '476', '2023-09-28', 'NUMBERED MEMORANDUM', 'active'),
(3237, '2023-9-22-1601', 'REVIEW AND ENHANCEMENT WORKSHOP OF CONTINGENCY PLAN FOR DIFFERENT HAZARD', 'http://depedmanila.net:5000/d/s/vOnchHEe2uec6Krhez56KkTWvvYKOclc/AmMk_909bF02IxUii3rqBFo0boSEtPjq-ormg4aOPyAo', '195', '2023-09-28', 'UNNUMBERED MEMORANDUM', 'active'),
(3238, '2023-9-26-1802', 'LEARNER INFORMATION SYSTEM (LIS) BEGINNING OF SCHOOL YEAR (BOSY) ENCODING FOR SY 2023 - 2024', 'http://depedmanila.net:5000/d/s/vOl4t61NIMDad89p2A53olzxaOopLZhe/luVa1_4k6RwjX4eybmTcwPR88Lks2QxD-37WA-5aHyAo', '473', '2023-09-28', 'NUMBERED MEMORANDUM', 'active'),
(3239, '2023-9-21-1512', '2023 SCOUTING MONTH CELEBRATION', 'http://depedmanila.net:5000/d/s/vOnlSeaMAYBxKsbM2b59XSUvkk57MLmK/zhoeo8qMkX-7AVz0o_gL3NKtA9O8SCyG-97mg8UGQyAo', '149', '2023-09-28', 'DIVISION CIRCULARS', 'active'),
(3240, '2023-9-27-1897', 'UP Research Fair 2024', ' http://depedmanila.net:5000/d/s/vPOu3nFYjlpviFb37FFwDGjuUp5vN9ih/owKo0Iy9AoOPX6DFTpl_wGNABnOfn9WX-67VAkhkHyQo', '20239271897', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3241, '2023-9-27-1899', 'Run Researchers Run', ' http://depedmanila.net:5000/d/s/vPP9sBCRQm8rTGLJpuAYL5FDyDyc3xfc/XNln-Z4KGBhN0T78HKLluIlMsN4MRCSk-TbagWOEHyQo', '20239271899', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3242, '2023-9-27-1900', 'International Research Colloquium and Research Bulletin', ' http://depedmanila.net:5000/d/s/vPPIchTBxDVlbLTrdYiHpRyvbrVMfQnl/XScrXWdrjRlqf3M8Jg30HzqKerdxgE9D-l7aAOU4IyQo', '20239271900', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3243, '2023-9-27-1902', 'Conduct of the Induction Program for Beginning School Heads through the School Heads Development Program', ' http://depedmanila.net:5000/d/s/vPPS5FYINyv4dG6qdPjUAQ2Lofge6zuT/tO8jt-3r2wsxPJ3u39NopzO_HL19HLqQ-4bZgFMwIyQo', '20239271902', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3244, '2023-9-27-1905', 'Philippine Mobile Music and Theater Productions', ' http://depedmanila.net:5000/d/s/vPPd8EtY55f4dNx6MsGNFMrgKbbKHbQj/9I_XGMbg1VOSfv1OpJ8cY8XG4yfH2aOk-Nrfgg10JyQo', '20239271905', '2023-09-29', 'DIVISION ADVISORIES', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(3245, '2023-9-27-1907', 'UP Likas 32nd National Conference', ' http://depedmanila.net:5000/d/s/vPPkLAt2w8ezqQA4MFS3iXCjjIE6228I/uOybkIbVL5nIMlJRFnNk7tHYduYrZD5y-cLcg4b4JyQo', '20239271907', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3246, '2023-9-27-1908', 'Film Gusto kong Maging', ' http://depedmanila.net:5000/d/s/vPPzhhan8OYsO5bMcrvaKrf0o1M3yPaH/Bk7y7QPcKewz-_3JM8j2XXk4bkG1O8aq-yLeAn4kKyQo', '20239271908', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3247, '2023-9-27-1910', 'DLSZs SPARKed Applied Sciences Robotics Webinar-Workshop Series', 'http://depedmanila.net:5000/d/s/vPQB6y1MCBnmGhamOcbnVHhPkxT4Tjbc/ovURGFB8CkINejxmSANt0vpJJUaf2U4h-D7hgRyMLyQo', '20239271910', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3248, '2023-9-27-1912', 'Workshop on the Development of Formative Assessment Resource Package on ESM with a Focus on 21stc Century Skills - Phase 2', ' http://depedmanila.net:5000/d/s/vPQKfTOaqdRcQd2XKB6Z2Gd7MlQE96gC/68rm1OgmhIpvOGD78ylY2UPcSsrGq6Ac-Trggs50LyQo', '20239271912', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3249, '2023-9-27-1914', 'Christian Presbyterian Church CPC', ' http://depedmanila.net:5000/d/s/vPQTwtQq4XvG6a08cCM6uwdEdw4dWYA5/yyIOU9zPS0lyMrY4xx7Q92cASnyjUHMa-lLigNRgMyQo', '20239271914', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3250, '2023-9-27-1915', 'Development Academy of the Philippines DAP Public Management Development Program PMDP Middle Managers Class MMC Batch 33 and Senior Executives Class SEC Batch 13', ' http://depedmanila.net:5000/d/s/vPQYyFY8VkgIcI2DgVvWOAkosyzCWhLS/CjYrWEiY3bCCir-SUtL09ajQfIVgEFXs-u7hA0VoMyQo', '20239271915', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3251, '2023-09-29UM196', 'PHYSICAL INVENTORY OF REAL PROPERTY', ' http://depedmanila.net:5000/d/s/vPVLZJtzgG6HfjxSWery8dpKNxyb5NlT/7LSYdogkMIYuM51Ht8KD9FXvIW2HwC5H-Hr-AVLobyQo', '196', '2023-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3252, '2023-9-21-1510', 'SCHOOL BIBLE AND JOURNAL PROPOSAL', ' http://depedmanila.net:5000/d/s/vPY5hy07YG5nFpNEOJVdrSZdChijrCD2/k8JbxWCqMSnfOWFIW0D11z-BfClZI9BF-HrOgFoYkyQo', '267', '2023-09-29', 'DIVISION ADVISORIES', 'active'),
(3253, '2023-09-29UM197', 'PROFESSIONAL MEETING OF KINDERGARTEN TEACHERS', ' http://depedmanila.net:5000/d/s/vPb6zAM6dCWpy1rn5iNaXnIDAqZvFxe2/YOIYTolqulxcSz6nvSYgSj6C_8hBLoyF--LegMjQuyQo', '197', '2023-09-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3254, '2023-09-09DM477', 'MGA NAGWAGI SA PANDIBISYONG TAGISAN NG TALINO KAUGNAY SA PAGDIRIWANG SA BUWAN NG WIKANG PAMBANSA 2023', ' http://depedmanila.net:5000/d/s/vPbKcgiDCcQS7J1FkkmjFWRu6mHZvyLh/r_40Rlt5HPjZ_7rNwkdi1jULHtyD2q-K-WrjAz_MuyQo', '477', '2023-09-29', 'NUMBERED MEMORANDUM', 'active'),
(3255, '2023-10-02DL150', 'OUT-OF-DOORS ACTIVITIES FOR THE TWINKLERS\' PRE-SCHOOLERS GIRL SCOUTS AND STAR HOLIDAY FOR GRADES I-III', ' http://depedmanila.net:5000/d/s/vRt7NztTy6PzJk0WcbaDaR4Cv6kHikd7/1n2A6vf2SB8qk0WaWRj79qXg4crmQPH5-lLlAWhb1ygo', '150', '2023-10-02', 'DIVISION CIRCULARS', 'active'),
(3256, '2023-9-28-2000', 'SUBMISSION OF RESEARCH DELIVERABLES UNDER 2023 BASIC EDUCATION RESEARCH FUND (BERF)', ' http://depedmanila.net:5000/d/s/vS2XHV3dNt5UhsrZQcejZM3VQ4tK31oy/iBOMcLQf_JhPSeVFkve4A5E-rH_KA1ff-d7VgwD8Tywo', '478', '2023-10-02', 'NUMBERED MEMORANDUM', 'active'),
(3257, '2023-9-29-2027', 'School Health Employees Association  National Capital Region Inc 7th Board Meeting', ' http://depedmanila.net:5000/d/s/vS5Br2KnOPKoGglMJMXENPhVkSvcF22r/8PpQehoVUr-f_S7JZppl2b75XqWewsBT-2bgA0aMbywo', '20239292027', '2023-10-02', 'DIVISION ADVISORIES', 'active'),
(3258, '2023-10-03DM480', 'VACANCIES FOR NONTEACHING PERSONNEL IN THE SCHOOLS DIVISION OFFICE OF MANILA', ' http://depedmanila.net:5000/d/s/vSoX4oGcYKUK4YBu4lUFtWi4l7VoSoKN/qGmaToiQinHN7Fzvky6C7uQWj77Qh8rb-YL5ghfasywo', '480', '2023-10-03', 'NUMBERED MEMORANDUM', 'active'),
(3259, '2023-10-03DA268', 'WORKSHOP SEMINAR FOR TEACHERS ON SELECTED TOPICS IN HIGH SCHOOL MATHEMATICS PROVING IN GEOMETRY AND PROBABILITY AND COUNTING', ' http://depedmanila.net:5000/d/s/vSs3wvYoEmjs9LpKZ9AN30xnXsEjQM4v/dE7wC735dik8VTNaLcdvUK9WqS2jartD-eLNALlC4ywo', '268', '2023-10-03', 'DIVISION ADVISORIES', 'active'),
(3260, '2023-10-03DA269', 'WEARING OF BOY AND GIRL SCOUT UNIFORM DURING THE SCOUTING MONTH OF OCTOBER', 'http://depedmanila.net:5000/d/s/vSwg37PoL7OTtiIbyDvsuaPxScnONq7G/l9InpA5gdznBGrlO87JU6-q7Z1Hm66dT-xbnAzQXHywo', '269', '2023-10-03', 'DIVISION ADVISORIES', 'active'),
(3261, '2023-10-04DA270', '11TH ANNUAL NATIONWIDE SEARCH FOR THE LITTLE MATH WIZARD', ' http://depedmanila.net:5000/d/s/vTZZdolSsH37tsat9iFQ0IV7PTebYaBp/lX4QOBd_s49Et4mwUZNO6qUGfiM_QsiH-sLlgy5tDzAo', '270', '2023-10-04', 'DIVISION ADVISORIES', 'active'),
(3262, '2023-9-25-1685', 'AUDITION FOR TAPE INC. S WORD OF THE RINGS SEGMENT', ' http://depedmanila.net:5000/d/s/vTklhNHR0oFeL1567e7y6uCjvc2yACjx/FrgUZbev9krzLCBtUbbqXovqnWZdpRl2-_bfAYXNnzAo', '271', '2023-10-04', 'DIVISION ADVISORIES', 'active'),
(3263, '2112', 'SCHOOL VISIT OF THE PHILIPPINE SCIENCE HIGH SCHOOL', ' http://depedmanila.net:5000/d/s/vTkyOP8LlPbetJ9Pq9nBUitzLZChHl0O/4g6xMr6KvSeYN7orRJj76e7b6fG57oAA-RLggGRpozAo', '482', '2023-10-04', 'NUMBERED MEMORANDUM', 'active'),
(3264, '1422', 'CONDUCT OF THE GAWAD TEODORA ALONSO 2023 (5TH NATIONAL COMPETITION ON STORYBOOK WRITING)', ' http://depedmanila.net:5000/d/s/vTlRBQ4DE29iuOHrh8Dd31lPkbGGLLXi/mc2Ab8MFkeVZUuooWlJx6XTjYbSANKJf-F7mgJq5pzAo', '483', '2023-10-04', 'NUMBERED MEMORANDUM', 'active'),
(3265, '2023-10-04UM199', 'CORRIGENDUM TO REGIONAL MEMORANDUM NO. NCR-663 S. 2022 RE TEACHERS TRAINING COURSE ON ASSESSING LEARNING OUTCOMES USING SOLO FRAMEWORK APPROACH', ' http://depedmanila.net:5000/d/s/vTlpyFCPqyxxWoa0hsC9JILHY4bRlW8O/KNjgiwptZrtfTJCPM-ytENLxvmu2n3h7-qLkgKPVqzAo', '199', '2023-10-04', 'UNNUMBERED MEMORANDUM', 'active'),
(3266, '2023-10-05DL151', 'OUT-OF-DOORS ACTIVITIES FOR THE TWINKLES PRE-SCHOOLERS GIRL SCOUTS AND STAR HOLIDAY FOR GRADE I-III', ' http://depedmanila.net:5000/d/s/vUJEEt6wrILeezzqMEbWJT1SJKgzx0rc/k4_zk83GauyZVo6ShX4aNkWwofYGTdm5-br0g3OLVzAo', '151', '2023-10-05', 'DIVISION CIRCULARS', 'active'),
(3267, '2023-10-05DA272', 'GUANGDONG-HONGKONG-MACAO GREATER DAY AREA MATHEMATICAL OLYMPIAD HEAT ROUND 2023 - PHILIPPINE REGION', ' http://depedmanila.net:5000/d/s/vUJZN3gaXNv2zfp6q2zgfKaFAPa9U6xb/5UwnEPmC3UTCH_Tj-MbWFS-f1sS4_vV_-DL4AFRLXzAo', '272', '2023-10-05', 'DIVISION ADVISORIES', 'active'),
(3268, '2023-10-05DM484', 'INVITATION FOR CLCS AND ALS TEACHERS TO UNESCO-DEPED-KOICA COOPERATION PROJECT CEREMONY GRAND PROJECT CLOSURE', 'http://depedmanila.net:5000/d/s/vUOhg2E3pQYVVV69BjmfObFygRjK1KLG/qkHyiAWOR40CULVyLZr1FSk9Xf0IBlZC-v7BAfmfnzAo', '484', '2023-10-05', 'NUMBERED MEMORANDUM', 'active'),
(3269, '2023-10-05DM485', 'DIVISION SUPPLEMENTARY LEARNING RESOURCE (SLR) COMMITTEE AND MANAGEMENT TEAM', ' http://depedmanila.net:5000/d/s/vUPkR7HLXUZefluAkN96VVbMxXF8WlEy/C88ol4xoLcOinXtvaYbKg3xFz8_G_awe-BLKgWLjqzAo', '485', '2023-10-05', 'NUMBERED MEMORANDUM', 'active'),
(3270, '2023-10-05UM200', 'ORIENTATION ON THE GUIDELINES ON THE PROVISION OF SUPPLEMENTARY LEARNING RESOURCES FOR PUBLIC SCHOOL LIBRARIES AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/vUUIe5vMyOwb4m7AtHJvjJ4Velg0GV07/UymQMSp-6E-F6xFPatxIBjgX_55O-L2e-IbdgEF75zAo', '200', '2023-10-05', 'UNNUMBERED MEMORANDUM', 'active'),
(3271, '2023-10-05UM201', 'PLANNING FOR PHASE II CAPACITY BUILDING FOR ALS TEACHERS AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/vUUYiPFvd3xJcNqGaMctdfhgcMdDFvO4/E7hN7XSHr8pQeWnuAEB9gK_rEWjffhru-jrcAkyD6zAo', '201', '2023-10-05', 'UNNUMBERED MEMORANDUM', 'active'),
(3272, '2023-9-29-2048', 'DESIGNATION OF NEW NURSE-IN-CHARGE FOR SDO MANILA HEALTH AND NUTRITION UNIT', ' http://depedmanila.net:5000/d/s/vUUzSwKY7fkdSuiFVYLP213ygH1oH7u4/rWzFZAeNQ-VGEMA3kn9zROHPifuKr4o9-Qbhg0YL7zAo', '486', '2023-10-05', 'NUMBERED MEMORANDUM', 'active'),
(3273, '2023-10-05DM481', 'GUIDELINES ON THE IMPLEMENTATION OF EDUKASYONG PANTANAN AT PANGKABUHAYAN (EPP), FOR GRADES 5 AND 6 AND TECHNOLOGY AND LIVELIHOOD EDUCATION (TLE) FOR GRADES 7 AND 8, SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/vUVDgKfoowD2eUsqOsQvUTB8IkMnMzgk/5jZM0CWCMENN0KepxY0gjQ-VncTnW8WQ-ybigoF_8zAo', '481', '2023-10-05', 'NUMBERED MEMORANDUM', 'active'),
(3274, '2023-10-05DA273', 'FREE 10-DAY INTERNATIONAL TRAINING FOR EPP, TLE AND TVL EDUCATORS AND SCHOOL HEADS ON 21ST CENTURY LEADERSHIP, PEDAGOGIES, AND CRISIS MANAGEMENT WITH MODULE AND BOOK WRITING', ' http://depedmanila.net:5000/d/s/vUVr7KXtWKiPslEejdUa9yaUTkoMu1qd/vuCXvvVe2c5yh64YzlrUtwU_NMRFZA5L-9bmAPGH-zAo', '273', '2023-10-05', 'DIVISION ADVISORIES', 'active'),
(3275, '2023-10-05OM014', 'REITERATION OF CERTAIN PROVISION IN DEPED ORDER 43, S. 2022', ' http://depedmanila.net:5000/d/s/vUW6stvTEAy6jxQwSuUPoUtNUp8tLNAU/ezZxVGEnxh_1lWpoHv5sk0EiGpaiz7P0-YboA-Br_zAo', '14', '2023-10-05', 'OFFICE ORDER', 'active'),
(3276, '2023-10-05DM487', 'ORIENTATION ON SCHOOL-BASED FEEDING PROGRAM (SBFP) SY 2023-2024', ' http://depedmanila.net:5000/d/s/vUXnPi8WfDKL2WSGpMZBApWmsxBDRoMk/fQfXucchCuEwoKGKCG3P9S1Ye3ISYkbF-sb0ATH0EzQo', '487', '2023-10-05', 'NUMBERED MEMORANDUM', 'active'),
(3277, '2023-10-05UM198', 'GENERAL ASSEMBLY FOR MUSIC TEACHINGS OF MANILA', ' http://depedmanila.net:5000/d/s/vUY0YIV3KYc6xsBqjGKx6xj9IwJkhqvB/ZP2x2qY03qg_abOcqwsV8gQ2FNFG51vQ-AL4gryYFzQo', '198', '2023-10-05', 'UNNUMBERED MEMORANDUM', 'active'),
(3278, '2023-10-4-2350', 'ENCODING IN THE NCR CONSOLE FOR LEARNING AND OPERATIONS IN A UNIFIED DATABASE (CLOUD) AND SDO-MANILA SCHOOL PERSONNEL DATABASE FOR 2024 PROFESSIONAL DEVELOPMENT PLANNING', ' http://depedmanila.net:5000/d/s/vUZMMXIXmT3FQPjjyvPagMRndfHVuNnR/pobF6B6SgATJTuMpithkaUAhzh2ktmnX-MrAAI8MJzQo', '488', '2023-10-05', 'NUMBERED MEMORANDUM', 'active'),
(3279, '2023-10-3-2191', 'ONLINE ORIENTATION ON THE IMPLEMENTATION OF DEPED MEMORANDUM NO. 52, S. 2023, ADOPTION OF ELECTRONIC SCHOOL FORM 7 (ESF7)', ' http://depedmanila.net:5000/d/s/vUZtcaIxVwabhIU1wp8LKtkNzTTZiUOn/Medoh8KHCegNquq2z3s9F6yJbqKT5FUA-A7Ggy1wLzQo', '203', '2023-10-05', 'UNNUMBERED MEMORANDUM', 'active'),
(3280, '2023-9-19-1303', 'ORIENTATION OF MATATAG RESEARCH AGENDA AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/vVC9ph6tsgbq4qATeteECSR7WZkXvCEQ/W7dt-NPbwifzjAaI6BcuH3nuaU0ZxcSZ-kbLgZ8SFzQo', '202', '2023-10-06', 'UNNUMBERED MEMORANDUM', 'active'),
(3281, '2023-9-21-1536', 'EMPLOYEE REGISTRATION TO PHILHEALTH KONSULTA', ' http://depedmanila.net:5000/d/s/vVMxacDd6Ds9tBAThYvPxViSvHGYgDHr/aRTJnbqhVwZsHcNzKABHEmrfs2IwkdDK-bbDgC2KozQo', '489', '2023-10-06', 'NUMBERED MEMORANDUM', 'active'),
(3282, '2023-10-2-2121', '2023 VIRTUAL DIVISION CULMINATING ACTIVITY FOR THE CELEBRATION OF NATIONAL TEACHERS\' MONTH', ' http://depedmanila.net:5000/d/s/vVN7yze5UCDjZ80S2pyBpbwqOdxVHe5e/Mz03Xcvr-RO7_eM9w2LCWDZ7SxIckrYR-z7DghvKozQo', '490', '2023-10-06', 'NUMBERED MEMORANDUM', 'active'),
(3283, '2023-9-19-1305', 'PRE-INSPECTION OF SCHOOL ELECTRICAL SYSTEM FOR UPCOMING 2023 BARANGAY AND SANGGUNIANG KABATAAN ELECTION', ' http://depedmanila.net:5000/d/s/vVNLd5cqsZ76aU7k9WvloLMHD7xQy9k8/UN8wIfG6OsJe01kDWs08QEDfDWG20_Zd-ILFg6KOpzQo', '491', '2023-10-06', 'NUMBERED MEMORANDUM', 'active'),
(3284, '2023-9-22-1596', 'REQUEST FOR SUPPORT AND TECHNICAL ASSISTANCE TO THE MICROSOFT YOUTH AMBASSADORS (MYA 2.0) CAPSTONE PROJECT IMPLEMENTATION', ' http://depedmanila.net:5000/d/s/vVNacChxtQTPBFeZbTk7cXU6K0uNrwK2/UR8y5MsifJCaZW8SfkpRauBva3E3RyoE-jrEg5lCqzQo', '204', '2023-10-06', 'UNNUMBERED MEMORANDUM', 'active'),
(3285, '2023-9-20-1326', 'THE PHILIPPINES-JAPAN CULTURAL EXCHANGE FOR HIGH SCHOOL STUDENTS THOUGH THE JENESYS 2023 PROGRAMME', ' http://depedmanila.net:5000/d/s/vVOHgPIYqXAWjdPGpKzcuW41iIR3QYue/G-o4Qoqx-2kxE8Dp2Jh-ZsowyMg9Mbrf-T7Jgv7CszQo', '152', '2023-10-06', 'DIVISION CIRCULARS', 'active'),
(3286, '2023-10-09UM205', 'ENGLISH - MASTER TEACHERS PROFESSIONAL MEETING (LEM)', ' http://depedmanila.net:5000/d/s/vXh3LvEN9zPjEwSt0oBbPSt7R9iaI7gn/1vPK3m4_b2AGjCu-pdt_tek0fGCDFZN5-nrxA8-J1zwo', '205', '2023-10-09', 'UNNUMBERED MEMORANDUM', 'active'),
(3287, '2023-10-09DM479', '2023-SLRMDC-Coordinators-Capacity-Building', ' http://depedmanila.net:5000/d/s/vXiYP558rxOfHNVe0ivYvDUV7cWgBPjN/qQg7r9oCsBk9zwXdXT7WcFnI2Zo2N_V4-zL5Aoax6zwo', '479', '2023-10-09', 'NUMBERED MEMORANDUM', 'active'),
(3288, '2023-10-09DA274', 'MARYLINDERT INTERNATIONAL', ' http://depedmanila.net:5000/d/s/vXn35aPlm1ZjLppIvfoM8zmBa5luLIRL/QHqE1Nrk2HbzQIYJZWLhvqwMDFpD6RVp-i7RAVBCJzwo', '274', '2023-10-09', 'DIVISION ADVISORIES', 'active'),
(3289, '2023-10-09UM206', 'PLANNING MEETING FOR THE RE-ORIENTATION OF SCHOOL DISASTER RISK REDUCTION MANAGEMENT FOCAL PERSON', ' http://depedmanila.net:5000/d/s/vXtbOMmpQJAL8yJtNqaMvjMRRaUhaVwg/KPAt3RdWlvL8btLLgqZvpx8RidFNd4we-5b1gzReezwo', '206', '2023-10-09', 'UNNUMBERED MEMORANDUM', 'active'),
(3290, '492-10-10', 'UPDATED COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NATIONAL-PAID PERSONNEL', 'http://depedmanila.net:5000/d/s/vYc8I7sSTfnenwole2W6HNdpsPlScjSg/80P8QcA51eAnFZjguhJT8NW9OMR1QJ37-ZblAcg4t0Ao', '492', '2023-10-10', 'NUMBERED MEMORANDUM', 'active'),
(3291, '493-10-10', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF APPLICANTS FOR RELATED-TEACHINH AND SCHOOL ADMINISTRATION POSITION', 'http://depedmanila.net:5000/d/s/vYc8HjSxI1vXYLM8DJnyUhX10clEiicq/WmwdWYsDA8cI000as_OZEX-HuNU_wIeR-grmgnDYt0Ao', '493', '2023-10-10', 'NUMBERED MEMORANDUM', 'active'),
(3292, '494-10-10', 'IMPLEMENTATION OF COACHING AND MENTORING PROGRAM FOR THE NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS (NQESH) CATEGORY B', 'http://depedmanila.net:5000/d/s/vYc8H2kKDDVToGGpi6jj2RM3EFpoZpv7/A0S5X6WqOC1WAqXn-xtV09E5_7TMVEX5-m7mAgU4t0Ao', '494', '2023-10-10', 'NUMBERED MEMORANDUM', 'active'),
(3293, '207-10-10', 'PROFESSIONAL MEETING OF SPECIAL NEEDS EDUCATION TEACHERS', 'http://depedmanila.net:5000/d/s/vYhmwFYlhWAW7ZyBNckV0V5abMElHhA6/XzuYgnjMG7a1ydKlQHAZ9pwdE-Kbm5FF-rbFgjzg_0Ao', '207', '2023-10-10', 'UNNUMBERED MEMORANDUM', 'active'),
(3294, '495-10-10', 'GRANTING OF TRAVEL ALLOWANCE FOR THE MONITORING AND TECHNICAL ASSISTANCE FUNCTIONS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', 'http://depedmanila.net:5000/d/s/vYhmvZyX8yK8YojMJ8d2cCNXUqdfufYg/qiioBjwkaUwHBDduNThRbtHyPbOVjysa-zLGAGmo_0Ao', '495', '2023-10-10', 'NUMBERED MEMORANDUM', 'active'),
(3295, '2023-10-11DA275', 'PILOT TESTING OF THE MEDIA AND INFORMATION LITERACY (MIL) TOOLKITS', 'http://depedmanila.net:5000/d/s/vZIjrENXsIWLI9v3ECgEgUcencm4vple/llABnWBmNxk3ArvyfsXT5EyNudDv6Gjo-g7JAORe10Ao', '275', '2023-10-11', 'DIVISION ADVISORIES', 'active'),
(3296, '2023-10-11DM496', 'DESIGNATION OF LEARNER\'S AT-RISK OF DROPPING-OUT COORDINATORS (LARDOs) FOR SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/vZR5F1NBrd3mITfXMJFKjsZp2km6PArK/MHtEdVwMA6HH4cBG6zRg6Nvi42OHAtNw-h72A2wHQ0Ao', '496', '2023-10-11', 'NUMBERED MEMORANDUM', 'active'),
(3297, '2023-10-11DM501', 'MANAGEMENT OF CENTRAL AND DIVISION-INITIATED DIGITAL RESOURCES, AND CLOUD-BASED SYSTEMS', ' http://depedmanila.net:5000/d/s/vZYXbBWTJOIf9D99cwXDPHAvyw8puOTx/e4RwwETP1pu0-fRK2ACEUQ1ffDJ63Do3-kLdgWMHn0Ao', '501', '2023-10-11', 'NUMBERED MEMORANDUM', 'active'),
(3298, '2023-10-11UM211', 'ENGLISH - SHS MASTER TEACHERS PROFESSIONAL MEETING (LEM)', 'http://depedmanila.net:5000/d/s/va93nly6FrzeK6u17G6zMpBIoNfaXY4q/pU4668NvQ9Dn4yaWVqw9jHbV73jjEABW-LLegia1c0Qo', '210', '2023-10-12', 'UNNUMBERED MEMORANDUM', 'active'),
(3299, '2023-10-12UM208', 'PROPESYONAL NA PAGPUPULONG NG MGA DALUBGURO AT LIDER NA GURO SA FILIPINO ELEMENTARYA (LEM)', ' http://depedmanila.net:5000/d/s/va9B6BJ36yVRgk7mPqgh7DBBoIraL0mB/XCYc6YK3IHcXFZ-VZ0uvDudc7mlWuSwX-b7eAFy5d0Qo', '208', '2023-10-12', 'UNNUMBERED MEMORANDUM', 'active'),
(3300, '2023-10-12UM209', 'ADDENDUM TO DIVISION MEMORANDUM NO. 461, s. 2023 PHASE 1 CAPACITY BUILDING HOLISTIC TEACHING INTEGRATING MIND, BODY, AND SPIRITUAL IN EDUCATION', ' http://depedmanila.net:5000/d/s/va9VhfJXdGbkTNSVZnE0AtlRS961b8Li/qoUqI3_rNi9yuXao1cBpQ0BVqOaLn3K5-_beAB0Ve0Qo', '209', '2023-10-12', 'DIVISION ADVISORIES', 'active'),
(3301, '2023-10-12DM497', 'TOP PERFORMING SCHOOLS IN VARIOUS JOURNALISM CONTESTS FOR THE SCHOOL YEAR 2022-2023 IN THE ELEMENTARY LEVEL', 'http://depedmanila.net:5000/d/s/va9lvDt1TPSVv4sJGhdUcYIj3pToKRFy/cVUSn8KxAFtagPTnDDuUVl2mtioGqiSf-crgAWgxf0Qo', '497', '2023-10-12', 'NUMBERED MEMORANDUM', 'active'),
(3303, '2023-10-12DM499', 'INTERNATIONAL STANDARD NUMBER (ISN) REGISTRATION', ' http://depedmanila.net:5000/d/s/vaAAHQGzBAad68O0papsrDDpv96ejZPi/ytdRt0MsBnomqbNR0GMqcl6doVGmDBTD-O7mgfThg0Qo', '499', '2023-10-12', 'NUMBERED MEMORANDUM', 'active'),
(3304, '2023-9-4-4', 'SUN PERA ARALAN PROGRAM FINANCIAL MANAGEMENT FOR PUBLIC SCHOOL TEACHERS IN MANILA', ' http://depedmanila.net:5000/d/s/vaB1QhzaqIKoxhJVui0wUqRXYquiDXW2/OOgn2-DbIwSjpQdUjwEw3X1d-6pIQTj6-q7ogaCRj0Qo', '158', '2023-10-12', 'DIVISION CIRCULARS', 'active'),
(3305, '2023-9-29-2012', 'UP NATIONAL CERTER FOR TRANSPORTATION STUDIES\' (UPNCTS) INVITATION TO PARTICIPATE IN THE SAFER SCHOOLS PIONEERING ROAD SAFETY INNOVATION CONTEST', ' http://depedmanila.net:5000/d/s/vaBKLxNlQXYkgaJ7M7hAKaALNzZOFzt7/yJ8US22Jn6gMYF1AtOyBQmoXZQzSPCdh-LruAPxpk0Qo', '276', '2023-10-12', 'DIVISION ADVISORIES', 'active'),
(3306, '2023-10-2-2114', 'CONDUCT OF HENRY MORAN FOUNDATION\'S LIGA ESKWELA FUTSAL TRAINING PROGRAM', ' http://depedmanila.net:5000/d/s/vaBdYYrG7TZuv1srDtluBJjoitgyo5sg/iQYJqeemE9nDBHm3cV9ZcfFdpWxrf91n-sbugwiFl0Qo', '154', '2023-10-12', 'DIVISION CIRCULARS', 'active'),
(3307, '2023-10-2-2119', '2023 NATIONAL YOUTH SCIENCE, TECHNOLOGY, AND INNOVATION FESTIVAL (NYSTIF)', ' http://depedmanila.net:5000/d/s/vaBsbFltHcBHxOfvsRcaZCj7y2deDTMN/X2MEpuduR0XQNf5HwRvkNpxQGvB86GTB-FrwAa9Nl0Qo', '157', '2023-10-12', 'DIVISION CIRCULARS', 'active'),
(3308, '2023-10-2-2168', 'INVITATION TO THE TECHNOLOGICAL INSTITUTE OF THE PHILIPPINES\' 4TH SENIOR HIGH SCHOOL COMPETITION - ABM EDITION', ' http://depedmanila.net:5000/d/s/vaC8NRc77KRWLoUNH8DLzKDt1bnsKZJD/rsBa5sgwWF5cqHNKW5RR8Aogkn3317wt-nbxAbKZm0Qo', '278', '2023-10-12', 'DIVISION ADVISORIES', 'active'),
(3309, '2023-10-3-2224', 'REQUEST FOR DUPLICATE COPIES OF LEARNER\'S PROGRESS REPORT CARD OR SF9 OF IDENTIFIED LEARNERS FROM PUBLIC SCHOOLS IN MANILA ENROLLED IN ARELLANO UNIVERSITY', ' http://depedmanila.net:5000/d/s/vaCOAANo2GSD8sfISHvDlN2AUFGv0rwK/AOjQXAXobbMRqS4KaVxefgAq58Y1CzsO-M71g9KVn0Qo', '153', '2023-10-12', 'DIVISION CIRCULARS', 'active'),
(3310, '2023-10-4-2321', 'SEMINAR TRAINING WITH FILM SHOWING EXHIBIT', ' http://depedmanila.net:5000/d/s/vaChGNbH8qnQvhZFkzQibEWcA1UMOJJI/-PonY5PzxHgy8LBNUfaqgtAgwva9jNR3-hr0AQF5o0Qo', '277', '2023-10-12', 'DIVISION ADVISORIES', 'active'),
(3311, '2023-10-4-2331', 'INVITATION TO THE 20TH NATIONAL ANNUAL CONVENTION AND SEMINAR WORKSHOP', ' http://depedmanila.net:5000/d/s/vaH0e4JLqPO7vjoB83fuoXp2PxiR2SDb/_NmGxBjOChCEgBb_eRsaUO-zFB9QJ-Dk-ZLUguj120Qo', '500', '2023-10-12', 'NUMBERED MEMORANDUM', 'active'),
(3312, '2023-10-4-2346', 'IMPLEMENTATION OF COACHING AND MONITORING PROGRAM FOR THE NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS (QWESH) CATEGORY B', ' http://depedmanila.net:5000/d/s/vaHKWxAQn2GbuNIVe4poNU5nYrnG8Ruj/L2dl6_oi1X_sWjHZMWgB9qrPSIpsjvaD-VLZAekR30Qo', '498', '2023-10-12', 'NUMBERED MEMORANDUM', 'active'),
(3313, '2023-10-4-2379', 'Y-TEENS ASSOCIATE COMMITTEE MEETING', ' http://depedmanila.net:5000/d/s/vaHW5isFu0XYmOOoNv99NuGiW6lEzFnu/7dD6ECE1K0nPjxuzesooYXyfBWZVjH-U-1rYAoNR30Qo', '155', '2023-10-12', 'DIVISION CIRCULARS', 'active'),
(3314, '2023-10-4-2380', 'Y-SPED COMMITTEE MEETING', ' http://depedmanila.net:5000/d/s/vaHkBXrn1nzIWVsDJuwSoeYUCFNO5e0b/OnWnB6oPSax7tJIO8L90JtqL3qWLSkNh-VLeA5Il40Qo', '156', '2023-10-12', 'DIVISION CIRCULARS', 'active'),
(3315, '2023-10-12DM502', 'REITERATION OF DEPED ORDER 54, S. 2022 (GUIDELINES IN THE SELECTION OF SENIOR HIGH SCHOOL TECHNOLOGY VOCATIONAL LIVELIHOOD SPECIALIZATIONS)', ' http://depedmanila.net:5000/d/s/vaIaqZB3NceYD9cJiM85jM1yHVtgINhS/cN28QsQwrFWvLXpmUp8U8TgUKP6niIpf-Q7lgXlt70Qo', '502', '2023-10-12', 'NUMBERED MEMORANDUM', 'active'),
(3316, '2023-10-10-2743', '2023 GLOBAL HANDWASHING DAY', ' http://depedmanila.net:5000/d/s/vaOmwJaWkZzFktj8BVEJSk1i3BWh4O6r/tlcPRXdBNWkDiwJE5d9Hu6ZZihCoQoAo-qbJgJRiP0Qo', '503', '2023-10-12', 'NUMBERED MEMORANDUM', 'active'),
(3317, '2023-10-10-2691', 'DIVISION MONITORING AND VALIDATION OF SCHOOLS WATER, SANITATION AND HYGIENE (WASH) IN SCHOOLS (WinS) STATUS', ' http://depedmanila.net:5000/d/s/vaOumePv12GcbgGdM1OwkciPGQ6mN2FN/9Nb33xzBaPPh9EcqVpA4sPNdQUX8LU7Z-9LJgGoyP0Qo', '504', '2023-10-12', 'NUMBERED MEMORANDUM', 'active'),
(3318, '2023-10-9-2626', 'UPCOMMING EVENTS OF THE PHILIPPINE ASSOCIATION OF PRIVATE SCHOOLS, ADMINISTRATORS, TEACHERS, AND STUDENTS, INC. (PAPSATSI) FOR THE SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/vaP5W2jCR7OONKrkJGn3NWY7p9DvGlgj/p_mvM1eHuJkWJCAAmqvt4SAf362ljMNz-Y7OAfiiQ0Qo', '279', '2023-10-12', 'DIVISION ADVISORIES', 'active'),
(3319, '2023-10-13DM507', 'UPDATED COMPOSITION OF THE SDO MANILA MONITORING TEAM FOR CITY PROGRAMS PROJECTS', ' http://depedmanila.net:5000/d/s/vb1sgEFpNx2FTuUNqNOiIGbcOZA2oIYQ/aMCQT78-NfM0VMosjp1PTm_DN4H1MaOx-1rNgTFIM0go', '507', '2023-10-13', 'NUMBERED MEMORANDUM', 'active'),
(3320, '2023-10-11-2860', '2023 GUIDELINES AND MECHANICS ON THE 2023 REGIONAL SEARCH FOR BEST GULAYAN SA PAARALAN PROGRAM (GPP) IMPLEMENTERS', ' http://depedmanila.net:5000/d/s/vb6gjO7Ub156cI4jJm1sHAcP13PNzZhZ/1ll_NInExCt9Eyy9anInVHQ2UYeUjrcS-sLqAN8Eb0go', '505', '2023-10-13', 'NUMBERED MEMORANDUM', 'active'),
(3321, '2023-10-11-2800', 'RE-ORIENTATION OF SCHOOL DISASTER RISK REDUCTION MANAGEMENT FOCAL PERSON', ' http://depedmanila.net:5000/d/s/vb6ovoOdtbK4o3rktUpC0sc5V7ApsyJu/6Nee51VTo4DcxnNOhKwZJVTcVj0JJpXk-jrxASW4g0go', '506', '2023-10-13', 'NUMBERED MEMORANDUM', 'active'),
(3322, '2023-10-9-2597', 'OPTIMUM MINDS MEDIA PRODUCTIONS\' CLICK, LIKE AND SHARE', ' http://depedmanila.net:5000/d/s/vb8vTV6MfAZcPzsn9JDjxz4H6Ww3DGg5/xfABkhwqg1DR0_U_psUZt0DHsqTc1iuP-yL2A7OYi0go', '280', '2023-10-13', 'DIVISION ADVISORIES', 'active'),
(3323, '2023-10-10-2695', 'ON-LINE STATISTICAL QUIZ IN LINE WITH THE CELEBRATION OF THE 34TH NATIONAL STATISTICS MONTH', ' http://depedmanila.net:5000/d/s/vb96rOwSxwmZ9FT1i9hm8XCogf6kTvdJ/lCsfqcDEQjnKfZCupoBrmEGyLcz2eqTf-I77AjYIj0go', '281', '2023-10-13', 'DIVISION ADVISORIES', 'active'),
(3324, '2023-10-12-2876', 'INTERNATIONAL VEDIC MATHEMATICS OLYMPIAD (IVMO2023)', ' http://depedmanila.net:5000/d/s/vb9JVDflz0yXXix4FaFplRzxgPofHKKz/9gdRFWRWA4-3aGOc2oMesbG-ySeapJJq-gL6gHyUk0go', '282', '2023-10-13', 'DIVISION ADVISORIES', 'active'),
(3325, '2023-10-13DM510', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF YEAR END BONUS AND CASH GIFT FOR FY 2023', ' http://depedmanila.net:5000/d/s/vb9jNiI6fVTf1EZEwE188Ei8geuU6fu3/mMd9PLKooPVnKaVBIWpF3LYjH0kOnOYD-U7_AdH4l0go', '510', '2023-10-13', 'NUMBERED MEMORANDUM', 'active'),
(3326, '2023-10-9-2604', 'MONITORING AND TECHNICAL ASSISTANCE ON SCHOOL-BASED MANAGEMENT (SBM)', ' http://depedmanila.net:5000/d/s/vbCtUzN3YBdbp0zGfCc0JgBeEh2n0DZZ/xP307KXZulY0gvT9LTRu5U3R7qVa5PM_-g7SA7p4v0go', '508', '2023-10-13', 'NUMBERED MEMORANDUM', 'active'),
(3327, '2023-10-12-2888', 'SUBMISSION OF THE PROGRAMS, PROJECTS, AND ACTIVITIES (PPAs) FOR THE THIRD QUARTER DIVISION PROGRAM IMPLEMENTATION REVIEW (PIR) MONITORING, EVALUATION AND ADJUSTMENT (MEA) 2023', ' http://depedmanila.net:5000/d/s/vbDEMnb7uChSn7f4FSVhYyJ6kzqHE0xh/GUwqV-sF9-k-17495xNTHPp7eRLqSqwT-BLWgtsow0go', '509', '2023-10-13', 'NUMBERED MEMORANDUM', 'active'),
(3328, '2023-10-10-2725', 'SUGGESTED REVISED TITLE FOR THE REGIONAL RESEARCH JOURNAL- MANYUSKRIP 2023', ' http://depedmanila.net:5000/d/s/vdTaWa07c9yHAfBjPLKjW42gEOVq2rqU/L-HW12fdtntkvZ6nFUNQYFHnN0fhrQSj-QLAg6__y0wo', '160', '2023-10-16', 'DIVISION CIRCULARS', 'active'),
(3329, '2023-10-10-2758', '2023 NATIONAL YOUTH SCIENCE, TECHNOLOGY, AND INNOVATION FESTIVAL (NYSTIF)', ' http://depedmanila.net:5000/d/s/vdU6DmxC0aI6UUjZC19mK6isIw4QPD5t/E7vyfKWSl-RAz6e6h1U9vDdjT9hKJfED-a7BgnOLz0wo', '284', '2023-10-16', 'DIVISION ADVISORIES', 'active'),
(3330, '2023-10-11-2790', 'ADDENDUM TO UNNUMBERED MEMORANDUM DATED SEPTEMBER 26, 2023 ON THE REVIEW AND ENHANCEMENT WORKSHOP OF CONTINGENCY PLAN FOR DIFFERENT HAZARDS', ' http://depedmanila.net:5000/d/s/vdUGzq2cQX6dTCxKkMtbtmSyMcaS7w2s/VI-427JTfeHwI_R5DOeGdFWaOvY3ofBl-pLCAOYX00wo', '284', '2023-10-16', 'UNNUMBERED MEMORANDUM', 'active'),
(3331, '2023-10-10-2707', 'EDUTAINMENT FILM ART VIEWING', ' http://depedmanila.net:5000/d/s/vdixWFpAEy1hDuhxrtLAmkXgSvx9fmi7/mgMBiRX7MMVfK8w9yJ8pnXwcPejZL8QK-7bMAEnAj1Ao', '286', '2023-10-16', 'DIVISION ADVISORIES', 'active'),
(3332, '2023-10-11-2830', 'DOH CERTIFIED TRAINER IN BASIC LIFE SUPPORT AND STANDARD FIRST AIDE IN MANILA HEALTH DEPARTMENT', ' http://depedmanila.net:5000/d/s/vdj6GZBAKTYnQHNP1pEo5li3OppwuTBk/fT2HjDWvrt5XCPuZZD7EEJa6TfPz35fY-AbQgSe8j1Ao', '285', '2023-10-16', 'DIVISION ADVISORIES', 'active'),
(3333, '2023-10-12-2875', 'PADAMIHAN KIDS EDITION', ' http://depedmanila.net:5000/d/s/vdjFzG7tO4K7i6GDfesWEYFUAgxRnB5a/zum06K_z5Wt0ecmG0oOHEVxaTOlXp99b-JrTg42Qk1Ao', '287', '2023-10-16', 'DIVISION ADVISORIES', 'active'),
(3334, '2023-10-13-2989', 'GUIDELINES ON THE LEARNING CONTINUITY AND RECOVERY PLAN (LCRP) YEAR 2 IMPLEMENTATION, MONITORING, AND EVALUATION', ' http://depedmanila.net:5000/d/s/veI63DfiNT0ViXgZ04oLdGWug5KLtgZF/fdUki-jh2SGj1z70712KAtv2vt17MW8N-F7eg9haU1Ao', '511', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3335, '2023-10-17DM618', 'CLARIFICATION ON THE DELINEATION OF TASKS AND SIGNING AUTHORITIES OF SDO OFFICIALS', ' http://depedmanila.net:5000/d/s/veIWclV2ej8sk7v2RN5bh4hDZxEjjtHN/4SpcL8vgV13DvSNALtBb6jyf_rIrG4eN-KLdg8FaV1Ao', '618', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3336, '2023-10-13-2987', 'WINNERS OF THE GAWAD TEODORA ALONSO 2023 (5TH NATIONAL COMPETITION ON STORYBOOK WRITING - DIVISION MANUSCRIPT SCREENING)', ' http://depedmanila.net:5000/d/s/veIqcCphozy6k7zJWPZwIs8cvw4UGhGx/jR9ilxsON1v_Gye9p7esZdJF7H52C1K1-fLcAwnuW1Ao', '512', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3337, '2023-9-20-1417', 'INCIDENT COMMAND SYSTEM-TRAINING FOR INSTRUCTORS (TFI)', ' http://depedmanila.net:5000/d/s/veRod4i77yxhBhYvZZtAFSPleAxkHCzt/LgY7wHJKGbgmpu0zpwR4zsFiuPFL_7ek-GbrgHyqz1Ao', '605', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3338, '2023-9-29-2074', 'REQUEST TO RESPOND TO THE SURVEY QUESTIONAIRE FOR SENIOR HIGH SCHOOL DEAF LEARNERS RELATIVE TO THE RESEARCH TITLE. \"LANGUAGE PRACTICES FOR THE DEAF CLASSROOMS CHALLENGES, ISSUES, AND OPPORTUNITIES\"', ' http://depedmanila.net:5000/d/s/veSRe02c0vo0IlKHtxuvndMbZ1Wbe0xD/6XKqLtP9JxrGBiuGIe0NCQ3sL3f1fwO8-krpAQ1y11Ao', '613', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3339, '2023-10-4-2328', 'DIVISION ROLL-OUT OF THE SCHOOL GOVERNANCE COUNCIL (SGC) FUNCTIONALITY ASSESSMENT', ' http://depedmanila.net:5000/d/s/veSlZkaaKQqPzkTn0iVEfxr9ozpVBmPr/oYf-nbsWV2NMo1FYNi2fG0N7WC61477y-r7qgFze21Ao', '614', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3340, '2023-10-4-2348', 'CALL FOR NOMINATION TO JICA-KCCP-CP: IMPROVEMENT OF EDUCATION IN REMOTE AREAS-FOR THE ACHIEVEMENT OF SUSTAINABLE DEVELOPMENT GOALS (SDGS)', ' http://depedmanila.net:5000/d/s/veSz28TQywJUYIPylOFYoTc9KlAlqyoT/WpM_ooLvv6BjUYZIJc18NkjUQLNRTMgc-0bqg_PO21Ao', '615', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3341, '2023-10-5-2467', 'ORIENTATION ON USE OF 3D PRINTERS', ' http://depedmanila.net:5000/d/s/veTDzhtj8Sy8xbgaxbB9AgFsLlsucUwA/Yq7Co6g8Eiyo8LreOnoHrruSOmb-B2Hc-5brAKp231Ao', '616', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3342, '2023-10-13-2990', '2023 UNITED NATIONS WEEK CELEBRATION', ' http://depedmanila.net:5000/d/s/veTLLsYwuChYDgs5phvoiAUJH8ozl3nr/63FfTKHxzghfGHhZse8aYGM11dsz6B66-AbuA_f631Ao', '617', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3343, '2023-10-13-3038', 'TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARD THE ACHIEVEMENT OF THE MATATAG AGENDA AND PROFESSIONAL EXCELLENCE', ' http://depedmanila.net:5000/d/s/veXEBUzLPOK0MGcm8Mz3kKlblwB21ckt/kc2lAACF7asmGLGwsvf4m9TIBAosVEpR-ILxA2YXE1Ao', '513', '2023-10-17', 'NUMBERED MEMORANDUM', 'active'),
(3344, '2023-10-4-2337', 'REQUEST FOR COMMENTS AND REVIEW ON THE DRAFT OF DEPED REVISED PROGRAM ON AWARDS AND INCENTIVES FOR SERVICE EXCELLENCE (PRAISE) POLICY', 'http://depedmanila.net:5000/d/s/vf9QSgyA8UaTT3RJLydfnVB2FAIx0bC3/mwkmjaDOO9fIhCECiDznp31bkGgS9dIn-kLLgreE-1Qo', '619', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3345, '2023-10-17-3278', 'WORK ORIENTATION FOR THE NEWLY HIRED (W.O.R.T.H.Y.) NONTEACHING PERSONNEL FOR FISCAL YEAR 2023', ' http://depedmanila.net:5000/d/s/vf9kbQfKuYmR4iXdjedLRLKdbSUO5qYU/fgY0LTcylsJmzTkP4yoWmG2Le2264rN6-0bIg-OI_1Qo', '620', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3346, '2023-10-17-3262', 'DIVISION-WIDE WORKSHOP ON INCLUSTION, COLLABORATION AND TRANSFORMATIVE LEADERSHIP IN ACTION THE CONVERGENCE OF DEPED MANILA\'S STAKEHOLDERS AND END USERS OF THE LEARNIING RESOURCE CENTER (ILRC)', ' http://depedmanila.net:5000/d/s/vfA1UyATV1c0VIuSBekLXNzwxkGnDfZp/qiBC0XOkwU6rR3GBOlXA3saCRhS32wGS-9rJAg9dA1Qo', '621', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3347, '2023-10-17-3234', 'ONLINE ORIENTATION ON LEARNER INFORMATION SYSTEM (LIS) BEGINNING-OF-SCHOOL-YEAR (BOSY) ENCODING AND UPDATING REQUIREMENTS FOR PRIVATE SCHOOLS', ' http://depedmanila.net:5000/d/s/vfAF2addOGdOsMR536tdBzkNUg89HcEv/eggwmw9jJw0oPlTetsGDbPQnlaUKHiPc-EbNgT35B1Qo', '622', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3348, '2023-10-17-3206', 'DIVISION ONLINE ORIENTATION ON eSF7', ' http://depedmanila.net:5000/d/s/vfAofIj7OPvxDswxdIZXxuJzarTlMA6w/mPgkD1_f6crZMeCpmCzQlWhsSp6w_ABb-KrNAFz1D1Qo', '623', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3349, '2023-10-6-2588', 'COORDINATION AND PLANNING MEETING IN ORGANIZING SPORTS CLUB AND SPORTS COUNCIL IN PREPARATION FOR NCR PALARO 2024', ' http://depedmanila.net:5000/d/s/vfB2kFDfWCeuARD2KYuzGwiNXZpK6hbT/IdS31sIoDedINIwpc7oaBSjCxnYh4f0f-VLPg-BhE1Qo', '624', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3350, '2023-10-16-3076', '6TH NATIONAL PEACETIVAL OF TALENTS AND VALTUES (VALUES AND VIRTUES)', ' http://depedmanila.net:5000/d/s/vfJ8K7duHl3s3QMS4yffHJlkZiTj06JH/qLnY_VxmKbgAIsM5GPb4-Ez7GRwpc9zv-dLYgEeld1Qo', '350', '2023-10-18', 'DIVISION ADVISORIES', 'active'),
(3351, '2023-10-16-3070', 'STRENGTHENING ASSESSMENT PROCESS AND PRACTICES OF DEPED NCR CORE ASSESSMENT YEAR 2 REVISIT, REVIEW, WRITE, AND FINALIZE LAMP YEAR 4 YEAR END TEST QUESTIONS', ' http://depedmanila.net:5000/d/s/vfKyWcJE8a4mua36wOJDAJwdpgPoN8mO/_ZvrKUUaynTbFWQK3ijEN1zTXYUsKPJh-IrcAtPBj1Qo', '626', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3352, '2023-10-16-3072', 'SUBMISSION FOR NOMINATION TO THE DEVELOPMENT ACADEMY OF THE PHILIPPINES- PUBLIC MANAGEMENT AND DEVELOPMENT PROGRAM MIDDLE MANAGERS CLASS BATCH 33 AND SENIOR EXECUTIVE CLASS BATCH 13', ' http://depedmanila.net:5000/d/s/vfLAShouF8ZE2x0ZMlJBs1IQqU4E3eZ6/G4QjiQbeknI4RmUNiYH9sCo2g5NwkgQh-V7dAO5Rk1Qo', '627', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3353, '2023-10-13-2979', 'CORRIGENDUM TO DIVISION MEMORANDUM 497, s. 2023 ON THE TOP PERFORMING SCHOOLS IN VARIOUES JOURNALISM CONTEST FOR THE SCHOOL YEAR 2022-2023 IN THE ELEMENTARY LEVEL', ' http://depedmanila.net:5000/d/s/vfLOLk0n4MXtK7BXWpUDnhIwwPU0tov5/5APkcMZ1IwtVfepJlStT4HKLqljSiR2T-t7cgnkNl1Qo', '628', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3354, '2023-10-17-3277', 'TEACHERS INDUCTION PROGRAM 2023', ' http://depedmanila.net:5000/d/s/vfMES39PAWq8DEprgIyOXjVCRPvULSmE/EeTNAcTRL5_acqRL7nhjG1acxo5oo1i7-7bjAEc1n1Qo', '629', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3355, '2023-10-18-3338', 'WORKSHOP ON THE DEVELOPMENT AND VALIDATION OF MULTILINGUAL LEARNING RESOURCE PACKAGE IN DIGITIZED FORM (3Bs Manilenyo and Project BRIDGE version 2.0)', ' http://depedmanila.net:5000/d/s/vfMMOUvI53tDzzPUDKWIoqubg1sQapk6/cibceiU4IayHSoxK830U4LWqByIyYKSQ-N7mAwFVo1Qo', '630', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3356, '2023-10-16-3039', 'EDUCATORS ASTRONOMY ADVENTURES TELESCOPE ASSEMBLY AND OBSERVATION', ' http://depedmanila.net:5000/d/s/vfMYBhKlAB8iuj2UCzKNiDxk9bmIIt9f/2hiPWfUgGqk1F9hWIVPdGQ2cU13KFzE4-frngs-Ro1Qo', '631', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3357, '2023-10-17-3283', '2023 SCIENCE AND TECHNOLOGY FAIR', ' http://depedmanila.net:5000/d/s/vfMuL3mpfPaUsLn2iMt71yVMSnfG0b3K/ddo0f9eCtJdCoOMniVy1_lR9SIBmyI2t-9bng7vVp1Qo', '633', '2023-10-18', 'NUMBERED MEMORANDUM', 'active'),
(3358, '2023-10-13-2960', 'JUNIOR CHEMISTRY CONGRESS 2023', ' http://depedmanila.net:5000/d/s/vfN59QVHuGOElkZc7VXEtZiMRfsv0Tky/5uZrJiZzKvkEWMey-XUNqVg-3zc0-m-V-ZbogLsZq1Qo', '351', '2023-10-18', 'DIVISION ADVISORIES', 'active'),
(3359, '2023-10-17-3185', 'PAANYAYA PARA SA SEMINAR WORKSHOP SA PAGSULAT NG BAYBAYIN', ' http://depedmanila.net:5000/d/s/vfNRARUcJBeKGZWhVXEPAWNhIqyvWmJr/gB4XZ_wKKRW9qFEHDzMSPh9FmKdOW6PM-JLuAyshr1Qo', '353', '2023-10-18', 'DIVISION ADVISORIES', 'active'),
(3360, '2023-10-18-3311', 'POSTPONEMENT OF TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARD THE ACHIEVEMENT OF THE MATATAG AGENDA  AND PROFESSIONAL EXCELLENCE', ' http://depedmanila.net:5000/d/s/vfw8rwPknieTcQz7bRAooFwRYjOqPupM/BWbZsuoyl6lcCIfAkNy12qWqgxOKroiN-F7YA7Oza1Qo', '354', '2023-10-19', 'DIVISION ADVISORIES', 'active'),
(3361, '2023-10-3-2192', 'PEAC 2023 PHILIPPINE EDUCATION CONFERENCE', ' http://depedmanila.net:5000/d/s/vg19cPAGZM192yKN71P5vNKJeGBPbfY0/9lJJUEXRt76wDkwMu1bIAIsq3-ba-TdJ-K70AIuDq1Qo', '634', '2023-10-19', 'NUMBERED MEMORANDUM', 'active'),
(3362, '2023-10-12-2942', '\"MODEL UNITED NATIONS ASSEMBLY\" (MUNA)', ' http://depedmanila.net:5000/d/s/vg1MNIsEF8tG2CVIYqtFDX5IFFtm7yTi/sdw5gKD41Aag6xAKBV25a3RHMVj-7NZX-kr1gMpLr1Qo', '355', '2023-10-19', 'DIVISION ADVISORIES', 'active'),
(3363, '2023-10-16-3141', 'ELECTION OF INTER-CLUB OFFICERS AND MASS INDUCTION', ' http://depedmanila.net:5000/d/s/vglQaslZQcnAuldi0jhTxlI6Pn97kE6X/zvPs-ILUUV0MZmYnxSZ3blVgvRHoqIhw-h7XA9TZ_1go', '301', '2023-10-20', 'DIVISION CIRCULARS', 'active'),
(3364, '2023-10-10-2702', 'ELECTRICAL INSPECTION REPORTS OF SELECTED SCHOOLS FOR ELECTRICAL SERVICE ASSESSMENT', ' http://depedmanila.net:5000/d/s/vglifcDsVWXL339emzm2ds2NHLndPqk1/Fjnhzj9oOYnErc69tNzNDhmGRnTHgYeo-5rXAkwyA1go', '635', '2023-10-20', 'DIVISION CIRCULARS', 'active'),
(3365, '2023-10-17-3238', 'WINNERS OF THE DIVISION SEARCH FOR THE BEST GULAYAN SA PAARALAN PROGRAM (GPP) IMPLEMENTERS', 'http://depedmanila.net:5000/d/s/vgmC8dvn4RYEBjuHNRT7PpPOSoRTRkhj/OBnAfNkAumH_0dpGwD4oSg8wcDAia5mF-lrZg5pKB1go', '606', '2023-10-20', 'NUMBERED MEMORANDUM', 'active'),
(3366, '2023-10-10-2703', 'ELECTRICAL INSPECTION REPORTS OF SCHOOLS ELETRICAL SYSTEM EVALUATION AND ASSESSMENT IN REFERENCE TO THE MEMORANDUM ORD-2023-899', ' http://depedmanila.net:5000/d/s/vgmSTqOa7AdA22QGcByBdrEw4LHhOyDU/sC4U5F9gqp1yy7aRJiseSA0uBX67D44k-_rAAO7qD1go', '603', '2023-10-20', 'NUMBERED MEMORANDUM', 'active'),
(3367, '2023-9-22-1597', 'PARTICIPATION IN THE DEVELOPMENT, VALIDATION, AND FINALIZATION OF LESSON EXEMPLARS ON LITERACY INTEGRATION IN ARABIC LANGUAGE AND ISLAMIC VALUES EDUCATIO (ALIVE) INSTRUCTION', ' http://depedmanila.net:5000/d/s/vgnEQ4byRItQfacpLgsuZziQxhnxxN7C/_uPS3-VLuvX46XZGLxuX0okF01n3DdQ0-hbGg8_iE1go', '609', '2023-10-20', 'NUMBERED MEMORANDUM', 'active'),
(3368, '2023-10-18-3424', 'TRAINING ON RA 1984 \"AN ACT PROVIDING FOR THE MODERNIZATION, STANDARDIZATION, AND REGULATION OF THE PROCUREMENT ACTIVITIES OF THE GOVERNMENT AND FOR OTHER PURPOSES\" FOR IMPLEMENTING UNITS', ' http://depedmanila.net:5000/d/s/vgut6Aifvi1sTeXDjzUXUOWEu4FGOlOB/aVdgaX2qNooGAdetpg2d7AsdDAo2qZ_x-Abrg0Iid1go', '608', '2023-10-20', 'NUMBERED MEMORANDUM', 'active'),
(3369, '2023-10-19-3449', 'CANCELLATION OF NOTICE OF MEETING FOR DIVISION ONLINE ORIENTATION ON eSF7', ' http://depedmanila.net:5000/d/s/vgvVq9nLZvkM1OGd5BSm5rQPI6w4gnfN/QYJmrylbwbbDBMVJZoWtWlFV7-Qoe3Ox-5rqAoGef1go', '356', '2023-10-20', 'DIVISION ADVISORIES', 'active'),
(3370, '2023-10-16-3150', 'THE COLLEGE PREP PROGRAM (CCP) APPLICATION', ' http://depedmanila.net:5000/d/s/vgvghYzSBaU360HcFLNescbhx8xfYueq/olm1u762JMKuTqGk65-0sm5X6oMG9Eeu-LLuAUfSf1go', '357', '2023-10-20', 'DIVISION ADVISORIES', 'active'),
(3371, '2023-9-21-1506', 'GENERAL UPDATE AND ESTABLISHMENT OF THE DIRECTY OF INSTITUTIONAL SCOUT COORDINATORS FOR ALL SCOUTING SECTIONS', ' http://depedmanila.net:5000/d/s/vgvvA2lo237xg5fQXNXUcFjG0boVejDL/KRoXt-_RhSmnvAU3Rsvm5fpTGBY7xsHi-irvgY8ig1go', '302', '2023-10-20', 'DIVISION CIRCULARS', 'active'),
(3372, '2023-9-21-1505', 'SUBMISSION OF RECOMMENDATIONS FOR THE BSP NATIONAL AWARDS (HIGH AND LOWER AWARDS FOR THE SY 2022-2023)', ' http://depedmanila.net:5000/d/s/vgwAl5Qm7wAK61TCSnduP8JqctiJ1vBn/BW3ntHwrMdBusnTnfn-weqaOsOQC7TbI-6LtgPJuh1go', '303', '2023-10-20', 'DIVISION CIRCULARS', 'active'),
(3373, '2023-10-4-2381', 'Y-PREP AND Y-BUDS ASSOCIATE COMMITTEE MEETING', ' http://depedmanila.net:5000/d/s/vgwYVXS2MVP94jyXNIU6IeH48FqWTneB/WbyfS8EYZz1ukasdnoL64_eS4saQt8EJ-Zrxg-Mmi1go', '304', '2023-10-20', 'DIVISION CIRCULARS', 'active'),
(3374, '2023-10-2-2138', '2023 KID & KAB SCOUTS PARENTS AND SON \"PASIKLAB\" SA OCEAN PARK CUM CHRISTMAS DAY CAMP', ' http://depedmanila.net:5000/d/s/vgwn0zJG3pakIG2cG4p8uh6JxvXXFdZo/IrfbaYB7clK4iwNwI6tt3ThtZ3swOPgQ-zrxABKSj1go', '305', '2023-10-20', 'DIVISION CIRCULARS', 'active'),
(3375, '2023-10-20DM514', 'DUTY OF SCHOOL NURSES AND ADMINISTRATIVE AIDE I (UTILITY WORKER) FOR THE FORTHCOMING 2023 BARANGAY AND SK ELECTIONS', ' http://depedmanila.net:5000/d/s/vgxvWDhCq3E81LGDLo43VL2e5JFXrUff/Ll8wr7reyE8lqu9bMGQjElwlvszmwYKA-Hr7gfi6n1go', '514', '2023-10-20', 'NUMBERED MEMORANDUM', 'active'),
(3376, '2023-10-19-3467', 'DUTY OF SCHOOL NURSES AND ADMINISTRATIVE AIDE I (UTILITY WORKER) FOR THE FORTHCOMING 2023 BARANGAY AND SK ELECTIONS', ' http://depedmanila.net:5000/d/s/vjQ2A2sjfI0yYk0QBvcs2nL8q9AViXNW/F4EBreA16_1EmonvfK6h9X_ArvF1rqsF-i7MgvHeO2Ao', '610', '2023-10-23', 'NUMBERED MEMORANDUM', 'active'),
(3377, '2023-10-19-3465', 'SUBMISSION OF SCHOOL FORM 7 (SF7) FOR SCHOOL YEAR 2023 - 2023', ' http://depedmanila.net:5000/d/s/vjRHwgrsYcloYNkRV4BqgHbIykXaGfkm/_FzVkxoy02KhdKgHSvJt_ow_vsetMYJf-xLVg3keS2Ao', '611', '2023-10-23', 'NUMBERED MEMORANDUM', 'active'),
(3378, '2023-10-16-3079', 'GEOPOTENTIAL 2023', ' http://depedmanila.net:5000/d/s/vjUEP8yexC6eLHymNA6mjY6WLwbTwsux/Twv6XFJAcHKzM2AYJckDdOdO82U_CyLs-BrpgW7mb2Ao', '288', '2023-10-23', 'DIVISION ADVISORIES', 'active'),
(3379, '2023-10-17-3179', 'INVITATION TO THE 15TH ASSEMBLIES OF PUBLIC SECONDARY SCHOOL HEADS', ' http://depedmanila.net:5000/d/s/vjUZ98Nr9lvkHROHOcby4ZPCvYiL4w6A/f7SSeIHWzqflwIDnRdyw0z6TMDF1wodz-sLrAW9ac2Ao', '289', '2023-10-23', 'DIVISION ADVISORIES', 'active'),
(3380, '2023-10-16-3078', 'CHANGES IN THE IMPLEMENTATION SCHEDULE RELATIVE TO THE CONDUCT OF THE DIVISION ROLLOUT OF INSTRUCTIONAL LEADERSHIP TRAINING', ' http://depedmanila.net:5000/d/s/vjWapP4dJ6e90YyAUZjWgJKfhbvaBI5W/Bi45OpQcm105u2_CPDqPIdxEq1X1b22B-aL1gsmOj2Ao', '358', '2023-10-23', 'DIVISION ADVISORIES', 'active'),
(3381, '2023-10-16-3141', 'Y-TEEN ASSOCIATE FOLLOW-UP COMMITTEE MEETING', ' http://depedmanila.net:5000/d/s/vkKbkv6lECLVlG4O2rCBkOwVMoozozGt/WYRWu64rwxzKNAtpZ5-EgktW5-WyLJiq-KrAAxo5D2Qo', '307', '2023-10-24', 'DIVISION CIRCULARS', 'active'),
(3382, '2023-10-12-2890', 'CONDUCT OF CAREER ORIENTATION FOR GRADE 12 SENIOR HIGH SCHOOL STUDENT BY-TDG MARITIME ACADEMY (NTMA)', ' http://depedmanila.net:5000/d/s/vkLM2nMy4Iy8BTB1seIhDPhXkkz5v2MG/--DrN-FdbbLsxjBhk7Menhyh5VgRiLvN-NLGgSfVF2Qo', '362', '2023-10-24', 'DIVISION ADVISORIES', 'active'),
(3383, '2023-9-10-505', 'SUBMISSION OF PROGRAMS, PROJECTS, ACTIVITIES FOR FISCAL YEAR 2024', ' http://depedmanila.net:5000/d/s/vkLh2WNUK10krdwjhX3w4jl1fN43Se1Z/skPlX1mXJ4pNaj68o9HxSEz5rv5Wkq0m-srHgBABH2Qo', '636', '2023-10-24', 'NUMBERED MEMORANDUM', 'active'),
(3384, '2023-10-23-3710', 'MATHEMATICS INVESTIGATION AND MATHEMATICAL MODELLING', ' http://depedmanila.net:5000/d/s/vkLsOpRBMKzngppPSdFoFyCVbMikvqp3/zdw5vHKVsl30qPXtB21B3vWfPz4O_I5t-ArIAQJRH2Qo', '638', '2023-10-24', 'NUMBERED MEMORANDUM', 'active'),
(3385, '2023-10-23-3719', 'NATIONAL LEARNING CAMP ASSESSMENT BOTTLENECKS, CONCERNS, AND CHALLENGES ENCOUNTERED AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/vkM6iIsYLug4O7R7vFnr7eyTJVYgWCxv/6aSY9jNgRuG8BNR02mAA4kjvzrI4graa-ZbKg-mBI2Qo', '639', '2023-10-24', 'NUMBERED MEMORANDUM', 'active'),
(3386, '2023-10-24-3763', 'AWARDING CEREMONY', ' http://depedmanila.net:5000/d/s/vkMO8pxxpSXExhCGHecb9xdYt4vJUMlw/4Z8PIUtQ7LmmPXD3Y8NWfZY3A7Uv1LB2-6rJANnZJ2Qo', '306', '2023-10-24', 'DIVISION CIRCULARS', 'active'),
(3387, '2023-10-9-2596', 'ME AND MY HERO PHOTO CONTEST', ' http://depedmanila.net:5000/d/s/vkMixd8NT9vCfQjKMzsXUixXwetn738w/ebj1lORIOTRBq2t6VVKfoacq8rJ1RnCD-TLOAxEVK2Qo', '308', '2023-10-24', 'DIVISION CIRCULARS', 'active'),
(3388, '2023-10-12-2863', 'MONTHLY MEETING', ' http://depedmanila.net:5000/d/s/vkx6ZhoOBzeDZa6qa2PLk4lll5nFQ6Ei/UJza2CD5n4u8M8u-tE5jjhzVYj3czl5R-F7JARMq-2Qo', '309', '2023-10-25', 'DIVISION CIRCULARS', 'active'),
(3389, '2023-10-13-2948', 'PROGRAM IMPLEMENTATION STATUS REPORT ON CY 2023', 'http://depedmanila.net:5000/d/s/vkxf7opsdhQbhpIyQZrHSyWjAJ7GWwYU/rJaqN_p-a34_jUpgEJ3wl7w3dHn5HIKZ--LLgy57A2Qo', '640', '2023-10-25', 'UNNUMBERED MEMORANDUM', 'active'),
(3390, '2023-10-16-3062', 'ADDENDUM TO UNNUMBERED MEMORANDUM DATED SEPTEMBER 26, 2023 ON THE REVIEW AND ENHANCEMENT WORKSHOP OF CONTINGENCY PLAN FOR DIFFERENT HAZARDS', ' http://depedmanila.net:5000/d/s/vky6CwFpVOVwapNWq9aiLsazLDDCtlU2/c9QT0rYDAIrmXp6wsBSjp4SE331Fp-TU-r7OgYhXC2Qo', '641', '2023-10-25', 'NUMBERED MEMORANDUM', 'active'),
(3391, '2023-10-20-3577', 'WELLS FARGO-JA PERSONAL FINANCE PROGRAM (NOVEMBER TRAINING) AND FINMAC 2023', ' http://depedmanila.net:5000/d/s/vkzM2E1WPDBbNs4jjigJ1djM7UMvezTH/_Ai_VZ-XUz3pH70XDKFoG04lv23fHwk2-WLUgtwrG2Qo', '363', '2023-10-25', 'DIVISION ADVISORIES', 'active'),
(3392, '2023-10-20-3547', 'CONDUCT OF THE YMCA CLUB ADVISERS TRAINING', ' http://depedmanila.net:5000/d/s/vkzXId3TDQxDwv72cSP3vlQWIB5aiLTK/SjIXhDMrgprYUB2r939CipB8uuESHOWY-n7XASJbG2Qo', '364', '2023-10-25', 'DIVISION ADVISORIES', 'active'),
(3393, '2023-10-24-3794', 'MANILA CITY LIBRARY\'S PUPPET SHOW AND MOBILE LIBRARY', ' http://depedmanila.net:5000/d/s/vkzhOIW8YwJK8SpVrBotH5L3fYeKmTJL/B0doVSWHSeSrBG7TbokkzZhu_WXQ9K7W-DLZAECPH2Qo', '365', '2023-10-25', 'DIVISION ADVISORIES', 'active'),
(3394, '2023-10-13-2953', 'CLARIFICATION ON THE SUSPENSION OF WORK WHEN CLASSES ARE SUSPENDED AND REITERATION OF TRANSITION FROM FACE TO FACE (F2F) MODALITY TO ALTERNATIVE DELIVERY MODE (ADM)', ' http://depedmanila.net:5000/d/s/vl4fAa9cbHouoCv5NDvznzWjQfVOBpfz/CXeqXXO7NLTBxqYH8v9P3qCS56pO_sGl-srwAWhvX2Qo', '642', '2023-10-25', 'NUMBERED MEMORANDUM', 'active'),
(3395, '2023-10-20-3540', '6TH YOUNG INNOVATORS PROGRAM FORUM', ' http://depedmanila.net:5000/d/s/vl9WDtBoMOPqv7J3hfeIJhevIidNT104/gFByg_t7YVDCc2GO_pSR_6Ot2_zTwRMg-P7PgcI_m2Qo', '366', '2023-10-25', 'DIVISION ADVISORIES', 'active'),
(3396, '2023-10-24-3843', 'WRITESHOP ON THE FINALIZATION OF DIVISION LEARNING OUTCOME ASSESSMENT TOOLS', ' http://depedmanila.net:5000/d/s/vlBAlD2UHI0nRSGNLvaOePTRb5JwvA4s/PnvAGMGCtKa9b1jw9jjiMsImZCgtpeon-o7XgB-Hr2Qo', '643', '2023-10-25', 'NUMBERED MEMORANDUM', 'active'),
(3397, '2023-10-20-3617', 'NOTICE OF MEETING ON THE PROCESS FLOW OF SCHOOL MOOE REPAIR AND OTHER MATTERS RELATED TO EDUCATION FACILITIES', ' http://depedmanila.net:5000/d/s/vlBOXuNX5HLO14xuvkoGFcky2DVlsEgN/EO4gntSc_-4_-ZhgPdEMnlrmWU_NaF7X-FrYAWrDs2Qo', '644', '2023-10-25', 'UNNUMBERED MEMORANDUM', 'active'),
(3398, '2023-10-23-3668', '2023 PROGRAM IMPLEMENTATION REVIEW (PIR) FOR MADRASAH EDUCATION PROGRAM (MEP)', ' http://depedmanila.net:5000/d/s/vljJ77cjke3MxcuDIsplHnVitdBJ6uyk/qTEqujW0nDm6W8_AWHnOpaXTSJCvK1Be-v77gw0RZ2go', '646', '2023-10-26', 'NUMBERED MEMORANDUM', 'active'),
(3399, '2023-10-24-3777', 'JUNIOR CHEMISTRY CONGRESS 2023', ' http://depedmanila.net:5000/d/s/vljYytcmhM9lYFAy0UK1xqffRC7N4pYn/dXAv-gNGNO7n-DNpwBqIAPntyo83WYRv-H79grBJa2go', '367', '2023-10-26', 'DIVISION ADVISORIES', 'active'),
(3400, '2023-10-25-3968', 'STATUS OF LEARNERS AT RISK OF DROPPING OUT (LARGOs) FOR THE SY 2022-2023 AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/vllvawMEpMxbkJGrHl3hWEGwgRtbkT5P/8Gpy3Tm2WdR0YY09CAV88pwqXvJgKjAC-8rLgWqNh2go', '647', '2023-10-26', 'UNNUMBERED MEMORANDUM', 'active'),
(3401, '2023-10-23-3734', 'SEAMEO INNOTECH\'S SOUTHEST ASIAN SCHOOLS LEADERSHIP PROGRAM (SEA-SLIP) ONLINE VERSION', ' http://depedmanila.net:5000/d/s/vlux5yubSMphe1CRq72FoOwo6sCJtoui/7dmbs-uyVEcWFNYI4L9DGd-Clpar2wNH-qr_gRIh-2go', '648', '2023-10-26', 'NUMBERED MEMORANDUM', 'active'),
(3402, '2023-10-24-3787', 'YISRAEL SOLUTIONS AND TRAINING CENTER, INC', 'http://depedmanila.net:5000/d/s/vlvvL84QvIXrlYlaYuuszJGr9fgu28r7/TzNnj0rPG_7eNeQe-RFNIt3f_lLq4Q83-QLHg8I-C2go', '368', '2023-10-26', 'DIVISION ADVISORIES', 'active'),
(3403, '2023-10-23-3664', 'INVITATION FOR THE DIVISION COORDINATOR AND CIC ADVISERS TO ATTEND THE ONLINE ANTI-CORRUPTION LAWS SEMINAR (ACLS)', ' http://depedmanila.net:5000/d/s/vlyOt1AoLxI00yvNpbUfeA024MDWPS2l/U8feDxvboMw42ZvBH3MEWyROF2QwG24i-GbSAaJ2J2go', '310', '2023-10-26', 'DIVISION CIRCULARS', 'active'),
(3404, '2023-10-24-3899', 'LEARNING ENGAGEMENT AND MANAGEMENT (LEM) AND PROFESSIONAL MEETING', ' http://depedmanila.net:5000/d/s/vmZgvuO5i8W7SNBOW9rK3JkqZR6Iz8St/rOJpeMATNzSGFNaXOYhjAEosp5go-1JM-f7TgkAMB2wo', '649', '2023-10-27', 'UNNUMBERED MEMORANDUM', 'active'),
(3405, '2023-10-23-3728', 'COMPOSITION OF RESEARCH COMMITTEE ON THE EVALUATION OF REGIONAL POLICY OPERATION INTEGRATION', ' http://depedmanila.net:5000/d/s/vmaTltvkKGZkGlOhMR5xYq7WClpb0o42/mdOxLy0kyAOtIEG8c8lmVEJAz2jqImZD-ybXgHYwD2wo', '650', '2023-10-27', 'NUMBERED MEMORANDUM', 'active'),
(3406, '2023-10-23-3729', 'RESCHEDULE OF VIRTUAL ORIENTATION FOR REGIONAL AND DIVISION FOCAL PERSONS AND SCHOOL HEADS FOR INDUCTION PROGRAM FOR BEGINNING TEACHINGS (IPBT)', ' http://depedmanila.net:5000/d/s/vmai3325gXWtbVChn6QjGwsfggnS3KWB/cmfVlcY19RrwAZsGm6XRi0ONqnMYeQpc-R7ZgxlQE2wo', '651', '2023-10-27', 'NUMBERED MEMORANDUM', 'active'),
(3407, '2023-10-19-3441', '2024 PROGRAM REVIEW AND PLANNING WORKSHOP', ' http://depedmanila.net:5000/d/s/vmbsDvHJ3uCBHfolX6uEAAb66pAldCtF/87gah1xVAg9N0zGSpD2zopg5569iIt-M-vLdAS_YH2wo', '652', '2023-10-27', 'NUMBERED MEMORANDUM', 'active'),
(3408, '2023-10-17-3225', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF APPLICANTS FOR ATTORNEY III POSITION', ' http://depedmanila.net:5000/d/s/vmcClWZxHm1WAlxdqX3cerpSDAkmIlWI/YHkU9EJPOhq0gDTK2ocwcv8TFtDqwPFd-WLjgogoJ2wo', '653', '2023-10-27', 'NUMBERED MEMORANDUM', 'active'),
(3409, '2023-10-26-4028', 'REOPENING OF VACANCIES FOR NONTEACHING AND RELATED-TEACHING PERSONNEL IN THE SCHOOLS DIVISION OFFICE OF MANILA', ' http://depedmanila.net:5000/d/s/vmcOHs7yZOr07CtUwubW5Sc0CWLut18k/qr0AYm78d9KcA46j1sr52w4U-LK3c_ek-o7iA8agJ2wo', '654', '2023-10-27', 'NUMBERED MEMORANDUM', 'active'),
(3410, '2023-10-26-4006', 'U.P. CHILD DEVELOPMENT CENTER BOOK LAUNCHING\n', ' http://depedmanila.net:5000/d/s/vmd7KlpXwAPaEYvxGwhJAEp0YBmAPpmw/6wcoXEq3aUILn1inY1dOwt4i2y3T1ZKR-zrnAbAcM2wo', '290', '2023-10-27', 'DIVISION ADVISORIES', 'active'),
(3411, '2023-10-27-4182', 'PLANNING MEETING FOR THE CONDUCT OF DIVISION ROLL-OUT OF HOTS-PLPs', ' http://depedmanila.net:5000/d/s/vpvxSdTXZ33GqIbnKDlcUM2hg7xlY8zP/W3zj57THf0I275xTCcxV85D7NeR6snBA-a7hAwyac3Qo', '656', '2023-10-31', 'UNNUMBERED MEMORANDUM', 'active'),
(3412, '2023-10-27-4132', 'REGIONAL VALIDATION AND EVALUATION (ON-SITE) TO THE WINNERS OF THE DIVISION SEARCH FOR THE BEST GULAYAN SA PAARALAN PROGRAM (GPP) IMPLEMENTERS', ' http://depedmanila.net:5000/d/s/vpwIT3UI1bsZ8nJBvncvpPoKvfgtn39V/Q6MWyI_qCDg2RbhzuJlu0yiA32xidvhL-57ggAzWd3Qo', '657', '2023-10-31', 'NUMBERED MEMORANDUM', 'active'),
(3413, '2023-10-24-3764', 'SCIENCE CROSS-SPECIALIZATION FOR JUNIOR HIGH SCHOOL (JHS) TEACHERS IN THEIR NON-MAJOR SCIENCE SUBJECTS', ' http://depedmanila.net:5000/d/s/vpwVOw9wjtt4AvjypXeHTvemmcOmIFAB/Lmgv-ghcX9MXbfBjiW1vtdGxpBUUdzoE-OLlgtdud3Qo', '658', '2023-10-31', 'NUMBERED MEMORANDUM', 'active'),
(3414, '2023-10-26-4101', 'DIVISION OBSERVANCE OF FILIPINO VALUES MONTH', ' http://depedmanila.net:5000/d/s/vpwflgxbVYKz7uvMEZKlfWqExs0egi3k/4LmU3F6YYdjw4GMj6NMPT0aZbiNYIeH_-erkArVGe3Qo', '659', '2023-10-31', 'NUMBERED MEMORANDUM', 'active'),
(3415, '2023-10-24-3826', 'MANILA CITY LIBRARY\'S STORYTELLING CONTEST', ' http://depedmanila.net:5000/d/s/vpwtTzW8JGqQtdzwkQojr33XAR0fmRcS/j145lyFypqkuqSXbggnn1bFIyNpnU4xX-0LmAWQaf3Qo', '369', '2023-10-31', 'DIVISION ADVISORIES', 'active'),
(3416, '2023-10-24-3778', '3RD INTERNATIONAL VEDIC MATHEMATICS OLYMPIAD (IVMO2023)', ' http://depedmanila.net:5000/d/s/vpxwCo3ydvUnSradwX8G60I7r4LWeAD3/tLl8eM2o2Hk9Xevk6oufna7IZbaIUeSK-O7ugA2ei3Qo', '370', '2023-10-31', 'DIVISION ADVISORIES', 'active'),
(3417, '2023-10-26-3992', 'WELLS FARGO-JA PERSONAL FINANCE PROGRAM (NOVEMBER TRAINING) AND FINMAC 2023', ' http://depedmanila.net:5000/d/s/vpy9bJEz0XVyHGlQAZ8Jxh4Grq3Mhpdt/c_1BmB9cmIIZDMiq82ntY7jxE2xyG3Ja-lrvAYRej3Qo', '371', '2023-10-31', 'DIVISION ADVISORIES', 'active'),
(3418, '2023-10-25-3927', 'HANDS ON ADVANCE COMPUTER TRAINING COURSE', ' http://depedmanila.net:5000/d/s/vpyJOB3sheyKfbVwwqihfG82m4KQGOgm/thGk2xR6axqfQBFP7YrVucP-0w78wT9t-1btgbZej3Qo', '372', '2023-10-31', 'DIVISION ADVISORIES', 'active'),
(3419, '2023-10-20-3578', 'GSP SAVER TRAINING COURSE', ' http://depedmanila.net:5000/d/s/vpyamMfs0t4qSMhKjGSR5hXiWlKuK8Xn/jAnXhHNspCGl5Q-CBdMSGm-RjfrtiL30-O7ygSnSk3Qo', '311', '2023-10-31', 'DIVISION CIRCULARS', 'active'),
(3421, '2023-10-24-3768', 'COMPOSITE TEAM AND TECHNICAL WORKING GROUP REPRESENTATIVES FROM DEPED NATIONAL CAPITAL REGION FOR THE SCHOOL ORGANIZATION STRUCTURE AND STAFFING STANDARDS (SOSSS)', ' http://depedmanila.net:5000/d/s/vsPzRIkNrwHIBpvxFIlKac9OMeptivVh/bxwy7kXgTVQU4RFsBzifuVn9zmBuErne-ob8A4YmJ3wo', '660', '2023-11-03', 'NUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(3422, '2023-10-26-3998', 'ORIENTATION ON COMPREHENSIVE SUGAR TEST-FASTING BLOOD SUGAR FOR GRADE 12 SENIOR HIGH SCHOOL STUDENTS OF 25 SCHOOLS', ' http://depedmanila.net:5000/d/s/vsQF4y3VUp2xGt50z39K4Gv2JVBabaPg/-AfTFj7WPzFnMqmayqEWEPm9NUsnZIC1--b_gbkCK3wo', '661', '2023-11-03', 'NUMBERED MEMORANDUM', 'active'),
(3423, '2023-10-27-4168', 'ADMINISTRATION OF THE RAPID MATHEMATICS ASSESSMENT (RMA) FOR GRADES 1 TO 3 AT THE BEGINNING OF THE SCHOOL YEAR 2023-2024', 'http://depedmanila.net:5000/d/s/vsQZQux0boyaOvIcJxQmjU3PdH4GGn5B/SDxHPJdKoKwy_Kcua5uXSqeYoHCHYNvd-arDA6U2L3wo', '662', '2023-11-03', 'NUMBERED MEMORANDUM', 'active'),
(3424, '2023-10-25-3967', 'CHALKBOARD\'S ACADEMIC REMEDIATION ACCELERATION AND LIVELIHOOD (ARAL PROGRAM)', ' http://depedmanila.net:5000/d/s/vsQuenURUJknIXU1UgyPeQWeLITOntmO/pST7Ei_NYQjNHvcKO0YVSOfLi-tH1Y9f-C7Fg1XeM3wo', '373', '2023-11-03', 'DIVISION ADVISORIES', 'active'),
(3425, '2023-10-31-4222', 'ELECTION OF THE FEDERATED PARENT - TEACHER ASSOCIATION (FPTA) AND SUBMISSION OF SCHOOL PTA LIST OF OFFICERS', ' http://depedmanila.net:5000/d/s/vsW8l6domOZ5cDV1vhVSj6SJMGIfJweu/FTt2HiUQhSAFjMP6nucb6d6Bvg5LDorJ-F7uAKZid3wo', '663', '2023-11-03', 'NUMBERED MEMORANDUM', 'active'),
(3426, '2023-10-26-4099', 'PPSS REFINING INSTRUCTIONAL SUPERVISION AND MANAGEMENT (PRISM) AN L AND D PROJECT FOR SDO MANILA SUPERVISORS TOWARDS THE ACHIEVEMENT OF THE MATATAG AGENDA', ' http://depedmanila.net:5000/d/s/vsWT6N6J136s8nfsfpPh0cJuhPoJrufJ/YVeYJP9F8GsoWeV_UCxuOcqnyk8D291C-dbsAyD6e3wo', '664', '2023-11-03', 'NUMBERED MEMORANDUM', 'active'),
(3427, '2023-10-27-4144', 'PARTICIPANTS TO THE BASIC INCIDENT COMMAND SYSTEM TRAINING COURSE (BICS)', ' http://depedmanila.net:5000/d/s/vsd0iAwjWBTdb8vN03QvruoamZRCf12n/_5hvZCDUqDKMi8KGmBpB1KzYh7oWfiKw-Z7OgRRyz3wo', '665', '2023-11-03', 'NUMBERED MEMORANDUM', 'active'),
(3428, '2023-11-3-4225', 'VACANCIES FOR SPECIAL EDUCATION TEACHER I POSITION IN THE SCHOOLS DIVISION OFFICE OF MANILA', ' http://depedmanila.net:5000/d/s/vsdAcie8mKugZL3M2Fmrx97pXAE4uFyM/g7vsPDvHaECKXcmYiVePCn9zRJsM0vAr-sLNgwK-z3wo', '666', '2023-11-03', 'NUMBERED MEMORANDUM', 'active'),
(3429, '2023-11-3-4233', 'RESCHEDULE OF MEETING REGARDING THE PROCESS FLOW OF SCHOOL MOOE REPAIR AND OTHER MATTERS RELATED TO EDUCATION FACILITIES', ' http://depedmanila.net:5000/d/s/vsdxIc0gQqmOZfFc7WhjUNeFFZLHOp4l/U8H4xvfGgwpb8ePPiNyaTGBbAUDvhiq2-o7QgtSi23wo', '374', '2023-11-03', 'DIVISION ADVISORIES', 'active'),
(3432, '2023-11-6-4390', 'CHANGE OF VENUE AND DATES FOR THE TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARD THE ACHIEVEMENT OF THE MATATAG AGENDA AND PROFESSIONAL EXCELLENCE', ' http://depedmanila.net:5000/d/s/vv8Y5p3MX1XxXB39L2jguXTEUQqu8en5/bQhJB5i455Pu1jDJ9jomvKoz9Oo_zQK0-a7UAQ1ql4Qo', '376', '2023-11-06', 'DIVISION ADVISORIES', 'active'),
(3433, '2023-10-24-3766', 'CORRIGENDUM TO REGIONAL MEMORANDUM 954, S. 2023 AND 995, S. 2023 AND REGIONAL ADVISORY NO. 382, S. 2023 RE IMPLEMENTATION OF COACHING AND MENTORING PROGRAM FOR THE NATIONAL QUALIFYING EXAMINATION', ' http://depedmanila.net:5000/d/s/vvgzuohRZifsWZS3MsbPU3kZw5XenibG/8DLl2THwpj5sMC0zFv8qmLfS90fBKvW1-SLvgxswT4go', '667', '2023-11-07', 'NUMBERED MEMORANDUM', 'active'),
(3434, '2023-10-26-4031', 'CONDUCT OF THE SOUTHEST ASIA PRIMARY LEARNING METRICS (SEA-PLM) 2024 FOCUS GROUP DISCUSSION (FGD) TO SAMPLE SCHOOL HEADS AND GRADE 5 TEACHERS', ' http://depedmanila.net:5000/d/s/vvhGFNZCQOCkXG2v768zBGWYuCClYO6b/50IpbID2eCJMJDQSQa6JO-FEIUsmKFDL-vbtAceMU4go', '668', '2023-11-07', 'NUMBERED MEMORANDUM', 'active'),
(3435, '2023-10-27-4112', '32ND ANNUAL YOUTH CONGRESS', ' http://depedmanila.net:5000/d/s/vvhdkQHSOHvAr4CXoEhp2qmUXOhooiMc/ptZ_0k5CRlS034iyk15EjHFtWLkoROIP-A7yg06sV4go', '378', '2023-11-07', 'DIVISION ADVISORIES', 'active'),
(3436, '2023-10-27-4113', 'YWCA-FFPI ADVISER\'S LEADERSHIP TRAINING AND FELLOWSHIP', ' http://depedmanila.net:5000/d/s/vvhs72Rec0fcpE8h1WiXirfURpE5dNXi/2t-2JGaTGEqgYX4m8Z3rO3SRzd6XsmPP-ULzgV2oW4go', '377', '2023-11-07', 'DIVISION ADVISORIES', 'active'),
(3437, '2023-10-24-3874', 'INVITATION TO PARTICIPATE IN THE SCHOOL GARDEN TO TABLE PLANT BASED FOOD FROM GREEN SCHOOLS LEARNING ACTIVITY', ' http://depedmanila.net:5000/d/s/vvi7cAnHLHwvQzWIaxovRDP0dcDOX77d/TBUuBgu0W9s0slVLUt74-fq4ix9ueu_V-o7wAnGAX4go', '312', '2023-11-07', 'DIVISION CIRCULARS', 'active'),
(3438, '2023-10-27-4146', 'CENTER FOR HUMAN RESEARCH AND DEVELOPMENT FOUNDATION INC', ' http://depedmanila.net:5000/d/s/vvsE4ARQuoGi0BFjjflwVP1bIxBv4YrC/vuLxkHLVaRGRNZSThJCUovooGESQJeG3-DLQgC5k34go', '379', '2023-11-07', 'DIVISION ADVISORIES', 'active'),
(3439, '2023-10-27-4169', 'COUNCIL FOR THE RESTORATION OF FILIPINO VALUES', ' http://depedmanila.net:5000/d/s/vvsPoX9CTnvmBKjlYQdBHrwHlZIDCpfi/1Ho-Lzj8T0esE-rEvjpOjo0ZtGBj1L0K-QLTgLyY44go', '380', '2023-11-07', 'DIVISION ADVISORIES', 'active'),
(3440, '2023-11-7-4506', 'CHANGE OF DATE FOR THE ELECTION OF THE FEDERARED PARENT - TEACHER ASSOCIATION (FPTA)', ' http://depedmanila.net:5000/d/s/vvsZ42xW1SjkV0s934PzNiPSF29g0z9c/esxaFI1v55smbzZGlzd6n6c1vJo0LtbK-e7SApLY44go', '381', '2023-11-07', 'DIVISION ADVISORIES', 'active'),
(3441, '2023-11-6-4261', 'ORIENTATION ON pR1Me PERFORMANCE MONITORING SYSTEM (PMS)', ' http://depedmanila.net:5000/d/s/vvsr8fSePE5kbdEWxr9Tk3LIKSIrMNwv/4Na-6lyGPucz3YAKvwZDsAWQfO6tt9Mm-wLQA1Zw54go', '669', '2023-11-07', 'NUMBERED MEMORANDUM', 'active'),
(3442, '2023-11-7-4550', 'CONDUCT OF THE 4TH QUARTER LEARNING ENGAGEMENT MANAGEMENT MEETING', ' http://depedmanila.net:5000/d/s/vvtEHvbTUFwXx7bSbjtt0AmHorbSn36O/z9o5YdBpzCYpTZSbXX44shfwEzKufLYc-IrVgz8w64go', '670', '2023-11-07', 'NUMBERED MEMORANDUM', 'active'),
(3443, '2023-11-7-4559', 'CONDUCT OF QUARTERLY PROFESSIONAL MEETING FOR ALTERNATE LEARNING SYSTEM (ALS) MASTER TEACHERS (MTs), DISTRICT CHAIRS AND EDUCATION PROGRAM SPECIALISTS FOR ALTERNATIVE LEARNING SYSTEM (EPSAs)', ' http://depedmanila.net:5000/d/s/vvyLf3woZattiWYIQeOiIYbne2e2rqct/yJnJTa7in9QqnHyYQ_qGFapf5qfyIalW-AbmgdktL4go', '382', '2023-11-07', 'DIVISION ADVISORIES', 'active'),
(3444, '2023-11-7-4591', 'CONDUCT OF E-FAST QUARTER SCOPES EVALUATION', ' http://depedmanila.net:5000/d/s/vwbD6sknr52RsHUwyv2O1SQqRCFcQk7U/qo1YUP_wdno0TXOD2-qNow0hoUgbiu00-p7hgqqfH4go', '671', '2023-11-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3445, '2023-11-7-4567', 'NOTICE OF PRE-CONTRUCTION MEETING ON THE ELECTRICAL AND CIVIL WORKS OF VARIOUS SCHOOLS IN SDO MANILA AND INCLUSIVE LEARNING RESOURCE CENTER (ILRC) SAVINGS', ' http://depedmanila.net:5000/d/s/vwhBjvpv5FtkinXFwlYkjJ5aOQKZg254/iRVBXB7b8lf_7qjfNDHpjxKug5gxt0Ac-678gxvXa4go', '672', '2023-11-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3446, '2023-11-7-4566', 'DIVISION TIMELINE FOR THE RENEWAL OF GOVERNMENT PERMIT TO OPERATE, APPLICATION FOR GOVERNMENT RECOGNITION, AND TUITION FEES AND OTHER SCHOOL FEES INCREASE FOR SY 2024-2025', ' http://depedmanila.net:5000/d/s/vwhVwQiYAAAAMvagdCICdWXGJjHEfwT5/u4Nv5HdLcdqxhgxCnJebqpr5UGdNKaVb-W7CgMfDb4go', '673', '2023-11-08', 'NUMBERED MEMORANDUM', 'active'),
(3447, '2023-11-8-4702', 'ADDENDUM TO DIVISION MEMORANDUM NO. 513, S. 2023 (TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARDS THE ACHIEVEMENT OF THE MATATAG AGENDA AND PROFESSIONAL EXCELLENCE', ' http://depedmanila.net:5000/d/s/vxLh7YbPgbkT1XLCzu6gB5okm3fS1JJQ/gDPNw201DOCZvM5jOUGI5Sjx3zp4iXh6-UbbgU-dc4wo', '674', '2023-11-09', 'NUMBERED MEMORANDUM', 'active'),
(3448, '2023-11-6-4355', 'DIVISION LCRP POST-EVALUATION MEETING', ' http://depedmanila.net:5000/d/s/vyBQPV513EL6akeP6q3MJvAZvRJXeeA7/lLNeZMDEnwMNdizujViu611WJ-RchzTX-0bTg3LIC5Ao', '675', '2023-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(3449, '2023-11-9-4780', 'ORIENTATION OF SCHOOL NURSES ON COMPREHENSIVE SUGAR TEST-FASTING BLOOD SUGAR FOR GRADE 12 SENIOR HIGH SCHOOL STUDENTS OF 25 SCHOOLS', ' http://depedmanila.net:5000/d/s/vyBjLjDLTOoARWYqxa3QKBo7MA78UpWk/qaX0_ANdMkRgOSnv1mSK5izZzVPbnUnX-FLVgnTsD5Ao', '676', '2023-11-10', 'UNNUMBERED MEMORANDUM', 'active'),
(3450, '2023-11-7-4573', '1ST ASIAN FESTIVAL OF CHILDREN\'S CONTENT (AFCC) CIRCLE PHILIPPINES', ' http://depedmanila.net:5000/d/s/vyID3Sd1aIlkBHwbRXvFNm2Fe9H3jCfZ/J9AyyngRI3swdx1bSyJmV2euotl8Ebi7-Vb3A1fwX5Ao', '383', '2023-11-10', 'DIVISION ADVISORIES', 'active'),
(3451, '2023-10-23-3747', 'CONDUCT OF 2023 REGIONAL CLIMATE CHANGE CARAVAN', 'http://depedmanila.net:5000/d/s/vyPLHdLkSUjRmQcqKtUlUR9okbvvzZod/FJEnFN7i7lq6FuGjH0SbgGTV6xAODGJs-GrfgA8wu5Ao', '677', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3452, '2023-11-9-4788', 'COMPREHENSIVE SUGAR TEST-FASTING BLOOD SUGAR FOR GRADE 12 SENIOR HIGH SCHOOL STUDENTS OF 25 SCHOOLS', ' http://depedmanila.net:5000/d/s/vyPgtOK6ErqLIoVk2c25uw0LfXpJYYTc/CVvGzxMB9PkbJazgSFu8lDRhhLwFfM7N-7LeAOzUw5Ao', '678', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3453, '2023-11-9-4758', 'ORIENTATION WORKSHOP ON THE PREPARATION OF APP-CSE, PPMP AND QCP FOR FY 2024 FOR NON-IMPLEMENTING UNITS', ' http://depedmanila.net:5000/d/s/vyPw3IaYOSajEZcUExLRPfa26u0FwXd9/vW-POhoIEvaBCZvyQyDnzgl2m3Gy20wf-Lbjgu7ow5Ao', '679', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3454, '680', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF APPLICANTS FOR HEAD TEACHER III AND HEAD TEACHER VI POSITIONS', ' http://depedmanila.net:5000/d/s/vyQL3WH3cZAzWjdfZAxkj5XHIcBy5sFp/TbmbtOZeoocfmMakzyvFRGJUrQA6piPE-4rhAtgsy5Ao', '680', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3455, '2023-11-10-4832', 'DIVISION TRAINING OF TRAINERS ON HIGHER ORDER THINKING SKILLS-PROFESSIONAL LEARNING PACKAGES (HOTS-PLPS) FOR SCIENCE, MATHEMATICS AND ENGLISH TEACHERS', ' http://depedmanila.net:5000/d/s/vyRoT6ZFWpRhGZdRqE9UKQKCKrtuXvUN/KZeCcVFNx_nZxevr-0RS89qEF_-elirB-8brAGsc25Ao', '681', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3456, '2023-11-10-4855', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF LOYALTY CASH AWARD (LCA) FOR FY 2023', ' http://depedmanila.net:5000/d/s/vyRx9SxQNElivpwCASPfW3XyBgME8FLN/NFQ0HHo4PhY6fVI7vGgOjPuYVf8OIExa-KbsAwC435Ao', '682', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3457, '2023-11-10-4857', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF MONETIZATION OF LEAVE CREDITS FOR FY 2023', ' http://depedmanila.net:5000/d/s/vyS4LbqJj7TlVGyTMDcm8PK779bv7mkT/KpkWkxJ64IXRDDooXqqR4_vH-fAbqLtq-Y7sgFY435Ao', '683', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3458, '2023-11-10-4858', 'PREPARATION AND SUBMISSION OF DOCUMENTS FOR THE PAYMENT OF PRODUCTIVITY ENHANCEMENT INCENTIVE (PEI) FOR FY 2023', 'http://depedmanila.net:5000/d/s/w0r5dOCANBDNvNWW6LxPsN7BRHRLZChL/jODbx0LLdkEvPGfcta7eCN_vge3NF7TJ-0Lpg4r4U5go', '684', '2023-11-10', 'NUMBERED MEMORANDUM', 'active'),
(3459, '2023-11-7-4504', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 662, S. 2023 ON ADMINISTRATION OF THE RAPID MATHEMATICS ASSESSMENT (RMA) FOR GRADES 1 TO 3 AT THE BEGINNING OF THE SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/w0h7D43Os0HU6kuuswY9FarKpl07te7C/sw8lf_Lk60IL2CPZgXmOE-javiVeRHSH-jrkAuf_05Qo', '685', '2023-11-13', 'NUMBERED MEMORANDUM', 'active'),
(3460, '2023-11-7-4499', 'VIRTUAL MEETING FOR MAPPING OF CREATIVES WORKS IN MAPEH', ' http://depedmanila.net:5000/d/s/w0hQL4Xczdi1lZVkZlkljMMGpbisQkH0/YpwclSFA3P_YML0pnaM9ubBphHjvI4L0-RbpAiOf15Qo', '686', '2023-11-13', 'UNNUMBERED MEMORANDUM', 'active'),
(3461, '2023-11-7-4497', 'TARGETED PUBLIC REVIEW OF THE REVISED SPECIAL CURRICULAR PROGRAMS CURRICULUM GUIDE IN SPECIAL PROGRAM FOR SCIENCE TECHNOLOGY, ENGINEERING AND MATHEMATICS (SPSTEM)', ' http://depedmanila.net:5000/d/s/w0heTt21ceABg5zYuxsHHAk6Ujf91lHu/4-NXx_O3UnmGr7I9uolHyCXWFjGf_Bt5-x7pAxrX25Qo', '687', '2023-11-13', 'NUMBERED MEMORANDUM', 'active'),
(3462, '2023-11-9-4772', 'REVISITING DEPED ORDER NO. 26, S. 2022, \"IMPLEMENTING GUIDELINES ON THE ESTABLISHMENT OF SCHOOL GOVERNANCE COUNCIL (SGC)\"', ' http://depedmanila.net:5000/d/s/w0huEpfM4kHEc5teIc5emV12Djq4RoCU/doQxpQ4l0P3XHDI9ndmc_tA9QeRTfKHp-W7tAjoP35Qo', '688', '2023-11-13', 'UNNUMBERED MEMORANDUM', 'active'),
(3463, '2023-11-10-4845', '2023 DIVISION MUSABAQAH SKILLS COMPETITION', ' http://depedmanila.net:5000/d/s/w0iH7uxMePKoCZ4l6xlVPMQMrXTTB0H2/Ou_xDsItGjScV8ZUs_I9ENHU6-Os9lz5-QbxgRJT45Qo', '689', '2023-11-13', 'NUMBERED MEMORANDUM', 'active'),
(3464, '2023-11-7-4470', 'REITERATION ON THE SUBMISSION OF GENDER AND DEVELOPMENT PLANS AND BUDGET (GPB) FOR FISCAL YEAR 2024', ' http://depedmanila.net:5000/d/s/w0iSnwznc1YevCfDv07RIttsb5nzsIT4/IyDVeHu0SJYpfMLy4_jfxunbrvlljrEj-qrxAqjr55Qo', '690', '2023-11-13', 'NUMBERED MEMORANDUM', 'active'),
(3465, '2023-11-9-4712', 'ADVOCACY CONCERT', ' http://depedmanila.net:5000/d/s/w0ieEYAR60EcLl5XJXjakgTfKiTaRjgA/LjHoITOfb8x6wDY-Wapzf1yGQK6Yqyt9-Cb0g4MH55Qo', '691', '2023-11-13', 'NUMBERED MEMORANDUM', 'active'),
(3466, '2023-11-7-4459', 'CENTER FOR HUMAN RESEARCH AND DEVELOPMENT FOUNDATION INC', ' http://depedmanila.net:5000/d/s/w0itF4XCdSbJdivtYEYxd3QfZQaPoNlY/jlK3yRglowhoFXT4QDqCCd30z2au5GXq-770A2ov65Qo', '384', '2023-11-13', 'DIVISION ADVISORIES', 'active'),
(3467, '2023-11-8-4624', 'NATIONAL TRAINING PROGRAM ON MAPEH', ' http://depedmanila.net:5000/d/s/w0jJfQFCE8BavhzKkJZvAD3xzQEjUeSm/3yNpDdahlVUKPurmY0KwYWuLH2Ygm_8X-9L7AAOb75Qo', '385', '2023-11-13', 'DIVISION ADVISORIES', 'active'),
(3468, '2023-11-7-4523', 'KABATAANG GITARISTA (KG) PROGRAM', ' http://depedmanila.net:5000/d/s/w0jTQMhljMBSI2S1g0cfjt4xweO9mEtv/h4jYkU0l39W8nQvtZ_XoAB2nLuNCtap6-V7-ASmj85Qo', '386', '2023-11-13', 'DIVISION ADVISORIES', 'active'),
(3469, '2023-11-13-4982', 'REQUEST FOR PARTICIPANTS FOR THE NATIONAL CHILDREN\'S MONTH 2023 KICK-OFF CELEBRATION PROGRAM TO BE CONDUCTED VIRTUALLY THROUGH GOOGLE TEAMS AND FACEBOOK LIVE FLATFORMS', ' http://depedmanila.net:5000/d/s/w1Vp5Rf8V8ZRSyo2H2YCPoLGBcQd0FxS/ih_YVVRKYQT1AqexE0EA6g5cAYs1bVD9-ybAAd2SX5go', '692', '2023-11-14', 'NUMBERED MEMORANDUM', 'active'),
(3470, '2023-11-13-5004', 'RESCHEDULE OF MEETING REGARDING THE PROCESS FLOW OF SCHOOL MOOE REPAIRE AND OTHER MATTERS RELATED TO EDUCATION FACILITIES', ' http://depedmanila.net:5000/d/s/w1W4Bj7HcqbHVGiwn1QTzotUXoRCgk7p/nnK3R6x9GVbe6V2qKd-TN-S_AJOIiela-9rBAJh-Y5go', '387', '2023-11-14', 'DIVISION ADVISORIES', 'active'),
(3471, '2023-11-13-5000', ' ADDENDUM TO DIVISION MEMORANDUM NO. 678, S. 2023 COMPREHENSIVE SUGAR TEST-FASTING BLOOD FOR GRADE 12 SENIOR HIGH SCHOOL STUDENTS OF 25 SCHOOLS', ' http://depedmanila.net:5000/d/s/w1buFxbA5gPrKngCkgYmf0IdV4AKf22u/qFaMFWuCqRgh_2wZlTFpDLgk97QLVBd2-07PgKRWr5go', '518', '2023-11-14', 'NUMBERED MEMORANDUM', 'active'),
(3472, '2023-11-10-4925', 'ADDENDUM TO DIVISION MEMORANDUM NO. 679, S. 2023 (ORIENTATION WORKSHOP ON THE PREPARATION OF APP-CSE, PPMP AND QCP FOR FY 2024 FOR NON-IMPLEMENTING UNITS)', ' http://depedmanila.net:5000/d/s/w1cHsBXFZPNAf4HVMM30jtpkH6pR1b23/rBzEmp7tFaLPzA07jsGfc7eylWltarPk-GbRgwFWs5go', '693', '2023-11-14', 'NUMBERED MEMORANDUM', 'active'),
(3473, '2023-11-13-4995', 'DIVISION PROCESSING OF LEARNER INFORMATION SYSTEM (LIS) PENDING ENROLLMENT AND DATA CORRECTIONS', ' http://depedmanila.net:5000/d/s/w1fzt85GbhWc3wZhAEtR0mWxuGUEqzXW/IHEpk0HnVxOHj5MZFOpnb1vcGesjn6XL-q7WAh-e35go', '695', '2023-11-14', 'NUMBERED MEMORANDUM', 'active'),
(3474, '2023-11-10-4812', 'BSP-MANILA COUNCIL LOCAL EXECUTIVE BOARD MEMBERS MEETING', ' http://depedmanila.net:5000/d/s/w1gHxaVdrtD4hbcHooRopQJfeXhwEJXI/-ny4ZBWWaAKsZ--ez_FyTR5av7HzH5wc-47XAgdi45go', '389', '2023-11-14', 'DIVISION ADVISORIES', 'active'),
(3475, '2023-11-15-5255', 'RESOLUTION NO. 545, SERIES OF 2023 RESOLUTION GIVING DUE RECOGNITION WITHIN THE CITY OF MANILA, THE OBSERVANCE OF THE ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD) AWARENESS, THIS MONTH OF OCTOBER', ' http://depedmanila.net:5000/d/s/w39qeY6i2gl0WQptfujsbhX13EuMJHtU/TcQDgR8zgKEE8g3cUgh0YnZh_XeN113u-ALxg3EXe5wo', '697', '2023-11-16', 'NUMBERED MEMORANDUM', 'active'),
(3476, '2023-11-14-5074', 'YISRAEL SOLUTIONS AND TRAINING CENTER INC', ' http://depedmanila.net:5000/d/s/w3AF5T0JH5QWc80XWGv4sbkxqE7CXmjp/SKaJ4WNEIMmxvRXi4HzZ7gIsWoOKsW3k-cbxgzU3f5wo', '390', '2023-11-16', 'DIVISION ADVISORIES', 'active'),
(3477, '2023-11-14-5224', 'VENUE FOR THE CONDUCT OF THE 4TH LEARNING ENGAGEMENT AND MANAGEMENT MEETING', ' http://depedmanila.net:5000/d/s/w3AO62bVOPK3iDYAbV64oGy1DfjoEB20/YaBz4pgXy_L6hDsjdyT9sK3rvtLSRAVr-sLyg5sff5wo', '391', '2023-11-16', 'DIVISION ADVISORIES', 'active'),
(3478, '2023-11-13-4956', 'DATA TRIANGULATION OF THE RESULTS OF THE LANGUAGE PRACTICES OF THE DEAF CLASSROOM RESEARCH IN SELECTED PUBLIC SCHOOLS', ' http://depedmanila.net:5000/d/s/w3EOqvZGPFlatTRBjAh9vlSo15wnmJxR/iLy7di1H0S86LR4JkcBOWgs1Yad_jggo-g7EgvbDs5wo', '698', '2023-11-16', 'NUMBERED MEMORANDUM', 'active'),
(3479, '2023-11-13-5032', 'DESIGNATED COORDINATORS FOCAL PERSONS AND CO-COORDINATORS ALTERNATES OF OK SA DEPED FLAGSHIP AND SUPPORT PROGRAMS', 'http://depedmanila.net:5000/d/s/w3GFebGEHvFbrjMjaRsh917Rqn2bZqaG/W5LQE0x9UrYasyE1J_mI7Wd-y26hczJ8-O7bgo4ny5wo', '699', '2023-11-16', 'NUMBERED MEMORANDUM', 'active'),
(3480, '2023-11-16-5326', 'VENUE FOR THE TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARD THE ACHIEVEMENT OF THE MATATAG AGENDA AND PROFESSIONAL EXCELLENCE SESSION II', ' http://depedmanila.net:5000/d/s/w3FViEp7broE6oKBzTvJ03PPwgpm8E0L/zqh4KkALkhsiz1gMD1IlQDkgxmDHA-ne-hrQAuUnw5wo', '392', '2023-11-16', 'DIVISION ADVISORIES', 'active'),
(3481, '2023-11-14-5180', 'WINNERS OF THE SCHOOL YEAR 2023-2024 NESTLE WELLNESS CAMPUS INTER-SCHOOL SARAP-SUSTANSYA COOK OFF COMPETITION', ' http://depedmanila.net:5000/d/s/w3O7LZ0x9602LOHS9WISD2hx1nqZRfnE/TOl12S3oWYvmqCr0OOX8tr7tK-4RwRLf-kbhA284L6Ao', '700', '2023-11-16', 'NUMBERED MEMORANDUM', 'active'),
(3482, '2023-11-15-5289', 'ORIENTATION WORKSHOP ON THE PREPARATION OF APP-CSE, PPMP AND QCP FOR FY 2024 FOR IMPLEMENTING UNITS AND PRES. CORAZON AQUINO HS (NON-IMPLEMENTING UNIT)', ' http://depedmanila.net:5000/d/s/w4H3MIBjQ0xVzeZ0xnBYo752OkBuKQFN/nf7sKWdxbnMaDDbtD09onkzIHS1b2CfV-ZbkgS8-76Ao', '701', '2023-11-17', 'NUMBERED MEMORANDUM', 'active'),
(3483, '2023-11-10-4808', 'YWCA-FFPI\'S 97TH FOUNDING ANNIVERSARY AND SCHOOL ADMINISTRATORS\' FELLOWSHIP', ' http://depedmanila.net:5000/d/s/w4HLqwoqyYiPnJEnnm37zb5NXXYbYe0P/yWumoAqbkxzhjt6O0uDauM6iCFFu-_ru-4blAMLK86Ao', '393', '2023-11-17', 'DIVISION ADVISORIES', 'active'),
(3484, '2023-11-16-5425', 'SCHOOL ASSIGNMENT OF DEPED ELEMENTARY AND SENIOR HIGH SCHOOL NURSES', ' http://depedmanila.net:5000/d/s/w6VhKvYtJxVXuGn3iArpMbqRo4mTSiNn/_0wwBaiu0lv2CLgX56IiccylwCP0ScV3-EbpAYMt36go', '703', '2023-11-20', 'NUMBERED MEMORANDUM', 'active'),
(3485, '2023-11-15-5263', 'RESCHEDULING OF RFTAT MONITORING AND TA FOR SCHOOL-BASED MANAGEMENT (SBM)', ' http://depedmanila.net:5000/d/s/w6VscAFpnnLYh2Wj1BztTQQjXFfwisXG/_Dch51RyBL7HQT0Ze9xifuCziNPYCMgq-W7rgFF546go', '702', '2023-11-20', 'NUMBERED MEMORANDUM', 'active'),
(3486, '2023-11-16-5413', 'CHANGE OF VENUE FOR THE 2024 PROGRAM REVIEW AND PLANNING WORKSHOP', ' http://depedmanila.net:5000/d/s/w6W34iPfFCmCDEqIKfC9U4ihkkGlsuOG/hVTnqO1WgniphNF1o2jhnbE81vOQ2Q5S-obpg0eV46go', '394', '2023-11-20', 'DIVISION ADVISORIES', 'active'),
(3487, '2023-11-7-4495', 'QUALITY ASSURANCE DIVISION PERMIT AND RECOGNITION OPTIMIZER (QuADPRO) ENHANCED SYSTEM FEATURES', ' http://depedmanila.net:5000/d/s/w6WvFUSdBM4h47FGLZIUyy1eYCcgKaLc/OXBba2VJN13Q6Q2UVuK9SfTQlOCDOeys-1rvABr976go', '704', '2023-11-20', 'NUMBERED MEMORANDUM', 'active'),
(3488, '2023-11-20-5544', 'ORIENTATION TRAINING ON THE DIVISION LEARNING OUTCOMES ASSESSMENT TOOLS', ' http://depedmanila.net:5000/d/s/w7JqnZjsQkyStX5IESGUjRcTE9fq8mCJ/VVg8x1QpxFfXzhYrCbtVHUikMzhErBJp-m7VAeWcY6wo', '706', '2023-11-21', 'NUMBERED MEMORANDUM', 'active'),
(3489, '2023-11-17-5436', 'PLANNING MEETING FOR THE 3 DAY WORKSHOP FOR THE ENHANCEMENT OF SCHOOL CONTINGENCY PLAN FOR DIFFERENT HAZARDS', ' http://depedmanila.net:5000/d/s/w7K6L0rjcpa3nihIFcZBTb9UaCffXc60/22XlYishFjO11VKDlXhXiXt_fjifPq4L-drbgPj0Z6wo', '705', '2023-11-21', 'UNNUMBERED MEMORANDUM', 'active'),
(3490, '2023-11-20-5599', 'DEVELOP TRAINING MATERIALS TO BE USED FOR DIVISION TRAINING OF TRAINERS FOR HIGHER ORDER THINKING SKILLS - STRUCTURE OF THE OBSERVED LEARNING OUTCOMES', ' http://depedmanila.net:5000/d/s/w7KEV4xSwvGERAytxiR637cVl7p0FKFA/-zEpr4sje72aYlDcwJl4hD0Eyi73TTiZ-8LbgabgZ6wo', '707', '2023-11-21', 'UNNUMBERED MEMORANDUM', 'active'),
(3491, '2023-11-14-5148', 'RED CROSS YOUTH ADVISERS AND COORDINATORS\' MEETING', ' http://depedmanila.net:5000/d/s/w7KSRbRguDFwHplmuYu0cSgLRmsNlRC7/PCDfFjnSmCvx1Q0zZwNZS_yNg5IEM5Cp-uLdAzaca6wo', '395', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3492, '2023-11-15-5259', 'UNIVERSITY OF THE PHILIPPINES - NATIONAL INSTITUTE FOR SCIENCE AND MATHEMATICS EDUCATION DEVELOPMENT', ' http://depedmanila.net:5000/d/s/w7KolHQ1VdLfqqyPR1S13swvFs8yxai4/Nr_n8Bmjk42jMAusTzumnUauAGBSYPto-t7ggtI4b6wo', '396', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3493, '2023-11-16-5366', 'INVITATION TO PARTICIPATE IN THE ANNUAL \"THE BIGGEST SOLVER\"', ' http://depedmanila.net:5000/d/s/w7L6rsP4YQ55lSH8ngnCVbfeDJGwP9DO/Z5nEJS-_4ccQJSOcwIZjEVoXXC_uefqk-gbmgm3kc6wo', '398', '2023-11-21', 'NUMBERED MEMORANDUM', 'active'),
(3494, '2023-11-16-5365', 'INVITATION TO PARTICIPATE IN THE CYBERSECURITY POSTURE USING NATIONAL INSTITUTE OF STANDARDS AND TECHNOLOGY (NIST) FRAMEWORK', ' http://depedmanila.net:5000/d/s/w7LPqYG01S9e6Q7sXc2CYa4BBZuIVN2T/NtkffEOvefy_JWNi34lqFCOVefU0JiOG-bLqA8IEd6wo', '399', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3495, '2023-11-16-5372', 'DIGITAL RECORDS SENSITIVITY EXPLORING THE CARE CONCEPTS OF CURATION, ARCHIVAL PRESERVATION, RECOVERY, AND ELECTRONIC DATA FROM TRADITIONAL RECORDS MANAGEMENT', ' http://depedmanila.net:5000/d/s/w7LeBL1RoYv08DqHv9jwH64uEy7WNay1/dMrhS1viUuNo76I4eSylW8Gul5iA-yxr-SbuApkAe6wo', '400', '2023-11-21', 'NUMBERED MEMORANDUM', 'active'),
(3496, '2023-11-3-12473', '2023 WORLD SOIL DAY', ' http://depedmanila.net:5000/d/s/w7MyNLI3BmUhBcjcHyV6yORzzLza3vQJ/lmxpoYszN0TOV3NZ23nI0oT325MdCP82-476AeWsi6wo', '401', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3497, '2023-11-3-12417', 'NATIONAL CONFERENCE ON CURRICULUM STUDIES (NCCS)', ' http://depedmanila.net:5000/d/s/w7NDGj8AvjlLG1qjHXrjEBmKqexUBQRt/CJQKHrxVMBvCMBfn65NpfeiE6nL2tE9B-nr-gmzUj6wo', '402', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3498, '2023-10-25-12197', 'FINANCIAL LITERACY PROGRAM', ' http://depedmanila.net:5000/d/s/w7NQdYYmD8AYfZ7Fb5WtDr6acAljb7HI/TLt5ccu1mr0L17-_GtW4ekzaaEEviibk-PbDA89Yj6wo', '403', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3499, '2023-11-16-5379', 'GBF STEM COLLAB COMMUNITY ACTION RESEARCH SERIES', ' http://depedmanila.net:5000/d/s/w7OVDlkziJhKZAnOIt4u2aB8aomPx72z/erjDBglr6V8gaDM5_DCHDWJM3TtVzPpd-brNgN08n6wo', '404', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3500, '2023-11-20-5589', 'CORRIGENDUM TO THE MEMORANDUM NO. 631, S. 2023', ' http://depedmanila.net:5000/d/s/w7T338I2haonJW4Felfn9eY1QTcWFkpu/iOYuErlNPtREZjKnnIKNsF2lcRhux6hF-iL8geuE16wo', '708', '2023-11-21', 'NUMBERED MEMORANDUM', 'active'),
(3501, '2023-11-9-4760', 'NOMINATION FOR THE 2ND GAWAD EDUKAMPYON AWARDS FOR LOCAL GOVERNANCE', ' http://DepEdManila.quickconnect.to/d/s/w7XPYrfudZGwh3NoFnnvsZZStvT0uanb/jiqpZ0jdphg7SCdwntbyOz0TN1q7rVcJ-HrQASN1D6wo', '15', '2023-11-21', 'OFFICE ORDER', 'active'),
(3502, '2023-11-16-5369', 'PAANYAYA PARA SA WEBINAR NA MAY PAKSANG \"ANG WIKA ISANG MAKABULUHANG PAGDALUMAT\"', ' http://DepEdManila.quickconnect.to/d/s/w7Xb6ryj1Vh5wiXGgKFSE5oW7mrrZYQM/9ZKFMzLyVHFU4k71OE_Am9CSoeLSBlZs-pLTgG3lE6wo', '405', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3503, '2023-11-16-5384', 'SIPAT EDUKASYON AN ERP RESEARCH DISSEMINATION FORUM (CIDS)', ' http://DepEdManila.quickconnect.to/d/s/w7Xn6wj1SNaYrL1uWb4r5gTD4XKLZoTa/qq9MHGZ6yKvsV8r2dqh3NcjQmE8Genhr-PLVg3hFF6wo', '406', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3504, '2023-11-17-5460', ' EXECOM MEETING', 'http://depedmanila.net:5000/d/s/w7ZQ4eGY819zc4csydVznQ2DN3Y2P30Q/Kx6yXP0FkJqMCLE0b91BXOBb6suyyBDJ-GrqgikNK6wo', '709', '2023-11-21', 'UNNUMBERED MEMORANDUM', 'active'),
(3505, '2023-11-17-5526', 'CONDUCT OF PROJECT LITMUSS INTENSIFYING LITERACY IN FILIPINO AND ENGLISH, MATHEMATICAL UNDERSTANDING, SCIENCE CONTENT AND PROCESS, AND SOCIAL-EMOTIONAL LEARNING', ' http://DepEdManila.quickconnect.to/d/s/w7ZZeK1Uxnwdo0x2ECR9XfPEcwF3OqUP/ff-1g55OGJ1i0AZhlg573O5H8CC4kY0U-pbogpdxK6wo', '710', '2023-11-21', 'NUMBERED MEMORANDUM', 'active'),
(3506, '2023-11-13-4957', 'PROJECTS AND GRANTS OF THE CULTURAL CENTER OF THE PHILIPPINES', ' http://DepEdManila.quickconnect.to/d/s/w7a16NOzxoJbbbgObDsILvC1wVFmM54P/uU-GE6ZAM8RgM9qmykRAff45ris0zc11-vLvgiTJM6wo', '407', '2023-11-21', 'DIVISION ADVISORIES', 'active'),
(3507, '2023-11-13-4958', 'INVITATION TO THE ROBOLUTION 2023 2ND INTERNATIONAL ROBOTIC AND AUTOMATION SUMMIT AND COMPETITION', 'http://depedmanila.net:5000/d/s/w89ewHdn1xM74B68K9t1JXA5GFje5fRd/HZb76dMHO7UgwHYC9G6KeyHVW4poZxS7-jbfAAXi-6wo', '711', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3508, '2023-11-13-4961', 'PAMBANSANG BUWAN AT ARAW NG PAGBASA', ' http://depedmanila.net:5000/d/s/w89ptK7JCOusqvA9Yfaq7y3i74kWI61h/UeKufed2hvu1hVQR88Y5ODgbTkAiD6T0-y7fg8Oa-6wo', '712', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3509, '2023-11-15-5256', 'CHANGES IN SCHEDULE OF THE LAST OF DSWD\'S TARA, BASA! SESSION AND ADMINISTRATION OF QUICK ENGLISH RAPID ASSESSMENT (QERA)', ' http://depedmanila.net:5000/d/s/w89yWTWfrdxqaspzfuaRvG3LB2j5KxPq/Zjk3sxqJHWiAFUYxqRxRlr_8yjPVnokC-G7gAWX2_6wo', '713', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3510, '2023-11-16-5367', 'LEARNING PATHWAYS FOR NON-TEACHING PERSONNEL TRAINING SERIES', ' http://depedmanila.net:5000/d/s/w8AITDfbQZQ1uF9rjZRhGYTGsC6hzbZY/O_XXK2fojsfepAX3jcOq5kPJEuruuf9d-jbgAMXTA6wo', '408', '2023-11-22', 'DIVISION ADVISORIES', 'active'),
(3511, '2023-11-16-5370', 'FINANCIAL LITERACY PROGRAM', ' http://depedmanila.net:5000/d/s/w8AlEmCDxlRRJvE4rY6RfT7NjQobOBT5/HEtXX9huoT3oPTxrZ7cqpmqZkjlDW7nS-ZLmAX-PB6wo', '409', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3512, '2023-11-16-5376', 'WEBINAR ON COUNCIL FOR THE RESTORATION OF FILIPINO VALUES', ' http://depedmanila.net:5000/d/s/w8B2gmOsCCwmlarwFg026li68n7iOmsM/5zocxCQVRl19K2A99sfyGyqrM3-Jcfs5-3blAzcHC6wo', '410', '2023-11-22', 'DIVISION ADVISORIES', 'active'),
(3513, '2023-11-15-5271', 'WORKSHOP AND AWARENESS CAMPAIGN ON UN OBSERVANCES AND UNESCO PROGRAMS AND PHILIPPINE COMMEMORATIONS', ' http://depedmanila.net:5000/d/s/w8IMAkOtpHBuhjUGRoruZY1TXHA16NIU/aJnFmbpUUgYi29sQiYSuJVOwYro5bGt3-ILjgD4fa6wo', '714', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3514, '2023-11-16-5353', 'STANDARDIZATION OF LEARNERS REPORT CARD (SF9)', ' http://depedmanila.net:5000/d/s/w8IdfvAlfhegNcDP8aC8V3hpiP67CiwE/QjjSR8Ptp-GsHbAdq9v5OT1hwPij0iTS-5LiA6Rzb6wo', '715', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3515, '2023-11-16-5357', '18TH NATIONAL SCOUT JAMBOREE', ' http://depedmanila.net:5000/d/s/w8IlDxrrkAHK0q0VURWosjCaa6bRw5DX/6EfnGl1edU_j2wqftmCCKvxaPsGVQALV-PrmA4Xfb6wo', '716', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3516, '2023-11-16-5358', 'BSP CUSTOMER SATISFACTION SURVEY FOR THE YEAR 2023', ' http://depedmanila.net:5000/d/s/w8IutdKXPJNVCsrqcZ5LFnY9xLtlE5Ym/20aX8Mgz-UgDm2cslMBUuyrT9_25pzaI-tbmgvvzb6wo', '717', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3517, '2023-11-14-5128', 'SEMINAR ON SCHOOL MENTAL HEALTH PROGRAMS, SERVICES AND CURRICULA', ' http://depedmanila.net:5000/d/s/w8J3f5n3bQzanJYQRmKRRXrIrYX8p1cx/kLcAI1AM6h0I08BxTxNbNYTiHWZQuwrh-ILqg8nDc6wo', '718', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3518, '2023-11-16-5359', 'SUBMISSION OF THE RECOMMENDATIONS FOR BSP NATIONAL AWARDS FOR THE YEAR 2023', ' http://depedmanila.net:5000/d/s/w8JB49zZ9wUgVAV3zcHhqJixZgNQz17A/D5okx0-N4PR6e7jkEQDAEiN7A-SaGHrO-jrpgPubc6wo', '719', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3519, '2023-11-21-5695', 'FEEDBACK ON CAREER ORIENTATION AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/w8JONgL01bhnBXfn2qrK0SSfo1VTt8ts/RtA_Cur3HNHwmhIyFcZAmEXjEAUbkjyA-NruAVaHd6wo', '720', '2023-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(3520, '2023-11-16-5377', 'WEBINAR SERIES IN THE CELEBRATION OF FILIPINO VALUES MONTH', ' http://depedmanila.net:5000/d/s/w8JbffS0kkPfYbWcAHhURuxKSdvwJgOf/mtBn2aPYIHEOSffRlHlRQs1poE0Cg07C-wrtgeDLe6wo', '411', '2023-11-22', 'DIVISION ADVISORIES', 'active'),
(3521, '2023-11-8-4620', 'HEALTHY SCHOOL CARAVAN', ' http://depedmanila.net:5000/d/s/w8KZn62A5EN6rDCvW3kWhEh14KwiqXYs/szDJmwf9EQbFtQaX5NeEGz7S7VSr3ynC-d76ASEfh6wo', '412', '2023-11-22', 'DIVISION ADVISORIES', 'active'),
(3522, '2023-11-13-4955', 'DISSEMINATION OF INFORMATION ON THE PHILIPPINE AMUSEMENT AND ENTERTAINMENT CORPORATIONS (PAEC) CHANGE MAKER 2040 SCIENCE MUSEUM', 'http://depedmanila.net:5000/d/s/w8MQEq4VrEtcaSrysWSkbKJ6pQOvgIE2/LDjVGPIXzOa_ExdnW5D21UfEB7351M81-qLMg_U_n6wo', '721', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3523, '2023-11-22-5735', 'PROGRAM UPDATES AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/w8MdDYRs7lpNYmSDG88pOjUDQLF4nZ3V/qNAHwusccN7j0uZ5r-E6ytesOPeOAbGm-ObSAsd_n6wo', '722', '2023-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(3524, '2023-11-21-5733', 'PROGRAMS UPDATE AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/w8Msn2ApL9JQUamkiivqMvsxoL1WRk76/iD18yv-zWCgoKXHhvTv2e1tWCrY0ozYZ-ObXA4rXo6wo', '723', '2023-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(3525, '2023-11-16-5395', 'REQUEST FOR DONATIONS TO THE AFFECTED PUPILS OF EPIFANIO DELOS SANTOS ELEMENTARY SCHOOL DUE TO THE FIRE IN MALATE, MANILA', ' http://depedmanila.net:5000/d/s/w8N75cPDZQyJEwrFwWBlr6WMLns4PZbJ/MBnTP7vEkFTzn_TLxN1tGlDck3TruT0F-LbZgTXvp6wo', '724', '2023-11-22', 'NUMBERED MEMORANDUM', 'active'),
(3526, '2023-11-21-5734', 'PROGRAM UPDATE AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/w8OUxSkUb0JXdv5JAFDLbbYfzNyKFEQn/Oe9JI29atJ5Bwte7P3L0Gks77acc-Wh3-_blAZeLt6wo', '725', '2023-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(3527, '2023-11-21-5659', 'ROLL-OUT OF THE REGIONAL MEMORANDUM ORD-2023-00977, \"SCHOOL GOVERNANCE COUNCIL (SGC) FUNCTIONALITY ASSESSMENT TOOL\"', 'http://depedmanila.net:5000/d/s/w8OdIqNptrdmJaB6zlSpTQzcLH9b4a8W/pOuydAOa2Hr1hsnVNO2xpK06GKPEdswB-hrqgSGLu6wo', '726', '2023-11-22', 'UNNUMBERED MEMORANDUM', 'active'),
(3528, '2023-11-16-5373', 'MARIAN YOUTH MOVEMENT', ' http://depedmanila.net:5000/d/s/w8OvS5IEaTcJtpGW45wnlk9kn4UVqnhd/Hdje0daIYMdvds1gpZjLFTSrmpejb4Cs-wLsAR0fv6wo', '413', '2023-11-22', 'DIVISION ADVISORIES', 'active'),
(3529, '2023-10-27-4181', 'MANILA RED CROSS YOUTH MASS INVESTITURE', ' http://depedmanila.net:5000/d/s/w90ScPCy6tDpjYXWa1rJxo8wyZ8TV5A8/SPXN67W_QH9wYesUsXKmOguKp7TxEyXY-y7PAjUdo7Ao', '414', '2023-11-23', 'DIVISION ADVISORIES', 'active'),
(3530, '2023-11-22-5757', 'AMENDMENT TO DIVISION MEMORANDUM NO. 492 S. 2023 TITLED \"UPDATED COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NATIONAL PAID EMPLOYEES\"', ' http://depedmanila.net:5000/d/s/w93NDbSwkSq9BbFyvobeFiA7n447Y8D2/HPkxfbGpL9aZ3SBvXN8Z_oJSYcl6Rp3Q-bbtAO-pw7Ao', '727', '2023-11-23', 'NUMBERED MEMORANDUM', 'active'),
(3531, '2023-11-15-5302', 'PARTICIPANTS TO THE BASIC INCIDENT COMMAND SYSTEM TRAINING COURSE (BICS)', ' http://depedmanila.net:5000/d/s/w94FAv81u8U4X82qJM5ZRne3jgQgQa1p/l2oPh1axhPJCF4wihWt2zpTf5Ah2yKPy-jb1Ax5Zz7Ao', '728', '2023-11-23', 'NUMBERED MEMORANDUM', 'active'),
(3532, '2023-11-21-5697', 'PROFESSIONAL MEETING', ' http://depedmanila.net:5000/d/s/w9o861yL7Z8AySGDOQ9hSSqLnBi7fW2Y/xfBJbaJngfe84jTIxjjS-fRGV9PWBQdr-sbxg5o8G7Qo', '729', '2023-11-24', 'UNNUMBERED MEMORANDUM', 'active'),
(3533, '2023-11-15-5297', 'SHARING OF CSC LINGKOD BAYAN DIARIES VIDEOS OF MR. JU-IM T. JIMLAN ON ONLINE BULLETIN BOARD AND SOCIAL MEDIA PAGES', ' http://depedmanila.net:5000/d/s/w9oGdEelp1shM2fdhOyPFnLLXHaJJKfw/pfKhLt5PjiF3zBS91q_16qXSDLt2oULl-97yg0hQH7Qo', '730', '2023-11-24', 'NUMBERED MEMORANDUM', 'active'),
(3534, '2023-11-21-5627', 'ORIENTATION AND FOLLOW-UP ACTIVITY ON COMPREHENSIVE SUGAR TEST-FASTING BLOOD SUGAR ', ' http://depedmanila.net:5000/d/s/wE179XKPKsYbCBjOPWPbSf5EJo2XF9NR/1ePyJnw48VRAJ13Yny0s_bWvtxNUZNzj-ubvgh25K8Ao', '737', '2023-11-29', 'NUMBERED MEMORANDUM', 'active'),
(3535, '2023-11-22-5748', 'REQUEST FOR DONATIONS TO THE AFFECTED PUPILS OF JACINTO ZAMORA ELEMENTARY SCHOOL DUE TO THE FIRE IN PANDACAN, MANILA', ' http://depedmanila.net:5000/d/s/wE2m2tMS8a9WwTHHenK5Su2KCUm1lzQd/os_iumGGokAFuQ6y-pXGXdrJZVhZD3Pm-hb5gKLhP8Ao', '731', '2023-11-29', 'NUMBERED MEMORANDUM', 'active'),
(3536, '2023-11-22-5854', '160th BIRTH ANNIVERSARY OF GAT ANDRES BONIFACIO', ' http://depedmanila.net:5000/d/s/wE4AZWPH9yqGv53q7myxXlla0AAV9AWw/QgSkLorrx0YId_WT6kPFyNbrL3JtJVMu-774AhGxU8Ao', '732', '2023-11-29', 'NUMBERED MEMORANDUM', 'active'),
(3537, '2023-11-7-4518', 'DOWNLOADING OF THE OKY PERIOD TRACKER APP FOR ADOLESCENT LEARNERS', ' http://depedmanila.net:5000/d/s/wE7ATs7MHAg5C5bnC9DfJ6uPu9WB7VXw/H6lewWcWE-X6Td4N5iEK_EiEXMn_L04A-vbHgj85d8Ao', '735', '2023-11-29', 'NUMBERED MEMORANDUM', 'active'),
(3538, '2023-11-15-5264', 'DISSEMINATION OF DEPED MEMORANDUM DM-OUHRD-2023-1596 \nRE: INVITATION TO THE 1ST INTERNATIONAL CONFERENCE ON\nRESEARCH CULTURE MANAGEMENT IN BASIC EDUCATION', ' http://depedmanila.net:5000/d/s/wE7QP8hLRaEwNNBnU07Se7eAvePo5Hnx/eheFIVFPMfgpbvQvH3eC9s_rAGatKWsU-_LHArcZe8Ao', '736', '2023-11-29', 'NUMBERED MEMORANDUM', 'active'),
(3539, '2023-11-26-6092', 'CORRIGENDUM TO DIVISION MEMORANDUM 706, S 2023, RE ORIENTATION TRAINING ON THE DIVISION LEARNING OUTCOMES ASSESSMENT TOOLS', ' http://depedmanila.net:5000/d/s/wE8K0dFFr2Z0h4kxTSjTL7SPidVaqqPe/cAx0WPX_O61rKuReQNot3z6uwPseTJtQ-A7PgjXph8Ao', '734', '2023-11-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3540, '2023-11-23-5923', 'ORIENTATION ON THE GUIDELINES ON THE PROVISION OF SUPPLEMENTARY LEARNING RESOURCES FOR PUBLIC SCHOOL LIBRARIES AND LIBRARY HUBS', ' http://depedmanila.net:5000/d/s/wE8WAQ2l8I9DAfRwDmPBXBvTQXzOyF8R/jaHywaYEsH5VSchqaxIvh4qUcIPO_-i4-TbOgfdhi8Ao', '733', '2023-11-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3541, '2023-11-22-5750', '2023 COUNCIL BASIC TRAINING COURSE FOR TROOP LEADERS  LEADERS OF ADULTS', ' http://depedmanila.net:5000/d/s/wE9iil2qUShrG7HiGectjDQ5uz4uDh7H/seY14W9BaOH-iZHoaqkNzBIzVuZ9FhT8--7Mg7q5o8Ao', '313', '2023-11-29', 'DIVISION CIRCULARS', 'active'),
(3542, '2023-11-22-5746', 'INVESTITURE AND DAY CAMP OF REGISTERED GIRL SCOUTS AND TROOP LEADERS', ' http://depedmanila.net:5000/d/s/wEAyO1bP7KbrlG5mLFSNt75kiwtDI0Ar/jYpC80QukEQoPAVRWpns_qWFPdivr2RB-SrRgSgNq8Ao', '314', '2023-11-29', 'DIVISION CIRCULARS', 'active'),
(3543, '2023-11-16-5385', 'INVITATION TO THE YEAR-END SCIENTIFIC CONFERENCE 2023 OF THE SCHOOL HEALRH EMPLOYEES ASSOCIATION OF NCR (SHEAN), INC', ' http://depedmanila.net:5000/d/s/wEC2bc8n9YRf2J0kKzw1CsP7wONgfmeD/AcB0CrDxQxfWKLBqKXVVXUss4SN-B6w9-g7QgFmVt8Ao', '415', '2023-11-29', 'DIVISION ADVISORIES', 'active'),
(3544, '2023-11-22-5745', 'MARIAN YOUTH MOVEMENT', ' http://depedmanila.net:5000/d/s/wECDgfV8UQl5LViPBow7iriEPMJUXTIi/74T9_NajTZglyCc4HCO3abOvqNakf3i_-ubTgJflt8Ao', '416', '2023-11-29', 'DIVISION ADVISORIES', 'active'),
(3545, ' 2023-11-15-5276', 'REPERTORY PHILIPPINES SNOW WHITE AND THE PRINCE', ' http://depedmanila.net:5000/d/s/wECqfVFkT2daOjRKusNnHcOv1anXxR8o/j6yE6A8uN4kFYAVij1lOUqtKle3NJ4qP-E7Wgvfpv8Ao', '417', '2023-11-29', 'DIVISION ADVISORIES', 'active'),
(3546, '2023-11-16-5371', 'HIRAYA THEATER PRODUCTION (HTP) DRAMANG PANG ENTABLADO AND THE FROG PRINCE', ' http://depedmanila.net:5000/d/s/wED2QO2BiMdjMowDRzMsc1JJp3fQWppq/wIGS_5D5ApFZLfeFiYo8VyzXuMPtzIME-ObVgTahw8Ao', '418', '2023-11-29', 'DIVISION ADVISORIES', 'active'),
(3547, '2023-11-21-5626', '18th WORLD CHILDREN\'S HAIKU CONTEST 2023-2024', ' http://depedmanila.net:5000/d/s/wEDW64jmRwQFjQeQTu6vBaH3O4Dw2B2I/gKLndzWz9Hg4phgTqvbm9YfCxGNZNMYy-sLXAYSBy8Ao', '420', '2023-11-29', 'DIVISION ADVISORIES', 'active'),
(3548, '2023-11-28-6103', 'GUIDELINES ON THE IMPLEMENTATION OF THE PROJECT - DEPED\'S 236,000 TREES - A CHRISTMAS GIFT FOR THE CHILDREN', ' http://depedmanila.net:5000/d/s/wEDlpwoArmj1cSdel0so3qVhhe4yScri/3mLKQBkAFnB2qyTlLS9_bSMv6PpMfqit-Hbaghe1y8Ao', '738', '2023-11-29', 'NUMBERED MEMORANDUM', 'active'),
(3549, '2023-11-29-6209', 'WINNERS OF 2023-2024 NESTLE WELLNESS CAMPUS PROGRAM HEALTHY HABITS PRACTICES COMPETITION', ' http://depedmanila.net:5000/d/s/wElTMAz3xOkwvERglEwQJt8SJRAjdxMO/ilgUrNDxRZu5uzLzmFx6rfpc3YndAQHn-o7DgZOXe8Ao', '739', '2023-11-30', 'NUMBERED MEMORANDUM', 'active'),
(3550, '2023-11-28-6105', 'ORIENTATION ON THE GUIDELINES ON THE PROVISION OF SUPPLEMENTARY LEARNING RESOURCES FOR PUBLIC SCHOOL LIBRARIES AND LIBRARY HUBS', 'http://depedmanila.net:5000/d/s/wEmsZgjk9tVcXFLTMiAPN4csKsZdRdBS/PgORpfMmtAOnOg3glVbUBVbP1f9zYQlg-pbRgF4zj8Ao', '740', '2023-11-30', 'NUMBERED MEMORANDUM', 'active'),
(3551, '2023-11-22-5759', 'PAMBANSANG BUWAN AT ARAW NG PAGBASA', ' http://depedmanila.net:5000/d/s/wEyxvstRomWyvjvmonWb7LLNEic02oiu/I3SeANVgHqUkBeWzzVLpPlZBiGELW49W-TL6AgBwK8Qo', '741', '2023-11-30', 'NUMBERED MEMORANDUM', 'active'),
(3552, '2023-11-15-5262', 'DLSU-FTK 2024', ' http://depedmanila.net:5000/d/s/wF0xP1lcg2URuvM8t568t2OgfierADCs/mH5e4CUpNtMp4VQ72qgk80D2LG2--ke3-HLNA7YYQ8Qo', '421', '2023-11-30', 'DIVISION ADVISORIES', 'active'),
(3553, '2023-11-16-5382', 'INVITATION TO THE 50TH FOUNDATION ANNIVERSARY, 37TH ANNUAL CONVENTION OF THE PHILIPPINE NURSES ASSOCIATION-ZONE 3, INC', ' http://depedmanila.net:5000/d/s/wF1HRlKfyMTLJFOKix9OniSk3SeLxSIc/D40G2mdsnXUFUumRFAn7YRheCkgItOX3-GbRA55sR8Qo', '422', '2023-11-30', 'DIVISION ADVISORIES', 'active'),
(3554, '2023-11-24-5976', 'AYALA FOUNDATION MAGING MAGITING PROGRAM', ' http://depedmanila.net:5000/d/s/wF2QgSf1bRFb6MtNxJUqyCYjyk9ITna0/k6rIH4JjKSJCQLS-aUoHsQz8TicqSOLh-FLcAyjoV8Qo', '424', '2023-11-30', 'DIVISION ADVISORIES', 'active'),
(3555, '2023-11-22-5747', 'INVITATION TO THE INTERNATIONAL EDUCATORS\' CONFERENCE', ' http://depedmanila.net:5000/d/s/wF2tO8lP0SiP20KTzSqyRG0WTpjvlnA2/T7VfhmhwZKSzejrx2AEOhzp0RHRWPTyJ-erhgccwW8Qo', '423', '2023-11-30', 'DIVISION ADVISORIES', 'active'),
(3556, '2023-11-8-12634', 'GLOBAL EXCELLENCE AWARDS', ' http://depedmanila.net:5000/d/s/wF5VZEgKpkd0WnMFm3sbV1n8BtyyzsyG/aqqEw4sIR3shcFMHc4AmdGLkGvhEDq1R-Vr5gNyIf8Qo', '425', '2023-11-30', 'DIVISION ADVISORIES', 'active'),
(3557, '2023-11-13-4951', 'ANNOUNCEMENT OF THE 2023 BATANG MATIBAY AWARDEES', ' http://depedmanila.net:5000/d/s/wIATuxhtzaiadNaf3O1xSspz8fjOjhXr/imQOfWm9BVcOvrYXFAgIoZmyoYk9ekYX-cb2gwsqC8wo', '742', '2023-12-04', 'NUMBERED MEMORANDUM', 'active'),
(3558, '2023-11-29-6208', 'SEARCH FOR THE 2024 METROBANK FOUNDATION OUTSTANDING FIILIPINOS BEGINS', ' http://depedmanila.net:5000/d/s/wIAhRf7gkqkk3sS8c8pSueQgL38P4XI2/A80V70w5EK2LadKT3l_igqxorHcNKHXZ-0L2gGoCD8wo', '743', '2023-12-04', 'NUMBERED MEMORANDUM', 'active'),
(3559, '2023-11-29-6252', 'LEARNING ENGAGEMENT AND MANAGEMENT (LEM) AND PROFESSIONAL MEETING', ' http://depedmanila.net:5000/d/s/wIAzRxF5fDC8IJBie8WuIJ4iP312ItTZ/eMB1WlO3tGYoM65zgaEadJHrHr1EwKbI-Tb6gR4qE8wo', '744', '2023-12-04', 'UNNUMBERED MEMORANDUM', 'active'),
(3560, '2023-11-29-6298', 'WINNERS IN THE 2023 DIVISION SCIENCE FAIR', ' http://depedmanila.net:5000/d/s/wIBbF5xSUwEt07HVvEliKbAvl5yxgOUC/FtIGcl3Oa5gDgwggUeFoI2yJcq5Ammjw-V78ATlSG8wo', '745', '2023-12-04', 'NUMBERED MEMORANDUM', 'active'),
(3561, '2023-11-30-6312', 'CAREER GUIDANCE ORIENTATION FOR GRADE 12 LEARNERS', ' http://depedmanila.net:5000/d/s/wIBjoa07yWYEVJdV1p6z4Jw83jFo9wPW/9cpbskLqamOkBeXZH2EjbIGuy11l_tmE-m7-gE8qG8wo', '746', '2023-12-04', 'NUMBERED MEMORANDUM', 'active'),
(3562, '2023-11-30-6394', 'PARTNERSHIP MEETING ON LEARNER RIGHTS AND PROTECTION', ' http://depedmanila.net:5000/d/s/wIBxKlU2bV7jUVCylW5CqMuBJZU0Dyji/5Qo-CR9j6wPlL-0BuORO9GqbfGEH_BnD-87-ggX2H8wo', '747', '2023-12-04', 'UNNUMBERED MEMORANDUM', 'active'),
(3563, '2023-11-23-5879', 'VENUE FOR THE CONDUCT OF REGIONAL INTERFACE WORKSHOP OF RO HRDD-NEAP AND SDO SGOD CHIEFS, HRD, M&E', ' http://depedmanila.net:5000/d/s/wIC8L72jBpemU3ZsiLD7wdIHrF2eAapq/cQiv_54fSSQH4wyNsAclNtOZ1toWBn2Y-SbKguAWM8wo', '426', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3564, '2023-11-30-6389', 'POSTPONEMENT OF TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARD THE ACHIEVEMENT OF THE MATATAG AGENDA AND PROFESSIONAL EXCELLENCE: SESSION 3', ' http://depedmanila.net:5000/d/s/wIFJD6yxf8kclTdmzf4Cf9GJaWBi0x1O/8wDDENn0uJxF1QaWZ7ZgM8OwbzQe3utg--7SAQz-S8wo', '435', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3565, '2023-11-21-5657', 'YISRAEL SOLUTIONS AND TRAINING CENTER, INC', ' http://depedmanila.net:5000/d/s/wIGZdCVD2TXV6pWaZnOLe4fjbPXEoC3C/QB5LU2-kWdIyKtl56dXJH5bpk4WlgiUq-graAtE2W8wo', '427', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3566, '2023-11-23-5880', 'ACTIVITIES ON THE DEVELOPMENT OF LEARNING DELIVERY GUIDE', ' http://depedmanila.net:5000/d/s/wIGlbweEauxr7dDVUbUifxuH1ZVsylxu/7JRvz6HvM61OD-xPCG-y7r9FCzfWuiGL-vbYA3vKW8wo', '428', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3567, '2023-11-23-5881', 'INVITATION TO THE FIFTH NATIONAL CONVENTION PHILIPPINE ORGANIZATION FOR TLE AND TVL EDUCATION (POTTE) INC', ' http://depedmanila.net:5000/d/s/wIGvClE6MZohmF1v2KxjZR8oMPkGfxG1/BykbbO_FmeTUGF8hTdHFA9wlPkjyMS4y-4bagwnCX8wo', '429', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3568, '2023-11-23-5882', 'RESCHEDULING OF THE LEARNING ENGAGEMENT OF THE REGIONAL PERSONNEL DEVELOPMENT COMMITTEE (RPDC) AND LEARNING AND DEVELOPMENT (L&D) SUB-COMMITTEE STEWARD', ' http://depedmanila.net:5000/d/s/wIH7xRjiTQPAmIsA1WVBUIKuQLFKNhtz/-dnmKY4QMN-RfPPz82CQe2NAY1VlKy0o-DLegiiaY8wo', '430', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3569, '2023-11-29-6297', 'CHANGE OF DATE FOR THE 4TH SENIOR HIGH SCHOOL COMPETITION', ' http://depedmanila.net:5000/d/s/wIHHBcwlABD9mmVYZu9P0UHvfK4ZgSba/J7vYjzESnNTxlux7NFMmlZk7L3aqZgJd-MbcAZIaY8wo', '431', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3570, '2023-11-29-6215', 'ORGANIZING AN ACADEMIC RESEARCH PAPER FUNDAMENTALS AND GENERAL RULES', ' http://depedmanila.net:5000/d/s/wIHSOk1v053TWJrHONLQCcLCIEHlymka/A0fXvgHbDAy4RnjwjB99HrkyGv6j7E3B-UrfABiGZ8wo', '432', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3571, '2023-11-29-6216', 'CHILD PROTECTION COMMITTEE (CPC) FUNCTIONALITY TRAINING WORKSHOP', ' http://depedmanila.net:5000/d/s/wIHfsvKKCnMAPSm0f1KD3WylD2XA01sW/pOMwXgdvjI5HiVYBbhrZ-S6pxRkIQOqc-a7dAU9WZ8wo', '433', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3572, '2023-11-29-6217', 'ADDITIONAL TRANSPORTATION EXPENSES TO BE CHARGED AGAINST LOCAL FUNDS', ' http://depedmanila.net:5000/d/s/wIHqxmciWqOXp1DVS8rzmcuRt8hATxRj/_pO-Zfvs1zA1BpBXIhgwoMetmRqB6kHd-o7cgrWSa8wo', '434', '2023-12-04', 'DIVISION ADVISORIES', 'active'),
(3573, '2023-11-28-6104', 'REQUESTING THE CONDUCT OF ORIENTATION INFORMATION DISSEMINATION FOR SELECTED STUDENTS AT T. ALONZO HIGH SCHOOL AND C. ARELLANO HIGH SCHOOL', ' http://depedmanila.net:5000/d/s/wII1bDMGZmExs1DFQJJpESim2WsbcWnv/7cjKT_4xT0Rs2buNaHpfLIezAeM1CSTJ-vbcAvUqb8wo', '315', '2023-12-04', 'DIVISION CIRCULARS', 'active'),
(3574, '2023-11-29-6290', 'KOREAN RED CROSS GYEONGGI-DO CHAPTER REQUESTING TO CONDUCT GIFT GIVING ACTIVITIES', ' http://depedmanila.net:5000/d/s/wIIJXZDq2gsBDZfl3Tl2Vwd9LdmJgEbb/mOAI8A_8bCk0WdxNOd6xiSRGfMfP3XTD-CbigflCc8wo', '316', '2023-12-04', 'DIVISION CIRCULARS', 'active'),
(3575, '04/12/2023', 'SCHEDULE OF ACTIVITIES FOR THE SCREENING OF APPLICANTS FOR HEAD TEACHER III (VOCATIONAL), NURSE II (ELEMENTARY AND SENIOR HIGH SCHOOL), PROJECT DEVELOPMENT OFFICER I (ELEMENTARY)', ' http://depedmanila.net:5000/d/s/wIL41qoFWi1R8syT7mLpCHcpIk3qV26Q/R0uB2QFi9y7Srj4LJs20Ygcu_A70lA6n-ZbkgOt2k8wo', '748', '2023-12-04', 'NUMBERED MEMORANDUM', 'active'),
(3576, '2023-11-21-5652', 'BULING BULING NG MAYNILA', ' http://depedmanila.net:5000/d/s/wIx4TfY8SYnAzCOFqaHTebQIoN2OxTky/jgAFXfZjRXfLNRzXXyBwTl8gSGjfWSF5-pLCgHo4e9Ao', '749', '2023-12-05', 'UNNUMBERED MEMORANDUM', 'active'),
(3577, '2023-11-29-6221', 'CONDUCT OF REGIONAL LCRP ACTIVITIES', ' http://depedmanila.net:5000/d/s/wIxMRZDKLszQLw97JLs1WD93gUoMKYvM/qJNv9AtPk_1vJbwFmI_8Tb2Slg_FxLva-HrFAplcf9Ao', '750', '2023-12-05', 'NUMBERED MEMORANDUM', 'active'),
(3578, '2023-11-29-6227', '2023 REGIONAL AWARDING OF THE BEST GULAYAN SA PAARALAN PROGRAM (GPP) IMPLEMENTERS', ' http://depedmanila.net:5000/d/s/wIxV26y8RfA4NUyHzmCJ6soP47b89239/Gaw8T8VJuPx_LlGtMmHmkJqkAKesgUAj-bbHAaM0f9Ao', '751', '2023-12-05', 'NUMBERED MEMORANDUM', 'active'),
(3579, '2023-11-30-6302', 'ADMINISTRATION OF THE 2023 SPECIAL PHILIPPINE EDUCATIONAL PLACEMENT TEST (PEPT)', ' http://depedmanila.net:5000/d/s/wIzAUod4g9KEbLM8tVuF5KRm7fLIsFq8/vTe8tEokCKHn-vM6ZBfOsSFtgYYlNXfT-hbNgmyMl9Ao', '752', '2023-12-05', 'NUMBERED MEMORANDUM', 'active'),
(3580, '2023-11-29-6204', 'INTENSIFYING TEACHING AND LEARNING THROUGH THE PROVISION OF TECHNICAL ASSISTANCE IN THE SCHOOLS', ' http://depedmanila.net:5000/d/s/wJ7YXcO4LzLm7RBznTvw75EWlitYnpZA/mZlPVm1F4Hh4Um3BEME5rfWRyXGOgixf-Cr8gRSdA9Ao', '753', '2023-12-05', 'NUMBERED MEMORANDUM', 'active'),
(3581, '12/05/2023', 'TREE PLANTING ACTIVITY PROGRAM', ' http://depedmanila.net:5000/d/s/wJAOPNx6uTQ8a0QU2X3xtUO6OrhdAAfw/eBBl91osIRsA6x2_bxmR9XWEbNsUGf3G-UrFAWQtJ9Ao', '754', '2023-12-05', 'NUMBERED MEMORANDUM', 'active'),
(3582, '06/12/2023', 'HOSTING FOR THE CITY OF MANILA FLAG RAISING CEREMONY', ' http://depedmanila.net:5000/d/s/wJvnopX1eQOKsLXc404MCrvxhr1QMuWs/7BgWRgBb8nhwstQafMSwSkYF2Dtv61YA-jrZAZO7g9Ao', '521', '2023-12-06', 'NUMBERED MEMORANDUM', 'active'),
(3583, '2023-12-5-6663', 'ORIENTATION ON PREPARATION AND SUBMISSION OF THE REQUIRED REPORTS FOR 2023 DIVISION ANNUAL ACCOMPLISHMENT REPORT (AAR)', 'http://DepEdManila.quickconnect.to/d/s/wOlcVKZIinOLmAtXGp0C5bPdJPIH7ras/w7eNApCL_6XEviUKafNdFsZbruX_3C4p-c7DgxSmh-Ao', '16', '2023-12-07', 'OFFICE ORDER', 'active'),
(3584, '2023-11-24-6048', 'MASS IMMUNIZATION CAMPAIGN MEETING', ' http://depedmanila.net:5000/d/s/wKmEHSg1NfKeqMwjxkCcHbWK1zG0rg3M/yPHFaZ5935qj2wJPg3KZGBWJTZnQjj9f-o7CADNCI9Qo', '436', '2023-12-07', 'DIVISION ADVISORIES', 'active'),
(3585, '2023-12-1-6447', 'RESCHEDULE OF MEETING REGARDING THE PROCESS FLOW OF SCHOOL MOOE REPAIR AND OTHER MATTERS RELATED TO EDUCATION FACILITIES', ' http://depedmanila.net:5000/d/s/wKmgbEvU9vvHIukEXEMyFf5oTXNw44mq/6iMg8ymTSrpU-kKBD-xwrY_plqTP9xm4-5bBAu1WK9Qo', '437', '2023-12-07', 'DIVISION ADVISORIES', 'active'),
(3586, '2023-11-23-5872', 'DISSEMINATION OF TOUCHSTONE THE OFFICIAL DEPED NCR JOURNAL OF TECHNICAL ASSISTANCE (TA) ACCOMPLISHMENT AND NOTABLE PRACTICES TO THE FIELD CUM LAUNCHING OF DEPED NCR', ' http://depedmanila.net:5000/d/s/wKnV0SeO7lzbgnXcSp4jVxq2LDRvTf8q/6AFxUScIEquT3yfqji0Ke0NPh7QKSJPj-I7LA_gWN9Qo', '757', '2023-12-07', 'NUMBERED MEMORANDUM', 'active'),
(3587, '2023-12-1-6403', 'ADDITIONAL PARTICIPANTS TO MANILA GIRL SCOUTING 101 ACTIVITY ON DECEMBER 11, 2023 AT 9:00 A.M. TO 3:00 P.M.', ' http://depedmanila.net:5000/d/s/wKni5v8sxDxD1Vi37RoDHQtEWe6aGpty/w-CPQbTnN4_PZt8sAwbWtQrHoDDDVU3X-frJACKaN9Qo', '317', '2023-12-07', 'DIVISION CIRCULARS', 'active'),
(3588, '2023-11-28-6095', 'I-SULAT (INTELLIGENT STROKE UTILIZATION, LEARNING, ASSESSMENT AND TESTING) A DEVELOPMENT OF AN INTELLIGENT QUANTITATIVE SOFTWARE-BASED HANDWRITING AND TESTING SYSTEM FOR', ' http://depedmanila.net:5000/d/s/wKov0KSKvdeDElI1jNQDS7G1FWxYDX8e/qEeE3bRfvKpqZDpvYuqeB8RK05Jq-pij-DLSARo2R9Qo', '438', '2023-12-07', 'DIVISION ADVISORIES', 'active'),
(3589, '2023-11-23-5883', 'CALL FOR PARTICIPANTS TO THE CYBERSECURITY AND FUTURE-READY-SKILLS IN MINECRAFT EDUCATION PROGRAM', ' http://depedmanila.net:5000/d/s/wO1GE7Cac72lQQeaPmo2GJWEWmpymg8b/QH8X-M58l88S3xcoSyMy71Zxg8KCF3wt-q7_gPdIM-Ao', '758', '2023-12-11', 'NUMBERED MEMORANDUM', 'active'),
(3590, '2023-12-4-6538', 'PARTICIPATION IN THE DEPED 12 DAYS OF CHRISTMAS CELEBRATION', ' http://depedmanila.net:5000/d/s/wO1RcOszpL0xxLpzGEUuGBSmhOs7uAzR/TEkC6d-jgpUnO0WqpWRowJiX7ENl4CGH-wr-gGksN-Ao', '759', '2023-12-11', 'NUMBERED MEMORANDUM', 'active'),
(3591, '2023-12-6-6791', 'SCHOOL-BASED FEEDING PROGRAM EMERGENCY MEETING', ' http://depedmanila.net:5000/d/s/wO1cZxraMzQMDG53ItcBqphGNG0iW0nB/vnM25B5cCb1ZuhkLmzfUO1kEz9yCN4vm-1r_AENwN-Ao', '760', '2023-12-11', 'NUMBERED MEMORANDUM', 'active'),
(3592, '2023-11-29-6268', 'THE BOSCONIAN QUILL 2024 DON BOSCO EDUCATIONAL CENTERS 1ST NCR-WIDE JOURNALISM PRESS CONFERENCE', ' http://depedmanila.net:5000/d/s/wO5508vMbgkFoqnStbn78YgM7Y5u6ucm/ME-MaWu6bl1lFbjx25jLkO-BAyD2IT-y-_b-A_fsY-Ao', '439', '2023-12-11', 'DIVISION ADVISORIES', 'active'),
(3593, '2023-11-30-6320', 'GIRL SCOUT PATROL LEADERS TO ATTEND THE 43RD GSP NATIONAL CAMP', ' http://depedmanila.net:5000/d/s/wO8BlFMOIgCbKHZR5JE50ZvLbUJQAwn5/UnTfwJ43HtWediq1h6uaGTnsL2Gw9Kj1-FLDAuu0i-Ao', '318', '2023-12-11', 'DIVISION CIRCULARS', 'active'),
(3594, '2023-12-1-6425', 'ADDITIONAL PARTICIPANTS TO MANILA GIRL SCOUTING 101 ACTIVITY ON DECEMBER 11, 2023 AT 9:00 A.M. TO 3:00 P.M', 'http://depedmanila.net:5000/d/s/wO8dfZxK7wOdBsqFwjnZo7WPBajUTWzs/7ocXbXaJqN9lm_V8vAgK1vqwFs5RoXAj-QrAgAWUk-Ao', '319', '2023-12-11', 'DIVISION CIRCULARS', 'active'),
(3595, '2023-11-29-6203', 'REQUEST TO USE DEPED MANILA\'S SCHOOL FACILITIES AS BILLETING AREAS AND COMPETITION VENUES FOR MUAY THAI, KICKBOXING AND BOXING FROM DECEMBER 16 TO 22, 2023', ' http://depedmanila.net:5000/d/s/wO8t8vJmzC4pP8m0n9wFmvf1nTX9LePz/DWolEM3s62BupUllSXgVxJp_Sd1shMzM-YrDAby4r-Ao', '320', '2023-12-11', 'DIVISION CIRCULARS', 'active'),
(3596, '2023-11-29-6238', 'GLOBAL PEACE CONVENTION 2023', ' http://DepEdManila.quickconnect.to/d/s/wOy6KC3PAXYy97sS5JiFBEmIZXKjLAK4/IBvf4WvQsPsfIZxezQuOGA-8ZXmMjigz-trhAniXJ-Ao', '761', '2023-12-12', 'NUMBERED MEMORANDUM', 'active'),
(3597, '2023-12-5-6751', 'REITARATION OF DEPED POLICY GUIDELINES ON SPECIAL CURRICULAR PROGRAMS', ' http://DepEdManila.quickconnect.to/d/s/wP0s0nqi98wmNUL9ocFqnlZUeUoeIi38/Hfg3_-cZeKCV_6DIMkpLfVfk7m_rVyE9--L7gPAzS-Ao', '756', '2023-12-12', 'NUMBERED MEMORANDUM', 'active'),
(3598, '2023-12-14762', 'CONDUCT OF THE EQUIP PORTAL INTEGRATED LEARNING OUTCOMES AND CURRICULUM IMPLEMENTATION AND MANAGEMENT DIGITAL PLATFORM DEVELOPMENT WORKSHOP', ' http://depedmanila.net:5000/d/s/wQOkFWD3z8D82UwRLZKAzFhHe6WP3zhZ/IVyxQsFkkkFvClL4IO5dRbFzNvEQQ7rz-OLQgfyXl-Qo', '762', '2023-12-14', 'NUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(3599, '2023-12-14763', 'GRANT OF GRATUITY PAY TO JOB ORDER AND CONTRACT OF SERVICE WORKERS IN THE GOVERNMENT', 'http://depedmanila.net:5000/d/s/wQeEwTgWlJoIpkPQ9zToQovAUuDxyuyy/VY72k0IBVq6Wa-t4DoJcifVd7x8yWrwr-wrigB6cW-go', '763', '2023-12-14', 'NUMBERED MEMORANDUM', 'active'),
(3600, '2023-12-6-6775', 'SUBMISSION OF DATA ON THE NUMBER OF SECONDARY SCHOOLS THAT PROVIDED PROFESSIONAL DEVELOPMENT PROGRAMS IN TEACHING FILIPINO TO THEIR TEACHERS WITH NON-FILIPINO MAJORS', ' http://depedmanila.net:5000/d/s/wRFkEUSj6PwliP0NpcBp2PUH1C0UXoJd/HMnjfQ2ic4h8JZsfgqh3IQybYBKtRBG--o7tANvKO-go', '764', '2023-12-15', 'NUMBERED MEMORANDUM', 'active'),
(3601, '2023-12-13-7326', 'SEMINAR ON BENEFITS AND PRIVILEGES OF SDO MANILA RETIRING EMPLOYEES AND PERSONS WITH DISABILITIES (PWD) FOR FISCAL YEAR 2023', ' http://depedmanila.net:5000/d/s/wRUw3Y2nLVBcMjlQmSjI2EaeVSY0PGWq/qS_xMxqDWgoKFUeqt0CcxHM4lNoW9ZNn-QL_g_Y6_-go', '765', '2023-12-15', 'NUMBERED MEMORANDUM', 'active'),
(3602, '2023-12-5-6742', 'ASSUMPTION COLLEGE MODEL UNITED NATIONS CONFERENCE (ACMUNC)', ' http://depedmanila.net:5000/d/s/wThYB2ieMkDZBbu6U0pVYK8L3Agl8gtn/kDLQOoWMR7koAp_PNpkaLHKq6EcAs5vm-lbegDQ91_Ao', '440', '2023-12-18', 'DIVISION ADVISORIES', 'active'),
(3603, '2023-12-6-6777', 'INVITATION TO THE NOPTI 20TH ANNUAL NATIONAL CONVENTION AND SEMINAR-WORKSHOP', ' http://depedmanila.net:5000/d/s/wTmRAMxI0itx6aqvrql8WEot8CkcrqW0/wfzTFmVLjMypLYvTQRAXXw_FtwIw2F2u-pb3gt7yE_Ao', '766', '2023-12-18', 'NUMBERED MEMORANDUM', 'active'),
(3604, '2023-12-12-7084', 'INVITATION TO METROBANK FOUNDATION OUTSTANDING FILIPINOS VIRTUAL INFORMATION CAMPAIGN', ' http://depedmanila.net:5000/d/s/wToRuoRUhqWL86OuOgmSnsuiOavxmYWz/gfnXtbcLBaoboph3u0G-NiTPCJ2errJt-Q7AAnEuL_Ao', '767', '2023-12-18', 'NUMBERED MEMORANDUM', 'active'),
(3605, '2023-12-1-6408', 'AMENDMENT TO DIVISION MEMORANDUM NO. 710, S. 2023 (CONDUCT OF PROJECT LIMTUSS INTENSIFYING LITERACY IN FILIPINO AND ENGLISH, MATHEMATICAL UNDERSTANDING, SCIENCE CONTENT ', 'http://depedmanila.net:5000/d/s/wKlO9ZKCL8fA8jo5aQ9wUkX60NO346Up/Wmg3VAKg3b9QfhNnINCOP4X8R4HHv_gQ-YLDgF1CG9Qo', '755', '2023-12-18', 'NUMBERED MEMORANDUM', 'active'),
(3606, '2023-12-18768', 'RELEASE PAYMENT OF SERVICE RECOGNITION INCENTIVE (SRI) FOR FY 2023', ' http://depedmanila.net:5000/d/s/wTubGK4WS1uN4qiktV2OHb9XXJnLAsrp/BKbU63wcBXeEODx5aJqI_HbMbrgnM8-y-xLjALd6e_Ao', '768', '2023-12-18', 'NUMBERED MEMORANDUM', 'active'),
(3607, '2023-12-18-7557', 'Postponement of Seminar on Benefits and Privileges of SDO Manila Retiring Employees and Persons with Disabilities (PWD) for Fiscal Year 2023', ' http://depedmanila.net:5000/sharing/XIjqVWZ1S', '441', '2023-12-18', 'DIVISION ADVISORIES', 'active'),
(3608, 'ict - 001', 'SDO Manila Commitment Plotting and Alignment Matrix for FY 2024', 'http://DepEdManila.quickconnect.to/d/s/wXL8KaUe9jo3dRlUkBZDkWW94piNkOaQ/TqzGb0lRexW5VJeRzvfXkegvrm6vqwcj-Y7gAqYZH_wo', '17', '2023-12-21', 'OFFICE ORDER', 'active'),
(3609, '2023-12-12-7100', 'STUDENT TRAINING ON SOCIAL EMOTIONAL LEARNING AND CLASSROOM DISCUSSION UTILIZING PROJECT ATM IN MATHEMATICS', ' http://depedmanila.net:5000/d/s/wX9gwnLANme2FMLGhevpgwOqFBpJLVuE/pyAOO4vak9bBbDRilUNeTuj_pu5liA7T-RLmAVAoj_wo', '769', '2023-12-22', 'NUMBERED MEMORANDUM', 'active'),
(3610, '2023-12-7-6920', 'ONLINE DATA COLLECTION OF PRIVATE SCHOOL PROFILE IN THE NATIONAL CAPITAL REGION', ' http://depedmanila.net:5000/d/s/wX9rEKguRgb3ZaTyrFO9ZFxMTmEwCze9/ttWZcvKa_UsqeTc0GHcTlQyu8IjcyTTG-o7ngL3Uj_wo', '770', '2023-12-22', 'NUMBERED MEMORANDUM', 'active'),
(3611, '2023-12-14-7340', 'CAREER GUIDANCE PROGRAM TRAINING NEEDS ANALYSIS FOR PUBLIC SECONDARY SCHOOL CLASS ADVISERS', ' http://depedmanila.net:5000/d/s/wXEkBsvzBXjJzsHVNPdEiL8JPbxvRISQ/CU7qUknzL5cDyYMFUikDqBpJvRrvQ4aR-k7_g0i0z_wo', '771', '2023-12-22', 'NUMBERED MEMORANDUM', 'active'),
(3612, '2023-12-13-7277', 'SCHOOL DIVISION OFFICE ASSIGNMENT OF DEPED ELEMENTARY AND SENIOR HIGH NURSES', ' http://DepEdManila.quickconnect.to/d/s/wXEyWBkkj7u14EcKSfVJZVAlEpI6rLXX/9kJRd4zD6BN0uZpZrePqB8Ri6cEW40H7-_b-giNwz_wo', '772', '2023-12-22', 'NUMBERED MEMORANDUM', 'active'),
(3613, '2023-12-22755', 'SUBMISSION OF CLIENT SATISFACTION MEASUREMENT (CSM) RESULTS FOR FISCAL YEAR 2023', ' http://DepEdManila.quickconnect.to/d/s/wXGgTvwgFUhPZzhho0jFc8kMSqNSdCqw/FuVhZoTHxaPBbfqXKXSoBB5Ki9NXSF-I-ILIAN1s5_wo', '775', '2023-12-22', 'NUMBERED MEMORANDUM', 'active'),
(3614, '2023-12-20-7743', 'REQUIREMENT FOR ISSUANCE OF PERMIT TO CONDUCT STUDY OR DATA GATHERING FOR RESEARCH PURPOSES', ' http://DepEdManila.quickconnect.to/d/s/wXH4HtOg7uVqh53Gh5LbsB0OMTWABhIJ/N4f3bEOxmGl4Ryugn9P0Lb_vyCe0a_K8-u7JAWps6_wo', '773', '2023-12-22', 'NUMBERED MEMORANDUM', 'active'),
(3615, '2023-12-20-7744', 'SUBMISSION OF ANNUAL IMPLEMENTATION PLAN (AIP) FOR FY 2024', ' http://DepEdManila.quickconnect.to/d/s/wXHBAVMmakhkzatUdfnvkZ6X5m8DPAu9/i_HYdUvMHn4l000IfHjylHnX7t7cN0EY--bLAueU6_wo', '774', '2023-12-22', 'NUMBERED MEMORANDUM', 'active'),
(3616, '2023-12-18-7540', 'ANNUAL CHRISTMAS PARTY OF THE MANILA PUBLIC SECONDARY SCHOOL HEAD TEACHERS\' ASSOCIATION (MaPSeSHTA)', ' http://DepEdManila.quickconnect.to/d/s/wXHcdsLxRsTwnN1NYD2E11tMAG0WxPwz/usckUaykm8RtTzPNhJe5Lk_N5KNqpKzw-pLOAzmY8_wo', '442', '2023-12-22', 'DIVISION ADVISORIES', 'active'),
(3617, '2023-12-19-7613', '7TH INTERNATIONAL CHILDREN\'S ENVIRONMENTAL CONSERVATION DRAWING CONTEST 2023', ' http://DepEdManila.quickconnect.to/d/s/wXI8tNvmNMdVwtQga7JgdfILmsnMZVin/9wwxfiLCYox-RUVOfe1iKHjgG1PrQB1o-R7TAVAA-_wo', '443', '2023-12-22', 'DIVISION ADVISORIES', 'active'),
(3618, '2023-12-6-6792', 'SCHOOL VISITATATION INITIATIVE TO PROMOTE THE MARITIME SCHOLARSHIP PROGRAM OF THE INTERNATIONAL MARITIME EMPLOYERS\' COUNCIL (IMEC)', ' http://DepEdManila.quickconnect.to/d/s/wXIROytT9lxNmuHeduuwu0HrEnTij8Xc/0sJGl0OvP-q3zJPAYdJld8PMtDlSbhLI-ubTAQgs__wo', '444', '2023-12-22', 'DIVISION ADVISORIES', 'active'),
(3619, '2023-12-6-6801', 'REQUEST TO CONDUCT AN INTERVIEW REGARDING THE RISING NUMBERS OF SCHOOL DROPOUTS AND ALSO ENROLLED STUDENTS IN ALTERNATIVE LEARNING SYSTEM (ALS), FOR INFORMATION AND APPROPRIATE ACTION', 'http://DepEdManila.quickconnect.to/d/s/wXIeeFp9IjhJ2HhLSrQQc7lrRgcjFB2g/2XWBkXVcyTLffy-vNx-YHND1xrXAwAsm-MrWgWsI__wo', '321', '2023-12-22', 'DIVISION CIRCULARS', 'active'),
(3620, '2023-12-20-7753', 'TECH NECK: NAVIGATING HEALTH IN THE DIGITAL WORLD', ' http://depedmanila.net:5000/d/s/wbFs25ajREMcflmVL0iQRQuOgOx43vyM/9IWdxqf8DqxWKDnEt0wmAKlxrtd0qSQi-SbzATwdRAgs', '445', '2023-12-27', 'DIVISION ADVISORIES', 'active'),
(3621, '2023-12-29777', 'REASSIGNMENT OF ELEMENTARY AND SECONDARY SCHOOL PRINCIPALS', ' http://depedmanila.net:5000/d/s/wcw4lGj3TVZiQ7MU9cdem7XKJb3nfAVE/5L2YSev7TtHRaKJ-tuTd3yBVWEUwaRIb-ELdgC86eAws', '777', '2023-12-29', 'NUMBERED MEMORANDUM', 'active'),
(3622, '2023-12-22-7858', 'REITERATION OF THE GUIDELINES ON THE USE OF NEAP FACILITY AS VENUE FOR WORKSHOPS, SEMINARS, TRAINING, CONFERENCES, AND OTHER OFFICIAL ACTIVITIES', ' http://depedmanila.net:5000/d/s/wh3cZPKa2qDNorbg6CzZORPE0G4mVhKV/2k9r0g9bUsjikFcwA4HUBmKrVWrFAReD-7biAeF7RBgs', '778', '2024-01-03', 'NUMBERED MEMORANDUM', 'active'),
(3623, '2023-12-22-7885', 'SPECIAL OLYMPICS PILIPINAS & DEPED MANILA MEMORANDUM OF AGREEMENT (MOA) IMPLEMENTATION OF STUDENT INTERNSHIP AND PARTNERSHIP PROGRAMS', ' http://depedmanila.net:5000/d/s/wh44k4r5ZdaAX3wzk2IaMXhmk3CX1QLn/N22XAQtuSX-UNVvsryn94EKt9UpE9LK3-ubmggNvSBgs', '779', '2024-01-03', 'NUMBERED MEMORANDUM', 'active'),
(3624, '2023-12-22-7885', 'SPECIAL OLYMPICS PILIPINAS & DEPED MANILA MEMORANDUM OF AGREEMENT (MOA) IMPLEMENTATION OF STUDENT INTERNSHIP AND PARTNERSHIP PROGRAMS', ' http://depedmanila.net:5000/d/s/wh44k4r5ZdaAX3wzk2IaMXhmk3CX1QLn/N22XAQtuSX-UNVvsryn94EKt9UpE9LK3-ubmggNvSBgs', '779', '2024-01-03', 'NUMBERED MEMORANDUM', 'active'),
(3625, '2023-12-11-13980', ' CALL FOR APPLICATION TO THE SCHMIDT FUTURES:RISE SEED AWARDS', ' http://depedmanila.net:5000/d/s/wh4kzRgbmhLthG344JacL2E78sTFK7zb/8o24IV27NTHhufdhMKcbk_X-GKH-WYvf-vLpAFu7UBgs', '1', '2024-01-03', 'DIVISION ADVISORIES', 'active'),
(3626, 'ICT-DM001', 'CORRIGENDUM TO DIVISION MEMORANDUM 777, s. 2023 (REASSIGNMENT OF ELEMENTARY AND SECONDARY SCHOOL PRINCIPALS)', ' http://depedmanila.net:5000/d/s/whzzxSn6kKzCZSHL095XYhl3osdJ0g4I/XJh-ZZ-uLbhulyUz9beOJNDcXougdtwe-JLXggmiMBws', '1', '2024-01-04', 'NUMBERED MEMORANDUM', 'active'),
(3627, 'ICT-DA002', 'ASTROCAMP', 'http://depedmanila.net:5000/d/s/wi1RoKh7yd5YdW8zsEGWCkvS78pLpE99/KML77wkZ3rjr1DzviEuxZ6CFh3K7k_eG-yLjAIdeQBws', '2', '2024-01-04', 'DIVISION ADVISORIES', 'active'),
(3628, 'ICT-DA003', 'ENRICHING THE FILIPINO FAMILY: A GIFT TO THE NATION', 'http://depedmanila.net:5000/d/s/wi1oSqcj5z7udeE1yPHay2JC9C4T3TgT/-yorzzfu5P8e3SQW4zCN_ygESFdm2fFo-y7kgsQKSBws', '3', '2024-01-04', 'DIVISION ADVISORIES', 'active'),
(3630, 'ICT-DM002', 'REGIONAL WORKSHOP ON DEPED NCR\'S THREE-YEAR DEVELOPMENT PLAN', ' http://depedmanila.net:5000/d/s/widZ7gGzk6uouRPL821OYboqYLGdAeMP/Y7gJTyxg0yoaQr9-lvthtPXlwjkclanM-qrmAC_EKCAs', '2', '2024-01-05', 'NUMBERED MEMORANDUM', 'active'),
(3631, '2023-12-22-7861', 'MANILA SCIENCE HIGH SCHOOL ADMISSION TEST (MSAT) GUIDELINES FOR THE SCHOOL YEAR 2024-2025', ' http://depedmanila.net:5000/d/s/wifQ5GVW437DQzkOsnJf1tFFdDB88tqI/pPMnKJXSQUooOHbLsSDjyW6Mk2jZYn5d--ruASfAQCAs', '780', '2024-01-05', 'NUMBERED MEMORANDUM', 'active'),
(3632, '2023-12-15-7460', 'PARTICIPATION IN THE SOUTHEAST ASIA PLUS SUSTAINABLE DEVELOPMENT GOALS YOUTH CAMP 2024 AT NAKHON RATCHASIMA PROVINCE, THAILAND', 'http://depedmanila.net:5000/d/s/wigNDZ5WYoqPD8sbVJm9f06RIztxX3S6/0c7Jce8nPWW7JCQi1v-wM9WjWJJH7soJ-NL1ghQgUCAs', '781', '2024-01-05', 'NUMBERED MEMORANDUM', 'active'),
(3633, '2023-12-27-7941', 'REQUEST FOR DONATIONS TO THE AFFECTED PUPILS OF EMILIO JACINTO ELEMENTARY SCHOOL DUE TO THE FIRE IN CAPULONG AND LACSON STREETS, TONDO, MANILA', ' http://depedmanila.net:5000/d/s/wisCrz2LI2gAHIarb4YpKOuUNRxQtvFn/RcHgyBKQN9_sOZef8PV38PLc_fE9642z-Ab8AGvc5CAs', '782', '2024-01-05', 'NUMBERED MEMORANDUM', 'active'),
(3634, 'ICT-DM003', 'TECHNICAL ASSISTANCE, SUBMISSION OF LEARNING & DEVELOPMENT PLANS, AND MONITORING OF SCHOOLS\' PREPARATION FOR THE 2ND QUARTER EXAMINATION AND MID-YEAR INSET', ' http://depedmanila.net:5000/d/s/wlCXBzIgqBkDEMcPnoxi3UcFeAC4Q9kl/eBcJzJZNAgCWVoA9RJspdlfjdKuriVYu-lrwAc0AICgs', '3', '2024-01-08', 'NUMBERED MEMORANDUM', 'active'),
(3635, 'ICT-OM001', 'SUBMISSION AND ENCODING OF IPCRF FOR CALENDAR YEAR 2023', ' http://depedmanila.net:5000/d/s/wmofJ60Z7Iz9i354EqmoHZjkUKiC37r2/OWd_HhZwe8eO_IenvGVCnzmwm_Fdx8FN-t7YA9-RICws', '1', '2024-01-10', 'OFFICE ORDER', 'active'),
(3636, 'ICT-UM001', 'CYBERSECURITY AND FUTURE-READY-SKILLS IN MINECRAFT EDUCATION 2024 LIVE WORKSHOPS', 'http://DepEdManila.quickconnect.to/d/s/wnr2nwxbUFh4O0xmm3tIy21T4dflouOY/dCV7PBwWqMs3nxMuUv7QUyldslz18a9Q-o7ZgS_8WDAs', '1', '2024-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(3639, 'ICT-DM783-2023', 'WINNERS IN THE 2023 DIVISION FILIPINO VALUES MONTH CONTEST', ' http://depedmanila.net:5000/d/s/wmv0YZROEOBZuPHrUCxyIBfkOIFI6p3j/OTx6HyJkdvX7DP0Amqu8iYDOhZGDf9n3-kblgpypdCws', '783', '2024-01-10', 'NUMBERED MEMORANDUM', 'active'),
(3640, 'ICT-DM004', 'LIQUOR BAN FROM 08-10 JANUARY 2024 FOR THE PEACEFUL CONDUCT OF THE FEAST OF BLACK NAZARENE', ' http://depedmanila.net:5000/d/s/wmzBZxt9QLSjkpLZtfhDiCEmlZZWuyqE/mdjeFcdNaThgT0Pbd_ZyrEXHGO0_f7hI-jLSgRqNqCws', '4', '2024-01-10', 'NUMBERED MEMORANDUM', 'active'),
(3641, 'ICT-DM005', ' BAN ON THE MANUFACTURE, SALE, DISTRIBUTION OR USE OF FIRECRACKERS AND PYROTECHNIC DEVICES FROM JANUARY 8-9,2024 WITHIN THE CITY OF MANILA', ' http://depedmanila.net:5000/d/s/wn0G5ty1Qip945RfjtBxWgJt468ou3jE/TilJv-j5l5_TqWwJl7iQm7wRpwthILxq-oreAXRRuCws', '5', '2024-01-10', 'NUMBERED MEMORANDUM', 'active'),
(3642, '2024-1-2-8081', 'MICROSOFT YOUTH AMBASSADORS (MYA) 2.0 PROGRAM GRADUATION CEREMONY', 'http://DepEdManila.quickconnect.to/d/s/wnv1R4V2khQ5Z2oRC4wDGuqeg9opU8Ok/zbO0IscHojVLW0H8prQAHdmjuKjemg9K-Db9AZbojDAs', '2', '2024-01-11', 'UNNUMBERED MEMORANDUM', 'active'),
(3643, 'ICT-DM004', 'IMPLEMENTATION OF CATCH-UP FRIDAYS AS INTEGRAL COMPONENT OF NATIONAL LEARNING RECOVERY PROGRAM (NLRP)', 'http://DepEdManila.quickconnect.to/d/s/wnu7LmUs9oU5J2cT81LactGYWAJ0zcuT/UNvYn27Ge89Sa1Qgz33FcRzKF4QTKOSJ-B77gp_ohDAs', '4', '2024-01-11', 'NUMBERED MEMORANDUM', 'active'),
(3644, 'ICT-DA006', 'DLSMHSI ROBOSPORTS TOURNAMENT 2024', ' http://DepEdManila.quickconnect.to/d/s/wnuplYFgMXlNsy98nNVX40rgSVX9LoQh/sfM-vMHnmX19jWR4mVPoMrPm_aVwH_2m-uL5gIywjDAs', '6', '2024-01-11', 'DIVISION ADVISORIES', 'active'),
(3645, 'ICT-DM005', 'DESIGNATION OF PSDS AS OFFICER IN-CHARGE OF DISTRICT GSP DUTIES AND SCHOOL ASSIGNMENT', ' http://depedmanila.net:5000/d/s/woitqWO40AwobZPwg67InNxXlA0J63hm/y0kjs-_vodAdxlk4tHuY7PJc4eZQl5bH-qLRAK6vDDAs', '5', '2024-01-12', 'NUMBERED MEMORANDUM', 'active'),
(3646, 'ICT-DM006', 'ONLINE SUBMISSION OF NON-BASIC EDUCATION RESEARCH FUND (NON-BERF) AND ADOPTION OF ONLINE PLAGIARISM CHECKER', ' http://depedmanila.net:5000/d/s/wolKvtVD8dco2Usgk5436tVj3tVmlIDP/GehOrx9HeRFcv0hZl2tbe-Yu4Xla4Pq4-NrWAN2PLDAs', '6', '2024-01-12', 'NUMBERED MEMORANDUM', 'active'),
(3647, '2023-12-10-6930', 'MANILA GIRL SCOUTING 101 ACTIVITY', ' http://depedmanila.net:5000/d/s/wqxVNdw90uCxkZaxMhVMVELwv10df3Yq/_0hXe8nfDQr1s8tbEwS1zajI2MsM0Oz6-a7GAk35_Dgs', '322', '2024-01-15', 'DIVISION CIRCULARS', 'active'),
(3648, 'ICT-UM003', 'CORRIGENDUM TO DIVISION MEMORANDUM NO. 413, s. 2023 (DELINATION OF AUTHORITIES OF SDO OFFICIALS)', ' http://depedmanila.net:5000/d/s/wskiu91wO5hLYOZYtjnepYete6gvLYAm/FEVJnHOXeRkCfNMiTyXm-9siMoV2vd_V-c7eAxMDjDws', '3', '2024-01-17', 'UNNUMBERED MEMORANDUM', 'active'),
(3649, '2024-1-5-8441', 'TECHNICAL ASSISTANCE, SUBMISSION OF LEARNING & DEVELOPMENT PLANTS, AND MONITORING OF SCHOOLS\' PREPARATION FOR THE 2ND QUARTER EXAMINATION AND MID-YEAR INSET', ' http://depedmanila.net:5000/d/s/wspqX4WaDRKdIfo2ONv3JbGE6owkiMa7/Yvj5zGEc3lTg8vJ0M2ZSpXZIyQv6-HqQ-w7SAemH0Dws', '7', '2024-01-17', 'NUMBERED MEMORANDUM', 'active'),
(3650, '2024-1-11-8720', 'STRICT COMPLIACE WITH DEPED SCHOOL CALENDAR D.O. 22, s. 2023 ON 2ND QUARTERLY EXAMINATION DATES', ' http://depedmanila.net:5000/d/s/wtSLD4nZqqaYFrenPjx6y35zPdaR8bC8/Lx9UTncjh4VmTVncWw_XiSlyDs7tWpIM-1rhA7I1vEAs', '8', '2024-01-18', 'NUMBERED MEMORANDUM', 'active'),
(3651, '2024-1-15-8937', 'DISTRICT AND DIVISION PALARO 2024', ' http://depedmanila.net:5000/d/s/wtSWokKHquK6Gp60l7fpKkXhE6mFvS3X/FHZcIjT3Q4y9oHFhcAZ0z-UeT_GaLqxm-tLngdcdwEAs', '9', '2024-01-18', 'NUMBERED MEMORANDUM', 'active'),
(3652, '2024-1-16-8978', 'SECONDARY DIVISION SCHOOLS PRESS CONFERENCE PLANNING MEETING', ' http://depedmanila.net:5000/d/s/wtSyfVnhP9r4tyTeXKMutbtM59YmWb2n/oNnbOugeUTMYZuIVPawoWGeHFH6uBPmZ-Jrog4m5xEAs', '4', '2024-01-18', 'UNNUMBERED MEMORANDUM', 'active'),
(3653, '2023-12-4-6544', 'PERSONS WITH DIGITABILITIES INTERNATIONAL FILM FESTIVAL', ' http://depedmanila.net:5000/d/s/wtT9IBqEaMbR3GfUHW7OvnlIiPfDhz3k/as-F7DOekFWK3OMGA0M7lhPGzaQPMl3T-rrrADf1xEAs', '446', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3654, '2023-12-6-6793', 'ADVENT RECOLLECTION & CHRISTMAS PARTY', ' http://depedmanila.net:5000/d/s/wtTSZO1OkorCUUrUqmBdRN7TyaJ1fKrc/C0QdJc_mk29FzhWmyaj-89U6r5GwV6cK-eLsgJhZzEAs', '447', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3655, '2023-12-6-6794', 'NOMINATION FOR THE SECOND GAWAD EDUKAMPYON AWARDS FOR LOCAL GOVERNANCE', ' http://depedmanila.net:5000/d/s/wtTgKhDBa9X16XfLNRRX1ggJEelkki7U/PxawA55wlzpk8_pGCl5Drxlytuwn-3oS-zbsA97VzEAs', '448', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3656, '2023-12-6-6795', 'ADVISORY FOR THE POLICY REVIEW AND CONSULTATIVE PLANNING WORKSHOP', ' http://depedmanila.net:5000/d/s/wtTsYg1G1js5byGIuBM4Ay9OE2tPGca9/7Lrz9Q25ZSTP1iYTio8PMO2WVTwNptCE-GrzAsFZ0EAs', '449', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3657, 'ICT-UM005', 'PROGRAMS UPDATES AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/wtUESZTXa2JlhwXOtReTbvbdSeO2M7QO/7hDd0pnLFNxoW0DjTBmMTc-XL4CyBYks-m7yA4XF1EAs', '5', '2024-01-18', 'UNNUMBERED MEMORANDUM', 'active'),
(3658, '2023-12-19-7600', 'IMPLEMENTATION OF GALAW PILIPINAS', ' http://depedmanila.net:5000/d/s/wtUdKyTyD0e2VtRReoOBHDxZn6OaeoOg/kURWDoa8XsyTr24AvtVqO1-yvWygVkfj-RL1gCLp2EAs', '784', '2024-01-18', 'NUMBERED MEMORANDUM', 'active'),
(3659, '2023-12-6-6796', 'POSTPONEMENT OF THE DISASTER RISK REDUCTION AND MANAGEMENT SERVICE SCHEDULE ACTIVITIES', ' http://depedmanila.net:5000/d/s/wtVYp0vZPHatyjPbaRLeaKIa07DGNrtd/O3hx2KZZ-tMdwncvNtj-417f4JHBRfCc-q77AIcJ5EAs', '450', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3660, '2023-12-6-6797', 'THE BOSCONIAN QUIL 2024 DON BOSCO EDUCATIONAL CENTERS 1ST NCR WIDE JOURNALISM PRESS CONFERENCE', ' http://depedmanila.net:5000/d/s/wtVpvBrb1Sb8QNNEaju1ryJJp7kCd2a0/DzGupkhuYF-JZwwd4Bqgt-EkBfYUtK2j-Ur-g09V6EAs', '451', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3661, '2023-12-6-6798', 'RESCHEDULING OF THE PMT QUARTER 4 LEARNING ENGAGEMENT', ' http://depedmanila.net:5000/d/s/wtXjmzFiID4WS1gmSLPZkD7P6l2uwGaG/DWe-CwNBwahoFLo22OxDF6XUWxedrvLm-ULnA4q-AEAs', '452', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3662, '2023-12-13-7246', 'TEACHERS LEADERS CAMP', ' http://depedmanila.net:5000/d/s/wtXv9udFuDSfslGMSVB6jh4DgehQqNVB/YSQpW-_C0qpRHAeEwx5u5EBS9GMTVrUd-37kArkeBEAs', '453', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3663, '2023-12-13-7247', 'ESTADISTIKA 2024', ' http://depedmanila.net:5000/d/s/wtY3kVnFZHMSuRXGYehO8R0nWyhpfK2F/CtFxGVdLFP0hpGj75z5SdAHWWeAKDIEr-TLqAnK2BEAs', '454', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3664, '2023-12-14-7331', 'CURRICULUM LEADERSHIP PROGRAM', ' http://depedmanila.net:5000/d/s/wtYBHhyYZd6MWzEctLBcBLF3PSRz5aZa/euBmrTiGJKZeDGcbM1h0ha_SfFgXEMxI-rbqgehSCEAs', '455', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3665, '2023-12-15-7416', '2023 FREE ALOYSIAN PUBLISHED EDUCATORS, RESEARCHERS, AND MEMBERS CONCLAVE AND GURO ICON AWARDS', ' http://depedmanila.net:5000/d/s/wtYK4Q4MqNgYXt71a5KzGBAcXkYQQz8q/MW9g1lrXSaGXdlcMipkNN0SESpCS9YlZ-QLsArrOCEAs', '456', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3666, '2023-12-28-7986', 'CAPACITY BUILDING OF TRAINERS ON UPSKILLING ENGLISH TEACHERS IN LANGUAGE INSTRUCTION (VISAYAS AND MINDANAO CLUSTER)', ' http://depedmanila.net:5000/d/s/wtYbh7mNdkGYJrQvlbVkxttyo89jnblW/FDbO_USBq91MJkBV8V5S0zFeGVSeBNtl-9ruge42DEAs', '457', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3667, '2024-1-10-8584', 'RESCHEDULING OF THE MANAGEMENT REVIEW MEETING', ' http://depedmanila.net:5000/d/s/wtYqUt35eMUa0kOMLJm3ANoVokdFbjDm/Lo30giwhrFBFWte8yZdx8kmoEPirDD5r-jbyANjuEEAs', '7', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3668, 'ICT-DM010', 'FILING OF SWORN STATEMENT OF ASSETS, LIABILITIES AND NET WORTH AND DISCLOSURES OF BUSINESS INTERESTS AND FINANCIAL CONNECTIONS AND', 'http://depedmanila.net:5000/d/s/wuKWuCYZgbrdY5tzyW3lSq3HafVE5DvU/E0_YH89w9RcwT8xCaO4dg9VXSjAaYFhV-nbggWOkcEQs', '10', '2024-01-18', 'NUMBERED MEMORANDUM', 'active'),
(3669, '2023-12-29-8067', 'MASS INDUCTION OF Y-SPED CLUB OFFICERS AND MEMBERS', ' http://depedmanila.net:5000/d/s/wtcGiXC5wEee8pMKztPpEkKV2p83N9VZ/C-yS6ziZr4cs6LxycwH4jbkuGrtlXncM-hrUgQDyPEAs', '458', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3670, '2023-12-13-7256', 'THE BOSCONIAN QUILL 2024: DON BOSCO EDUCATIONAL CENTERS 1ST NCR-WIDE JOURNALISM PRESS CONFERENCE', ' http://depedmanila.net:5000/d/s/wtd3G4oIPyHCPXraKFMfkqxiEWdrtAVq/wtLNxArtf1aEuyfwh8epuwUT4yrfy-44-vbegHsSREAs', '459', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3671, '2024-1-16-8968', 'GLOBAL OLYMPIAD SEARCH (GDO)\'s SEARCH FOR SISFU SCHOLARS', ' http://depedmanila.net:5000/d/s/wte9eGcWmuBfJpuz309cKCrG9USMtVso/RM21CMG7ELBPSaVQfi2EVqdHFYF0wms4-jbqgukaVEAs', '8', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3672, '2024-1-16-8969', '115TH PHILIPPINE DENTAL ASSOCIATION ANNUAL CONVENTION AND SCIENTIFIC SESSIONS', ' http://depedmanila.net:5000/d/s/wteOm5sILOhjLasTMxI2SYlxEULvEBKy/1LhHvGVrU6I9K_hNCo-eiwYyyvkLaXUl-ObvAzA2WEAs', '9', '2024-01-18', 'DIVISION ADVISORIES', 'active'),
(3673, '2024-1-15-8929', 'BSP-MANILA COUNCIL 2024 (81ST) ANNUAL COUNCIL MEETING AND ELECTION OF REGULAR BOARD MEMBERS', ' http://depedmanila.net:5000/d/s/wuKt0iS9MlOKINwBZuhj6Az8oOqV5QPR/s4cM6lvwfRPxx3Jc31M6TYq6cn1q_i2A--bpg4yoeEQs', '10', '2024-01-19', 'DIVISION ADVISORIES', 'active'),
(3674, '2024-1-11-8730', 'GSP-MANILA COUNCIL 2024 EXECOM MEETING OF BOARD OFFICERS AND MEMBERS', ' http://depedmanila.net:5000/d/s/wuL9GQihcwhkkBwqcbgSUuTUfAm5YHcD/KEt3gTwam6DkCbuoP1rCwoCFY5YKyAA0-mr3AJw0fEQs', '11', '2024-01-19', 'DIVISION ADVISORIES', 'active'),
(3675, 'ICT-DM011', 'RECONSTITUTION OF THE BIDS AND AWARDS COMMITTEE (BAC), SECRETARIAT, TECHNICAL WORKING GROUP (TWG), INSPECTION AND ACCEPTANCE COMMITTEE FOR FISCAL YEAR 2024', ' http://depedmanila.net:5000/d/s/wuMeacmrmBj4K5tZqJqm5WzeJLo1TIS7/rOf8YwCFh0Yon6kHQOTgx1sMMyEZ8xXd-D7fgjuQjEQs', '11', '2024-01-19', 'NUMBERED MEMORANDUM', 'active'),
(3676, '2024-1-19-9257', '2024 IN-SERVICE TRAINING FOR TEACHERS (INSET) FOR THE SCHOOL YEAR 2023-2024', ' http://depedmanila.net:5000/d/s/wwl8p5oMha77uxWIZOdsJLjkR62yC8g3/DFrnglj3nG8ktZ5WbBoPUiY54CwGHI0L-7rdgOV__Egs', '12', '2024-01-22', 'NUMBERED MEMORANDUM', 'active'),
(3677, '2024-1-3-8131', 'REPORTING PROCEDURE', ' http://depedmanila.net:5000/d/s/wwlFvX9rZtWQCDRzpKRjkeAtasbEXBMm/ELlP6nNIZC9wuL-M1r6Oz6aygeUHbTwG-oLjgD8T_Egs', '13', '2024-01-22', 'NUMBERED MEMORANDUM', 'active'),
(3678, '2024-1-18-9149', 'LINK CENTER\'S ONLINE TEACHER ENHANCEMENT PROGRAM (OTEP) 2024', ' http://depedmanila.net:5000/d/s/wwlQN2jwxXu6VFEe9s7EizJRTdF3wZgg/MnYtNz_7VodJASq6_60MdeeLd7dteNtL-Vrkgi0QAEws', '12', '2024-01-22', 'DIVISION ADVISORIES', 'active'),
(3679, '2024-1-11-8690', 'INVESTING IN SKILLS DEVELOPMENT: SHAPING THE FUTURE WITH THE POWER OF SKILLS', ' http://depedmanila.net:5000/d/s/wwlZkw0CZghbMB9USm6QHyxwMn30gVhA/VTokRiRRjAix6ayGIytd9MIdUv1Mk6IJ-KLpAUsYAEws', '13', '2024-01-22', 'DIVISION ADVISORIES', 'active'),
(3680, '2024-1-19-9199', 'CONSULTATIVE MEETING ON PROGRAM TO INSTITUTIONALIZE MERITOCRACY IN HUMAN RESOURCE', ' http://depedmanila.net:5000/d/s/wwr7de4do50esZDpQ9X3hzm0DhVLQg6A/GlBBmgnSll5xq9JqzKCoLWEtG-qRl7_M-ybhge5MSEws', '6', '2024-01-22', 'UNNUMBERED MEMORANDUM', 'active'),
(3681, '2024-1-22-9322', 'PREPARATION FOR THE DSWD\'s TARA, BASA! TUTORING PROGRAM YEAR 2 IMPLEMENTATION', ' http://depedmanila.net:5000/d/s/wxaLg3EaEQoqIug8zSKwMliIZOnWbn1X/ggiZQXQlEF9XWL8SxHfvQcF9oO6WmPqC-5r5AJGWjEws', '14', '2024-01-23', 'NUMBERED MEMORANDUM', 'active'),
(3682, '2024-1-12-8823', 'RED CROSS YOUTH ADVISERS AND COORDINATORS MEETING', 'http://depedmanila.net:5000/d/s/x2es8M9vldVOYv34pGmYBnmT67Ny3vAy/cZyFtkAHfTKeK7jji3aVuxNLIL0ldsF1-F7TAGbCSFws', '14', '2024-01-23', 'DIVISION ADVISORIES', 'active'),
(3683, 'ICT-DA015', 'ANNUAL RED TRIANGLE CLUB JOINT LEADERSHIP CAMP', ' http://depedmanila.net:5000/d/s/wxeYvlaGsatfxWkoTxAflveSKDUSsYuy/5NgW3C9uE3dOmwU7fSFEyVK6h9jUGiZe--ruAluawEws', '15', '2024-01-23', 'DIVISION ADVISORIES', 'active'),
(3684, 'ICT-DA016', 'Y-BUDS/ASSOCIATES COMMITTEE ACTIVITIES FOR S.Y. 2023-2024', ' http://depedmanila.net:5000/d/s/wxelXsRCQTu4g1WMDVl9tbPQsg8m0dg1/qQm8D0WHarAlAkXSXCNdtvVpoKh2-19---rxAE4yxEws', '16', '2024-01-23', 'DIVISION ADVISORIES', 'active'),
(3685, 'ICT-DA017', 'ADAMSON UNIVERSITY - BASIC EDUCATION DAPARTMENT', ' http://depedmanila.net:5000/d/s/wxgqEzIjwU5rw4zkr7PkiWrPRftnm08J/3fmRZ3XNgUQ1cm1J1TgM1MQAfCKT3Qr2-hrhgHyS4Ews', '17', '2024-01-23', 'DIVISION ADVISORIES', 'active'),
(3686, 'ICT-DA018', 'INVITATION TO SENIOR HIGH NETWORKS FORUM LAUNCH \"TEACHERS AND STUDENTS FOR TRANSFORMATIVES SHS\"', 'http://depedmanila.net:5000/d/s/x4JPAnuNqOJntXhwmKQfHCdMrvPWpw5k/5YV2kdXmHi2JTxeY1C1rOryHNGs7xAhO-7rigDBnbGAs', '18', '2024-01-23', 'DIVISION ADVISORIES', 'active'),
(3687, 'ICT-DA004', 'BASIC LEADERSHIP TRAINING FOR Y-TEENS ASSOCIATES CLUB OFFICERS', ' http://depedmanila.net:5000/d/s/wmtGYwQquvJPE4t0rPmLoUkDIVQ3nncI/Qsy8J5z7N9GauqXaSbYYCmkmsEKu4FDq-w7OAn4xXCws', '4', '2024-01-10', 'DIVISION ADVISORIES', 'active'),
(3688, 'ICT-DA005', 'INVITATION TO SCHOOL HEADS, HEAD TEACHERS FOR THE YMCA ELEMENTARY AND SECONDARY WORK COMMITTEE MEMBERSHIPS', ' http://depedmanila.net:5000/d/s/wmt6OrcTIFIO7EltomslgroTZfy8yxUR/sZe97Dn7Bryz2EYMopgR-YSbhnMT_0gU-JbMAxxdXCws', '5', '2024-01-10', 'DIVISION ADVISORIES', 'active'),
(3689, 'ICT-DM015', 'LAUNCHING OF THE BAGONG PILIPINAS CAMPAIGN AS THE ADMINISTRATION\'S BRAND OF GOVERNANCE AND LEADERSHIP', ' http://depedmanila.net:5000/d/s/wyRHDgirjVX3WpJdlRgH4GhKl2hsGLFp/k5ovIxds4n7TDsbhJHVVPN6KgFzFQYbS-Vb1gNO9MFAs', '15', '2024-01-24', 'NUMBERED MEMORANDUM', 'active'),
(3690, 'ICT-DM016', 'NATIONAL DENTAL HEALTH MONTH (February 1-29, 2024)', ' http://depedmanila.net:5000/d/s/wyRZsT5tSDJQERSf1Z1r05xkDoNO5Xyx/1O3wL9hUVMgTQesl6S2LNzoYqUAHPj5u--70gGu5NFAs', '16', '2024-01-24', 'NUMBERED MEMORANDUM', 'active'),
(3691, 'ICT-DM017', 'CONDUCT OF SCHOOL-BASED IMMUNIZATION OF HPV VACCINE TO GRADE IV FEMALE LEARNERS (9-14 YEARS OLD)', ' http://depedmanila.net:5000/d/s/wyRlZ6JmSRUdPiMvGRdx5MwINJQli0rV/BjcORcGPAwFb3HIT9Rr4SRtJ_pKVFHmA-eb5AeohOFAs', '17', '2024-01-24', 'NUMBERED MEMORANDUM', 'active'),
(3693, '2023-12-29-8047', 'NATIONAL SEARCH FOR SUSTAINABLE AND ECO-FRIENDLY SCHOOLS (NSSEFS)', ' http://depedmanila.net:5000/d/s/wySiD5nErCIGVDZaZUzcQiUkDjyAA3ib/-Oo0T80izckW9AhnRadf4QpG93Tznlr8-YrCguXxRFAs', '460', '2024-01-24', 'DIVISION ADVISORIES', 'active'),
(3694, 'ICT-DA019', '3RD WORLD CONFERENCE ON EDUCATION, LAW, AND TECHNOLOGY (WCELT) AND 2ND IOER INTERNATIONAL LUMINARE AWARDS', ' http://depedmanila.net:5000/d/s/wyh7ioYPby71BzFdjmkTIRGeGxiqsyUG/mXA2WMKksjznnvvocM9h1siO96eRw0ep-g7eADbV_FAs', '19', '2024-01-24', 'DIVISION ADVISORIES', 'active'),
(3695, '2024-1-19-9196', '13TH ATENEO CHEMISTRY OLYMPIAD (AchO)', ' http://depedmanila.net:5000/d/s/wyhMKL5KvQzk4D1cXLHTJaeWGxROWa6H/0olzx0mIxLAg7yslrnvqbCIHEKWzk_EG-87cAv2WAFAs', '20', '2024-01-24', 'DIVISION ADVISORIES', 'active'),
(3696, '2024-1-19-9241', '23RD MODEL UNITED NATIONS ASSEMBLY - MUNA PHILIPPINES', ' http://depedmanila.net:5000/d/s/wyhb3zb3gFgp2b6ZxYuOHIRQ5vn4W59O/DaQMfsEqWqjsgdd5N9bMBNI8sdAwbYa--ZriAhyeBFAs', '21', '2024-01-24', 'DIVISION ADVISORIES', 'active'),
(3697, 'ICT-DM019', 'DELINEATION OF AUTHORITIES FOR THE TWO OFFICES OF THE ASSISTANT SCHOOLS DIVISION SUPERINTENDENT (ASDS)', ' http://depedmanila.net:5000/d/s/wyiLKUHCs3qghH1aaKo3DQH5XPNpxTc8/m4i3PxFdyvNSZFgliOp-cvvy6su6QjOZ-g7rA0pKDFAs', '19', '2024-01-24', 'NUMBERED MEMORANDUM', 'active'),
(3698, 'ICT-DM020', 'ADDITIONAL SCHOOL ASSIGNMENTS OF PUBLIC SCHOOLS DISTRICT SUPERVISORS', ' http://depedmanila.net:5000/d/s/wzHU4C5POEPkTkKMRkkc2L5N5VZuaZQJ/vWdnemg-FPc12u3-IuDLlT9relqCvYqm-crRgmx70FAs', '20', '2024-01-25', 'NUMBERED MEMORANDUM', 'active'),
(3699, '2024-1-17-9080', 'JRU INTERSCHOOL COMPETITION', ' http://depedmanila.net:5000/d/s/wzI3R81BDkypnqizCALZZU2eiuQXz3o9/F5KXg72RG4nKMdY13rQbc2hdKwo30436-bbXgZef1FAs', '22', '2024-01-25', 'DIVISION ADVISORIES', 'active'),
(3700, '2024-1-16-8965', 'REMINDER TO REFRAIN FROM REQUIRING UNNECESSARY TASKS FROM TEACHERS', ' http://depedmanila.net:5000/d/s/wzPp4QES6LrAsjCOX7XcCjoM58oImDOQ/6OgwYGIDvKsna0f3lxE_aAmpPV79gh3o-FrpALtoOFQs', '21', '2024-01-25', 'NUMBERED MEMORANDUM', 'active'),
(3701, '2024-1-18-9140', 'CAPACITY BUILDING PROGRAM FOR GUIDANCE COUNCELORS', ' http://depedmanila.net:5000/d/s/wzPyD3842XBjpqIJgMnz6kpYfO7ncc0r/0i1zmar6HjHWwvrh3DFFdzEpggFpObL7-pLqAK0QPFQs', '22', '2024-01-25', 'NUMBERED MEMORANDUM', 'active'),
(3702, '2024-1-19-9211', 'REQUEST TO USE DEPED MANILA\'S SCHOOL FACILITIES AS VENUES FOR THE ADMINISTRATION OF THE LICENSURE EXAMINATION FOR PROFESSIONAL TEACHERS', ' http://depedmanila.net:5000/d/s/wzQ5KEAyqeSgPgGuP7tu8Qv8xmfNb8hH/9DnBvOE6bzW1S7zoP43bplVFps1pnZRd-W7ugV74PFQs', '1', '2024-01-25', 'DIVISION CIRCULARS', 'active'),
(3703, 'ICT-DM023', 'UPDATED COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NATIONAL-PAID PERSONNEL', 'http://depedmanila.net:5000/d/s/wzRMmsA6dZfMEDQOKCtf8OBCPBVG6vzc/4HgsHMKdlYO8Pq5yNouJ3G0Vp9NLiSJ6-77_g7MwTFQs', '23', '2024-01-25', 'NUMBERED MEMORANDUM', 'active'),
(3704, 'ICT-DA023', '2024-2025 FULBRIGHT DISTINGUISHED AWARDS IN TEACHING PROGRAM FOR INTERNATIONAL TEACHERS (FULBRIGHT DAI) COMPETITION', ' http://depedmanila.net:5000/d/s/x08IqYuBXWRqliPzaIG6vpVUrgnJV8sG/nWsZCN-xTCKNTTVLTQXZQaiPEhEEKmfA-HboggG6dFQs', '23', '2024-01-26', 'DIVISION ADVISORIES', 'active'),
(3705, 'ICT-DA024', 'ADMINISTRATION OF THE 2023 REGULAR PHILIPPINE EDUCATIONAL PLACEMENT TEST (PEPT)', ' http://depedmanila.net:5000/d/s/x08YmWLbSXKi2BOn1WhpK1vain8eAbAb/moJdKXqXhjrB0mOYVbTxMnpsT2-C6h0r-mLsgax2eFQs', '24', '2024-01-26', 'DIVISION ADVISORIES', 'active'),
(3706, 'ICT-DA025', 'INTERNATIONAL STEM OLYMPIAD', ' http://depedmanila.net:5000/d/s/x0IlPuFiVvdsLUCljnoyfx7lYs23AZMq/e2weSAYLttQjeJweExbtgy4_QnCtG6pN-O7rg-MC-FQs', '25', '2024-01-26', 'DIVISION ADVISORIES', 'active'),
(3707, '2024-1-22-9349', 'DIVISION PALARO 2024', ' http://depedmanila.net:5000/d/s/x0KMD8BYeZLCwnC4CiWjbU7104qoNXP8/MmUnWstcOVBsg1SoC282Pk0wlQ0zdYo3-f7GgrNfDFQs', '24', '2024-01-26', 'NUMBERED MEMORANDUM', 'active'),
(3708, '2024-1-22-9339', 'COMMISSION ON AUDIT TRAINING NEEDS A SURVEY FOR AGENCY PERSONNEL FOR PRIORITIZATION OF COURSE OFFERINGS FOR CALENDAR YEAR (CY) 2024', ' http://depedmanila.net:5000/d/s/x0MKtXA84J5SAepY1KGibrAlv3vcmOOm/Xe41EbzM3pYh2fnUEJq6iGDCuJ8fhsdY-i7og1FjKFQs', '26', '2024-01-26', 'DIVISION ADVISORIES', 'active'),
(3709, 'ICT-DM025', 'DESIGNATION OF DIVISION PUBLIC ASSISTANCE COORDINATOR', ' http://depedmanila.net:5000/d/s/x0NnGs0XUEgO4ayUYZoLE182810F5Y0f/NGO9T-vbJhuJ5ZOmvdiomCBYJk7dLhI5-GrOAGuHOFQs', '25', '2024-01-26', 'NUMBERED MEMORANDUM', 'active'),
(3710, 'ICT-DM026', 'PRELIMINARY AUDIT OF MANILA PUBLIC SCHOOLS\' ELECTRICITY AND WATER CONSUMPTION', ' http://depedmanila.net:5000/d/s/x0Os0h9aYIFLZqujghKpMVEnCeH1vDUc/ojmUgexm9rjQyY9MBTMHiEXcqCrGE1zO-5bUA-FbSFQs', '26', '2024-01-26', 'NUMBERED MEMORANDUM', 'active'),
(3711, 'ICT-DM027', 'PROPER ADMINISTRATION AND UTILIZATION OF THE QUALITY-ASSURED & CONTEXTUALIZED ULAT NG PAG-UNLAD SA KINDERGARTEN', ' http://depedmanila.net:5000/d/s/x0P6vBpRKctLA2nfUFPifELTmouYg42b/DVVSrrQKsi9mgxmBhA_N8wB8hwSsQvFp-jrbAqSbTFQs', '27', '2024-01-26', 'NUMBERED MEMORANDUM', 'active'),
(3712, '2024-1-23-9379', 'DepED MANILA-PACT DIVISION TRAINING FOR TEACHERS', ' http://depedmanila.net:5000/d/s/x2fLVgTFTp2LOOaRh1dJJ0FNpZFhBKvD/0OoqN8wVNcQjVIqXU-OP2Wry_DT3nDuS-NbbAE0WUFws', '28', '2024-01-29', 'NUMBERED MEMORANDUM', 'active'),
(3713, '2024-1-26-9517', 'CONDUCT OF EARLY REGISTRATION FOR SCHOOL YEAR 2024 - 2025', ' http://depedmanila.net:5000/d/s/x2fS2UjWY8yfkT4u3MXWPtT7JNXbUQnF/cHRaD93VeZ3yZLrhePdyJXtmNZj-RtSn-pLbAI5yUFws', '29', '2024-01-29', 'NUMBERED MEMORANDUM', 'active'),
(3714, '2024-1-18-9160', 'Y-KIDS FAMILY DAY CAMP', ' http://depedmanila.net:5000/d/s/x2faI12JMpIRIBGzlOHadTyL1w9HCDIR/byn1XbsGkdUsRqv2xlO-MpZ2XN_IOaNY-LLfgpACVFws', '27', '2024-01-29', 'DIVISION ADVISORIES', 'active'),
(3715, '2024-1-26-9536', 'COACHES AND OFFICIALS MEETING FOR DIVISION MEET', ' http://depedmanila.net:5000/d/s/x2flZPWPrWkqexhqJjQaZ3nADTGqTC7l/jT_FvL8WqWCtYkmkE9LDzFFpQo79nZXV-67dAipmVFws', '7', '2024-01-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3716, '2024-1-26-9569', 'NOTICE OF MEETING ON THE NEWLY UPGRADED ELECTRICAL SYSTEMS OF GEN. LICERIO GERONIMO ES AND OTHER RELATED CONCERNS', ' http://depedmanila.net:5000/d/s/x2fsSltw6tCIY7rYCJpPg0qKRi7G2xio/76JmZBJdpSxDdu58f0B4HJdbupMnxMr6-iLhAugWWFws', '8', '2024-01-29', 'UNNUMBERED MEMORANDUM', 'active'),
(3717, '2024-1-23-9355', 'RECONSTITUTION OF THE REGIONAL, DIVISION, AND SCHOOL LEVELS GENDER AND DEVELOPMENT (GAD) FOCAL POINT SYSTEM (GFPS)', ' http://depedmanila.net:5000/d/s/x3ORTeg4dSxiNPB4Hkl0eJd03eh2to98/oBeGFiulU0nOcPYwOylNEyFV9dXbDW8i-Ib3g88gkGAs', '30', '2024-01-30', 'NUMBERED MEMORANDUM', 'active'),
(3718, '2024-1-19-9221', '8TH MANILA RED CROSS YOUTH WIDE CAMP', ' http://depedmanila.net:5000/d/s/x3Orfd5bmWqtMytPtCKSI03dO8TnAVSh/Dxl0vD4XKjen_sQQFL1sSJP_potHg7Cu-z72AvwcmGAs', '28', '2024-01-30', 'DIVISION ADVISORIES', 'active'),
(3719, '2024-1-19-9200', 'Y-TEENS/ASSOCIATES COMMITTEE\'S ANNUAL ALAY SA PUSO OUTREACH PROJECT', ' http://depedmanila.net:5000/d/s/x3OzeTAu9eho85vML7BLUFDMOTujQ9Vo/Hh2BQ7NOlLIWKX1v5CeBDAc3eg8oAjf7-JL5gI4EmGAs', '29', '2024-01-30', 'DIVISION ADVISORIES', 'active'),
(3720, 'ICT-DM031', 'LAUNCH OF THE ONE-NCR STRONGER TOGETHER: 3-YEAR DEVELOPMENT PLAN', 'http://depedmanila.net:5000/d/s/x4Ikx5hVVNRpsO36g4oILnwxI9PLcY4V/LVoJOEEqnmZLlBUlEuu-Yzr0jE8sIUwV-R7agGAPZGAs', '31', '2024-01-30', 'NUMBERED MEMORANDUM', 'active'),
(3721, '2023-12-13-7264', 'APPLICATION OF THE LEARNER-CENTERED PEDAGOGIES IN BASIC EDUCATION LEARNERS BY THE PRE-SERVICE TEACHERS', ' http://depedmanila.net:5000/d/s/x3XLrWBVQZtK6CIlM6sBoARE05Bo7E1P/iZSYDw8TIj6ZPDpINOLUdssaK7vLEqo6-G7pA_nRBGAs', '2', '2024-01-30', 'DIVISION CIRCULARS', 'active'),
(3722, '2024-1-26-9514', 'FIRST LEADERSHIP SUMMIT FOR NCR SCHOOL HEADS', ' http://depedmanila.net:5000/d/s/x3XgwP5xKPwlrDlZ9H7DVmARiQohcBGT/0b0PyLzGYQoPNbKHrjQBCthdL22-P-Ml-JbtALlFCGAs', '30', '2024-01-30', 'DIVISION ADVISORIES', 'active'),
(3723, '2024-1-29-9571', 'BIBLICAL STAGE PLAY', ' http://depedmanila.net:5000/d/s/x3XqywgaqliRk51IOlxYtWyAB61CNW76/28c9Wps3BsGAXiOEUMTyqd_k_eeYMt3W-wbugps9CGAs', '31', '2024-01-30', 'DIVISION ADVISORIES', 'active'),
(3724, '2024-1-29-9572', 'SIHAY 2024', ' http://depedmanila.net:5000/d/s/x3Y59cQ8JZeiTQRqtPZ2fFw5uEDmSUbp/Zw6S1_KmCm4Sdx62N6F4XmWffFqooyhx-przgBItDGAs', '32', '2024-01-30', 'DIVISION ADVISORIES', 'active'),
(3725, '2024-1-16-8958', 'ADDENDUM TO DIVISION MEMORANDUM No. 178 s. 2023 DATED NOVEMBER 23, 2023 ON THE PARTICIPANTS TO THE BASIC INCIDENT COMMAND SYSTEM TRAINING COURSE (BICS)', ' http://depedmanila.net:5000/d/s/x57iyV9SRzhMFzIDjRTLWmHX9jQydD01/kNrf0lfS-gs6lvSQUzhggfrjNAkRrAFj-KL9gSm58GQs', '9', '2024-02-01', 'UNNUMBERED MEMORANDUM', 'active'),
(3726, 'ICT-DM032', 'GUIDELINES IN THE PREPARATION OF DISTRICT DIVISION MEET EXPENDITURES', ' http://depedmanila.net:5000/d/s/x58715VpuPqZqD1IHrOhuD3jVOuDslI0/rodjD0KxGFB0_c9Y27xMsfN_XSrSeyU7-jrDAuI59GQs', '32', '2024-02-01', 'NUMBERED MEMORANDUM', 'active'),
(3727, '2024-2-1-9831', 'PARTICIPANTS TO THE TRAINING OF TRAINERS ON THE MATATAG CURRICULUM', ' http://depedmanila.net:5000/d/s/x5tvVIV8sqfoJivU4Z4BiDR1sdQFJXTZ/XnxeLbtQVt4WYd91wkVyEoa5ANI9_2fa-jbxAnbMWGgs', '33', '2024-02-02', 'NUMBERED MEMORANDUM', 'active'),
(3728, '2024-1-31-9732', 'CoM-PMIS COLLABORATIVE MASTERY FOR PROGRAM MANAGEMENT INFORMATION SYSTEM - MEET FOR AWARENESS INITIATIVE', ' http://depedmanila.net:5000/d/s/x5u2aU4Y6U6N3RepzZUN6jKTU0M7rzdW/-7crTHjf54MPL_1kQCNsV2T4p-ZTmSHW-CL0g3iMXGgs', '10', '2024-02-02', 'UNNUMBERED MEMORANDUM', 'active'),
(3729, '2024-1-31-9762', 'PALARONG MAYNILA 2024', ' http://depedmanila.net:5000/d/s/x5uH3FAQuXKp2PyDZeMEgAXxNakmI4ax/S4kOVcoswTR2VDgCTlCcw05v_bwKqrXS-vb2gLckXGgs', '34', '2024-02-02', 'NUMBERED MEMORANDUM', 'active'),
(3730, '2024-1-17-9102', 'POWER PROJECT OPTIMIZATION WITH ENHANCED RESOURCE', ' http://depedmanila.net:5000/d/s/x6B1incswLVvtfCaEdZUpV6KMozMErQi/8c0HgqfINwOmfkFtxNPtWJ5y1_UMCRbq-Q7rAsHtNGgs', '35', '2024-02-02', 'NUMBERED MEMORANDUM', 'active'),
(3731, '2024-1-31-9753', 'TECHNICAL WORKING GROUP FOR THE LAUNCH OF DEPED NCRS THREE-YEAR DEVELOPMENT PLAN', ' http://depedmanila.net:5000/d/s/x6B7E3jDTXMrGS0VRVZpuqzK093PUzxh/BFj5ey4SI6hffg8qu62Rvs13E8p2RyHO-0LrAu8hNGgs', '36', '2024-02-02', 'NUMBERED MEMORANDUM', 'active'),
(3732, '2024-1-31-9685', 'INVITATION TO ESTADISTIKA 2024', ' http://depedmanila.net:5000/d/s/x6BGXrMsMlfBNc6a0ANRlVZuVLOoKa5m/ovS0NqhznkG_XpDDc3e9Xj0i38G_XFIw-p7tAqFdOGgs', '33', '2024-02-02', 'DIVISION ADVISORIES', 'active'),
(3733, '2024-1-31-9688', '27TH YOUTH MATHEMATICS, SCIENCE AND TECHNOLOGY (YMSAT) FESTIVAL', ' http://depedmanila.net:5000/d/s/x6BRBzX3Mot5vuGMXrS1uIhv3pkCFQ4x/3U9UUb01hqYQGjgShN8oUr9rAEi_qlEj-Y7xgv81OGgs', '34', '2024-02-02', 'DIVISION ADVISORIES', 'active'),
(3734, '2024-1-26-9518', 'COMPLIACE VERIFICATION SCHEDULES FOR THE 6TH PERIOD', ' http://depedmanila.net:5000/d/s/x8OvzDF3r91CsBR83HMO2u6aSvqWRrYZ/jbkQMX-BuHF3qqApcQuLPhiaGLt4Y3pk-Ubvgen0QHAs', '37', '2024-02-05', 'NUMBERED MEMORANDUM', 'active'),
(3735, 'ICT-DA036', 'THE NAZARENE CATHOLIC SCHOOLS ADVOCACY AND MARKETING PROGRAM', ' http://depedmanila.net:5000/d/s/x8S1yx4yC79wRLEyclQZU6GAh3gG9hvd/NxpZWlNM197LlS4JUZKMxeJgb_OdWcCS-n7xAoEARHAs', '36', '2024-02-05', 'DIVISION ADVISORIES', 'active'),
(3737, '2024-1-31-9701', 'SUBMISSION OF SCHOOLS CATCH-UP FRIDAYS ACTION PLAN', ' http://depedmanila.net:5000/d/s/x8SAvWjYEUEoknZtq0CRkttRreWkmBgz/1sp1APsl7UQvkt1pwH8irp6F1p6J8XEJ-M73gXo0RHAs', '38', '2024-02-05', 'NUMBERED MEMORANDUM', 'active'),
(3738, '2024-2-2-9854', 'TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARD THE ACHIEVEMENT OF THE MATATAG AGENDA AND PROFESSIONAL EXCELLENCE', ' http://depedmanila.net:5000/d/s/x8SK79Pcp5s1VXAQSajPzpOUeAJ3Bzkz/I7OyIsY14ed4-_XhIphvlf1y0vWIDp1J-OL7gjx4SHAs', '39', '2024-02-05', 'NUMBERED MEMORANDUM', 'active'),
(3739, '2024-1-24-9440', '6TH INTER-SENIOR HIGH SCHOOL GENERAL BUSINESS QUIZ BEE OF TECHNOLOGICAL INSTITUTE OF THE PHILIPPINES (TIP) COLLEGE OF BUSINESS EDUCATION', ' http://depedmanila.net:5000/d/s/x8SSDTjsTO7A9y3dkkMcWTtKrQiEtFVl/UPCBRIQ4myfUl6VV5h6lufEn7g7X_L3z-F79AlIQSHAs', '35', '2024-02-05', 'DIVISION ADVISORIES', 'active'),
(3740, 'ICT-DM040', 'CONDUCT OF LECTURES ON \"RESPONSABLE AKO HUWAG MAGING BIBA (BATANG INA, BATANG AMA)\"', ' http://depedmanila.net:5000/d/s/x8WAgDhQfnYYx8cFkz2OHbgH1a0L4iIa/iuB30Y1LJjxW-8lsDtJ-sPE-wF6jE7ly-eLCg9WgeHAs', '40', '2024-02-05', 'NUMBERED MEMORANDUM', 'active'),
(3741, 'OM-ICT002', 'CONFERMENT OF MATURITY LEVEL 2 UNDER THE PROGRAM TO INSTITUTIONALIZE MERITOCRACY AND EXCELLENCE IN HUMAN RESOURCE MANAGEMENT (PRIME-HRM)', ' http://depedmanila.net:5000/d/s/x8a7DrSNCn4T6jk1iJWbpEKg8h93ZYXJ/hYPmwOE01-II3PMS6qwRLn31gPevAySo-Tr9gSRYrHAs', '2', '2024-02-05', 'OFFICE ORDER', 'active'),
(3742, 'ICT-DM041', 'REASSIGNMENT OF ELEMENTARY SCHOOL PRINCIPALS', ' http://depedmanila.net:5000/d/s/x8fB2t0jVZ2NbW0iiptptXQt6A3wrWPP/jCVDPyQRbco9FZAAP8PUncv2i5ftajyn-6L4AzjA7HAs', '41', '2024-02-05', 'NUMBERED MEMORANDUM', 'active'),
(3743, '2024-1-5-8471', 'JAPAN INFORMATION AND CULTURE CENTER TEACHER TRAINING', ' http://depedmanila.net:5000/d/s/x9ECJmHjxAOKcUg7bfnmUw8EzX6ymwsv/UwzRgGZUccwzRut-UL2HCy2KVY9B6KeU-SLDg31qrHAs', '37', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3744, '2024-1-12-8822', 'CONDUCT OF ACTIVITIES FOR THE DEVELOPMENT OF SPECIALIZED TRAINING PROGRAMS FOR THE NATIONAL QUALIFYING EXAMINATION FOR SCHOOL HEADS (NQESH) CATEGORY B AND C DM-OUHRD-2023-1103', ' http://depedmanila.net:5000/d/s/x9ENp7FD5BdU6RyJ7b4kSxX3X4OIHn7y/TPZ-pW8z_AGYIIEf0_8XQIm69OG4a1Bm-BbJgPSatHAs', '38', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3745, '2024-2-5-9935', 'NOTICE OF MEETING ON THE ILRC', ' http://depedmanila.net:5000/d/s/x9Erw0k6NV9SaaCs2aGyP12ZyD6Shmjk/YVocNCDpbNp1sTg467yjzGXnFPNi4U44-drJAqYCtHAs', '11', '2024-02-06', 'UNNUMBERED MEMORANDUM', 'active'),
(3746, '2024-1-31-9689', 'INTEGRATED PLANNING COURSE FOR INCIDENT COMMAND SYSTEM', ' http://depedmanila.net:5000/d/s/x9H82f49ceJEdeaAWr2BVBx2CBodryTp/1E9esctHhQgZpQFWwVIg0bC7fPO22ck1-WLuAEMG0HAs', '39', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3747, '2024-2-1-9775', 'SCOPING STUDY ON ENGLISH AS A SUBJECT IN THE PHILIPPINES OF BRITISH COUNSIL', ' http://depedmanila.net:5000/d/s/x9HK3GAitkBUbpQA4uhJ8sL2N9n73q9y/XkUCw9HMDBP-qeYSoBZ-O55era4WO1se-SLyghna1HAs', '40', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3748, '2024-2-1-9776', 'SURGE 2024 AI HORIZONS - ENGINEERING A SMARTER TOMORROW', ' http://depedmanila.net:5000/d/s/x9HSg4iZXAqVIjfvY67N8xRr7JnW24Tp/gXpYl5foK_C-biQyrX6_VpF832HbmZfD-3bxgR9O1HAs', '41', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3749, '2024-2-2-9843', 'SQUEEZE THE NATIONAL ELECTRICAL AND ELECTRONICS ENGINEERING (EEE) COMPETITION AND CONVENTION', ' http://depedmanila.net:5000/d/s/x9Hb5vOPnu2HXgWxWUuyiYwjsq6BIKml/nZiLfjkPUg2viGKc8ULWiRCQCPucd8hp-oL1Ay0q2HAs', '42', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3750, '2024-2-2-9844', 'NATIONAL CULTURAL WORKSERS AND ARTS EDUCATION FORUM', ' http://depedmanila.net:5000/d/s/x9HlHNe3aOZlEqmv48S8OZwrZzx7iYcx/a83ui2dz__4JRanb5-QdytjCxFM0cMs9-TL6gFMW2HAs', '43', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3751, '2024-2-2-9845', 'INVITATION TO EDUCATION AND VALUES-ORIENTED STAGE PLAYS', ' http://depedmanila.net:5000/d/s/x9Hvq8zYZaFbEZLflUVRwru0GCdxSc0z/IPDJhkmtM5V69_HK4ceNbF06Z8XZG3Fg-Jr_gQ1K3HAs', '44', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3752, 'ICT-DA045', 'POSTPONEMENT OF THE ORIENTATION ON BUDGET EXECUTION DOCUMENT (BED) 2 PREPARATION', ' http://depedmanila.net:5000/d/s/x9Pj0AyHSxfsO7HXx8yk8BvZBXArbj1t/NTDeEsLuIabeY4utMCPVzsTwL_hGqcNa-6rrA-U7QHAs', '45', '2024-02-06', 'DIVISION ADVISORIES', 'active'),
(3753, '2024-1-31-9687', 'INVITATION FROM THE PHILIPPINE ELEMENTARY SCHOOL PRINCIPALS ASSOCIATION, INC. TO THE 41ST PRINCIPALS TRAINING AND DEVELOPMENT PROGRAM CUM NATIONAL BOARD CONFERENCE', ' http://depedmanila.net:5000/d/s/xA3knO25bcqigh1lNm8J5BlL1bEl65XZ/Y7LRm8jYPpyC21edhlHzT9gZEAe3l8ty-trfg-JlQHQs', '42', '2024-02-07', 'NUMBERED MEMORANDUM', 'active'),
(3754, '2024-1-29-9581', 'A-Y PREP MASS INDUCTION AND COLORING CONTEST', ' http://depedmanila.net:5000/d/s/xA3tlscb7Mwm8DyLhroByLKb3YhX0fLk/J6A5R8Kc_u25J3SL0xQfRmMAPpQZmWs7-CLjAMvBQHQs', '46', '2024-02-07', 'DIVISION ADVISORIES', 'active'),
(3755, '2024-1-31-9726', 'YWCA - FFPI AND CRAFTS ACTIVITY THEME SINING GALING NGA MGA BATANG Y-SPED', ' http://depedmanila.net:5000/d/s/xA4Cj6LsmmL2unPA8hsx4BLeuRQWQUkO/TyUAmkncex3t0XRNQbJ_Wdgx8LVfWoWs-3big9_NRHQs', '47', '2024-02-07', 'DIVISION ADVISORIES', 'active'),
(3756, '2024-2-6-10029', 'CORRIGENDUM TO THE DIVISION MEMORANDUM NO. 35, S. 2024 POWER PROJECT OPTIMIZATION WITH ENHANCED RESOURCE', ' http://depedmanila.net:5000/d/s/xADJ3TctL7n16WLxKTbxujvkI0QauVfG/J2tkqpUu25CfNqB_E6YJ6sN5wlxbEPwO-pbfgHyNvHQs', '3', '2024-02-07', 'OFFICE ORDER', 'active'),
(3757, 'ICT-CM001', 'NEW SERVICES AT THE CGEC', ' http://depedmanila.net:5000/d/s/xADx9qom6hh6AZLNsjo8gQBD4MYGyZ8y/9ilW0aP0QeQBV1afqJRtPAISWUOg6Oyg-Ublg0yxxHQs', '1', '2024-02-07', 'DIVISION ADVISORIES', 'active'),
(3758, 'ICT-CM002', '25% DISCOUNT ON PLM TUITION FOR CITY EMPLOYEES', ' http://depedmanila.net:5000/d/s/xAE6GhRE0RrBJJoAm2fMyAJnVb6zX0vq/Lw2jw6xSNladF842yEE5_ELcmwWrHHJR-zLmA4aNxHQs', '2', '2024-02-07', 'DIVISION ADVISORIES', 'active'),
(3759, 'ICT-CM003', 'ONLINE SURVEY RE IMPLEMENTATION OF THE ASIA BLUE SKIES PROGRAM', ' http://depedmanila.net:5000/d/s/xAEGpLyLqgmtBp0rNJsyu9Si08u0IfqG/G1jF5x0-fI-gGbNOJxj2FSgqQJAngLOR-SrogMzFyHQs', '3', '2024-02-07', 'DIVISION ADVISORIES', 'active'),
(3760, 'ICT-CM004', 'ADOPTION OF THE REVISED 2021 PANUNUMPA NG LINGKOD BAYAN IN THE FLAG-RAISING CEREMONY', ' http://depedmanila.net:5000/d/s/xAEPRPOmsElWlHaN5YZiYEQDF2nnkDPP/GQgKfEzjtzn7HSMp_AwXxaz4y8TSSIQ2-tbqgaadyHQs', '4', '2024-02-07', 'DIVISION CIRCULARS', 'active'),
(3761, '2024-2-1-9803', 'TRAINING FOR VIRTUAL LABORATORY SIMULATION & MULTIMEDIA SOFTWARE', ' http://depedmanila.net:5000/d/s/xArq6hysemKxlW9azbSa5WmZyAyviXD5/HkAJIQtTu1OYT3zK7Py3rxoG8I2-mQM_-db-gofHwHQs', '43', '2024-02-08', 'NUMBERED MEMORANDUM', 'active'),
(3762, '2024-2-7-10093', 'POSTPONEMENT OF THE CONDUCT OF RESKILLING OF ROP ON THE USE OF PPMS AND LDIS', ' http://depedmanila.net:5000/d/s/xB3lOE85CRy3dJ9PLw9EgkqfIif8F02j/VZFjtKYK-j6vjQ8g4PfLG85Da-xuph4y-JLMgcB0XHgs', '48', '2024-02-08', 'DIVISION ADVISORIES', 'active'),
(3763, '2024-2-7-10094', 'ENCODING OF 2024 OPCRF AND IPCRF IN THE PMS', ' http://depedmanila.net:5000/d/s/xB3uChVSYibvDDprB6iDlHCsMe81KHEF/noSqZMFphsKXSNz3DHqdW0hlcKPscBRD-tbNAl4wXHgs', '49', '2024-02-08', 'DIVISION ADVISORIES', 'active'),
(3764, '2024-1-5-8421', 'FAR EASTERN UNIVERSITY (FEU) NATIONAL SERVICE TRAINING PROGRAM (NSTP) \"GABAY ARAL (BASA AT BILANG)\" SCHOOL PARTICIPATION', ' http://depedmanila.net:5000/d/s/xB4m7EaQjJxABBjg4uFYPjc4AxocCiO1/hstTwXXtw2zFViQkiR4oPNFqjt8OGp1J-erdgrGcaHgs', '50', '2024-02-08', 'DIVISION ADVISORIES', 'active'),
(3765, '2024-2-7-10140', 'IMMEDIATE RESUMPTION OF FACE TO FACE CLASSES IN MANILA SCIENCE HIGH SCHOOL', ' http://depedmanila.net:5000/d/s/xB71nNpOUoXvYIkzmPgSPtEptUBUfHE8/WktlFhpZR6Ej3kvdBqQOKxkIW_SAR5qm-frBgpZchHgs', '12', '2024-02-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3766, '2024-2-8-10168', 'COORDINATION AND PLANNING MEETING IN PREPARATION FOR PALARONG MAYNILA 2024', ' http://depedmanila.net:5000/d/s/xB78JwTjPiNewjWWZf1U0Eex31lYrPsX/4QHfC8iI3zgernUl3X35sF9Huk4A_-vB-6rBA3uohHgs', '13', '2024-02-08', 'UNNUMBERED MEMORANDUM', 'active'),
(3767, 'ICT-UM014', 'AMENDMENT TO DIVISION MEMORANDUM NO. 23, S. 2024 TITLED \"UPDATED COMPOSITION OF THE DIVISION HUMAN RESOURCE MERIT PROMOTION AND SELECTION BOARD (HRMPSB) FOR NATIONAL PAID EMPLOYEES\"', 'http://depedmanila.net:5000/d/s/xEFYtJwZwk30RQaA2Wr0eSVrCk9syNTv/KvNMwUi-Mx4-1tsi0konFFbm2YhLY-kq-fL-AwLuQIAs', '14', '2024-02-12', 'UNNUMBERED MEMORANDUM', 'active'),
(3768, '2024-2-7-10125', '152ND ANNIVERSARY OF THE MARTYDOM OF FATHERS MARIANO GOMES. JOSE BURGOS, AND JACINTO ZAMORA (GomBurZa)', ' http://depedmanila.net:5000/d/s/xENtt5zK0tn1NBzqu4ggl92JvSovsZwt/NkcbK27azPW9y5tgnVtmUfZBwP7CcPyY-h7mg9merIAs', '44', '2024-02-12', 'NUMBERED MEMORANDUM', 'active'),
(3769, '2024-1-30-9660', 'DIVISION ECOFESTIVAL 2024', ' http://depedmanila.net:5000/d/s/xEO0eZZaGzvpDASW3DC6RZgfdQsv4ESw/9T8SEkhZa-phliGOWF3eVx6JwtsxPxsL-5rlgM6qrIAs', '45', '2024-02-12', 'NUMBERED MEMORANDUM', 'active'),
(3770, '2024-2-5-10012', 'DISTRICT LEARNING ACTION CELL (LAC) SESSION WITH THE THEME \"DESIGNING EFFECTIVE LEARNING OUTCOMES\" AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/xEODgXuXaowbtYHOwHuKuBYhoTKdwkTZ/DMOaz_LBKjyKkb7pfXOwr1dzOH1WHKRz-_roAYm6sIAs', '15', '2024-02-12', 'UNNUMBERED MEMORANDUM', 'active'),
(3771, '2024-2-12-10250', 'LIST OF ATHLETES, COACHES AND OFFICIALS FOR PALARONG MAYNILA 2024', ' http://depedmanila.net:5000/d/s/xF2m4h7gXt2QMqQgwJckiXDnlI8DRxnJ/g8J8z9-G85MxlyrJxKVQ3q02zX-fikzk-7bHAv0IuIQs', '46', '2024-02-13', 'NUMBERED MEMORANDUM', 'active'),
(3772, '2024-2-12-10221', 'PARTICIPATION OF SCHOOL HEADS IN THE ONLINE SURVEY ON SCHOOL HARDSHIP FACTORS FOR THE SPECIAL HARDSHIP ALLOWANCE (SHA)', ' http://depedmanila.net:5000/d/s/xF2rQFso0Knxpm2xRuuzfAGF95DuM3lD/dnzF1zMcNrCUElRzr2AE23ewqFaXXHuP-SLIgYpMuIQs', '47', '2024-02-13', 'NUMBERED MEMORANDUM', 'active'),
(3773, '2024-2-7-10096', 'PRESENTATION PORTFOLIO ASSESSMENT FOR ALTERNATIVE LEARNING SYSTEM ACCREDITATION AND EQUIVALENCY ELEMENTARY AND JUNIOR HIGH SCHOOL LEARNERS FOR SY 2023-2024', ' http://depedmanila.net:5000/d/s/xF2yGGL9T5FXQxYRV0tSoFzv3nM4c06X/_OqTXezmaqwoIfSGhWWPua773SxFr_sq-rbLAdfAuIQs', '48', '2024-02-13', 'NUMBERED MEMORANDUM', 'active'),
(3774, '2024-2-8-10151', 'INVITATION TO THE ONLINE ORIENTATION ON THE CAMPUS INTEGRITY CRUSADER PROGRAM IMPLEMENTATION GUIDELINES', ' http://depedmanila.net:5000/d/s/xF3ArmrQKaZQVkQInHYCqS9bjc8DFb8N/IL2iLPy6LMhTwyJioWljNjTuw61msL6h-QLOAj5AvIQs', '51', '2024-02-13', 'DIVISION ADVISORIES', 'active'),
(3775, '2024-2-5-9941', 'CHILD PROTECTION LAWS AND CASE MANAGEMENT TRAININGS AS PART OF THE PARTNERSHIP ON CAPACITY BUILDING ON CHILD PROTECTION WITH DEPED-NCR', ' http://depedmanila.net:5000/d/s/xF3LDacW3m6WYTujKWF97HrWG274pxsD/cIbpHu07PQpe4Cz66nQEtq7XbgURmN2p-TLUgbdoxIQs', '3', '2024-02-13', 'DIVISION CIRCULARS', 'active'),
(3776, '2024-2-9-10211', 'COORDINATION MEETING ON THE CONVERSION OF ACADEMIC CLASSROOMS INTO INCLUSIVE LEARNING RESOURCE CENTER (ILRC) AND DISCUSSION OF THE FOLLOWING', ' http://depedmanila.net:5000/d/s/xFDIpLtKlV0dAaxsrQKLoA5j6wjchRoZ/1eb5VvdG6goQiBxA_nmLhW-3bNdUsNqL-OrHgrg1QIQs', '16', '2024-02-13', 'UNNUMBERED MEMORANDUM', 'active'),
(3777, '2024-2-12-10258', 'ALS PORTFOLIO PRESENTATION ASSESSMENT 5 ORIENTATION (VIA GOOGLE MEET) AND OTHER MATTERS', ' http://depedmanila.net:5000/d/s/xFDRrOKAWacoOn2ZT3PH1EEkOLHgLcEY/lb16-Hei21EmEGGS-TR4SQFGhVMNxLZ6-tLHABn1QIQs', '17', '2024-02-13', 'UNNUMBERED MEMORANDUM', 'active'),
(3778, '2024-1-29-9582', 'RESCHEDULED Y-BUDS/ASSOCIATES COMMITTEE MASS INDUCTION', ' http://depedmanila.net:5000/d/s/xFqDKv7Nqk0zEd8dTTSOfm3nPeJ5bPfF/_NRUuQscYZQzel6RJlyPgrFYlLet---P-Urag6qPMIQs', '52', '2024-02-14', 'DIVISION ADVISORIES', 'active'),
(3779, '2024-2-13-10339', 'SCHOOL LIBRARY PREPAREDNESS FOR MATATAG CURRICULUM', ' http://depedmanila.net:5000/d/s/xG2rw2K3oFnHLQTkXaIptv95RaL1uOiL/WwNN0EZVaBIX6sBBWtO6mVcITd7ShoSt-67tAWEL1IQs', '18', '2024-02-14', 'UNNUMBERED MEMORANDUM', 'active'),
(3780, '2024-2-13-10354', 'CORRIGENDUM TO THE DIVISION MEMORANDUM NO. 35, S. 2024 POWER PROJECT OPTIMATION WITH ENHANCED RESOURCE', ' http://depedmanila.net:5000/d/s/xG31Po3GPxmH6iSc478X8NkrWZfR6fDA/4xvLd633IZn5HFQop9hWygZWLuczOQg2-VLwgTKj1IQs', '4', '2024-02-14', 'OFFICE ORDER', 'active'),
(3781, 'ICT-DM050', 'COMPUTATION PER CAPITA FOR ELECTRICITY AND WATER EXPENSES FOR ALL PUBLIC ELEMENTARY SCHOOLS OF SDO-MANILA', ' http://depedmanila.net:5000/d/s/xGibs7TrpClw2eRHHiHX6YhxPLENxfN9/ly1l7kYalYvduyG0N7O-FW2gDY3V-3Lw-W7VgXuN6Igs', '50', '2024-02-15', 'NUMBERED MEMORANDUM', 'active'),
(3782, '2024-2-1-9772', 'DATA GATHERING ACTIVITIES FOR THE SCHOOL ORGANIZATIONAL STRUCTURE AND STAFFING STANDARD STUDY (SOSSS)', ' http://depedmanila.net:5000/d/s/xGiqT2OwOIMPXBXT9BeJNJhRYbTVEBke/N6QiLAen_jbkzH7qkS1f0EpLqfaNUEf5-l7UgMZ17Igs', '49', '2024-02-15', 'NUMBERED MEMORANDUM', 'active'),
(3783, '2024-1-25-9472', 'WORLD CLASSROOM PROGRAM', ' http://depedmanila.net:5000/d/s/xGj2g9Q1fri37e9t3APwA7y0qqR1opvm/WOY2mTNU16WGC5put2YY_7t2B7JcQb7y-s7XAXy98Igs', '53', '2024-02-15', 'DIVISION ADVISORIES', 'active'),
(3784, 'ICT-DM051', 'SUBMISSION OF PERFORMANCE APPRAISAL REPORT OF CITY-PAID NONTEACHING PERSONNEL', ' http://depedmanila.net:5000/d/s/xGtuJAC1NmpRZmvEhgPpu00nDcg0vwJl/l0uVAW_HnLUJdVLp5FDVi3PQoBuDV0aL-Pb-gUQmfIgs', '51', '2024-02-15', 'NUMBERED MEMORANDUM', 'active'),
(3785, 'ICT-DM052', 'SUBMISSION OF UPDATED PERSONAL DATA SHEET (PDS) USING C.S. FORM NO. 212, REVISED 2017 OF CITY-PAID EMPLOYEES', ' http://depedmanila.net:5000/d/s/xGu9mImXPXS3ldC1ANiUUach3kzwgX3i/1uHtHZU0uCHjoGXexjOo5h2uhvIz8ZSA-rL9AtN2fIgs', '52', '2024-02-15', 'NUMBERED MEMORANDUM', 'active');
INSERT INTO `issuancestbl` (`issuances_id`, `tracking_number`, `issuances_title`, `issuances_link`, `issuances_number`, `issuances_date`, `issuances_type`, `issuances_status`) VALUES
(3786, '2024-2-13-10322', '2024 NATIONAL GEOLOGY CONGRESS', ' http://depedmanila.net:5000/d/s/xGuwQDf9O7J50IW8mY9vfH2dztApPwIu/iycyontSH2AftCjBRhBNpw0Ycoe7IVbg-7LDgeUyiIgs', '54', '2024-02-15', 'DIVISION ADVISORIES', 'active'),
(3787, '2024-2-13-10266', 'WORKSHOP-TRAINING ON ISSUANCE OF SPECIAL ORDER SYSTEM (ISO Sys) FOR PRIVATE SCHOOLS (WISP)', ' http://depedmanila.net:5000/d/s/xGwhYqwapkAkCKMUBy59T5Jeo2y0pjte/31LwFrRf6Ypjc8X7WIEIFQ6bfGXvAI-t-Y7Qg3oyoIgs', '19', '2024-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(3788, '2024-2-13-10274', 'PROFESSIONAL MEETING OF ELEMENTARY MASTER TEACHERS IN MATHEMATICS', ' http://depedmanila.net:5000/d/s/xGx3mgRAIhKz9wOcoLyhj95By0XH0Ayx/u_ZJl-o7gZpowpjZADcN--uQb57WHesE-zrQA0B-pIgs', '20', '2024-02-15', 'UNNUMBERED MEMORANDUM', 'active'),
(3789, '2024-2-12-10241', 'PREPARATION FOR THE DSWD\'S TARA, BASA! TUTORING PROGRAM YEAR 2 IMPLEMENTATION', ' http://depedmanila.net:5000/d/s/xGxDEl8mlf9ZNwTquvsa70zv1hjKoCiQ/iKI5BLkYrA3nA920vNfE-cD1SpKvllMT-ErUAtqGpIgs', '53', '2024-02-15', 'NUMBERED MEMORANDUM', 'active'),
(3790, '2024-1-31-9699', 'REQUEST FOR RECOMMENDATIONS OF NEW DISTRICT CHAIRPERSONS, IN LINE WITH THE REASSIGNMENT OF SCHOOL PRINCIPALS, FOR INFORMATION', ' http://depedmanila.net:5000/d/s/xGxMrdAXx3A5qC59BEX1zQKKTWzkR6nY/0OwCQe2CuveW5rDrlvxwx7HfMmFlLxdq-c7UA4jOqIgs', '5', '2024-02-15', 'DIVISION CIRCULARS', 'active'),
(3791, '2024-2-12-10260', 'REITERATION AND CLARIFICATION ON THE IMPLEMENTATION OF THE MULTI-YEAR GUIDELINES ON THE RESULTS-BASED PERFORMANCE MANAGEMENT SYSTEM - PHILIPPINE PROFESSIONAL STANDARDS FOR TEACHERS\n', ' http://depedmanila.net:5000/d/s/xHVCoHDXHOKPXY2jkuUh0sdRhABJxwmt/f4yV4ig6LGVJYGhy1FtAMBn3j-c3GNjs-d7SgkyEXIws', '54', '2024-02-16', 'NUMBERED MEMORANDUM', 'active'),
(3792, '2024-2-13-10355', 'REGISTRATION FOR THE 2023 REGULAR PHILIPPINE EDUCATIONAL PLACEMENT TEST (PEPT)', ' http://depedmanila.net:5000/d/s/xHVW8LnaiPqZn9DHcebJ5ycR9X5J5Lub/jdtXNWOjjuyawanFphV_bPzyHIEdTeHO-srSAY38XIws', '55', '2024-02-16', 'NUMBERED MEMORANDUM', 'active'),
(3793, '2024-1-10-8587', 'USE OF THE OFFICE PERFORMANCE COMMITMENT AND REVIEW FORM (OPCRF) SERIES 2023 TEMPLATE', ' http://depedmanila.net:5000/d/s/xHf7H0e0dtbS4rAAMkuc62UQy6lHz8hO/37Yxj2YrYFwIltmUTU5e24RpUTjEmDMv-qLrgtj42Iws', '56', '2024-02-16', 'NUMBERED MEMORANDUM', 'active'),
(3794, '2024-1-23-9358', 'ANTI-ONLINE SEXUAL ABUSE AND EXPLOITATION OF CHILDREN (OSAEC) AND ANTI-CHILD SEXUAL ABUSE OR EXPLOITATION MATERIALS (CSAEM)', ' http://depedmanila.net:5000/d/s/xHfEdgX6jlcsHCPk2ACSG255jkIJ3HVz/KBg94m3c5jLZIxor6LabiAU5bB4dHfT8-HLsgvbw2Iws', '57', '2024-02-16', 'NUMBERED MEMORANDUM', 'active'),
(3795, '2024-2-7-10099', 'VOICE OF THE YOUTH ORATORICAL CONTEST', ' http://depedmanila.net:5000/d/s/xHfPkKoew9IIs9bFoRepPjx3k3Liyvup/_WuhqTU7_tTEX1iKcVTRPefN74TOUbmM-gbvgtC03Iws', '55', '2024-02-16', 'DIVISION ADVISORIES', 'active'),
(3796, '2024-2-5-9923', 'GPS SIGNATURE CAMPAIGN FUND RAISING', ' http://depedmanila.net:5000/d/s/xHfb9ZgQnaUwaUjqAKaydTvY18Sl1ovo/rkpQ87Rp9F9aR-A-iIeq4H_BvLu6foiW-_7ugTr43Iws', '56', '2024-02-16', 'DIVISION ADVISORIES', 'active'),
(3797, '2024-2-6-10047', 'ST. JOSEPH SCHOOL OF PANDACAN\'S MARKETING AND PROMOTIONAL ACTIVITY', ' http://depedmanila.net:5000/d/s/xHfhqa5OXJT2u8jD3Mzmu8TLNRTOUeQ3/dYeLVvqsQXj9v2yYJ6HHmolkcmcv-B51-bbxAQSI4Iws', '57', '2024-02-16', 'DIVISION ADVISORIES', 'active'),
(3799, '2024-2-15-10464', 'YMCA\'S HI-Y CLUB JOINT LEADERSHIP CAMP', ' http://depedmanila.net:5000/d/s/xHlxBA7nfqMaFwKABmdxfdA6WqinGT9Y/AEomwu4TI4OyZqKwDDqrYxtHI0BRCgms-SrxgWB1MIws', '58', '2024-02-16', 'DIVISION ADVISORIES', 'active'),
(3800, '2024-2-12-10225', 'INVITATION TO THE KNIGHTS OF THE COLUMBUS\' ANNUAL FREE THROW CHAMPIONSHIP', ' http://depedmanila.net:5000/d/s/xHm5UY02G8eT5ggAK4Triww7sCS4oggk/hcKsK3Ox3KYSbFNcLBIa9WQdt8Q1bX-s-tbxgnJZMIws', '59', '2024-02-16', 'DIVISION ADVISORIES', 'active'),
(3801, '2024-2-14-10374', 'INVITATION TO THE ANNUAL YMCA LOCAL ACADEMIC OLYMPICS AND THE YMCA VOICE CHALLENGE', ' http://depedmanila.net:5000/d/s/xHmDdVpEnYjexuTJCmOo1MFqdGy5c5w5/fZdJt-nM87KjqJZQADwzweavqAuO6iwG-Er0gM_5MIws', '60', '2024-02-16', 'DIVISION ADVISORIES', 'active'),
(3802, '2024-2-15-10432', 'TECHNICAL WORKING GROUP FOR THE SUMMIT FOR PILOT IMPLEMENTERS OF THE MATATAG CURRICULUM', ' http://depedmanila.net:5000/d/s/xK2upxkpRBkc1BH7OCLgizuX13vSArfv/3ufMCWJ7fV4wzafI0RJUCf_dTSz9vWt1-LL0gxtMTJQs', '58', '2024-02-19', 'NUMBERED MEMORANDUM', 'active'),
(3803, '2024-2-13-10299', 'INVITATION TO ATTEND THE 3RD NATIONAL ASSOCIATION OF DENTAL TRADERS, INC. SEMINAR AND SUMMER SALE', 'http://depedmanila.net:5000/d/s/xK4TnSMIkq7zbJjEOgCfzPZKMkeHWJoj/TOkheYnnFj9dK_RWBTOkgEBe8Td5nAYz--r3ADKcUJQs', '61', '2024-02-19', 'DIVISION ADVISORIES', 'active'),
(3804, '2024-2-13-10300', 'REGIONAL ELECTION OF FEDERATION OF PARENTS-TEACHERS ASSOCIATION', ' http://depedmanila.net:5000/d/s/xK4cenzlnUUHS8e3JmMu9bQwie0jLSEN/KVAsXFFVD4luQFVkKOYWXpVE32thBTHe-lL4AGRYVJQs', '62', '2024-02-19', 'DIVISION ADVISORIES', 'active'),
(3805, '2024-2-13-10301', '13th FIRST LEGO LEAGUE PHILIPPINES', ' http://depedmanila.net:5000/d/s/xK4o7IxwIUvm2135ej98rNjtQctezDmo/PH3_Ds-Wbqx8HKMLHIqVxbx3ZSkGKQkM-Yb9gQ6cVJQs', '63', '2024-02-19', 'DIVISION ADVISORIES', 'active'),
(3806, '2024-2-13-10302', 'YOUTH LEADERSHIP AND VALUES FORMATION CAMP 2024 WITH THE THEME \"DIVERGENT\"', ' http://depedmanila.net:5000/d/s/xKAEt0D1SWaDZjzxzmSOyaW5W1HA1ydy/jWs4A_AHqQgBLa3yjeaNhoe3jzUfDopO-Qr5A8REnJQs', '64', '2024-02-19', 'DIVISION ADVISORIES', 'active'),
(3807, '2024-2-13-10303', 'LIKNAYAN 2024', ' http://depedmanila.net:5000/d/s/xKAMq419oOTdiahfPeKBBgpyyt8dM6LB/-pyEeymDBTAbqAQvbUj3SoDM7e0DKDie-or7gn28nJQs', '65', '2024-02-19', 'DIVISION ADVISORIES', 'active'),
(3808, '2024-2-19-10553', 'VENUE FOR THE WORKSHOP-TRAINING ON ISSUANCE OF SPECIAL ORDER SYSTEM (ISO SYS) FOR PRIVATE SCHOOLS (WISP)', ' http://depedmanila.net:5000/d/s/xKozbTeHoA32tgcdUufhCgXQVhqej7OJ/zgMHRlUNxkhU6ZMQrTTw4ht3DotYc_qW-u79A8KOpJQs', '66', '2024-02-20', 'DIVISION ADVISORIES', 'active'),
(3809, '2024-2-8-10142', 'CONDUCT INNER AND SOCIAL TRANSFORMATION THROUGH RECOLLECTION GIVING TO GRADUATING GRADE 6 LEARNERS', ' http://depedmanila.net:5000/d/s/xKtm1Qo4CQjYON9CcVVcFsxKGt9fNeON/cebGap1_kKkZDc1UaaZqUFgr6AGWtTPV-urcghwu5JQs', '6', '2024-02-20', 'DIVISION CIRCULARS', 'active'),
(3810, '2024-2-19-10548', 'ADDENDUM TO DIVISION MEMORANDUM NO. 39, S. 2024 TRAINING WORKSHOP ON RIGHTSKILLING OF SCHOOL LEADERS OF SDO MANILA GEARING TOWARD THE ACHIEVEMENT OF THE MATATAG AGENDA AND PROFESSIONAL EXCELLENCE', ' http://depedmanila.net:5000/d/s/xKu0r1cKEzxkXb3QRT3xJUVjGdWHu6aw/izrVME5b8zMZQORvOyK_-gQ7cACucE4V-ZrjARsi5JQs', '21', '2024-02-20', 'CITY MEMORANDUM / EXECUTIVE ORDER', 'active'),
(3811, '2024-2-19-1055112', 'MONTHLY PROFESSIONAL MEETING OF TEACHER-IN-CHARGE OF PHYSICAL EDUCATION AND SCHOOL SPORTS (TCPESS)s', ' http://depedmanila.net:5000/d/s/xKuBec4yNjZJhWxCcr7PRAMNgZbVXAaB/wo7CaSY9Ds2tUIEji20ym2Z4DfSKs7A3-1rjgZUO6JQs', '22', '2024-02-20', 'DIVISION CIRCULARS', 'active'),
(3812, '123123', '123', ' 123', '123', '2024-04-03', 'CITY MEMORANDUM / EXECUTIVE ORDER', 'inactive'),
(3813, 'asds', '123', ' 123', '123', '2024-04-06', 'CITY MEMORANDUM / EXECUTIVE ORDER', 'inactive');

-- --------------------------------------------------------

--
-- Stand-in structure for view `issuancesvw`
-- (See below for the actual view)
--
CREATE TABLE `issuancesvw` (
`id` int(11)
,`tracking_number` varchar(50)
,`title` varchar(200)
,`link` longtext
,`number` varchar(20)
,`date` date
,`type` varchar(50)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jhsschoolsvw`
-- (See below for the actual view)
--
CREATE TABLE `jhsschoolsvw` (
`id` varchar(11)
,`name` varchar(100)
,`address` varchar(200)
,`principal` varchar(50)
,`contact` varchar(30)
,`link` longtext
,`email` varchar(50)
,`district` varchar(5)
,`type` varchar(20)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `materialfilesvw`
-- (See below for the actual view)
--
CREATE TABLE `materialfilesvw` (
`id` int(11)
,`type` varchar(50)
,`title` varchar(200)
,`link` longtext
,`department` varchar(20)
,`date` datetime
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `officestbl`
--

CREATE TABLE `officestbl` (
  `offices_id` int(11) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `employee_picture` longtext NOT NULL,
  `employee_office` varchar(100) NOT NULL,
  `employee_position` varchar(200) NOT NULL,
  `employee_post` varchar(50) NOT NULL,
  `employee_type` varchar(100) NOT NULL,
  `employee_email` varchar(50) NOT NULL,
  `employee_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `officesvw`
-- (See below for the actual view)
--
CREATE TABLE `officesvw` (
`id` int(11)
,`department` varchar(100)
,`name` varchar(50)
,`picture` longtext
,`office` varchar(100)
,`position` varchar(200)
,`post` varchar(50)
,`type` varchar(100)
,`email` varchar(50)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `procurementfilesvw`
-- (See below for the actual view)
--
CREATE TABLE `procurementfilesvw` (
`id` int(11)
,`type` varchar(50)
,`title` varchar(200)
,`link` longtext
,`date` datetime
,`pyear` year(4)
,`ptype` varchar(50)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `schoolstbl`
--

CREATE TABLE `schoolstbl` (
  `schooltbl_id` int(11) NOT NULL,
  `school_id` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(200) NOT NULL,
  `school_principal` varchar(50) NOT NULL,
  `school_contact` varchar(30) NOT NULL,
  `school_link` longtext NOT NULL,
  `school_email` varchar(50) NOT NULL,
  `school_district` varchar(5) NOT NULL,
  `school_type` varchar(20) NOT NULL,
  `school_shsAvailability` varchar(11) NOT NULL,
  `school_spedAvailablity` varchar(11) NOT NULL,
  `school_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolstbl`
--

INSERT INTO `schoolstbl` (`schooltbl_id`, `school_id`, `school_name`, `school_address`, `school_principal`, `school_contact`, `school_link`, `school_email`, `school_district`, `school_type`, `school_shsAvailability`, `school_spedAvailablity`, `school_status`) VALUES
(1, '123123', 'NAME', 'Address', 'Principal', '123', 'link', '@@@', '1', 'ELEMENTARY SCHOOLS', 'no', 'yes', 'inactive'),
(2, '123', '213', '213', '213', '213', '213', '123', '1', 'JUNIOR HIGH SCHOOLS', 'yes', 'yes', 'inactive'),
(3, '123', '123', '123', '123', '123', '123', '123', '1', 'ELEMENTARY SCHOOLS', 'no', 'yes', 'inactive'),
(4, '123123', '123', '123', '123', '123', '123', '123', '1', 'JUNIOR HIGH SCHOOLS', 'no', 'yes', 'inactive'),
(5, '123', '213', '123', '123', '213', '123', '213', '1', 'ELEMENTARY SCHOOLS', 'no', 'no', 'inactive'),
(6, '123123', '123', '123', '123', '123', '123', '123', '2', 'JUNIOR HIGH SCHOOLS', 'no', 'no', 'inactive'),
(7, '123', '123', '123', '123', '123', '123', '123', '1', 'JUNIOR HIGH SCHOOLS', 'no', 'no', 'inactive'),
(8, '123123', '123', '123', '123', '123', '123', '123', '1', 'JUNIOR HIGH SCHOOLS', 'no', 'no', 'inactive'),
(9, '123', '123', '123', '123', '123', '123', '123', '1', 'JUNIOR HIGH SCHOOLS', 'no', 'no', 'inactive'),
(10, '123', '123', '123', '123', '123', '123', '123', '1', 'ELEMENTARY SCHOOLS', 'no', 'no', 'inactive'),
(11, '123', '123', '123', '123', '123', '123', '123', '1', 'JUNIOR HIGH SCHOOLS', 'no', 'no', 'inactive'),
(12, '123', '123', '123', '123', '123', '123', '123', '1', 'JUNIOR HIGH SCHOOLS', 'yes', 'no', 'inactive'),
(13, '123', '123', '123', '123', '123', '123', '123', '1', 'JUNIOR HIGH SCHOOLS', 'yes', 'yes', 'inactive'),
(14, '123', '123', '123', '123', '123', '123', '123', '2', 'ELEMENTARY SCHOOLS', 'no', 'no', 'inactive'),
(15, '123', '123', '123', '123', '123', '123', '123', '1', 'ELEMENTARY SCHOOLS', 'no', 'no', 'inactive'),
(16, '123', '123', '123', '123', '123', '123', '123', '1', 'ELEMENTARY SCHOOLS', 'no', 'yes', 'inactive');

-- --------------------------------------------------------

--
-- Stand-in structure for view `schoolsvw`
-- (See below for the actual view)
--
CREATE TABLE `schoolsvw` (
`school_id` int(11)
,`id` varchar(11)
,`name` varchar(100)
,`address` varchar(200)
,`principal` varchar(50)
,`contact` varchar(30)
,`link` longtext
,`email` varchar(50)
,`district` varchar(5)
,`type` varchar(20)
,`shs_availability` varchar(11)
,`sped_availability` varchar(11)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `servicestbl`
--

CREATE TABLE `servicestbl` (
  `services_id` int(11) NOT NULL,
  `services_title` varchar(100) NOT NULL,
  `services_description` longtext NOT NULL,
  `services_link` longtext NOT NULL,
  `services_icon` text NOT NULL,
  `services_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicestbl`
--

INSERT INTO `servicestbl` (`services_id`, `services_title`, `services_description`, `services_link`, `services_icon`, `services_status`) VALUES
(1, 'SEND US YOUR FEEDBACK', 'Online Feedback Form', 'https://docs.google.com/forms/d/e/1FAIpQLScp81_6TY8Bbgj6AShy33Vc0NLpvRaEc6YHFfpDC8qov4oPPw/viewform?fbclid=IwAR26DFy2TFXLzGvAa_csNJRnaZZhgcdPRiA15L7-YVHkfdEj0Xd6Kj-ijXI', 'mdi mdi-book-open-variant', 'active'),
(2, 'DEPED MANILA E-LIBRARY', 'Deped Manila E-Library', 'https://sites.google.com/depedmanila.net/depedmanila-e-library?fbclid=IwAR1Xl7lOouFN-_pZjzG2LGJoRivq0PlJW85SWpX9OCDF9u5t7n8iy_CVBa4', 'mdi mdi-book-open-page-variant', 'active'),
(3, 'RESET DEPED EMAIL', 'Request to reset your DepEd Email', 'https://forms.gle/hmdzvWR5g29WQiEx8', 'mdi mdi-google', 'active'),
(4, 'CLIENT SATISFACTORY SURVEY', 'Client Satisfactory Survey', 'https://docs.google.com/forms/d/e/1FAIpQLScBxijSldifsao8d8tlnbThfIokvNtKJWpRO1upKcwc4xpFRw/viewform?fbclid=IwAR3l1de7NsOIe_exJbmFe8AVZop6NqfX4fwUFKENnbuk-gnLW9V7HByQmWw', 'mdi mdi-gmail', 'active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `servicesvw`
-- (See below for the actual view)
--
CREATE TABLE `servicesvw` (
`id` int(11)
,`title` varchar(100)
,`description` longtext
,`link` longtext
,`status` varchar(11)
,`icon` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `shsschoolsvw`
-- (See below for the actual view)
--
CREATE TABLE `shsschoolsvw` (
`id` varchar(11)
,`name` varchar(100)
,`address` varchar(200)
,`principal` varchar(50)
,`contact` varchar(30)
,`link` longtext
,`email` varchar(50)
,`district` varchar(5)
,`type` varchar(20)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `socialmediatbl`
--

CREATE TABLE `socialmediatbl` (
  `socialMedia_id` int(11) NOT NULL,
  `socialMedia_type` varchar(50) NOT NULL,
  `socialMedia_link` longtext NOT NULL,
  `socialMedia_title` longtext NOT NULL,
  `socialMedia_post` longtext NOT NULL,
  `socialMedia_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialmediatbl`
--

INSERT INTO `socialmediatbl` (`socialMedia_id`, `socialMedia_type`, `socialMedia_link`, `socialMedia_title`, `socialMedia_post`, `socialMedia_status`) VALUES
(1, 'youtube', 'https://www.youtube.com/@depedmanilaYT/featured', '2023 MANILA RESEARCH CONGRESS', 'https://www.youtube.com/embed/rt0Uss9GLlc', 'active'),
(2, 'facebook', 'https://www.facebook.com/DepEdManilaOfficial/', 'VACANCIES FOR VARIOUS NON-TEACHING POSITIONS IN THE DIVISION OF CITY SCHOOLS, MANILA. ', 'https://www.facebook.com/DepEdManilaOfficial/posts/pfbid0fv8PXCo42Ee7MoyUjVno7qMRMSowogKc3TJRvFfRctxqc9Y9nhFwTzJqxAJFh59Nl', 'active'),
(3, 'facebook', 'https://www.facebook.com/DepEdManilaOfficial/', 'Vacancy for Registrar I position in the Division of Manila', 'https://www.facebook.com/DepEdManilaOfficial/posts/pfbid02PLCqk7q5MLdbDC6A956C5TsVtf9gvbvvSNthpE5rE9SRxvmbPoR8AGY4cD8jepBgl', 'active'),
(4, 'facebook', 'https://www.facebook.com/DepEdManilaOfficial/', 'OPENING OF APPLICATION FOR HEAD TEACHER III AND VI POSITIONS IN THE DIVISION OF CITY SCHOOLS MANILA.', 'https://www.facebook.com/DepEdManilaOfficial/posts/pfbid07PdgPZ9FCouMvpxGFiwM4h3ULTHHfz4dKDMugp2nMeAFbKDJnPMt2he23uvqXkz5l', 'active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `socialmediavw`
-- (See below for the actual view)
--
CREATE TABLE `socialmediavw` (
`id` int(11)
,`type` varchar(50)
,`link` longtext
,`title` longtext
,`post` longtext
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `spedschoolsvw`
-- (See below for the actual view)
--
CREATE TABLE `spedschoolsvw` (
`id` varchar(11)
,`name` varchar(100)
,`address` varchar(200)
,`principal` varchar(50)
,`contact` varchar(30)
,`link` longtext
,`email` varchar(50)
,`district` varchar(5)
,`type` varchar(20)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `timelogtbl`
--

CREATE TABLE `timelogtbl` (
  `time_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_action` longtext NOT NULL,
  `log_date` date NOT NULL,
  `log_time` time NOT NULL,
  `log_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timelogtbl`
--

INSERT INTO `timelogtbl` (`time_id`, `user_id`, `log_action`, `log_date`, `log_time`, `log_status`) VALUES
(3, 4, 'ict kev Logged Out', '2024-03-30', '14:27:50', 'inactive'),
(4, 3, 'ict jon Logged In', '2024-03-30', '14:27:56', 'inactive'),
(5, 3, 'ict jon Logged Out', '2024-03-30', '14:28:05', 'inactive'),
(6, 2, 'ict kev Logged Out', '2024-04-01', '10:08:33', 'inactive'),
(7, 3, 'ict jon Logged In', '2024-04-01', '10:08:40', 'inactive'),
(8, 3, 'Added Issuance Category NUMBERED MEMORANDUM', '2024-04-01', '10:35:23', 'inactive'),
(9, 3, 'Added Issuance Category UNNUMBERED MEMORANDUM', '2024-04-01', '10:35:27', 'inactive'),
(10, 3, 'Added Issuance Category DIVISION ADVISORIES', '2024-04-01', '10:35:30', 'inactive'),
(11, 3, 'Added Issuance Category DIVISION CIRCULARS', '2024-04-01', '10:35:34', 'inactive'),
(12, 3, 'Added Issuance Category DIVISION ORDERS', '2024-04-01', '10:35:38', 'inactive'),
(13, 3, 'Added Issuance Category OFFICE ORDER', '2024-04-01', '10:35:42', 'inactive'),
(14, 3, 'Added Issuance Category MISCELLANEOUS MEMOS', '2024-04-01', '10:35:46', 'inactive'),
(15, 3, 'Added Issuance Category CITY MEMORANDUM', '2024-04-01', '10:35:51', 'inactive'),
(16, 3, 'Edited Issuance 2024-2-19-10551', '2024-04-01', '10:43:12', 'inactive'),
(17, 3, 'Edited Issuance 2024-2-19-105511', '2024-04-01', '10:43:17', 'inactive'),
(18, 3, 'Edited Issuance 2024-2-19-1055112', '2024-04-01', '10:43:20', 'inactive'),
(19, 3, 'Added material File 123', '2024-04-01', '11:17:23', 'inactive'),
(20, 3, 'Edited material file: Payments Sheet', '2024-04-01', '11:25:04', 'inactive'),
(21, 3, 'Edited material file: Payments Sheet', '2024-04-01', '11:25:12', 'inactive'),
(22, 3, 'Added Issuance Category CITY MEMORANDUM  / EXECUTIVE ORDER', '2024-04-01', '15:39:25', 'inactive'),
(23, 3, 'Added Issuance 123123', '2024-04-01', '15:39:35', 'inactive'),
(24, 3, 'Deleted Issuance Category CITY MEMORANDUM', '2024-04-01', '15:41:30', 'inactive'),
(25, 3, 'Cleared all time logs', '2024-04-01', '15:51:19', 'inactive'),
(26, 3, 'Edited Issuance 123123', '2024-04-01', '15:55:46', 'inactive'),
(27, 3, 'ict jon Logged Out', '2024-04-01', '15:55:52', 'inactive'),
(28, 4, 'ict kev Logged In', '2024-04-01', '15:55:58', 'inactive'),
(29, 4, 'Edited Issuance 123123', '2024-04-01', '15:56:05', 'inactive'),
(30, 4, 'ict kev Logged Out', '2024-04-01', '15:56:42', 'inactive'),
(31, 3, 'ICT JON Logged In', '2024-04-01', '15:59:32', 'inactive'),
(32, 3, 'ict jon Logged Out', '2024-04-01', '16:00:14', 'inactive'),
(33, 3, 'ict jon Logged In', '2024-04-01', '16:00:54', 'inactive'),
(34, 3, 'Deleted Issuance Category DIVISION ADVISORIES', '2024-04-01', '16:08:34', 'inactive'),
(35, 3, 'Edited Issuance 123123', '2024-04-01', '16:14:14', 'inactive'),
(36, 3, 'Edited Issuance 123123', '2024-04-01', '16:14:19', 'inactive'),
(37, 3, 'Edited Issuance ICT-CM001', '2024-04-01', '16:14:40', 'inactive'),
(38, 3, 'Edited Issuance ICT-CM004', '2024-04-01', '16:14:49', 'inactive'),
(39, 3, 'Edited Issuance ICT-CM003', '2024-04-01', '16:14:54', 'inactive'),
(40, 3, 'Edited Issuance ICT-CM002', '2024-04-01', '16:14:59', 'inactive'),
(41, 3, 'Edited Issuance 123123', '2024-04-01', '16:16:32', 'inactive'),
(42, 3, 'Edited Issuance 123123', '2024-04-01', '16:17:00', 'inactive'),
(43, 3, 'Edited Issuance 123123', '2024-04-01', '16:17:17', 'inactive'),
(44, 3, 'Added downloadable File 123', '2024-04-02', '10:01:32', 'inactive'),
(45, 3, 'Edited downloadable file: Personal Data Sheet (CSC Form 212)', '2024-04-02', '10:07:15', 'inactive'),
(46, 3, 'Added School 123123', '2024-04-02', '10:10:26', 'inactive'),
(47, 3, 'Edited School, id: 1', '2024-04-02', '10:11:02', 'inactive'),
(48, 3, 'Added School 123', '2024-04-02', '10:13:26', 'inactive'),
(49, 3, 'Edited School, id: 2', '2024-04-02', '10:13:48', 'inactive'),
(50, 3, 'Edited School, id: 2', '2024-04-02', '10:14:07', 'inactive'),
(51, 3, 'Edited School, id: 1', '2024-04-02', '10:14:40', 'inactive'),
(52, 3, 'Edited School, id: 2', '2024-04-02', '10:14:43', 'inactive'),
(53, 3, 'Edited School, id: 2', '2024-04-02', '10:15:46', 'inactive'),
(54, 3, 'Edited School, id: 2', '2024-04-02', '10:49:33', 'inactive'),
(55, 3, 'Edited School, id: 2', '2024-04-02', '10:51:11', 'inactive'),
(56, 3, 'Edited School, id: 1', '2024-04-02', '10:51:14', 'inactive'),
(57, 3, 'Edited School, id: 2', '2024-04-02', '10:51:22', 'inactive'),
(58, 3, 'Edited School, id: 1', '2024-04-02', '11:05:32', 'inactive'),
(59, 3, 'Added School 123', '2024-04-02', '11:07:59', 'inactive'),
(60, 3, 'Added School 123123', '2024-04-02', '11:22:46', 'inactive'),
(61, 3, 'Added School 123', '2024-04-02', '11:25:03', 'inactive'),
(62, 3, 'Added School 123123', '2024-04-02', '11:29:42', 'inactive'),
(63, 3, 'Edited School, id: 6', '2024-04-02', '11:31:01', 'inactive'),
(64, 3, 'Added School 123', '2024-04-02', '11:32:41', 'inactive'),
(65, 3, 'Added School 123123', '2024-04-02', '11:33:54', 'inactive'),
(66, 3, 'Added School 123', '2024-04-02', '11:34:33', 'inactive'),
(67, 3, 'Edited School, id: 5', '2024-04-02', '11:36:34', 'inactive'),
(68, 3, 'Edited School, id: 9', '2024-04-02', '11:36:42', 'inactive'),
(69, 3, 'Edited School, id: 8', '2024-04-02', '11:37:02', 'inactive'),
(70, 3, 'Edited School, id: 7', '2024-04-02', '11:37:16', 'inactive'),
(71, 3, 'Edited School, id: 9', '2024-04-02', '11:37:25', 'inactive'),
(72, 3, 'Edited School, id: 5', '2024-04-02', '11:37:31', 'inactive'),
(73, 3, 'Deleted School, id: 123123', '2024-04-02', '11:39:15', 'inactive'),
(74, 3, 'Deleted School, id: 123', '2024-04-02', '11:39:17', 'inactive'),
(75, 3, 'Deleted School, id: 123', '2024-04-02', '11:39:19', 'inactive'),
(76, 3, 'Deleted School, id: 123123', '2024-04-02', '11:39:21', 'inactive'),
(77, 3, 'Deleted School, id: 123', '2024-04-02', '11:39:23', 'inactive'),
(78, 3, 'Deleted School, id: 123123', '2024-04-02', '11:39:26', 'inactive'),
(79, 3, 'Deleted School, id: 123', '2024-04-02', '11:39:28', 'inactive'),
(80, 3, 'Deleted School, id: 123123', '2024-04-02', '11:39:30', 'inactive'),
(81, 3, 'Deleted School, id: 123', '2024-04-02', '11:39:31', 'inactive'),
(82, 3, 'Added School 123', '2024-04-02', '11:43:54', 'inactive'),
(83, 3, 'Added School 123', '2024-04-02', '11:44:04', 'inactive'),
(84, 3, 'Added School 123', '2024-04-02', '11:44:22', 'inactive'),
(85, 3, 'Added School 123', '2024-04-02', '11:44:40', 'inactive'),
(86, 3, 'Edited School, id: 10', '2024-04-02', '11:47:23', 'inactive'),
(87, 3, 'Edited School, id: 10', '2024-04-02', '11:47:27', 'inactive'),
(88, 3, 'Edited School, id: 10', '2024-04-02', '11:47:32', 'inactive'),
(89, 3, 'Edited School, id: 10', '2024-04-02', '11:47:37', 'inactive'),
(90, 3, 'Edited School, id: 10', '2024-04-02', '11:49:30', 'inactive'),
(91, 3, 'Edited School, id: 13', '2024-04-02', '11:49:33', 'inactive'),
(92, 3, 'Edited School, id: 10', '2024-04-02', '11:49:43', 'inactive'),
(93, 3, 'Edited School, id: 10', '2024-04-02', '11:54:42', 'inactive'),
(94, 3, 'Edited School, id: 10', '2024-04-02', '11:54:48', 'inactive'),
(95, 3, 'Edited School, id: 10', '2024-04-02', '12:56:13', 'inactive'),
(96, 3, 'Edited School, id: 10', '2024-04-02', '12:56:18', 'inactive'),
(97, 3, 'ict jon Logged Out', '2024-04-02', '13:13:05', 'inactive'),
(98, 3, 'ict jon Logged In', '2024-04-02', '13:13:10', 'inactive'),
(100, 3, 'Added User ict michael', '2024-04-02', '13:47:51', 'inactive'),
(101, 3, 'Added User test', '2024-04-02', '13:48:16', 'inactive'),
(102, 3, 'Added User test', '2024-04-02', '13:48:50', 'inactive'),
(103, 3, 'Added User test', '2024-04-02', '13:48:53', 'inactive'),
(104, 3, 'Added Issuance asds', '2024-04-02', '13:49:10', 'inactive'),
(105, 3, 'Added User test', '2024-04-02', '13:51:07', 'inactive'),
(106, 3, 'Added User test', '2024-04-02', '13:53:29', 'inactive'),
(107, 3, 'Added User geng', '2024-04-02', '13:53:34', 'inactive'),
(108, 3, 'ict jon Logged Out', '2024-04-02', '13:56:31', 'inactive'),
(109, 18, 'geng Logged In', '2024-04-02', '13:56:37', 'inactive'),
(110, 18, 'geng Logged Out', '2024-04-02', '13:56:45', 'inactive'),
(111, 3, 'ict jon Logged In', '2024-04-02', '13:56:59', 'inactive'),
(112, 3, 'Added User ictsitio', '2024-04-02', '13:59:20', 'inactive'),
(113, 3, 'Added User test', '2024-04-02', '14:28:17', 'inactive'),
(114, 3, 'Added User test', '2024-04-02', '14:28:40', 'inactive'),
(115, 3, 'Added User test', '2024-04-02', '14:29:06', 'inactive'),
(116, 3, 'Added User test', '2024-04-02', '14:32:18', 'inactive'),
(117, 3, 'Added User test', '2024-04-02', '14:35:14', 'inactive'),
(118, 3, 'Added User geng', '2024-04-02', '15:14:56', 'inactive'),
(119, 3, 'Cleared all time logs', '2024-04-02', '15:21:38', 'inactive'),
(120, 3, 'ict jon Logged In', '2024-04-02', '16:09:30', 'inactive'),
(121, 3, 'Added User ict michael1', '2024-04-02', '16:42:37', 'inactive'),
(122, 3, 'Added User 213', '2024-04-02', '16:48:24', 'inactive'),
(123, 3, 'Cleared all time logs', '2024-04-02', '16:59:11', 'inactive'),
(124, 3, 'Deleted Issuance asds', '2024-04-02', '16:59:54', 'inactive'),
(125, 3, 'Deleted Issuance 123123', '2024-04-02', '16:59:57', 'inactive'),
(126, 3, 'Deleted School, id: 123', '2024-04-03', '09:49:40', 'inactive'),
(127, 3, 'Deleted School, id: 123', '2024-04-03', '09:49:42', 'inactive'),
(128, 3, 'Deleted School, id: 123', '2024-04-03', '09:49:44', 'inactive'),
(129, 3, 'Deleted School, id: 123', '2024-04-03', '09:49:46', 'inactive'),
(130, 3, 'Added School 123', '2024-04-03', '09:50:12', 'inactive'),
(131, 3, 'Edited User: 1', '2024-04-03', '10:05:37', 'inactive'),
(132, 3, 'Edited User: 1', '2024-04-03', '10:06:43', 'inactive'),
(133, 3, 'Edited User: 1', '2024-04-03', '10:06:53', 'inactive'),
(134, 3, 'Edited User: ict michaels', '2024-04-03', '10:07:45', 'inactive'),
(135, 3, 'Edited User: ict michael', '2024-04-03', '10:07:56', 'inactive'),
(136, 3, 'Edited User: ict michael', '2024-04-03', '10:08:38', 'inactive'),
(137, 3, 'Edited User: ict marlon', '2024-04-03', '10:09:37', 'inactive'),
(138, 3, 'Edited User: ict michaels', '2024-04-03', '10:16:28', 'inactive'),
(139, 3, 'Edited User: ict michaels', '2024-04-03', '10:16:32', 'inactive'),
(140, 3, 'Edited User: ict michael', '2024-04-03', '10:16:42', 'inactive'),
(141, 3, 'Edited User: ict marlon', '2024-04-03', '10:16:47', 'inactive'),
(142, 3, 'Edited User: \'ict marlon', '2024-04-03', '10:16:53', 'inactive'),
(143, 3, 'Edited User: \'ict marlon', '2024-04-03', '10:16:58', 'inactive'),
(144, 3, 'Edited User: ict marlon', '2024-04-03', '10:17:10', 'inactive'),
(145, 3, 'Edited User: \'ict marlon', '2024-04-03', '10:17:14', 'inactive'),
(146, 3, 'Edited User: \\ict marlon', '2024-04-03', '10:17:19', 'inactive'),
(147, 3, 'Edited User: ict marlon', '2024-04-03', '10:17:22', 'inactive'),
(148, 3, 'Edited User: sdomanilaq1', '2024-04-03', '10:19:17', 'inactive'),
(149, 3, 'Edited User: sdomanilaq1', '2024-04-03', '10:19:26', 'inactive'),
(150, 3, 'Edited User: sdomanilaq1', '2024-04-03', '10:19:35', 'inactive'),
(151, 3, 'Edited User: sdomanilaq1', '2024-04-03', '10:20:13', 'inactive'),
(152, 3, 'Edited User: ict aj', '2024-04-03', '10:20:47', 'inactive'),
(153, 3, 'Edited User: ict aj', '2024-04-03', '10:21:03', 'inactive'),
(154, 3, 'ict jon Logged Out', '2024-04-03', '10:21:09', 'inactive'),
(155, 5, 'ict aj Logged In', '2024-04-03', '10:21:16', 'inactive'),
(156, 5, 'ict aj Logged Out', '2024-04-03', '10:21:21', 'inactive'),
(157, 3, 'ict jon Logged In', '2024-04-03', '10:21:27', 'inactive'),
(158, 3, 'Edited User: ict jon', '2024-04-03', '10:21:45', 'inactive'),
(159, 3, 'Edited User: ict jon', '2024-04-03', '10:21:57', 'inactive'),
(160, 3, 'ict jon Logged In', '2024-04-03', '10:23:05', 'inactive'),
(161, 3, 'ict jon Logged Out', '2024-04-03', '10:23:35', 'inactive'),
(162, 3, 'Deleted User, User ID: 13', '2024-04-03', '10:38:20', 'inactive'),
(163, 3, 'Deleted User, User ID: 12', '2024-04-03', '10:38:23', 'inactive'),
(164, 3, 'Deleted User, User ID: 11', '2024-04-03', '10:38:33', 'inactive'),
(165, 3, 'Deleted User, User ID: 5', '2024-04-03', '10:39:10', 'inactive'),
(166, 3, 'Edited User: ict aj', '2024-04-03', '10:39:18', 'inactive'),
(167, 3, 'Edited User: ict trainee', '2024-04-03', '10:39:22', 'inactive'),
(168, 3, 'Edited User: geng', '2024-04-03', '10:39:25', 'inactive'),
(169, 3, 'Edited User: geng', '2024-04-03', '10:39:29', 'inactive'),
(170, 3, 'Edited User: 213', '2024-04-03', '10:39:32', 'inactive'),
(171, 3, 'Edited User: ict test', '2024-04-03', '10:39:45', 'inactive'),
(172, 3, 'Edited User: ict test', '2024-04-03', '10:39:51', 'inactive'),
(173, 3, 'Edited User: ict test', '2024-04-03', '10:39:59', 'inactive'),
(174, 3, 'Deleted User, User ID: 1', '2024-04-03', '10:45:41', 'inactive'),
(175, 3, 'Edited User: ict michael', '2024-04-03', '10:46:11', 'inactive'),
(176, 3, 'Edited User: ict michael\'', '2024-04-03', '10:46:16', 'inactive'),
(177, 3, 'Edited User: ict michael', '2024-04-03', '10:46:29', 'inactive'),
(178, 3, 'Edited User: ict michael', '2024-04-03', '10:46:40', 'inactive'),
(179, 3, 'Edited User: ict michael', '2024-04-03', '10:46:55', 'inactive'),
(180, 3, 'Edited User: ict michael', '2024-04-03', '10:53:32', 'inactive'),
(181, 3, 'Deleted User, User ID: 1', '2024-04-03', '10:53:36', 'inactive'),
(182, 3, 'Edited User: ict michael', '2024-04-03', '10:53:40', 'inactive'),
(183, 3, 'Edited User: ict michaels', '2024-04-03', '10:53:43', 'inactive'),
(184, 3, 'Edited User: ict micheal', '2024-04-03', '10:53:57', 'inactive'),
(185, 3, 'Cleared all time logs', '2024-04-03', '10:55:05', 'inactive'),
(186, 3, 'Deleted School, id: 123', '2024-04-03', '11:08:19', 'inactive'),
(187, 3, 'Added School 123', '2024-04-03', '11:10:40', 'inactive'),
(188, 3, 'Deleted School, id: 123', '2024-04-03', '11:10:43', 'inactive'),
(189, 3, 'Deleted School, id: 123123', '2024-04-03', '11:12:39', 'inactive'),
(190, 3, 'Deleted School, id: 123', '2024-04-03', '11:13:24', 'inactive'),
(191, 3, 'ict jon Logged Out', '2024-04-03', '13:08:01', 'inactive'),
(192, 3, 'ict jon Logged In', '2024-04-03', '13:08:06', 'inactive'),
(193, 3, 'Added User test1234', '2024-04-03', '14:39:25', 'inactive'),
(194, 3, 'Added User ict michael', '2024-04-03', '14:40:05', 'inactive'),
(195, 3, 'ict jon Logged Out', '2024-04-03', '14:43:06', 'inactive'),
(196, 3, 'ict jon Logged In', '2024-04-03', '14:43:10', 'inactive'),
(197, 3, 'ict jon Logged Out', '2024-04-03', '14:43:26', 'inactive'),
(198, 4, 'ict kev Logged In', '2024-04-03', '14:43:30', 'inactive'),
(199, 3, 'ict jon Logged In', '2024-04-03', '14:52:07', 'inactive'),
(200, 3, 'ict jon Logged Out', '2024-04-03', '14:55:35', 'inactive'),
(201, 4, 'ict kev Logged Out', '2024-04-03', '15:57:04', 'inactive'),
(202, 1, 'ict micheal Logged In', '2024-04-03', '15:57:13', 'inactive'),
(203, 1, 'Edited User: ict micheal', '2024-04-03', '15:58:32', 'inactive'),
(204, 1, 'Edited User: ict marlon', '2024-04-03', '15:58:35', 'inactive'),
(205, 1, 'Edited User: ict jon', '2024-04-03', '15:58:37', 'inactive'),
(206, 1, 'Edited User: ict jon', '2024-04-03', '15:58:40', 'inactive'),
(207, 1, 'Edited User: ict kev', '2024-04-03', '15:58:42', 'inactive'),
(208, 1, 'Edited User: ict aj', '2024-04-03', '15:58:44', 'inactive'),
(209, 1, 'Edited User: ict trainee', '2024-04-03', '15:58:47', 'inactive'),
(210, 1, 'Edited User: geng', '2024-04-03', '15:58:49', 'inactive'),
(211, 1, 'Edited User: ict test', '2024-04-03', '15:59:01', 'inactive'),
(212, 1, 'Edited User: 213', '2024-04-03', '15:59:04', 'inactive'),
(213, 1, 'Edited User: test1234', '2024-04-03', '15:59:12', 'inactive'),
(214, 1, 'ict micheal Logged Out', '2024-04-03', '16:00:16', 'inactive'),
(215, 3, 'ict jon Logged In', '2024-04-03', '16:00:20', 'inactive'),
(216, 3, 'Cleared all time logs', '2024-04-03', '16:00:27', 'inactive'),
(217, 3, 'Added School 123', '2024-04-03', '16:01:00', 'inactive'),
(218, 3, 'Edited School, id: 16', '2024-04-03', '16:01:04', 'inactive'),
(219, 3, 'Deleted School, id: 123', '2024-04-03', '16:01:07', 'inactive'),
(220, 3, 'Edited Issuance 2024-2-19-1055112', '2024-04-03', '16:03:05', 'inactive'),
(221, 3, 'Edited Issuance 2024-2-19-10548', '2024-04-03', '16:03:09', 'inactive'),
(222, 3, 'ict jon Logged Out', '2024-04-03', '16:30:47', 'inactive'),
(223, 3, 'ict jon Logged In', '2024-04-04', '11:20:48', 'inactive'),
(224, 3, 'ict jon Logged Out', '2024-04-04', '16:31:11', 'inactive'),
(225, 3, 'ict jon Logged In', '2024-04-08', '09:16:55', 'inactive'),
(226, 3, 'Edited User: ict micheal', '2024-04-08', '09:54:15', 'inactive'),
(227, 3, 'Edited User: ict jon', '2024-04-08', '09:54:21', 'inactive'),
(228, 3, 'ict jon Logged Out', '2024-04-08', '09:54:25', 'inactive'),
(229, 3, 'ict jon Logged In', '2024-04-08', '09:54:29', 'inactive'),
(230, 3, 'Edited User: ict micheal', '2024-04-08', '09:55:21', 'inactive'),
(231, 3, 'Edited User: ict jon', '2024-04-08', '09:55:24', 'inactive'),
(232, 3, 'ict jon Logged Out', '2024-04-08', '09:55:30', 'inactive'),
(233, 3, 'ict jon Logged In', '2024-04-08', '09:55:34', 'inactive'),
(234, 3, 'Edited User: ict micheal', '2024-04-08', '12:25:20', 'inactive'),
(235, 3, 'Edited User: ict micheal', '2024-04-08', '15:39:37', 'inactive'),
(236, 3, 'Edited User: ict micheal', '2024-04-08', '15:49:54', 'inactive'),
(237, 3, 'ict jon Logged Out', '2024-04-11', '12:50:36', 'inactive'),
(238, 3, 'ict jon Logged In', '2024-04-11', '12:56:04', 'inactive'),
(239, 3, 'ict jon Logged Out', '2024-04-11', '12:57:17', 'inactive'),
(240, 3, 'ict jon Logged In', '2024-04-11', '13:52:42', 'inactive'),
(242, 3, 'Edited Issuance 2024-2-19-1055112', '2024-04-11', '14:27:04', 'inactive'),
(248, 3, 'Edited User: ict jon', '2024-04-11', '16:25:34', 'inactive'),
(249, 3, 'Edited User: ict micheal', '2024-04-11', '16:25:38', 'inactive'),
(250, 3, 'Edited User: ict micheal', '2024-04-11', '16:25:41', 'inactive'),
(251, 3, 'Edited User: ict micheal', '2024-04-11', '16:27:16', 'inactive'),
(252, 3, 'Edited User: ict jon', '2024-04-11', '16:27:22', 'inactive'),
(253, 3, 'Edited User: ict jon', '2024-04-11', '16:27:28', 'inactive'),
(254, 3, 'Edited User: ict micheal', '2024-04-11', '16:29:23', 'inactive'),
(255, 3, 'Edited User: ict michaelserban', '2024-04-11', '16:29:37', 'inactive'),
(256, 3, 'Edited User: ict michael', '2024-04-11', '16:29:52', 'inactive'),
(257, 3, 'Edited User: ict michael', '2024-04-11', '16:29:55', 'inactive'),
(258, 3, 'Edited User: ict michael', '2024-04-11', '16:30:03', 'inactive'),
(259, 3, 'Edited User: test1234', '2024-04-11', '16:30:06', 'inactive'),
(260, 3, 'Edited User: 213', '2024-04-11', '16:30:10', 'inactive'),
(261, 3, 'Deleted User, User ID: 12', '2024-04-11', '16:30:13', 'inactive'),
(262, 3, 'Deleted User, User ID: 13', '2024-04-11', '16:30:15', 'inactive'),
(263, 3, 'Deleted User, User ID: 14', '2024-04-11', '16:30:17', 'inactive'),
(264, 3, 'Deleted User, User ID: 15', '2024-04-11', '16:30:19', 'inactive'),
(265, 3, 'Edited User: ict michaels', '2024-04-11', '16:30:32', 'inactive'),
(266, 3, 'Deleted User, User ID: 11', '2024-04-11', '16:30:38', 'inactive'),
(267, 3, 'Deleted User, User ID: 1', '2024-04-11', '16:35:19', 'inactive'),
(268, 3, 'Deleted User, User ID: 2', '2024-04-11', '16:35:26', 'inactive'),
(269, 3, 'Added User ict michael1', '2024-04-11', '16:41:30', 'inactive'),
(270, 3, 'Deleted User, User ID: 3', '2024-04-11', '16:43:55', 'inactive'),
(271, 3, 'Edited User: ict jon', '2024-04-11', '16:44:07', 'inactive'),
(272, 3, 'Cleared all time logs', '2024-04-11', '16:44:23', 'inactive'),
(273, 3, 'Edited User: ict jon', '2024-04-12', '14:48:28', 'inactive'),
(274, 3, 'Edited User: ict trainee', '2024-04-12', '14:48:37', 'inactive'),
(275, 3, 'Cleared all time logs', '2024-04-12', '14:48:41', 'active'),
(276, 3, 'ict jon Logged Out', '2024-04-12', '15:33:08', 'active'),
(277, 3, 'ict jon Logged In', '2024-04-12', '15:33:18', 'active'),
(279, 3, 'Changed account info: ict jon', '2024-04-12', '15:38:29', 'active'),
(280, 3, 'Changed account info: ict jon', '2024-04-12', '15:47:34', 'active'),
(281, 3, 'ict jon Logged Out', '2024-04-12', '15:47:39', 'active'),
(282, 3, 'ict jon Logged In', '2024-04-12', '15:47:47', 'active'),
(283, 3, 'Changed account info: ict jon', '2024-04-12', '16:00:56', 'active'),
(284, 3, 'Changed account info: ict jon', '2024-04-12', '16:04:37', 'active'),
(285, 3, 'Changed account info: ict jon', '2024-04-12', '16:12:13', 'active'),
(286, 3, 'ict jon Logged Out', '2024-04-12', '16:12:14', 'active'),
(287, 3, 'ict jon Logged In', '2024-04-12', '16:12:45', 'active'),
(288, 3, 'Changed account info: ict jon', '2024-04-12', '16:16:21', 'active'),
(289, 3, 'ict jon Logged Out', '2024-04-12', '16:16:22', 'active'),
(290, 3, 'ict jon Logged In', '2024-04-12', '16:19:17', 'active'),
(291, 3, 'Changed account info: ict jon', '2024-04-12', '16:19:28', 'active'),
(292, 3, 'ict jon Logged Out', '2024-04-12', '16:19:38', 'active'),
(293, 3, 'ict jon Logged In', '2024-04-12', '16:19:50', 'active'),
(294, 3, 'Changed account info: ict jon', '2024-04-12', '16:23:58', 'active'),
(295, 3, 'Changed account info: ict jon', '2024-04-12', '16:24:59', 'active'),
(296, 3, 'ict jon Logged Out', '2024-04-12', '16:25:04', 'active'),
(297, 3, 'ict jon Logged In', '2024-04-12', '16:26:51', 'active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `timelogvw`
-- (See below for the actual view)
--
CREATE TABLE `timelogvw` (
`id` int(11)
,`user_id` int(11)
,`username` varchar(50)
,`action` longtext
,`date` date
,`time` time
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `transparencyfilesvw`
-- (See below for the actual view)
--
CREATE TABLE `transparencyfilesvw` (
`id` int(11)
,`type` varchar(50)
,`title` varchar(200)
,`link` longtext
,`date` datetime
,`publish_date` date
,`closing_date` date
,`awarded_to` varchar(200)
,`reference_number` varchar(20)
,`procurement_mode` varchar(50)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `userstbl`
--

CREATE TABLE `userstbl` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `user_profile` longtext NOT NULL,
  `user_department` varchar(50) NOT NULL,
  `user_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userstbl`
--

INSERT INTO `userstbl` (`user_id`, `user_username`, `user_email`, `user_password`, `user_type`, `user_profile`, `user_department`, `user_status`) VALUES
(1, 'ict michaels', 'michaelangelo.serban@deped.gov.ph', '$2y$10$.siyhwNuX4obMqcUOGmxiu1CJEKBJT6VgPkEGhy1Wl5FUMdjgVheW', 'superadmin', 'default.png', 'ICT', 'inactive'),
(2, 'ict marlon', 'marlon.cotanda@deped.gov.ph', '$2y$10$qwY18OMgm6m423FIannQtebccFQ/mm1eAbPh.bANKK8VPGIfzKIPa', 'superadmin', 'default.png', 'ICT', 'inactive'),
(3, 'ict jon', 'jon.raguini@deped.gov.ph', '$2y$10$YYXku9G4wsw4RaItEuAaYOwqh8sbxq3UIWk3gdQ/RQeWNubAtQsLO', 'superadmin', 'default.png', 'ICT', 'active'),
(4, 'ict kev', 'kevin.flogen@deped.gov.ph', '$2y$10$C2Xgo1Vhk5YRx7g95NasQu7GCDRFJR4CRxtmwBCXXMByPnH5W9nx2', 'admin', 'default.png', 'ICT', 'active'),
(5, 'ict aj', 'albertjames.macaraeg@deped.gov.ph', '$2y$10$vRCUeEkyUCgALNGDmBGHuOQVFHgfxoQDnYMKYpxpMkiLTaO45gQzm', 'superadmin', 'default.png', 'ICT', 'active'),
(10, 'ict trainee', 'trainee@deped.gov.ph', '$2y$10$AH1DnrzLd9d0q1kshH1nxuPwJwq1L65XtBZ1Gi66zpd5W0BnqPY0y', 'trainee', 'default.png', 'ICT', 'active'),
(11, 'geng', 'test@test.com', '$2y$10$y9IZSP5W5jpClF3TgKWnEOm8huTtWHlgVG1W125EuEVhIlr8U5ity', 'trainee', 'default.png', 'ICT', 'inactive'),
(12, 'ict test', 'test@1234.com', '$2y$10$49fyGIzoXs1YsMEh9t0FdOXoyyq9iRhQhC91yxvQnjFt./dx0B1Za', 'trainee', 'default.png', 'ICT', 'inactive'),
(13, '213', 'test@123.com', '$2y$10$Qv/91meILCSf4ioFr7ZjqeLQt7zlPArXAcDkQ5/S71bOWInEbnu9i', 'trainee', 'default.png', 'ICT', 'inactive'),
(14, 'test1234', 'test@tes123t.com', '$2y$10$7XUQsIoolnAXzHJw6WVSFewWeqDTdnB9cml0Ri170Ht0hJExCC0fC', 'trainee', 'default.png', 'ICT', 'inactive'),
(15, 'ict michael', '123@123.com', '$2y$10$jhKrz.uEMOF2ccXxrAILD.yFOjFxOwGrzQcjupguWlw/fifdV9obe', 'trainee', 'default.png', 'ICT', 'inactive'),
(16, 'ict michael1', 'michaelangelo.serban@deped.gov.ph1', '$2y$10$QxqI7o5d2aSPrq.N5QAguuGuKogAi0R8BRC/Aj30RJ8W5ySfQeob2', 'trainee', 'default.png', 'ICT', 'active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `usersvw`
-- (See below for the actual view)
--
CREATE TABLE `usersvw` (
`id` int(11)
,`username` varchar(50)
,`email` varchar(50)
,`type` varchar(20)
,`password` longtext
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Structure for view `bacfilesvw`
--
DROP TABLE IF EXISTS `bacfilesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bacfilesvw`  AS SELECT `bacfilestbl`.`bacfile_id` AS `id`, `bacfilestbl`.`bacfile_type` AS `type`, `bacfilestbl`.`bacfile_title` AS `title`, `bacfilestbl`.`bacfile_link` AS `link`, `bacfilestbl`.`bacfile_date` AS `date`, `bacfilestbl`.`bacfile_procurementYear` AS `procurement_year`, `bacfilestbl`.`bacfile_procurementType` AS `procurement_type`, `bacfilestbl`.`bacfile_publishDate` AS `publish_date`, `bacfilestbl`.`bacfile_closingDate` AS `closing_date`, `bacfilestbl`.`bacfile_awardedTo` AS `awarded_to`, `bacfilestbl`.`bacfile_referenceNum` AS `reference_number`, `bacfilestbl`.`bacfile_procurementMode` AS `procurement_mode`, `bacfilestbl`.`bacfile_status` AS `status` FROM `bacfilestbl` WHERE `bacfilestbl`.`bacfile_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `carouselvw`
--
DROP TABLE IF EXISTS `carouselvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carouselvw`  AS SELECT `imagestbl`.`image_id` AS `id`, `imagestbl`.`image_name` AS `name`, `imagestbl`.`image_title` AS `title`, `imagestbl`.`image_description` AS `description`, `imagestbl`.`image_type` AS `type`, `imagestbl`.`image_status` AS `status` FROM `imagestbl` WHERE `imagestbl`.`image_type` = 'carousel' AND `imagestbl`.`image_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `dailyvisitorsvw`
--
DROP TABLE IF EXISTS `dailyvisitorsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dailyvisitorsvw`  AS SELECT `dailyvisitstbl`.`daily_visitors_ip_address` AS `ip address`, `dailyvisitstbl`.`daily_visitors_date` AS `date`, `dailyvisitstbl`.`daily_visitors_status` AS `status` FROM `dailyvisitstbl` WHERE `dailyvisitstbl`.`daily_visitors_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `departmentsvw`
--
DROP TABLE IF EXISTS `departmentsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `departmentsvw`  AS SELECT `departmentstbl`.`department_id` AS `id`, `departmentstbl`.`department_name` AS `name`, `departmentstbl`.`department_contact` AS `contact`, `departmentstbl`.`department_email` AS `email`, `departmentstbl`.`department_status` AS `status` FROM `departmentstbl` WHERE `departmentstbl`.`department_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `downloadablefilesvw`
--
DROP TABLE IF EXISTS `downloadablefilesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `downloadablefilesvw`  AS SELECT `filestbl`.`file_id` AS `id`, `filestbl`.`file_type` AS `type`, `filestbl`.`file_title` AS `title`, `filestbl`.`file_link` AS `link`, `filestbl`.`file_date` AS `date`, `filestbl`.`file_status` AS `status` FROM `filestbl` WHERE `filestbl`.`file_type` = 'downloadable' AND `filestbl`.`file_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `elemschoolsvw`
--
DROP TABLE IF EXISTS `elemschoolsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `elemschoolsvw`  AS SELECT `schoolstbl`.`school_id` AS `id`, `schoolstbl`.`school_name` AS `name`, `schoolstbl`.`school_address` AS `address`, `schoolstbl`.`school_principal` AS `principal`, `schoolstbl`.`school_contact` AS `contact`, `schoolstbl`.`school_link` AS `link`, `schoolstbl`.`school_email` AS `email`, `schoolstbl`.`school_district` AS `district`, `schoolstbl`.`school_type` AS `type`, `schoolstbl`.`school_status` AS `status` FROM `schoolstbl` WHERE `schoolstbl`.`school_type` = 'ELEMENTARY SCHOOLS' AND `schoolstbl`.`school_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `filesvw`
--
DROP TABLE IF EXISTS `filesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `filesvw`  AS SELECT `filestbl`.`file_id` AS `id`, `filestbl`.`file_type` AS `type`, `filestbl`.`file_title` AS `title`, `filestbl`.`file_link` AS `link`, `filestbl`.`file_department` AS `department`, `filestbl`.`file_date` AS `date`, `filestbl`.`file_status` AS `status` FROM `filestbl` WHERE `filestbl`.`file_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `highschoolsvw`
--
DROP TABLE IF EXISTS `highschoolsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `highschoolsvw`  AS SELECT `schoolstbl`.`school_id` AS `id`, `schoolstbl`.`school_name` AS `name`, `schoolstbl`.`school_address` AS `address`, `schoolstbl`.`school_principal` AS `principal`, `schoolstbl`.`school_contact` AS `contact`, `schoolstbl`.`school_link` AS `link`, `schoolstbl`.`school_email` AS `email`, `schoolstbl`.`school_district` AS `district`, `schoolstbl`.`school_type` AS `type`, `schoolstbl`.`school_status` AS `status` FROM `schoolstbl` WHERE `schoolstbl`.`school_type` = 'HighSchool' AND `schoolstbl`.`school_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `issuancescategoryvw`
--
DROP TABLE IF EXISTS `issuancescategoryvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `issuancescategoryvw`  AS SELECT `issuancescategorytbl`.`issuances_type` AS `type`, `issuancescategorytbl`.`issuances_type_name` AS `name`, `issuancescategorytbl`.`issuances_status` AS `status` FROM `issuancescategorytbl` WHERE `issuancescategorytbl`.`issuances_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `issuancesvw`
--
DROP TABLE IF EXISTS `issuancesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `issuancesvw`  AS SELECT `issuancestbl`.`issuances_id` AS `id`, `issuancestbl`.`tracking_number` AS `tracking_number`, `issuancestbl`.`issuances_title` AS `title`, `issuancestbl`.`issuances_link` AS `link`, `issuancestbl`.`issuances_number` AS `number`, `issuancestbl`.`issuances_date` AS `date`, `issuancestbl`.`issuances_type` AS `type`, `issuancestbl`.`issuances_status` AS `status` FROM `issuancestbl` WHERE `issuancestbl`.`issuances_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `jhsschoolsvw`
--
DROP TABLE IF EXISTS `jhsschoolsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jhsschoolsvw`  AS SELECT `schoolstbl`.`school_id` AS `id`, `schoolstbl`.`school_name` AS `name`, `schoolstbl`.`school_address` AS `address`, `schoolstbl`.`school_principal` AS `principal`, `schoolstbl`.`school_contact` AS `contact`, `schoolstbl`.`school_link` AS `link`, `schoolstbl`.`school_email` AS `email`, `schoolstbl`.`school_district` AS `district`, `schoolstbl`.`school_type` AS `type`, `schoolstbl`.`school_status` AS `status` FROM `schoolstbl` WHERE `schoolstbl`.`school_type` = 'JUNIOR HIGH SCHOOLS' AND `schoolstbl`.`school_shsAvailability` = 'no' AND `schoolstbl`.`school_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `materialfilesvw`
--
DROP TABLE IF EXISTS `materialfilesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `materialfilesvw`  AS SELECT `filestbl`.`file_id` AS `id`, `filestbl`.`file_type` AS `type`, `filestbl`.`file_title` AS `title`, `filestbl`.`file_link` AS `link`, `filestbl`.`file_department` AS `department`, `filestbl`.`file_date` AS `date`, `filestbl`.`file_status` AS `status` FROM `filestbl` WHERE `filestbl`.`file_type` = 'material' AND `filestbl`.`file_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `officesvw`
--
DROP TABLE IF EXISTS `officesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `officesvw`  AS SELECT `officestbl`.`offices_id` AS `id`, `departmentstbl`.`department_name` AS `department`, `officestbl`.`employee_name` AS `name`, `officestbl`.`employee_picture` AS `picture`, `officestbl`.`employee_office` AS `office`, `officestbl`.`employee_position` AS `position`, `officestbl`.`employee_post` AS `post`, `officestbl`.`employee_type` AS `type`, `officestbl`.`employee_email` AS `email`, `officestbl`.`employee_status` AS `status` FROM (`officestbl` join `departmentstbl` on(`officestbl`.`department_id` = `departmentstbl`.`department_id`)) WHERE `officestbl`.`employee_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `procurementfilesvw`
--
DROP TABLE IF EXISTS `procurementfilesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `procurementfilesvw`  AS SELECT `bacfilestbl`.`bacfile_id` AS `id`, `bacfilestbl`.`bacfile_type` AS `type`, `bacfilestbl`.`bacfile_title` AS `title`, `bacfilestbl`.`bacfile_link` AS `link`, `bacfilestbl`.`bacfile_date` AS `date`, `bacfilestbl`.`bacfile_procurementYear` AS `pyear`, `bacfilestbl`.`bacfile_procurementType` AS `ptype`, `bacfilestbl`.`bacfile_status` AS `status` FROM `bacfilestbl` WHERE `bacfilestbl`.`bacfile_type` = 'procurement' AND `bacfilestbl`.`bacfile_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `schoolsvw`
--
DROP TABLE IF EXISTS `schoolsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schoolsvw`  AS SELECT `schoolstbl`.`schooltbl_id` AS `school_id`, `schoolstbl`.`school_id` AS `id`, `schoolstbl`.`school_name` AS `name`, `schoolstbl`.`school_address` AS `address`, `schoolstbl`.`school_principal` AS `principal`, `schoolstbl`.`school_contact` AS `contact`, `schoolstbl`.`school_link` AS `link`, `schoolstbl`.`school_email` AS `email`, `schoolstbl`.`school_district` AS `district`, `schoolstbl`.`school_type` AS `type`, `schoolstbl`.`school_shsAvailability` AS `shs_availability`, `schoolstbl`.`school_spedAvailablity` AS `sped_availability`, `schoolstbl`.`school_status` AS `status` FROM `schoolstbl` WHERE `schoolstbl`.`school_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `servicesvw`
--
DROP TABLE IF EXISTS `servicesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `servicesvw`  AS SELECT `servicestbl`.`services_id` AS `id`, `servicestbl`.`services_title` AS `title`, `servicestbl`.`services_description` AS `description`, `servicestbl`.`services_link` AS `link`, `servicestbl`.`services_status` AS `status`, `servicestbl`.`services_icon` AS `icon` FROM `servicestbl` WHERE `servicestbl`.`services_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `shsschoolsvw`
--
DROP TABLE IF EXISTS `shsschoolsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `shsschoolsvw`  AS SELECT `schoolstbl`.`school_id` AS `id`, `schoolstbl`.`school_name` AS `name`, `schoolstbl`.`school_address` AS `address`, `schoolstbl`.`school_principal` AS `principal`, `schoolstbl`.`school_contact` AS `contact`, `schoolstbl`.`school_link` AS `link`, `schoolstbl`.`school_email` AS `email`, `schoolstbl`.`school_district` AS `district`, `schoolstbl`.`school_type` AS `type`, `schoolstbl`.`school_status` AS `status` FROM `schoolstbl` WHERE `schoolstbl`.`school_type` = 'JUNIOR HIGH SCHOOLS' AND `schoolstbl`.`school_shsAvailability` = 'yes' AND `schoolstbl`.`school_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `socialmediavw`
--
DROP TABLE IF EXISTS `socialmediavw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `socialmediavw`  AS SELECT `socialmediatbl`.`socialMedia_id` AS `id`, `socialmediatbl`.`socialMedia_type` AS `type`, `socialmediatbl`.`socialMedia_link` AS `link`, `socialmediatbl`.`socialMedia_title` AS `title`, `socialmediatbl`.`socialMedia_post` AS `post`, `socialmediatbl`.`socialMedia_status` AS `status` FROM `socialmediatbl` WHERE `socialmediatbl`.`socialMedia_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `spedschoolsvw`
--
DROP TABLE IF EXISTS `spedschoolsvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `spedschoolsvw`  AS SELECT `schoolstbl`.`school_id` AS `id`, `schoolstbl`.`school_name` AS `name`, `schoolstbl`.`school_address` AS `address`, `schoolstbl`.`school_principal` AS `principal`, `schoolstbl`.`school_contact` AS `contact`, `schoolstbl`.`school_link` AS `link`, `schoolstbl`.`school_email` AS `email`, `schoolstbl`.`school_district` AS `district`, `schoolstbl`.`school_type` AS `type`, `schoolstbl`.`school_status` AS `status` FROM `schoolstbl` WHERE `schoolstbl`.`school_spedAvailablity` = 'yes' AND `schoolstbl`.`school_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `timelogvw`
--
DROP TABLE IF EXISTS `timelogvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `timelogvw`  AS SELECT `timelogtbl`.`time_id` AS `id`, `userstbl`.`user_id` AS `user_id`, `userstbl`.`user_username` AS `username`, `timelogtbl`.`log_action` AS `action`, `timelogtbl`.`log_date` AS `date`, `timelogtbl`.`log_time` AS `time`, `timelogtbl`.`log_status` AS `status` FROM (`timelogtbl` join `userstbl` on(`timelogtbl`.`user_id` = `userstbl`.`user_id`)) WHERE `timelogtbl`.`log_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `transparencyfilesvw`
--
DROP TABLE IF EXISTS `transparencyfilesvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transparencyfilesvw`  AS SELECT `bacfilestbl`.`bacfile_id` AS `id`, `bacfilestbl`.`bacfile_type` AS `type`, `bacfilestbl`.`bacfile_title` AS `title`, `bacfilestbl`.`bacfile_link` AS `link`, `bacfilestbl`.`bacfile_date` AS `date`, `bacfilestbl`.`bacfile_publishDate` AS `publish_date`, `bacfilestbl`.`bacfile_closingDate` AS `closing_date`, `bacfilestbl`.`bacfile_awardedTo` AS `awarded_to`, `bacfilestbl`.`bacfile_referenceNum` AS `reference_number`, `bacfilestbl`.`bacfile_procurementMode` AS `procurement_mode`, `bacfilestbl`.`bacfile_status` AS `status` FROM `bacfilestbl` WHERE `bacfilestbl`.`bacfile_type` = 'transparency' AND `bacfilestbl`.`bacfile_status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `usersvw`
--
DROP TABLE IF EXISTS `usersvw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usersvw`  AS SELECT `userstbl`.`user_id` AS `id`, `userstbl`.`user_username` AS `username`, `userstbl`.`user_email` AS `email`, `userstbl`.`user_type` AS `type`, `userstbl`.`user_password` AS `password`, `userstbl`.`user_status` AS `status` FROM `userstbl` WHERE `userstbl`.`user_status` = 'active' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bacfilestbl`
--
ALTER TABLE `bacfilestbl`
  ADD PRIMARY KEY (`bacfile_id`);

--
-- Indexes for table `dailyvisitstbl`
--
ALTER TABLE `dailyvisitstbl`
  ADD PRIMARY KEY (`daily_visitors_id`);

--
-- Indexes for table `departmentstbl`
--
ALTER TABLE `departmentstbl`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `filestbl`
--
ALTER TABLE `filestbl`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `imagestbl`
--
ALTER TABLE `imagestbl`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `issuancescategorytbl`
--
ALTER TABLE `issuancescategorytbl`
  ADD PRIMARY KEY (`issuances_type`);

--
-- Indexes for table `issuancestbl`
--
ALTER TABLE `issuancestbl`
  ADD PRIMARY KEY (`issuances_id`),
  ADD KEY `issuestbl_issuances_typeFK` (`issuances_type`);

--
-- Indexes for table `officestbl`
--
ALTER TABLE `officestbl`
  ADD PRIMARY KEY (`offices_id`),
  ADD KEY `officestbl_department_idFK` (`department_id`);

--
-- Indexes for table `schoolstbl`
--
ALTER TABLE `schoolstbl`
  ADD PRIMARY KEY (`schooltbl_id`);

--
-- Indexes for table `servicestbl`
--
ALTER TABLE `servicestbl`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `socialmediatbl`
--
ALTER TABLE `socialmediatbl`
  ADD PRIMARY KEY (`socialMedia_id`);

--
-- Indexes for table `timelogtbl`
--
ALTER TABLE `timelogtbl`
  ADD PRIMARY KEY (`time_id`),
  ADD KEY `timelogtbl_user_idFK` (`user_id`);

--
-- Indexes for table `userstbl`
--
ALTER TABLE `userstbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bacfilestbl`
--
ALTER TABLE `bacfilestbl`
  MODIFY `bacfile_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailyvisitstbl`
--
ALTER TABLE `dailyvisitstbl`
  MODIFY `daily_visitors_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filestbl`
--
ALTER TABLE `filestbl`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `imagestbl`
--
ALTER TABLE `imagestbl`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issuancestbl`
--
ALTER TABLE `issuancestbl`
  MODIFY `issuances_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3814;

--
-- AUTO_INCREMENT for table `officestbl`
--
ALTER TABLE `officestbl`
  MODIFY `offices_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolstbl`
--
ALTER TABLE `schoolstbl`
  MODIFY `schooltbl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `servicestbl`
--
ALTER TABLE `servicestbl`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socialmediatbl`
--
ALTER TABLE `socialmediatbl`
  MODIFY `socialMedia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timelogtbl`
--
ALTER TABLE `timelogtbl`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `userstbl`
--
ALTER TABLE `userstbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issuancestbl`
--
ALTER TABLE `issuancestbl`
  ADD CONSTRAINT `issuestbl_issuances_typeFK` FOREIGN KEY (`issuances_type`) REFERENCES `issuancescategorytbl` (`issuances_type`);

--
-- Constraints for table `officestbl`
--
ALTER TABLE `officestbl`
  ADD CONSTRAINT `officestbl_department_idFK` FOREIGN KEY (`department_id`) REFERENCES `departmentstbl` (`department_id`);

--
-- Constraints for table `timelogtbl`
--
ALTER TABLE `timelogtbl`
  ADD CONSTRAINT `timelogtbl_user_idFK` FOREIGN KEY (`user_id`) REFERENCES `userstbl` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;