# Bluestock Mutual Fund Analytics Capstone

## Overview

This project was developed as part of the Bluestock Fintech Data Analyst Internship Capstone Program. The objective was to design and implement an end-to-end Mutual Fund Analytics Platform capable of ingesting, processing, analyzing, and visualizing mutual fund industry data using Python, SQL, and Power BI.

The project combines ETL processes, database design, exploratory data analysis, performance analytics, risk assessment, and business intelligence reporting to provide actionable insights into the Indian mutual fund ecosystem.

---

## Project Objectives

- Build an ETL pipeline for mutual fund datasets.
- Design and implement a relational database schema.
- Perform exploratory data analysis on NAV, AUM, SIP, and investor datasets.
- Calculate key performance and risk metrics.
- Benchmark mutual fund schemes against market indices.
- Develop an interactive Power BI dashboard.
- Generate advanced analytics and investor insights.
- Document the complete analytical workflow.

---

## Dataset Overview

The project utilizes 10 datasets covering multiple aspects of the mutual fund industry:

| Dataset                      | Description                    |
| ---------------------------- | ------------------------------ |
| 01_fund_master.csv           | Mutual fund scheme master data |
| 02_nav_history.csv           | Historical NAV records         |
| 03_aum_by_fund_house.csv     | Fund house AUM information     |
| 04_monthly_sip_inflows.csv   | SIP inflow statistics          |
| 05_category_inflows.csv      | Category-wise fund inflows     |
| 06_industry_folio_count.csv  | Industry folio counts          |
| 07_scheme_performance.csv    | Performance metrics            |
| 08_investor_transactions.csv | Investor transaction records   |
| 09_portfolio_holdings.csv    | Portfolio holdings information |
| 10_benchmark_indices.csv     | Benchmark market indices       |

---

## Technology Stack

### Programming & Analytics

- Python
- Pandas
- NumPy
- SciPy

### Data Visualization

- Matplotlib
- Seaborn

### Database

- SQLite
- SQLAlchemy

### Business Intelligence

- Power BI Desktop

### Development Environment

- VS Code
- Jupyter Notebook
- Git & GitHub

---

## Project Structure

```text
bluestock_mf_capstone/

├── data/
│   ├── raw/
│   ├── processed/
│   └── db/
│
├── notebooks/
│   ├── 01_data_ingestion.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_eda_analysis.ipynb
│   ├── 04_performance_analytics.ipynb
│   └── 05_advanced_analytics.ipynb
│
├── scripts/
│   ├── live_nav_fetch.py
│   ├── etl_pipeline.py
│   ├── compute_metrics.py
│   └── recommender.py
│
├── sql/
│   ├── schema.sql
│   └── queries.sql
│
├── dashboard/
│   └── bluestock_mf_dashboard.pbix
│
├── reports/
│
├── README.md
└── requirements.txt
```

---

## Project Workflow

### Day 1 – Data Ingestion

- Loaded all project datasets.
- Performed dataset profiling.
- Retrieved live NAV data using MFAPI.
- Validated AMFI scheme mappings.

### Day 2 – Data Cleaning & Database Design

- Cleaned NAV, transaction, and performance datasets.
- Created SQLite star-schema database.
- Loaded cleaned data into relational tables.
- Developed analytical SQL queries.

### Day 3 – Exploratory Data Analysis

- Analyzed NAV trends.
- Evaluated SIP inflows and folio growth.
- Studied investor demographics.
- Performed geographic and sector analysis.
- Generated visualization outputs.

### Day 4 – Performance Analytics

- Computed Daily Returns.
- Calculated CAGR.
- Calculated Sharpe Ratio.
- Calculated Sortino Ratio.
- Computed Alpha and Beta.
- Calculated Maximum Drawdown.
- Developed a composite fund scorecard.

### Day 5 – Dashboard Development

Developed a four-page interactive Power BI dashboard:

1. Industry Overview
2. Fund Performance
3. Investor Analytics
4. SIP & Market Trends

### Day 6 – Advanced Analytics

- Value at Risk (VaR)
- Conditional Value at Risk (CVaR)
- Rolling Sharpe Analysis
- Investor Cohort Analysis
- SIP Continuity Analysis
- Fund Recommendation Engine
- Sector Concentration Analysis

---

## Key Analytical Metrics

### Performance Metrics

- Daily Return
- CAGR
- Sharpe Ratio
- Sortino Ratio
- Alpha
- Beta
- Maximum Drawdown

### Risk Metrics

- Historical VaR (95%)
- Conditional VaR (CVaR)
- Rolling Sharpe Ratio

### Portfolio Metrics

- Sector Allocation
- Herfindahl-Hirschman Index (HHI)

---

## Dashboard Features

### Industry Overview

- Total AUM
- SIP Inflows
- Mutual Fund Folios
- Fund House Comparison

### Fund Performance

- Fund Rankings
- Sharpe Ratio Analysis
- Alpha Analysis
- Category Filters

### Investor Analytics

- State-wise Investments
- Age Group Analysis
- Transaction Type Distribution
- T30 vs B30 Analysis

### SIP & Market Trends

- SIP Growth Trends
- Category-wise Inflows
- Active SIP Accounts Growth

---

## How to Run the Project

### 1. Clone Repository

```bash
git clone <repository-url>
cd bluestock_mf_capstone
```

### 2. Create Virtual Environment

```bash
python -m venv .venv
```

### 3. Activate Environment

Windows:

```bash
.venv\Scripts\activate
```

### 4. Install Dependencies

```bash
pip install -r requirements.txt
```

### 5. Open Jupyter Notebooks

```bash
jupyter notebook
```

Execute notebooks sequentially:

1. 01_data_ingestion.ipynb
2. 02_data_cleaning.ipynb
3. 03_eda_analysis.ipynb
4. 04_performance_analytics.ipynb
5. 05_advanced_analytics.ipynb

---

## Major Deliverables

- SQLite Database
- Data Cleaning Pipeline
- EDA Notebook
- Performance Analytics Notebook
- Advanced Analytics Notebook
- SQL Schema & Queries
- Power BI Dashboard
- Final Project Report
- Presentation Deck

---

## Limitations

- Investor transaction data is simulated.
- Benchmark coverage is limited to provided datasets.
- SQLite is used for local development rather than enterprise deployment.
- Results are dependent on the quality and coverage of source datasets.

---

## Disclaimer

This project was developed for educational and internship purposes as part of the Bluestock Fintech Capstone Program. The analysis presented does not constitute investment advice. Mutual fund investments are subject to market risks. Investors should consult qualified financial advisors before making investment decisions.
