package com.work.service;

import java.util.List;

import com.work.entity.Member;

public interface MemberService {

	public void saveMemberObj(Member member);

	public List<Member> getAllMembers();

	public Member getMemberObjById(Integer memberId);

	public void deleteMemberObj(Member member);

}
