package kr.co.kpcdt.model;

public class Member {
	public String id;
	public String password;
	public String name;
	public String company;
	public String companyNo;
	public String birth;
	public String address;
	public String email;
	public String telNo;
	public String ksicMain;
	public String ksicSub;
	public String telNoComp;
	public String createDate;
	public int count;
	
	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	public String getTelNoComp() {
		return telNoComp;
	}
	public void setTelNoComp(String telNoComp) {
		this.telNoComp = telNoComp;
	}
	
	public String getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}
	
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	
	public String getKsicMain() {
		return ksicMain;
	}
	public void setKsicMain(String ksicMain) {
		this.ksicMain = ksicMain;
	}
	
	public String getKsicSub() {
		return ksicSub;
	}
	public void setKsicSub(String ksicSub) {
		this.ksicSub = ksicSub;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
