package prot.cortex.my.event.event.entity.creditPurchase.enums;

public enum PaymentMethodEnum {
	
	VISA_CREDIT (PaymentTypeEnum.CREDIT), 			
	MASTERCARD_CREDIT (PaymentTypeEnum.CREDIT),		
	AMEX_CREDIT (PaymentTypeEnum.CREDIT),			
	ELO_CREDIT (PaymentTypeEnum.CREDIT),			
	HIPERCARD_CREDIT (PaymentTypeEnum.CREDIT),		
	DINNERS_CREDIT (PaymentTypeEnum.CREDIT),		
	DISCOVER_CREDIT (PaymentTypeEnum.CREDIT),		
	AURA_CREDIT (PaymentTypeEnum.CREDIT),
	JCB_CREDIT (PaymentTypeEnum.CREDIT),
	VISA_DEBIT (PaymentTypeEnum.DEBIT),				
	MASTERCARD_DEBIT (PaymentTypeEnum.DEBIT),		
	BOLETO (PaymentTypeEnum.BOLETO),				
	PIX (PaymentTypeEnum.PIX);						
	
	private PaymentTypeEnum paymentTypeEnum;
	
	private PaymentMethodEnum(PaymentTypeEnum paymentTypeEnum) {
		this.paymentTypeEnum = paymentTypeEnum;
	}
	
	public static PaymentMethodEnum convert(String paymentTypeString) {
		for (PaymentMethodEnum e : PaymentMethodEnum.values()) {
			if (e.name().equalsIgnoreCase(paymentTypeString)) {
				return e;
			}
		}
		
		return null;
	}
	
	public PaymentTypeEnum getPaymentType() {
		return paymentTypeEnum;
	}
}
