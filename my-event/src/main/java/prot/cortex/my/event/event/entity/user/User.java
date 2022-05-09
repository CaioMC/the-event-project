package prot.cortex.my.event.event.entity.user;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import prot.cortex.my.event.event.model.UserModel;

@Entity
@Table(name = "USER")
public class User implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "ID", nullable = true)
	private Integer Id;
	
	@Column(name = "NAME", nullable = false)
	private String name;
	
	@Column(name = "LASTNAME", nullable = true)
	private String lastName;
	
	@Column(name = "CPF", nullable = true)
	private Long cpf;
	
	@Column(name = "EMAIL", nullable = true)
	private String EMAIL;
	
	@Column(name = "PHONE", nullable = true)
	private Long phone;
	
	@Column(name = "BIRTHDATE", nullable = true)
	private Date birthDate;
	
	@Column(name = "SEX", nullable = true)
	private String sex;
	
	@Column(name = "PASSWORD", nullable = true)
	private String password;

	@Column(name = "LASTPASSWORD", nullable = true)
	private String lastPassword;
	
	@Column(name = "LASTEDIT", nullable = true)
	private Date lastEdit;
	
	@Column(name = "PHOTO", nullable = true)
	private String photo;
	
	@Column(name = "BANNERPHOTO", nullable = true)
	private String bannerPhoto;

	
	public void parser(UserModel userModel) {
		this.Id = userModel != null ? userModel.getId() : null;
		this.name = userModel != null ? userModel.getName() : null;
		this.lastName = userModel != null ? userModel.getLastName() : null;
		this.cpf = userModel != null ? userModel.getCpf() : null;
		this.EMAIL = userModel != null ? userModel.getEMAIL() : null;
		this.phone = userModel != null ? userModel.getPhone() : null;
		this.birthDate = userModel != null ? userModel.getBirthDate() : null;
		this.sex = userModel != null ? userModel.getSex() : null;
		this.password = userModel != null ? userModel.getSex() : null;
		this.lastPassword = userModel != null ? userModel.getPassword() : null;
		this.lastEdit = userModel != null ? userModel.getLastEdit() : null;
		this.photo = userModel != null ? userModel.getPhoto() : null;
		this.bannerPhoto = userModel != null ? userModel.getBannerPhoto() : null;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
