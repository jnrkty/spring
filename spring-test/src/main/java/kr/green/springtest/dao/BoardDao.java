package kr.green.springtest.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.springtest.vo.BoardVo;

public interface BoardDao {

	public List<BoardVo> getBoards();

	public void setBoard(@Param("board")BoardVo board);

	public BoardVo getBoard(@Param("id")Integer id);

	public void updateBoard(@Param("board")BoardVo board);

}
