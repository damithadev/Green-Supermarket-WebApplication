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
                <h2 class="font-semibold text-2xl">3 Items</h2>
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
                <span class="font-semibold text-sm uppercase">Items 3</span>
                <span class="font-semibold text-sm">590$</span>
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
            <div class="border-t mt-8">
                <div class="flex font-semibold justify-between py-6 text-sm uppercase">
                    <span>Total cost</span>
                    <span id="totalBill">$600</span>
                </div>
                <button type="submit" class="mb-8 w-full bg-[#044A48] text-white hover:bg-primary-700 uppercase focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-3 text-center">Checkout</button>
            </div>
        </div>

    </div>
</div>


<script>

    // // Retrieve cart items from localStorage
    // const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    // let totalBillAmount = 0;
    // // Loop through cart items and fetch/display product details from local storage
    // cartItems.forEach(item => {
    //
    //     // Fetch all product details from the /retrieveProducts servlet
    //     fetch('/retrieveProducts')
    //         .then(response => response.json())
    //         .then(productDetails => {
    //
    //             //filter single product detail according to the where jsonProductID === localstorageProductID
    //             const cartItems = productDetails.filter(product => product.id === item.productId);
    //
    //             cartItems.forEach(singleProduct => {
    //                 const id = singleProduct.id;
    //                 const name = singleProduct.name;
    //                 const category = singleProduct.category;
    //                 const price = singleProduct.price;
    //                 const image = singleProduct.image;
    //                 const quantity = item.quantity;
    //
    //                 totalBillAmount = totalBillAmount + price;
    //
    //                 // Get the container where you want to display cart items
    //                 const container = document.getElementById('cartContainer');
    //
    //                 // Display product details in your HTML (update this according to your structure)
    //                 const cartItemElement = document.createElement('div');
    //                 cartItemElement.className = 'cart-item';
    //
    //                 const cartItemHTML =
    //                     `<div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
    //                         <div class="flex w-2/5">
    //                             <div class="w-20">
    //                                 <img class="h-24" src="Assets/img/`+image+`" alt="">
    //                             </div>
    //                             <div class="flex flex-col justify-between ml-4 flex-grow">
    //                                 <span class="font-bold text-sm">`+name+`</span>
    //                                 <span class="text-red-500 text-xs">`+category+`</span>
    //                                 <a href="#" class="font-semibold hover:text-red-500 text-gray-500 text-xs">Remove</a>
    //                             </div>
    //                         </div>
    //                         <div class="flex justify-center w-1/5">
    //                             <span class="text-center w-1/5 font-semibold text-sm">`+quantity+`</span>
    //                         </div>
    //                         <span class="text-center w-1/5 font-semibold text-sm">Rs `+price+`</span>
    //                         <span class="text-center w-1/5 font-semibold text-sm">Rs `+price+`</span>
    //                     </div>`;
    //
    //                 // Populate the cart item with product data
    //                 cartItemElement.innerHTML = cartItemHTML;
    //
    //                 // Append the cart item to the container
    //                 container.appendChild(cartItemElement);
    //             });
    //
    //         })
    //         .catch(error => {
    //             console.error('Error fetching product details:', error);
    //         });
    // });
    //
    // document.getElementById('totalBill').innerText = `Rs `+totalBillAmount;
    //








    // Retrieve cart items from localStorage
    const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    let totalBillAmount = 0;
    let arrayIndex = 0;

    // Get the container where you want to display cart items
    const container = document.getElementById('cartContainer');

    // Use Promise.all to wait for all fetch operations to complete
    Promise.all(cartItems.map(item => {
        // Fetch product details from the /retrieveProducts servlet for each item
        return fetch(`/retrieveProducts?id=`+item.productId)
            .then(response => response.json())
            .then(productDetails => {
                const singleProduct = productDetails[arrayIndex]; // Assuming productDetails is an array with one element

                if (singleProduct) {
                    const price = singleProduct.price;
                    const quantity = item.quantity;
                    arrayIndex++;

                    // Update total bill amount
                    totalBillAmount += price * quantity;

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
                                    <a href="#" class="font-semibold hover:text-red-500 text-gray-500 text-xs">Remove</a>
                                </div>
                            </div>
                            <div class="flex justify-center w-1/5">
                                <span class="text-center w-1/5 font-semibold text-sm">`+quantity+`</span>
                            </div>
                            <span class="text-center w-1/5 font-semibold text-sm">Rs `+price+`</span>
                            <span class="text-center w-1/5 font-semibold text-sm">Rs `+price+`</span>
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
            // Display the total bill amount
            document.getElementById('totalBill').innerText = `Rs `+totalBillAmount;
        })
        .catch(error => {
            console.error('Error fetching product details:', error);
        });

</script>
</body>
</html>
