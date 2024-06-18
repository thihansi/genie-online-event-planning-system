package Quotation;


public class Quotation {
	private int qid;
	private String ClientName;
	private String phone;
	private String email;
	private String eDate;
	private String Venue;
	private String specialReq;
	private String Qdate;
	private String type;
	
	
	public Quotation(int qid, String clientName, String phone, String email, String eDate, String venue,
			String specialReq, String qdate, String type) {
		super();
		this.qid = qid;
		ClientName = clientName;
		this.phone = phone;
		this.email = email;
		this.eDate = eDate;
		Venue = venue;
		this.specialReq = specialReq;
		Qdate = qdate;
		this.type = type;
	}


	public Quotation() {
		// TODO Auto-generated constructor stub
	}


	public int getQid() {
		return qid;
	}


	public String getClientName() {
		return ClientName;
	}


	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}


	public String geteDate() {
		return eDate;
	}


	public String getVenue() {
		return Venue;
	}


	public String getSpecialReq() {
		return specialReq;
	}


	public String getQdate() {
		return Qdate;
	}


	public String getType() {
		return type;
	}


	public void setQid(int qid) {
		this.qid = qid;
	}


	public void setClientName(String clientName) {
		ClientName = clientName;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void seteDate(String eDate) {
		this.eDate = eDate;
	}


	public void setVenue(String venue) {
		Venue = venue;
	}


	public void setSpecialReq(String specialReq) {
		this.specialReq = specialReq;
	}


	public void setQdate(String qdate) {
		Qdate = qdate;
	}


	public void setType(String type) {
		this.type = type;
	}


	

}
