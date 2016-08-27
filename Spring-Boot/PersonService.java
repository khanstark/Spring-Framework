package service;
import java.util.Hashtable;
import org.springframework.stereotype.Service;
import models.Person;
@Service
public class PersonService {
Hashtable<String,Person> person=new Hashtable<String,Person>();
public PersonService(){
//1st	
	Person p=new Person();
	p.setAge(21);
	p.setFn("kaif");
	p.setLn("khan");
	p.setId("1");
	person.put("1",p);
//2nd	
	p=new Person();
	p.setAge(24);
	p.setFn("john");
	p.setLn("steele");
	p.setId("2");
	person.put("2",p);
}
public Person getPerson(String id){
	if(person.containsKey(id))return person.get(id);
	else return null;
}
public Hashtable<String,Person> getAll(){
	return person;
}
}
