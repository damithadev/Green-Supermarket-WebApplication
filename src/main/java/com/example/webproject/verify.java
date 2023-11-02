package com.example.webproject;

import java.io.*;
import java.util.Random;

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
        //get user entered OTP
        String userEnteredOTP = req.getParameter("userEnteredOTP");

        // Retrieve the sent OTP from the session
        HttpSession session = req.getSession();
        String sentOTP = (String) session.getAttribute("sentOTP");

        if (isValidEmail(userEnteredOTP, sentOTP)) {

            // Redirect to the "register.jsp" page to capture additional information.
            resp.sendRedirect("register.jsp");
        } else {
            System.out.println("Email is not valid");
            resp.sendRedirect("failed.jsp");
            // Email is not valid; you can handle this case, e.g., by showing an error message.
            // You may choose to return to the "verify.jsp" page for correction or take other appropriate actions.
        }
    }

    private boolean isValidEmail(String userEnteredOTP, String sentOTP) {
        if (userEnteredOTP.equals(sentOTP)) {
            return true;
        } else {
            return false;
        }
    }


}