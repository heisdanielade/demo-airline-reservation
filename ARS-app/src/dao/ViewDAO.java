package dao;

import model.AirportFlightStat;
import model.ClientBookingSummary;
import model.EmployeeFlightSummary;
import model.FlightSeatReport;
import java.util.List;

public interface ViewDAO {
    List<FlightSeatReport> getFlightSeatReport();
    List<ClientBookingSummary> getClientBookingSummary();
    List<AirportFlightStat> getDepartureAirportFlightStats();
    List<EmployeeFlightSummary> getEmployeeFlightSummary();
}
