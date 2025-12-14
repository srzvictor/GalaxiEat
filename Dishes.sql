CREATE TABLE Dishes (
    IdDishes INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10,2),
    Category VARCHAR(50),
    IdRestaurant INT,
    is_vegan BOOLEAN,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant)
);

INSERT INTO Dishes (IdDishes, Name, Price, Category, IdRestaurant, is_vegan) VALUES
(1, 'Soupe de légumes orbitale', 9, 'VEGER', 1, 1),
(2, 'Salade de quinoa cosmique', 9.5, 'VEGER', 2, 1),
(3, 'Pâtes aux tomates lyophilisées', 8.5, 'VEGER', 3, 1),
(4, 'Omelette aux herbes spatiales', 11, NULL, 4, 0),
(5, 'Gratin de pommes de terre stellaire', 10, 'VEGER', 5, 1),
(6, 'Poulet rôti basse gravité', 21, 'VIANDE', 6, 0),
(7, 'Blanquette de veau intersidérale', 24, 'VIANDE', 7, 0),
(8, 'Steak de bœuf galactique', 26, 'VIANDE', 8, 0),
(9, 'Magret de canard des étoiles', 23, 'VOLAILLE', 1, 0),
(10, 'Cassoulet orbital', 28, 'VEGER', 2, 1),
(11, 'Cabillaud vapeur cosmique', 17, 'POISSON', 3, 0),
(12, 'Filet de dorade céleste', 18.5, 'POISSON', 4, 0),
(13, 'Thon mi-cuit astral', 20, 'POISSON', 5, 0),
(14, 'Crevettes sautées nébuleuse', 19.5, 'CRUSTACE', 6, 0),
(15, 'Bouillabaisse spatiale', 30, 'POISSON', 7, 0),
(16, 'Fromage affiné sous vide spatial', 15, 'LAITIER', 8, 0),
(17, 'Pain artisanal en apesanteur', 7.5, NULL, 1, 0),
(18, 'Dessert chocolaté zéro gravité', 12, 'DESSERT', 2, 0),
(19, 'Tarte aux fruits cosmiques', 14, 'DESSERT', 3, 0),
(20, 'Riz au lait lacté lunaire', 10, 'DESSERT', 4, 0),
(21, 'Café espresso interstellaire', 5, 'DESSERT', 5, 0),
(22, 'Lasagnes végétariennes gravitationnelles', 16, 'VEGER', 6, 1),
(23, 'Agneau confit aux épices cosmiques', 27, 'VIANDE', 7, 0),
(24, 'Homard bleu de l''espace profond', 35, 'CRUSTACE', 8, 0);


DELETE FROM Dishes
WHERE Price = NULL