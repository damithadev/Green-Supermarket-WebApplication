<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%
  // Access the HttpSession
  HttpSession checkEmail = request.getSession();

  // Get the userEmail from the session
  String userEmail = (String) checkEmail.getAttribute("userEmail");
%>

<%--top navbar starts--%>
<div class="bg-[#044A48] text-white py-2 text-center ">
    <p>Get 50% Off For Selected Items | Shop Now</p>
</div>
<%--top navbar ends--%>

<%--Navbar code starts here--%>
<nav class="bg-white sticky top-0 w-full z-20 left-0 border-b border-gray-200 shadow-md overflow-hidden">
  <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto pb-1">
    <%--      navbar Logo--%>
    <a href="/index.jsp" class="flex items-center">
      <img src="Assets/img/Logo.svg" class="h-16 mr-3" alt="Green Supermarket Logo">
        <%--      <span class="self-center text-2xl font-semibold whitespace-nowrap ">Logo</span>--%>
    </a>

    <%-- navbar fant awsome icons--%>
    <div class="flex md:order-2 gap-x-8">
      <a href="/cart.jsp">
          <i class="fa fa-shopping-cart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
      </a>
      <a href="/">
          <i class="fa fa-heart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
      </a>
      <a href="<% if (userEmail == null) { %> /login <% } else { %> /myaccount <% } %>">
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
          <a href="/vegetables.jsp" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 ">Vegetables</a>
        </li>
        <li>
          <a href="/fruits.jsp" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Fruits</a>
        </li>
        <li>
          <a href="/shop.jsp" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Shop</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<%--Navbar code ends here--%>

<section class="bg-[url('/Assets/img/slide1.png')] bg-cover">
  <div class="grid max-w-screen-xl min-h-screen px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">

    <div class="hidden lg:mt-0 lg:col-span-7 lg:flex">

    </div>
    <div class="mr-auto place-self-center lg:col-span-5">
      <h1 class="max-w-2xl -mt-32 mb-10 text-4xl font-extrabold md:text-5xl xl:text-5xl" style="line-height: 4.5rem;">Green Supermarket's Garden of Goodness</h1>
      <p class="max-w-2xl mb-6 font-light text-gray-500 lg:mb-8 md:text-lg lg:text-xl ">The freshest vegetables and fruits from farm to store, now delivered to your doorstep.</p>
      <a href="#" class="inline-flex mt-6 items-center justify-center px-10 py-3 text-base font-medium text-center text-gray-900 border border-gray-300 rounded-lg bg-[#044A48] text-white focus:ring-4 focus:ring-gray-100">
        Order Now
      </a>
    </div>

  </div>
</section>
<%--Hero section ends here--%>

