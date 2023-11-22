package com.example.webproject;

public class product {
    private int id;
    private String name;
    private double price;
    private String description;
    private String category;
    private String image;

    // Default constructor for JACKSON to receive JSON data (JSON to JAVA OBJECT)
    public product() {
    }

    // parameterized Constructor (JAVA OBJECT TO JSON)
    public product(int id, String name, double price, String description, String category, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.category = category;
        this.image = image;
    }

    //getters and setters for each variable
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
