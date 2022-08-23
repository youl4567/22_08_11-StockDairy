package com.youl.app.persistence;

import com.youl.app.model.UserVO;

public interface UserDao extends GenericDao<UserVO, String>{

	public void create_user_table();
}
