<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/9/2023
  Time: 2:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<!-- component -->
<div class="h-screen">
    <div class="bg-white p-6  md:mx-auto">

        <div class="flex flex-col items-center mb-5">

            <img src="Assets/img/success.png" class="h-80" alt="3d cart">

            <svg xmlns="http://www.w3.org/2000/svg" height="4em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#044a48}</style><path d="M256 512A256 256 0 1 0 256 0a256 256 0 1 0 0 512zM369 209L241 337c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L335 175c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z"/></svg>

        </div>
        <div class="text-center">
            <h3 class="md:text-2xl text-base text-gray-900 font-semibold text-center">Payment Done!</h3>
            <p class="text-gray-600 mt-10 my-2"></p>
<%--            <p class="text-gray-600"> We are working on it!  </p>--%>

            <form action="/addReview" method="post">

            <div class="flex flex-col items-center">
                <label for="message" class="w-3/6 text-justify block mb-8 text-gray-600">Your order has been placed successfully. We're already hard at work to ensure everything is perfect.  We'd love to hear about your experience with the order placing process. Feel free to share any suggestions you have. Your feedback helps us enhance your shopping journey.</label>
                <textarea id="message" name="review" rows="4" class="block p-2.5 w-3/6 text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-" required placeholder="Write your thoughts here..."></textarea>
            </div>
            <button type="submit" class="my-8 mt-14 bg-[#99CC33] text-white hover:bg-primary-700 font-medium rounded-lg text-sm px-8 py-2.5 text-center">Submit</button>

            </form>
        </div>
    </div>
</div>

<%--<h1 class="text-center font-semibold mt-20 text-3xl">Payment Success! </h1>--%>
</body>
</html>
