package UserLogin;

public class User  {
		private int UID;
		private String Name;
		private String Address;
		private String Username;
		private String Password;
		
		public User(int uID, String name, String address, String username, String password) {
			super();
			UID = uID;
			Name = name;
			Address = address;
			Username = username;
			Password = password;
		}

		public int getUID() {
			return UID;
		}

		public String getName() {
			return Name;
		}

		public String getAddress() {
			return Address;
		}

		public String getUsername() {
			return Username;
		}

		public String getPassword() {
			return Password;
		}

		public void setUID(int uID) {
			UID = uID;
		}

		public void setName(String name) {
			Name = name;
		}

		public void setAddress(String address) {
			Address = address;
		}

		public void setUsername(String username) {
			Username = username;
		}

		public void setPassword(String password) {
			Password = password;
		}
		
	}



