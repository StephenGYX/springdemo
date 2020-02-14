package com.springboot.service;


import com.springboot.bean.FileInfo;
import com.springboot.bean.TableInfo;

import java.util.Map;

public interface FileService
{
	public TableInfo queryAllFile(Map<String, Integer> map);

	/**
	 * 带条件查询文件列表
	 * @param map
	 * @return
	 */
	public TableInfo queryFileWithParam(Map<String, String> map);

	/**
	 * 更新文件状态
	 * @param map
	 * @return
	 */
	public int updateFileStatue(Map<String, String> map);

	/**
	 * 插入上传的文件
	 * @param fileInfo
	 * @return
	 */
	public int insertFileUpload(FileInfo fileInfo);

	/**
	 * 查找单个文件
	 * @return
	 */
	public FileInfo queryFileById(String fileid);
}
