package com.youl.app.service;

import com.youl.app.model.UserVO;
import com.youl.app.persistence.UserDao;

public interface UserService extends UserDao {
	public UserVO login(UserVO userVO);
	public UserVO join(UserVO userVO);
} 
