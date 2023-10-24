<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

<%--top navbar starts--%>
<div class="bg-[#044A48] text-white py-2 text-center ">
    <p>Get 50% Off For Selected Items | Shop Now</p>
</div>
<%--top navbar ends--%>

<%--Navbar code starts here--%>
<nav class="bg-white  fixed w-full z-20 top-10 left-0 border-b border-gray-200">
  <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto py-2">
    <a href="/index.jsp" class="flex items-center">
      <img src="Assets/img/Logo.svg" class="h-16 mr-3" alt="Flowbite Logo">
<%--      <span class="self-center text-2xl font-semibold whitespace-nowrap ">Logo</span>--%>
    </a>
    <div class="flex md:order-2 gap-5">
      <a href="/login">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
          <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0zM4.501 20.118a7.5 7.5 0 0114.998 0A17.933 17.933 0 0112 21.75c-2.676 0-5.216-.584-7.499-1.632z" />
        </svg>
      </a>
    </div>
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
<h1 class="text-center font-semibold mt-32 text-3xl">Home Page here</h1>
<br/>

</body>
</html>