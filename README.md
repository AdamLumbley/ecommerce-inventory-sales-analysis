# ecommerce-inventory-sales-analysis
SQL project analyzing e-commerce sales, revenue, suppliers, and inventory.

# E-Commerce Inventory & Sales Analysis

This project demonstrates how SQL can be used to analyze an e-commerce database to track revenue, suppliers, and inventory levels. It includes multi-table joins, aggregate queries, CASE statements, and CTEs to answer key business questions.

## Questions Answered
- Total revenue by product category
- Top suppliers by total products sold
- Low stock products
- Month-over-month sales trends
- Most popular product per category (optional)

## How to Run
1. Load the database schema (`schema.sql`) and sample data (`sample_data.sql`) into a SQL database (MySQL, Postgres, or DB Fiddle).  
2. Run the queries in `queries.sql`.  
3. Review output tables to get insights into revenue, inventory, and supplier performance.
## Results

### Query 1: Total revenue by product category
- Electronics: $7,214.92
- Office: $3,297.50
- Home: $180.00
> Electronics generated the highest revenue.

### Query 2: Top 5 suppliers by total products sold
- Global Tech Supplies: 69 units
- Digital Goods Co: 70 units
- Home & More: 65 units
> Digital Goods Co sold the most products.

### Query 3: Products running low in inventory
- HD Webcam: 15 units
- Laptop Stand: 20 units
> These products need restocking.

### Query 4: Month-over-Month Sales Trends
- 2026-01: $1,125.00 revenue, 12 units sold
- 2026-02: $590.00 revenue, 4 units sold
> Revenue decreased from Jan to Feb.

### Query 5: Most Popular Product per Category
- Electronics: Wireless Mouse (3 units sold)
- Office: Notebook Set (2 units sold)
> Wireless Mouse is the most popular electronics product.
