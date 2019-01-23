package kr.green.springtest.dao;

import java.util.List;

import kr.green.springtest.vo.BoardVo;

public interface BoardDao {

	public List<BoardVo> getBoards();

}
