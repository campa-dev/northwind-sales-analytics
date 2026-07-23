# 📊 Northwind Sales Analytics

<p align="center">

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github)
![Status](https://img.shields.io/badge/Status-In%20Progress-success?style=for-the-badge)

</p>

> A professional **Data Engineering portfolio project** built with **PostgreSQL** using the **Northwind** sample database.

This repository simulates the work of a **Data Engineer** supporting business stakeholders by designing analytical reports, documenting business logic, and transforming raw sales data into meaningful business insights.

---

# 🎯 Project Overview

Business leaders rarely ask for SQL queries.

They ask questions like:

- How is the company performing?
- Which customers generate the most revenue?
- Which products are driving sales?
- Which markets are growing?

The objective of this project is to answer those questions through well-designed SQL reports while following professional software engineering practices.

---

# 💼 Business Objectives

This project is designed to answer questions such as:

- How is the business performing overall?
- Who are our highest-value customers?
- Which products generate the most revenue?
- Which sales representatives perform best?
- Which countries contribute the most sales?
- How efficiently are customer orders being fulfilled?

---

# 🛠 Technology Stack

| Technology | Purpose |
|------------|---------|
| PostgreSQL | Relational Database |
| SQL | Data Analysis & Reporting |
| Git | Version Control |
| GitHub | Portfolio Hosting |
| Cursor | Development Environment |

---

# 🗄 Data Model

This project uses the classic **Northwind** sample database, a fictional trading company frequently used for learning relational databases and SQL.

The reports in this repository primarily analyze relationships between:

- Customers
- Orders
- Order Details
- Products
- Employees
- Suppliers

The Entity Relationship Diagram below illustrates the database schema used throughout the project.

![Northwind ER Diagram](images/northwind_erd.png)

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
│   └── top_customers_analysis_result.png
│
├── insights/
│   ├── executive_sales_overview.md
│   ├── customer_segmentation.md
│   └── top_customers_analysis.md
│
└── sql/
    ├── 01_executive_sales_overview.sql
    ├── 02_customer_segmentation.sql
    └── 03_top_customers.sql
```

| Folder | Purpose |
|---------|---------|
| **sql/** | Production-ready SQL reports |
| **insights/** | Business explanations and analytical conclusions |
| **images/** | Report previews, ER diagrams, and project visuals |
| **docs/** | Supporting documentation |

---

# 📊 Analytics Deliverables

| Report | Business Question | Status |
|--------|-------------------|:------:|
| Executive Sales Overview | How is the company performing overall? | ✅ |
| Customer Segmentation | Who are our most valuable customers? | ✅ |
| Top Customers Analysis | Who are our highest-value customers? | ✅ |
| Product Performance | Which products generate the most revenue? | ⏳ |
| Employee Performance | Which sales representatives perform best? | ⏳ |
| Country Sales Analysis | Which markets generate the most revenue? | ⏳ |
| Shipping Analysis | How efficient is the shipping process? | ⏳ |
| Executive Dashboard | Executive KPI Summary | ⏳ |

---

# 🔄 Project Workflow

```text
Business Question
        │
        ▼
Requirements Gathering
        │
        ▼
Report Design
        │
        ▼
SQL Development
        │
        ▼
Business Validation
        │
        ▼
Business Insights
        │
        ▼
GitHub Documentation
```

This workflow reflects how analytical reporting is commonly developed in professional Data Engineering and Analytics Engineering teams.

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

> Who are Northwind's Top 10 customers based on historical revenue?

### KPIs

- Total Revenue
- Total Orders
- Customer Rank
- First Order Date
- Last Order Date

### SQL Concepts

- INNER JOIN
- Aggregate Functions
- MIN()
- MAX()
- Common Table Expressions (CTEs)
- DENSE_RANK()
- LIMIT

### Report Preview

![Top Customers Analysis](images/top_customers_analysis_result.png)

---

# 🧠 Skills Demonstrated

## SQL

- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- Common Table Expressions (CTEs)
- Window Functions
- CASE Expressions
- COUNT(DISTINCT)
- COALESCE
- Data Ranking
- Query Optimization
- Business KPI Development
- SQL Documentation

## Analytics

- Executive Reporting
- Customer Analytics
- Customer Segmentation
- Revenue Analysis
- KPI Design
- Business Metrics
- Report Design
- Report Grain
- Business Analysis

## Software Engineering

- Git Version Control
- GitHub Workflow
- Documentation
- Repository Organization
- Professional SQL Formatting

---

# 🗺 Project Roadmap

| Milestone | Status |
|-----------|:------:|
| Repository Foundation | ✅ |
| Executive Sales Overview | ✅ |
| Customer Analytics | ✅ |
| Product Performance | ⏳ |
| Employee Performance | ⏳ |
| Country Sales Analysis | ⏳ |
| Shipping Analysis | ⏳ |
| Executive Dashboard | ⏳ |

---

# 📦 Releases

| Version | Description |
|----------|-------------|
| **v1.0.0** | Repository Foundation |
| **v1.1.0** | Customer Analytics |

---

# 🚀 Future Improvements

Planned enhancements include:

- SQL Views
- Performance Optimization
- Index Analysis
- Dashboard Visualizations
- Data Quality Validation
- Automated Reporting
- Python ETL Pipelines

---

# 👨‍💻 About the Author

**Camilo Patiño**

Aspiring **Data Engineer** focused on building production-quality analytics projects that combine SQL, business thinking, documentation, and software engineering best practices.

📫 GitHub: https://github.com/campa-dev

---

⭐ If you found this project interesting, feel free to explore the reports and follow its progress as new analytical deliverables are added.