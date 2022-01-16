package com.e_catering_system.bean;

public class PackageCust extends Event{
	private int package_id;
	private String package_name;
	private int package_price;
	private String package_type;
	private String package_description;
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public int getPackage_price() {
		return package_price;
	}
	public void setPackage_price(int package_price) {
		this.package_price = package_price;
	}
	public String getPackage_type() {
		return package_type;
	}
	public void setPackage_type(String package_type) {
		this.package_type = package_type;
	}
	public String getPackage_description() {
		return package_description;
	}
	public void setPackage_description(String package_description) {
		this.package_description = package_description;
	}
	
}
