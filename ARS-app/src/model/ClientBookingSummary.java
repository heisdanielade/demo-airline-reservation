package model;

public class ClientBookingSummary {
    private int clientId;
    private String firstName;
    private String lastName;
    private int totalBookings;
    private double totalSpent;
    private double avgTicketPrice;

    public ClientBookingSummary(int clientId, String firstName, String lastName,
                                int totalBookings, double totalSpent, double avgTicketPrice) {
        this.clientId = clientId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.totalBookings = totalBookings;
        this.totalSpent = totalSpent;
        this.avgTicketPrice = avgTicketPrice;
    }

    public int getClientId() {
        return clientId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public int getTotalBookings() {
        return totalBookings;
    }

    public double getTotalSpent() {
        return totalSpent;
    }

    public double getAvgTicketPrice() {
        return avgTicketPrice;
    }
}
