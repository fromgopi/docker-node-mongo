create database if not exists `products`;

use `products`;
GRANT all PRIVILEGES on products.* to 'admin'@'%' identified by 'root';
-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `product_details`;
CREATE TABLE `product_details` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(128) DEFAULT NULL,
`price` int(10) DEFAULT NULL,
`requester_id` int(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `resquest_log`;
CREATE TABLE `request_log`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(100) DEFAULT NULL,
  `webservice_name` varchar(100) DEFAULT NULL,
  `input` text,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `createdOn` (`createdOn`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
