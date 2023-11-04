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
    <%-- fontawsome css cdn--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%-- tailwind css cdn--%>
    <script src="https://cdn.tailwindcss.com"></script>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.css" rel="stylesheet" />--%>
</head>
<body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.js"></script>



<nav class="fixed top-0 z-20 w-full bg-white border-b border-gray-200">
    <div class="px-3 py-2 lg:px-5 lg:pl-2 bg-gray-100">
        <div class="flex items-center justify-between">
            <div class="flex items-center justify-start">
                <button data-drawer-target="logo-sidebar" data-drawer-toggle="logo-sidebar" aria-controls="logo-sidebar" type="button" class="inline-flex items-center p-2 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200">
                    <span class="sr-only">Open sidebar</span>
                    <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path clip-rule="evenodd" fill-rule="evenodd" d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"></path>
                    </svg>
                </button>
            </div>
            <div class="flex items-center">
                <div class="flex items-center ml-3">
                    <div>
                        <button type="button" class="flex text-sm rounded-full focus:ring-4 focus:ring-gray-300" aria-expanded="false" data-dropdown-toggle="dropdown-user">
                            <span class="sr-only">Open user menu</span>
<%--                            <i class="fa-solid fa-user fa-xl" style="color: #044A48;"></i>--%>
                            <img class="w-10 h-10 rounded-full" src="Assets/img/user.png" alt="user photo">
                        </button>
                    </div>
                    <div class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded shadow" id="dropdown-user">
                        <div class="px-4 py-3" role="none">
                            <p class="text-sm text-gray-900" role="none">
                                Damitha Jayatharaka
                            </p>
                            <p class="text-sm font-medium text-gray-900 truncate" role="none">
                                damitha@gmail.com
                            </p>
                        </div>
                        <ul class="py-1" role="none">
                            <li>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 " role="menuitem">Home</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 " role="menuitem">Shop</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">Dashboard</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">Sign out</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<aside id="default-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
    <div class="h-full px-3 py-4 overflow-y-auto bg-gray-200">
        <%--  logo--%>
        <a href="/index.jsp" class="flex items-center">
            <img src="Assets/img/Logo.svg" class="h-16 ml-5" alt="Green Supermarket Logo">
        </a>
        <ul class="space-y-2 font-medium pt-10" id="default-tab" data-tabs-toggle="#default-tab-content" role="tablist">
        <li>
            <button class="flex items-center p-2 w-full text-gray-900 rounded-lg group" id="dashboard-tab" data-tabs-target="#dashboard" type="button" role="tab">
            <!-- add svg to here -->
            <span class="ml-3 text-gray-900">Dashboard</span>
            </button>
        </li>
        <li>
            <button class="flex items-center w-full p-2 text-gray-900 rounded-lg group" id="orders-tab" data-tabs-target="#orders" type="button" role="tab">
                <!-- add svg to here -->
                <span class="ml-3 text-gray-900">Orders</span>
            </button>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg group" id="account-tab" data-tabs-target="#account" type="button" role="tab">
                <!-- add svg to here -->
                <span class="text-gray-900 ml-3">Account Details</span>
            </a>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg group" id="address-tab" data-tabs-target="#address" type="button" role="tab">
                <!-- add svg to here -->
                <span class="text-gray-900 ml-3">Delivery Address</span>
            </a>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg group" id="wishlist-tab" data-tabs-target="#wishlist" type="button" role="tab">
                <!-- add svg to here -->
                <span class="text-gray-900 ml-3">Wishlist</span>
            </a>
        </li>
        <li>
            <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg group">
                <!-- add svg to here -->
                <span class="text-gray-900 ml-3 ">Sign out</span>
            </a>
        </li>
        </ul>
    </div>
</aside>


<div id="default-tab-content">

<%-----------    dashboard tab starts--%>
    <div class="p-4 sm:ml-64 hidden mt-16" id="dashboard" role="tabpanel">
        <div class="p-4 border-2 border-gray-200 border-dashed rounded-lg">
            <!-- 3 columns -->
            <div class="grid grid-cols-3 gap-4 mb-4">
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
                    <p class="text-2xl text-gray-400">
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


<%----------------------    orders tab starts--%>
    <div class="hidden p-4 sm:ml-64 hidden mt-16" id="orders" role="tabpanel">
        <div class="p-4 border-2 border-gray-200 border-dashed rounded-lg">
            <!-- single column -->
            <div class="flex items-center justify-center h-48 mb-4 rounded bg-gray-100">
                <p class="text-2xl text-gray-400">
                    <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                    </svg>
                </p>
            </div>
        </div>
    </div>

<%-----------    account tab starts here--%>
    <div class="hidden p-4 sm:ml-64 hidden mt-16" id="account" role="tabpanel">
        <div class="p-4 border-2 border-gray-200 border-dashed rounded-lg">
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
            </div>
        </div>
    </div>

<%-------------    delivery tab starts here--%>
    <div class="hidden p-4 sm:ml-64 hidden mt-16" id="address" role="tabpanel">
        <div class="p-4 border-2 border-gray-200 border-dashed rounded-lg">
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
            </div>
        </div>
    </div>

<%-------------    wishlist tab starts here--%>
    <div class="hidden p-4 sm:ml-64 hidden mt-16" id="wishlist" role="tabpanel">
        <div class="p-4 border-2 border-gray-200 border-dashed rounded-lg">
            <!-- single column -->
            <div class="flex items-center justify-center h-48 mb-4 rounded bg-gray-100">
                <p class="text-2xl text-gray-400">
                    <svg class="w-3.5 h-3.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                    </svg>
                </p>
            </div>
        </div>
    </div>

</div> <!-- main tab div tag ends -->

<!-- JavaScript -->
<script>
    // Get all the tab buttons
    const tabButtons = document.querySelectorAll('[role="tab"]');

    // Add click event listeners to each tab button
    tabButtons.forEach(button => {
        button.addEventListener('click', () => {
            // Get the data-tabs-target attribute to identify the clicked tab
            const target = button.getAttribute('data-tabs-target');

            // Remove the 'bg-white' class from all tab buttons
            tabButtons.forEach(tabButton => {
                tabButton.classList.remove('bg-[#f8fafc]');
            });

            // Add the 'bg-white' class to the clicked tab
            button.classList.add('bg-[#f8fafc]');
        });
    });
</script>

</body>
</html>
