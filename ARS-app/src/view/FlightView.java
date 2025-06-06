package view;

import dao.FlightDAO;
import dao.FlightDAOImpl;
import javafx.beans.property.SimpleObjectProperty;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.stage.Stage;
import model.Flight;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

public class FlightView {

    private final FlightDAO flightDAO = new FlightDAOImpl();
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");

    public void start(Stage stage) {
        TableView<Flight> table = new TableView<>();
        TextField depField = new TextField();
        TextField arrField = new TextField();

        TableColumn<Flight, Integer> idCol = new TableColumn<>("ID");
        idCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(cell.getValue().getFlightId()));

        TableColumn<Flight, String> depAirportCol = new TableColumn<>("From Airport");
        depAirportCol.setCellValueFactory(cell -> new SimpleObjectProperty<>(
                cell.getValue().getDepartureAirportName()));

        TableColumn<Flight, String> arrAirportCol = new TableColumn<>("To Airport");
        arrAirportCol.setCellValueFactory(cell -> new SimpleObjectProperty<>(
                cell.getValue().getArrivalAirportName()));

        TableColumn<Flight, String> depCol = new TableColumn<>("Departure Time");
        depCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getBaseDepartureTime().format(formatter)));

        TableColumn<Flight, String> arrCol = new TableColumn<>("Arrival Time");
        arrCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getBaseArrivalTime().format(formatter)));

        TableColumn<Flight, String> aircraftCol = new TableColumn<>("Aircraft");
        aircraftCol.setCellValueFactory(cell -> new SimpleObjectProperty<>(cell.getValue().getAircraftName()));


        table.getColumns().addAll(idCol, depAirportCol, arrAirportCol, aircraftCol, depCol, arrCol);
        table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        // Form fields
        depField.setPromptText("yyyy-MM-dd HH:mm");
        arrField.setPromptText("yyyy-MM-dd HH:mm");

        ComboBox<String> depAirportBox = new ComboBox<>();
        ComboBox<String> arrAirportBox = new ComboBox<>();
        ComboBox<String> aircraftBox = new ComboBox<>();

        HBox formBox = new HBox(10,
                new VBox(new Label("Departure Time:"), depField),
                new VBox(new Label("Arrival Time:"), arrField),
                new VBox(new Label("From Airport:"), depAirportBox),
                new VBox(new Label("To Airport:"), arrAirportBox),
                new VBox(new Label("Aircraft:"), aircraftBox)
        );


        Button addBtn = new Button("Add");
        Button updateBtn = new Button("Update");
        Button deleteBtn = new Button("Delete");
        Button refreshBtn = new Button("Refresh");

        HBox buttonBox = new HBox(10, addBtn, updateBtn, deleteBtn, refreshBtn);
        buttonBox.setPadding(new Insets(10));

        VBox layout = new VBox(10,
                new Label("Flight CRUD Management"),
                table,
                formBox,
                buttonBox);
        layout.setPadding(new Insets(15));

        Scene scene = new Scene(layout, 700, 500);
        stage.setScene(scene);
        stage.setTitle("Airline Reservation System – Flight Management");
        stage.show();


        // Fill data in the table
        Runnable loadFlights = () -> table.getItems().setAll(flightDAO.getAllFlights());
        loadFlights.run();

        addBtn.setOnAction(e -> {
            try {
                LocalDateTime dep = LocalDateTime.parse(depField.getText(), formatter);
                LocalDateTime arr = LocalDateTime.parse(arrField.getText(), formatter);
                Flight flight = new Flight(dep, arr);
                if (flightDAO.addFlight(flight)) {
                    loadFlights.run();
                    depField.clear();
                    arrField.clear();
                }
            } catch (Exception ex) {
                showError("Invalid input. Format must be: yyyy-MM-dd HH:mm");
            }
        });

        updateBtn.setOnAction(e -> {
            Flight selected = table.getSelectionModel().getSelectedItem();
            if (selected == null) {
                showError("No flight selected.");
                return;
            }
            try {
                LocalDateTime dep = LocalDateTime.parse(depField.getText(), formatter);
                LocalDateTime arr = LocalDateTime.parse(arrField.getText(), formatter);
                selected.setBaseDepartureTime(dep);
                selected.setBaseArrivalTime(arr);
                if (flightDAO.updateFlight(selected)) {
                    loadFlights.run();
                    depField.clear();
                    arrField.clear();
                }
            } catch (Exception ex) {
                showError("Invalid input. Format must be: yyyy-MM-dd HH:mm");
            }
        });

        deleteBtn.setOnAction(e -> {
            Flight selected = table.getSelectionModel().getSelectedItem();
            if (selected == null) {
                showError("No flight selected.");
                return;
            }
            boolean confirmed = confirm("Are you sure you want to delete flight ID " + selected.getFlightId() + "?");
            if (confirmed && flightDAO.deleteFlight(selected.getFlightId())) {
                loadFlights.run();
                depField.clear();
                arrField.clear();
            }
        });

        table.getSelectionModel().selectedItemProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal != null) {
                depField.setText(newVal.getBaseDepartureTime().format(formatter));
                arrField.setText(newVal.getBaseArrivalTime().format(formatter));
            }
        });

        // Refresh
        refreshBtn.setOnAction(e -> loadFlights.run());
    }

    private void showError(String msg) {
        Alert alert = new Alert(Alert.AlertType.ERROR, msg, ButtonType.OK);
        alert.setHeaderText("Error");
        alert.showAndWait();
    }

    private boolean confirm(String msg) {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION, msg, ButtonType.YES, ButtonType.NO);
        alert.setHeaderText("Confirm");
        Optional<ButtonType> result = alert.showAndWait();
        return result.orElse(ButtonType.NO) == ButtonType.YES;
    }
}
