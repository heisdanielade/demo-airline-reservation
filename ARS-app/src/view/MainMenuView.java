package view;

import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class MainMenuView {

    public void start(Stage stage) {
        Label title = new Label("Airline Reservation System");
        title.setStyle("-fx-font-size: 20px; -fx-font-weight: bold;");

        Button crudBtn = new Button("✈️  Manage Flights Operations");
        Button report1Btn = new Button("📋  View Flight Seats");
        Button report2Btn = new Button("🧑‍✈️  View Client Summary");
        Button report3Btn = new Button("👨‍🔧  View Departure Airport Flights Stats");

        crudBtn.setPrefWidth(250);
        report1Btn.setPrefWidth(250);
        report2Btn.setPrefWidth(250);
        report3Btn.setPrefWidth(250);

        // Actions
        crudBtn.setOnAction(e -> new FlightView().start(new Stage()));
        report1Btn.setOnAction(e -> new FlightSeatReportView().start(new Stage()));
        report2Btn.setOnAction(e -> new ClientSummaryView().start(new Stage()));
        report3Btn.setOnAction(e -> new FlightDistributionChartView().start(new Stage()));


        VBox layout = new VBox(15, title, crudBtn, report1Btn, report2Btn, report3Btn);
        layout.setPadding(new Insets(30));
        layout.setStyle("-fx-alignment: center;");
        Scene scene = new Scene(layout, 400, 300);

        stage.setTitle("Airline Reservation System – Main Menu");
        stage.setScene(scene);
        stage.show();
    }
}
