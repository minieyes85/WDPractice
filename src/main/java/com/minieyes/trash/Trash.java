package com.minieyes.trash;

import java.util.Calendar;
import java.util.Date;

public class Trash {
		
	public static void main(String[] args) {
		
		Calendar cal = Calendar.getInstance();
		
		Date date = cal.getTime();
		System.out.println(date);
		
		
		
		date = cal.getTime();
		System.out.println(date);		
		int week = cal.get(Calendar.DAY_OF_WEEK);
		System.out.println(week);
		
		cal.set(cal.DAY_OF_MONTH, 1);
		week = cal.get(Calendar.DAY_OF_WEEK);
		System.out.println(week);
		
		date = cal.getTime();
		System.out.println(date);
		
		cal.add(Calendar.DATE, 1);
		date = cal.getTime();
		System.out.println(date);
		
		cal.set(cal.DAY_OF_MONTH, 1);
		int fdayow = cal.DAY_OF_WEEK;
		System.out.println(fdayow);
		
		int test = cal.get(Calendar.WEEK_OF_MONTH);
		System.out.println(test);
		
		int last = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		System.out.println(last);
		
		
		
	}
	
}
