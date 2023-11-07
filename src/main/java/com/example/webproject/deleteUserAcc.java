package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "deleteUserAcc", value = "/deleteUserAcc")
public class deleteUserAcc extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the GET req from servlet");

        resp.setContentType("text/html");

        resp.getWriter().println("<h1>Hello there </h1>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().write("Delete Action completed successfully");
        System.out.println("hello from deleteAcc servlet");
    }
}