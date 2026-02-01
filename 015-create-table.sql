-- 1. Physical Tables in the venue
CREATE TABLE VenueTables (
    TableID INT PRIMARY KEY,
    Capacity INT,
    Location VARCHAR(50) -- e.g., 'Window', 'Patio'
);

-- 2. Bookings made by customers
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    TableID INT,
    BookingDate DATE,
    FOREIGN KEY (TableID) REFERENCES VenueTables(TableID)
);

-- 3. Payments linked to bookings
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    BookingID INT,
    Amount DECIMAL(10, 2),
    Status VARCHAR(20), -- e.g., 'Paid', 'Pending'
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
