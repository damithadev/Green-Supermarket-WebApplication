<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/7/2023
  Time: 10:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

<%--adding background color to entire page--%>
<div class="min-h-screen bg-[#99CC33]/[.06]">

<%--Navbar code starts here--%>
<nav class="bg-white  sticky top-0 w-full z-20 left-0 border-b border-gray-200 shadow-md overflow-hidden">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto pb-1">
        <a href="/index.jsp" class="flex items-center">
            <img src="Assets/img/Logo.svg" class="h-16 mr-3" alt="Green Supermarket Logo">
            <%--      <span class="self-center text-2xl font-semibold whitespace-nowrap ">Logo</span>--%>
        </a>

        <%-- navbar fant awsome icons--%>
        <div class="flex md:order-2 gap-x-8">
            <a href="/">
                <i class="fa fa-shopping-cart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
            </a>
            <a href="/">
                <i class="fa fa-heart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
            </a>
            <a href="/login">
                <i class="fa fa-user fa-xl" aria-hidden="true" style="color: #044A48;"></i>
            </a>
        </div>

        <%--navbar links--%>
        <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
            <ul class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white">
                <li>
                    <a href="/index.jsp" class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0" aria-current="page">Home</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 ">About</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Services</a>
                </li>
                <li>
                    <a href="#" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<%--Navbar code ends here--%>

    <!-- <%--verification form starts here--%> -->
    <div class="py-12">
        <div class="container mx-auto z-10">
            <div class="flex flex-col lg:flex-row w-10/12 lg:w-8/12 bg-white rounded-xl mx-auto shadow-lg overflow-hidden">

                <!-- <%-- left side box --%> -->
                <div class="w-full lg:w-2/5 p-2 bg-no-repeat bg-cover bg-center bg-white" >
                    <div class="flex flex-col items-start rounded-xl  pt-12 bg-gradient-to-b from-[#044A48] to-[#0A2827]/[0.7]">
                        <div class="flex self-center">
                            <img src="Assets/img/whitelogo.png" class="h-8" alt="">
                        </div>

                        <h1 class="text-white self-center text-xl mt-10">Discover fresh, eco-friendly goods.</h1>
                        <h1 class="text-white self-center text-xl mb-10">Let’s verify your email for access.</h1>

                        <div class="flex self-center mb-10 mt-2">
                            <img src="Assets/img/verifycart.png" class="h-64" alt="3d cart">
                            <!-- <%--      <span class="self-center text-2xl font-semibold whitespace-nowrap ">Logo</span>--%> -->
                        </div>
                    </div>
                </div>


                <!-- <%-- right side box --%> -->
                <div class="w-full lg:w-3/5 py-12 px-24">
                    <div class="flex justify-center mb-6 text-3xl font-bold text-gray-900 ">
                            <img class="h-15 mr-2" src="/Assets/img/Logo.svg" alt="logo" />
                    </div>
                    <h1 class="text-xl font-semibold leading-tight tracking-tight text-gray-900 md:text-2xl">
                        Enter your email to register
                    </h1>

                    <form method="post" action="/register.jsp" class="mt-8">
                        <div class="flex mb-8">
                            <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-l-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5 " placeholder="name@gmail.com" required="">
                            <button class="bg-[#99CC33] font-medium text-white pl-2 pr-3 py-2 rounded-r-lg hover:bg-primary-700">Send OTP</button>
                        </div>
                        <div class="mb-8">
                            <input type="text" name="otp" id="otp" placeholder="OTP" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" required="">
                        </div>

                        <button type="submit" class="mb-8 w-full bg-[#044A48] text-white hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Continue</button>
                        <p class="self-end text-sm font-light text-gray-500 ">
                            Already have an account? <a href="/login" class="font-medium text-primary-600">Login here</a>
                        </p>
                    </form>
                </div>
                <!-- <%-- right side box ends here --%> -->
            </div>
        </div>
    </div>
    <%--verification form ends here--%>
</div>
<!-- <%--background color ended--%> -->

</body>
</html>
