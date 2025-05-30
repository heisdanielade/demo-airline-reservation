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
        String query = "SELECT * FROM flight";

        try(Connection conn = DatabaseManager.getConnection();
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery()){

            while(rs.next()){
                flights.add(new Flight(
                        rs.getInt("flight_id"),
                        rs.getTimestamp("base_departure_time").toLocalDateTime(),
                        rs.getTimestamp("base_arrival_time").toLocalDateTime()
                ));
            }
        } catch (SQLException e){
            System.err.println("(e) Error loading flights: " + e.getMessage());
        }

        return flights;
    }

    @Override
    public boolean addFlight(Flight flight) {
        String query = "INSERT INTO flight (base_departure_time, base_arrival_time) VALUES (?, ?)";

        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setTimestamp(1, Timestamp.valueOf(flight.getBaseDepartureTime()));
            stmt.setTimestamp(2, Timestamp.valueOf(flight.getBaseArrivalTime()));

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("Error adding flight: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean updateFlight(Flight flight) {
        String query = "UPDATE flight SET base_departure_time = ?, base_arrival_time = ? WHERE flight_id = ?";

        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setTimestamp(1, Timestamp.valueOf(flight.getBaseDepartureTime()));
            stmt.setTimestamp(2, Timestamp.valueOf(flight.getBaseArrivalTime()));
            stmt.setInt(3, flight.getFlightId());

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
        }
    }
}
