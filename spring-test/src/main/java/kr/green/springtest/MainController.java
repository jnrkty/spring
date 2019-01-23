package kr.green.springtest;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.springtest.service.AccountService;
import kr.green.springtest.vo.AccountVo;


@Controller
public class MainController {
	@Autowired
	AccountService accountService;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeGet(Model model) {
		return "home";
	}
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String homePost(Model model, AccountVo loginInfo) {
		AccountVo user = accountService.signin(loginInfo);
		model.addAttribute("user",user);
		System.out.println(user);
		return "redirect:/";
	}
	
}
