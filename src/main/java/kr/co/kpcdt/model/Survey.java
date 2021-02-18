package kr.co.kpcdt.model;

public class Survey {
	public String id;
	public String capCode;
	public String capName;
	public String capListName;
	public String createDate;
	public String resultYn;
	public int capListNo;
	public int capOrder;
	public int capTotalCount;
	public int capResult;
	public int capResultCount;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getcapCode() {
		return capCode;
	}
	public void setcapCode(String capCode) {
		this.capCode = capCode;
	}
	
	public String getcapName() {
		return capName;
	}
	
	public void setcapName(String capName) {
		this.capName = capName;
	}
	
	public String getcapListName() {
		return capListName;
	}
	
	public void setcapListName(String capListName) {
		this.capListName = capListName;
	}
	
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	public String getresultYn() {
		return resultYn;
	}
	
	public void setresultYn(String resultYn) {
		this.resultYn = resultYn;
	}
	
	public int getcapListNo() {
		return capListNo;
	}
	public void setcapListNo(int capListNo) {
		this.capListNo = capListNo;
	}
	
	public int getcapOrder() {
		return capOrder;
	}
	
	public void setcapOrder(int capOrder) {
		this.capOrder = capOrder;
	}
	
	public int getcapTotalCount() {
		return capTotalCount;
	}
	
	public void setcapTotalCount(int capTotalCount) {
		this.capTotalCount = capTotalCount;
	}
	
	public int getcapResult() {
		return capResult;
	}
	
	public void setcapResult(int capResult) {
		this.capResult = capResult;
	}
	
	public int getcapResultCount() {
		return capResultCount;
	}
	
	public void setcapResultCount(int capResultCount) {
		this.capResultCount = capResultCount;
	}
}
