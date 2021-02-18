package kr.co.kpcdt.service;

import java.util.List;

import kr.co.kpcdt.model.Survey;

public interface SurveyService {
	public Survey getSurvey(Survey survey);
	
	public Survey getSurveyTotalCount(Survey survey);
	
	public List<Survey> SurveyList(Survey survey);
	
	public int resultInsert(Survey survey);
}
