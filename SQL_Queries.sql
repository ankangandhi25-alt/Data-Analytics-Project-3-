-- View all records
SELECT * FROM Orders;

-- Delivered Orders
SELECT *
FROM Orders
WHERE OrderStatus = 'Delivered';

-- Orders above 1000
SELECT *
FROM Orders
WHERE TotalPrice > 1000;

-- Total Orders
SELECT COUNT(*) AS TotalOrders
FROM Orders;

-- Orders by Status
SELECT OrderStatus,
COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;

-- Revenue by Product
SELECT Product,
SUM(TotalPrice) AS TotalRevenue
FROM Orders
GROUP BY Product;

-- Average Order Value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM Orders;

-- Orders by Payment Method
SELECT PaymentMethod,
COUNT(*) AS TotalOrders
FROM Orders
GROUP BY PaymentMethod;

-- Orders by Referral Source
SELECT ReferralSource,
COUNT(*) AS TotalOrders
FROM Orders
GROUP BY ReferralSource;

-- Top Selling Products
SELECT Product,
SUM(Quantity) AS QuantitySold
FROM Orders
GROUP BY Product
ORDER BY QuantitySold DESC;