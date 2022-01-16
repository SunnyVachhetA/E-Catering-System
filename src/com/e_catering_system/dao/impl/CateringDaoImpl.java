package com.e_catering_system.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.e_catering_system.bean.Decoration;
import com.e_catering_system.bean.Encryption;
import com.e_catering_system.bean.Event;
import com.e_catering_system.bean.Food_items;
import com.e_catering_system.bean.List_of_food_items;
import com.e_catering_system.bean.PackageCust;
import com.e_catering_system.bean.User;
import com.e_catering_system.dao.CateringDao;
import java.util.List;
import java.util.ArrayList;
import java.util.Base64;

public class CateringDaoImpl implements CateringDao {

	@Override
	public int saveUserDetailsData(User obj, Connection con) {
		// TODO Auto-generated method stub
		int ans = 0;

		String insertQuery = "insert into user_table(user_name, user_contact, user_email, user_password, user_role) values (?,?,?,?,?)";
		try (PreparedStatement pst = con.prepareStatement(insertQuery)) {
			// pst.setInt(1, 3);
			pst.setString(1, obj.getUser_name());

			System.out.println(obj.getUser_name());
			pst.setString(2, obj.getUser_contact());
			pst.setString(3, obj.getUser_email());

			Encryption e1 = new Encryption();
			String enc = e1.encyptText(obj.getUser_password());
			pst.setString(4, enc);
			pst.setInt(5, 0);
			ans = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("\n\nData Saved Unsucess!\n");
		}
		return ans;
	}

