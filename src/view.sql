CREATE VIEW my_view AS
SELECT
    o.order_date,
    o.required_date,
    o.shipped_date,
    o.ship_postal_code,
    c.company_name,
    c.contact_name,
    c.phone,
    e.last_name,
    e.first_name,
    e.title
FROM
    orders o
        JOIN
    customers c ON o.customer_id = c.customer_id
        JOIN
    employees e ON o.employee_id = e.employee_id;

select * from my_view view;

SELECT *
FROM my_view
WHERE order_date > '1997-01-01';





EXEC sp_rename 'my_view', 'new_view';


CREATE VIEW new_view AS
SELECT
    o.order_date,
    o.required_date,
    o.shipped_date,
    o.ship_postal_code,
    o.ship_country,
    c.company_name,
    c.contact_name,
    c.phone,
    e.last_name,
    e.first_name,
    e.title,
    c.postal_code,
    e.reports_to
FROM
    orders o
        JOIN
    customers c ON o.customer_id = c.customer_id
        JOIN
    employees e ON o.employee_id = e.employee_id;



SELECT *
FROM new_view
ORDER BY ship_country;

DROP VIEW new_view;


CREATE VIEW active_products AS
SELECT *
FROM products
WHERE discontinued = 0;

INSERT INTO active_products (product_id, product_name, discontinued)
VALUES (999, 'Product with discontinued = 1', 1);





