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
<%--<div class="min-h-screen bg-[#99CC33]/[.06]">--%>

<%--Navbar code starts here--%>
<nav class="z-10 bg-white sticky top-0 w-full z-20 left-0 border-b border-gray-200 shadow-md overflow-hidden">
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
                    <a href="/index.jsp" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded md:bg-transparent md:p-0">Home</a>
                </li>
                <li>
                    <a href="#" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 ">Vegetables</a>
                </li>
                <li>
                    <a href="#" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Fruits</a>
                </li>
                <li>
                    <a href="#" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Shop</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<%--Navbar code ends here--%>

<%--registration form starts here--%>
<div class="py-8">
    <div class="container mx-auto z-10">
        <div class="flex flex-col lg:flex-row w-10/12 lg:w-8/12 bg-white rounded-xl mx-auto shadow-lg overflow-hidden">

            <%-- left side box --%>
            <div class="w-full lg:w-2/5 p-2 bg-no-repeat bg-cover bg-center bg-gray-100" >
                <div class="flex flex-col items-start rounded-xl pl-14 pt-12 bg-gradient-to-b from-[#044A48] to-[#0A2827]/[0.7]">
                        <h1 class="text-white text-3xl mb-10">Start Shopping <br> With Us.</h1>
                    <div>
                        <p class="text-white">Discover the world's best Green <br>
                            supermarket platform for organic <br>
                            vegetable & fruit buyers.</p>
                    </div>
                    <div class="flex self-start pl-4 mb-16 mt-20">
                        <img src="Assets/img/3dcart.png" class="h-44 " alt="3d cart">
                        <%--      <span class="self-center text-2xl font-semibold whitespace-nowrap ">Logo</span>--%>
                    </div>
                </div>
            </div>


            <%-- right side box --%>
            <div class="w-full lg:w-3/5 pt-10 px-12 bg-gray-100">
                <h2  class="text-3xl mb-4 font-medium">Register</h2>
                <p class="mb-4">
                    Create your account. It’s free and only take a minute
                </p>
                <form method="post" action="/register">
                    <div class="grid grid-cols-2 gap-5">
                        <input type="text" name="fname" id="fname" placeholder="First name" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5">
                        <input type="text" name="lname" id="lname" placeholder="Surname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5">
                    </div>
                    <div class="mt-5">
                        <input type="text" name="add1" id="add1" placeholder="Address Line1" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5 w-full">
                    </div>
                    <div class="mt-5">
                        <input type="text" name="add2" id="add2" placeholder="Address Line2" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5 w-full">
                    </div>
                    <div class="grid grid-cols-2 mt-5 gap-5">
                        <input type="text" name="pcode" id="pcode" placeholder="Postal Code" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5">
                        <input type="text" name="mobile" id="mobile" placeholder="Mobile No" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5">
                    </div>
                    <div class="grid grid-cols-2 mt-5 gap-5">
                        <input type="password" name="password" id="password" placeholder="Password" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5">
                        <input type="password" name="conPassword" id="conPassword" placeholder="Confirm Password" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block grow p-2.5">
                    </div>

                    <div class="mt-5">
                        <input type="checkbox" class="border border-gray-400">
                        <span class="font-light">I accept the <a href="#" class=" text-sm font-medium hover:underline font-light text-gray-500">Terms of Use</a> &  <a href="#" class="text-sm font-medium hover:underline font-light text-gray-500">Privacy Policy</a></span>
                    </div>
                    <div class="grid grid-cols-2 mt-8 gap-4">
                        <button type="submit" class="w-36 bg-[#044A48] rounded-lg py-2 text-center text-white">Register</button>
                    </div>
                </form>
            </div>
            <%-- right side box ends here --%>
        </div>
    </div>
</div>

<%--</div>--%>
<%--background color ended--%>

<p>${error}</p>

</body>
</html>
