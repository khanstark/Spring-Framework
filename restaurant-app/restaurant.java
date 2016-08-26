package org.khan.net;
import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
public class restaurant {
	drink dr;
	public void setDr(drink dr){
		this.dr=dr;
	}
	public void hotdrinks(){
		dr.hotdrink();
	}
	
	public void init(){
		System.out.println("init started");
	}
	
	public void destroy(){
		System.out.println("destroy started");
	}
}
