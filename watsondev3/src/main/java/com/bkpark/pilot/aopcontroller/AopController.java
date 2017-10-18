package com.bkpark.pilot.aopcontroller;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bkpark.pilot.controller.Text2SpeechDAOImpl;
import com.bkpark.pilot.controller.Text2SpeechVO;

@Aspect
@Component
public class AopController {

	@Autowired
	private Text2SpeechDAOImpl service;

	@Before("execution(* com.bkpark.pilot.controller.ClassifierController.classifier(..))")
	public void ad_before(JoinPoint joinpoint) {
		Object[] args = joinpoint.getArgs();
		for (Object obj : args) {
			Text2SpeechVO vo = (Text2SpeechVO) obj;
			try {
				service.insertText2Speech(vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
	/*
	 * @Before("execution(* com.n1books.dev.controller.Text2SpeechController.speaker(..))"
	 * ) public void ad_before(JoinPoint joinpoint) {
	 * logger.info("---------------------"); logger.info("before advice 수행중 ");
	 * logger.info("---------------------");
	 * 
	 * Object[] args = joinpoint.getArgs();
	 * 
	 * for(Object obj:args) { logger.info("arg : " + obj); if (obj instanceof
	 * HttpSession) { HttpSession session = (HttpSession) obj;
	 * logger.info("userid : " + (String)session.getAttribute("userid"));
	 * logger.info("userpw : " + (String)session.getAttribute("userpw")); } }
	 * 
	 * }
	 */

	/*
	 * @AfterReturning("execution(* com.n1books.dev.controller.Text2SpeechController.speaker(..))"
	 * ) public void ad_after_returning() { logger.info("---------------------");
	 * logger.info("after returning advice 수행중 ");
	 * logger.info("---------------------"); }
	 * 
	 * @Around("execution(* com.n1books.dev.controller.Text2SpeechController.speaker(..))"
	 * ) public Object ad_around(ProceedingJoinPoint joinpoint) {
	 * logger.info("--------------------------");
	 * logger.info("around advice (before)___ ");
	 * logger.info("--------------------------"); Object obj = null; try { long
	 * start=System.currentTimeMillis(); joinpoint.proceed(); long
	 * end=System.currentTimeMillis(); logger.info("소요시간 : " + ((double)end -
	 * start)/1000 + "초"); } catch (Throwable e) { // TODO Auto-generated catch
	 * block e.printStackTrace(); } logger.info("--------------------------");
	 * logger.info("around advice (after) ___ ");
	 * logger.info("--------------------------"); return obj; }
	 */
}
