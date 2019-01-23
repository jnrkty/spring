package kr.green.springtest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.green.springtest.service.BoardService;
import kr.green.springtest.vo.BoardVo;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	@RequestMapping(value="/bbs/list")
	public String list(Model model) {
		List<BoardVo> list = boardService.getBoards();
		model.addAttribute("list",list);
		return "bbs/list";
	}

}
