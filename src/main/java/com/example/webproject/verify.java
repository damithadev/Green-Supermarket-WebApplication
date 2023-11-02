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
        //generate OTP
        String otp = generateRandomOTP();

        // Store the OTP in the session
        HttpSession HTsession = req.getSession();
        HTsession.setAttribute("userOTP", otp);

        //get user entered email from the javascript AJAX Request
        String recipientEmail = req.getParameter("email");

        //added line start
        try {
            EmailSender.sendEmail(recipientEmail, "Green Supermarket Verification OTP", "Your OTP code is: " + otp); // Replace with your OTP code
        } catch (Exception e) {
            e.printStackTrace();
        }
        //end

        if (isValidEmail(recipientEmail)) {
            HttpSession session = req.getSession();
            session.setAttribute("userEmail", recipientEmail);

            // Redirect to the "register.jsp" page to capture additional information.
            resp.sendRedirect("register.jsp");
        } else {
            System.out.println("Email is not valid");
            resp.sendRedirect("failed.jsp");
            // Email is not valid; you can handle this case, e.g., by showing an error message.
            // You may choose to return to the "verify.jsp" page for correction or take other appropriate actions.
        }
    }

    private String generateRandomOTP() {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000); // This generates a 6-digit random number between 100000 and 999999

        // Convert the OTP to a string
        return String.valueOf(otp);
    }

    private boolean isValidEmail(String email) {
        if (email.equals("hellodamitha@gmail.com")) {
            return true;
        } else {
            return false;
        }
    }


}