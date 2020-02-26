package com.wrd.movie.vo;

import com.wrd.movie.domain.Movie;

public class MovieVo extends Movie{

	private Integer pageNum;
	
	private Double p1;//开始价格
	private Double p2;//结束价格
	
	private Integer l1;//开始时间长度
	private Integer l2;//结束时间长度
	
	private String t1;//开始上映时间
	private String t2;//结束上映时间
	
	private String orderName;//平行线名称
	private String orderMethod;//排序方式
	
	public Integer getPageNum() {
		return pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	public Double getP1() {
		return p1;
	}
	public void setP1(Double p1) {
		this.p1 = p1;
	}
	public Double getP2() {
		return p2;
	}
	public void setP2(Double p2) {
		this.p2 = p2;
	}
	public Integer getL1() {
		return l1;
	}
	public void setL1(Integer l1) {
		this.l1 = l1;
	}
	public Integer getL2() {
		return l2;
	}
	public void setL2(Integer l2) {
		this.l2 = l2;
	}
	public String getT1() {
		return t1;
	}
	public void setT1(String t1) {
		this.t1 = t1;
	}
	public String getT2() {
		return t2;
	}
	public void setT2(String t2) {
		this.t2 = t2;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderMethod() {
		return orderMethod;
	}
	public void setOrderMethod(String orderMethod) {
		this.orderMethod = orderMethod;
	}
	@Override
	public String toString() {
		return "MovieVo [pageNum=" + pageNum + ", p1=" + p1 + ", p2=" + p2 + ", l1=" + l1 + ", l2=" + l2 + ", t1=" + t1
				+ ", t2=" + t2 + ", orderName=" + orderName + ", orderMethod=" + orderMethod + "]";
	}
	public MovieVo(Integer pageNum, Double p1, Double p2, Integer l1, Integer l2, String t1, String t2,
			String orderName, String orderMethod) {
		super();
		this.pageNum = pageNum;
		this.p1 = p1;
		this.p2 = p2;
		this.l1 = l1;
		this.l2 = l2;
		this.t1 = t1;
		this.t2 = t2;
		this.orderName = orderName;
		this.orderMethod = orderMethod;
	}
	
	public MovieVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
