package com.e_catering_system.bean;

public class Encryption {
	private final String plainText = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	private final String cipherText = "THEQUICKBROWNFoXJMPDVLAZYGthequickbrownfOxjmpdvlazyg";
	
	public String encyptText(String text)
	{
		String encrypt = new String();
		
		text = text.trim();
		for(int i = 0; i < text.length(); i++)
		{
			int flag  = 0;
			for(int j = 0; j < plainText.length(); j++)
			{
				if(text.charAt(i) == plainText.charAt(j))
				{
					encrypt = encrypt + cipherText.charAt(j);
					flag = 1;
					break;
				}
			}
			if(flag == 0)
				encrypt = encrypt + text.charAt(i);
		}
		return encrypt;
	}
	public String decryptText(String text)
	{
		String decrypt = new String();
		text = text.trim();
		for(int i = 0; i < text.length(); i++)
		{
			int flag  = 0;
			for(int j = 0; j < plainText.length(); j++)
			{
				if(text.charAt(i) == cipherText.charAt(j))
				{
					decrypt = decrypt + plainText.charAt(j);
					flag = 1;
					break;
				}
			}
			if(flag == 0)
				decrypt = decrypt + text.charAt(i);
		}
		return decrypt;
	}
}
