package dao;

import model.Flight;

import java.util.List;

public interface FlightDAO {

    List<Flight> getAllFlights();

    boolean addFlight(Flight flight);
    boolean updateFlight(Flight flight);
    boolean deleteFlight(int flightId);
}
