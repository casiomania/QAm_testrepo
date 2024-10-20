CREATE DATABASE qaAuto;

CREATE TABLE car_brands (
    id INT,
    PRIMARY KEY(id),
    title VARCHAR(100) NOT NULL
);

CREATE TABLE car_models (
    id INT,
    PRIMARY KEY(id),
    carBrandId INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);

CREATE TABLE users (
    id INT,
    PRIMARY KEY(id),
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE cars (
    id INT,
    PRIMARY KEY(id),
    userId INT NOT NULL,
    carBrandId INT NOT NULL,
    carModelId INT NOT NULL,
    mileage INT NOT NULL,
    initialMileage INT NOT NULL,
    FOREIGN KEY(userId) REFERENCES users(id),
    FOREIGN KEY(carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY(carModelId) REFERENCES car_models(id)
);

INSERT INTO car_brands 
(id, title)
VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Ford'),
(4, 'Porsche'),
(5, 'Fiat'),
(6, 'Tesla');

INSERT INTO car_models
(id, carBrandId, title)
VALUES
(1, 1, 'TT'),
(2, 1, 'R8'),
(3, 1, 'Q7'),
(4, 2, 'X5'),
(5, 2, 'X6'),
(6, 2, 'Z3'),
(7, 3, 'Fiesta'),
(8, 3, 'Focus'),
(9, 3, 'Fusion'),
(10, 4, '911'),
(11, 4 , 'Cayenne'),
(12, 4, 'Panamera'),
(13, 5, 'Palio'),
(14, 5, 'Ducato'),
(15, 5, 'Panda');

INSERT INTO users
(id, firstName, lastName, email, password)
VALUES
(1, 'Michael', 'J. Fox',  'PunnyPanda@example.com', 'password1'),
(2, 'Michael', 'Keaton', 'LOLmaster@email.com', 'password2'),
(3, 'Harrison', 'Ford', 'JokesAreLife@hilarious.com', 'password3'),
(4, 'Anthony', 'Hopkins', 'ChucklesGalore@gmail.com', 'password4'),
(5, 'Al', 'Pacino', 'SillySockLover@funnyaddress.net', 'password5'),
(6, 'Angelina', 'Jolie', 'HaHaHaHa@laughingmail.com', 'password6'),
(7, 'Keanu', 'Reeves', 'WittyWordSmith@emailprovider.com', 'password7'),
(8, 'Morgan', 'Freeman', 'ComicGenius@comedycentral.com', 'password8'),
(9, 'Denzel', 'Washington', 'SmilesAllDay@joyfulmail.com', 'password9'),
(10, 'Betty', 'White', 'QuirkyQuipster@hilarious.org', 'password10'),
(11, 'Robin', 'Williams', 'LaughOutLoud@emailprovider.com', 'password11');

INSERT INTO cars
(id, userId, carBrandId, carModelId, mileage, initialMileage)
VALUES
(1, 1, 1, 1, 514.00, 62.00),
(2, 3, 4, 2, 191.00, 131.00),
(3, 4, 5, 3, 210.00, 98.00),
(4, 10, 2, 1, 206.00, 65.00),
(5, 11, 2, 1, 269.00, 78.00),
(6, 3, 5, 3, 918.00, 160.00),
(7, 2, 5, 4, 1156.00, 196.00),
(8, 1, 5, 5, 1675.00, 962.00),
(9, 6, 5, 3, 393.00, 270.00),
(10, 7, 2, 1, 983.00, 412.00),
(11, 7, 5, 3, 485.00, 135.00),
(12, 5, 5, 4, 621.895, 620.00);
