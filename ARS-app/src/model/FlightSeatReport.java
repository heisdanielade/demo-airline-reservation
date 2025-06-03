package model;

public class FlightSeatReport {
    private int flightId;
    private String aircraftModel;
    private int seatCapacity;
    private int availableSeats;

    public FlightSeatReport(int flightId, String aircraftModel, int seatCapacity, int availableSeats) {
        this.flightId = flightId;
        this.aircraftModel = aircraftModel;
        this.seatCapacity = seatCapacity;
        this.availableSeats = availableSeats;
    }

    public int getFlightId() {
        return flightId;
    }

    public String getAircraftModel() {
        return aircraftModel;
    }

    public int getSeatCapacity() {
        return seatCapacity;
    }

    public int getAvailableSeats() {
        return availableSeats;
    }
}
