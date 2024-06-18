package event.c;

public class ExtendedEvent extends Event {
    private String childProperty;

    public ExtendedEvent(int Id, String name, String description, String price_range, String contact, String availability, String childProperty) {
        super(Id, name, description, price_range, contact, availability);
        this.childProperty = childProperty;
    }

    public String getChildProperty() {
        return childProperty;
    }

    public void setChildProperty(String childProperty) {
        this.childProperty = childProperty;
    }

}
