<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/4/2023
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.css" rel="stylesheet" />
</head>
<body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.js"></script>

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


<button data-drawer-target="default-sidebar" data-drawer-toggle="default-sidebar" aria-controls="default-sidebar" type="button" class="inline-flex items-center p-2 mt-2 ml-3 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200">
    <span class="sr-only">Open sidebar</span>
    <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
        <path clip-rule="evenodd" fill-rule="evenodd" d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"></path>
    </svg>
</button>












<aside id="default-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
    <div class="h-full px-3 py-4 overflow-y-auto bg-gray-200">
        <ul class="space-y-2 font-medium" id="default-tab" data-tabs-toggle="#default-tab-content" role="tablist">
        <li>
            <button class="flex items-center p-2 w-full text-gray-900 rounded-lg hover:bg-gray-100 group" id="profile-tab" data-tabs-target="#profile" type="button" role="tab">
            <!-- add svg to here -->
            <span class="ml-3">Dashboard</span>
            </button>
        </li>
        <li>
            <button class="flex items-center w-full p-2 text-gray-900 rounded-lg hover:bg-gray-100 group" id="dashboard-tab" data-tabs-target="#dashboardd" type="button" role="tab">
                <!-- add svg to here -->
                <span class="ml-3">Orders</span>
            </button>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg hover:bg-gray-100 group">
                <!-- add svg to here -->
                <span class="flex-1 ml-3 whitespace-nowrap">Account Details</span>
            </a>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg hover:bg-gray-100 group">
                <!-- add svg to here -->
                <span class="flex-1 ml-3 whitespace-nowrap">Delivery Address</span>
            </a>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg hover:bg-gray-100 group">
                <!-- add svg to here -->
                <span class="flex-1 ml-3 whitespace-nowrap">Wishlist</span>
            </a>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg hover:bg-gray-100 group">
                <!-- add svg to here -->
                <span class="flex-1 ml-3 whitespace-nowrap">Sign out</span>
            </a>
        </li>
        </ul>
    </div>
</aside>


<div id="default-tab-content">

    <div class="p-4 sm:ml-64 hidden" id="profile" role="tabpanel">
        <div class="p-4 border-2 border-gray-200 border-dashed rounded-lg">
            <div class="grid grid-cols-3 gap-4 mb-4">

                <!-- 3 columns -->
                <div class="flex items-center justify-center h-24 rounded bg-gray-100">
                    <p class="text-2xl text-gray-400">
                        <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                        </svg>
                    </p>
                </div>
                <div class="flex items-center justify-center h-24 rounded bg-gray-100">
                    <p class="text-2xl text-gray-400">
                        <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                        </svg>
                    </p>
                </div>
                <div class="flex items-center justify-center h-24 rounded bg-gray-100">
                    <p class="text-2xl text-gray-4">
                        <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                        </svg>
                    </p>
                </div>
            </div>

            <!-- single column -->
            <div class="flex items-center justify-center h-48 mb-4 rounded bg-gray-100">
                <p class="text-2xl text-gray-400">
                    <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                    </svg>
                </p>
            </div>

            <!-- 2 columns 2 sets-->
            <div class="grid grid-cols-2 gap-4 mb-4">
                <!-- 2 column 1su set -->
                <div class="flex items-center justify-center rounded bg-gray-100 h-28">
                    <p class="text-2xl text-gray-400">
                        <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                        </svg>
                    </p>
                </div>
                <div class="flex items-center justify-center rounded bg-gray-100 h-28">
                    <p class="text-2xl text-gray-400">
                        <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                        </svg>
                    </p>
                </div>
                <!-- 2 column 2nd set -->
                <div class="flex items-center justify-center rounded bg-gray-100 h-28">
                    <p class="text-2xl text-gray-400">
                        <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                        </svg>
                    </p>
                </div>
                <div class="flex items-center justify-center rounded bg-gray-100 h-28">
                    <p class="text-2xl text-gray-400">
                        <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                        </svg>
                    </p>
                </div>
            </div>
        </div>
    </div>



    <div class="hidden" id="dashboardd" role="tabpanel">
        <div class="min-h-screen bg-blue-500">
            <p class="text-lg text-gray-800 text-center">Orders</p>
        </div>
    </div>

</div> <!-- main tab div tag ends -->
</body>
</html>
