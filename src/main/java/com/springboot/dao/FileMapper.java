package com.springboot.dao;

import com.springboot.bean.FileInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.Map;

@Mapper
public interface FileMapper
{
	public ArrayList<FileInfo> queryAllFile();

	/**
	 * 查找所有文件的总数
	 * @return
	 */
	public int queryAll();

	/**
	 * 查询分页文件
	 * @param map
	 * @return
	 */
	public ArrayList<FileInfo> queryAllWithLimit(Map<String, Integer> map);

	/**
	 * 带条件查询
	 * @param map
	 * @return
	 */
	public ArrayList<FileInfo> queryFileWithParam(Map<String, String> map);

	/**
	 * 带条件查询总数
	 * @param map
	 * @return
	 */
	public int queryFileWithParamTotalNum(Map<String, String> map);

	/**
	 * 修改文件状态
	 * @param map
	 * @return
	 */
	public int updateFileStatue(Map<String, String> map);

	/**
	 * 插入新上传的文件数据
	 * @param fileInfo
	 * @return
	 */
	public int insertFileUpload(FileInfo fileInfo);

	/**
	 * 查找单个file文件
	 * @return
	 */
	public FileInfo queryFileById(String fileid);
}
