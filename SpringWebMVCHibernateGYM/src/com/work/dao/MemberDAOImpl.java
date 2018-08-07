package com.work.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.entity.Member;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveMemberObj(Member member) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(member);
		
	}

	@Override
	public List<Member> getAllMembers() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Member> theQuery=currentSession.createQuery("from Member").list();
		//return sessionFactory.getCurrentSession().createQuery("from Member").list();
		return theQuery;
	}

	@Override
	public Member getMemberObjById(Integer memberId) {
		
		Member member=(Member)sessionFactory.getCurrentSession().get(Member.class, memberId);
		return member;
	}

	@Override
	public void deleteMemberObj(Member member) {
		sessionFactory.getCurrentSession().delete(member);
		
	}

}
