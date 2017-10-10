package com.yb;

public class YongBin {
	Calculator c;
	
	public void setC(Calculator c) {
		this.c = c;
	}
	
	public void doit (float x, float y) {
		System.out.println(c.calculate(x, y));
	}
}
