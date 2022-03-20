SELECT orders.order_number, Products.name, Products.price
FROM orders
inner join Products on orders.product_id = Products.id