package com.springboot.service;

import com.springboot.bean.FileInfo;
import com.springboot.bean.TableInfo;
import com.springboot.dao.FileMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Map;

@Service("fileService")
public class FileServiceImpl implements FileService
{

	@Autowired
	private FileMapper fileMapper;

	/**
	 * 文件分页设置
	 * @param map
	 * @return
	 */
	@Override
	public TableInfo queryAllFile(Map<String, Integer> map)
	{
		TableInfo tableInfo = new TableInfo();

		//查询所有用户总数，并进行表总数设置
		int num = fileMapper.queryAll();
		tableInfo.setCount(num);

		//获取文件list
		ArrayList<FileInfo> fileInfos = fileMapper.queryAllWithLimit(map);
		tableInfo.setData(fileInfos);
		return tableInfo;
	}

	@Override
	public TableInfo queryFileWithParam(Map<String, String> map)
	{
		TableInfo tableInfo = new TableInfo();

		//查询所有用户总数，并进行表总数设置
		int num = fileMapper.queryFileWithParamTotalNum(map);
		tableInfo.setCount(num);

		//获取文件list
		ArrayList<FileInfo> fileInfos = fileMapper.queryFileWithParam(map);
		tableInfo.setData(fileInfos);
		return tableInfo;
	}

	@Override
	public int updateFileStatue(Map<String, String> map)
	{
		int i = fileMapper.updateFileStatue(map);
		return i;
	}

	@Override
	public int insertFileUpload(FileInfo fileInfo)
	{
		int i = fileMapper.insertFileUpload(fileInfo);
		return i;
	}

	@Override
	public FileInfo queryFileById(String fileid)
	{
		FileInfo fileInfo = fileMapper.queryFileById(fileid);
		return fileInfo;
	}
}
