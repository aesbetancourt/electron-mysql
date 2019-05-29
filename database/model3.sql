SET NAMES utf8 ;
DROP DATABASE IF exists HOTEL1;
CREATE DATABASE IF NOT EXISTS HOTEL;
USE HOTEL;
SET character_set_client = utf8mb4 ;

CREATE TABLE IF NOT EXISTS `restaurant_menu` (
  `id_food` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id_food`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `restaurant_menu` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `vehicle_types` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(15) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `vehicle_types` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id_vehicle` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vehicle`),
  FOREIGN KEY (`vehicle_type`) REFERENCES `vehicle_types` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `vehicles` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `type_guests` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `type_guests` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `places` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `places` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `sys_admins` (
  `admins` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`admins`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `sys_admins` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `turns` (
  `turn_id` varchar(5) NOT NULL,
  `days` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`turn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `turns` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `providers` (
  `provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_type` varchar(20) DEFAULT NULL,
  `provider_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `departments` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) DEFAULT NULL,
  `provider` int(11) DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `provider` (`provider`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`provider`) REFERENCES `providers` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `departments` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `internal_staff` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `department` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `turn` varchar(15) DEFAULT NULL,
  `super_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `department` (`department`),
  KEY `turn` (`turn`),
  KEY `super_id` (`super_id`),
  CONSTRAINT `internal_staff_ibfk_1` FOREIGN KEY (`department`) REFERENCES `departments` (`dept_id`) ON DELETE SET NULL,
  CONSTRAINT `internal_staff_ibfk_2` FOREIGN KEY (`turn`) REFERENCES `turns` (`turn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `internal_staff` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `external_staff` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `facility` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `external_staff` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `staff_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`type_id`),
  CONSTRAINT `staff_type_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `external_staff` (`emp_id`),
  CONSTRAINT `staff_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `internal_staff` (`emp_id`),
  CONSTRAINT `staff_type_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `internal_staff` (`emp_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `staff_type` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `invoice` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `payments_type` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `payments_type` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`payment_type`) REFERENCES `payments_type` (`payment_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `payments` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS  `client_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(25) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `client_type` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS  `client` (
  `client_id` int(11) AUTO_INCREMENT,
  `client_type` varchar(10) NOT NULL REFERENCES `client_type` (`type_id`),
  `documento` varchar(11) NOT NULL,
  `nombres` varchar(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cod_postal` int(8) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
LOCK TABLES `client` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS `rooms` (
  `room_id` int(11) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `room_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `rooms` WRITE;
UNLOCK TABLES;
CREATE TABLE IF NOT EXISTS  `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_bk` date DEFAULT NULL,
  `end_bk` date DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `room_id` (`room_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE,
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `booking` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(10) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `provider` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `provider` (`provider`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`provider`) REFERENCES `providers` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `events` WRITE;
UNLOCK TABLES;


CREATE TABLE IF NOT EXISTS `facilities` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_type` varchar(20) DEFAULT NULL,
  `staff_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`place_id`),
  KEY `staff_type` (`staff_type`),
  CONSTRAINT `facilities_ibfk_1` FOREIGN KEY (`staff_type`) REFERENCES `staff_type` (`type_id`) ON DELETE SET NULL,
  CONSTRAINT `facilities_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `facilities` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `guest` (
  `guest_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `edad` varchar(11)  NOT NULL,
  `documento` varchar(11) NOT NULL,
  PRIMARY KEY (`guest_id`),
  KEY `room_id` (`room_id`),
  KEY `type` (`type`),
  CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE,
  CONSTRAINT `guest_ibfk_2` FOREIGN KEY (`type`) REFERENCES `type_guests` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `guest` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `hotel_restaurant` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `hotel_restaurant` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `parking` (
  `stall_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_room` int(11) NOT NULL,
  PRIMARY KEY (`stall_id`),
  FOREIGN KEY (`id_room`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `parking` WRITE;
UNLOCK TABLES;



CREATE TABLE IF NOT EXISTS `promos` (
  `promo_id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`promo_id`),
  CONSTRAINT `promos_ibfk_1` FOREIGN KEY (`promo_id`) REFERENCES `client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `promos` WRITE;
UNLOCK TABLES;


LOCK TABLES `providers` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `rental_vehicles` (
  `plate_id` int(10) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`plate_id`),
  KEY `client_id` (`client_id`),
  KEY `vehicle_type` (`vehicle_type`),
  CONSTRAINT `rental_vehicles_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `rental_vehicles_ibfk_2` FOREIGN KEY (`vehicle_type`) REFERENCES `vehicle_types` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `rental_vehicles` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `rest_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `day_time` datetime DEFAULT NULL,
  `table` int(11) NOT NULL,
  PRIMARY KEY (`booking_id`),
  CONSTRAINT `rest_booking_ibfk_1` FOREIGN KEY (`table`) REFERENCES `hotel_restaurant` (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `rest_booking` WRITE;
UNLOCK TABLES;


CREATE TABLE IF NOT EXISTS `room_ranks` (
  `id_rank` int(11) NOT NULL AUTO_INCREMENT,
  `room_cost` int(11) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `room_ranks` WRITE;
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `room_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`service_id`),
  KEY `emp_id` (`emp_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `room_service_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `internal_staff` (`emp_id`),
  CONSTRAINT `room_service_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `room_service` WRITE;
UNLOCK TABLES;


