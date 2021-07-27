package Usersdao;

public class Users {
	private String username;
	private String email;
	private String password;
	
	public Users(String username, String email, String password) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
	}
	
	public Users() {
		super();
	}
	@Override
	public String toString() {
		return "Users [username=" + username + ", email=" + email + ", password=" + password + "]";
	}
	public String getUsername() {
		return username;
	}
	public void setUser_name(String user_name) {
		this.username = user_name;
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
	
}
