CREATE TABLE OrderItems (
    IdOrderItems INT PRIMARY KEY,
    IdOrders INT NOT NULL,
    IdDishes INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (IdOrders) REFERENCES CustomerOrders(IdOrders),
    FOREIGN KEY (IdDishes) REFERENCES Dishes(IdDishes)
);

INSERT INTO OrderItems (IdOrderItems, IdOrders, IdDishes, Quantity) VALUES
(1, 1, 1, 2),
(2, 1, 9, 1),
(3, 2, 3, 3),
(4, 2, 1, 1),
(5, 3, 6, 2),
(6, 3, 2, 1);


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
