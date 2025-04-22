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

INSERT INTO Rides (DriverID, RiderID, Fare, Rating, DistanceKM) VALUES
(1, 1, 3000, 4.5, 10),
(2, 2, 2500, 4.2, 8),
(3, 3, 4500, 4.7, 15),
(4, 4, 3500, 4.3, 12),
(5, 5, 2000, 4.0, 7),
(6, 6, 4000, 4.6, 20),
(7, 7, 2800, 4.1, 9),
(8, 8, 5000, 4.8, 18),
(9, 9, 2200, 3.9, 6),
(10, 10, 3700, 4.4, 14),
(11, 11, 3900, 4.7, 16),
(12, 12, 3600, 4.3, 11),
(13, 13, 4200, 4.6, 17),
(14, 14, 3300, 4.2, 13),
(15, 15, 3800, 4.5, 19),
(16, 16, 2500, 4.1, 8),
(17, 17, 4800, 4.8, 22),
(18, 18, 3100, 3.8, 10),
(19, 19, 3300, 4.3, 14),
(20, 20, 4600, 4.6, 20),
(1, 21, 2900, 4.4, 11),
(2, 22, 3200, 4.1, 12),
(3, 23, 3400, 4.7, 13),
(4, 24, 3100, 4.3, 9),
(5, 25, 3600, 4.2, 15),
(6, 1, 2800, 4.6, 12),
(7, 2, 3500, 4.1, 16),
(8, 3, 5000, 4.8, 18),
(9, 4, 2300, 3.9, 7),
(10, 5, 3800, 4.4, 14),
(11, 6, 4000, 4.7, 20),
(12, 7, 3300, 4.3, 13),
(13, 8, 4100, 4.6, 17),
(14, 9, 3100, 4.2, 11),
(15, 10, 4200, 4.5, 19),
(16, 11, 2900, 4.1, 12),
(17, 12, 4700, 4.8, 21),
(18, 13, 3300, 3.8, 10),
(19, 14, 3200, 4.3, 14),
(20, 15, 4500, 4.6, 20),
(1, 16, 3000, 4.5, 12),
(2, 17, 2500, 4.2, 9),
(3, 18, 4500, 4.7, 15),
(4, 19, 3500, 4.3, 13),
(5, 20, 2000, 4.0, 7),
(6, 21, 4000, 4.6, 20),
(7, 22, 2800, 4.1, 8),
(8, 23, 5000, 4.8, 18),
(9, 24, 2200, 3.9, 6),
(10, 25, 3700, 4.4, 14);

SELECT * FROM Drivers WHERE DriverID NOT IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

SELECT * FROM Rides;


INSERT INTO Payments (RideID, Amount, PaymentMethod) VALUES
(101, 3000, 'Card'),
(102, 2500, 'Cash'),
(103, 4500, 'Card'),
(104, 3500, 'Mobile Money'),
(105, 2000, 'Cash'),
(106, 4000, 'Card'),
(107, 2800, 'Mobile Money'),
(108, 5000, 'Card'),
(109, 2200, 'Cash'),
(110, 3700, 'Mobile Money'),
(111, 3900, 'Card'),
(112, 3600, 'Cash'),
(113, 4200, 'Mobile Money'),
(114, 3300, 'Card'),
(115, 3800, 'Mobile Money'),
(116, 2500, 'Cash'),
(117, 4800, 'Card'),
(118, 3100, 'Cash'),
(119, 3300, 'Mobile Money'),
(120, 4600, 'Card'),
(121, 2900, 'Cash'),
(122, 3200, 'Card'),
(123, 3400, 'Mobile Money'),
(124, 3100, 'Cash'),
(125, 3600, 'Card'),
(126, 2800, 'Mobile Money'),
(127, 3500, 'Card'),
(128, 5000, 'Cash'),
(129, 2300, 'Mobile Money'),
(130, 3800, 'Card'),
(131, 4000, 'Cash'),
(132, 3300, 'Mobile Money'),
(133, 4100, 'Card'),
(134, 3100, 'Cash'),
(135, 4200, 'Mobile Money'),
(136, 2900, 'Card'),
(137, 4700, 'Cash'),
(138, 3300, 'Mobile Money'),
(139, 3200, 'Card'),
(140, 4500, 'Cash'),
(141, 3000, 'Card'),
(142, 2500, 'Cash'),
(143, 4500, 'Mobile Money'),
(144, 3500, 'Card'),
(145, 2000, 'Cash'),
(146, 4000, 'Card'),
(147, 2800, 'Mobile Money'),
(148, 5000, 'Card'),
(149, 2200, 'Cash'),
(150, 3700, 'Mobile Money');

SELECT * FROM Payments;


-- Top 5 highest-rated drivers in Lagos
CREATE TABLE Top5RatedDrivers AS
SELECT DriverID, Name, Rating, TotalRides
FROM Drivers
ORDER BY Rating DESC, TotalRides DESC
LIMIT 5;

SELECT * FROM Top5RatedDrivers;

-- Riders with more than 5 rides in the last 30 days in Lagos

CREATE TABLE ActiveRiders AS
SELECT r.RiderID, r.Name, r.City, COUNT(rd.RideID) AS TotalRides
FROM Riders r
JOIN Rides rd ON r.RiderID = rd.RiderID
WHERE rd.RideID IN (
    SELECT RideID FROM Rides WHERE DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= CURDATE()
)
GROUP BY r.RiderID, r.Name, r.City
HAVING TotalRides > 5;

SELECT * FROM ActiveRiders;

