SELECT 
    Employees.Firstname,
    Employees.Lastname,
    Restaurants.Name as restaurant_name
FROM Employees
JOIN Restaurants ON Employees.IdRestaurant = Restaurants.IdRestaurant;

SELECT 
    Dishes.Name as dish_name,
    CustomerOrders.Customer_name,
    Restaurants.Planet
FROM OrderItems
JOIN Dishes ON OrderItems.IdDishes = Dishes.IdDishes
JOIN CustomerOrders ON OrderItems.IdOrders = CustomerOrders.IdOrders
JOIN Restaurants ON CustomerOrders.IdRestaurant = Restaurants.IdRestaurant;

SELECT 
    Restaurants.Name as restaurant_name,
    COUNT(Employees.IdEmployees) as nombre_employes
FROM Restaurants
LEFT JOIN Employees ON Restaurants.IdRestaurant = Employees.IdRestaurant
GROUP BY Restaurants.IdRestaurant, Restaurants.Name;
