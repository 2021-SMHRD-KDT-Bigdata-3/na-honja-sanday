package com.smhrd.mapper;

public interface nahonsanMapper {

	//public testVO login(testVO test);
	
	public guardianVO login(guardianVO guardian);
	public welfare_workerVO login(welfare_workerVO welfare_worker);
	
	public loginVO login(loginVO login);
	
	public void join(loginVO vo); //회원가입은 가지고 오는 값이 없어서
	public void join2(guardianVO vo);
	
}


