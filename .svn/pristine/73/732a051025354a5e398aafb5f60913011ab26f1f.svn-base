package com.commons;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

/**
 * title:加密，MD5  MD2 SHA
 * @author Administrator
 *
 */
public class Utils {
	
	// name:加密的方式  MD5 MD2 SHA
	public static String encoder( String name,String value ){
		
		String result = "";//加密之后的数据
		
		try {
			//构造加密的方式
			MessageDigest messageDigest = MessageDigest.getInstance( name );
			
			//加密之后，可能会出现乱编码问题。统一编码
			BASE64Encoder encoder = new BASE64Encoder();
			
			//把加密后的数据统一编码
			result = encoder.encode( messageDigest.digest( value.getBytes( "utf-8" ) ) );
		
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}
