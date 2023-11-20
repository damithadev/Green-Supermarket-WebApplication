<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/20/2023
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        #summary {
            background-color: #f6f6f6;
        }
    </style>
</head>
<body>
<%--Navbar code starts here--%>
<nav class="bg-white sticky top-0 w-full z-20 left-0 border-b border-gray-200 shadow-md overflow-hidden">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto pb-1">
        <a href="/index.jsp" class="flex items-center">
            <img src="Assets/img/Logo.svg" class="h-16 mr-3" alt="Flowbite Logo">
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

<div class="container mx-auto">
    <div class="flex shadow-md">
        <div class="w-3/4 bg-white px-10 py-10">
            <div class="flex justify-between border-b pb-8">
                <h1 class="font-semibold text-2xl">Shopping Cart</h1>
                <h2 class="font-semibold text-2xl">3 Items</h2>
            </div>
            <div class="flex mt-10 mb-5">
                <h3 class="font-semibold text-gray-600 text-xs uppercase w-2/5">Product Details</h3>
                <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Quantity</h3>
                <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Price</h3>
                <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Total</h3>
            </div>


            <div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                <div class="flex w-2/5"> <!-- product -->
                    <div class="w-20">
                        <img class="h-24" src="https://drive.google.com/uc?id=18KkAVkGFvaGNqPy2DIvTqmUH_nk39o3z" alt="">
                    </div>
                    <div class="flex flex-col justify-between ml-4 flex-grow">
                        <span class="font-bold text-sm">Iphone 6S</span>
                        <span class="text-red-500 text-xs">Apple</span>
                        <a href="#" class="font-semibold hover:text-red-500 text-gray-500 text-xs">Remove</a>
                    </div>
                </div>
                <div class="flex justify-center w-1/5">
                    <span class="text-center w-1/5 font-semibold text-sm">1</span>
                </div>
                <span class="text-center w-1/5 font-semibold text-sm">$400.00</span>
                <span class="text-center w-1/5 font-semibold text-sm">$400.00</span>
            </div>



            <div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                <div class="flex w-2/5"> <!-- product -->
                    <div class="w-20">
                        <img class="h-24" src="Assets//img/pineapple.png" alt="">
                    </div>
                    <div class="flex flex-col justify-between ml-4 flex-grow">
                        <span class="font-bold text-sm">Xiaomi Mi 20000mAh</span>
                        <span class="text-red-500 text-xs">Xiaomi</span>
                        <a href="#" class="font-semibold hover:text-red-500 text-gray-500 text-xs">Remove</a>
                    </div>
                </div>
                <div class="flex justify-center w-1/5">
                    <span class="text-center w-1/5 font-semibold text-sm">1</span>
                </div>
                <span class="text-center w-1/5 font-semibold text-sm">$40.00</span>
                <span class="text-center w-1/5 font-semibold text-sm">$40.00</span>
            </div>


            <div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                <div class="flex w-2/5"> <!-- product -->
                    <div class="w-20">
                        <img class="h-24" src="https://drive.google.com/uc?id=1vXhvO9HoljNolvAXLwtw_qX3WNZ0m75v" alt="">
                    </div>
                    <div class="flex flex-col justify-between ml-4 flex-grow">
                        <span class="font-bold text-sm">Airpods</span>
                        <span class="text-red-500 text-xs">Apple</span>
                        <a href="#" class="font-semibold hover:text-red-500 text-gray-500 text-xs">Remove</a>
                    </div>
                </div>
                <div class="flex justify-center w-1/5">
                    <span class="text-center w-1/5 font-semibold text-sm">1</span>
                </div>
                <span class="text-center w-1/5 font-semibold text-sm">$150.00</span>
                <span class="text-center w-1/5 font-semibold text-sm">$150.00</span>
            </div>




            <a href="#" class="flex font-semibold text-indigo-600 text-sm mt-10">

                <svg class="fill-current mr-2 text-indigo-600 w-4" viewBox="0 0 448 512"><path d="M134.059 296H436c6.627 0 12-5.373 12-12v-56c0-6.627-5.373-12-12-12H134.059v-46.059c0-21.382-25.851-32.09-40.971-16.971L7.029 239.029c-9.373 9.373-9.373 24.569 0 33.941l86.059 86.059c15.119 15.119 40.971 4.411 40.971-16.971V296z"/></svg>
                Continue Shopping
            </a>
        </div>

        <div id="summary" class="w-1/4 px-8 py-10">
            <h1 class="font-semibold text-2xl border-b pb-8">Order Summary</h1>
            <div class="flex justify-between mt-10 mb-5">
                <span class="font-semibold text-sm uppercase">Items 3</span>
                <span class="font-semibold text-sm">590$</span>
            </div>
            <div>
                <label class="font-medium inline-block mb-3 text-sm uppercase">Shipping</label>
                <select class="block p-2 text-gray-600 w-full text-sm">
                    <option>Standard shipping - $10.00</option>
                </select>
            </div>
            <div class="py-10">
                <label for="promo" class="font-semibold inline-block mb-3 text-sm uppercase">Promo Code</label>
                <input type="text" id="promo" placeholder="Enter your code" class="p-2 text-sm w-full">
            </div>
            <button class="bg-[#99CC33] font-medium uppercase text-white px-6 py-1.5 rounded hover:bg-primary-700">Apply</button>
            <div class="border-t mt-8">
                <div class="flex font-semibold justify-between py-6 text-sm uppercase">
                    <span>Total cost</span>
                    <span>$600</span>
                </div>
                <button type="submit" class="mb-8 w-full bg-[#044A48] text-white hover:bg-primary-700 uppercase focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-3 text-center">Checkout</button>
            </div>
        </div>

    </div>
</div>
</body>
</html>
