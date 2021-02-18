package kr.co.kpcdt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kpcdt.dao.SurveyDAO;
import kr.co.kpcdt.model.Survey;
import kr.co.kpcdt.service.SurveyService;

@Service
public class SurveyServiceImpl implements SurveyService {
	@Autowired
	private SurveyDAO surveyDAO;

	@Override
	public Survey getSurvey(Survey survey) {
		return surveyDAO.getSurvey(survey);
	}
	
	@Override
	public Survey getSurveyTotalCount(Survey survey) {
		return surveyDAO.getSurveyTotalCount(survey);
	}
	
	@Override
	public List<Survey> SurveyList(Survey survey){
		return surveyDAO.SurveyList(survey);
	}
	
	@Override
	public int resultInsert(Survey survey) {
		return surveyDAO.resultInsert(survey);
	}
}
