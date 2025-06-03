package dao;

import model.FlightSeatReport;
import util.DatabaseManager;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ViewDAOImpl implements ViewDAO {

    @Override
    public List<FlightSeatReport> getFlightSeatReport() {
        List<FlightSeatReport> list = new ArrayList<>();
        String query = "SELECT * FROM view_flight_seat_availability";

        try (Connection conn = DatabaseManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(new FlightSeatReport(
                        rs.getInt("flight_id"),
                        rs.getString("aircraft_model"),
                        rs.getInt("seat_capacity"),
                        rs.getInt("available_seats")
                ));
            }

        } catch (SQLException e) {
            System.err.println("Error fetching report: " + e.getMessage());
        }

        return list;
    }
}
