package model;

public class AirportFlightStat {
    private String departureAirport;
    private int totalFlights;

    public AirportFlightStat(String departureAirport, int totalFlights) {
        this.departureAirport = departureAirport;
        this.totalFlights = totalFlights;
    }

    public String getDepartureAirport() {
        return departureAirport;
    }

    public int getTotalFlights() {
        return totalFlights;
    }
}
