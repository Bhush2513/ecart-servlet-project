package com.project.dto;

public class ProductDTO {

    private int id;
    private String name;
    private double price;
    private String description;
    private String image;

    // Default Constructor
    public ProductDTO() {
    }

    // Parameterized Constructor
    public ProductDTO(int id, String name, double price, String description, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.image = image;
    }

    // Getter and Setter Methods

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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    // toString() Method
    @Override
    public String toString() {
        return "ProductDTO [id=" + id + ", name=" + name + ", price=" + price
                + ", description=" + description + ", image=" + image + "]";
    }
}