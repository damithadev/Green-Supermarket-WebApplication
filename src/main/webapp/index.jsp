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
      <h1 class="max-w-2xl -mt-32 mb-10 text-4xl font-extrabold md:text-5xl xl:text-5xl" style="line-height: 4.5rem;">Buy Fresh Vegetables & Fruits</h1>
      <p class="max-w-2xl mb-6 font-light text-gray-500 lg:mb-8 md:text-lg lg:text-xl ">The freshest vegetables and fruits from farm to store, now delivered to your doorstep.</p>
      <a href="#" class="inline-flex mt-6 items-center justify-center px-10 py-3 text-base font-medium text-center text-gray-900 border border-gray-300 rounded-lg bg-[#044A48] text-white focus:ring-4 focus:ring-gray-100">
        Shop Now
      </a>
    </div>

  </div>
</section>

</body>
</html>