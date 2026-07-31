# 📊 Northwind Sales Analytics

<p align="center">

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github)
![Status](https://img.shields.io/badge/Status-In%20Progress-success?style=for-the-badge)

</p>

> A professional **Data Engineering and Analytics Engineering portfolio project** built with **PostgreSQL** using the **Northwind** sample database.

This repository simulates the work of a **Data Engineer / Analytics Engineer** supporting business stakeholders by transforming raw transactional data into reusable analytical models, production-ready SQL reports, and business insights.

Rather than focusing on SQL syntax alone, this project follows the workflow commonly used by modern analytics teams: understanding business requirements, designing reusable data models, producing analytical reports, documenting business logic, and maintaining version-controlled deliverables.

---

# 🎯 Project Overview

Business leaders rarely ask for SQL queries.

They ask questions like:

- How is the company performing?
- Which customers generate the most revenue?
- Which products drive sales?
- Which product categories contribute the most revenue?
- Is revenue concentrated in a few products or distributed across the portfolio?
- Which employees and countries generate the highest sales?

The objective of this project is to answer those business questions through production-ready SQL while following professional Data Engineering and Analytics Engineering practices.

---

# 💼 Business Objectives

This repository is designed to support business stakeholders by answering questions such as:

- How is the business performing overall?
- Who are our highest-value customers?
- Which products generate the highest revenue?
- Which products sell the greatest number of units?
- Which product categories perform best?
- How is revenue distributed across the product portfolio?
- Which sales representatives perform best?
- Which countries contribute the most sales?
- How efficiently are customer orders fulfilled?

---

# 🛠 Technology Stack

| Technology | Purpose |
|------------|---------|
| PostgreSQL | Relational Database |
| SQL | Analytics & Reporting |
| Git | Version Control |
| GitHub | Portfolio Hosting |
| Cursor | Development Environment |

---

# 🗄 Data Model

This project uses the classic **Northwind** sample database, a fictional trading company frequently used for learning relational databases and SQL.

The reports primarily analyze relationships between:

- Customers
- Orders
- Order Details
- Products
- Categories
- Employees
- Suppliers

The Entity Relationship Diagram below illustrates the schema used throughout the project.

![Northwind ER Diagram](images/northwind_erd.png)

---

# 🏗 Reusable Reporting Layer

Beginning with **Milestone 3**, this project introduces a reusable analytical model called **`sales_reporting`**.

Instead of repeatedly joining transactional tables and recalculating revenue inside every report, business logic is centralized within a reusable SQL View.

The reporting layer includes:

- Transaction-level sales records
- Revenue calculated after discounts
- Customer information
- Product information
- Category information
- Employee information
- Order information

Business reports are built on top of this reusable reporting model, improving readability, maintainability, and consistency across the repository.

This approach reflects modern **Analytics Engineering** practices by separating reusable business logic from report-specific transformations.

---

# 📁 Repository Structure

```text
northwind-sales-analytics/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│
├── images/
│   ├── northwind_erd.png
│   ├── executive_sales_overview_result.png
│   ├── customer_segmentation_result.png
│   ├── top_customers_analysis_result.png
│   ├── product_performance_result.png
│   ├── top_selling_products_result.png
│   ├── product_category_performance_result.png
│   └── product_revenue_distribution_result.png
│
├── insights/
│   ├── executive_sales_overview.md
│   ├── customer_segmentation.md
│   ├── top_customers_analysis.md
│   ├── product_performance.md
│   ├── top_selling_products.md
│   ├── product_category_performance.md
│   └── product_revenue_distribution.md
│
├── sql/
│   ├── 01_executive_sales_overview.sql
│   ├── 02_customer_segmentation.sql
│   ├── 03_top_customers.sql
│   ├── 04_product_performance.sql
│   ├── 05_top_selling_products.sql
│   ├── 06_product_category_performance.sql
│   └── 07_product_revenue_distribution.sql
│
└── sql-models/
    └── sales_reporting.sql
```

| Folder | Purpose |
|---------|---------|
| **sql/** | Production-ready SQL reports |
| **sql-models/** | Reusable analytical models and reporting layers |
| **insights/** | Business explanations and analytical conclusions |
| **images/** | Report previews, ER diagrams, and project visuals |
| **docs/** | Supporting documentation |

---

# 📊 Analytics Deliverables

| Report | Business Question | Status |
|--------|-------------------|:------:|
| Executive Sales Overview | How is the company performing overall? | ✅ |
| Customer Segmentation | Who are our most valuable customers? | ✅ |
| Top Customers Analysis | Who are Northwind's highest-value customers? | ✅ |
| Product Performance Analysis | Which products generate the highest revenue and sales volume? | ✅ |
| Top Selling Products | Which products sell the greatest number of units? | ✅ |
| Product Category Performance | Which product categories generate the highest revenue? | ✅ |
| Product Revenue Distribution | How is revenue distributed across the product portfolio? | ✅ |
| Employee & Sales Performance | Which sales representatives perform best? | ⏳ |
| Geographic Sales Analytics | Which countries contribute the most sales? | ⏳ |
| Shipping & Operational Analytics | How efficient is the shipping process? | ⏳ |
| Executive Dashboard & Business Intelligence | Executive KPI Dashboard | ⏳ |

---

# 🔄 Project Workflow

```text
Business Request
        │
        ▼
Requirements Gathering
        │
        ▼
Business Questions
        │
        ▼
Report Design
        │
        ▼
Report Grain
        │
        ▼
Metric Definition
        │
        ▼
Data Modeling
        │
        ▼
SQL Development
        │
        ▼
Code Review
        │
        ▼
Business Insights
        │
        ▼
Git Version Control
        │
        ▼
GitHub Documentation
```

This workflow mirrors how analytical reporting solutions are commonly developed in professional Data Engineering and Analytics Engineering teams.

---

# 📈 Featured Reports

## 1. Executive Sales Overview

**Business Question**

> How is the company performing overall?

### KPIs

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value

### SQL Concepts

- Aggregate Functions
- INNER JOIN
- COUNT(DISTINCT)
- Common Table Expressions (CTEs)

### Report Preview

![Executive Sales Overview](images/executive_sales_overview_result.png)

---

## 2. Customer Segmentation

**Business Question**

> Who are our most valuable customers?

### KPIs

- Customer Revenue
- Total Orders
- Customer Segment
- Customer Rank

### SQL Concepts

- LEFT JOIN
- COALESCE
- CASE
- Common Table Expressions (CTEs)
- Window Functions
- DENSE_RANK()

### Report Preview

![Customer Segmentation](images/customer_segmentation_result.png)

---

## 3. Top Customers Analysis

**Business Question**

> Who are Northwind's highest-value customers based on historical revenue?

### KPIs

- Total Revenue
- Total Orders
- Customer Rank
- First Order Date
- Last Order Date

### SQL Concepts

- Aggregate Functions
- INNER JOIN
- MIN()
- MAX()
- Common Table Expressions (CTEs)
- DENSE_RANK()
- LIMIT

### Report Preview

![Top Customers Analysis](images/top_customers_analysis_result.png)

---

## 4. Product Performance Analysis

**Business Question**

> Which products generate the highest revenue and sales volume across all historical orders?

### KPIs

- Total Revenue
- Total Orders
- Units Sold
- Revenue Rank

### SQL Concepts

- SQL Views
- Aggregate Functions
- Common Table Expressions (CTEs)
- SUM()
- COUNT(DISTINCT)
- DENSE_RANK()

### Report Preview

![Product Performance Analysis](images/product_performance_result.png)

---

## 5. Top Selling Products

**Business Question**

> Which products sell the greatest number of units?

### KPIs

- Units Sold
- Total Orders
- Sales Rank

### SQL Concepts

- SQL Views
- Aggregate Functions
- Common Table Expressions (CTEs)
- SUM()
- COUNT(DISTINCT)
- DENSE_RANK()

### Report Preview

![Top Selling Products](images/top_selling_products_result.png)

---

## 6. Product Category Performance

**Business Question**

> Which product categories generate the highest revenue?

### KPIs

- Total Revenue
- Units Sold
- Total Orders
- Revenue Rank

### SQL Concepts

- SQL Views
- Aggregate Functions
- Common Table Expressions (CTEs)
- SUM()
- COUNT(DISTINCT)
- DENSE_RANK()

### Report Preview

![Product Category Performance](images/product_category_performance_result.png)

---

## 7. Product Revenue Distribution

**Business Question**

> How is revenue distributed across Northwind's product portfolio?

### KPIs

- Total Revenue
- Revenue Percentage
- Cumulative Revenue Percentage
- Total Orders
- Units Sold
- Revenue Rank

### SQL Concepts

- SQL Views
- Aggregate Functions
- Common Table Expressions (CTEs)
- Window Functions
- SUM() OVER()
- DENSE_RANK()

### Report Preview

![Product Revenue Distribution](images/product_revenue_distribution_result.png)

---

# 🧠 Skills Demonstrated

## SQL

- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- Common Table Expressions (CTEs)
- SQL Views
- Window Functions
- Window Ranking Functions
- Running Totals
- CASE Expressions
- COALESCE
- COUNT(DISTINCT)
- Revenue Calculations
- Percentage Calculations
- Data Aggregation
- Analytical Modeling
- Reusable Reporting Layers
- Business KPI Development
- SQL Documentation

---

## Analytics Engineering

- Business Requirements Gathering
- Report Design
- Report Grain Definition
- KPI Design
- Reusable Data Models
- Layered SQL Transformations
- Revenue Analysis
- Customer Analytics
- Product Analytics
- Revenue Distribution Analysis
- Category Performance Analysis
- Executive Reporting
- Business Documentation

---

## Software Engineering

- Git Version Control
- GitHub Workflow
- Conventional Commits
- Repository Organization
- Professional SQL Formatting
- Code Documentation
- Modular SQL Design
- Maintainable Reporting Logic
- Versioned Releases

---

# 🗺 Project Roadmap

| Milestone | Focus | Status | Release |
|-----------|-------|:------:|:------:|
| Milestone 1 | Repository Foundation | ✅ | v1.0.0 |
| Milestone 2 | Customer Analytics | ✅ | v1.1.0 |
| Milestone 3 | Product Analytics & Reusable Data Models | ✅ | v1.2.0 |
| Milestone 4 | Employee & Sales Performance | ⏳ | v1.3.0 |
| Milestone 5 | Geographic Sales Analytics | ⏳ | v1.4.0 |
| Milestone 6 | Shipping & Operational Analytics | ⏳ | v1.5.0 |
| Milestone 7 | Executive Dashboard & Business Intelligence | ⏳ | v2.0.0 |

---

# 📦 Releases

| Version | Description |
|----------|-------------|
| **v1.0.0** | Repository Foundation |
| **v1.1.0** | Customer Analytics |
| **v1.2.0** | Product Analytics & Reusable Data Models |

---

# 🚀 Future Improvements

Planned enhancements include:

- Employee Performance Analytics
- Geographic Sales Analysis
- Shipping & Operational Analytics
- Executive KPI Dashboard
- Performance Optimization with Indexes
- Materialized Views
- SQL Performance Benchmarking
- Python ETL Pipelines
- Automated Data Quality Checks
- Interactive Power BI Dashboard

---

# 👨‍💻 About the Author

**Camilo Patiño**

Aspiring **Data Engineer** passionate about building production-quality analytics solutions that combine SQL, business thinking, reusable data models, documentation, and software engineering best practices.

This portfolio reflects my approach to solving business problems through data by following professional Analytics Engineering workflows—from understanding stakeholder requirements to delivering reusable analytical assets and production-ready SQL reports.

📫 **GitHub:** https://github.com/campa-dev

---

⭐ If you found this project interesting, feel free to explore the reports, review the SQL models, and follow its progress as new analytical deliverables are added.