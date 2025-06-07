package view;

import dao.ViewDAO;
import dao.ViewDAOImpl;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.scene.chart.PieChart;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.*;
import model.AirportFlightStat;

import java.util.List;

public class FlightDistributionChartView {
    private final ViewDAO viewDAO = new ViewDAOImpl();

    public void start(Stage stage) {
        List<AirportFlightStat> stats = viewDAO.getDepartureAirportFlightStats();

        ObservableList<PieChart.Data> pieData = FXCollections.observableArrayList();
        int grandTotal = stats.stream().mapToInt(AirportFlightStat::getTotalFlights).sum();

        for (AirportFlightStat stat : stats) {
            PieChart.Data slice = new PieChart.Data(stat.getDepartureAirport(), stat.getTotalFlights());
            pieData.add(slice);
        }

        PieChart pieChart = new PieChart(pieData);
        pieChart.setTitle("Flight Distribution by Departure Airport");

        pieChart.getData().forEach(data -> {
            data.nodeProperty().addListener((obs, oldNode, newNode) -> {
                if (newNode != null) {
                    double percent = 100.0 * data.getPieValue() / grandTotal;
                    String tooltipText = String.format(
                            "%s\nFlights: %.0f\n%.1f%% of total",
                            data.getName(),
                            data.getPieValue(),
                            percent
                    );
                    Tooltip.install(newNode, new Tooltip(tooltipText));
                }
            });
        });

        VBox layout = new VBox(10, new Label("Flights by Departure Location"), pieChart);
        layout.setPadding(new Insets(15));

        Scene scene = new Scene(layout, 600, 400);
        stage.setScene(scene);
        stage.setTitle("Report: Departure Airport Distribution");
        stage.show();
    }
}

