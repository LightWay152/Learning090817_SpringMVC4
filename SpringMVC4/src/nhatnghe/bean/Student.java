package nhatnghe.bean;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class Student {
	@Length(min=5, message="length must be at least 5 letters")
	String name;
	
	@Range(min=16,max=65, message="Must be between 16 and 65")
	Integer age;
	
	@NotEmpty(message="Not empty")
	@Email(message="Incorrect email format")
	String email;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
