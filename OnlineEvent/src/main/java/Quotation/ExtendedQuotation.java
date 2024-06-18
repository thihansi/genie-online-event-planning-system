package Quotation;

public class ExtendedQuotation extends Quotation {
    private String additionalProperty;

    public ExtendedQuotation(int qid, String clientName, String phone, String email, String eDate, String venue,
                          String specialReq, String qdate, String type, String additionalProperty) {
        super(qid, clientName, phone, email, eDate, venue, specialReq, qdate, type);
        this.additionalProperty = additionalProperty;
    }

    public String getAdditionalProperty() {
        return additionalProperty;
    }

    public void setAdditionalProperty(String additionalProperty) {
        this.additionalProperty = additionalProperty;
    }

}
