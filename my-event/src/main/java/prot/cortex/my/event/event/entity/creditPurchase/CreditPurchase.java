package prot.cortex.my.event.event.entity.creditPurchase;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import prot.cortex.my.event.event.entity.creditPurchase.enums.PaymentMethodEnum;
import prot.cortex.my.event.event.entity.creditPurchase.enums.PaymentStatusEnum;
import prot.cortex.my.event.event.entity.creditPurchase.enums.PaymentTypeEnum;
import prot.cortex.my.event.event.entity.event.Event;
import prot.cortex.my.event.event.entity.user.User;

@Entity
@Table(name = "CREDITPURCHASE")
public class CreditPurchase implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name = "ID", nullable = false)
	private Integer Id;
	
	@Column(name = "VALUE", nullable = false)
	private Double value;
	
	@Column(name = "PAYMENTTYPE", nullable = false)
	private PaymentTypeEnum paymentTypeEnum;
	
	@Column(name = "PAYMENTMETHOD", nullable = false)
	private PaymentMethodEnum paymentMethod;
	
	@Column(name = "PAYMENTSTATUSENUM", nullable = false)
	private PaymentStatusEnum paymentStatusEnum;
	
	@Column(name = "ORDERDATE", nullable = false)
	private Date orderDate;
	
	@Column(name = "PROCESSEDDATE", nullable = true)
	private Date processedDate;
	
	@Column(name = "ITEMAMOUNT", nullable = false)
	private Integer itemAmount;
	
	@Column(name = "UNDO", nullable = true)
	private Double undo;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id", nullable = false)
	private User user;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "event_id", nullable = false)
	private Event event;
	
	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Double getValue() {
		return value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

	public PaymentTypeEnum getPaymentTypeEnum() {
		return paymentTypeEnum;
	}

	public void setPaymentTypeEnum(PaymentTypeEnum paymentTypeEnum) {
		this.paymentTypeEnum = paymentTypeEnum;
	}

	public PaymentMethodEnum getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(PaymentMethodEnum paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public PaymentStatusEnum getPaymentStatusEnum() {
		return paymentStatusEnum;
	}

	public void setPaymentStatusEnum(PaymentStatusEnum paymentStatusEnum) {
		this.paymentStatusEnum = paymentStatusEnum;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getProcessedDate() {
		return processedDate;
	}

	public void setProcessedDate(Date processedDate) {
		this.processedDate = processedDate;
	}

	public Integer getItemAmount() {
		return itemAmount;
	}

	public void setItemAmount(Integer itemAmount) {
		this.itemAmount = itemAmount;
	}

	public Double getUndo() {
		return undo;
	}

	public void setUndo(Double undo) {
		this.undo = undo;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}
}
