create database HotelManager;



CREATE TABLE staff (
    employee_code VARCHAR(50) PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    employee_address VARCHAR(250) NOT NULL, 
    employee_phone VARCHAR(20) NOT NULL,
    employee_identification_card INT NOT NULL,
    employee_password VARCHAR(255) NOT NULL
);

CREATE TABLE room (
    room_code INT PRIMARY KEY,
    room_name VARCHAR(50) NOT NULL,
    kind_of_room VARCHAR(80) NOT NULL,
    status INT NOT NULL,
    price INT NOT NULL
);

CREATE TABLE service (
    service_code INT PRIMARY KEY,
    service_name VARCHAR(200) NOT NULL,
    service_prices INT NOT NULL
);

CREATE TABLE manage (
    employee_code VARCHAR(50) REFERENCES staff(employee_code),
    room_code INT REFERENCES room(room_code),
    service_code INT REFERENCES service(service_code),
	PRIMARY KEY(employee_code, room_code, service_code)
);

CREATE TABLE customer (
    customer_code VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_phone VARCHAR(20) NOT NULL
);

CREATE TABLE use_service (
    use_service_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_code VARCHAR(50) REFERENCES customer(customer_code),
    service_code INT REFERENCES service(service_code),
    use_date VARCHAR(50) NOT NULL
);






CREATE TABLE use_room (
    use_room_id INT PRIMARY KEY,
    customer_code VARCHAR(50) REFERENCES customer(customer_code),
    room_code INT REFERENCES room(room_code),
    check_in_date DATE NOT NULL,
    check_out_date DATE
);

CREATE TABLE bill (
    bill_code VARCHAR(50) PRIMARY KEY,
    customer_code VARCHAR(50) REFERENCES customer(customer_code),
    bill_prices INT NOT NULL,
    bill_date DATE NOT NULL
);

CREATE TABLE rent_room (
    rent_id INT PRIMARY KEY,
    customer_code VARCHAR(50) REFERENCES customer(customer_code),
	room_code INT REFERENCES room(room_code),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

CREATE TABLE book_room (
    book_id INT PRIMARY KEY,
    customer_code VARCHAR(50) REFERENCES customer(customer_code),
	room_code INT REFERENCES room(room_code),
    start_date_book DATE NOT NULL,
    deposits INT NOT NULL
);

CREATE TABLE change_room (
    change_id INT PRIMARY KEY,
    customer_code VARCHAR(50) REFERENCES customer(customer_code),
    old_room_code INT REFERENCES room(room_code),
    new_room_code INT REFERENCES room(room_code),
    room_change_date DATE NOT NULL
);

INSERT INTO use_service ( customer_code, service_code, use_date)  VALUES ( 2222, 2, '2022-21-12')

-- Chèn nhân viên 1
INSERT INTO staff (employee_code, employee_name, employee_address, employee_phone, employee_identification_card, employee_password)
VALUES ('A222', 'John Smith', '123 Main Street', '1234567890', 12345, '12345');

-- Chèn nhân viên 2
INSERT INTO staff (employee_code, employee_name, employee_address, employee_phone, employee_identification_card, employee_password)
VALUES ('B333', 'Jane Doe', '456 Elm Street', '9876543210', 54321, '13579');

-- Chèn dịch vụ 1
INSERT INTO service (service_code, service_name, service_prices)
VALUES (1, 'Room Cleaning', 50);

-- Chèn dịch vụ 2
INSERT INTO service (service_code, service_name, service_prices)
VALUES (2, 'Breakfast', 20);

-- Chèn dịch vụ 3
INSERT INTO service (service_code, service_name, service_prices)
VALUES (3, 'Airport Shuttle', 30);











-- Chèn thông tin về khách sạn và các loại phòng
-- Khách sạn 1
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (101, 'Hotel A - VIP Room 1', 'VIP', 1, 200);

-- Khách sạn 2
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (102, 'Hotel A - VIP Room 2', 'VIP', 1, 200);

-- Khách sạn 3
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (103, 'Hotel A - Standard Room 1', 'Standard', 1, 100);

-- Khách sạn 4
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (104, 'Hotel A - Standard Room 2', 'Standard', 1, 100);

-- Khách sạn 5
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (105, 'Hotel A - Cold Room 1', 'Cold', 1, 150);

-- Khách sạn 6
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (106, 'Hotel A - Cold Room 2', 'Cold', 1, 150);

-- Khách sạn 7
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (107, 'Hotel B - VIP Room 1', 'VIP', 1, 220);

-- Khách sạn 8
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (108, 'Hotel B - VIP Room 2', 'VIP', 1, 220);

-- Khách sạn 9
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (109, 'Hotel B - Standard Room 1', 'Standard', 1, 120);

-- Khách sạn 10
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (110, 'Hotel B - Standard Room 2', 'Standard', 1, 120);

-- Khách sạn 11
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (111, 'Hotel B - Cold Room 1', 'Cold', 1, 170);

-- Khách sạn 12
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (112, 'Hotel B - Cold Room 2', 'Cold', 1, 170);

-- Khách sạn 13
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (113, 'Hotel C - VIP Room 1', 'VIP', 1, 240);

-- Khách sạn 14
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (114, 'Hotel C - VIP Room 2', 'VIP', 1, 240);

-- Khách sạn 15
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (115, 'Hotel C - Standard Room 1', 'Standard', 1, 130);

-- Khách sạn 16
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (116, 'Hotel C - Standard Room 2', 'Standard', 1, 130);

-- Khách sạn 17
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (117, 'Hotel C - Cold Room 1', 'Cold', 1, 190);

-- Khách sạn 18
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (118, 'Hotel C - Cold Room 2', 'Cold', 1, 190);

-- Khách sạn 19
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (119, 'Hotel D - VIP Room 1', 'VIP', 1, 210);

-- Khách sạn 20
INSERT INTO room (room_code, room_name, kind_of_room, status, price)
VALUES (120, 'Hotel D - VIP Room 2', 'VIP', 1, 210);




SELECT r.room_name
FROM room r
JOIN use_room ur ON r.room_code = ur.room_code
JOIN customer c ON ur.customer_code = c.customer_code
WHERE c.customer_code = '333'


SELECT s.service_name ,us.use_date
FROM use_service AS us
JOIN service AS s ON us.service_code = s.service_code
WHERE us.customer_code = '555';