	@Override
	public int getMailDetails(String email, Connection con) {
		// TODO Auto-generated method stub
		int ans = 1;
		try {
			try (PreparedStatement ps = con.prepareStatement("select * from user_table");
					ResultSet resultset = ps.executeQuery()) {
				while (resultset.next()) {
					if (email.equalsIgnoreCase(resultset.getString("user_email"))) {
						ans = 0;
						break;
					}
				}

			}

			return ans;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ans;
	}

	@Override
	public User checkLoginStatus(User obj2, Connection con) {
		// TODO Auto-generated method stub
		// User ans2 = new User();
		User ans = new User();
		int flag = 0;
		try {
			String email = obj2.getUser_email();
			String password = obj2.getUser_password();

			System.out.println("\n" + password);
			try (PreparedStatement ps = con.prepareStatement("select * from user_table");
					ResultSet resultset = ps.executeQuery()) {
				while (resultset.next()) {
					Encryption e1 = new Encryption();
					String dec = e1.decryptText(resultset.getString("user_password"));
					if (email.equalsIgnoreCase(resultset.getString("user_email")) && password.equals(dec)) {

						System.out.println(resultset.getInt(1) + " \t " + resultset.getString("user_email"));
						ans.setUser_id(resultset.getInt(1));
						ans.setUser_name(resultset.getString("user_name"));
						ans.setUser_email(resultset.getString("user_email"));

						ans.setUser_password(dec);
						ans.setUser_contact(resultset.getString("user_contact"));
						ans.setUser_role(resultset.getInt("user_role"));
						flag = 1;
						break;
					}
				}

			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		if (flag == 0)
			ans = null;
		System.out.println("Answer : " + ans);
		return ans;
	}

	public User getUserDetailsUsingEmail(String email, Connection con) {
		// TODO Auto-generated method stub
		User ans = new User();
		int flag = 0;
		PreparedStatement ps = null;
		ResultSet resultset = null;
		System.out.println("Email: " + email);
		String gquery = "select * from user_table where user_email = ?;";
		try {
			ps = con.prepareStatement(gquery);
			ps.setString(1, email);
			resultset = ps.executeQuery();
			while (resultset.next()) {
				System.out.println(resultset.getInt(1) + " \t " + resultset.getString("user_email"));
				ans.setUser_id(resultset.getInt(1));
				ans.setUser_name(resultset.getString("user_name"));
				ans.setUser_email(resultset.getString("user_email"));
				Encryption e1 = new Encryption();
				String dec = e1.decryptText(resultset.getString("user_password"));
				ans.setUser_password(dec);
				ans.setUser_contact(resultset.getString("user_contact"));
				ans.setUser_role(resultset.getInt("user_role"));
				System.out.println("\nUser Data: " + resultset.getString("user_name"));
				flag = 1;
				break;
			}
		} catch (Exception e) {
			System.out.println("\nGetting User Data Exception : " + e.getMessage());
		}
		System.out.println("\nGetting Email Data: " + ans);
		if (flag == 0)
			return null;
		return ans;
	}

	@Override
	public User setUpassword(User obj, String password, Connection con) {
		// TODO Auto-generated method stub
		User ans = new User();
		// int flag = 0;
		PreparedStatement ps = null;
		ans.setUser_contact(obj.getUser_contact());
		ans.setUser_email(obj.getUser_email());
		ans.setUser_name(obj.getUser_name());
		ans.setUser_id(obj.getUser_id());
		ans.setUser_role(obj.getUser_role());
		int userID = obj.getUser_id();
		String gquery = "update user_table set user_password = ? where user_id = ?";
		try {
			ps = con.prepareStatement(gquery);
			Encryption e1 = new Encryption();
			String dec = e1.decryptText(password);
			ps.setString(1, dec);
			ps.setInt(2, userID);
			int resultValue = ps.executeUpdate();
			if (resultValue == 0) {
				return null;
			} else {
				ans.setUser_password(password);
				return ans;
			}
		} catch (Exception e) {
			System.out.println("\nGetting User Data Exception : " + e.getMessage());
		}
		return ans;
	}

	@Override
	public int saveProductDetails(Connection con, Food_items obj) {
		// TODO Auto-generated method stub
		String query = "insert into food_items(food_item_name, food_item_price, food_item_image, description, food_item_type_id, food_item_cat, food_qty) values (?, ?, ?, ?, ?, ?, ?)";

		try (PreparedStatement pst = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
			pst.setString(1, obj.getFood_item_name());
			pst.setInt(2, obj.getFood_item_price());
			pst.setBlob(3, obj.getFoodItemImage());
			pst.setString(4, obj.getDescription());
			pst.setInt(5, obj.getFood_item_type_id());
			pst.setString(6, obj.getFoodType());
			pst.setInt(7, obj.getFood_qty());
			int x = pst.executeUpdate();

			return x;
		} catch (Exception e) {
			System.out.println("\nFood ITem Upload Exception: " + e.getMessage());
		}
		return 0;
	}

	@Override
	public List<User> fetchUserListDao(Connection con) {
		// TODO Auto-generated method stub
		List<User> list_of_user = new ArrayList<User>();
		try (PreparedStatement ps = con.prepareStatement("select * from user_table");
				ResultSet resultset = ps.executeQuery()) {
			while (resultset.next()) {
				User ans = new User();
				System.out.println(resultset.getInt(1) + " \t " + resultset.getString("user_email"));
				if (resultset.getInt("user_role") == 1)
					continue;
				ans.setUser_id(resultset.getInt(1));
				ans.setUser_name(resultset.getString("user_name"));
				ans.setUser_email(resultset.getString("user_email"));
				Encryption e1 = new Encryption();
				String dec = e1.decryptText(resultset.getString("user_password"));
				ans.setUser_password(dec);
				ans.setUser_contact(resultset.getString("user_contact"));
				ans.setUser_role(resultset.getInt("user_role"));
				list_of_user.add(ans);
			}
		} catch (Exception e) {
			System.out.println("\nDao USer List: " + e.getMessage());
		}
		for (User x : list_of_user) {
			System.out.println("\nNameDao: " + x.getUser_name());
		}
		return list_of_user;
	}

	@Override
	public int fetchCategoryId(Connection con, String getCategory) {
		// TODO Auto-generated method stub
		int flag = 0;
		PreparedStatement ps = null;
		ResultSet resultset = null;
		String gquery = "select * from food_item_type where food_item_type_name = ?";
		try {
			ps = con.prepareStatement(gquery);
			ps.setString(1, getCategory);
			resultset = ps.executeQuery();
			while (resultset.next()) {
				flag = resultset.getInt(1);
				return flag;
			}
		} catch (Exception e) {
			System.out.println("\nException Category Id: " + e.getMessage());
		} finally {
			try {
				ps.close();
				resultset.close();
			} catch (Exception e) {
				System.out.println("Exception Final Category: " + e.getMessage());
			}
		}
		return 0;
	}

	public List<Food_items> fetchProductListDao(Connection con) {
		// TODO Auto-generated method stub
		List<Food_items> list_of_product = new ArrayList<Food_items>();
		try (PreparedStatement ps = con.prepareStatement("select * from food_items");
				ResultSet resultset = ps.executeQuery()) {
			while (resultset.next()) {
				Food_items ans = new Food_items();
				ans.setFood_item_id(resultset.getInt(1));
				ans.setFood_item_name(resultset.getString(3));
				ans.setFood_items_type_id(resultset.getInt(2));
				try {
					PreparedStatement ps2 = null;
					ResultSet rs2 = null;
					String query = "select food_item_type_name from food_item_type where food_item_type_id = ?";
					ps2 = con.prepareStatement(query);
					ps2.setInt(1, ans.getFood_items_type_id());
					rs2 = ps2.executeQuery();
					while (rs2.next()) {
						ans.setFood_items_type_name(rs2.getString("food_item_type_name"));
						// System.out.println("\nCategory Name Dao: " + ans.getFood_items_type_name() +
						// "\t Name: " + ans.getFood_item_name());
					}
					ps2.close();
				} catch (Exception e) {
					System.out.println("\nException during category name: " + e.getMessage());
				}
				ans.setFood_qty(resultset.getInt("food_qty"));
				ans.setFood_item_price(resultset.getInt(5));
				ans.setDescription(resultset.getString(4));
				ans.setFoodType(resultset.getString("food_item_cat"));
				byte[] imageData = resultset.getBytes(6);
				if (null != imageData && imageData.length > 0) {
					String imageString = Base64.getEncoder().encodeToString(imageData);
					ans.setFoodItemImageString(imageString);
				}
				list_of_product.add(ans);
			}
		} catch (Exception e) {
			System.out.println("\nDao USer List: " + e.getMessage());
		}
		return list_of_product;

	}

	@Override
	public Food_items getProductDetailsId(Connection con, int pid) {
		// TODO Auto-generated method stub
		Food_items ans = new Food_items();
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("select * from food_items where food_item_id = ?");
			ps.setInt(1, pid);
		} catch (Exception e) {
		}
		try (ResultSet resultset = ps.executeQuery()) {
			while (resultset.next()) {
				String catName = new String();
				ans.setFood_item_id(resultset.getInt(1));
				ans.setFood_item_name(resultset.getString(3));
				ans.setFood_item_price(resultset.getInt(5));
				ans.setFood_items_type_id(resultset.getInt(2));
				ans.setFoodType(resultset.getString("food_item_cat"));
				try(PreparedStatement pst = con.prepareStatement("select food_item_type_name from food_item_type where food_item_type_id = ?"))
				{
					pst.setInt(1, ans.getFood_items_type_id());
					ResultSet rst = pst.executeQuery();
					while(rst.next())
					{
						catName = rst.getString("food_item_type_name");
					}
				}catch(Exception e) {System.out.println("Exception during category name: " + e.getMessage());}
				ans.setFood_items_type_name(catName);
				ans.setFood_qty(resultset.getInt("food_qty"));
				ans.setDescription(resultset.getString(4));
			
				byte[] imageData = resultset.getBytes(6);
				if (null != imageData && imageData.length > 0) {
					String imageString = Base64.getEncoder().encodeToString(imageData);
					ans.setFoodItemImageString(imageString);
				}
			}
		} catch (Exception e) {
			System.out.println("\nDao Product: " + e.getMessage());
		}

		return ans;
	}

	public int deleteProduct(Connection con, int product_id) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
		String query = "delete from food_items where food_item_id = ?";
		try {
			pst = con.prepareStatement(query);
			pst.setInt(1, product_id);
			int ans = pst.executeUpdate();
			return ans;
		} catch (Exception e) {
			System.out.println("Exception Occured Delete Product : " + e.getMessage());
		}
		return 0;
	}

	@Override
	public int updateProduct(Connection con, Food_items obj) {
		// TODO Auto-generated method stub
		System.out.println("\nDao Layer Hello!");
		PreparedStatement pst = null;
		String query = "update food_items set food_item_name = ?, food_item_type_id = ?, food_item_price = ?, description = ?, food_item_image = COALESCE(?,food_item_image), food_item_cat = ?, food_qty = ? where food_item_id = ?";
		try {
			pst = con.prepareStatement(query);
			pst.setString(1, obj.getFood_item_name());
			pst.setInt(2, obj.getFood_items_type_id());
			pst.setInt(3, obj.getFood_item_price());
			pst.setString(4, obj.getDescription());
			// if(obj.getFoodItemImage() != null)
			pst.setBlob(5, obj.getFoodItemImage());
			pst.setString(6, obj.getFoodType());
			pst.setInt(7, obj.getFood_qty());
			pst.setInt(8, obj.getFood_item_id());
			// System.out.println("\nFood Item ID: " + obj.getFood_item_id());
		
			int ans = pst.executeUpdate();
			System.out.println("Answer: " + ans);
			return ans;
		} catch (Exception e) {
			System.out.println("Update Product Exp: " + e.getMessage());
		}
		return 0;
	}

	@Override
	public List<String> getCategoryList(Connection con) {
		// TODO Auto-generated method stub
		List<String> ans = new ArrayList<String>();
		try (PreparedStatement ps = con.prepareStatement("select * from food_item_type");
				ResultSet resultset = ps.executeQuery()) {
			while (resultset.next()) {
				String categoryName = new String();
				categoryName = resultset.getString(2);
				ans.add(categoryName.toLowerCase());
			}
		} catch (Exception e) {
			System.out.println("\nException during getting Category List: " + e.getMessage());
		}
		return ans;
	}

	@Override
	public int savePackageInfo(PackageCust obj, Connection con) {
		// TODO Auto-generated method stub
		int ans = 0;
		int flag = 0;
		int event_id = 0;
		String query = "insert into package_table(package_name, package_description, package_type, event_id) values (?, ?, ?, ?)";
		try (PreparedStatement pst = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
			pst.setString(1, obj.getPackage_name());
			pst.setString(2, obj.getPackage_description());
			pst.setString(3, obj.getPackage_type());
			
			try(PreparedStatement pst2 = con.prepareStatement("select event_id from event_table where event_name = ?"))
			{
					pst2.setString(1, obj.getEvent_name().toLowerCase());
					ResultSet rst2 = pst2.executeQuery();
					while(rst2.next())
					{
						event_id = rst2.getInt(1);
						break;
					}
			}
			catch(Exception e) {System.out.println("Exception during event_id: " + e.getMessage());}
			pst.setInt(4, event_id);
			ans = pst.executeUpdate();
			//System.out.println("\nReturn GEn Key: " + Statement.RETURN_GENERATED_KEYS);
			return ans;
		} catch (Exception e) {
			System.out.println("\nException Dao Save PAckage: " + e.getMessage());
		}
		return 0;
	}

	public int getPackageId(PackageCust obj, Connection con) {
		// TODO Auto-generated method stub
			try (PreparedStatement pst = con.prepareStatement("select package_id from package_table where package_name = ? AND package_type = ? AND event_id = ?")) {
			pst.setString(1, obj.getPackage_name());
			pst.setString(2, obj.getPackage_type().toLowerCase());
			int event_id = 0;
			try(PreparedStatement pst2 = con.prepareStatement("select event_id from event_table where event_name = ?"))
			{
					pst2.setString(1, obj.getEvent_name().toLowerCase());
					ResultSet rst2 = pst2.executeQuery();
					while(rst2.next())
					{
						event_id = rst2.getInt(1);
						break;
					}
			}
			catch(Exception e) {System.out.println("\nException Occured get package id: " + e.getMessage());}
			pst.setInt(3, event_id);
			ResultSet rst = pst.executeQuery();
			while (rst.next()) {
				int ans = rst.getInt(1);
				System.out.println("Dao PAckage ID: " + ans);
				return ans;
			}
		} catch (Exception e) {
			System.out.println("Exception Getting Package ID: " + e.getMessage());
		}
		return 0;
	}

	public static int getPackageDetailsId(int package_id, Connection con) {
		int ans = 0;
		String query = "select package_details_id from package_details_table where package_id = ?";
		try (PreparedStatement pst = con.prepareStatement(query)) {
			pst.setInt(1, package_id);
			ResultSet rst = pst.executeQuery();
			while (rst.next()) {
				ans = rst.getInt(1);
			}
		} catch (Exception e) {
			System.out.print("\nException During PAckage Details ID: " + e.getMessage());
		}
		System.out.println("\nPackage Details ID: " + ans);
		return ans;
	}

	public static int setPackageDetailsId(List_of_food_items obj, int packdetails_id, Connection con) {
		int ans = 0;
		String query = "update package_table set pack_details_id = ? where package_id = ?";
		try (PreparedStatement pst = con.prepareStatement(query)) {
			pst.setInt(1, obj.getPackage_id());
			ans = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("\nExp. During Set Package Details Id: " + e.getMessage());
		}
		return ans;
	}

	@Override
	public int setPackageData(List_of_food_items obj, Connection con) {
		// TODO Auto-generated method stub
		int ans = 0;
		String query = "insert into package_details_table(package_id) values (?)";
		try (PreparedStatement pst = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
			pst.setInt(1, obj.getPackage_id());
			ans = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error During Set PAckage: " + e.getMessage());
		}
		if (ans != 0) {
			int getPackageDetailsId = getPackageDetailsId(obj.getPackage_id(), con);
			obj.setPack_details_id(getPackageDetailsId);
			int condition = setPackageDetailsId(obj, getPackageDetailsId, con);
			if (condition != 0) {
				query = "insert into list_of_food_item(package_details_id, food_item_id) values (?, ?)";
				try (PreparedStatement pst = con.prepareStatement(query)) {

				} catch (Exception e) {
					System.out.println("\nException during ");
				}
			}
		}
		return ans;
	}

	@Override
	public int saveDecoDetails(Connection con, Decoration obj) {
		// TODO Auto-generated method stub
		String query = "insert into decoration_table(deco_description, deco_image, deco_price, deco_name) values (?, ?, ?, ?)";

		try (PreparedStatement pst = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
			pst.setString(1, obj.getDeco_description());
			pst.setInt(3, obj.getDeco_price());
			pst.setBlob(2, obj.getDeco_imageStream());
			pst.setString(4, obj.getDeco_name());
			int x = pst.executeUpdate();

			return x;
		} catch (Exception e) {
			System.out.println("\nDeco Upload Exception: " + e.getMessage());
		}

		return 0;
	}

	@Override
	public List<Decoration> fetchDecoList(Connection con) {
		// TODO Auto-generated method stub
		List<Decoration> decoList = new ArrayList<Decoration>();
		try (PreparedStatement ps = con.prepareStatement("select * from decoration_table");
				ResultSet resultset = ps.executeQuery()) {
			while (resultset.next()) {
				Decoration ans = new Decoration();
				ans.setDeco_id(resultset.getInt(1));
				ans.setDeco_name(resultset.getString(5));
				ans.setDeco_price(resultset.getInt(4));
			
				ans.setDeco_description(resultset.getString(2));
				byte[] imageData = resultset.getBytes(3);
				if (null != imageData && imageData.length > 0) {
					String imageString = Base64.getEncoder().encodeToString(imageData);
					System.out.println("Image STring: " + imageString);
					ans.setDeco_imageString(imageString);
				}
				decoList.add(ans);
			}
		} catch (Exception e) {
			System.out.println("\nDao Deco List: " + e.getMessage());
		}
		return decoList;
	}

	@Override
	public List_of_food_items getPackageInfo(int pid, Connection con) {
		// TODO Auto-generated method stub
		List_of_food_items ans = new List_of_food_items();
		String query = "select * from package_table where package_id = ?";
		try (PreparedStatement pst = con.prepareStatement(query)) {
			pst.setInt(1, pid);
			String getEventName = new String();
			ResultSet rst = pst.executeQuery();
			while (rst.next()) {
				ans.setPackage_id(rst.getInt(1));
				ans.setPackage_name(rst.getString("package_name"));
				ans.setPackage_type(rst.getString("package_type"));
				ans.setPackage_description(rst.getString(4));
				ans.setEvent_id(rst.getInt("event_id"));
				try(PreparedStatement pst2 = con.prepareStatement("select event_name from event_table where event_id = ?"))
				{
					pst2.setInt(1, ans.getEvent_id());
					ResultSet rst2 = pst2.executeQuery();
					while(rst2.next())
					{
						getEventName = rst2.getString("event_name");
						break;
					}
				}
				catch(Exception e) {System.out.println("\nException during get event name ? >" + e.getMessage());}
				ans.setEvent_name(getEventName);
				return ans;
			}
		} catch (Exception e) {
			System.out.println("\nException List Of package" + e.getMessage());
		}
		return null;
	}

	@Override
	public List<Event> fetchEventListDao(Connection con) {
		// TODO Auto-generated method stub
		List<Event> ans = new ArrayList<Event>();
		try (PreparedStatement ps = con.prepareStatement("select * from event_table");
				ResultSet resultset = ps.executeQuery()) {
			while (resultset.next()) {
				Event obj = new Event();
				obj.setEvent_id(resultset.getInt(1));
				obj.setEvent_name(resultset.getString(2));
				ans.add(obj);
			}
		} catch (Exception e) {
			System.out.println("\nException during getting event List: " + e.getMessage());
		}

		return ans;
	}
}