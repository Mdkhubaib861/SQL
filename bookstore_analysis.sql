-- CREATE DATABASE bookstore_db;
USE bookstore_db;

/*
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    book_id INT,
    quantity_sold INT
);

INSERT INTO books (book_id, book_name, price) VALUES 
(1, 'Learn SQL Basics', 20.00),
(2, 'Python for Beginners', 25.00),
(3, 'Data Analysis 101', 30.00);

INSERT INTO sales (sale_id, book_id, quantity_sold) VALUES 
(101, 1, 5),
(102, 2, 3),
(103, 1, 2),
(104, 3, 4);


-- Query 1: See all sales combined with book names (Using JOIN)
SELECT s.sale_id,b.book_name,s.quantity_sold,b.price
FROM sales s
JOIN books b 
ON s.book_id = b.book_id;


-- Query 2: Find total quantity sold for each book (Using GROUP BY)
SELECT b.book_name,SUM(s.quantity_sold) AS total_sold
FROM books b
JOIN sales s
 ON b.book_id = s.book_id
GROUP BY b.book_name;
-- Query 3: Find books that cost more than $22 (Using WHERE)
SELECT book_name,price
FROM books
WHERE price > 22.00;

SELECT b.book_name,SUM(s.quantity_sold * b.price) AS total_revenue
FROM books b
JOIN sales s 
ON b.book_id = s.book_id
GROUP BY b.book_name;

SELECT b.book_name,SUM(s.quantity_sold) AS total_sold
FROM books b
JOIN sales s ON b.book_id = s.book_id
GROUP BY b.book_name
ORDER BY total_sold DESC
LIMIT 1;

SELECT book_name,price
FROM books
WHERE price = (SELECT MAX(price) FROM books);

SELECT sale_id,book_id,quantity_sold
FROM sales
WHERE quantity_sold > 3;

SELECT SUM(quantity_sold) AS grand_total_books_sold
FROM sales;

SELECT b.book_name
FROM books b
LEFT JOIN sales s ON b.book_id = s.book_id
WHERE s.sale_id IS NULL;

SELECT b.book_name, SUM(s.quantity_sold * b.price) AS total_revenue
FROM books b
JOIN sales s ON b.book_id = s.book_id
GROUP BY b.book_name
ORDER BY total_revenue DESC;

SELECT book_name, price,
    CASE 
        WHEN price < 22.00 THEN 'Budget'
        WHEN price BETWEEN 22.00 AND 28.00 THEN 'Moderate'
        ELSE 'Premium'
    END AS price_category
FROM books;


SELECT b.book_name, SUM(s.quantity_sold) AS total_sold
FROM books b
JOIN sales s ON b.book_id = s.book_id
GROUP BY b.book_name
ORDER BY total_sold DESC
LIMIT 1;

SELECT book_name, price
FROM books
WHERE price > (SELECT AVG(price) FROM books);


SELECT s.sale_id, b.book_name, s.quantity_sold
FROM sales s
INNER JOIN books b 
  ON s.book_id = b.book_id;

SELECT b.book_name, s.sale_id, s.quantity_sold
FROM books b
LEFT JOIN sales s 
  ON b.book_id = s.book_id;
  

SELECT s.sale_id, b.book_name, s.quantity_sold
FROM sales s
RIGHT JOIN books b 
  ON s.book_id = b.book_id;
*/
