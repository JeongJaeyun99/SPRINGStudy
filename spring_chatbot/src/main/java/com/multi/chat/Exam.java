package com.multi.chat;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Exam {

	   public static void main(String[] args) {
	        Date date = new Date();
	        System.out.println(date.getTime()); // date 클래스로, long type으로 구하기
	        System.out.println(date.toString());

	        SimpleDateFormat ft = new SimpleDateFormat("yyyy.MM.dd 'at' HH:mm:ss a zzz");
	        System.out.println(ft.format(date));
	        
	        long today = System.currentTimeMillis();
	        System.out.println(today);

	        Float diff = (float)((today- date.getTime())/1000.0);
	        System.out.println(diff+"초");
	        System.out.println(today - date.getTime()+"ms"); // 코드 실행 시간 구할 수 있음
	    }

}
