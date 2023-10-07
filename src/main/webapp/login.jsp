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
<section class="bg-gray-50 pt-10">
    <div class="flex font-bold flex-col items-center justify-center px-6 mx-auto md:h-screen lg:py-0">
        <div class="flex items-center mb-6 text-3xl text-gray-900">
            <h1>Logo here</h1>
<%--            <img class="h-12 mr-2" src={headerLogo} alt="logo" />--%>
        </div>
        <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">
                    Log in to your account
                </h1>
                <form class="space-y-4 md:space-y-6" action="#">
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
                                        required=""
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
                        <a href="#"
                              class="font-medium text-primary-600 hover:underline"
                        >
                        Sign up
                        </a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>
