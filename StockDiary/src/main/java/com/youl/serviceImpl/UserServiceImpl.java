package com.youl.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.youl.app.model.UserVO;
import com.youl.app.persistence.UserDao;
import com.youl.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	private UserDao userDao;
	
	@Autowired
	public List<UserVO> selectAll() {
		List<UserVO> userList =  userDao.selectAll();
		return userList;
	}

	public UserVO findByID(String ID) {
		return userDao.findByID(ID);
	}

	public UserVO join(UserVO userVO) {
		userDao.insert(userVO);
		return null;
	}

	public UserVO login(UserVO userVO) {
		
		return null;
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
