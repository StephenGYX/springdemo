package com.springboot.service;

import com.springboot.bean.UserInfo;
import com.springboot.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService
{

	@Autowired
	private UserMapper userMapper;

	@Override
	public UserInfo findUser(UserInfo userInfo)
	{
		System.out.println("业务层:查找用户执行了....");
		UserInfo userInfo1 = userMapper.querySingleUser(userInfo);
		System.out.println(userInfo1.getUser_Name());
		return userInfo1;
	}
}
