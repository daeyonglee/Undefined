package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class Kakao {

	private BigDecimal id;
	private String userNo;
	private String nickname;
	private String profileImage;
	private String thumbnailImage;
	
	public Kakao() {
		// TODO Auto-generated constructor stub
	}

	public Kakao(BigDecimal id, String userNo, String nickname, String profileImage, String thumbnailImage) {
		super();
		this.id = id;
		this.userNo = userNo;
		this.nickname = nickname;
		this.profileImage = profileImage;
		this.thumbnailImage = thumbnailImage;
	}

	public BigDecimal getId() {
		return id;
	}

	public void setId(BigDecimal id) {
		this.id = id;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}

	public String getThumbnailImage() {
		return thumbnailImage;
	}

	public void setThumbnailImage(String thumbnailImage) {
		this.thumbnailImage = thumbnailImage;
	}

	@Override
	public String toString() {
		return "Kakao [id=" + id + ", userNo=" + userNo + ", nickname=" + nickname + ", profileImage=" + profileImage
				+ ", thumbnailImage=" + thumbnailImage + "]";
	}
}
