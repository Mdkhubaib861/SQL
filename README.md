# Bookstore Sales Analysis - SQL Portfolio Project

## 📌 Project Overview
This project is a beginner-friendly, end-to-end SQL portfolio project designed to demonstrate core database management and data analysis skills. Using a fictional bookstore dataset, this project answers key business questions related to sales, revenue, pricing, and inventory performance.

## 🛠️ Tools & Technologies Used
* **SQL** (Compatible with MySQL, PostgreSQL, SQLite, and SQL Server)
* **GitHub** for version control and portfolio presentation

---

## 📂 Database Schema & Tables

### 1. `books` Table
Stores information about the books available in the store.
* `book_id` (INT, Primary Key)
* `book_name` (VARCHAR)
* `price` (DECIMAL)


### 2. `sales` Table
Stores transaction records for every book sold.
* `sale_id` (INT, Primary Key)
* `book_id` (INT)
* `quantity_sold` (INT)

---

## 🔍 Key Business Questions Answered by the Queries

1. **Transaction Details (`JOIN`):** Combined sales records with book titles and prices to view complete order details.
2. **Sales Volume (`GROUP BY` & `SUM`):** Calculated the total quantity sold for each individual book.
3. **Price Filtering (`WHERE`):** Filtered books to find premium items priced above $22.00.
4. **Revenue Analysis:** Multiplied quantity sold by book price to determine total revenue generated per title.
5. **Top Performance (`ORDER BY` & `LIMIT`):** Identified the single best-selling book based on quantity sold.
6. **Maximum Pricing (`Subquery` & `MAX`):** Located the most expensive book in the inventory.
7. **Large Orders (`WHERE`):** Filtered individual sales transactions where more than 3 units were sold.
8. **Overall Inventory Performance (`SUM`):** Calculated the grand total number of books sold across all transactions.
9. **Unsold Inventory Check (`LEFT JOIN`):** Checked for any books that have never recorded a sale.

---

## 🚀 How to Run the Code
1. Open your SQL environment (MySQL Workbench, DBeaver, SQLite, etc.).
2. Create and select your database:
   ```sql
   CREATE DATABASE bookstore_db;
   USE bookstore_db;

