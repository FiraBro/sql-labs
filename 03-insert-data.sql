-- Add some tables
INSERT INTO VenueTables VALUES (1, 4, 'Window');
INSERT INTO VenueTables VALUES (2, 2, 'Main Hall');

-- Create a booking for 'John Doe' at Table 1
INSERT INTO Bookings VALUES (101, 'John Doe', 1, '2024-05-20');
INSERT INTO Bookings VALUES (102, 'Jane Smith', 2, '2024-05-21');

-- Record a payment for John's booking
INSERT INTO Payments VALUES (5001, 101, 45.50, 'Paid');
INSERT INTO Payments VALUES (5002, 102, 30.00, 'Pending');
