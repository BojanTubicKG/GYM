package com.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.work.dao.MemberDAO;
import com.work.entity.Member;

@Service
public class MemberServiceImpo implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Override @Transactional
	public void saveMemberObj(Member member) {
		
		memberDAO.saveMemberObj(member);
	}

	@Override @Transactional
	public List<Member> getAllMembers() {
		
		return memberDAO.getAllMembers();
	}

	@Override @Transactional
	public Member getMemberObjById(Integer memberId) {
		return memberDAO.getMemberObjById(memberId);
	}

	@Override @Transactional
	public void deleteMemberObj(Member member) {
		
		memberDAO.deleteMemberObj(member);
	}

}
