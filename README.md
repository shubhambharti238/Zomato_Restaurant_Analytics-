# 🍽️ Zomato Restaurant Analytics

## 📌 Project Background

### Business Overview

Zomato is one of India's largest food technology platforms, providing restaurant discovery, online food delivery, customer reviews, and table reservation services across more than **800 cities**. As the platform continues to expand, understanding restaurant performance, customer preferences, pricing strategies, and digital service adoption becomes critical for improving customer experience and supporting restaurant partners.

As a **Data Analyst**, the objective of this project was to transform raw restaurant data into meaningful business insights using SQL, Power BI, Tableau, and Excel. The analysis focuses on identifying trends in restaurant distribution, cuisine popularity, customer ratings, pricing behavior, and digital service adoption to support strategic decision-making.

---

## 🎯 Business Objectives

This analysis answers the following business questions:

- Which cities have the highest restaurant concentration?
- Which cuisines are the most popular among customers?
- How are restaurants distributed across different price ranges?
- What percentage of restaurants offer online delivery and table booking?
- How are customer ratings distributed across restaurants?
- Which markets present opportunities for business growth?

---

## 📊 Key Areas of Analysis

- 🏙 Restaurant Distribution Analysis
- 🍽 Cuisine & Customer Preference Analysis
- ⭐ Customer Rating Analysis
- 🚚 Service Availability & Pricing Analysis

---
## 📂 Project Resources

📈 **Power BI Dashboard:** Zomato Analytics.pbix

🗄️ **SQL Data Scripts:** SQL - Zomato Analytics.sql

