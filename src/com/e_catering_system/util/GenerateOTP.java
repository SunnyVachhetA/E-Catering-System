package com.e_catering_system.util;
import java.util.*;
public class GenerateOTP {

	public static String getOTP()
	{
		String numbers = "0123456789";
		int len = 6;
		Random rndm_method = new Random();
		
		char[] otp = new char[len];
		for(int i = 0;i < len ;i++)
		{
			otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));
		}
		String OTP = new String(otp);
		System.out.println("OTP Is: "+OTP);
		
		
		return OTP;
		
		
	}
}
