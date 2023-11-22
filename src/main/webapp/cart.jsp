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

<div class="container mx-auto">
    <div class="flex shadow-md">
        <div class="w-3/4 bg-white px-10 py-10">
            <div class="flex justify-between border-b pb-8">
                <h1 class="font-semibold text-2xl">Shopping Cart</h1>
                <h2 id="totalProducts" class="font-semibold text-2xl">Item count</h2>
            </div>
            <div class="flex mt-10 mb-5">
                <h3 class="font-semibold text-gray-600 text-xs uppercase w-2/5">Product Details</h3>
                <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Quantity</h3>
                <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Price</h3>
                <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Sub Total</h3>
            </div>

            <div id="cartContainer">
                <%-- cart items will be adding here--%>
            </div>

            <%--back to shop page--%>
            <a href="/shop.jsp" class="flex font-semibold text-indigo-600 text-sm mt-10">
                <svg class="fill-current mr-2 text-indigo-600 w-4" viewBox="0 0 448 512"><path d="M134.059 296H436c6.627 0 12-5.373 12-12v-56c0-6.627-5.373-12-12-12H134.059v-46.059c0-21.382-25.851-32.09-40.971-16.971L7.029 239.029c-9.373 9.373-9.373 24.569 0 33.941l86.059 86.059c15.119 15.119 40.971 4.411 40.971-16.971V296z"/></svg>
                Continue Shopping
            </a>
        </div>

        <div id="summary" class="w-1/4 px-8 py-10">
            <h1 class="font-semibold text-2xl border-b pb-8">Order Summary</h1>
            <div class="flex justify-between mt-10 mb-5">
                <span id="totalProductss" class="font-semibold text-sm uppercase">Item count</span>
                <span class="font-semibold text-sm"></span>
            </div>
            <div>
                <label class="font-medium inline-block mb-3 text-sm uppercase">Shipping</label>
                <select class="block p-2 text-gray-600 w-full text-sm">
                    <option>Standard shipping - Rs 320.00</option>
                </select>
            </div>
            <div class="py-10">
                <label for="promo" class="font-semibold inline-block mb-3 text-sm uppercase">Promo Code</label>
                <input type="text" id="promo" placeholder="Enter your code" class="p-2 text-sm w-full">
            </div>
            <button class="bg-[#99CC33] font-medium uppercase text-white px-6 py-1.5 rounded hover:bg-primary-700">Apply</button>

            <%
                // Access the HttpSession
                HttpSession checkEmail = request.getSession();

                // Get the userEmail from the session
                String userEmail = (String) checkEmail.getAttribute("userEmail");
            %>

            <div class="border-t mt-8">
                <div class="flex font-semibold justify-between py-6 text-sm uppercase">
                    <span>Total cost</span>
                    <span id="totalBill">Null</span>
                </div>
                <button  id="checkoutButton" class="<% if (userEmail == null) { %>hover:bg-gray-500 cursor-not-allowed<% } %> mb-8 w-full bg-[#044A48] text-white hover:bg-primary-700 uppercase focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-3 text-center">Checkout</button>
            </div>
        </div>

    </div>
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
                <h3 class="mb-8 text-lg font-normal text-gray-500 ">Product removed from cart successfully! <br>Please refresh the page.</h3>
                <button data-modal-hide="popup-modal" type="button" class="bg-[#99CC33] text-white focus:ring-2 focus:outline-none focus:ring-[#044A48] font-medium rounded-lg text-sm inline-flex items-center px-10 py-2.5 text-center me-2">
                    Ok
                </button>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.js"></script>

