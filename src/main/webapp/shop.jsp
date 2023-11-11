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
</head>
<body>
<script>
    // Fetch data from the servlet
    fetch('/retrieveProducts')
        .then(response => response.json())
        .then(data => {
            // Handle the data here
            //console.log(data);

            // You can loop through the products and do something with each
            data.forEach(product => {
                console.log(product.id, product.name, product.price, product.description);
                // Perform actions with the product data
            });
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });

</script>
</body>
</html>
