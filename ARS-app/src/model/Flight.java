package model;

import java.time.LocalDateTime;

public class Flight {
    private int flightId;
    private int aircraftId;
    private int departureAirportId;
    private int arrivalAirportId;
    private LocalDateTime baseDepartureTime;
    private LocalDateTime baseArrivalTime;
    private String departureAirportName;
    private String arrivalAirportName;

    public int getAircraftId() {
        return aircraftId;
    }

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

    public void setAircraftId(int aircraftId) {
        this.aircraftId = aircraftId;
    }

    private String aircraftName;

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

    public String getAircraftName() {
        return aircraftName;
    }

    public void setAircraftName(String aircraftName) {
        this.aircraftName = aircraftName;
    }

    public Flight(int flightId, int aircraftId, int departureAirportId, int arrivalAirportId, LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime, String departureAirportName, String arrivalAirportName, String aircraftName) {
        this.flightId = flightId;
        this.aircraftId = aircraftId;
        this.departureAirportId = departureAirportId;
        this.arrivalAirportId = arrivalAirportId;
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
        this.departureAirportName = departureAirportName;
        this.arrivalAirportName = arrivalAirportName;
        this.aircraftName = aircraftName;
    }

    public Flight(int flightId,  LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime, String departureAirportName, String arrivalAirportName, String aircraftName) {
        this.flightId = flightId;
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
        this.departureAirportName = departureAirportName;
        this.arrivalAirportName = arrivalAirportName;
        this.aircraftName = aircraftName;
    }

    public Flight(int flightId, LocalDateTime baseDepartureTime, LocalDateTime baseArrivalTime, String departureAirportName, String arrivalAirportName) {
        this.flightId = flightId;
        this.baseDepartureTime = baseDepartureTime;
        this.baseArrivalTime = baseArrivalTime;
        this.departureAirportName = departureAirportName;
        this.arrivalAirportName = arrivalAirportName;
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
