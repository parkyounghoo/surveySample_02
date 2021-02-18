package kr.co.kpcdt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kpcdt.dao.ReviewDAO;
import kr.co.kpcdt.model.AbilityEvl;
import kr.co.kpcdt.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public List<AbilityEvl> AbilityEvl(String id) {
		return reviewDAO.AbilityEvl(id);
	}
	
	@Override
	public List<AbilityEvl> AbilityEvlDetail(AbilityEvl abilityEvl){
		return reviewDAO.AbilityEvlDetail(abilityEvl);
	}
	
	@Override
	public List<AbilityEvl> getrangeText(String id){
		return reviewDAO.getrangeText(id);
	}
	
	@Override
	public List<AbilityEvl> getrangeParentText(String id){
		return reviewDAO.getrangeParentText(id);
	}
	
	@Override
	public List<AbilityEvl> getrangeLevelText(String id){
		return reviewDAO.getrangeLevelText(id);
	}
	
	@Override
	public List<AbilityEvl> getCmprList(AbilityEvl abilityEvl){
		return reviewDAO.getCmprList(abilityEvl);
	}
	
	@Override
	public List<AbilityEvl> getCmprList2(AbilityEvl abilityEvl){
		return reviewDAO.getCmprList2(abilityEvl);
	}
	
	@Override
	public List<AbilityEvl> getCmprDesc(AbilityEvl abilityEvl){
		return reviewDAO.getCmprDesc(abilityEvl);
	}
	
	@Override
	public List<AbilityEvl> getCmprAsc(AbilityEvl abilityEvl){
		return reviewDAO.getCmprAsc(abilityEvl);
	}
	
	@Override
	public AbilityEvl resultDesc(AbilityEvl abilityEvl) {
		return reviewDAO.resultDesc(abilityEvl);
	}
	
	@Override
	public AbilityEvl getMatrix(AbilityEvl abilityEvl) {
		return reviewDAO.getMatrix(abilityEvl);
	}
}
