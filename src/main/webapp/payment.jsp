<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/23/2023
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%
    // Access the HttpSession
    HttpSession checkEmail = request.getSession();

    // Get the userEmail from the session
    String userEmail = (String) checkEmail.getAttribute("userEmail");
%>

<%--Navbar code starts here--%>
<nav class="bg-white sticky top-0 w-full z-20 left-0 border-b border-gray-200 shadow-md overflow-hidden">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto pb-1">
        <a href="/index.jsp" class="flex items-center">
            <img src="Assets/img/Logo.svg" class="h-16 mr-3" alt="Flowbite Logo">
        </a>

        <%-- navbar fant awsome icons--%>
        <div class="flex md:order-2 gap-x-8">
            <a href="/cart.jsp">
                <i class="fa fa-shopping-cart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
            </a>
            <a href="/">
                <i class="fa fa-heart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
            </a>
            <a href="<% if (userEmail == null) { %> /login <% } else { %> /myaccount <% } %>">
                <i class="fa fa-user fa-xl" aria-hidden="true" style="color: #044A48;"></i>
            </a>
        </div>

        <%--navbar links--%>
        <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
            <ul class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white">
                <li>
                    <a href="/index.jsp" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded md:bg-transparent md:p-0">Home</a>
                </li>
                <li>
                    <a href="/vegetables.jsp" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 ">Vegetables</a>
                </li>
                <li>
                    <a href="/fruits.jsp" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Fruits</a>
                </li>
                <li>
                    <a href="/shop.jsp" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Shop</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<%--Navbar code ends here--%>

<!-- <%--payment form starts here--%> -->
<div class="py-8">
    <div class="container mx-auto z-10">
        <div class="flex flex-col lg:flex-row w-10/12 lg:w-8/12 bg-white rounded-xl mx-auto shadow-lg overflow-hidden">

            <!-- <%-- left side box --%> -->
            <div class="w-full lg:w-2/5 p-2 bg-no-repeat bg-cover bg-center bg-gray-100" >
                <div class="flex flex-col items-start rounded-xl pt-12 bg-gradient-to-b from-[#044A48] to-[#0A2827]/[0.7]">
                    <div class="flex self-center">
                        <img src="Assets/img/whitelogo.png" class="h-8" alt="">
                    </div>

                    <h1 class="text-white self-center text-center leading-8 text-2xl mt-10 mb-10">Let’s make a secure payment <br>
                        with PayPal.</h1>

                    <div class="flex self-center mb-8 mt-2">
                        <img src="Assets/img/payment.png" class="h-80" alt="3d cart">
                    </div>
                </div>
            </div>


            <!-- <%-- right side box --%> -->
            <div class="w-full lg:w-3/5 py-12 px-24 bg-gray-100">
                    <div class="paymentSpace" id="paypalSpace">

                    </div>

                    <!-- Add the PayPal Smart Payment Button script -->
                    <script src="https://www.paypal.com/sdk/js?client-id=ASGNcI2pf8ZCQRXGpPvuCwMSk3-dzbrQmyd23tnQuHPA0UtQuhPsb7rlETWGkfUAdm5Ip0E1AFDHhD01&currency=USD" data-sdk-integration-source="button-factory"></script>

            </div>
            <!-- <%-- right side box ends here --%> -->
        </div>
    </div>
</div>


    <!-- Add the PayPal Smart Payment Button -->
    <script>
        const retrievedTotalBillAmount = localStorage.getItem('payment');
        const billAmountInRS = (retrievedTotalBillAmount / 325).toFixed(2);
        paypal.Buttons({
            createOrder: function(data, actions) {
                // Set up the transaction details
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: billAmountInRS // Set the amount based on your checkout total
                        }
                    }]
                });
            },
            onApprove: function(data, actions) {
                // Redirect to your PayPalServlet with the order ID
                return actions.order.capture().then(function(details) {
                    window.location.href = 'paymentServlet?orderID=' + data.orderID;
                });
            }
        }).render('#paypalSpace');
    </script>
















<%--    <script src="https://www.paypal.com/sdk/js?client-id=ASGNcI2pf8ZCQRXGpPvuCwMSk3-dzbrQmyd23tnQuHPA0UtQuhPsb7rlETWGkfUAdm5Ip0E1AFDHhD01&components=buttons"></script>--%>

<%--    <script src="https://www.paypal.com/sdk/js?client-id=YOUR_CLIENT_ID&components=YOUR_COMPONENTS"></script>--%>
<%--    <script>--%>
<%--        paypal.Buttons({--%>
<%--            style: {--%>
<%--                layout: 'vertical',--%>
<%--                color:  'blue',--%>
<%--                shape:  'rect',--%>
<%--                label:  'paypal'--%>
<%--            }--%>
<%--        }).render('#paypal-button-container');--%>
<%--    </script>--%>
</form>
</body>
</html>
