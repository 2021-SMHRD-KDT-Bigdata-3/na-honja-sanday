package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface nahonsanMapper {

	//로그인 임시
	public memberVO login(memberVO login);
	
	//회원가입
	public void join(memberVO vo); //회원가입은 가지고 오는 값이 없어서
	public void join2(guardianVO vo);
	
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


