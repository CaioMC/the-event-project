package prot.cortex.my.event.event.entity.creditPurchase.other;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import prot.cortex.my.event.event.entity.creditPurchase.CreditPurchase;

@Entity
@Table(name = "PURCHASEITEM")
public class PurchaseItem implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name = "ID", nullable = false)
	private Integer Id;
	
	@Column(name = "ITEMTYPE", nullable = false)
	private Double itemType;
	
	@Column(name = "VALUE", nullable = false)
	private Double value;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "CREDITPURCHASEID", nullable = false)
	private CreditPurchase creditPurchaseId;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Double getItemType() {
		return itemType;
	}

	public void setItemType(Double itemType) {
		this.itemType = itemType;
	}

	public Double getValue() {
		return value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

	public CreditPurchase getCreditPurchaseId() {
		return creditPurchaseId;
	}

	public void setCreditPurchaseId(CreditPurchase creditPurchaseId) {
		this.creditPurchaseId = creditPurchaseId;
	}
}
