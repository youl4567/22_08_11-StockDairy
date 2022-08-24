package com.youl.app.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.youl.app.model.BoardVO;
import com.youl.app.persistence.BoardDao;
import com.youl.app.service.BoardService;

@Service
public class BoardServiceImplV1 implements BoardService{

	private final BoardDao boardDao;
	public BoardServiceImplV1(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	
	@Override
	public BoardVO findByNumber(int b_num) {

		
		return boardDao.findByNumber(b_num);
	}

	@Override
	public List<BoardVO> findByTitle(String b_title) {
		// TODO Auto-generated method stub
		return boardDao.findByTitle(b_title);
	}

	@Override
	public List<BoardVO> findByContent(String content) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteByNum(String b_num) {

		int ret = boardDao.deleteByNum(b_num);
		return ret;
	}

	@Override
	public List<BoardVO> selectAll() {
		List<BoardVO> boardList = boardDao.selectAll();
		
		return boardList;
	}

	@Override
	public BoardVO findById(String id) {

		return null;
	}

	@Override
	public int insert(BoardVO vo) {
		boardDao.insert(vo);
		return 0;
	}

	@Override
	public int update(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
