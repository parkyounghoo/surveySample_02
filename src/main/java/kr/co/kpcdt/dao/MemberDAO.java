package kr.co.kpcdt.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import kr.co.kpcdt.model.Member;
import kr.co.kpcdt.model.Signup;

@Component
public interface MemberDAO {
	public int IsLogin(Member member);
	
	public int IdCheck(Member member);
	
	public int insertUser(Member member);
	
	public List<Signup> getKsicMain();
	
	public List<Signup> getKsicSub(String ksicCode);
	
	public Member getPassword(Member member);
	public Member getuserName(Member member);
	public Member getPasswordCount(Member member);
}

