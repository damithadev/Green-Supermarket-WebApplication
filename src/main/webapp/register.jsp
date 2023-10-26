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
<%--top navbar starts--%>
<div class="bg-[#044A48] text-white py-2 text-center ">
    <p>Get 50% Off For Selected Items | Shop Now</p>
</div>
<%--top navbar ends--%>

<%--Navbar code starts here--%>
<nav class="bg-white  sticky top-0 w-full z-20 left-0 border-b border-gray-200">
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


<div class="min-h-screen py-16 bg-[#99CC33]/[.06]">
    <div class="container mx-auto">
        <div class="flex flex-col lg:flex-row w-10/12 lg:w-8/12 bg-white rounded-xl mx-auto shadow-lg overflow-hidden">


            <div class="w-full lg:w-1/2 flex flex-col items-center justify-center p-12 bg-no-repeat bg-cover bg-center bg-gradient-to-b from-[#044A48] to-[#0A2827]/[0.7]" >
                <h1 class="text-white text-3xl mb-3">Welcome</h1>
                <div>
                    <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean suspendisse aliquam varius rutrum purus maecenas ac <a href="#" class="text-purple-500 font-semibold">Learn more</a></p>
                </div>
            </div>



            <div class="w-full lg:w-1/2 py-16 px-12">
                <h2  class="text-3xl mb-4">Register</h2>
                <p class="mb-4">
                    Create your account. It’s free and only take a minute
                </p>
                <form action="#">
                    <div class="grid grid-cols-2 gap-5">
                        <input type="text" placeholder="Firstname" class="border border-gray-400 py-1 px-2">
                        <input type="text" placeholder="Surname" class="border border-gray-400 py-1 px-2">
                    </div>
                    <div class="mt-5">
                        <input type="text" placeholder="Email" class="border border-gray-400 py-1 px-2 w-full">
                    </div>
                    <div class="mt-5">
                        <input type="password" placeholder="Password" class="border border-gray-400 py-1 px-2 w-full">
                    </div>
                    <div class="mt-5">
                        <input type="password" placeholder="Confirm Password" class="border border-gray-400 py-1 px-2 w-full">
                    </div>
                    <div class="mt-5">
                        <input type="checkbox" class="border border-gray-400">
                        <span>
                  I accept the <a href="#" class="text-purple-500 font-semibold">Terms of Use</a> &  <a href="#" class="text-purple-500 font-semibold">Privacy Policy</a>
                </span>
                    </div>
                    <div class="mt-5">
                        <button class="w-full bg-purple-500 py-3 text-center text-white">Register Now</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<p>${error}</p>

</body>
</html>
