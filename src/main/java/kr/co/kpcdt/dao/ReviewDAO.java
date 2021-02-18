package kr.co.kpcdt.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import kr.co.kpcdt.model.AbilityEvl;

@Component
public interface ReviewDAO {
	public List<AbilityEvl> AbilityEvl(String id);
	
	public List<AbilityEvl> AbilityEvlDetail(AbilityEvl abilityEvl);
	
	public List<AbilityEvl> getrangeText(String id);
	
	public List<AbilityEvl> getrangeParentText(String id);
	
	public List<AbilityEvl> getrangeLevelText(String id);
	
	public List<AbilityEvl> getCmprList(AbilityEvl abilityEvl);
	
	public List<AbilityEvl> getCmprList2(AbilityEvl abilityEvl);
	
	public List<AbilityEvl> getCmprDesc(AbilityEvl abilityEvl);
	
	public List<AbilityEvl> getCmprAsc(AbilityEvl abilityEvl);
	
	public AbilityEvl resultDesc(AbilityEvl abilityEvl);
	
	public AbilityEvl getMatrix(AbilityEvl abilityEvl);
}
