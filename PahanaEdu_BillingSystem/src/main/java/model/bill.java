package model;

public class bill {
	private int billid;
	private String billnum;
	private String date;
	private String time;
	private int totalitems;
	private int total;
	private int points;
	private int cusid;
	private String cusnic;
	
	
	public int getBillid() {
		return billid;
	}
	public void setBillid(int billid) {
		this.billid = billid;
	}
	public String getBillnum() {
		return billnum;
	}
	public void setBillnum(String billnum) {
		this.billnum = billnum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getTotalitems() {
		return totalitems;
	}
	public void setTotalitems(int totalitems) {
		this.totalitems = totalitems;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public int getCusid() {
		return cusid;
	}
	public void setCusid(int cusid) {
		this.cusid = cusid;
	}
	public String getCusnic() {
		return cusnic;
	}
	public void setCusnic(String cusnic) {
		this.cusnic = cusnic;
	}

}
