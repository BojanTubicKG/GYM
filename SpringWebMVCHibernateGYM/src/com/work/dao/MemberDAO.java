package com.work.dao;

import java.util.List;

import com.work.entity.Member;

public interface MemberDAO {

	public void saveMemberObj(Member member);

	public List<Member> getAllMembers();

	public Member getMemberObjById(Integer memberId);

	public void deleteMemberObj(Member member);

}
