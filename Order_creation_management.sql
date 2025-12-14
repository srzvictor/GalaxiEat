SELECT 
    CustomerOrders.IdOrders,
    CustomerOrders.Customer_name,
    CustomerOrders.IdRestaurant,
    SUM(OrderItems.Quantity) as nombre_total_articles,
    CustomerOrders.Total_amount as montant_total,
    ROUND(CAST(SUM(OrderItems.Quantity) AS REAL) / CustomerOrders.Total_amount, 6) as ratio_articles_montant
FROM CustomerOrders
JOIN OrderItems ON CustomerOrders.IdOrders = OrderItems.IdOrders
GROUP BY CustomerOrders.IdOrders, CustomerOrders.Customer_name, CustomerOrders.IdRestaurant, CustomerOrders.Total_amount;


SELECT 
    CustomerOrders.IdOrders,
    CustomerOrders.Customer_name,
    CustomerOrders.IdRestaurant,
    CustomerOrders.Total_amount as montant_total,
    SUM(OrderItems.Quantity) as nombre_articles
FROM CustomerOrders
JOIN OrderItems ON CustomerOrders.IdOrders = OrderItems.IdOrders
GROUP BY CustomerOrders.IdOrders, CustomerOrders.Customer_name, CustomerOrders.IdRestaurant, CustomerOrders.Total_amount
ORDER BY CustomerOrders.Total_amount DESC;