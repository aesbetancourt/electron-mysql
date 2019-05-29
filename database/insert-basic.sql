/*
						INSERT DATA
*/
/*Payments_type:Tipos de pago*/
INSERT INTO `hotel`.`payments_type` (`payment_id`, `description`) VALUES ('1', 'Tarjeta Debito');
INSERT INTO `hotel`.`payments_type` (`payment_id`, `description`) VALUES ('2', 'Tarjeta Credito');
INSERT INTO `hotel`.`payments_type` (`payment_id`, `description`) VALUES ('3', 'Transferencia');
/*Client_type:Tipos de cliente*/
INSERT INTO `hotel`.`client_type` (`type_id`, `description`) VALUES ('1', 'VIP');
INSERT INTO `hotel`.`client_type` (`type_id`, `description`) VALUES ('2', 'Frecuente');
INSERT INTO `hotel`.`client_type` (`type_id`, `description`) VALUES ('3', 'Nuevo');
/*room_ranks:Niveles de habitaciones*/
INSERT INTO `hotel`.`room_ranks` (`id_rank`, `room_cost`, `description`) VALUES ('1', '300', 'Normal-1');
INSERT INTO `hotel`.`room_ranks` (`id_rank`, `room_cost`, `description`) VALUES ('2', '500', 'Normal-2');
INSERT INTO `hotel`.`room_ranks` (`id_rank`, `room_cost`, `description`) VALUES ('3', '800', 'VIP1');
INSERT INTO `hotel`.`room_ranks` (`id_rank`, `room_cost`, `description`) VALUES ('4', '1500', 'VIP2');
INSERT INTO `hotel`.`room_ranks` (`id_rank`, `room_cost`, `description`) VALUES ('5', '5000', 'VIP3');
/*rooms: Habitaciones*/
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('1', '1', '1');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('2', '1', '1');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('3', '1', '1');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('4', '1', '2');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('5', '1', '2');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('6', '1', '2');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('7', '1', '3');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('8', '1', '3');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('9', '1', '3');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('10', '1', '4');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('11', '1', '4');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('12', '1', '4');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('13', '1', '5');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('14', '1', '5');
INSERT INTO `hotel`.`rooms` (`room_id`, `status`, `room_type`) VALUES ('15', '1', '5');
/*Sys_Admin: Usuarios*/
INSERT INTO `hotel`.`sys_admins` (`admins`, `user_id`, `password`) VALUES ('1', 'root', 'toor');
/*Guest_Type: tipo de huesped*/
INSERT INTO `hotel`.`type_guests` (`id_type`, `description`) VALUES ('1', 'nuevo');
INSERT INTO `hotel`.`type_guests` (`id_type`, `description`) VALUES ('2', 'frecuente');
/*vehicle_types: Tipos de vehiculo*/
INSERT INTO `hotel`.`vehicle_types` (`id_type`, `description`, `quantity`) VALUES ('1', 'AutoMovil', '180');
INSERT INTO `hotel`.`vehicle_types` (`id_type`, `description`, `quantity`) VALUES ('2', 'Camioneta', '250');
INSERT INTO `hotel`.`vehicle_types` (`id_type`, `description`, `quantity`) VALUES ('3', 'Motocicleta', '100');
/*vehicle: Vehiculos*/
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('1','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('1','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('1','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('1','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('1','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('2','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('2','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('2','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('2','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('2','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
INSERT INTO `hotel`.`vehicles` (`vehicle_type`,`status`) VALUES ('3','1');
/*restaurant_menu*/
INSERT INTO `hotel`.`restaurant_menu` (`name`, `price`) VALUES ('Menu1', '5');
INSERT INTO `hotel`.`restaurant_menu` (`name`, `price`) VALUES ('Menu2', '10');
INSERT INTO `hotel`.`restaurant_menu` (`name`, `price`) VALUES ('Menu3', '8');
INSERT INTO `hotel`.`restaurant_menu` (`name`, `price`) VALUES ('Menu4', '20');
INSERT INTO `hotel`.`restaurant_menu` (`name`, `price`) VALUES ('Menu5', '30');
INSERT INTO `hotel`.`restaurant_menu` (`name`, `price`) VALUES ('Menu6', '50');
INSERT INTO `hotel`.`restaurant_menu` (`name`, `price`) VALUES ('Menu7', '150');
/*PARKING: puestos estacionamiento*/
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('1');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('2');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('3');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('4');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('5');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('6');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('7');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('8');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('9');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('10');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('10');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('11');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('11');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('12');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('12');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('13');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('13');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('13');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('14');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('14');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('14');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('15');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('15');
INSERT INTO `hotel`.`parking` (`id_room`) VALUES ('15');
/*hotel_restaurant: MESAS DEL RESTAURANTE*/
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
INSERT INTO `hotel`.`hotel_restaurant` (`status`) VALUES ('1');
/* Providers */
INSERT INTO `hotel`.`providers` (`provider_id`, `provider_type`, `provider_name`) VALUES (2, 'Mantenimiento', 'Fix Providers');
INSERT INTO `hotel`.`providers` (`provider_id`, `provider_type`, `provider_name`) VALUES (3, 'Limpieza', 'Clean Providers');
INSERT INTO `hotel`.`providers` (`provider_id`, `provider_type`, `provider_name`) VALUES (4, 'Administrativo', 'Admin Providers');
INSERT INTO `hotel`.`providers` (`provider_id`, `provider_type`, `provider_name`) VALUES (5, 'Enfermeria', 'Medic Providers');
/* Departments */
INSERT INTO `hotel`.`departments` (`dept_id`, `description`, `provider`) VALUES (1, 'Securidad', null);
INSERT INTO `hotel`.`departments` (`dept_id`, `description`, `provider`) VALUES (2, 'Mantenimiento', 2);
INSERT INTO `hotel`.`departments` (`dept_id`, `description`, `provider`) VALUES (3, 'Limpieza', 3);
INSERT INTO `hotel`.`departments` (`dept_id`, `description`, `provider`) VALUES (4, 'Administrativo', 4);
INSERT INTO `hotel`.`departments` (`dept_id`, `description`, `provider`) VALUES (5, 'Enfermeria', 5);
/* Turns */
ALTER TABLE hotel.internal_staff DROP FOREIGN KEY internal_staff_ibfk_2;
DROP table hotel.turns;
CREATE TABLE turns(
    turn_id INT primary key,
    time_des varchar(15),
    days varchar(5)
);
INSERT INTO `hotel`.`turns` (`turn_id`, `time_des`,`days`) VALUES (1,'Day', 'LMMJ');
INSERT INTO `hotel`.`turns` (`turn_id`, `time_des`,`days`) VALUES (2,'Day', 'VSD');
INSERT INTO `hotel`.`turns` (`turn_id`, `time_des`,`days`) VALUES (3,'Day', 'VSD');
INSERT INTO `hotel`.`turns` (`turn_id`, `time_des`,`days`) VALUES (4,'Night', 'LMMJ');
INSERT INTO `hotel`.`turns` (`turn_id`, `time_des`,`days`) VALUES (5,'Night', 'VSD');
INSERT INTO `hotel`.`turns` (`turn_id`, `time_des`,`days`) VALUES (6,'Night', 'VSD');
ALTER TABLE hotel.internal_staff DROP COLUMN turn;
ALTER TABLE hotel.internal_staff ADD column turn int;
ALTER TABLE hotel.internal_staff ADD foreign key (turn) references hotel.turns(turn_id);
/* Internal staff */
INSERT INTO `hotel`.`internal_staff` (`emp_id`, `department`, `first_name`, `last_name`, `position`, `salary`, `turn`, `super_id`)
VALUES (1, 4, 'Jon', 'Snow', 'Supervisor', 100, 1, 1);
INSERT INTO `hotel`.`internal_staff` (`emp_id`, `department`, `first_name`, `last_name`, `position`, `salary`, `turn`, `super_id`)
VALUES (2, 1, 'Tormund', 'Matagigantes', 'Jefe', 50, 2, null);
INSERT INTO `hotel`.`internal_staff` (`emp_id`, `department`, `first_name`, `last_name`, `position`, `salary`, `turn`, `super_id`)
VALUES (3, 3, 'Dross', 'Rotzank', 'Papa', 20, 3, null);
/*EXTERNAL STAFF*/
alter table hotel.external_staff
ADD column first_name varchar(20);
alter table hotel.external_staff
ADD column last_name varchar(20);
INSERT INTO `hotel`.`external_staff` (`emp_id`, `facility`,`first_name`, `last_name`) VALUES (1,'Restaurant', 'Cesar', 'Pujol');
INSERT INTO `hotel`.`external_staff` (`emp_id`, `facility`,`first_name`, `last_name`) VALUES (2,'Banco', 'Ivan', 'Fuentes');
INSERT INTO `hotel`.`external_staff` (`emp_id`, `facility`,`first_name`, `last_name`) VALUES (3,'Restaurant', 'Noelia', 'Caballeros');
INSERT INTO `hotel`.`external_staff` (`emp_id`, `facility`,`first_name`, `last_name`) VALUES (4,'Banco', 'Alba', 'Marti');