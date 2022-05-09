package prot.cortex.my.event.event.entity.publisher;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PUBLISHER")
public class Publisher implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name = "ID", nullable = false)
	private Integer Id;
	
	@Column(name = "NAME", nullable = false)
	private String name;
	
	@Column(name = "CNPJ", nullable = false)
	private int cnpj;
	
	@Column(name = "EMAIL", nullable = true)
	private String email;
	
	@Column(name = "PHONE", nullable = true)
	private int phone;
	
	@Column(name = "COMPANYSIZE", nullable = true)
	private String companySize;
	
	@Column(name = "BIO", nullable = true)
	private String bio;
	
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

	public int getCnpj() {
		return cnpj;
	}

	public void setCnpj(int cnpj) {
		this.cnpj = cnpj;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
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
