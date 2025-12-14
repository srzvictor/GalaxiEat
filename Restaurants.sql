CREATE TABLE Restaurants (
    IdRestaurant INT PRIMARY KEY,
    Name VARCHAR(100),
    Planet VARCHAR(100),
    Opening_year INT
);

INSERT INTO Restaurants (IdRestaurant, Name, Planet, Opening_year) VALUES
(1, 'Le Four Solaire', 'Mercure', 2105),
(2, 'Le Voile de Vénus', 'Vénus', 2110),
(3, 'La Table Bleue', 'Terre', 2024),
(4, 'Le Bistrot Rouge', 'Mars', 2120),
(5, 'Le Géant Gourmand', 'Jupiter', 2130),
(6, 'Les Anneaux d’Or', 'Saturne', 2140),
(7, 'L’Azur Glacial', 'Uranus', 2150),
(8, 'L’Abysse Bleu', 'Neptune', 2160);