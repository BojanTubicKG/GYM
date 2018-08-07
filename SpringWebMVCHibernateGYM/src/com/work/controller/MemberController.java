package com.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.work.entity.Member;
import com.work.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService; 
	
	
	@RequestMapping(value="/addMember")
	public String DispleyAddMemberForm(Model model){	
		Member member=new Member();
		model.addAttribute("member", member);
		return "AddMember";
	}
	@RequestMapping(value="/saveProcess")
	public String saveProcess(@ModelAttribute("member")Member member,Model model){
		
		memberService.saveMemberObj(member);
		List<Member>listOfMembers=memberService.getAllMembers();
		model.addAttribute("theMembers", listOfMembers);

		
		return"ListMembers";
	}
	
	@RequestMapping(value="/ListMembers")
	public String getAllMembers(Model model){
		
		List<Member>listOfMembers=memberService.getAllMembers();
		model.addAttribute("theMembers", listOfMembers);
		return "ListMembers";
	}
	
	@RequestMapping(value="/showUpdateForm")
	public String showUpdateForm(@RequestParam("memberId") Integer memberId,Model model){
		
		Member member=findById(memberId);
		model.addAttribute("member", member);
		return "AddMember";
	}
	
	@RequestMapping(value="/deleteRecord")
	public String deleteMemberObj(@RequestParam("memberId") Integer memberId,Model model){
		Member member=findById(memberId);
		memberService.deleteMemberObj(member);
		
		return "redirect:/ListMembers";
	}
	
	private Member findById(Integer memberId){
		Member member=memberService.getMemberObjById(memberId);
		return member;
	}
}
