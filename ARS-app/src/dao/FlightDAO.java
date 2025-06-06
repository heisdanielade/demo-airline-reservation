package dao;

import model.Flight;

import java.util.List;

public interface FlightDAO {

    List<Flight> getAllFlights();
    List<String> getAllAirportNames();
    List<String> getAllAircraftNames();
    int getAirportIdByName(String name);
    int getAircraftIdByName(String name);

    boolean addFlight(Flight flight);
    boolean updateFlight(Flight flight);
    boolean deleteFlight(int flightId);
}
