package prot.cortex.my.event.event.entity.event;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import prot.cortex.my.event.event.entity.publisher.Publisher;


@Entity
@Table(name = "EVENT")
public class Event implements Serializable {

private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name = "ID", nullable = false)
	private Integer Id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "PUB_ID", nullable = false)
	private Publisher publisher;
	
	@Column(name = "NAME", nullable = false)
	private String name;
	
	@Column(name = "MAINPHOTO", nullable = true)
	private String mainPhoto;
	
	@Column(name = "PHOTOS", nullable = false)
	private String photos;

	@Column(name = "EVENTDATE", nullable = false)
	private Date eventDate;
	
	@Column(name = "DESCRIPTION", nullable = false)
	private String description;
	
	@Column(name = "MINIMUNAGE", nullable = false)
	private int minimunAge;
	
	@Column(name = "CATEGORY", nullable = false)
	private String category;
	
	@Column(name = "TYPE", nullable = false)
	private String type;
	
	@Column(name = "TARGETAUDIENCE", nullable = false)
	private String targetAudience;
	
	@Column(name = "MAXIMUNCAPACITY", nullable = false)
	private String maximunCapacity;
	
	@Column(name = "EVENTSTATUS", nullable = false)
	private String eventStatus;
	
	@Column(name = "CITY", nullable = false)
	private String city;
	
	@Column(name = "STATE", nullable = false)
	private String state;
	
	@Column(name = "ZIPCODE", nullable = false)
	private String zipCode;
	
	@Column(name = "STEET", nullable = false)
	private String street;
	
	@Column(name = "NUMBER", nullable = false)
	private String number;
	
	@Column(name = "NEIGHBORHOOD", nullable = false)
	private String neighBorhood;
	
	@Column(name = "LONGITUDE", nullable = false)
	private String longitude;
	
	@Column(name = "Latitude", nullable = false)
	private String latitude;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMainPhoto() {
		return mainPhoto;
	}

	public void setMainPhoto(String mainPhoto) {
		this.mainPhoto = mainPhoto;
	}

	public String getPhotos() {
		return photos;
	}

	public void setPhotos(String photos) {
		this.photos = photos;
	}

	public Date getEventDate() {
		return eventDate;
	}

	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getMinimunAge() {
		return minimunAge;
	}

	public void setMinimunAge(int minimunAge) {
		this.minimunAge = minimunAge;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTargetAudience() {
		return targetAudience;
	}

	public void setTargetAudience(String targetAudience) {
		this.targetAudience = targetAudience;
	}

	public String getMaximunCapacity() {
		return maximunCapacity;
	}

	public void setMaximunCapacity(String maximunCapacity) {
		this.maximunCapacity = maximunCapacity;
	}

	public String getEventStatus() {
		return eventStatus;
	}

	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getNeighBorhood() {
		return neighBorhood;
	}

	public void setNeighBorhood(String neighBorhood) {
		this.neighBorhood = neighBorhood;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}	
}
