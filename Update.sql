UPDATE Dishes 
SET Price = Price * 0.90
WHERE Price > 12;

UPDATE Dishes 
SET Price = Price * 0.95
WHERE Price <= 12;
