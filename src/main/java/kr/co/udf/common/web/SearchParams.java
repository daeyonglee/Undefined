package kr.co.udf.common.web;

public class SearchParams extends Params {
	
	private String searchType;
	private String keyword;
	

	public SearchParams() {
		super();
	}

	public SearchParams(String searchType, String keyword) {
		super();
		this.searchType = searchType;
		this.keyword = keyword;
	}
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "SearchParams [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	
	

}
