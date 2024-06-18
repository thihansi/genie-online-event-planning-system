package Review;

import java.time.LocalDate;

public class Review {
	private int id;
	private String Event;
	private String ReviewTitle;
	private String ClientName;
	private String Phone;
	private int Rating;
	private String R_Content;
	private String Further_Contact;
	private String CurrentDate;
	
	
	public Review(int id, String event, String reviewTitle, String clientName, String Phone, int rating,
			String r_Content, String further_Contact, String currentDate) {
		super();
		this.id = id;
		Event = event;
		ReviewTitle = reviewTitle;
		ClientName = clientName;
		this.Phone = Phone;
		Rating = rating;
		R_Content = r_Content;
		Further_Contact = further_Contact;
		CurrentDate = currentDate;
	}

	public Review() {
		
	}

	public int getId() {
		return id;
	}


	public String getEvent() {
		return Event;
	}


	public String getReviewTitle() {
		return ReviewTitle;
	}


	public String getClientName() {
		return ClientName;
	}


	public String getPhone() {
		return Phone;
	}


	public int getRating() {
		return Rating;
	}


	public String getR_Content() {
		return R_Content;
	}


	public String getFurther_Contact() {
		return Further_Contact;
	}


	public String getCurrentDate() {
		return CurrentDate;
	}


	public void setId(int id) {
		this.id = id;
	}


	public void setEvent(String event) {
		Event = event;
	}


	public void setReviewTitle(String reviewTitle) {
		ReviewTitle = reviewTitle;
	}


	public void setClientName(String clientName) {
		ClientName = clientName;
	}


	public void setPhone(String phone) {
		Phone = phone;
	}


	public void setRating(int rating) {
		Rating = rating;
	}


	public void setR_Content(String r_Content) {
		R_Content = r_Content;
	}


	public void setFurther_Contact(String further_Contact) {
		Further_Contact = further_Contact;
	}


	public void setCurrentDate(String currentDate) {
		CurrentDate = currentDate;
	}
		
}
