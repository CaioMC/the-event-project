package prot.cortex.my.event.event.entity.creditPurchase.enums;

public enum PaymentTypeEnum {
	
	CREDIT("Crédito"),
	DEBIT("Débito"),
	BOLETO("Boleto"),
	CASH("Espécie"),
	PIX("Pix");
	
	private String description;
	
	PaymentTypeEnum(String description) {
		this.description = description;
	}
	
	public static PaymentTypeEnum convert(String paymentType) {
		for (PaymentTypeEnum type : PaymentTypeEnum.values()) {
			if (type.name().equalsIgnoreCase(paymentType)) {
				return type;
			}
		}
		return null;
	}
	
	public String getDescription() {
		return description;
	}
}
