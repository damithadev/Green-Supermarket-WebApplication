package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(name = "retrieveProducts", value = "/retrieveProducts")
public class retrieveProducts extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<product> products = new ArrayList<>();
        Connection connection = null;

        try {
            connection = dbConnection.getConnection();

            // Define your SQL query to retrieve product data from the database
            String query = "SELECT id, name, price, description FROM products";

            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");

                //adding product data to the product constructor which inside the product class
                //(The constructor itself initializes the private fields directly with the provided values.
                // You don't need to call the setters separately in this case because the constructor already sets the values for you)
                product obj = new product(id, name, price, description);
                products.add(obj);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    dbConnection.closeConnection(connection);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        ObjectMapper objectMapper = new ObjectMapper();

        try {
            // Convert products list to JSON
            String jsonProducts = objectMapper.writeValueAsString(products);

            // Set response content type to JSON
            resp.setContentType("application/json");

            // Write JSON data to the response
            resp.getWriter().write(jsonProducts);
        } catch (JsonProcessingException e) {
            e.printStackTrace(); // Handle the exception appropriately, e.g., log it
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR); // Set an appropriate HTTP status code
        }



//        List<product> products = new ArrayList<>();
//
//        product obj = new product(1,"apple",45.50,"this is apple");
//        products.add(obj);
//        product objj = new product(2,"drows",45.50,"this is apple");
//        products.add(objj);
//
//        ObjectMapper objectMapper = new ObjectMapper();
//        String json = objectMapper.writeValueAsString(products);
//        System.out.println(json);





        //"productLV" is a loop variable.
        // It represents an individual element in the products list during each iteration of the loop.
//        for (product productLV : products) {
//            System.out.println("Product ID: " + productLV.getId());
//            System.out.println("Product Name: " + productLV.getName());
//            System.out.println("Product Price: Rs" + productLV.getPrice());
//            System.out.println("Product Description: " + productLV.getDescription());
//        }
//
//        for (product product : products) {
//            product.getId();
//            product.getName();
//            product.getPrice();
//            product.getDescription();
//        }


    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the POST req from servlet");
    }
}