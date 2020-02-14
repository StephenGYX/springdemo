package com.springboot.bean;

import java.util.ArrayList;

public class TableInfo
{
	private String code="0";
	private String msg="";
	private int count;
	private ArrayList<?> data;

	public TableInfo(){
	}

	public TableInfo(String code, String msg, int count, ArrayList<?> data)
	{
		this.code = code;
		this.msg = msg;
		this.count = count;
		this.data = data;
	}

	public String getCode()
	{
		return code;
	}

	public void setCode(String code)
	{
		this.code = code;
	}

	public String getMsg()
	{
		return msg;
	}

	public void setMsg(String msg)
	{
		this.msg = msg;
	}

	public int getCount()
	{
		return count;
	}

	public void setCount(int count)
	{
		this.count = count;
	}

	public ArrayList<?> getData()
	{
		return data;
	}

	public void setData(ArrayList<?> data)
	{
		this.data = data;
	}

	@Override
	public String toString()
	{
		return "TableInfo{" + "code='" + code + '\'' + ", msg='" + msg + '\'' + ", count=" + count + ", data=" + data + '}';
	}
}
