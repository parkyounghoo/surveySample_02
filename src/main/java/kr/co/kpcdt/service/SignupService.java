package kr.co.kpcdt.service;

import java.util.List;

import kr.co.kpcdt.model.Member;
import kr.co.kpcdt.model.Signup;

public interface SignupService {
	public List<Signup> getKsicMain();
	
	public List<Signup> getKsicSub(String ksicCode);
	
	public int insertUser(Member member);
}
