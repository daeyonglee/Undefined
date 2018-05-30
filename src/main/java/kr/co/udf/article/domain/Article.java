package kr.co.udf.article.domain;

public class Article {
	private Integer article_no;
	private Integer board_no;
	private Integer user_no;
	private String article_head;
	private String article_title;
	private String article_content;
	private Integer hitcount;
	private Integer reply_no;
	private String regdate;
	private String updatedate;
	
	public Article() {
		super();
	}

	public Article(Integer article_no, Integer board_no, Integer user_no, String article_head, String article_title,
			String article_content, Integer hitcount, Integer reply_no, String regdate, String updatedate) {
		super();
		this.article_no = article_no;
		this.board_no = board_no;
		this.user_no = user_no;
		this.article_head = article_head;
		this.article_title = article_title;
		this.article_content = article_content;
		this.hitcount = hitcount;
		this.reply_no = reply_no;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public Integer getArticle_no() {
		return article_no;
	}

	public void setArticle_no(Integer article_no) {
		this.article_no = article_no;
	}

	public Integer getBoard_no() {
		return board_no;
	}

	public void setBoard_no(Integer board_no) {
		this.board_no = board_no;
	}

	public Integer getUser_no() {
		return user_no;
	}

	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}

	public String getArticle_head() {
		return article_head;
	}

	public void setArticle_head(String article_head) {
		this.article_head = article_head;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public Integer getHitcount() {
		return hitcount;
	}

	public void setHitcount(Integer hitcount) {
		this.hitcount = hitcount;
	}

	public Integer getReply_no() {
		return reply_no;
	}

	public void setReply_no(Integer reply_no) {
		this.reply_no = reply_no;
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
		return "Article [article_no=" + article_no + ", board_no=" + board_no + ", user_no=" + user_no
				+ ", article_head=" + article_head + ", article_title=" + article_title + ", article_content="
				+ article_content + ", hitcount=" + hitcount + ", reply_no=" + reply_no + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}
	
}
