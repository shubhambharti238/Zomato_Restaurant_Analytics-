-- ====================================================
-- Project : Zomato Restaurant Analytics
-- Author  : Shubham Bharti
-- Database: MySQL
-- ====================================================


create database Zomato_Analysis;
use Zomato_Analysis;

select * from country; 
desc country;

select * from dataset;
desc dataset;

-- 3.Find the Numbers of Resturants based on City and Country.
SELECT 
    c.CountryName, 
    d.City, 
    COUNT(d.RestaurantID) AS Number_of_Restaurants
FROM dataset d
JOIN country c ON d.CountryCode = c.CountryID
GROUP BY c.Countryname, d.City
ORDER BY Number_of_Restaurants DESC;

-- 4.Numbers of Resturants opening based on Year , Quarter , Month
SELECT 
    Year, 
    Quarter, 
    "Month Name", 
    COUNT(RestaurantID) AS Openings
FROM dataset
GROUP BY Year, Quarter, "Month Name"
ORDER BY Year, Quarter;

-- 5. Count of Resturants based on Average Ratings
SELECT 
    FLOOR(Rating) AS Rating_Bin, 
    COUNT(RestaurantID) AS Total_Restaurants
FROM dataset
GROUP BY FLOOR(Rating)
ORDER BY Rating_Bin;

-- 6. Create buckets based on Average Price of reasonable size and find out how many resturants falls in each buckets
SELECT 
    CASE 
        WHEN Average_Cost_for_two <= 500 THEN '0-500'
        WHEN Average_Cost_for_two <= 1000 THEN '501-1000'
        WHEN Average_Cost_for_two <= 2000 THEN '1001-2000'
        WHEN Average_Cost_for_two <= 5000 THEN '2001-5000'
        ELSE 'Above 5000'
    END AS Price_Bucket,
    COUNT(RestaurantID) AS Restaurant_Count
FROM dataset
GROUP BY Price_Bucket
ORDER BY MIN(Average_Cost_for_two);

-- 7.Percentage of Resturants based on "Has_Table_booking"
SELECT 
    Has_Table_booking, 
    COUNT(RestaurantID) AS Count,
    ROUND(COUNT(RestaurantID) * 100.0 / (SELECT COUNT(*) FROM dataset), 2) AS Percentage
FROM dataset
GROUP BY Has_Table_booking;

-- 8.Percentage of Resturants based on "Has_Online_delivery"
SELECT 
    Has_Online_delivery, 
    COUNT(RestaurantID) AS Count,
    ROUND(COUNT(RestaurantID) * 100.0 / (SELECT COUNT(*) FROM dataset), 2) AS Percentage
FROM dataset
GROUP BY Has_Online_delivery;

-- 9. Develop Charts based on Cusines, City, Ratings
-- Top 10 Cuisines
SELECT Cuisines, COUNT(*) as Count
FROM dataset
GROUP BY Cuisines
ORDER BY Count DESC
LIMIT 10;

-- Average Rating by City
SELECT City, AVG(Rating) as Avg_Rating
FROM dataset
GROUP BY City
ORDER BY Avg_Rating DESC
LIMIT 10;