<script>

    // Retrieve cart items from localStorage
    const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    let totalBillAmount = 0;
    let totalProductCount = 0;

    // Get the container where you want to display cart items
    const container = document.getElementById('cartContainer');

    // Use Promise.all to wait for all fetch operations to complete
    Promise.all(cartItems.map(item => {
        let arrayIndex = item.productId - 1;

        // Fetch product details from the /retrieveProducts servlet for each item
        return fetch(`/retrieveProducts?id=`+item.productId)
            .then(response => response.json())
            .then(productDetails => {
                const singleProduct = productDetails[arrayIndex]; // getting relevant product details (arrayIndex) by subtracting productId from 1

                if (singleProduct) {
                    const price = singleProduct.price;
                    const quantity = item.quantity;
                    let subTotal = 0;

                    // Update total bill amount
                    totalBillAmount += price * quantity;

                    //create subtotal amount
                    subTotal = price * quantity;

                    // Increment the total product count by 1
                    totalProductCount += 1;

                    // Display product details in your HTML
                    const cartItemElement = document.createElement('div');
                    cartItemElement.className = 'cart-item';

                    const cartItemHTML =
                        `<div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                            <div class="flex w-2/5">
                                <div class="w-20">
                                    <img class="h-24" src="Assets/img/`+singleProduct.image+`" alt="">
                                </div>
                                <div class="flex flex-col justify-between ml-4 flex-grow">
                                    <span class="font-bold text-sm">`+singleProduct.name+`</span>
                                    <span class="text-red-500 text-xs">`+singleProduct.category+`</span>
                                    <a href="#" data-modal-target="popup-modal" data-modal-toggle="popup-modal" onclick="removeFromCart(`+item.productId+`)" type="button" class="font-semibold hover:text-red-500 text-gray-500 text-xs">Remove</a>
                                </div>
                            </div>
                            <div class="flex justify-center w-1/5">
                                <span class="text-center w-1/5 font-semibold text-sm">`+quantity+`</span>
                            </div>
                            <span class="text-center w-1/5 font-semibold text-sm">Rs `+price+`</span>
                            <span class="text-center w-1/5 font-semibold text-sm">Rs `+subTotal+`</span>
                        </div>`;

                    // Populate the cart item with product data
                    cartItemElement.innerHTML = cartItemHTML;

                    // Append the cart item to the container
                    container.appendChild(cartItemElement);
                } else {
                    console.error(`Product with ID `+item.productId+` not found`);
                }
            })
            .catch(error => {
                console.error('Error fetching product details:', error);
            });
    }))
        .then(() => {
            // Display the total bill amount and total product count
            document.getElementById('totalBill').innerText = `Rs `+totalBillAmount;
            document.getElementById('totalProducts').innerText = totalProductCount +` Items`;
            document.getElementById('totalProductss').innerText = totalProductCount +` Items`;
        })
        .catch(error => {
            console.error('Error fetching product details:', error);
        });


    function removeFromCart(productId) {
        // Get existing cart items or initialize an empty array
        let cartItems = JSON.parse(localStorage.getItem("cart")) || [];

        // Find the index of the product with the given ID in the cart
        const productIndex = cartItems.findIndex(item => item.productId === productId);

        if (productIndex !== -1) {
            // Remove the product from the cart array
            cartItems.splice(productIndex, 1);

            // Update the cart in localStorage
            localStorage.setItem("cart", JSON.stringify(cartItems));

            // Provide feedback to the user (optional)
            //alert("Product removed from cart!");
        } else {
            // Product not found in the cart
            // You can handle this case as needed
             alert("Product not found in cart!");
        }
    }





    // Assume you have a function to get the product count and details
    function getOrderDetails() {
        // Fetch order details from localStorage or any other source
        return cartItems.map(item => ({ productId: item.productId, quantity: item.quantity }));
    }

    // Function to handle the checkout process
    function checkout() {
        const orderDetails = getOrderDetails();

        // Make sure there are items in the cart before proceeding with checkout
        if (orderDetails.length === 0) {
            alert('Your cart is empty. Add items before checking out.');
            return;
        }

        console.log(orderDetails)
        //Send order details to the backend using fetch API
        fetch('/sendOrderData', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ orderDetails }),
        })
            .then(response => {
                if (response.ok) {
                    // Order was successful, you can handle success accordingly
                    console.log('Order placed successfully!');
                    // Optionally, you can clear the cart after successful order
                    localStorage.removeItem('cart');
                } else {
                    // Handle errors or failed orders
                    console.error('Error placing order:', response.statusText);
                }
            })
            .catch(error => {
                console.error('Error during fetch:', error);
            });
    }

    // Attach the checkout function to the button click event
    document.getElementById('checkoutButton').addEventListener('click', checkout);


</script>
</body>
</html>
