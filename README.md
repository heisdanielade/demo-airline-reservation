# ✈️ Airline Reservation System - Database Project

## 📌 Project Overview
This project is a **school project** focused on designing and implementing a **database-driven Airline Reservation System**. The main goal is to gain **hands-on experience with relational databases**, complex queries, and real-world airline operations.

### **🔧 Tools Used**
- **MariaDB** (Database)
- **Oracle DB Modeler** (For designing entity relationships)

---

## 📂 Database Schema

### **📌 1. Passengers (`passenger`)**
Stores customer information.

| Attribute        | Type          | Description |
|-----------------|--------------|-------------|
| `passenger_id`  | INT (PK)      | Unique identifier |
| `first_name`    | VARCHAR       | Passenger's first name |
| `last_name`     | VARCHAR       | Passenger's last name |
| `email`         | VARCHAR       | Contact email |
| `phone_number`  | VARCHAR       | Contact phone number |
| `date_of_birth` | DATE          | Passenger's birthdate |
| `passport_number` | VARCHAR      | Unique passport ID |

**Relationships:**
- **1:N** with `ticket` (One passenger can book multiple tickets)
- **1:N** with `baggage` (One passenger can have multiple baggage items)
- **1:N** with `payment` (One passenger can make multiple payments)

---

### **📌 2. Flights (`flight`)**
Stores flight details.

| Attribute         | Type       | Description |
|------------------|-----------|-------------|
| `flight_id`      | INT (PK)  | Unique flight identifier |
| `flight_number`  | VARCHAR   | Flight code |
| `departure_airport_id` | INT (FK) | Links to `airport` |
| `arrival_airport_id` | INT (FK) | Links to `airport` |
| `departure_time` | DATETIME  | Scheduled departure time |
| `arrival_time`   | DATETIME  | Scheduled arrival time |
| `aircraft_model` | VARCHAR   | Model of aircraft used |
| `status`        | ENUM(Scheduled, Delayed, Canceled) | Flight status |

**Relationships:**
- **M:1** with `airport` (Each flight departs from & arrives at an airport)
- **1:N** with `ticket` (One flight can have multiple ticket bookings)
- **1:N** with `flight_schedule` (A flight can have multiple schedules)
- **1:N** with `employee` (Each flight has pilots & crew assigned)

---

### **📌 3. Airports (`airport`)**
Stores airport details.

| Attribute       | Type       | Description |
|---------------|-----------|-------------|
| `airport_id`  | INT (PK)  | Unique airport identifier |
| `airport_code` | VARCHAR  | IATA/ICAO code |
| `airport_name` | VARCHAR  | Name of the airport |
| `city`        | VARCHAR   | City where the airport is located |
| `country`     | VARCHAR   | Country of the airport |

**Relationships:**
- **1:N** with `flight` (Each airport has multiple departing & arriving flights)

---

### **📌 4. Tickets (`ticket`)**
Stores flight bookings.

| Attribute       | Type     | Description |
|---------------|---------|-------------|
| `ticket_id`   | INT (PK) | Unique ticket identifier |
| `passenger_id` | INT (FK) | Links to `passenger` |
| `flight_id`   | INT (FK) | Links to `flight` |
| `seat_id`     | INT (FK) | Links to `seat` |
| `price`       | DECIMAL  | Ticket price |
| `ticket_status` | ENUM(Confirmed, Canceled, Checked-in) | Ticket status |

**Relationships:**
- **M:1** with `passenger` (Each ticket is booked by one passenger)
- **M:1** with `flight` (Each ticket is for a specific flight)
- **1:1** with `seat` (Each ticket is assigned a seat)
- **1:1** with `payment` (Each ticket has a payment)

---

### **📌 5. Seats (`seat`)**
Stores seat details.

| Attribute      | Type     | Description |
|--------------|---------|-------------|
| `seat_id`    | INT (PK) | Unique seat identifier |
| `flight_id`  | INT (FK) | Links to `flight` |
| `seat_number` | VARCHAR | Seat number |
| `class`      | ENUM(Economy, Business, First Class) | Seating class |
| `is_available` | BOOLEAN | Availability status |

**Relationships:**
- **M:1** with `flight` (Seats belong to a flight)
- **1:1** with `ticket` (Each seat is assigned to a ticket)

---

### **📌 6. Baggage (`baggage`)**
Stores passenger baggage information.

| Attribute      | Type      | Description |
|--------------|----------|-------------|
| `baggage_id` | INT (PK) | Unique identifier |
| `passenger_id` | INT (FK) | Links to `passenger` |
| `flight_id` | INT (FK) | Links to `flight` |
| `weight_kg`  | DECIMAL  | Baggage weight |
| `baggage_type` | ENUM(Checked, Carry-on) | Type of baggage |

**Relationships:**
- **M:1** with `passenger` (One passenger can have multiple baggage items)
- **M:1** with `flight` (Baggage is linked to a flight)

---

### **📌 7. Payments (`payment`)**
Stores ticket payment details.

| Attribute       | Type      | Description |
|---------------|----------|-------------|
| `payment_id`  | INT (PK) | Unique identifier |
| `ticket_id`   | INT (FK) | Links to `ticket` |
| `passenger_id` | INT (FK) | Links to `passenger` |
| `payment_method` | ENUM(Credit Card, PayPal, Cash) | Payment method |
| `amount`      | DECIMAL   | Payment amount |
| `payment_date` | DATETIME  | Date of payment |
| `payment_status` | ENUM(Completed, Pending, Failed) | Status of payment |

**Relationships:**
- **1:1** with `ticket` (Each ticket has a payment)
- **M:1** with `passenger` (A passenger can make multiple payments)

---

### **📌 8. Employees (`employee`)**
Stores airline staff details.

| Attribute     | Type     | Description |
|-------------|---------|-------------|
| `employee_id` | INT (PK) | Unique identifier |
| `name`       | VARCHAR  | Employee name |
| `role`       | ENUM(Pilot, Flight Attendant, Ground Crew) | Job role |
| `salary`     | DECIMAL  | Salary amount |
| `flight_id`  | INT (FK, Nullable) | Assigned flight |

**Relationships:**
- **M:1** with `flight` (Employees are assigned to flights)

---

### **📌 9. Flight Schedules (`flight_schedule`)**
Stores flight schedules.

| Attribute      | Type     | Description |
|--------------|---------|-------------|
| `schedule_id` | INT (PK) | Unique identifier |
| `flight_id`  | INT (FK) | Links to `flight` |
| `departure_date` | DATETIME | Scheduled departure date |
| `arrival_date` | DATETIME | Scheduled arrival date |
| `gate_number` | VARCHAR | Assigned gate number |
| `status`     | ENUM(Scheduled, Delayed, Completed) | Status of the flight |

---

## 📌 Author
**[Daniel Adediran](https://www.heisdanielade.xyz/)**

---
