package kr.green.springtest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.springtest.dao.BoardDao;
import kr.green.springtest.vo.AccountVo;
import kr.green.springtest.vo.BoardVo;

@Service
public class BoardServiceImp implements BoardService{
	@Autowired
	BoardDao boardDao;

	@Override
	public List<BoardVo> getBoards() {
		return boardDao.getBoards();
	}

	@Override
	public void registerBoard(BoardVo board) {
		// TODO Auto-generated method stub
		boardDao.setBoard(board);
		
	}

	@Override
	public BoardVo detailBoard(Integer id) {
		if(id == null)
			return null;
		return boardDao.getBoard(id);
	}
	
	@Override
	public void deleteBoard(Integer id, AccountVo user) {
		BoardVo board = boardDao.getBoard(id);
		// 1. 해당 id를 가진 게시글이없거나 이미 삭제된 경우이면 바로 종료
		// 2. 로그인한 유저가 게시판 작성자가 아닌 경우
		if(board == null
				|| !board.getWriter().equals(user.getId()))return;
		board.setState("D");
		//boardDao에 updateBoard를 만들어 놓으면 게시판을 삭제할 때와 수정할 때 모두 쓰일 수 있기 때문에 deleteBoard가 아닌 updateBoard로 한다
		boardDao.updateBoard(board);
	}

	@Override
	public boolean modifyBoard(BoardVo board, AccountVo user) {
		BoardVo oriBoard = boardDao.getBoard(board.getId());
		if(oriBoard == null || !oriBoard.getWriter().equals(user.getId()))
			return false;
		board.setRegistered_date(oriBoard.getRegistered_date());
		board.setState(oriBoard.getState());
		boardDao.updateBoard(board);
		return true;
	}

	
}
