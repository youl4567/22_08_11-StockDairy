package com.youl.app.persistence;

import java.util.List;

public interface GenericDao<VO,PK> {
	
	public List<VO> selectAll();
	public VO findByID(PK ID);
	
	public int insert(VO vo);
	public int update(VO vo);
	public int delete(VO vo);

	
}
