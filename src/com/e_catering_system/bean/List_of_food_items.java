package com.e_catering_system.bean;
import java.util.ArrayList;
import java.util.List;
public class List_of_food_items extends PackageDetails{
	private int list_of_food_item_id;
	private int food_item_id;
	private int food_quantity;
	private int food_item_price;
	public int getList_of_food_item_id() {
		return list_of_food_item_id;
	}
	public void setList_of_food_item_id(int list_of_food_item_id) {
		this.list_of_food_item_id = list_of_food_item_id;
	}
	public int getFood_item_id() {
		return food_item_id;
	}
	public void setFood_item_id(int food_item_id) {
		this.food_item_id = food_item_id;
	}
	public int getFood_quantity() {
		return food_quantity;
	}
	public void setFood_quantity(int food_quantity) {
		this.food_quantity = food_quantity;
	}
	public int getFood_item_price() {
		return food_item_price;
	}
	public void setFood_item_price(int food_item_price) {
		this.food_item_price = food_item_price;
	}
}
