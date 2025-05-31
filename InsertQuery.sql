INSERT INTO Users (User_ID, Email, Password_hash, Username, created_at)
VALUES (1, 'anna.kowalska@example.com', 'hash123', 'annak', SYSDATE);

INSERT INTO Users (User_ID, Email, Password_hash, Username, created_at)
VALUES (2, 'jan.nowak@example.com', 'hash456', 'jann', SYSDATE);

INSERT INTO Users (User_ID, Email, Password_hash, Username, created_at)
VALUES (3, 'ewa.nowicka@example.com', 'hash789', 'ewan', SYSDATE);

INSERT INTO Users (User_ID, Email, Password_hash, Username, created_at)
VALUES (4, 'tomasz.lewandowski@example.com', 'hashabc', 'tomek', SYSDATE);

INSERT INTO Users (User_ID, Email, Password_hash, Username, created_at)
VALUES (5, 'katarzyna.wojciechowska@example.com', 'hashdef', 'kasiaw', SYSDATE);

INSERT ALL
    INTO Categories (CategoryID, Name) VALUES (1, 'rower miejski')
    INTO Categories (CategoryID, Name) VALUES (2, 'rower górski')
    INTO Categories (CategoryID, Name) VALUES (3, 'rower szosowy')
    INTO Categories (CategoryID, Name) VALUES (4, 'akcesoria')
SELECT * FROM dual;

INSERT ALL
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (1, 'City Bike 100', 'Rower miejski idealny do jazdy po mieście.', 1499.99, 10, 1)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (2, 'City Bike Comfort', 'Rower z wygodnym siodełkiem i bagażnikiem.', 1699.99, 5, 1)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (3, 'Urban Cruiser', 'Stylowy rower miejski z 7 biegami.', 1899.99, 7, 1)
  
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (4, 'MTB Pro 3000', 'Rower górski do wymagających tras.', 2499.99, 3, 2)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (5, 'Mountain Rider', 'Lekki rower górski z amortyzacją.', 2299.99, 8, 2)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (6, 'Trail Blazer', 'Rower na trudny teren, 21 biegów.', 2799.99, 6, 2)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (7, 'Downhill Beast', 'Profesjonalny rower górski do zjazdów.', 3999.99, 2, 2)

  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (8, 'Roadmaster 500', 'Rower szosowy dla początkujących.', 1999.99, 4, 3)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (9, 'Speedster 700', 'Szybki rower na długie dystanse.', 2699.99, 6, 3)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (10, 'Aero Pro X', 'Zaawansowany rower szosowy z karbonową ramą.', 4999.99, 3, 3)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (11, 'Touring Elite', 'Rower szosowy do długich podróży.', 3499.99, 5, 3)

  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (12, 'Kask MTB', 'Kask ochronny do jazdy górskiej.', 299.99, 15, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (13, 'Kask miejski', 'Stylowy kask do jazdy po mieście.', 199.99, 12, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (14, 'Pompka rowerowa', 'Mała pompka ręczna do roweru.', 59.99, 20, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (15, 'Bagażnik tylny', 'Bagażnik montowany nad tylnym kołem.', 89.99, 10, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (16, 'Oświetlenie LED', 'Przednia i tylna lampka rowerowa LED.', 79.99, 30, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (17, 'Zapięcie U-lock', 'Zabezpieczenie roweru typu U-lock.', 149.99, 18, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (18, 'Sakwy rowerowe', 'Wodoodporne torby na bagażnik.', 249.99, 9, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (19, 'Licznik rowerowy', 'Licznik prędkości i dystansu.', 129.99, 14, 4)
  INTO Products (Product_ID, Name, Description, Price, Stock_quantity, CategoryID) VALUES (20, 'Bidon 750ml', 'Bidon rowerowy z ustnikiem.', 39.99, 25, 4)
SELECT * FROM dual;

INSERT ALL
  INTO Shopping_cart (CartID, Created_at, User_ID) VALUES (1, SYSDATE - 10, 1)
  INTO Shopping_cart (CartID, Created_at, User_ID) VALUES (2, SYSDATE - 8, 2)
  INTO Shopping_cart (CartID, Created_at, User_ID) VALUES (3, SYSDATE - 5, 3)
  INTO Shopping_cart (CartID, Created_at, User_ID) VALUES (4, SYSDATE - 3, 4)
  INTO Shopping_cart (CartID, Created_at, User_ID) VALUES (5, SYSDATE - 1, 5)
SELECT * FROM dual;

INSERT ALL
  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (1, 1499.99, 1, 1)
  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (2, 199.99, 1, 13)
  
  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (1, 2299.99, 2, 5)
  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (1, 249.99, 2, 18)

  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (3, 1999.99, 3, 8)
  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (1, 129.99, 3, 19)

  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (2, 89.99, 4, 15)
  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (1, 2799.99, 4, 6)

  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (1, 39.99, 5, 20)
  INTO Cart_items (Quantity, Unit_price, CartID, Product_ID) VALUES (2, 1699.99, 5, 2)
SELECT * FROM dual;

INSERT ALL
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (1, SYSDATE - 9, 'Pending', 'ul. Kwiatowa 10, Warszawa', 1699, 1)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (2, SYSDATE - 8, 'Shipped', 'ul. Polna 5, Kraków', 2549, 2)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (3, SYSDATE - 5, 'Delivered', 'ul. Lipowa 7, Gdańsk', 6129, 3)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (4, SYSDATE - 3, 'Cancelled', 'ul. Spacerowa 3, Poznań', 2969, 4)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (5, SYSDATE - 1, 'Pending', 'ul. Leśna 12, Wrocław', 3479, 5)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (6, SYSDATE - 2, 'Shipped', 'ul. Słoneczna 8, Lublin', 4499, 2)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (7, SYSDATE - 7, 'Delivered', 'ul. Krótka 15, Katowice', 1999, 4)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (8, SYSDATE - 6, 'Pending', 'ul. Ogrodowa 21, Łódź', 7899, 1)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (9, SYSDATE - 4, 'Cancelled', 'ul. Parkowa 11, Szczecin', 3799, 3)
  INTO Orders (OrderID, Order_date, Status, Shipping_address, Total_amount, User_ID) 
    VALUES (10, SYSDATE - 2, 'Delivered', 'ul. Wiosenna 4, Gdynia', 2299, 5)
SELECT * FROM dual;


INSERT ALL
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 1499.99, 1, 1)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 199.99, 1, 13)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 2299.99, 2, 5)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 249.99, 2, 18)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (3, 1999.99, 3, 8)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 129.99, 3, 19)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (2, 89.99, 4, 15)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 2799.99, 4, 6)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 39.99, 5, 20)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (2, 1699.99, 5, 2)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 3999.99, 6, 7)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 499.99, 6, 12)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 1999.99, 7, 8)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 3499.99, 8, 11)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 2199.99, 8, 4)
  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 2200.00, 8, 5)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (2, 1899.99, 9, 3)

  INTO Order_items (Quantity, Unit_price, OrderID, Product_ID) VALUES (1, 2299.99, 10, 5)
SELECT * FROM dual;
