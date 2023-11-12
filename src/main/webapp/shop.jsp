<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/11/2023
  Time: 12:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        h5 {
            color:blue;
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


<%--Product cards start here--%>
<div id="product-container" class="grid grid-cols-4 mx-20 gap-10">

<%--    --%>
<%--<div class="w-full mt-10 ml-10 max-w-sm bg-white border border-gray-200 rounded-lg shadow">--%>
<%--    <a href="#">--%>
<%--        <img class="p-8 rounded-t-lg" src="Assets/img/watch.png" alt="product image" />--%>
<%--    </a>--%>
<%--    <div class="px-5 pb-5">--%>
<%--        <a href="#">--%>
<%--            <h5 id="productName" class="text-xl font-semibold tracking-tight text-gray-900">Apple Watch Series 7 GPS, Aluminium Case, Starlight Sport</h5>--%>
<%--        </a>--%>
<%--        <div class="flex items-center mt-2.5 mb-5">--%>
<%--            <div class="flex items-center space-x-1 rtl:space-x-reverse">--%>
<%--                <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">--%>
<%--                    <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>--%>
<%--                </svg>--%>
<%--                <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">--%>
<%--                    <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>--%>
<%--                </svg>--%>
<%--                <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">--%>
<%--                    <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>--%>
<%--                </svg>--%>
<%--                <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">--%>
<%--                    <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>--%>
<%--                </svg>--%>
<%--                <svg class="w-4 h-4 text-gray-200 " aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">--%>
<%--                    <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>--%>
<%--                </svg>--%>
<%--            </div>--%>
<%--            <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-2.5 py-0.5 rounded  ms-3">5.0</span>--%>
<%--        </div>--%>
<%--        <div class="flex items-center justify-between">--%>
<%--            <span id="productPrice" class="text-3xl font-bold text-gray-900">$599</span>--%>
<%--            <a href="#" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Add to cart</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>



    <!-- Product cards will be added here -->
</div>




<script>

    // Fetch data from the servlet
    fetch('/retrieveProducts')
        .then(response => response.json())
        .then(data => {

            // You can loop through the products and do something with each
            data.forEach(product => {
                console.log(product.id, product.name, product.price, product.description);
                const id = product.id;
                const name = product.name;
                const price = product.price;
                const desc = product.description;

                // Get the container where you want to append the product cards
                 const productContainer = document.getElementById('product-container');
                //
                // // Create a card element
                const card = document.createElement('div');
                card.className = 'product-card';



                const productCard =

                                `<div class="my-10 flex flex-col bg-gray-100 w-[18rem] border border-gray-200 rounded-3xl shadow-xl">
                                    <div class="flex justify-center">
                                        <a href="#">
                                            <img src="Assets/img/pineapple.png" alt="" class="h-64 -mt-3 ml-5">
                                        </a>
                                        <a href="">
                                            <img src="Assets/img/productHeart.svg" alt="" class="h-8 mr-3 mt-3">
                                        </a>
                                    </div>
                                    <div class="-mt-14 h-56 bg-[url('/Assets/img/greenMask.svg')] bg-[center_top_-3rem] flex flex-col rounded-3xl h-48">
                                        <h3 class="mt-16 text-white font-bold text-center text-2xl">` +name+ `</h3>
                                        <h3 class="mt-3 text-white font-medium text-center text-lg">Rs `+price+` / Unit</h3>
                                         <button class="mt-5 bg-[#99CC33] px-5 py-2 font-semibold text-white self-center rounded-2xl"><i class="fa fa-shopping-cart fa-lg pr-2" aria-hidden="true"></i>Add to cart</button>
                                    </div>
                                </div>`;






                // Populate the card with product data
                card.innerHTML = productCard;

                // Append the card to the container
                productContainer.appendChild(card);





                // // Get the existing product card elements
                // const productNameElement = document.getElementById('productName');
                // const productPriceElement = document.getElementById('productPrice');
                //
                // // Update the product name and price for each product
                // productNameElement.innerText = product.name;
                // productPriceElement.innerText = "$" + product.price.toFixed(2);
                //
                // // Clone the entire product card and append it to the container
                // const productContainer = document.getElementById('product-container');
                // const clonedCard = document.querySelector('.product-card').cloneNode(true);
                // productContainer.appendChild(clonedCard);





















                    // "Product ID: " + product.id +
                    // "<br>Product Name: " + product.name +
                    // "<br>Product Price: $" + product.price +
                    // "<br>Product Description: " + product.description;


            <%--        `--%>
            <%--    <h3>${product.name ? product.name : 'No Name'}</h3>--%>
            <%--    <p>${product.description ? product.description : 'No Description'}</p>--%>
            <%--    <p>Price: $${product.price ? product.price.toFixed(2) : 'No Price'}</p>--%>
            <%--    <button onclick="addToCart(${product.id})">Add to Cart</button>--%>
            <%--`;--%>



            });
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });

</script>
</body>
</html>
