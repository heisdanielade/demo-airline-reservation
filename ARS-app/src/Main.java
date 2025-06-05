
import view.*;
import javafx.application.Application;
import javafx.stage.Stage;
import util.DatabaseManager;

import java.sql.*;

public class Main extends Application {
    @Override
    public void start(Stage primaryStage) {
//        new FlightView().start(primaryStage);
//        new FlightSeatReportView().start(primaryStage);
//        new ClientSummaryView().start(primaryStage);
//        new EmployeeSummaryView().start(primaryStage);
        new MainMenuView().start(primaryStage);
    }
    public static void main(String[] args) throws SQLException {
        launch(args);
        DatabaseManager.getConnection();
    }
}