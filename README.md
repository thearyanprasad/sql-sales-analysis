# 📊 SQL Sales Analysis Project

An SQL-based data analysis project performed on an E-Commerce Sales dataset to extract meaningful business insights using SQL queries.

---

# 🚀 Project Overview

This project focuses on analyzing sales, profit, customers, and product performance using SQL.

The goal of this project is to demonstrate:
- SQL querying skills
- Data analysis techniques
- Business insight generation
- Data filtering and aggregation

---

# 🛠️ Tools Used

- MySQL
- SQL
- CSV Dataset

---

# 📂 Dataset Information

The dataset contains:
- Sales data
- Customer details
- Product categories
- Profit information
- Regional sales information

---

# 🔥 SQL Queries Performed

## 1️⃣ Total Sales

```sql
SELECT SUM(Sales) AS Total_Sales
FROM superstore;
```

---

## 2️⃣ Profit by Category

```sql
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category;
```

---

## 3️⃣ Region-wise Sales

```sql
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region;
```

---

# 📌 Key Insights

- Technology category generated high profits
- Certain regions contributed more sales revenue
- SQL helped simplify business analysis and reporting

---

# 💡 Skills Demonstrated

- SQL Queries
- Data Aggregation
- GROUP BY
- Business Analysis
- Data Filtering
- Analytical Thinking

---

# 📂 Project Structure

```plaintext
sql-sales-analysis/
│
├── README.md
├── queries.sql
└── dataset.csv
```

---

# 👨‍💻 Author

## Aryan Prasad

- 💻 GitHub: https://github.com/thearyanprasad
- 🔗 LinkedIn: https://www.linkedin.com/in/prasadaryan9354

---

⭐ If you found this project useful, consider giving it a star!
