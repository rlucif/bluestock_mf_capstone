# Data Dictionary

## dim_fund

Dimension table containing master information for mutual fund schemes.

| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|---------|
| amfi_code | INTEGER | Unique AMFI scheme code | 01_fund_master.csv |
| fund_house | TEXT | Asset Management Company name | 01_fund_master.csv |
| scheme_name | TEXT | Mutual fund scheme name | 01_fund_master.csv |
| category | TEXT | Primary fund category | 01_fund_master.csv |
| sub_category | TEXT | Detailed fund category | 01_fund_master.csv |
| plan | TEXT | Direct or Regular plan | 01_fund_master.csv |
| launch_date | DATE | Scheme launch date | 01_fund_master.csv |
| benchmark | TEXT | Benchmark index used for comparison | 01_fund_master.csv |
| expense_ratio_pct | REAL | Annual expense ratio percentage | 01_fund_master.csv |
| exit_load_pct | REAL | Exit load percentage | 01_fund_master.csv |
| min_sip_amount | REAL | Minimum SIP investment amount | 01_fund_master.csv |
| min_lumpsum_amount | REAL | Minimum lump sum investment amount | 01_fund_master.csv |
| fund_manager | TEXT | Fund manager name | 01_fund_master.csv |
| risk_category | TEXT | Risk classification of scheme | 01_fund_master.csv |
| sebi_category_code | TEXT | SEBI category code | 01_fund_master.csv |



## dim_date

Date dimension table used for time-series analytics.

| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|---------|
| date_id | INTEGER | Date key in YYYYMMDD format | Generated |
| full_date | DATE | Calendar date | Generated |
| year | INTEGER | Calendar year | Generated |
| month | INTEGER | Month number | Generated |
| quarter | INTEGER | Quarter number | Generated |
| day_of_week | INTEGER | Day number (0=Monday, 6=Sunday) | Generated |
| is_weekday | INTEGER | Weekday flag (1=yes, 0=no) | Generated |



## fact_nav

Daily Net Asset Value history.

| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|---------|
| nav_id | INTEGER | Surrogate key | Generated |
| amfi_code | INTEGER | AMFI scheme code | 02_nav_history.csv |
| nav_date | DATE | NAV date | 02_nav_history.csv |
| nav | REAL | Net Asset Value | 02_nav_history.csv |


## fact_transactions

Investor transaction fact table containing SIP, lump sum, and redemption activity.

| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|---------|
| transaction_id | INTEGER | Surrogate key | Generated |
| investor_id | TEXT | Unique investor identifier | 08_investor_transactions.csv |
| transaction_date | DATE | Transaction date | 08_investor_transactions.csv |
| amfi_code | INTEGER | AMFI scheme code | 08_investor_transactions.csv |
| transaction_type | TEXT | SIP, Lumpsum, or Redemption | 08_investor_transactions.csv |
| amount_inr | REAL | Transaction amount in INR | 08_investor_transactions.csv |
| state | TEXT | Investor state | 08_investor_transactions.csv |
| city | TEXT | Investor city | 08_investor_transactions.csv |
| city_tier | TEXT | City classification (T30/B30) | 08_investor_transactions.csv |
| age_group | TEXT | Investor age bracket | 08_investor_transactions.csv |
| gender | TEXT | Investor gender | 08_investor_transactions.csv |
| annual_income_lakh | REAL | Annual income in lakh INR | 08_investor_transactions.csv |
| payment_mode | TEXT | Mode of payment | 08_investor_transactions.csv |
| kyc_status | TEXT | KYC verification status | 08_investor_transactions.csv |




## fact_performance

Fund performance and risk metrics.

| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|---------|
| performance_id | INTEGER | Surrogate key | Generated |
| amfi_code | INTEGER | AMFI scheme code | 07_scheme_performance.csv |
| return_1yr_pct | REAL | 1-year return percentage | 07_scheme_performance.csv |
| return_3yr_pct | REAL | 3-year return percentage | 07_scheme_performance.csv |
| return_5yr_pct | REAL | 5-year return percentage | 07_scheme_performance.csv |
| benchmark_3yr_pct | REAL | Benchmark 3-year return | 07_scheme_performance.csv |
| alpha | REAL | Alpha performance metric | 07_scheme_performance.csv |
| beta | REAL | Beta risk metric | 07_scheme_performance.csv |
| sharpe_ratio | REAL | Risk-adjusted return metric | 07_scheme_performance.csv |
| sortino_ratio | REAL | Downside risk-adjusted return metric | 07_scheme_performance.csv |
| std_dev_ann_pct | REAL | Annualized volatility percentage | 07_scheme_performance.csv |
| max_drawdown_pct | REAL | Maximum drawdown percentage | 07_scheme_performance.csv |
| aum_crore | REAL | Assets under management in crore INR | 07_scheme_performance.csv |
| expense_ratio_pct | REAL | Expense ratio percentage | 07_scheme_performance.csv |
| morningstar_rating | INTEGER | Morningstar rating | 07_scheme_performance.csv |
| risk_grade | TEXT | Risk classification | 07_scheme_performance.csv |


## fact_aum

Fund house Assets Under Management history.

| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|---------|
| aum_id | INTEGER | Surrogate key | Generated |
| date | DATE | Reporting date | 03_aum_by_fund_house.csv |
| fund_house | TEXT | Asset Management Company name | 03_aum_by_fund_house.csv |
| aum_lakh_crore | REAL | AUM in lakh crore INR | 03_aum_by_fund_house.csv |
| aum_crore | REAL | AUM in crore INR | 03_aum_by_fund_house.csv |
| num_schemes | INTEGER | Number of schemes managed | 03_aum_by_fund_house.csv |


## Notes

- Primary business key for mutual fund schemes is `amfi_code`.
- All monetary values are stored in Indian Rupees (inr) unless specified.
- NAV history was forward-filled across non-trading days to create a continuous daily time series.
- `dim_date` is a calendar dimension used for time-based analysis.
- Database implemented using SQLite.