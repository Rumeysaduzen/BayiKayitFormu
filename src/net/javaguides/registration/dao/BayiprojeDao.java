package net.javaguides.registration.dao;


import com.mysql.cj.jdbc.PreparedStatement;
import net.javaguides.registration.model.Bayiproje;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BayiprojeDao {
    public int registerBayiproje(Bayiproje bayiproje) throws ClassNotFoundException {
        String INSERT_PERSON_SQL = "INSERT INTO bayiproje" +
                " (id, name, surname, tc, address, email, phone, datetime, que1, que2, qu3, que4, note) VALUES " +
                " (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        {
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbfranchise?autoReconnect=true&useSSL=false", "root", "root");

                 PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(INSERT_PERSON_SQL)) {

                preparedStatement.setString(2, bayiproje.getName());
                preparedStatement.setString(3, bayiproje.getSurname());
                preparedStatement.setString(4, bayiproje.getTc());
                preparedStatement.setString(5, bayiproje.getAddress());
                preparedStatement.setString(6, bayiproje.getEmail());
                preparedStatement.setString(7, bayiproje.getPhone());

                preparedStatement.setString(9, bayiproje.getQue1());
                preparedStatement.setString(10, bayiproje.getQue2());
                preparedStatement.setString(11, bayiproje.getQue3());
                preparedStatement.setString(12, bayiproje.getQue4());
                preparedStatement.setString(13, bayiproje.getNote());

                System.out.println(preparedStatement);
                result = preparedStatement.executeUpdate();


            } catch (SQLException e) {
                e.printStackTrace();
            }
            return result;
        }
    }
}


