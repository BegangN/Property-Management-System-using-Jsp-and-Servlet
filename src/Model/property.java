package Model;


import javax.servlet.http.Part;

public class property {

	
	int propertyTypeID;
	String propertyName;
	String propertyType;
	String price;
	String quantity;
	String amount;
	String termID;
	String duration;
	String statusID;
	String description;
	String advertID;
	String dateAdvertised;
	public property(int propertyTypeID, String propertyName,
			String propertyType, String price, String quantity, String amount,
			String termID, String duration,
			String statusID, String description, String advertID,
			String dateAdvertised) {
		super();
		this.propertyTypeID = propertyTypeID;
		this.propertyName = propertyName;
		this.propertyType = propertyType;
		this.price = price;
		this.quantity = quantity;
		this.amount = amount;
		this.termID = termID;
		this.duration = duration;
		this.statusID = statusID;
		this.description = description;
		this.advertID = advertID;
		this.dateAdvertised = dateAdvertised;
	}
	public int getPropertyTypeID() {
		return propertyTypeID;
	}
	public void setPropertyTypeID(int propertyTypeID) {
		this.propertyTypeID = propertyTypeID;
	}
	public String getPropertyName() {
		return propertyName;
	}
	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}
	public String getPropertyType() {
		return propertyType;
	}
	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
		public String getTermID() {
		return termID;
	}
	public void setTermID(String termID) {
		this.termID = termID;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getStatusID() {
		return statusID;
	}
	public void setStatusID(String statusID) {
		this.statusID = statusID;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAdvertID() {
		return advertID;
	}
	public void setAdvertID(String advertID) {
		this.advertID = advertID;
	}
	public String getDateAdvertised() {
		return dateAdvertised;
	}
	public void setDateAdvertised(String dateAdvertised) {
		this.dateAdvertised = dateAdvertised;
	}
	

	
	
	
	
}