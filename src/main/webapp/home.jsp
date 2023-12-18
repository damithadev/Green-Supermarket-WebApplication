<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/18/2023
  Time: 8:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" href="imagess/SoloLogo.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
<div>
    <div>
        <%--top navbar starts--%>
        <div class="bg-[#044A48] text-white py-2 text-center ">
            <p>Get 50% Off For Selected Items | Shop Now</p>
        </div>
        <%--top navbar ends--%>

        <%--Navbar code starts here--%>
        <nav class="bg-white sticky top-0 w-full z-20 left-0 border-b border-gray-200 shadow-md overflow-hidden">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto pb-1">
                <%--navbar Logo--%>
                <a href="adminDashboard.jsp" class="flex items-center">
                    <img src="imagess/Logo.png" class="h-16 mr-3" alt="Green Supermarket Logo">
                    <%--<span class="self-center text-2xl font-semibold whitespace-nowrap ">Logo</span>--%>
                </a>

                <%-- navbar fant awsome icons--%>
                <div class="flex md:order-2 gap-x-8">
                    <a href="adminDashboard.jsp">
                        <i class="fa fa-shopping-cart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
                    </a>
                    <a href="/">
                        <i class="fa fa-heart fa-xl" aria-hidden="true" style="color: #044A48;"></i>
                    </a>
                    <a href="<% %>if (userEmail == null) {  /login  } else {  /myaccount  }<% %>">
                        <i class="fa fa-user fa-xl" aria-hidden="true" style="color: #044A48;"></i>
                    </a>
                </div>
                <%--navbar links--%>
                <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
                    <ul class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white">
                        <li>
                            <a href="adminDashboard.jsp" class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0" aria-current="page">Home</a>
                        </li>
                        <li>
                            <a href="adminDashboard.jsp" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 ">Vegetables</a>
                        </li>
                        <li>
                            <a href="adminDashboard.jsp" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Fruits</a>
                        </li>
                        <li>
                            <a href="adminDashboard.jsp" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0">Shop</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%--Navbar code ends here--%>
    </div>








    <div>
        <div class="swiper-container ">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="imagess/Frame%2012.1.png" alt="slider 1">
                </div>
                <div class="swiper-slide">
                    <img src="imagess/Frame%2012.3.png" alt="slider 2">
                </div>
                <!-- Add more slides as needed -->
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
            <!-- Add Navigation -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        <script>
            var swiper = new Swiper('.swiper-container', {
                slidesPerView: 1,
                spaceBetween: 10,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                // Enable auto sliding
                autoplay: {
                    delay: 6000, // Set the delay in milliseconds between slides
                    disableOnInteraction: false, // Allow manual interaction to stop autoplay
                },
            });
        </script>
    </div>
    <div>
        <div>
            <div class="TopProducts absolute left-[760px] top-[1000px] w-96 h-12 text-center text-black text-4xl font-semi-bold font-['Inter']">Top Products</div>
            <div>
                <div class="Line1 absolute left-[760px] top-[1060px] w-96 h-px border border-black"></div>
                <br><br><br><br><br><br><br><br><br><br><br>
                <div>
                    <h1 class="text-4xl text-center">cards</h1> <%--add cards--%>
                </div>
                <br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </div>

        <div>
            <div class="GreenArea absolute w-[1920px] h-[300px] px-28 bg-emerald-900 items-start gap-32 ">
                <div class="relative">
                    <img class="DeliverFood w-[70px] h-[70px] absolute left-[190px] top-[60px]" src="imagess/Deliver%20Food.png" />
                    <div class="OnTimeDelivery absolute left-[130px] top-[150px] text-white text-2xl font-bold font-['Lato']">On Time Delivery</div>
                    <div class="TextArea1 absolute left-[20px] top-[190px] text-white text-2xl font-semi-bold font-['Lato']">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="relative">
                    <img class="Trust w-[70px] h-[70px] absolute left-[808px] top-[60px]" src="imagess/Trust.png" />
                    <div class="HealthyAndQuality absolute left-[748px] top-[150px] text-white text-2xl font-bold font-['Lato']">Healthy and Quality</div>
                    <div class="TextArea2 absolute left-[645px] top-[190px] text-white text-2xl font-semi-bold font-['Lato']">Lorem ipsum dolor sit amet consectetur.</div>
                </div>

                <div class="relative">
                    <img class="Discount w-[70px] h-[70px] absolute left-[1418px] top-[60px]" src="imagess/Discount.png" />
                    <div class="LowPriceAndDiscount absolute left-[1328px] top-[150px] text-white text-2xl font-bold font-['Lato']">Low Price and Discount</div>
                    <div class="TextArea3 absolute left-[1245px] top-[190px] text-white text-2xl font-semi-bold font-['Lato']">Lorem ipsum dolor sit amet consectetur.</div>
                </div>
            </div>
        </div>

        <div>
            <div class="vegetables absolute left-[760px] top-[2000px] w-96 h-12 text-center text-black text-4xl font-semi-bold font-['Inter']">Vegetables</div>
            <div>
                <div class="Line2 absolute left-[760px] top-[2060px] w-96 h-px border border-black"></div>
                <br><br><br><br><br><br><br><br><br><br><br>
                <div>
                    <h1 class=" absolute top-[2300px] left-[900px] text-4xl text-center">cards</h1> <%--add cards--%>
                </div>
                <br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </div>


        <div class="relative ">
            <div class="absolute left-[120px]  top-[400px] ">
                <button>
                    <img src="imagess/Vegetable%20title.png" alt="Vegetable Title">
                </button>
            </div>
            <div class="absolute left-[950px] top-[449px]">
                <button>
                    <img src="imagess/Fruit%20title.png" alt="Fruit Title">
                </button>
            </div>

        </div>

        <div>
            <div class="fruits absolute left-[760px] top-[3000px] w-96 h-12 text-center text-black text-4xl font-semi-bold font-['Inter']">Fruits</div>
            <div>
                <div class="Line3 absolute left-[760px] top-[3060px] w-96 h-px border border-black"></div>
                <br><br><br><br><br><br><br><br><br><br><br>
                <div>
                    <h1 class=" absolute top-[3300px] left-[900px] text-4xl text-center">cards</h1> <%--add cards--%>
                </div>
                <br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </div>


        <div class="absolute top-[3500px] w-[1920px]">
            <footer class="bg-white bg-emerald-900">
                <div class="mx-auto w-full max-w-screen-xl p-4 py-6 lg:py-8">
                    <div class="md:flex md:justify-between">
                        <div class="mb-6 md:mb-0">
                            <a href="#" class="flex items-center">
                                <img src="imagess/LightLogo.png" class="h-[60px] w-[180px] me-3" alt="Green Logo" />
                                <%--<span class="self-center text-2xl font-semi-bold whitespace-nowrap dark:text-white">Green Supermarket</span>--%>
                            </a>
                        </div>
                        <div class="grid grid-cols-2 gap-8 sm:gap-6 sm:grid-cols-3">
                            <div>
                                <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">MY ACCOUNT</h2>
                                <ul class="text-gray-500 dark:text-gray-400 font-medium">
                                    <li class="mb-4">
                                        <a href="#" class="hover:underline">Account Details</a>
                                    </li>
                                    <li class="mb-4">
                                        <a href="#" class="hover:underline">Wishlist</a>
                                    </li>
                                    <li class="mb-4">
                                        <a href="#" class="hover:underline">My Cart</a>
                                    </li>
                                    <li>
                                        <a href="#" class="hover:underline">My Orders</a>
                                    </li>
                                </ul>
                            </div>
                            <div>
                                <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">Follow us</h2>
                                <ul class="text-gray-500 dark:text-gray-400 font-medium">
                                    <li class="mb-4">
                                        <a href="#" class="hover:underline ">Facebook</a>
                                    </li>
                                    <li class="mb-4">
                                        <a href="#" class="hover:underline ">X</a>
                                    </li>
                                    <li class="mb-4">
                                        <a href="#" class="hover:underline ">Instagram</a>
                                    </li>
                                    <li>
                                        <a href="#" class="hover:underline">Linkdin</a>
                                    </li>
                                </ul>
                            </div>
                            <div>
                                <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">Legal</h2>
                                <ul class="text-gray-500 dark:text-gray-400 font-medium">
                                    <li class="mb-4">
                                        <a href="#" class="hover:underline">Privacy Policy</a>
                                    </li>
                                    <li>
                                        <a href="#" class="hover:underline">Terms &amp; Conditions</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr class="my-6 border-gray-200 sm:mx-auto dark:border-white-700 lg:my-8" />
                    <div class="sm:flex sm:items-center sm:justify-between">


                        <span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">© 2023 <a href="https://flowbite.com/" class="hover:underline">Green Supermarket</a>. All Rights Reserved.
                        </span>
                        <div class="flex mt-4 sm:justify-center sm:mt-0">
                            <a href="#" class="text-gray-500 hover:text-gray-900 dark:hover:text-white">
                                <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 8 19">
                                    <path fill-rule="evenodd" d="M6.135 3H8V0H6.135a4.147 4.147 0 0 0-4.142 4.142V6H0v3h2v9.938h3V9h2.021l.592-3H5V3.591A.6.6 0 0 1 5.592 3h.543Z" clip-rule="evenodd"/>
                                </svg>
                                <span class="sr-only">Facebook page</span>
                            </a>
                            <a href="#" class="text-gray-500 hover:text-gray-900 dark:hover:text-white ms-5">
                                <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 21 16">
                                    <path d="M16.942 1.556a16.3 16.3 0 0 0-4.126-1.3 12.04 12.04 0 0 0-.529 1.1 15.175 15.175 0 0 0-4.573 0 11.585 11.585 0 0 0-.535-1.1 16.274 16.274 0 0 0-4.129 1.3A17.392 17.392 0 0 0 .182 13.218a15.785 15.785 0 0 0 4.963 2.521c.41-.564.773-1.16 1.084-1.785a10.63 10.63 0 0 1-1.706-.83c.143-.106.283-.217.418-.33a11.664 11.664 0 0 0 10.118 0c.137.113.277.224.418.33-.544.328-1.116.606-1.71.832a12.52 12.52 0 0 0 1.084 1.785 16.46 16.46 0 0 0 5.064-2.595 17.286 17.286 0 0 0-2.973-11.59ZM6.678 10.813a1.941 1.941 0 0 1-1.8-2.045 1.93 1.93 0 0 1 1.8-2.047 1.919 1.919 0 0 1 1.8 2.047 1.93 1.93 0 0 1-1.8 2.045Zm6.644 0a1.94 1.94 0 0 1-1.8-2.045 1.93 1.93 0 0 1 1.8-2.047 1.918 1.918 0 0 1 1.8 2.047 1.93 1.93 0 0 1-1.8 2.045Z"/>
                                </svg>
                                <span class="sr-only">Discord community</span>
                            </a>
                            <a href="#" class="text-gray-500 hover:text-gray-900 dark:hover:text-white ms-5">
                                <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 17">
                                    <path fill-rule="evenodd" d="M20 1.892a8.178 8.178 0 0 1-2.355.635 4.074 4.074 0 0 0 1.8-2.235 8.344 8.344 0 0 1-2.605.98A4.13 4.13 0 0 0 13.85 0a4.068 4.068 0 0 0-4.1 4.038 4 4 0 0 0 .105.919A11.705 11.705 0 0 1 1.4.734a4.006 4.006 0 0 0 1.268 5.392 4.165 4.165 0 0 1-1.859-.5v.05A4.057 4.057 0 0 0 4.1 9.635a4.19 4.19 0 0 1-1.856.07 4.108 4.108 0 0 0 3.831 2.807A8.36 8.36 0 0 1 0 14.184 11.732 11.732 0 0 0 6.291 16 11.502 11.502 0 0 0 17.964 4.5c0-.177 0-.35-.012-.523A8.143 8.143 0 0 0 20 1.892Z" clip-rule="evenodd"/>
                                </svg>
                                <span class="sr-only">Twitter page</span>
                            </a>
                            <a href="#" class="text-gray-500 hover:text-gray-900 dark:hover:text-white ms-5">
                                <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 .333A9.911 9.911 0 0 0 6.866 19.65c.5.092.678-.215.678-.477 0-.237-.01-1.017-.014-1.845-2.757.6-3.338-1.169-3.338-1.169a2.627 2.627 0 0 0-1.1-1.451c-.9-.615.07-.6.07-.6a2.084 2.084 0 0 1 1.518 1.021 2.11 2.11 0 0 0 2.884.823c.044-.503.268-.973.63-1.325-2.2-.25-4.516-1.1-4.516-4.9A3.832 3.832 0 0 1 4.7 7.068a3.56 3.56 0 0 1 .095-2.623s.832-.266 2.726 1.016a9.409 9.409 0 0 1 4.962 0c1.89-1.282 2.717-1.016 2.717-1.016.366.83.402 1.768.1 2.623a3.827 3.827 0 0 1 1.02 2.659c0 3.807-2.319 4.644-4.525 4.889a2.366 2.366 0 0 1 .673 1.834c0 1.326-.012 2.394-.012 2.72 0 .263.18.572.681.475A9.911 9.911 0 0 0 10 .333Z" clip-rule="evenodd"/></svg>
                                <span class="sr-only">GitHub account</span>
                            </a>
                            <a href="#" class="text-gray-500 hover:text-gray-900 dark:hover:text-white ms-5">
                                <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 0a10 10 0 1 0 10 10A10.009 10.009 0 0 0 10 0Zm6.613 4.614a8.523 8.523 0 0 1 1.93 5.32 20.094 20.094 0 0 0-5.949-.274c-.059-.149-.122-.292-.184-.441a23.879 23.879 0 0 0-.566-1.239 11.41 11.41 0 0 0 4.769-3.366ZM8 1.707a8.821 8.821 0 0 1 2-.238 8.5 8.5 0 0 1 5.664 2.152 9.608 9.608 0 0 1-4.476 3.087A45.758 45.758 0 0 0 8 1.707ZM1.642 8.262a8.57 8.57 0 0 1 4.73-5.981A53.998 53.998 0 0 1 9.54 7.222a32.078 32.078 0 0 1-7.9 1.04h.002Zm2.01 7.46a8.51 8.51 0 0 1-2.2-5.707v-.262a31.64 31.64 0 0 0 8.777-1.219c.243.477.477.964.692 1.449-.114.032-.227.067-.336.1a13.569 13.569 0 0 0-6.942 5.636l.009.003ZM10 18.556a8.508 8.508 0 0 1-5.243-1.8 11.717 11.717 0 0 1 6.7-5.332.509.509 0 0 1 .055-.02 35.65 35.65 0 0 1 1.819 6.476 8.476 8.476 0 0 1-3.331.676Zm4.772-1.462A37.232 37.232 0 0 0 13.113 11a12.513 12.513 0 0 1 5.321.364 8.56 8.56 0 0 1-3.66 5.73h-.002Z" clip-rule="evenodd"/>
                                </svg>
                                <span class="sr-only">Dribbble account</span>
                            </a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>
</body>
</html>
