<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/15/2023
  Time: 11:49 AM
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



<div class="main-container">
    <div class="product-section container mx-auto z-10 mt-5">
        <div class="flex flex-col lg:flex-row mx-auto overflow-hidden grid grid-cols-2">

            <!-- left side container -->
            <div class="w-full  p-2 bg-white " >
                <div class="flex flex-col items-start">

                    <div class="flex self-center">
                        <img id="myImage" src="Assets/img/pineapple.png" class="h-[30rem]" alt="product image">
                    </div>
                </div>
            </div>

            <!-- right side container -->
            <div class="w-full py-12 px-12">
                <div class="flex">
                    <p id="productBreadcrumb" class="mb-8 text-gray-400">
                        Home &nbsp/&nbsp Fruits &nbsp/&nbsp Pineapple
                    </p>
                    <a href="#" class="w-3/5 flex justify-end">
                        <img src="Assets/img/productHeart.svg" alt="" class="h-8 mr-3">
                    </a>
                </div>
                <h2 id="productName" class="text-3xl font-medium mb-6">Pineapple</h2>
                <h2 id="productPrice" class="text-xl font-medium mb-8">Rs 150 / KG</h2>
                <p id="productDescription" class="my-5 pr-16 font-light">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                    veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                    velit esse
                </p>
                <div class="flex my-10">
                    <button onclick="decrement()" class="px-3 pb-1 font-bold text-2xl border rounded border-black">-</button>
                    <input id="quantity" type="text" value="1" class="text-center bg-gray-100 w-12" readonly>
                    <button onclick="increment()" class="px-2.5 pb-1 font-bold text-2xl border rounded border-black">+</button>
                </div>
                <button data-modal-target="popup-modal" data-modal-toggle="popup-modal" onclick="addToCart()" class=" bg-[#99CC33] px-5 py-2 font-semibold text-white self-center rounded-xl"><i class="fa fa-shopping-cart fa-lg pr-2" aria-hidden="true"></i>Add to cart</button>


            </div>
        </div>
    </div>

    <div class="you-may-like">

    </div>


    <%--Pop message here--%>
    <div id="popup-modal" tabindex="-1" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
        <div class="relative p-4 w-full max-w-md max-h-full">
            <div class="relative bg-white rounded-lg shadow ">
                <button type="button" class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center " data-modal-hide="popup-modal">
                    <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                    </svg>
                    <span class="sr-only">Close modal</span>
                </button>
                <div class="p-4 md:p-5 text-center">
                    <i class="fa-solid text-7xl py-5 fa-check fa-bounce fa-2xl" style="color: #044A48;];"></i>
                    <h3 class="mb-8 text-lg font-normal text-gray-500 ">Product added to cart successfully!</h3>
                    <button data-modal-hide="popup-modal" type="button" class="bg-[#99CC33] text-white focus:ring-2 focus:outline-none focus:ring-[#044A48] font-medium rounded-lg text-sm inline-flex items-center px-10 py-2.5 text-center me-2">
                        Ok
                    </button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.js"></script>

</div>
<script>
    function increment() {
        // Get the current value
        let quantityField = document.getElementById("quantity");
        let currentValue = parseInt(quantityField.value);

        // Increment the value
        quantityField.value = currentValue + 1;
    }

    function decrement() {
        // Get the current value
        let quantityField = document.getElementById("quantity");
        let currentValue = parseInt(quantityField.value);

        // Ensure the value doesn't go below 1
        if (currentValue > 1) {
            // Decrement the value
            quantityField.value = currentValue - 1;
        }
    }


    document.addEventListener('DOMContentLoaded', function () {
        // Fetch product details based on productId from URL
        const urlParams = new URLSearchParams(window.location.search);
        const productId = urlParams.get('productId');

        fetch('/retrieveProducts')
            .then(response => response.json())
            .then(data => {
                // Filter product details based on productId
                const productDetails = data.find(product => product.id === parseInt(productId));

                // Display product details
                if (productDetails) {
                    const price = productDetails.price.toFixed(2);
                    const name = productDetails.name;
                    const category = productDetails.category;
                    const imgName = productDetails.image;
                    const imageElement = document.getElementById("myImage");
                    imageElement.src = `Assets/img/`+imgName;

                    const demoPara = `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                       tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                       veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                       commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                       velit esse`


                    document.getElementById('productBreadcrumb').innerText = `Home / `+category+` / `+name;
                    document.getElementById('productName').innerText = name;
                    document.getElementById('productDescription').innerText = demoPara;
                    document.getElementById('productPrice').innerText = `Rs `+price+` / KG`;
                } else {
                    console.error('Product not found.');
                }
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    });



    function getProductIdFromURL() {
        const urlParams = new URLSearchParams(window.location.search);
        const productId = urlParams.get('productId');

        // Parse the productId as an integer
        return productId ? parseInt(productId, 10) : null;
    }

    const quantityIntValue = parseInt(document.getElementById("quantity").value);

    // adding products to the cart
    function addToCart() {
        let productId = getProductIdFromURL();
        // Get existing cart items or initialize an empty array
        let cartItems = JSON.parse(localStorage.getItem("cart")) || [];

        // Check if the product ID is already in the cart
        const existingItem = cartItems.find(item => item.productId === productId);

        if (existingItem) {
            // Increment the quantity if the product is already in the cart
            existingItem.quantity = existingItem.quantity+ quantityIntValue;
        } else {
            // Add the new product to the cart with quantity 1
            cartItems.push({ productId, quantity: quantityIntValue });
        }

        // Update the cart in localStorage
        localStorage.setItem("cart", JSON.stringify(cartItems));

        // Provide feedback to the user (optional)
        // alert("Product added to cart!");
    }
</script>
</body>
</html>
