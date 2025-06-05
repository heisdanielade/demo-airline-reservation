package model;

public class EmployeeFlightSummary {
    private int employeeId;
    private String firstName;
    private String lastName;
    private String roleName;
    private int totalFlights;

    public EmployeeFlightSummary(int employeeId, String firstName, String lastName,
                                 String roleName, int totalFlights) {
        this.employeeId = employeeId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.roleName = roleName;
        this.totalFlights = totalFlights;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getRoleName() {
        return roleName;
    }

    public int getTotalFlights() {
        return totalFlights;
    }
}
