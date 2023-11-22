package com.example.webproject;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "recieveJSON", value = "/recieveJSON")
public class recieveJSON extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Assume your retrieveProducts servlet URL
        String retrieveProductsURL = "http://localhost:8090/retrieveProducts";

        // Send a GET request to retrieveProducts servlet
        URL url = new URL(retrieveProductsURL);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();

        // Set the request method to GET
        connection.setRequestMethod("GET");

        // Get the response code
        int responseCode = connection.getResponseCode();


        // Check if the request was successful (HTTP 200 OK)
        if (responseCode == HttpURLConnection.HTTP_OK) {
            // Read the response content
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            StringBuilder responseStringBuilder = new StringBuilder();
            String line;

            while ((line = reader.readLine()) != null) {
                responseStringBuilder.append(line);
            }

            // Close the connection and reader
            reader.close();
            connection.disconnect();

            // Now you have the JSON data in responseStringBuilder.toString()
            String jsonData = responseStringBuilder.toString();

            // Process the JSON data as needed

            // For example, you can parse the JSON string to a Java object using a library like Jackson
            ObjectMapper objectMapper = new ObjectMapper();
            product[] products = objectMapper.readValue(jsonData, product[].class);

            for (product product : products) {
                System.out.println("Product ID: " + product.getId());
                System.out.println("Product Name: " + product.getName());
                System.out.println("Product Price: " + product.getPrice());
                System.out.println("Product Description: " + product.getCategory());
                System.out.println("Product Description: " + product.getImage());
                System.out.println("------------------------");
            }

            // Now you can use the products array as needed
        } else {
            // Handle the case where the request was not successful
            // You might want to throw an exception, log an error, or handle it in some way
            System.err.println("Failed to retrieve data. HTTP Status Code: " + responseCode);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the POST req from servlet");
    }
}