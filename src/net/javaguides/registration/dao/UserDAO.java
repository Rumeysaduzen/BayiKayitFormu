package net.javaguides.registration.dao;


import com.mysql.cj.jdbc.PreparedStatement;
import net.javaguides.registration.model.User;
import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/bayiproje?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";

    private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (name, surname, tc, address, email, phone,  que1, que2, que3, que4, note) VALUES "
            + " (?, ?, ?,?,?,?,?,?,?,?,?);";



    public UserDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {

            e.printStackTrace();
        } catch (ClassNotFoundException e) {

            e.printStackTrace();
        }
        return connection;
    }

    public void insertUser(User user) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        {
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bayiproje?autoReconnect=true&useSSL=false", "root", "root");

                 PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(INSERT_USERS_SQL)) {

                preparedStatement.setString(2, user.getName());
                preparedStatement.setString(3, user.getSurname());
                preparedStatement.setString(4, user.getTc());
                preparedStatement.setString(5, user.getAddress());
                preparedStatement.setString(6, user.getEmail());
                preparedStatement.setString(7, user.getPhone());

                preparedStatement.setString(9, user.getQue1());
                preparedStatement.setString(10, user.getQue2());
                preparedStatement.setString(11, user.getQue3());
                preparedStatement.setString(12, user.getQue4());
                preparedStatement.setString(13, user.getNote());

                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}
