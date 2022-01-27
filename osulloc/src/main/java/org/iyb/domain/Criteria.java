package org.iyb.domain;
public class Criteria {
	private int pageNum;//페이징번호
	private int amount;//한 페이지당 게시물 갯수
	private String search;//검색종류
	private String keyword;//검색키워드
	
	//기본생성자
	Criteria(){
		this(1,10);//1페이지에 10개
	}
	//생성자 호출
	Criteria(int pageNum, int amount){
		this.pageNum=pageNum;
		this.amount=amount;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", search=" + search + ", keyword=" + keyword
				+ "]";
	}
}
