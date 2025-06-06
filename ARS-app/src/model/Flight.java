package model;

import java.time.LocalDateTime;

public class Flight {
    private int flightId;
    private LocalDateTime baseDepartureTime;
    private LocalDateTime baseArrivalTime;
    private String departureAirportName;
    private String arrivalAirportName;
    private int aircraftId;

    public String getDepartureAirportName() {
        return departureAirportName;
    }

    public void setDepartureAirportName(String departureAirportName) {
        this.departureAirportName = departureAirportName;
    }

    public String getArrivalAirportName() {
        return arrivalAirportName;
    }

    public void setArrivalAirportName(String arrivalAirportName) {
        this.arrivalAirportName = arrivalAirportName;
    }

    public int getAircraftId() {
        return aircraftId;
    }

    public void setAircraftId(int aircraftId) {
        this.aircraftId = aircraftId;
    }

    public Flight(int flightId, LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime, String departureAirportId, String arrivalAirportId, int aircraftId) {
        this.flightId = flightId;
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
        this.departureAirportName = departureAirportId;
        this.arrivalAirportName = arrivalAirportId;
        this.aircraftId = aircraftId;
    }

    public Flight(int flightId, LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime, String departureAirportId, String arrivalAirportId) {
        this.flightId = flightId;
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
        this.departureAirportName = departureAirportId;
        this.arrivalAirportName = arrivalAirportId;
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
