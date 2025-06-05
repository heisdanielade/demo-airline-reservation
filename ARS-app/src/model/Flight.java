package model;

import java.time.LocalDateTime;

public class Flight {
    private int flightId;
    private LocalDateTime baseDepartureTime;
    private LocalDateTime baseArrivalTime;
    private int departureAirportId;
    private int arrivalAirportId;
    private int aircraftId;

    public int getDepartureAirportId() {
        return departureAirportId;
    }

    public void setDepartureAirportId(int departureAirportId) {
        this.departureAirportId = departureAirportId;
    }

    public int getArrivalAirportId() {
        return arrivalAirportId;
    }

    public void setArrivalAirportId(int arrivalAirportId) {
        this.arrivalAirportId = arrivalAirportId;
    }

    public int getAircraftId() {
        return aircraftId;
    }

    public void setAircraftId(int aircraftId) {
        this.aircraftId = aircraftId;
    }

    public Flight(int flightId, LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime, int departureAirportId, int arrivalAirportId, int aircraftId) {
        this.flightId = flightId;
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
        this.departureAirportId = departureAirportId;
        this.arrivalAirportId = arrivalAirportId;
        this.aircraftId = aircraftId;
    }

    public int getFlightId() {
        return flightId;
    }

    public Flight(int flightId, LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime) {
        this.flightId = flightId;
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
    }

    public Flight(LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime) {
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
    }

    public void setFlightId(int flightId) {
        this.flightId = flightId;
    }

    public LocalDateTime getBaseDepartureTime() {
        return baseDepartureTime;
    }

    public void setBaseDepartureTime(LocalDateTime baseDepartureTime) {
        this.baseDepartureTime = baseDepartureTime;
    }

    public LocalDateTime getBaseArrivalTime() {
        return baseArrivalTime;
    }

    public void setBaseArrivalTime(LocalDateTime baseArrivalTime) {
        this.baseArrivalTime = baseArrivalTime;
    }
}
