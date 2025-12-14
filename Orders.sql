CREATE TABLE Orders (
    IdOrders INT PRIMARY KEY,
    IdRestaurant INT,
    Total_amount DECIMAL(10, 2),
    Customer_name VARCHAR(255)
);

ALTER TABLE Orders RENAME TO CustomerOrders;

INSERT INTO CustomerOrders (IdOrders, IdRestaurant, Total_amount, Customer_name) VALUES
(1, 1, 280000, 'Jean Dupont'),
(2, 3, 340000, 'Marie Martin'),
(3, 6, 470000, 'Pierre Durand');