CREATE TABLE amazon (
    product_id VARCHAR(50),
    product_name VARCHAR(500),
    main_category VARCHAR(100),
    actual_price FLOAT,
    discounted_price FLOAT,
    discount_amount FLOAT,
    discount_percentage FLOAT,
    discount_label VARCHAR(20),
    rating FLOAT,
    rating_count FLOAT,
    rating_label VARCHAR(20),
    price_category VARCHAR(20),
    value_score FLOAT
);
COPY amazon
FROM 'G:/container/Amazon_Clean_Final.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM amazon LIMIT 10;

--Query 1 — Top Categories
SELECT main_category,
       COUNT(*) AS total_products,
       ROUND(AVG(rating)::NUMERIC, 2) AS avg_rating,
       ROUND(AVG(discount_percentage)::NUMERIC, 1) AS avg_discount
FROM amazon
GROUP BY main_category
ORDER BY total_products DESC;

-- query 2  Price Category Analysis
SELECT price_category,
       COUNT(*) AS total_products,
       ROUND(AVG(rating)::NUMERIC, 2) AS avg_rating,
       ROUND(AVG(discount_percentage)::NUMERIC, 1) AS avg_discount,
       ROUND(AVG(discounted_price)::NUMERIC, 2) AS avg_price
FROM amazon
GROUP BY price_category
ORDER BY avg_price;

--Query 3 — Rating Analysis
SELECT rating_label,
       COUNT(*) AS total_products,
       ROUND(AVG(discounted_price)::NUMERIC, 2) AS avg_price,
       ROUND(AVG(discount_percentage)::NUMERIC, 1) AS avg_discount
FROM amazon
GROUP BY rating_label
ORDER BY total_products DESC;

--Query 4 — Discount Analysis
SELECT discount_label,
       COUNT(*) AS total_products,
       ROUND(AVG(rating)::NUMERIC, 2) AS avg_rating,
       ROUND(AVG(actual_price)::NUMERIC, 2) AS avg_actual_price
FROM amazon
GROUP BY discount_label
ORDER BY total_products DESC;

--Query 5 — Top Rated Products
SELECT product_name,
       main_category,
       rating,
       rating_count,
       discounted_price,
       discount_percentage
FROM amazon
WHERE rating >= 4.5
AND rating_count >= 1000
ORDER BY rating DESC, rating_count DESC
LIMIT 10;
