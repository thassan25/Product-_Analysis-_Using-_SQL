# Product Analysis Using SQL
It consists of data source file(.csv), query files(.sql) and a readme.md file
> A focused SQL portfolio project examining product sales performance, revenue trends, and category-level drivers to support data-informed business decisions.

![SQL](https://img.shields.io/badge/Language-SQL-blue) ![Data](https://img.shields.io/badge/Data-CSV-green) ![Status](https://img.shields.io/badge/Status-Active-brightgreen)

---

## Professional Summary

Results-oriented Data Analyst with demonstrated expertise in querying, cleaning, and interpreting structured datasets to support strategic business decisions. This repository showcases applied SQL analysis across the full product analytics lifecycle — from raw CSV ingestion and data cleaning through aggregation, trend identification, and business reporting. Each query is written to be readable, modular, and directly tied to a measurable business question around product performance and revenue.

---

## Skills & Tools

**Languages & Querying**
SQL (SELECT, JOIN, GROUP BY, subqueries, window functions, CTEs, aggregations), Python (pandas, basic preprocessing)

**Data Formats & Sources**
CSV, relational databases (PostgreSQL, MySQL, SQLite)

**Analysis Techniques**
Product performance analysis, sales trend analysis, revenue segmentation, exploratory data analysis (EDA), KPI reporting, data cleaning and validation

**Workflow & Collaboration**
Git & GitHub, Excel/Google Sheets, data documentation, stakeholder reporting

---

## Repository Structure

```
Product-_Analysis-_Using-_SQL/
│
├── Product_DataSet/
│   └── products.csv          # Source dataset
│   └── products.csv
│   └── products.csv
│   └── products.csv
│   └── products.csv  

├── queries/
│   └── product_analysis.sql  # Core SQL queries
│
└── README.md
```

---

## Project — Product Sales & Revenue Analysis

**Repository:** [`Product-_Analysis-_Using-_SQL`](https://github.com/your-username/Product-_Analysis-_Using-_SQL)
**Files:** `products.csv` · `product_analysis.sql`

**Business Context:**
Organizations need reliable visibility into which products are driving revenue, which categories are underperforming, and how sales trends shift over time. This project analyzes product-level sales data to surface actionable insights that support pricing, inventory, and category management decisions.

**Approach:**
- Loaded and assessed the source CSV for completeness, null values, and structural consistency
- Applied SQL-based cleaning to standardize product categories and remove anomalous records
- Wrote modular queries using CTEs and GROUP BY aggregations to calculate revenue by product, category, and time period
- Applied window functions (RANK, ROW_NUMBER) to identify top and bottom performers within each category
- Segmented results to highlight products above and below average revenue thresholds

**Key Queries Include:**
- Total revenue and units sold by product and category
- Month-over-month and period-over-period sales trend analysis
- Top N products by revenue using window functions
- Category-level performance benchmarking
- Filtering and flagging low-performing SKUs for review

**Outcome:**
Delivered a structured SQL analysis identifying top revenue-driving products and underperforming categories, providing a repeatable query framework for ongoing product performance monitoring.

---

## Data Analysis Process

Each analysis in this repository follows a consistent, structured methodology:

**1. Business Question Definition**
Align on the specific product or revenue question the analysis is meant to answer before writing any queries.

**2. Data Acquisition & Assessment**
Load source CSV files, review schema and row counts, and identify data quality issues — including nulls, duplicates, and type inconsistencies.

**3. Data Cleaning & Preparation**
Apply SQL transformations to standardize values, handle missing data, and prepare a clean analytical base table. All cleaning logic is documented within the query file.

**4. Querying & Exploration**
Write readable, modular SQL using CTEs, joins, and aggregations to answer each business question. Window functions are used where ranking or period comparison is required.

**5. Interpretation & Synthesis**
Translate query outputs into clear findings — identifying trends, outliers, and performance gaps tied directly to the business question.

**6. Communication & Delivery**
Results are documented with inline SQL comments and structured to be shareable with both technical and non-technical stakeholders.

---

## Business Impact

This analysis is designed to support product and commercial decision-making, including:

- **Revenue Optimization** — Identifying top-performing products and categories to prioritize in sales and marketing efforts
- **Portfolio Management** — Flagging underperforming SKUs for pricing review, bundling, or discontinuation
- **Trend Monitoring** — Tracking period-over-period sales shifts to detect growth or decline early
- **Strategic Reporting** — Providing repeatable KPI queries that can be scheduled and integrated into business reporting workflows

Every query prioritizes clarity, accuracy, and direct applicability to product and revenue decisions.

---

## Contact

**LinkedIn:** [your-linkedin-url]
**Email:** [your-email@example.com]
**GitHub:** [github.com/your-username]
