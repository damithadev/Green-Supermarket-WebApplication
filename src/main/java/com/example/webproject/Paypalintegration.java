package com.example.webproject;

import java.io.*;
import java.util.Collections;
import java.util.List;

import com.paypal.api.payments.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;


@WebServlet(name = "Paypalintegration", value = "/Paypalintegration")
public class Paypalintegration extends HttpServlet {



    //you can delete this servlet



    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Implement PayPal payment processing logic here
        String clientId = "";
        String clientSecret = "";

        // Set up APIContext with your sandbox credentials
        APIContext apiContext = new APIContext(clientId, clientSecret, "sandbox");


        // Create Payer object
        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");

        // Create Item
        Item item = new Item();
        item.setName("Example Item")
                .setCurrency("USD")
                .setQuantity("1")
                .setPrice("10.00");

        // Create Transaction
        Amount amount = new Amount();
        amount.setCurrency("USD").setTotal("10.00");

        Transaction transaction = new Transaction();
        transaction.setAmount(amount)
                .setDescription("Transaction description")
                .setItemList(new ItemList().setItems(Collections.singletonList(item)));

        List<Transaction> transactions = Collections.singletonList(transaction);

        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl("http://localhost:8090/failed.jsp");
        redirectUrls.setReturnUrl("http://localhost:8090/success.jsp");

        // Create Payment object and set details (replace with your actual payment details)
        Payment payment = new Payment().setIntent("sale").setPayer(payer).setTransactions(transactions);

        try {
            // Create payment and get approval URL
            Payment createdPayment = payment.create(apiContext);
            String approvalLink = createdPayment.getLinks().stream()
                    .filter(link -> "approval_url".equals(link.getRel().toLowerCase()))
                    .findFirst()
                    .orElseThrow(() -> new RuntimeException("No 'approval_url' found"))
                    .getHref();

            // Redirect user to PayPal for approval
            resp.sendRedirect(approvalLink);
        } catch (PayPalRESTException e) {
            // Handle exception
            e.printStackTrace();
            // Add error handling and redirect to an error page
        }





        // After the redirect
        String paymentId = req.getParameter("paymentId");
        String payerId = req.getParameter("PayerID");

        System.out.println("Payment ID: " + paymentId);
        System.out.println("Payer ID: " + payerId);

        Payment paymentt = new Payment().setId(paymentId);

        PaymentExecution paymentExecution = new PaymentExecution().setPayerId(payerId);

        try {
            // Execute approved payment
            Payment executedPayment = paymentt.execute(apiContext, paymentExecution);

            // Handle successful payment (e.g., update database, show confirmation page)
            resp.getWriter().println("Payment successful!");
        } catch (PayPalRESTException e) {
            // Handle exception
            e.printStackTrace();
            // Add error handling and redirect to an error page
        }

    }
}