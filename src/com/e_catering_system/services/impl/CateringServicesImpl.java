package com.e_catering_system.services.impl;

import java.sql.Connection;
import java.sql.DriverManager;

import com.e_catering_system.bean.Decoration;
import com.e_catering_system.bean.Event;
import com.e_catering_system.bean.Food_items;
import com.e_catering_system.bean.List_of_food_items;
import com.e_catering_system.bean.PackageCust;
import com.e_catering_system.bean.User;
import com.e_catering_system.dao.CateringDao;
import com.e_catering_system.dao.impl.CateringDaoImpl;
import com.e_catering_system.services.CateringServices;
import java.util.List;
import java.util.ArrayList;

public class CateringServicesImpl implements CateringServices {

	CateringDao cdao = new CateringDaoImpl();

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_catering_system", "root",
					"admin");
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int saveUserDetails(User obj) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				int ans = cdao.saveUserDetailsData(obj, con);
				con.close();
				return ans;
			} else {
				System.out.println("\n\n\t\tConnection Unsucessfull!\n");
			}
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int checkMailStatus(String email) {
		// TODO Auto-generated method stub

		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				int ans = cdao.getMailDetails(email, con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public User checkLoginDetails(User obj2) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				User ans = new User();
				
				//int ans = 0; 
				ans = cdao.checkLoginStatus(obj2, con);

				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;
	}

	@Override
	public User getUserData(String email) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			System.out.println("\nConnection MEssage: " + e.getMessage());
		}
		try {
			if (con != null) {
				User ans = cdao.getUserDetailsUsingEmail(email, con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
				System.out.println("\nService Error : " + e.getMessage());
		}

		return null;
	}

	@Override
	public User setUserNewPassword(User obj, String password) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				User ans = cdao.setUpassword(obj, password, con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int saveProductDetails(Food_items obj) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				int ans = cdao.saveProductDetails(con,obj);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public List<User> fetchUserList() {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
		
				List<User> ans = new ArrayList<User>();
				ans = cdao.fetchUserListDao(con);
				for(User x : ans)
				{
					System.out.println("\nNameS: " + x.getUser_name());
				}
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Display User List Error: " + e.getMessage());
		}
		return null;
	}

	@Override
	public int getCategoryId(String getCategory) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				int ans = cdao.fetchCategoryId(con,getCategory);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Food_items> fetchProductList() {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
		
				List<Food_items> ans = new ArrayList<Food_items>();
				ans = cdao.fetchProductListDao(con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Display Product List Error: " + e.getMessage());
		}

		return null;
	}

	@Override
	public Food_items getProductDetails(int pid) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				Food_items ans = cdao.getProductDetailsId(con, pid);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int deleteProductDetails(int product_id) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				int ans = cdao.deleteProduct(con,product_id);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public int updateProductDetails(Food_items obj) {
		// TODO Auto-generated method stub
		
		System.out.println("Hello SErver Layer!\n");
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				int ans = cdao.updateProduct(con,obj);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<String> getCategoryList() {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				List<String> ans = new ArrayList<String>();
				ans = cdao.getCategoryList(con); 
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int savePackageInfo(PackageCust obj) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			System.out.println("\nConnection MEssage: " + e.getMessage());
		}
		try {
			if (con != null) {
				int ans = cdao.savePackageInfo(obj, con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
				System.out.println("\nService Error : " + e.getMessage());
		}
		return 0;
	}

	@Override
	public int getPackId(PackageCust obj) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			System.out.println("\nConnection MEssage: " + e.getMessage());
		}
		try {
			if (con != null) {
				int ans = cdao.getPackageId(obj, con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
				System.out.println("\nService Error : " + e.getMessage());
		}
		return 0;
	}


	public int setPackageData(List_of_food_items obj) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			System.out.println("\nConnection MEssage: " + e.getMessage());
		}
		try {
			if (con != null) {
				int ans = cdao.setPackageData(obj,con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
				System.out.println("\nService Error : " + e.getMessage());
		}

		return 0;
	}

	@Override
	public int saveDecorationDetails(Decoration obj) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				int ans = cdao.saveDecoDetails(con,obj);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			System.out.println("Exception Decoration SErvice: " + e.getMessage());
		}

		return 0;
	}

	@Override
	public List<Decoration> getDecoList() {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
		
				List<Decoration> ans = new ArrayList<Decoration>();
				ans = cdao.fetchDecoList(con);

				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Display User List Error: " + e.getMessage());
		}

		return null;
	}

	@Override
	public List_of_food_items getPackageInfo(int pid) {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
				List_of_food_items ans = new List_of_food_items();
				ans = cdao.getPackageInfo(pid, con); 
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Event> fetchEventList() {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (con != null) {
		
				List<Event> ans = new ArrayList<Event>();
				ans = cdao.fetchEventListDao(con);
				con.close();
				return ans;
			} else {
				System.out.println("\nConnection Failed!\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Display Event List Error: " + e.getMessage());
		}
	
		return null;
	}
}
