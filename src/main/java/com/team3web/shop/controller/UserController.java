package com.team3web.shop.controller;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team3web.shop.api.KakaoLoginBO;
import com.team3web.shop.api.NaverLoginBO;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class UserController {
	
	private NaverLoginBO naverLoginBO;
	private KakaoLoginBO kakaoLoginBO;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	@Autowired
	private void setKakaoLoginBO(KakaoLoginBO kakaoLoginBO) {
		this.kakaoLoginBO = kakaoLoginBO;
	}

    @Autowired
    private LoginController loginController;

    @RequestMapping(value = "/choiceRegister", method = RequestMethod.GET)
    public String choiceRegister(Model model, HttpSession session) {
    	String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
    	model.addAttribute("naverUrl", naverAuthUrl);

    	String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session);
    	model.addAttribute("kakaoUrl", kakaoAuthUrl);
        return "/user/choiceRegister";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(@RequestParam("id") String id, 
            @RequestParam("pw") String pw,
            @RequestParam("email") String email,
            @RequestParam("name") String name,
            @RequestParam("nickname") String nickname,
            @RequestParam("birthday") String birthday,
            @RequestParam("gender") String gender,
            @RequestParam("zipCode") String zipCode,
            @RequestParam("address") String address,
            @RequestParam("Address") String Address,
            Model model, HttpSession session) {
        String naverNickname = (String) session.getAttribute("naverNickname");
        String naverName = (String) session.getAttribute("naverName");
        String naverEmail = (String) session.getAttribute("naverEmail");
        String kakaoNickname = (String) session.getAttribute("kakaoNickname");
        String kakaoGender = (String) session.getAttribute("kakaoGender");
        String kakaoBirthday = (String) session.getAttribute("kakaoBirthday");
        String kakaoEmail = (String) session.getAttribute("kakaoEmail");

        if (naverName != null || kakaoNickname != null) {
            model.addAttribute("nickname", (naverNickname != null) ? naverNickname : kakaoNickname);
            model.addAttribute("email", (naverEmail != null) ? naverEmail : kakaoEmail);
            model.addAttribute("name", naverName);
            model.addAttribute("gender", kakaoGender);
            model.addAttribute("birthday", kakaoBirthday);
        }

        return "/user/register";
    }
    
    @RequestMapping(value = "/naver/user/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String userNaverCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
        return loginController.naverCallback(model, code, state, session);
    }

    @RequestMapping(value = "/kakao/user/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String userKakaoCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
        return loginController.kakaoCallback(model, code, state, session);
    }

}
