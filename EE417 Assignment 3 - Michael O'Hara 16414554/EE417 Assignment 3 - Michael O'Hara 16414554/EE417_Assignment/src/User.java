public class User {
	private String firstname;
	private String surname;
	private String email;
	private String password;
	private Boolean admin;
 
	public User(String firstname, String surname, String email,String password, Boolean admin) {
		super();
		this.firstname = firstname;
 		this.surname = surname;
 		this.email = email;
 		this.password = password;
 		this.admin = admin;
 		
 	}
 	public String getFirstname() {
 		return firstname;
 	}
 	public void setFirstname(String firstname) {
 		this.firstname = firstname;
 	}
	public String getSurname() {
 		return surname;
 	}
 	public void setSurname(String surname) {
 		this.surname = surname;
 	}
 	public String getEmail() {
 		return email;
 	}
 	public void setEmail(String email) {
 		this.email = email;
 	}
 	public String getPassword() {
 		return password;
 	}
 	public void setPassword(String password) {
 		this.password = password;
 	}
	public Boolean getAdmin() {
		return admin;
	}

}