package view;

import dao.ViewDAO;
import dao.ViewDAOImpl;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import model.FlightSeatReport;

public class FlightSeatReportView {
    private final ViewDAO viewDAO = new ViewDAOImpl();

    public void start(Stage stage) {
        TableView<FlightSeatReport> table = new TableView<>();
        ObservableList<FlightSeatReport> data = FXCollections.observableArrayList(viewDAO.getFlightSeatReport());

        TableColumn<FlightSeatReport, Integer> idCol = new TableColumn<>("Flight ID");
        idCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(cell.getValue().getFlightId()));

        TableColumn<FlightSeatReport, String> modelCol = new TableColumn<>("Aircraft Model");
        modelCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getAircraftModel()));

        TableColumn<FlightSeatReport, Integer> capacityCol = new TableColumn<>("Seat Capacity");
        capacityCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getSeatCapacity()));

        TableColumn<FlightSeatReport, Integer> availableCol = new TableColumn<>("Available Seats");
        availableCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getAvailableSeats()));

        table.getColumns().addAll(idCol, modelCol, capacityCol, availableCol);
        table.setItems(data);
        table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        VBox layout = new VBox(10, new Label("Flight Seat Availability"), table);
        layout.setPadding(new javafx.geometry.Insets(15));
        stage.setScene(new Scene(layout, 600, 400));
        stage.setTitle("Report: Flights and Available Seats");
        stage.show();
    }
}
