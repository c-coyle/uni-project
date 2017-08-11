package beans;

public class User {
	private String username = "";
	private String password = "";
	
	private String registermessage = "";
	
	public String getMessage() {
		return registermessage;
	}

	public User() {
		
	}
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean validate() {
		
		if(username == null) {
			registermessage = "Please type a username.";
			return false;
		}
		
		if(password == null) {
			registermessage = "Invalid password";
			return false;
		}
		
		if(password.length() < 8) {
			registermessage = "Password must be at least 8 characters.";
			return false;
		}
		else if(password.matches("\\w*\\s+\\w*")) {
			registermessage = "Password cannot contain space.";
			return false;
		}
		
		return true;
	}

}
