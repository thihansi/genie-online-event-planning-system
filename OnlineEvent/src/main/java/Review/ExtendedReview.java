package Review;

public class ExtendedReview extends Review {
    private String additionalProperty;

    public ExtendedReview(int id, String event, String reviewTitle, String clientName, String phone, int rating,
            String r_Content, String further_Contact, String currentDate, String additionalProperty) {
        super(id, event, reviewTitle, clientName, phone, rating, r_Content, further_Contact, currentDate);
        this.additionalProperty = additionalProperty;
    }

    public String getAdditionalProperty() {
        return additionalProperty;
    }

    public void setAdditionalProperty(String additionalProperty) {
        this.additionalProperty = additionalProperty;
    }

}
