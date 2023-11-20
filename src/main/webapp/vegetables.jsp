<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/14/2023
  Time: 11:12 PM
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
                    <a href="/vegetables.jsp" class="block font-bold text-lg py-2 pl-3 pr-4 text-[#044A48] rounded hover:bg-gray-100 md:hover:bg-transparent md:text-blue-700 md:hover:text-blue-700 md:p-0 ">Vegetables</a>
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


<%--cover page here--%>
<div class="flex flex-col bg-[url('/Assets/img/vegetableCoverDark.png')] justify-center h-96 mb-20">
    <h1 class="font-bold text-5xl text-center text-white leading-normal z-10">Elevate Your Plate with Our Diverse <br>
        Organic Vegetable Selection.</h1>
</div>

<%--heading 2--%>
<div class="flex flex-col justify-center mb-10">
    <h1 class="font-semibold text-2xl z-10 ml-20">All Vegetable Items :</h1>
</div>

<%--Product cards start here--%>
<div id="product-container" class="grid grid-cols-4 mx-20 gap-10">

    <!-- Product cards will be added inside this -->
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

<script>

    // Fetch data from the servlet
    fetch('/retrieveProducts')
        .then(response => response.json())
        .then(data => {

            // Filter products where category is "vegetables"
            const vegetables = data.filter(product => product.category === 'Vegetables');

            // Loop through the filtered vegetables and do something with each
            vegetables.forEach(product => {
                const id = product.id;
                const name = product.name;
                const price = product.price;
                const desc = product.description;
                const image = product.image;

                // Get the container where you want to append the product cards
                const productContainer = document.getElementById('product-container');

                // Create a card element
                const card = document.createElement('div');
                card.className = 'product-card';


                const productCard =

                    `<div class="my-10 flex flex-col bg-gray-100 w-[18rem] border border-gray-200 rounded-3xl shadow-xl">
                                    <div class="flex justify-center">
                                        <a href="/singleProduct.jsp?productId=`+id+`">
                                            <img src="Assets/img/`+image+`" alt="" class="h-64 -mt-3 ml-5">
                                        </a>
                                        <a href="">
                                            <img src="Assets/img/productHeart.svg" alt="" class="h-8 mr-3 mt-3">
                                        </a>
                                    </div>
                                    <div class="-mt-14 h-56 bg-[url('/Assets/img/greenMask.svg')] bg-[center_top_-3rem] flex flex-col rounded-3xl h-48">
                                        <h3 class="mt-16 text-white font-bold text-center text-2xl">` +name+ `</h3>
                                        <h3 class="mt-3 text-white font-medium text-center text-lg">Rs `+price+` / KG</h3>
                                         <button data-modal-target="popup-modal" data-modal-toggle="popup-modal" onclick="addToCart(`+id+`)" class="mt-5 bg-[#99CC33] px-5 py-2 font-semibold text-white self-center rounded-2xl"><i class="fa fa-shopping-cart fa-lg pr-2" aria-hidden="true"></i>Add to cart</button>
                                    </div>
                                </div>`;


                // Populate the card with product data
                card.innerHTML = productCard;

                // Append the card to the container
                productContainer.appendChild(card);

            });

        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });


    // adding products to the cart
    function addToCart(productId) {
        // Get existing cart items or initialize an empty array
        let cartItems = JSON.parse(localStorage.getItem("cart")) || [];

        // Check if the product ID is already in the cart
        const existingItem = cartItems.find(item => item.productId === productId);

        if (existingItem) {
            // Increment the quantity if the product is already in the cart
            existingItem.quantity++;
        } else {
            // Add the new product to the cart with quantity 1
            cartItems.push({ productId, quantity: 1 });
        }

        // Update the cart in localStorage
        localStorage.setItem("cart", JSON.stringify(cartItems));

        // Provide feedback to the user (optional)
        // alert("Product added to cart!");
    }

</script>
</body>
</html>
