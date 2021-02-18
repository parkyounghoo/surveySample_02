package kr.co.kpcdt.controller;

import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.kpcdt.service.ReviewService;
import kr.co.kpcdt.service.SignupService;
import kr.co.kpcdt.model.AbilityEvl;
import kr.co.kpcdt.model.Signup;
@Controller
public class MainController {
	@Autowired
	private HttpSession session;
	
	@Autowired
	private SignupService signupService;
	@Autowired
	private ReviewService reviewService;

	@RequestMapping(value = { "/test" }, method = RequestMethod.GET)
	public String test() {

		return "/testPage";
	}
	
	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index() {

		return "redirect:/Main";
	}

	@RequestMapping(value = { "/logout" }, method = RequestMethod.GET)
	public String logout() {
		session.setAttribute("loginId", null);
		return "redirect:/Main";
	}
	
    @RequestMapping(value="/Main", method = RequestMethod.GET)
    public String Main()
    {
    	return "/main/master";
    }
    
    @RequestMapping(value="/MainSurvey", method = RequestMethod.GET)
    public String MainSurvey()
    {
    	return "/main/masterSurvey";
    }

    @RequestMapping(value="/Survey", method = RequestMethod.GET)
    public String Survey(HttpServletRequest request)
    {
    	if (session.getAttribute("loginId") == null) {
            return "login/login";
         }
    	
    	return "survey/survey";
    }
    
    @RequestMapping(value="/Result", method = RequestMethod.GET)
    public String Result(HttpServletRequest request)
    {
    	String userId = new String(Base64.getDecoder().decode( request.getParameter("id")));
    	List<AbilityEvl> list = reviewService.AbilityEvl(userId);
    	List<AbilityEvl> listRange = reviewService.getrangeText(userId);
		List<AbilityEvl> listRangeLevel = reviewService.getrangeLevelText(userId);
    	
    	request.setAttribute("AbilityEvl", list);
    	request.setAttribute("RangeList", listRange);
    	request.setAttribute("RangeParentList", list);
    	request.setAttribute("RangeLevelList", listRangeLevel);

    	return "result/review";
    }

    @RequestMapping(value="/Signup", method = {RequestMethod.GET,RequestMethod.POST})
    public String Signup(HttpServletRequest request)
    {
    	return "signup/signup_1";
    }
    
    @RequestMapping(value="/Signup_1", method = {RequestMethod.GET,RequestMethod.POST})
    public String Signup_1(HttpServletRequest request)
    {
    	List<Signup> ksicMain = signupService.getKsicMain();
    	
    	request.setAttribute("ksicMain", ksicMain);
    	
    	return "signup/signup_2";
    }
    
    @RequestMapping(value="/Signup_2", method = {RequestMethod.GET,RequestMethod.POST})
    public String Signup_2(HttpServletRequest request)
    {
    	return "signup/signup_3";
    }
    
    @RequestMapping(value="/Login", method = RequestMethod.GET)
    public String Login(HttpServletRequest request)
    {
    	return "login/login";
    }
    
    @RequestMapping(value="/Custfind", method = RequestMethod.GET)
    public String Custfind(HttpServletRequest request)
    {
    	return "login/custfind";
    }
    
    @RequestMapping(value="/address", method = {RequestMethod.GET,RequestMethod.POST})
    public String address(HttpServletRequest request)
    {
    	return "signup/addressPopup";
    }
    
    @RequestMapping(value="/surveyPopup", method = {RequestMethod.GET,RequestMethod.POST})
    public String surveyPopup(HttpServletRequest request)
    {
    	return "survey/surveyPopup";
    }
    
    @RequestMapping(value="/adminSignup", method = {RequestMethod.GET,RequestMethod.POST})
    public String adminSignup(HttpServletRequest request)
    {
    	List<Signup> ksicMain = signupService.getKsicMain();
    	
    	request.setAttribute("ksicMain", ksicMain);
    	
    	return "signup/adminSignup";
    }
}
