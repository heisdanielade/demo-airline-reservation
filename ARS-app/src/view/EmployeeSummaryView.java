package view;

import dao.ViewDAO;
import dao.ViewDAOImpl;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import model.EmployeeFlightSummary;

public class EmployeeSummaryView {

    private final ViewDAO viewDAO = new ViewDAOImpl();

    public void start(Stage stage) {
        TableView<EmployeeFlightSummary> table = new TableView<>();
        ObservableList<EmployeeFlightSummary> data = FXCollections.observableArrayList(
                viewDAO.getEmployeeFlightSummary());

        TableColumn<EmployeeFlightSummary, Integer> idCol = new TableColumn<>("Employee ID");
        idCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getEmployeeId()));

        TableColumn<EmployeeFlightSummary, String> nameCol = new TableColumn<>("Name");
        nameCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getFirstName() + " " + cell.getValue().getLastName()));

        TableColumn<EmployeeFlightSummary, String> roleCol = new TableColumn<>("Role");
        roleCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getRoleName()));

        TableColumn<EmployeeFlightSummary, Integer> flightsCol = new TableColumn<>("Flights Assigned");
        flightsCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getTotalFlights()));

        table.getColumns().addAll(idCol, nameCol, roleCol, flightsCol);
        table.setItems(data);
        table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        VBox layout = new VBox(10, new Label("Employee Flight Assignment Summary"), table);
        layout.setPadding(new javafx.geometry.Insets(15));

        stage.setScene(new Scene(layout, 700, 400));
        stage.setTitle("Report: Employee Summary");
        stage.show();
    }
}
