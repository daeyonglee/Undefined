package kr.co.udf.article.domain;

public class Criteria {
	private int page;
	private int perPageNum;
	private int board_no;
	
	public Criteria() {
		page=1;
		perPageNum=10;
		board_no=1;
	}

	public Criteria(int page, int perPageNum, int board_no) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
		this.board_no = board_no;
	}

	public int getPage() {
		return page;
	}
	
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getPerPageNum() {
		return perPageNum;
	}
	
	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
	
	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", board_no=" + board_no + "]";
	}
}
