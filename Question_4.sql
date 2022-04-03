SELECT customers.`name`, SUM(pizzas.price)
FROM customers
INNER JOIN 
customer_order
on
customers.customer_id = customer_order.customer_id
INNER JOIN
orders
on
customer_order.order_id = orders.order_id
INNER JOIN
pizza_order
on
orders.order_id = pizza_order.order_id
INNER JOIN 
pizzas 
on
pizza_order.pizza_id = pizzas.pizza_id
GROUP BY customers.name;