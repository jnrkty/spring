package kr.green.springtest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	@RequestMapping(value="/bbs/list")
	public String list() {
		return "bbs/list";
	}

}
