package com.e_catering_system.bean;

import java.io.InputStream;

public class Decoration {
	private int deco_id;
	private String deco_name;
	private String deco_description;
	private int deco_price;
	private String deco_imageString;
	private InputStream deco_imageStream;
	public int getDeco_id() {
		return deco_id;
	}
	public void setDeco_id(int deco_id) {
		this.deco_id = deco_id;
	}
	public String getDeco_name() {
		return deco_name;
	}
	public void setDeco_name(String deco_name) {
		this.deco_name = deco_name;
	}
	public String getDeco_description() {
		return deco_description;
	}
	public void setDeco_description(String deco_description) {
		this.deco_description = deco_description;
	}
	public int getDeco_price() {
		return deco_price;
	}
	public void setDeco_price(int deco_price) {
		this.deco_price = deco_price;
	}
	public String getDeco_imageString() {
		return deco_imageString;
	}
	public void setDeco_imageString(String deco_imageString) {
		this.deco_imageString = deco_imageString;
	}
	public InputStream getDeco_imageStream() {
		return deco_imageStream;
	}
	public void setDeco_imageStream(InputStream deco_imageStream) {
		this.deco_imageStream = deco_imageStream;
	}
}
