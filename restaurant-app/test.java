package org.khan.net;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class test {
public static void main(String args[]){
	ApplicationContext ct=new ClassPathXmlApplicationContext("spring-config.xml");
	//shut down bean ((AbstractApplicationContext)ct).registerShutdownHook();
	restaurant rt=(restaurant)ct.getBean("restaurantBean");
	rt.hotdrinks();
}
}
