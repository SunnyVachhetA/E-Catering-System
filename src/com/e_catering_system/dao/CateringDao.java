package com.e_catering_system.dao;

import java.sql.Connection;
import java.util.List;

import com.e_catering_system.bean.Decoration;
import com.e_catering_system.bean.Event;
import com.e_catering_system.bean.Food_items;
import com.e_catering_system.bean.List_of_food_items;
import com.e_catering_system.bean.PackageCust;
import com.e_catering_system.bean.User;
public interface CateringDao {

	int saveUserDetailsData(User obj, Connection con);

	int getMailDetails(String email, Connection con);

	User checkLoginStatus(User obj2, Connection con);


	User getUserDetailsUsingEmail(String email, Connection con);

	User setUpassword(User obj, String password, Connection con);

	int saveProductDetails(Connection con,Food_items obj);

	List<User> fetchUserListDao(Connection con);

	int fetchCategoryId(Connection con, String getCategory);

	//List<Food_items> fetchProductListDao(Connection con);

	List<Food_items> fetchProductListDao(Connection con);

	Food_items getProductDetailsId(Connection con, int pid);

	int deleteProduct(Connection con, int product_id);

	int updateProduct(Connection con, Food_items obj);

	List<String> getCategoryList(Connection con);

	int savePackageInfo(PackageCust obj, Connection con);

	int getPackageId(PackageCust obj, Connection con);

	int setPackageData(List_of_food_items obj, Connection con);

	int saveDecoDetails(Connection con, Decoration obj);

	List<Decoration> fetchDecoList(Connection con);

	List_of_food_items getPackageInfo(int pid, Connection con);

	List<Event> fetchEventListDao(Connection con);

}
