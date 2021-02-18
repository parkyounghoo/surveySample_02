package kr.co.kpcdt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kpcdt.dao.MemberDAO;
import kr.co.kpcdt.model.Member;
import kr.co.kpcdt.model.Signup;
import kr.co.kpcdt.service.SignupService;

@Service
public class SignupServiceImpl implements SignupService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public List<Signup> getKsicMain() {
		return memberDAO.getKsicMain();
	}
	
	@Override
	public List<Signup> getKsicSub(String ksicCode) {
		return memberDAO.getKsicSub(ksicCode);
	}
	
	@Override
	public int insertUser(Member member) {
		return memberDAO.insertUser(member);
	}
}