📉 **Tableau Dashboard:** [[Tableau Link]](https://public.tableau.com/views/ZOMATO_DASHBOARD/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

# Data Structure & Initial Checks
Zomato database structure as seen below consists of Three tables: Dataset, Countrymap, Calender. The project follows a **Star Schema** consisting of one fact table and two dimension tables. A description of each table is as follows:
- **Fact Table:** 1
- **Dimension Tables:** 2
- **Restaurants:** 9,551
- **Cuisine Records:** 11,229

<img width="853" height="771" alt="Untitled" src="https://github.com/user-attachments/assets/41b605a7-f447-411d-9002-2065267072ca" />

---

# 📈 Executive Summary

## Overview of Findings

The analysis covers **9,551 restaurants** across multiple cities and countries, evaluating customer preferences, restaurant performance, pricing strategies, and digital service adoption.

Three major insights emerged:

- **New Delhi dominates the platform with 5,473 restaurants**, representing the largest restaurant market in the dataset, followed by Gurgaon (1,118) and Noida (1,080).
- **Only 25.66% of restaurants provide online delivery**, while **12.12% offer table booking**, indicating significant opportunities to improve digital service adoption.
- Customer satisfaction is generally positive, with **48.06% of restaurants receiving ratings between 3 and 4**, while **22.52% achieve ratings above 4**, demonstrating strong overall service quality.

<img width="1161" height="658" alt="Screenshot 2026-05-28 191205" src="https://github.com/user-attachments/assets/af9a8f19-d9fd-4933-9f2a-e74e0658a6a3" />



---

# 🔍 Insights Deep Dive

---

# 🏙 Restaurant Distribution Analysis

### Business Question

Which cities dominate the restaurant market?

### Findings

- The dataset contains **9,551 restaurants**.
- **New Delhi** accounts for **5,473 restaurants**, making it the largest restaurant market by a significant margin.
- Gurgaon (1,118) and Noida (1,080) are the second and third largest restaurant hubs.
- Restaurant density decreases sharply outside the Delhi NCR region.
  ### Business Insight

The Delhi NCR region represents a mature and highly competitive market. Future expansion efforts should focus on emerging cities with lower restaurant density and growth potential.

### Business Insight

The Delhi NCR region represents a mature and highly competitive market. Future expansion efforts should focus on emerging cities with lower restaurant density and growth potential.

### Business Insight

The Delhi NCR region represents a mature and highly competitive market. Future expansion efforts should focus on emerging cities with lower restaurant density and growth potential.

### Business Insight

The Delhi NCR region represents a mature and highly competitive market. Future expansion efforts should focus on emerging cities with lower restaurant density and growth potential.


<img width="768" height="432" alt="Restaurant Distribution by City" src="https://github.com/user-attachments/assets/166c4305-3798-42f1-b6dc-7d83619e1d83" />


---

# 🍽 Cuisine Analysis

### Business Question

Which cuisines are most popular?

### Findings

- North Indian cuisine appears among the most popular offerings.
- Chinese, Italian, Pizza, and Indian cuisines consistently rank among the top restaurant categories.
- Multi-cuisine restaurants dominate metropolitan markets.

### Business Insight

Restaurant acquisition strategies should prioritize high-demand cuisines while encouraging cuisine diversity in developing markets.

<img width="212" height="275" alt="image" src="https://github.com/user-attachments/assets/bb636ada-3d24-4fdb-9348-4282bd7c26f7" />



---

# ⭐ Customer Rating Analysis

### Business Question

How satisfied are customers?

### Findings

- **48.06%** of restaurants have ratings between **3–4**.
- **22.52%** have ratings above **4**.
- Restaurants rated below **2** account for only **14.45%**.

### Business Insight

Overall customer satisfaction is healthy. High-performing restaurants should receive greater visibility through recommendation engines and promotional campaigns.

<img width="768" height="432" alt="Restaurant Rating Distribution" src="https://github.com/user-attachments/assets/612b5273-1990-4657-922f-194d60b4b7af" />


---

# 🚚 Service Availability Analysis

### Business Question

How widely have restaurants adopted digital services?

### Findings

- **25.66%** of restaurants provide online delivery.
- **12.12%** support table booking.
- Most restaurants still rely primarily on traditional dine-in services.

### Business Insight

Increasing adoption of online delivery and reservation services presents a significant opportunity to improve customer convenience and increase platform engagement.

<img width="939" height="403" alt="Screenshot 2026-08-07 135058" src="https://github.com/user-attachments/assets/3cd45c8c-1dfb-4541-a630-9c03c4ebfcb3" />



---

# 💡 Recommendations

Based on the findings, the following recommendations are proposed:

### 1. Expand Digital Services

Only **25.66%** of restaurants currently provide online delivery.

**Recommendation:** Encourage restaurant partners to adopt online delivery through onboarding incentives and promotional campaigns.

---

### 2. Increase Table Booking Adoption

Table booking adoption remains low at **12.12%**.

**Recommendation:** Introduce incentives for restaurants to enable reservation services and improve customer convenience.

---

### 3. Focus Growth Outside Delhi NCR

Restaurant concentration is heavily skewed toward Delhi NCR.

**Recommendation:** Prioritize restaurant acquisition and marketing efforts in underrepresented cities with growth potential.

---

### 4. Promote High-Rated Restaurants

More than **22%** of restaurants maintain ratings above 4.

**Recommendation:** Highlight top-performing restaurants within recommendation systems to improve customer trust and platform engagement.

---

### 5. Strengthen Cuisine-Based Marketing

North Indian, Chinese, Pizza, Italian, and Indian cuisines dominate customer preferences.

**Recommendation:** Use cuisine-based promotions and personalized recommendations to increase customer engagement.

---

# ⚠ Assumptions & Limitations

- Missing values were cleaned using SQL and Excel.
- Currency values were analyzed without exchange-rate normalization.
- Opening date analysis was limited to available records.
- Customer ratings represent historical values within the dataset.
- Restaurant performance reflects only the available dataset and not current Zomato operations.

---

# 🛠 Tech Stack

- SQL (MySQL)
- Power BI
- Tableau
- Microsoft Excel
- Power Query

---

# 📌 Skills Demonstrated

- SQL Querying
- Data Cleaning
- Data Modeling
- Exploratory Data Analysis (EDA)
- Power BI Dashboard Development
- Tableau Visualization
- KPI Development
- Business Intelligence
- Data Visualization
- Business Recommendations

---

## 👨‍💻 Author

**Shubham Kumar Bharti**

**Data Analyst**

📧 shubhambharti238@gmail.com

💼 [LinkedIn](https://www.linkedin.com/in/shubham-bharti23/)

