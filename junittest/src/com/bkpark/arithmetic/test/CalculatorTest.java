package com.bkpark.arithmetic.test;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bkpark.arithmetic.Calculator;

public class CalculatorTest {
	Calculator c;
	@Before
	public void testStart() {
		c = new Calculator();
	}
	
	@After
	public void testend() {
		c.clear();
		c=null;
	}
	
	@Test
	public void testAdd() {
		c.add(10);
		assertEquals(10, c.getResult()); 
	}

	@Test
	public void testSub() {
		c.sub(10);
		assertEquals(-10, c.getResult()); 
	}

	@Test
	public void testMul() {
		c.setResult(10);
		c.mul(10);
		assertEquals(100, c.getResult());
	}

	@Test
	public void testDiv() {
		c.setResult(10);
		c.div(5);
		assertEquals(2, c.getResult());
	}

	@Test
	public void testGetResult() {
		assertEquals(0, c.getResult());
	}

}
