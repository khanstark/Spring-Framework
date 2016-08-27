package helloSpring;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.AbstractController;
 @Controller
public class HelloController{
 
	@RequestMapping("/welcome")
	public ModelAndView  helloWorld(){
 
		ModelAndView modelandview = new ModelAndView("HelloPage");
		modelandview.addObject("welcomeMessage", "Welcome to the <kbd>Location</kbd> Spring MVC Application");
		
		return modelandview;
	}
	@RequestMapping("/welcome/next")
	public ModelAndView  helloWorld2(){
 
		ModelAndView md = new ModelAndView("NextPage");
		md.addObject("text", "You reached <code>2nd</code> Page of the application!");
		
		return md;
	}
}
