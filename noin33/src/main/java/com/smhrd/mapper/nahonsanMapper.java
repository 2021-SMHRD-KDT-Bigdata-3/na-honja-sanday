package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface nahonsanMapper {

	//public testVO login(testVO test);
	
	public guardianVO login(guardianVO guardian);
	public welfare_workerVO login(welfare_workerVO welfare_worker);
	//신청 테이블 노인 추가
	public void addnoin(requestVO vo);
	//신청테이블 조회
	@Select("select * from request")//어노테이션으로 xml안써도 됨.
	public List<requestVO> selectall();
	//해당 번호를 가진  노인 정보 보여주기
	@Select("select * from request where idx = #{idx}")
	public requestVO selectone(int idx);
	//해당번호를 가진 노인을 관리 승인시  노인테이블에 데이터 넣고 신청테이블에선 삭제
	public void add_del(requestVO vo,int idx);
}
