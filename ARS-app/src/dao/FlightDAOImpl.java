package dao;

import model.Flight;
import util.DatabaseManager;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FlightDAOImpl implements FlightDAO{

    @Override
    public List<Flight> getAllFlights(){
        List<Flight> flights = new ArrayList<>();
        String query = "SELECT \n" +
                       "  f.flight_id, \n" +
                       "  f.base_departure_time, \n" +
                       "  f.base_arrival_time, \n" +
                       "  da.name AS departure_airport_name, \n" +
                       "  aa.name AS arrival_airport_name, \n" +
                       "  CONCAT(am.name, ' ', at.model) AS aircraft_name \n" +  // ✅ space before FROM
                       "FROM flight f\n" +
                       "JOIN airport da ON f.departure_airport_id = da.airport_id\n" +
                       "JOIN airport aa ON f.arrival_airport_id = aa.airport_id\n" +
                       "JOIN aircraft ac ON f.aircraft_id = ac.aircraft_id\n" +
                       "JOIN aircraft_type at ON ac.aircraft_type_id = at.aircraft_type_id\n" +
                       "JOIN aircraft_manufacturer am ON at.aircraft_manufacturer_id = am.aircraft_manufacturer_id;";


        try(Connection conn = DatabaseManager.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery()){

            while(rs.next()){
                flights.add(new Flight(
                        rs.getInt("flight_id"),
                        rs.getTimestamp("base_departure_time").toLocalDateTime(),
                        rs.getTimestamp("base_arrival_time").toLocalDateTime(),
                        rs.getString("departure_airport_name"),
                        rs.getString("arrival_airport_name"),
                        rs.getString("aircraft_name")
                ));
            }
        } catch (SQLException e){
            System.err.println("(e) Error loading flights: " + e.getMessage());
        }

        return flights;
    }

    @Override
    public List<String> getAllAirportNames() {
        List<String> names = new ArrayList<>();
        String sql = "SELECT name FROM airport";
        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                names.add(rs.getString("name"));
            }
        } catch (SQLException e) {
            System.err.println("Error loading airports: " + e.getMessage());
        }
        return names;
    }

    @Override
    public List<String> getAllAircraftNames() {
        List<String> names = new ArrayList<>();
        String sql = "SELECT CONCAT(am.name, ' ', at.model) AS aircraft_name " +
                     "FROM aircraft a " +
                     "JOIN aircraft_type at ON a.aircraft_type_id = at.aircraft_type_id " +
                     "JOIN aircraft_manufacturer am ON at.aircraft_manufacturer_id = am.aircraft_manufacturer_id";
        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                names.add(rs.getString("aircraft_name"));
            }
        } catch (SQLException e) {
            System.err.println("Error loading aircrafts: " + e.getMessage());
        }
        return names;
    }

    @Override
    public int getAirportIdByName(String name) {
        String sql = "SELECT airport_id FROM airport WHERE name = ?";
        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) return rs.getInt("airport_id");
        } catch (SQLException e) {
            System.err.println("Error getting airport ID: " + e.getMessage());
        }
        return -1;
    }

    @Override
    public int getAircraftIdByName(String name) {
        String sql = "SELECT a.aircraft_id " +
                     "FROM aircraft a " +
                     "JOIN aircraft_type at ON a.aircraft_type_id = at.aircraft_type_id " +
                     "JOIN aircraft_manufacturer am ON at.aircraft_manufacturer_id = am.aircraft_manufacturer_id " +
                     "WHERE CONCAT(am.name, ' ', at.model) = ?";
        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) return rs.getInt("aircraft_id");
        } catch (SQLException e) {
            System.err.println("Error getting aircraft ID: " + e.getMessage());
        }
        return -1;
    }


    @Override
    public boolean addFlight(Flight flight) {
        String query = "INSERT INTO flight (base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setTimestamp(1, Timestamp.valueOf(flight.getBaseDepartureTime()));
            stmt.setTimestamp(2, Timestamp.valueOf(flight.getBaseArrivalTime()));
            stmt.setInt(3, flight.getDepartureAirportId());
            stmt.setInt(4, flight.getArrivalAirportId());
            stmt.setInt(5, flight.getAircraftId());

            System.out.printf("(info) Inserting flight: depAirportId=%d, arrAirportId=%d, aircraftId=%d%n",
                    flight.getDepartureAirportId(), flight.getArrivalAirportId(), flight.getAircraftId());

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("Error adding flight: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean updateFlight(Flight flight) {
        String query = "UPDATE flight SET base_departure_time = ?, base_arrival_time = ?, departure_airport_id = ?, arrival_airport_id = ?, aircraft_id = ? WHERE flight_id = ?";

        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setTimestamp(1, Timestamp.valueOf(flight.getBaseDepartureTime()));
            stmt.setTimestamp(2, Timestamp.valueOf(flight.getBaseArrivalTime()));
            stmt.setInt(3, flight.getDepartureAirportId());
            stmt.setInt(4, flight.getArrivalAirportId());
            stmt.setInt(5, flight.getAircraftId());
            stmt.setInt(6, flight.getFlightId());


            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("Error updating flight: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean deleteFlight(int flightId) {
        String query = "DELETE FROM flight WHERE flight_id = ?";

        try(Connection conn = DatabaseManager.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query)){

            stmt.setInt(1, flightId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e){
            System.err.println("(e) Error deleting flight: " + e.getMessage());
            return false;
        }
    }
}
