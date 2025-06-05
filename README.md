# ✈️ Airline Reservation System - Database Project

## 📄 Application Description

This project is a **JavaFX-based mini CRUD application** connected to a MariaDB-backed **Airline Reservation System** database. It allows:

- Managing flight data (Create, Read, Update, Delete)
- Viewing summary reports generated from complex SQL views
- Abstraction of database interactions using DAO design pattern

The backend is fully abstracted to support changes in the underlying data source (e.g., migrating from DB to CSV). SQL errors are logged to the console, never exposed to the user interface.

---

## 🧩 Entity Descriptions

The system is structured around core real-world components of airline operations:

- **flight**: A scheduled trip from one airport to another.
- **aircraft**: Planes used to operate flights, each with a type and registration.
- **aircraft_type** and **aircraft_manufacturer**: Define plane models and their manufacturers.
- **airport**, **city**, **country**: Location data for departures and arrivals.
- **client**: Individuals who book flights.
- **ticket**: Bookings made by clients for specific flights and seats.
- **employee**: Airline staff such as pilots, crew, and operations.
- **crew_role**: Defines what function each employee serves on a flight.
- **flight_crew**: Assignment of employees to flights in specific roles.
- **seat**, **seat_type**, **cabin_class**: Defines the seating layout inside aircraft.
- **aircraft_cabin_class**: Mapping of aircraft to their seating classes (e.g., Economy).
- **payment**, **payment_method**, **payment_status**, **currency**: Tracks how bookings are paid for.
- **document_type**: Type of ID used during booking (e.g., Passport).
- **baggage**, **baggage_type**: Info about checked or carry-on bags.
- **boarding_pass**: Gate and seat info provided after check-in.
- **employee_assignment**, **department**, **job_position**: Defines internal staffing and structure.
- **gender**, **nationality**: Demographic information.

Each table is interlinked with foreign keys to simulate a real airline data environment.

### `flight`
| Column | Type | Description |
|--------|------|-------------|
| flight_id | INT | Unique flight identifier |
| base_departure_time | DATETIME | Planned departure time |
| base_arrival_time | DATETIME | Planned arrival time |
| departure_airport_id | FK | Links to `airport` |
| arrival_airport_id | FK | Links to `airport` |
| aircraft_id | FK | Links to `aircraft` |

### `aircraft`
| Column | Type | Description |
|--------|------|-------------|
| aircraft_id | INT | Unique aircraft ID |
| registration_number | VARCHAR | Plane identifier |
| status_id | FK | Status (active, under maintenance, etc.) |
| aircraft_type_id | FK | Type/model of the aircraft |

### `client`
| Column | Type | Description |
|--------|------|-------------|
| client_id | INT | Unique client ID |
| first_name | VARCHAR | First name |
| last_name | VARCHAR | Last name |
| email_address | VARCHAR | Contact email |

### `employee`
| Column | Type | Description |
|--------|------|-------------|
| employee_id | INT | Unique employee ID |
| first_name, last_name | VARCHAR | Name details |
| hire_date | DATE | Start of employment |
| nationality_id, gender_id | FK | Demographic info |

### `flight_crew`
| Column | Type | Description |
|--------|------|-------------|
| flight_crew_id | INT | PK |
| employee_id | FK | Who's flying |
| flight_id | FK | On which flight |
| role_id | FK | Crew role (Captain, Attendant, etc.) |

### `ticket`
| Column | Type | Description |
|--------|------|-------------|
| ticket_id | VARCHAR | Booking reference |
| client_id | FK | Client who booked |
| flight_id | FK | Flight booked |
| seat_id | FK | Assigned seat |
| currency_id, document_type_id | FK | Metadata |

### `payment`
| Column | Type | Description |
|--------|------|-------------|
| payment_id | INT | Unique payment ID |
| ticket_id | FK | Paid-for ticket |
| amount_paid | DECIMAL | Amount |
| method_id, status_id | FK | Payment method & status |

### `seat`
| Column | Type | Description |
|--------|------|-------------|
| seat_id | INT | Seat ID |
| seat_row | INT | Row number |
| seat_number | VARCHAR | Row + letter |
| type_id | FK | Seat type (Standard) |
| aircraft_cabin_id | FK | Aircraft cabin location |

---

## 📊 View Descriptions

### `view_flight_seat_availability`
Shows number of available seats on each flight by subtracting booked seats from aircraft capacity.

**Joins:** `flight`, `aircraft`, `aircraft_cabin_class`, `seat`, `ticket`  
**Used in:** Report screen “Flights and Available Seats”

### `view_client_booking_summary`
Summarizes each client’s ticket bookings and payment totals.

**Joins:** `client`, `ticket`, `payment`  
**Used in:** Report screen “Client Frequent Flyer Summary”

### `view_employee_flight_summary`
Lists employees assigned to flights and how many they’ve worked, grouped by role.

**Joins:** `employee`, `flight_crew`, `crew_role`  
**Used in:** Report screen “Employee Flight Assignments”

---

## 🖥️ Java Application Architecture

### Layers:
- **Model**: POJOs for `Flight`, `Client`, `EmployeeFlightSummary`, etc.
- **DAO**: Clean separation of database logic with JDBC
- **View**: Pure JavaFX screens (no FXML), one per report + CRUD

### Features:
- SQL exceptions are caught and **printed to the console**, not UI
- Can be reconnected to another data source (CSV, another DB) easily
- Code designed for readability and maintainability

---

## 📦 Project Structure

```
src/
 ├── dao/
 │    ├── FlightDAO.java
 │    ├── ViewDAO.java
 │    └── impl/ (implementations)
 ├── model/
 │    ├── Flight.java
 │    └── EmployeeFlightSummary.java
 ├── view/
 │    ├── FlightCRUDView.java
 │    ├── EmployeeSummaryView.java
 │    └── etc.
 └── Main.java
```

---

## ✅ Test Data Summary

- 10 clients, 10 employees
- 10 aircraft linked to 10 real airports
- 10 flights with assigned crew and booked tickets
- All key foreign keys satisfied (`currency`, `payment_status`, etc.)

---

## 🔚 Notes

- JavaFX must be properly linked using:
  ```
  --module-path /path/to/javafx-sdk/lib --add-modules javafx.controls
  ```
- Database must be running before launching the app
- Default DB settings:
  - Host: `localhost`
  - Port: `3306`
  - User: `root`
  - Password: ``
  - Database: `airline`

---

## 📌 Author
**[Daniel Adediran](https://www.heisdanielade.xyz/)**

---
