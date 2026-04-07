# 🛒 Amazon Sales & Product Performance Analysis 

[Main Dashboard](dashboard_full.png)

## 📌 Problem Statement
This project aims to analyze Amazon product data to identify key factors influencing customer ratings, pricing strategies, and product performance. The goal is to uncover trends in category performance, discounts, and pricing to support data-driven decision-making for e-commerce businesses.

## 🌟 Project Overview
This project is an end-to-end data analytics solution that explores over 1,300 Amazon product listings. It demonstrates a complete data lifecycle: from raw data cleaning and database management to advanced analytical querying and professional dashboarding.

## 🛠️ Tools & Technologies
- **Data Cleaning (Python/Pandas):** Handled missing values, standardized currency, and engineered new features like 'Value Score'.
- **Database Analysis (SQL):** Developed complex queries to segment products by price and category performance.
- **Reporting (Excel):** Utilized Pivot Tables for rapid data summarization and validation.
- **Visualization (Power BI):** Created an interactive dashboard to track business KPIs.

- ## 🔄 Workflow
Data Cleaning (Python) → Data Storage (CSV/Excel) → SQL Analysis → Reporting (Excel) → Data Visualization (Power BI)

 
## 📈 Key Visualizations

### 🏆 Top Categories
![Top](Visuals/top_categories.png)

### ⭐ Rating Distribution
![Ratings](Visuals/rating_distribution.png)

### 💰 Price Analysis
![Price](Visuals/price_analysis.png)

### 🔻 Discount Impact
![Discount](Visuals/discount_impact.png) 

## 📊 Key Insights
- **Category Leadership:** Computers & Accessories and Electronics represent the highest volume of high-rated products.
- **The Value Sweet-Spot:** Products categorized as 'Mid-range' (500-2000 Rs) consistently show higher customer satisfaction scores compared to 'Premium' items.
- **Discount Impact:** There is a direct correlation between high discounts (>50%) and increased 'Rating Counts', suggesting price cuts significantly drive sales volume.

---
## 💼 Business Impact
- Helps identify high-performing product categories  
- Supports pricing and discount strategies  
- Improves product positioning based on customer behavior

- ## 📂 Dataset
- Source: Amazon Product Dataset (public dataset)
- Records: 1,300+ products

- ## 📁 Project Structure
- **`Amazon_Clean_Final.csv`**: The fully processed dataset.
- **`sql queries.sql`**: Professional SQL scripts used for data aggregation.
- **`amazon dashboard.pbix`**: The master Power BI file.
- **`Visuals/`**: Exports of the data trends (Price Category, Top Categories, etc.)

- ## 🚀 How to Run

1. Open the Python notebook (`.ipynb`) in Jupyter Notebook or Google Colab  
2. Load the dataset (`Amazon_Clean_Final.csv`)  
3. Run all cells to perform data analysis and generate visualizations  
4. Execute SQL queries from `sql queries.sql` in PostgreSQL  
5. Open `amazon dashboard.pbix` in Power BI Desktop to view the interactive dashboard  
  
Analyzed and Developed by Shivani Sharma
