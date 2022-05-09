package prot.cortex.my.event.event.entity.userPublisher;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import prot.cortex.my.event.event.entity.publisher.Publisher;
import prot.cortex.my.event.event.entity.user.User;

@Entity
@Table(name = "USERPUBLISHER")
public class UserPublisher implements Serializable {
	
private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name = "ID", nullable = false)
	private Integer Id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "USERID", nullable = false)
	private User user;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "PUBID", nullable = false)
	private Publisher publisher;
	
	@Column(name = "CANSENDPUSHNOTIFICATION", nullable = false)
	private Boolean canSendPushNotification;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}

	public Boolean getCanSendPushNotification() {
		return canSendPushNotification;
	}

	public void setCanSendPushNotification(Boolean canSendPushNotification) {
		this.canSendPushNotification = canSendPushNotification;
	}
}
