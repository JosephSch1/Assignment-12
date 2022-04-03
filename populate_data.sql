INSERT INTO `orders` (date_time, order_description)
VALUES ('2014/09/10 09:47:00', '1x Pepperoni & Cheese, 1x Meat Lovers');

INSERT INTO `orders` (date_time, order_description)
VALUES ('2014/09/10 13:20:00', '1x Vegetarian, 2x Meat Lovers');

INSERT INTO `orders` (date_time, order_description)
VALUES ('2014/09/10 9:47:00', '1x Meat Lovers, 1x Hawaiian');

INSERT INTO `customers` (`name`, `phone_number`) 
VALUES ('Trevor Page', '226-555-4982');

INSERT INTO `customers` (`name`, `phone_number`) 
VALUES ('John Doe', '555-555-9498');

INSERT INTO `pizzas` (`desc`, `price`)
VALUES ('Pepperoni & Cheese', 7.99);

INSERT INTO `pizzas` (`desc`, `price`)
VALUES ('Vegetarian', 9.99);

INSERT INTO `pizzas` (`desc`, `price`)
VALUES ('Meat Lovers', 14.99);

INSERT INTO `pizzas` (`desc`, `price`)
VALUES ('Hawaiian', 12.99);

-- Below is the script that will populate the join tables. 

INSERT INTO `customer_order` (customer_id, order_id)
VALUES (1, 1);

INSERT INTO `customer_order` (customer_id, order_id)
VALUES (2, 2);

INSERT INTO `customer_order` (customer_id, order_id)
VALUES (1, 3);

INSERT INTO `pizza_order` (order_id, pizza_id)
VALUES (1, 1);

INSERT INTO `pizza_order` (order_id, pizza_id)
VALUES (1, 3);

INSERT INTO `pizza_order` (order_id, pizza_id)
VALUES (2, 2);

INSERT INTO `pizza_order` (order_id, pizza_id)
VALUES (2, 3);

INSERT INTO `pizza_order` (order_id, pizza_id)
VALUES (3, 3);

INSERT INTO `pizza_order` (order_id, pizza_id)
VALUES (3, 4);