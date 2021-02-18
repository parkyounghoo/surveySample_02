package kr.co.kpcdt.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import kr.co.kpcdt.model.Survey;

@Component
public interface SurveyDAO {
	public Survey getSurvey(Survey survey);
	
	public Survey getSurveyTotalCount(Survey survey);
	
	public List<Survey> SurveyList(Survey survey);
	
	public int resultInsert(Survey survey);
}