package com.e_catering_system.bean;

import java.io.InputStream;

public class Food_items extends Food_Items_Type{
	private int food_item_id;
	private String food_item_name;
	private String description;
	private int food_item_price;
	private int food_item_type_id;
	private String foodType;
	private int food_qty;
	private InputStream foodItemImage;
	public InputStream getFoodItemImage() {
		return foodItemImage;
	}
	public void setFoodItemImage(InputStream foodItemImage) {
		this.foodItemImage = foodItemImage;
	}
	public String getFoodItemImageString() {
		return foodItemImageString;
	}
	public void setFoodItemImageString(String foodItemImageString) {
		this.foodItemImageString = foodItemImageString;
	}
	private String foodItemImageString;
	public int getFood_item_id() {
		return food_item_id;
	}
	public void setFood_item_id(int food_item_id) {
		this.food_item_id = food_item_id;
	}
	public String getFood_item_name() {
		return food_item_name;
	}
	public void setFood_item_name(String food_item_name) {
		this.food_item_name = food_item_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getFood_item_price() {
		return food_item_price;
	}
	public void setFood_item_price(int food_item_price) {
		this.food_item_price = food_item_price;
	}
	public int getFood_item_type_id() {
		return food_item_type_id;
	}
	public void setFood_item_type_id(int food_item_type_id) {
		this.food_item_type_id = food_item_type_id;
	}
	public String getFoodType() {
		return foodType;
	}
	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}
	public int getFood_qty() {
		return food_qty;
	}
	public void setFood_qty(int food_qty) {
		this.food_qty = food_qty;
	}
}
