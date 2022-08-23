package com.youl.app.persistence;

import java.util.List;

import com.youl.app.model.BoardVO;

public interface BoardDao extends GenericDao<BoardVO, String> {


		public BoardVO findByNumber(int number);
		public List<BoardVO> findByTitle(String title);
		public List<BoardVO> findByContent(String content);
		
		public int deleteByNum(String id);
		
}
