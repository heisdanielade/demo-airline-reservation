package dao;

import model.ClientBookingSummary;
import model.EmployeeFlightSummary;
import model.FlightSeatReport;
import java.util.List;

public interface ViewDAO {
    List<FlightSeatReport> getFlightSeatReport();
    List<ClientBookingSummary> getClientBookingSummary();
    List<EmployeeFlightSummary> getEmployeeFlightSummary();
}
