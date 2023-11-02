package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "verify", value = "/verify")
public class verify extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //send user from /verify -->to  /verify.jsp
        getServletContext().getRequestDispatcher("/verify.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");

        //added line start
        try {
            EmailSender.sendEmail(email, "Your OTP", "Your OTP code is: 123456"); // Replace with your OTP code
        } catch (Exception e) {
            e.printStackTrace();
        }
        //end

        if (isValidEmail(email)) {
            HttpSession session = req.getSession();
            session.setAttribute("userEmail", email);

            // Redirect to the "register.jsp" page to capture additional information.
            resp.sendRedirect("register.jsp");
        } else {
            System.out.println("Email is not valid");
            resp.sendRedirect("failed.jsp");
            // Email is not valid; you can handle this case, e.g., by showing an error message.
            // You may choose to return to the "verify.jsp" page for correction or take other appropriate actions.
        }
    }

    private boolean isValidEmail(String email) {
        if (email.equals("hellodamitha@gmail.com")) {
            return true;
        } else {
            return false;
        }
    }


}