package com.minieyes.trash;

import java.util.Arrays;
import java.util.List;

public class Trash {
		
	public static void main(String[] args) {
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int sum = 0;
		for(int i = 1; i <= 50 ; i++) {
			sum += i;
		}
		
		System.out.println(sum);
		
		String birthDay = "20010820";
		String yearStr = birthDay.substring(0, 4);
		int year = Integer.parseInt(yearStr);
		int now = 2021;
		int age = now - year + 1;	
		System.out.println(year);
		System.out.println(age);
	}
	
}
