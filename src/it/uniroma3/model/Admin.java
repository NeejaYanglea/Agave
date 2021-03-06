package it.uniroma3.model;

import java.util.Date;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@NamedQuery(name = "findAllAdmins", query = "SELECT a FROM Admin a")
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String firstName;

	@Column(nullable = false)
	private String lastName;
	
	@Column(unique=true)
	@Pattern(regexp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")
	private String email;
	
	private String password;

	private String phoneNumber;

	@Temporal(TemporalType.DATE)
	private Date dateofBirth;

	@Temporal(TemporalType.DATE)
	private Date registrationDate;

	public Admin() {}

	public Admin(String firstName, String lastName, String email, String password,
			String phoneNumber, Date dateofBirth) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.dateofBirth = dateofBirth;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Date getDateofBirth() {
		return dateofBirth;
	}

	public void setDateofBirth(Date dateofBirth) {
		this.dateofBirth = dateofBirth;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public boolean equals(Admin admin) {

		if(this.firstName == admin.getFirstName() && this.lastName == admin.getLastName() &&
				this.dateofBirth == admin.getDateofBirth())
			return true;
		else return false;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", dateofBirth="
				+ dateofBirth + ", registrationDate=" + registrationDate
				+ "]";
	}


}
