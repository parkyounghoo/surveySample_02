package kr.co.kpcdt.controller;

import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.kpcdt.model.AbilityEvl;
import kr.co.kpcdt.model.ApiRequestResult;
import kr.co.kpcdt.model.Member;
import kr.co.kpcdt.model.Signup;
import kr.co.kpcdt.model.Survey;
import kr.co.kpcdt.service.MemberService;
import kr.co.kpcdt.service.ReviewService;
import kr.co.kpcdt.service.SignupService;
import kr.co.kpcdt.service.SurveyService;

@RestController
@RequestMapping("/api")
public class ApiController {
	@Autowired
	private MemberService memberService;

	@Autowired
	private SignupService signupService;
	
	@Autowired
	private SurveyService surveyService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private HttpSession session;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ApiRequestResult Login(Member member) {
		try {
			int resultCode = 0;
			if (memberService.IsLogin(member) > 0) {
				resultCode = 1;
				session.setAttribute("loginId", member.id);
			}
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("resultCode", resultCode);

			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public ApiRequestResult idCheck(Member member) {
		try {
			int resultCode = 0;
			if (memberService.IdCheck(member) > 0) {
				resultCode = 1;
			}
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("resultCode", resultCode);

			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/ksicSub", method = RequestMethod.POST)
	public ApiRequestResult ksicSub(String ksicCode) {
		try {
			List<Signup> ksicSub = null;
			ksicSub = signupService.getKsicSub(ksicCode);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("ksicSub", ksicSub);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ApiRequestResult ksicSub(Member member) {
		try {
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
			Date time = new Date();
			String date = format1.format(time);
			member.createDate = date;
			
			int resultCode = 0;
			
			if (signupService.insertUser(member) > 0) {
				resultCode = 1;
			};

			Map<String, Object> result = new HashMap<String, Object>();
			result.put("resultCode", resultCode);

			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/custFind", method = RequestMethod.POST)
	public ApiRequestResult getPassword(Member member) {
		try {
			
			String password = "";
			if (memberService.IdCheck(member) > 0) {
				password = memberService.getPassword(member).password;
			}
			else {
				password = "fail";
			}
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("password", password);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/getuserName", method = RequestMethod.POST)
	public ApiRequestResult getuserName(Member member) {
		try {
			Member model = memberService.getuserName(member);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("member", model);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/getSurvey", method = RequestMethod.POST)
	public ApiRequestResult getSurvey(Survey survey) {
		try {
			Survey model = surveyService.getSurvey(survey);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("survey", model);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/getSurveyTotalCount", method = RequestMethod.POST)
	public ApiRequestResult getSurveyTotalCount(Survey survey) {
		try {
			Survey model = surveyService.getSurveyTotalCount(survey);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("cnt", model);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/resultInsert", method = RequestMethod.POST)
	public ApiRequestResult resultInsert(Survey Survey) {
		try {
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
			Date time = new Date();
			String date = format1.format(time);
			Survey.createDate = date;
			
			int resultCode = 0;
			
			if (surveyService.resultInsert(Survey) > 0) {
				resultCode = 1;
			};

			Map<String, Object> result = new HashMap<String, Object>();
			result.put("resultCode", resultCode);

			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/SurveyList", method = RequestMethod.POST)
	public ApiRequestResult SurveyList(Survey survey) {
		try {
			List<Survey> list = surveyService.SurveyList(survey);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("surveyList", list);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/AbilityEvlDetail", method = RequestMethod.POST)
	public ApiRequestResult AbilityEvlDetail(AbilityEvl abilityEvl) {
		try {
			List<AbilityEvl> list = reviewService.AbilityEvlDetail(abilityEvl);
			
			Map<String, Object> result = new HashMap<String, Object>();
			
			result.put("AbilityEvlList", list);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/resultDesc", method = RequestMethod.POST)
	public ApiRequestResult resultDesc(AbilityEvl abilityEvl) {
		try {
			AbilityEvl model = reviewService.resultDesc(abilityEvl);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("AbilityEvlText", model);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return new ApiRequestResult(ex);
		}
	}

	@RequestMapping(value = "/getCmprList", method = RequestMethod.POST)
	public ApiRequestResult getCmprList(AbilityEvl abilityEvl) {
		try {
			
			List<AbilityEvl> CmprAsc = reviewService.getCmprAsc(abilityEvl);
			List<AbilityEvl> CmprDesc = reviewService.getCmprDesc(abilityEvl);
			
			List<AbilityEvl> CmprList = reviewService.getCmprList(abilityEvl);
			
			Map<String, Object> result = new HashMap<String, Object>();

			result.put("CmprList", CmprList);
			result.put("CmprDesc", CmprDesc);
			result.put("CmprAsc", CmprAsc);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
	
	@RequestMapping(value = "/getMatrixList", method = RequestMethod.POST)
	public ApiRequestResult getMatrixList(AbilityEvl abilityEvl) {
		try {
			
			List<AbilityEvl> AbilityEvlList = reviewService.AbilityEvl(abilityEvl.id);
			
			abilityEvl.capCode = "1";
			abilityEvl.matrixScoreX = Double.parseDouble(AbilityEvlList.get(0).resultAvg);
			abilityEvl.matrixScoreY = Double.parseDouble(AbilityEvlList.get(1).resultAvg);
			AbilityEvl MatrixList1 = reviewService.getMatrix(abilityEvl);
			
			abilityEvl.capCode = "2";
			abilityEvl.matrixScoreX = Double.parseDouble(AbilityEvlList.get(0).resultAvg);
			abilityEvl.matrixScoreY = Double.parseDouble(AbilityEvlList.get(4).resultAvg);
			AbilityEvl MatrixList2 = reviewService.getMatrix(abilityEvl);
			
			abilityEvl.capCode = "3";
			abilityEvl.matrixScoreX = Double.parseDouble(AbilityEvlList.get(2).resultAvg);
			abilityEvl.matrixScoreY = Double.parseDouble(AbilityEvlList.get(3).resultAvg);
			AbilityEvl MatrixList3 = reviewService.getMatrix(abilityEvl);
			
			Map<String, Object> result = new HashMap<String, Object>();

			result.put("AbilityEvl", AbilityEvlList);
			result.put("Matrix1", MatrixList1);
			result.put("Matrix2", MatrixList2);
			result.put("Matrix3", MatrixList3);
			return new ApiRequestResult(result);
		} catch (Exception ex) {
			return new ApiRequestResult(ex);
		}
	}
}
