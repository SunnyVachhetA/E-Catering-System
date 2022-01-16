package com.e_catering_system.services;
import java.util.ArrayList;

import com.e_catering_system.bean.Decoration;
import com.e_catering_system.bean.Event;
import com.e_catering_system.bean.Food_items;
import com.e_catering_system.bean.List_of_food_items;
import com.e_catering_system.bean.PackageCust;
import com.e_catering_system.bean.User;
import java.util.List;
public interface CateringServices {

	int saveUserDetails(User obj);

	public int checkMailStatus(String email);

	User checkLoginDetails(User obj2);

	User getUserData(String email);

	User setUserNewPassword(User obj, String password);

	int saveProductDetails(Food_items obj);

	List<User> fetchUserList();

	int getCategoryId(String getCategory);

	List<Food_items> fetchProductList();


	Food_items getProductDetails(int pid);

	int deleteProductDetails(int product_id);

	int updateProductDetails(Food_items obj);

	List<String> getCategoryList();

	int savePackageInfo(PackageCust obj);

	int getPackId(PackageCust obj);

	int setPackageData(List_of_food_items obj);

	int saveDecorationDetails(Decoration obj);

	List<Decoration> getDecoList();

	List_of_food_items getPackageInfo(int pid);

	List<Event> fetchEventList();


	//List<com.e_catering_system.servlet.User> fetchUserList();

}
