package model;

import java.time.LocalDateTime;

public class Flight {
    private int flightId;
    private LocalDateTime baseDepartureTime;
    private LocalDateTime baseArrivalTime;

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
