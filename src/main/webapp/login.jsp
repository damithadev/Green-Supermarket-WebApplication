<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/6/2023
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

<%--Navbar code starts here--%>
<nav class="bg-white  fixed w-full z-20 top-0 left-0 border-b border-gray-200">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
        <a href="/index.jsp" class="flex items-center">
            <%--      <img src="https://flowbite.com/docs/images/logo.svg" class="h-8 mr-3" alt="Flowbite Logo">--%>
            <span class="self-center text-2xl font-semibold whitespace-nowrap ">Logo</span>
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




<%--Login form starts here--%>
<section class="bg-gray-50">
    <div class="flex flex-col items-center justify-center px-6 mx-auto md:h-screen lg:py-0">
        <div class="flex items-center mb-6 text-3xl text-gray-900">
            <h1>Logo here</h1>
<%--            <img class="h-12 mr-2" src={headerLogo} alt="logo" />--%>
        </div>
        <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">
                    Log in to your account
                </h1>
                <form method="post" class="space-y-4 md:space-y-6" action="/login">
                    <div>
                        <label
                                for="email"
                                class="block mb-2 text-sm font-medium text-gray-900 e"
                        >
                            Your email
                        </label>
                        <input
                                type="email"
                                name="email"
                                id="email"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                placeholder="name@gmail.com"
                                required=""
                        />
                    </div>
                    <div>
                        <label
                                for="password"
                                class="block mb-2 text-sm font-medium text-gray-900 "
                        >
                            Password
                        </label>
                        <input
                                type="password"
                                name="password"
                                id="password"
                                placeholder="••••••••"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 "
                                required=""
                        />
                    </div>
                    <div class="flex items-center justify-between">
                        <div class="flex items-start">
                            <div class="flex items-center h-5">
                                <input
                                        id="remember"
                                        aria-describedby="remember"
                                        type="checkbox"
                                        class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300 "
                                />
                            </div>
                            <div class="ml-3 text-sm">
                                <label for="remember" class="text-gray-500 ">
                                    Remember me
                                </label>
                            </div>
                        </div>
                        <a
                                href="#"
                                class="text-sm font-medium text-primary-600 hover:underline "
                        >
                            Forgot password?
                        </a>
                    </div>
                    <button
                            type="submit"
                            class="w-full text-white bg-[#023047] hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                    >
                        Sign in
                    </button>
                    <p class="text-sm font-light text-gray-500 ">
                        Don’t have an account yet?
                        <a href="/register"
                              class="font-medium text-primary-600"
                        >
                        Sign up
                        </a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</section>
<%--Login form starts here--%>

</body>
</html>
