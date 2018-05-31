package kr.co.udf.board.domain;

public class Board {

	private Integer board_no;
	private String board_nm;
	private String regdate;
	private String updatedate;
	
	public Board() {
		super();
	}

	public Board(Integer board_no, String board_nm, String regdate, String updatedate) {
		super();
		this.board_no = board_no;
		this.board_nm = board_nm;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public Integer getBoard_no() {
		return board_no;
	}

	public void setBoard_no(Integer board_no) {
		this.board_no = board_no;
	}

	public String getBoard_nm() {
		return board_nm;
	}

	public void setBoard_nm(String board_nm) {
		this.board_nm = board_nm;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}

	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_nm=" + board_nm + ", regdate=" + regdate + ", updatedate="
				+ updatedate + "]";
	}

}
