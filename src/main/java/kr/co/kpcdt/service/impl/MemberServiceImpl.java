package kr.co.kpcdt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kpcdt.dao.MemberDAO;
import kr.co.kpcdt.model.Member;
import kr.co.kpcdt.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public int IsLogin(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.IsLogin(member);
	}
	
	@Override
	public int IdCheck(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.IdCheck(member);
	}
	
	@Override
	public Member getPassword(Member member) {
		return memberDAO.getPassword(member);
	}
	
	@Override
	public Member getuserName(Member member) {
		return memberDAO.getuserName(member);
	}
	
	@Override
	public Member getPasswordCount(Member member) {
		return memberDAO.getPassword(member);
	}
}
