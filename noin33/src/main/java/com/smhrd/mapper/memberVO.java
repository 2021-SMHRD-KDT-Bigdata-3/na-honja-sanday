package com.smhrd.mapper;

import lombok.Data;

@Data
public class memberVO {

	public String id;
	public String password;
	public String seperator;
	
	public memberVO() {
	}
	
	
	public memberVO(String id, String password) {
		this.id = id;
		this.password = password;
	}
	
	
}
