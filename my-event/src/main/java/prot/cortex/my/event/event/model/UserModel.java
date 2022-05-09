package prot.cortex.my.event.event.model;

import java.util.Date;

public class UserModel {
	
	private Integer Id;
	
	private String name;
	
	private String lastName;
	
	private Long  cpf;
	
	private String EMAIL;
	
	private Long phone;
	
	private Date birthDate;
	
	private String sex;
	
	private String password;

	private String lastPassword;
	
	private Date lastEdit;
	
	private String photo;
	
	private String bannerPhoto;
	
	public UserModel() {}

	public UserModel(Integer id, String name, String lastName, Long cpf, String eMAIL, Long phone, Date birthDate,
			String sex, String password, String lastPassword, Date lastEdit, String photo, String bannerPhoto) {
		Id = id;
		this.name = name;
		this.lastName = lastName;
		this.cpf = cpf;
		EMAIL = eMAIL;
		this.phone = phone;
		this.birthDate = birthDate;
		this.sex = sex;
		this.password = password;
		this.lastPassword = lastPassword;
		this.lastEdit = lastEdit;
		this.photo = photo;
		this.bannerPhoto = bannerPhoto;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Long getCpf() {
		return cpf;
	}

	public void setCpf(Long cpf) {
		this.cpf = cpf;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public Long getPhone() {
		return phone;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLastPassword() {
		return lastPassword;
	}

	public void setLastPassword(String lastPassword) {
		this.lastPassword = lastPassword;
	}

	public Date getLastEdit() {
		return lastEdit;
	}

	public void setLastEdit(Date lastEdit) {
		this.lastEdit = lastEdit;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getBannerPhoto() {
		return bannerPhoto;
	}

	public void setBannerPhoto(String bannerPhoto) {
		this.bannerPhoto = bannerPhoto;
	}
}
