package kr.co.udf.reply.domain;

public class Reply {
	private Integer reply_no;
	private Integer article_no;
	private String reply_content;
	private String user_nm;
	private String regdate;
	private String updatedate;
	
	public Reply() {
		// TODO Auto-generated constructor stub
	}

	public Reply(Integer reply_no, Integer article_no, String reply_content, String user_nm, String regdate,
			String updatedate) {
		super();
		this.reply_no = reply_no;
		this.article_no = article_no;
		this.reply_content = reply_content;
		this.user_nm = user_nm;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public Integer getReply_no() {
		return reply_no;
	}

	public void setReply_no(Integer reply_no) {
		this.reply_no = reply_no;
	}

	public Integer getArticle_no() {
		return article_no;
	}

	public void setArticle_no(Integer article_no) {
		this.article_no = article_no;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public String getUser_nm() {
		return user_nm;
	}

	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
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
		return "Reply [reply_no=" + reply_no + ", article_no=" + article_no + ", reply_content=" + reply_content
				+ ", user_nm=" + user_nm + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
}
