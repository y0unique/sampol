--CREATE DATABASE
CREATE DATABASE depedmanila_main;

--CREATE TABLES

--TABLE FOR USERS
CREATE TABLE userstbl(
    user_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_username varchar(50) NOT NULL,
    user_email varchar(50) NOT NULL,
    user_password varchar(50) NOT NULL,
    user_type varchar(20) NOT NULL,
    user_profile longtext NOT NULL,
    user_status varchar(11) NOT NULL DEFAULT 'active'
);

--TABLE FOR TIMELOG
CREATE TABLE timelogtbl(
    time_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id int(11) NOT NULL,
    log_action longtext NOT NULL,
    log_date date NOT NULL,
    log_time time NOT NULL,
    log_status varchar(11) NOT NULL DEFAULT 'active',
    CONSTRAINT timelogtbl_user_idFK	FOREIGN KEY (user_id) REFERENCES userstbl(user_id)
);

--TABLE FOR SOCIAL MEDIA
CREATE TABLE socialmediatbl(
    socialMedia_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    socialMedia_type varchar(50) NOT NULL,
    socialMedia_link longtext NOT NULL,
    socialMedia_title varchar(100) NOT NULL,
    socialMedia_post longtext NOT NULL,
    socialMedia_status varchar(11) NOT NULL DEFAULT 'active'
);

--TABLE FOR SCHOOLS
CREATE TABLE schoolstbl(
    schooltbl_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    school_id varchar(11) NOT NULL,
    school_name varchar(100) NOT NULL,
    school_address varchar(200) NOT NULL,
    school_principal varchar(50) NOT NULL,
    school_contact varchar(30) NOT NULL,
    school_link longtext NOT NULL,
    school_email varchar(50) NOT NULL,
    school_district varchar(5) NOT NULL,
    school_type varchar(20) NOT NULL,
    school_shsAvailability varchar(11) NOT NULL,
    school_spedAvailablity varchar(11) NOT NULL,
    school_status varchar(11) NOT NULL DEFAULT 'active'
);

--TABLE FOR DEPARTMENTS
CREATE TABLE departmentstbl(
    department_id varchar(20) NOT NULL PRIMARY KEY,
    department_name varchar(100) NOT NULL,
    department_contact varchar(30) NOT NULL,
    department_email varchar(50) NOT NULL,
    department_status varchar(11) NOT NULL DEFAULT 'active'
);

--TABLE FOR OFFICES
CREATE TABLE officestbl(
    offices_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_id varchar(20) NOT NULL,
    employee_name varchar(50) NOT NULL,
    employee_picture longtext NOT NULL,
    employee_office varchar(100) NOT NULL,
    employee_position varchar(200) NOT NULL,
    employee_post varchar(50) NOT NULL,
    employee_type varchar(100) NOT NULL,
    employee_email varchar(50) NOT NULL,
    employee_status varchar(11) NOT NULL DEFAULT 'active',
    CONSTRAINT officestbl_department_idFK FOREIGN KEY (department_id) REFERENCES departmentstbl(department_id)
);

--TABLE FOR ISSUANCES CATEGORY
CREATE TABLE issuancescategorytbl(
    issuances_type varchar(20) NOT NULL PRIMARY KEY,
    issuances_type_name varchar(50) NOT NULL,
    issuances_status varchar(11) NOT NULL DEFAULT 'active'
);

--TABLE FOR ISSUANCES
CREATE TABLE issuancestbl(
    issuances_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tracking_number varchar(50) NOT NULL,
    issuances_title varchar(200) NOT NULL,
    issuances_link longtext NOT NULL,
    issuances_number varchar(20) NOT NULL,
    issuances_date date NOT NULL,
    issuances_type varchar(20) NOT NULL,
    issuances_status varchar(11) NOT NULL DEFAULT 'active',
    CONSTRAINT issuestbl_issuances_typeFK	FOREIGN KEY (issuances_type) REFERENCES issuancescategorytbl(issuances_type)
);

--TABLE FOR IMAGES
CREATE TABLE imagestbl(
    image_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    image_name longtext NOT NULL,
    image_title varchar(100) NOT NULL,
    image_description varchar(200) NOT NULL,
    image_type varchar(20) NOT NULL,
    image_status varchar(11) NOT NULL DEFAULT 'active'
);

--TABLE FOR FILES
CREATE TABLE filestbl(
    file_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    file_type varchar(50) NOT NULL,
    file_title varchar(200) NOT NULL,
    file_link longtext NOT NULL,
    file_date datetime NOT NULL DEFAULT current_timestamp(),
    file_department varchar(20) NULL,
    file_publishDate date NULL,
    file_closingDate date NULL,
    file_awardedTo varchar(200) NULL,
    file_referenceNum varchar(20) NULL,
    file_procurementMode varchar(50) NULL,
    file_procurementYear year NULL,
    file_procurementType varchar(10) NULL,
    file_status varchar(11) NOT NULL DEFAULT 'active'
);

--TABLE FOR DAILY VISITORS
CREATE TABLE dailyvisitstbl(
    daily_visitors_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    daily_visitors_ip_address text NOT NULL,
    daily_visitors_date date NOT NULL DEFAULT current_timestamp(),
    daily_visitors_status varchar(11) NOT NULL DEFAULT 'active'
);


--DUMPING DATA INTO TABLES 
--CREATING VIEWS

--carouselvw
CREATE VIEW carouselVW AS
SELECT
    image_id AS "id",
    image_name AS "name",
    image_title AS "title",
    image_description AS "description",
    image_type AS "type",
    image_status AS "status"
FROM imagestbl WHERE image_type = 'carousel' AND image_status = 'active';

--dailyVisitorsVW
CREATE VIEW dailyVisitorsVW AS
SELECT
    daily_visitors_ip_address AS "ip address",
    daily_visitors_visit_date AS "date",
	daily_visitors_visit_status AS "status"
FROM dailyvisitstbl WHERE daily_visitors_visit_status = 'active';

--departmentsvw
CREATE VIEW departmentsVW AS
SELECT
    department_id AS "id",
    department_name AS "name",
    department_contact AS "contact",
    department_email AS "email",
    department_status AS "status"
FROM departmentstbl WHERE department_status = 'active';

--downloadableFilesVW
CREATE VIEW downloadableFilesVW AS
SELECT
    file_id AS "id",
    file_type AS "type",
    file_title AS "title",
    file_link AS "link",
    file_date AS "date",
    file_status AS "status"
FROM filestbl WHERE file_type = 'downloadable' AND file_status = 'active';

--