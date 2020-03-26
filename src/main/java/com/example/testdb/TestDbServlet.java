package com.example.testdb;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

public class TestDbServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // setup connection variables
        String user = "springuser";
        String pass = "springpassword";

        String jdbcUrl = "jdbc:mysql://localhost:3306/web_customer_tracker";
        String driver = "com.mysql.jdbc.Driver";

        // get connection
        try {
            PrintWriter out = resp.getWriter();
            out.println("Connecting to database: " + jdbcUrl);
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(jdbcUrl, user, pass);
            out.println("Connection SUCCESS");
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