<%--Top products start--%>
<section class="my-20">
  <div>
    <h1 class="text-center font-bold text-3xl mb-10" >Top Selling Items</h1>
    <hr class="w-96 h-0.5 mb-10 mx-auto my-4 bg-gray-300 border-0 rounded md:my-10">
  </div>

  <%--Product cards start here--%>
  <div id="product-container" class="grid grid-cols-4 mx-20 gap-10">


    <div class="my-10 flex flex-col bg-gray-100 w-[18rem] border border-gray-200 rounded-3xl shadow-xl">
      <div class="flex justify-center">
        <a href="/singleProduct.jsp?productId=1">
          <img src="Assets/img/apple.png" alt="" class="h-64 -mt-3 ml-5">
        </a>
        <a href="">
          <img src="Assets/img/productHeart.svg" alt="" class="h-8 mr-3 mt-3">
        </a>
      </div>
      <div class="-mt-14 h-56 bg-[url('/Assets/img/greenMask.svg')] bg-[center_top_-3rem] flex flex-col rounded-3xl h-48">
        <h3 class="mt-16 text-white font-bold text-center text-2xl">Apple</h3>
        <h3 class="mt-3 text-white font-medium text-center text-lg">Rs 150 / KG</h3>
        <button data-modal-target="popup-modal" data-modal-toggle="popup-modal" onclick="addToCart(1)" class="mt-5 bg-[#99CC33] px-5 py-2 font-semibold text-white self-center rounded-2xl" type="button"><i class="fa fa-shopping-cart fa-lg pr-2" aria-hidden="true"></i>Add to cart</button>
      </div>
    </div>

    <div class="my-10 flex flex-col bg-gray-100 w-[18rem] border border-gray-200 rounded-3xl shadow-xl">
      <div class="flex justify-center">
        <a href="/singleProduct.jsp?productId=16">
          <img src="Assets/img/beetroot.png" alt="" class="h-64 -mt-3 ml-5">
        </a>
        <a href="">
          <img src="Assets/img/productHeart.svg" alt="" class="h-8 mr-3 mt-3">
        </a>
      </div>
      <div class="-mt-14 h-56 bg-[url('/Assets/img/greenMask.svg')] bg-[center_top_-3rem] flex flex-col rounded-3xl h-48">
        <h3 class="mt-16 text-white font-bold text-center text-2xl">Beetroot</h3>
        <h3 class="mt-3 text-white font-medium text-center text-lg">Rs 230 / KG</h3>
        <button data-modal-target="popup-modal" data-modal-toggle="popup-modal" onclick="addToCart(16)" class="mt-5 bg-[#99CC33] px-5 py-2 font-semibold text-white self-center rounded-2xl" type="button"><i class="fa fa-shopping-cart fa-lg pr-2" aria-hidden="true"></i>Add to cart</button>
      </div>
    </div>

    <div class="my-10 flex flex-col bg-gray-100 w-[18rem] border border-gray-200 rounded-3xl shadow-xl">
      <div class="flex justify-center">
        <a href="/singleProduct.jsp?productId=20">
          <img src="Assets/img/avocado.png" alt="" class="h-64 -mt-3 ml-5">
        </a>
        <a href="">
          <img src="Assets/img/productHeart.svg" alt="" class="h-8 mr-3 mt-3">
        </a>
      </div>
      <div class="-mt-14 h-56 bg-[url('/Assets/img/greenMask.svg')] bg-[center_top_-3rem] flex flex-col rounded-3xl h-48">
        <h3 class="mt-16 text-white font-bold text-center text-2xl">Avocado</h3>
        <h3 class="mt-3 text-white font-medium text-center text-lg">Rs 230 / KG</h3>
        <button data-modal-target="popup-modal" data-modal-toggle="popup-modal" onclick="addToCart(20)" class="mt-5 bg-[#99CC33] px-5 py-2 font-semibold text-white self-center rounded-2xl" type="button"><i class="fa fa-shopping-cart fa-lg pr-2" aria-hidden="true"></i>Add to cart</button>
      </div>
    </div>

    <div class="my-10 flex flex-col bg-gray-100 w-[18rem] border border-gray-200 rounded-3xl shadow-xl">
      <div class="flex justify-center">
        <a href="/singleProduct.jsp?productId=11">
          <img src="Assets/img/carrot.png" alt="" class="h-64 -mt-3 ml-5">
        </a>
        <a href="">
          <img src="Assets/img/productHeart.svg" alt="" class="h-8 mr-3 mt-3">
        </a>
      </div>
      <div class="-mt-14 h-56 bg-[url('/Assets/img/greenMask.svg')] bg-[center_top_-3rem] flex flex-col rounded-3xl h-48">
        <h3 class="mt-16 text-white font-bold text-center text-2xl">Carrot</h3>
        <h3 class="mt-3 text-white font-medium text-center text-lg">Rs 250 / KG</h3>
        <button data-modal-target="popup-modal" data-modal-toggle="popup-modal" onclick="addToCart(11)" class="mt-5 bg-[#99CC33] px-5 py-2 font-semibold text-white self-center rounded-2xl" type="button"><i class="fa fa-shopping-cart fa-lg pr-2" aria-hidden="true"></i>Add to cart</button>
      </div>
    </div>


  </div>
</section>

<%--green bar--%>
<section>
  <div class="w-full h-72 bg-[#044A48]">
      <div class="flex grid grid-cols-3 mx-20 py-20 gap-10">
        <div class="h-20 flex flex-col items-center">
          <i class="fa-solid fa-truck fa-4x mb-10" style="color: #ffffff; height: 50px;"></i>
          <h1 class="text-white font-medium text-2xl mb-3">On time delivery</h1>
          <p class="text-white">lorem, sdas asd asd asd asd asdafsdfg dg d</p>
        </div>
        <div class="h-20 flex flex-col items-center">
          <i class="fa-solid fa-truck fa-4x mb-10" style="color: #ffffff; height: 50px;"></i>
          <h1 class="text-white font-medium text-2xl mb-3">On time delivery</h1>
          <p class="text-white">lorem, sdas asd asd asd asd asdafsdfg dg d</p>
        </div>
        <div class="h-20 flex flex-col items-center">
          <i class="fa-solid fa-truck fa-4x mb-10" style="color: #ffffff; height: 50px;"></i>
          <h1 class="text-white font-medium text-2xl mb-3">On time delivery</h1>
          <p class="text-white">lorem, sdas asd asd asd asd asdafsdfg dg d</p>
        </div>
      </div>
  </div>
</section>

</body>
</html>