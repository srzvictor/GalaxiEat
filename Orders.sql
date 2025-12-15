CREATE TABLE Orders (
    IdOrders INT PRIMARY KEY,
    IdRestaurant INT,
    Total_amount DECIMAL(10, 2),
    Customer_name VARCHAR(255)
);

ALTER TABLE Orders RENAME TO CustomerOrders;

INSERT INTO CustomerOrders (IdOrders, IdRestaurant, Total_amount, Customer_name) VALUES
(1, 1, 41, 'Jean Dupont'),
(2, 3, 34.5, 'Marie Martin'),
(3, 6, 51.5, 'Pierre Durand');

DELETE FROM CustomerOrders
WHERE Total_amount < 35

SELECT SUM(Total_amount) AS Total_Gagne
FROM CustomerOrders;
