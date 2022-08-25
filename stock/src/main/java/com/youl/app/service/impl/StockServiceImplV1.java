package com.youl.app.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.youl.app.model.StockVO;
import com.youl.app.persistence.StockDao;
import com.youl.app.service.StockService;

@Service
public class StockServiceImplV1 implements StockService {

	private final StockDao stockDao;
	public StockServiceImplV1(StockDao stockDao) {
		this.stockDao = stockDao;
	}

	@Override
	public List<StockVO> selectAll() {
		List<StockVO> stockList = stockDao.selectAll();
		return stockList;
	}

	@Override
	public StockVO findById(String id) {
		
		return null;
	}

	@Override
	public int insert(StockVO vo) {
		stockDao.insert(vo);
		
		return 0;
	}

	@Override
	public int update(StockVO vo) {
		stockDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String s_num) {
		stockDao.delete(s_num);
		return 0;
	}

}
