package com.example.webproject;

import java.io.*;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "sendOtp", value = "/sendOtp")
public class sendOtp extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //send user from /sendOtp -->to  /verify.jsp
        getServletContext().getRequestDispatcher("/verify.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //generate OTP
        String otp = generateRandomOTP();

        // Store the OTP in the session
        HttpSession HTsession = req.getSession();
        HTsession.setAttribute("userOTP", otp);

        //get user entered email address
        String recipientEmail = req.getParameter("email");

        //added line start
        try {
            EmailSender.sendEmail(recipientEmail, "Green Supermarket Verification OTP", "Your OTP code is: " + otp); // Replace with your OTP code
        } catch (Exception e) {
            e.printStackTrace();
        }
        //end
    }

    private String generateRandomOTP() {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000); // This generates a 6-digit random number between 100000 and 999999

        // Convert the OTP to a string
        return String.valueOf(otp);
    }
}