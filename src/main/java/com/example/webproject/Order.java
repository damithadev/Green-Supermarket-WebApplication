package com.example.webproject;

import java.util.List;

public class Order {

    //A list of details in a single order. Eg: [apple,2,orange,5]
    //A list of oder items.
    private List<OrderItem> orderDetails;

    //A 1 item in the single order. Eg: name=apple, quantity=2
    public static class OrderItem {
        private int productId;
        private int quantity;

        // Add getters and setters for productId and quantity
        public int getProductId() {
            return productId;
        }

        public void setProductId(int productId) {
            this.productId = productId;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }
    }

    // Add getters and setters for orderDetails
    public List<OrderItem> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderItem> orderDetails) {
        this.orderDetails = orderDetails;
    }
}