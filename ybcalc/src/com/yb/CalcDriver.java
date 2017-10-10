package com.yb;

public class CalcDriver {
public static void main(String[] args) {
	YongBin yb = new YongBin();
	
	Calculator c = new Adder();
	yb.setC(c);
	yb.doit(100, 50);

	c= new Subtractor();
	yb.setC(c);
	yb.doit(100, 50);
	
	c= new Multiplier();
	yb.setC(c);
	yb.doit(100, 50);
	
	c= new Divider();
	yb.setC(c);
	yb.doit(100, 50);
	
}
}
