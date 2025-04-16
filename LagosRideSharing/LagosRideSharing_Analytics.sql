CREATE DATABASE LagosRideSharing;

Use LagosRideSharing;

CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Rating DECIMAL(3,2),
    TotalRides INT DEFAULT 0
);

CREATE TABLE Riders (
    RiderID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL
);

CREATE TABLE Rides (
    RideID INT PRIMARY KEY AUTO_INCREMENT,
    DriverID INT,
    RiderID INT,
    Fare DECIMAL(10,2),
    Rating DECIMAL(3,2),
    DistanceKM DECIMAL(6,2),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (RiderID) REFERENCES Riders(RiderID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    RideID INT,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (RideID) REFERENCES Rides(RideID)
);



INSERT INTO Drivers (Name, Rating, TotalRides) VALUES
('John Doe', 4.5, 120),
('Jane Smith', 4.2, 90),
('James Bond', 4.7, 150),
('Samantha James', 4.3, 80),
('Michael Brown', 4.0, 60),
('Nina Williams', 4.6, 200),
('Chris Johnson', 4.1, 110),
('Sarah Davis', 4.8, 100),
('David Lee', 3.9, 70),
('Emma Green', 4.4, 130),
('Olumide Adebayo', 4.7, 150),
('Grace Okafor', 4.3, 140),
('Julius Adedeji', 4.6, 175),
('Tolu Olowolagba', 4.2, 105),
('Fola Akinwunmi', 4.5, 125),
('Oluwaseun Bello', 4.1, 115),
('Kayode Ogunleye', 4.8, 180),
('Chinonso Ifeanyi', 3.8, 85),
('Oluwafunmilayo Bello', 4.3, 140),
('Adeola Akin', 4.6, 160);


SELECT * from Drivers;

INSERT INTO Riders (Name, City) VALUES
('Alice Johnson', 'Lekki'),
('Victor Martins', 'Ikeja'),
('Funke Bello', 'Victoria Island'),
('Tunde Adeyemi', 'Surulere'),
('Grace Olamide', 'Yaba'),
('Kingsley Obi', 'Lekki'),
('Folasade Okoro', 'Ikeja'),
('Emeka Okafor', 'Victoria Island'),
('Temilade Adedeji', 'Lekki'),
('Rita Durojaiye', 'Surulere'),
('Chuka Nwosu', 'Yaba'),
('Ayotunde Adeleke', 'Ikeja'),
('Lola Abiola', 'Lekki'),
('Olumide Bakare', 'Surulere'),
('Chidera Okonkwo', 'Victoria Island'),
('Wale Oni', 'Yaba'),
('Olivia Adebayo', 'Lekki'),
('Temidayo Alabi', 'Ikeja'),
('Micheal Ojo', 'Victoria Island'),
('Tolu Ayinde', 'Surulere'),
('Grace Williams', 'Lekki'),
('Olumide Ayodele', 'Ikeja'),
('James Osundare', 'Yaba'),
('Chika Okafor', 'Surulere'),
('Sandra Ogunleye', 'Victoria Island');


SELECT * from Riders;

