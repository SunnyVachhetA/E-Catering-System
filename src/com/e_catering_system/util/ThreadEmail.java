package com.e_catering_system.util;

import com.e_catering_system.bean.User;

public class ThreadEmail extends Thread
{
	String sendemail=null;
	String msg=null;
	public ThreadEmail() {}
	public ThreadEmail(String email,String message)
	{
		sendemail=email;
		msg=message;
	}
	User u = new User();

	@Override
	public void run() {
		try {
			System.out.println(msg);
			System.out.println(sendemail);
			SendEmail s = new SendEmail();
			String mail = sendemail;
			s.sendmail(mail, msg);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
