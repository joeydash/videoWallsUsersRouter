package com.perpule.utils;

import java.security.SecureRandom;

public class RandomAndHashStringUtil {

    private final static String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    private static SecureRandom rnd = new SecureRandom();

    public static String randomString( int len ){
        StringBuilder sb = new StringBuilder( len );
        for( int i = 0; i < len; i++ )
            sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
        return sb.toString();
    }
    public static String getId(String string,String time){
        return hashString(string + time);
    }
    public static String jumblePasswordWithRandomString(String password, String random_string) {
        return password+random_string;
    }
    public static String hashPassword(String password, String random_string) {
        return hashString(jumblePasswordWithRandomString(password,random_string));
    }
    public static String hashString(String string) {
        return String.valueOf(string.hashCode());
    }
}
