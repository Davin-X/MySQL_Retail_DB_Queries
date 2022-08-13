-- Active: 1660393048702@@127.0.0.1@3306@retail

-- Creating a view so that all the queries could be run on this view rather than joining tables every single time we neeed to run a query


CREATE VIEW retail_view AS
SELECT * FROM departments INNER JOIN categories ON
department_id=category_department_id
INNER JOIN products ON
category_id=product_category_id
INNER JOIN order_items ON
product_id=order_item_product_id
INNER JOIN orders ON
order_item_order_id=order_id
INNER JOIN customers ON
order_customer_id=customer_id
where order_date >='2013-08-01' and order_date<='2014-06-30' ;


SELECT COUNT(*) FROM retail_view ;