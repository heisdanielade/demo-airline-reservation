package view;

import dao.ViewDAO;
import dao.ViewDAOImpl;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import model.ClientBookingSummary;

public class ClientSummaryView {

    private final ViewDAO viewDAO = new ViewDAOImpl();

    public void start(Stage stage) {
        TableView<ClientBookingSummary> table = new TableView<>();
        ObservableList<ClientBookingSummary> data = FXCollections.observableArrayList(
                viewDAO.getClientBookingSummary());

        TableColumn<ClientBookingSummary, Integer> idCol = new TableColumn<>("Client ID");
        idCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getClientId()));

        TableColumn<ClientBookingSummary, String> nameCol = new TableColumn<>("Name");
        nameCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getFirstName() + " " + cell.getValue().getLastName()));

        TableColumn<ClientBookingSummary, Integer> bookingsCol = new TableColumn<>("Total Bookings");
        bookingsCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getTotalBookings()));

        TableColumn<ClientBookingSummary, Double> spentCol = new TableColumn<>("Total Spent");
        spentCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getTotalSpent()));

        TableColumn<ClientBookingSummary, Double> avgCol = new TableColumn<>("Avg Ticket Price");
        avgCol.setCellValueFactory(cell -> new javafx.beans.property.SimpleObjectProperty<>(
                cell.getValue().getAvgTicketPrice()));

        table.getColumns().addAll(idCol, nameCol, bookingsCol, spentCol, avgCol);
        table.setItems(data);
        table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        VBox layout = new VBox(10, new Label("Client Frequent Flyer Summary"), table);
        layout.setPadding(new javafx.geometry.Insets(15));

        stage.setScene(new Scene(layout, 700, 400));
        stage.setTitle("Report: Client Summary");
        stage.show();
    }
}
