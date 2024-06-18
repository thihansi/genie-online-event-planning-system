package event.c;

public class Event {
		private int Id;
		private String name;
		private String description;
		private String price_range;
		private String contact;
		private String availability;

		public Event(int Id ,String name, String description, String price_range, String contact,String availability) {

			this.Id =Id;
			this.name = name;
			this.description = description;
			this.price_range = price_range;
			this.contact = contact;
			this.availability=availability;
		}
		public int getid() {
			return Id;
		}
		public String getName() {
			return name;
		}
		public String getdescription() {
			return description;
		}
		public String getprice_Range() {
			return price_range;
		}
		public String getcontact() {
			return contact;
		}
		public String getavailability() {
			return availability;
		}
		public void setCid(int Id) {
			this.Id = Id;
		}
		public void setName(String name) {
			this.name = name;
		}
		public void setEmail(String description) {
			this.description = description;
		}
		public void setPhone(String price_range) {
			this.price_range = price_range;
		}
		public void setUsername(String contact) {
			this.contact = contact;
		}
		public void setPassword(String availability) {
			this.availability = availability;
		}

	}



