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
