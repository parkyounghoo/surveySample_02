package kr.co.kpcdt.service;

import kr.co.kpcdt.model.Member;

public interface MemberService {
	public int IsLogin(Member member);
	
	public int IdCheck(Member member);
	
	public Member getPassword(Member member);
	
	public Member getuserName(Member member);
	
	public Member getPasswordCount(Member member);
}
