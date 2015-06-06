package com.dao;

import java.util.List;

import com.bean.EtlSourceBean;
import com.bean.SelectAllBean;

public interface EtlSourceDao {
	public void addEtlSource(EtlSourceBean etlSourceBean);
	public List listEtlSource();
	public void removeEtlSource(List checkList);
	public void updateEtlSource(EtlSourceBean etlSourceBean);
	public EtlSourceBean selectById(String etl_source_id);
	public String Connection();
	public List getSourceType();
	public List listEtlAuditAll(String name);


}
