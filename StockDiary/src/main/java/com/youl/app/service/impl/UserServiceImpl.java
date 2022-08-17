package com.youl.app.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.youl.app.model.UserVO;
import com.youl.app.persistence.UserDao;
import com.youl.app.service.UserService;

@Service("userServiceV1")
public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<UserVO> selectAll() {
		List<UserVO> userList = userDao.selectAll();
		return userList;
	}

	public UserVO findByID(String ID) {
		return userDao.findByID(ID);
	}

	public UserVO join(UserVO userVO) {
		List<UserVO> userList = userDao.selectAll();
		userDao.insert(userVO);
		return null;
	}

	public UserVO login(UserVO userVO) {

		String username = userVO.getUsername();
		String password = userVO.getPassword();
		
		return userVO;
	}

	public int insert(UserVO vo) {

		return 0;
	}

	public int update(UserVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(UserVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