-- Total revenue for the past month for Lagos rides
CREATE TABLE MonthlyRevenue AS
SELECT SUM(p.Amount) AS TotalRevenue
FROM Payments p
JOIN Rides r ON p.RideID = r.RideID
WHERE DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= CURDATE();

SELECT * FROM MonthlyRevenue;

-- Busiest Areas in Lagos
CREATE TABLE Top3BusiestAreas AS
SELECT r.City, COUNT(rd.RideID) AS TotalRides
FROM Riders r
JOIN Rides rd ON r.RiderID = rd.RiderID
GROUP BY r.City
ORDER BY TotalRides DESC
LIMIT 3;

SELECT * FROM Top3BusiestAreas;


-- Driver with the highest revenue in Lagos

CREATE TABLE TopEarningDriver AS
SELECT d.DriverID, d.Name, SUM(p.Amount) AS TotalRevenue
FROM Drivers d
JOIN Rides r ON d.DriverID = r.DriverID
JOIN Payments p ON r.RideID = p.RideID
GROUP BY d.DriverID, d.Name
ORDER BY TotalRevenue DESC
LIMIT 1;

SELECT * FROM TopEarningDriver;

-- Find rides where the fare is more than 50% higher or lower than the average fare

CREATE TABLE OutlierRidesInLag AS
SELECT 
    r.RideID,
    r.Fare,
    (SELECT AVG(Fare) FROM Rides) AS AverageFare
FROM Rides r
WHERE r.Fare > (SELECT AVG(Fare) FROM Rides) * 1.1 
   OR r.Fare < (SELECT AVG(Fare) FROM Rides) * 0.1;

SELECT * FROM OutlierRidesInLag;

-- Find riders in Lagos who rated their drivers less than 3 on average
CREATE TABLE LowRatingRiders AS
SELECT 
    r.RiderID,
    r.Name,
    AVG(rd.Rating) AS AverageRating
FROM Riders r
JOIN Rides rd ON r.RiderID = rd.RiderID
WHERE r.City = 'Lagos'
GROUP BY r.RiderID, r.Name
HAVING AVG(rd.Rating) < 3;

SELECT * FROM LowRatingRiders;

-- Top 5 Neighborhood in Lagos
CREATE TABLE Top5LagosNeighborhoods AS
SELECT 
    r.City AS Neighborhood,
    AVG(rd.Fare) AS AverageFare
FROM Riders r
JOIN Rides rd ON r.RiderID = rd.RiderID
WHERE r.City IN ('Lekki', 'Ikeja', 'Victoria Island', 'Surulere', 'Yaba')
GROUP BY r.City
ORDER BY AverageFare DESC
LIMIT 5;

SELECT * FROM Top5LagosNeighborhoods;


-- Drivers wih no rides in the past 30 days

CREATE TABLE InactiveDriversInLagos AS
SELECT d.DriverID, d.Name
FROM Drivers d
WHERE d.DriverID NOT IN (
    SELECT DISTINCT DriverID FROM Rides
    WHERE DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= CURDATE()
);

SELECT * FROM InactiveDriversInLagos;

-- Rides in Lagos with the longest distance (top 5)
CREATE TABLE LongestRidesLagos AS
SELECT 
    r.RideID,
    r.DistanceKM,
    r.DriverID,
    r.RiderID
FROM Rides r
JOIN Riders rd ON r.RiderID = rd.RiderID
WHERE rd.City IN ('Lekki', 'Ikeja', 'Victoria Island', 'Surulere', 'Yaba') 
ORDER BY r.DistanceKM DESC
LIMIT 5;

SELECT * FROM LongestRidesLagos;


-- Find the number of rides each driver in Lagos has had, sorted by the most rides
CREATE TABLE DriverRideCounts AS
SELECT 
    d.DriverID, 
    d.Name, 
    COUNT(r.RideID) AS TotalRides
FROM Drivers d
JOIN Rides r ON d.DriverID = r.DriverID
JOIN Riders rd ON r.RiderID = rd.RiderID
WHERE rd.City IN ('Lekki', 'Ikeja', 'Victoria Island', 'Surulere', 'Yaba') 
GROUP BY d.DriverID, d.Name
ORDER BY TotalRides DESC;

SELECT * FROM DriverRideCounts;

-- Payment methods used by Lagos riders for rides over ₦50,000
CREATE TABLE HighValuePayments AS
SELECT 
    p.PaymentMethod, 
    COUNT(p.PaymentID) AS NumberOfTransactions
FROM Payments p
JOIN Rides r ON p.RideID = r.RideID
JOIN Riders rd ON r.RiderID = rd.RiderID
WHERE p.Amount > 50000 
AND rd.City IN ('Lekki', 'Ikeja', 'Victoria Island', 'Surulere', 'Yaba')
GROUP BY p.PaymentMethod
ORDER BY NumberOfTransactions DESC;

SELECT * FROM HighValuePayments;
SELECT MAX(Amount) FROM Payments;



-- Find rides in Lagos with a duration longer than 2 hours
CREATE TABLE LongRidesLagos AS
SELECT 
    r.RideID,
    r.DistanceKM,
    r.DriverID,
    r.RiderID
FROM Rides r
JOIN Riders rd ON r.RiderID = rd.RiderID
WHERE rd.City IN ('Lekki', 'Ikeja', 'Victoria Island', 'Surulere', 'Yaba') 
AND r.DistanceKM >= (2 * 40); -- Assuming an average speed of 40 km/h

SELECT * FROM LongRidesLagos;
