/*=====================================================================
                           ZOMATO RESTAURANT ANALYTICS
=======================================================================

Project      : Zomato Restaurant Analytics
Author       : Shubham Kumar Bharti
Database     : MySQL

Description:
This project analyzes Zomato restaurant data to uncover business insights
related to restaurant distribution, customer ratings, pricing, cuisines,
and digital service adoption.

=====================================================================*/

-- ==============================================================
-- DATABASE SETUP
-- ==============================================================

CREATE DATABASE IF NOT EXISTS Zomato_Analysis;

USE Zomato_Analysis;

-- ==============================================================
-- DATA INSPECTION
-- ==============================================================

-- View Country Table
SELECT *
FROM Country;

DESC Country;

-- View Restaurant Dataset
SELECT *
FROM Dataset;

DESC Dataset;

-- ==============================================================
-- BUSINESS QUESTION 1
-- Restaurant Distribution by Country & City
-- ==============================================================
-- Objective:
-- Identify cities and countries with the highest number of restaurants.

SELECT
    c.CountryName,
    d.City,
    COUNT(d.RestaurantID) AS Restaurant_Count
FROM Dataset d
JOIN Country c
    ON d.CountryCode = c.CountryID
GROUP BY
    c.CountryName,
    d.City
ORDER BY
    Restaurant_Count DESC;

-- ==============================================================
-- BUSINESS QUESTION 2
-- Restaurant Openings by Year, Quarter & Month
-- ==============================================================
-- Objective:
-- Analyze restaurant opening trends over time.

SELECT
    Year,
    Quarter,
    `Month Name`,
    COUNT(RestaurantID) AS Restaurant_Openings
FROM Dataset
GROUP BY
    Year,
    Quarter,
    `Month Name`
ORDER BY
    Year,
    Quarter;

-- ==============================================================
-- BUSINESS QUESTION 3
-- Restaurant Rating Distribution
-- ==============================================================
-- Objective:
-- Group restaurants based on their customer ratings.

SELECT
    FLOOR(Rating) AS Rating_Group,
    COUNT(RestaurantID) AS Total_Restaurants
FROM Dataset
GROUP BY
    FLOOR(Rating)
ORDER BY
    Rating_Group;

-- ==============================================================
-- BUSINESS QUESTION 4
-- Restaurant Distribution by Price Range
-- ==============================================================
-- Objective:
-- Categorize restaurants into pricing buckets.

SELECT
    CASE
        WHEN Average_Cost_for_two <= 500 THEN '₹0 - ₹500'
        WHEN Average_Cost_for_two <= 1000 THEN '₹501 - ₹1000'
        WHEN Average_Cost_for_two <= 2000 THEN '₹1001 - ₹2000'
        WHEN Average_Cost_for_two <= 5000 THEN '₹2001 - ₹5000'
        ELSE 'Above ₹5000'
    END AS Price_Bucket,
    COUNT(RestaurantID) AS Restaurant_Count
FROM Dataset
GROUP BY
    Price_Bucket
ORDER BY
    MIN(Average_Cost_for_two);

-- ==============================================================
-- BUSINESS QUESTION 5
-- Percentage of Restaurants Offering Table Booking
-- ==============================================================
-- Objective:
-- Determine adoption of table booking services.

SELECT
    Has_Table_booking,
    COUNT(RestaurantID) AS Restaurant_Count,
    ROUND(
        COUNT(RestaurantID) * 100 /
        (SELECT COUNT(*) FROM Dataset),
        2
    ) AS Percentage
FROM Dataset
GROUP BY
    Has_Table_booking;

-- ==============================================================
-- BUSINESS QUESTION 6
-- Percentage of Restaurants Offering Online Delivery
-- ==============================================================
-- Objective:
-- Evaluate online delivery adoption.

SELECT
    Has_Online_delivery,
    COUNT(RestaurantID) AS Restaurant_Count,
    ROUND(
        COUNT(RestaurantID) * 100 /
        (SELECT COUNT(*) FROM Dataset),
        2
    ) AS Percentage
FROM Dataset
GROUP BY
    Has_Online_delivery;

-- ==============================================================
-- BUSINESS QUESTION 7
-- Top 10 Most Popular Cuisines
-- ==============================================================
-- Objective:
-- Identify the cuisines with the largest restaurant presence.

SELECT
    Cuisines,
    COUNT(*) AS Restaurant_Count
FROM Dataset
GROUP BY
    Cuisines
ORDER BY
    Restaurant_Count DESC
LIMIT 10;

-- ==============================================================
-- BUSINESS QUESTION 8
-- Top 10 Cities by Average Rating
-- ==============================================================
-- Objective:
-- Identify cities with the highest average customer ratings.

SELECT
    City,
    ROUND(AVG(Rating),2) AS Average_Rating
FROM Dataset
GROUP BY
    City
ORDER BY
    Average_Rating DESC
LIMIT 10;

-- ==============================================================
-- END OF ANALYSIS
-- ==============================================================

/*
=====================================================================

Business Questions Answered

✔ Restaurant distribution by city and country
✔ Restaurant opening trends
✔ Customer rating distribution
✔ Restaurant pricing segmentation
✔ Table booking adoption
✔ Online delivery adoption
✔ Top cuisines
✔ Highest-rated cities

=====================================================================
*/