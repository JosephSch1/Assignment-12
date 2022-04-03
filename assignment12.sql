create database pizza_restaurant;

CREATE TABLE `pizza_restaurant`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`));
  
  CREATE TABLE `pizza_restaurant`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `date_time` DATETIME(1) NULL,
  `order_description` VARCHAR(200) NULL,
  PRIMARY KEY (`order_id`));

CREATE TABLE `pizza_restaurant`.`pizzas` (
`pizza_id` INT NOT NULL AUTO_INCREMENT, 
`desc` VARCHAR(45) NULL, 
`price` double NULL,
PRIMARY KEY (`pizza_id`));

CREATE TABLE `pizza_restaurant`.`customer_order` (
`customer_id` INT NOT NULL,
`order_id` INT NOT NULL,
FOREIGN KEY (customer_id) REFERENCES `customers` (customer_id),
FOREIGN KEY (order_id) REFERENCES `orders` (order_id)
);

CREATE TABLE `pizza_restaurant`.`pizza_order` (
`order_id` INT NOT NULL, 
`pizza_id` INT NOT NULL,
FOREIGN KEY (order_id) REFERENCES `orders` (order_id),
FOREIGN KEY (pizza_id) REFERENCES `pizzas` (pizza_id)
);