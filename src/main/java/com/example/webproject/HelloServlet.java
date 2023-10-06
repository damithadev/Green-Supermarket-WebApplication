package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

//    private String message;
//
//    public void init() {
//        message = "Hello World!";
//    }
//
//    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html");
//
//        // Hello
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        out.println("<h1>" + message + "</h1>");
//        out.println("</body></html>");
//    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        System.out.println("Hello to the GET req from servlet");

        resp.setContentType("text/html");

        resp.getWriter().println("<h1>Hello there </h1>");

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        System.out.println("Hello to the POST req from servlet");
    }

}