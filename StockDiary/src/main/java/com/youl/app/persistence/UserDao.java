package com.youl.app.persistence;

import com.youl.app.model.UserVO;

public interface UserDao extends GenericDao<UserVO, String>{
	
	UserVO join(UserVO userVO);
	UserVO login(UserVO userVO);
		

}
