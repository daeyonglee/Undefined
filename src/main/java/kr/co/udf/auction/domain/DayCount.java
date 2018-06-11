package kr.co.udf.auction.domain;

public class DayCount {

	private String day;
	private String si;
	private String min;
	private String sec;
	
	public DayCount() {
		// TODO Auto-generated constructor stub
	}

	public DayCount(String day, String si, String min, String sec) {
		super();
		this.day = day;
		this.si = si;
		this.min = min;
		this.sec = sec;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getSi() {
		return si;
	}

	public void setSi(String si) {
		this.si = si;
	}

	public String getMin() {
		return min;
	}

	public void setMin(String min) {
		this.min = min;
	}

	public String getSec() {
		return sec;
	}

	public void setSec(String sec) {
		this.sec = sec;
	}

	@Override
	public String toString() {
		return "DayCount [day=" + day + ", si=" + si + ", min=" + min + ", sec=" + sec + "]";
	}
}
