DROP DATABASE IF EXISTS `51zxw`;
CREATE DATABASE IF NOT EXISTS `51zxw` DEFAULT CHARACTER SET 'UTF8';
USE `51zxw`;
CREATE TABLE IF NOT EXISTS `51zxw_user`(
`id` INT UNSIGNED AUTO_INCREMENT KEY,
`username` VARCHAR(20) NOT NULL UNIQUE,
`password` CHAR(32) NOT NULL,
`email` VARCHAR(50) NOT NULL,
`token` CHAR(32) NOT NULL COMMENT '激活token',
`token_exptime` INT UNSIGNED NOT NULL COMMENT 'token的过期时间',
`regTime` INT UNSIGNED NOT NULL,
`status` TINYINT UNSIGNED DEFAULT 0 COMMENT '0代表未激活，1代表激活'
);

CREATE TABLE IF NOT EXISTS student(
id INT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
age INT NOT NULL,
sex VARCHAR(10)
);
