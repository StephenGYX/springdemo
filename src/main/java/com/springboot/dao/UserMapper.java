package com.springboot.dao;

import com.springboot.bean.UserInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper
{
	public UserInfo querySingleUser(UserInfo userInfo);


}
