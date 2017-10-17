package com.bkpark.pilot;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.google.gson.Gson;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="beaninit.xml")
public class GSonTest {
	@Autowired
	ApplicationContext context;
	
	@Test
	public void testGSon() {
		Gson gson = new Gson();
		assertEquals("1",  gson.toJson(1));
		//assertEquals("abcd",  gson.toJson("abcd"));
		assertEquals("10",  gson.toJson(new Long(10)));
/*		int[] values = { 1 };
		gson.toJson(values);       // ==> [1]
*/	}
}
