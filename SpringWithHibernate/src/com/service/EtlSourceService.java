package com.service;

import java.util.List;

import com.bean.EtlSourceBean;
import com.bean.SelectAllBean;

public interface EtlSourceService {
	
	public void addEtlSource(EtlSourceBean etlSourceBean);
	public List listEtlSource();
	public void removeEtlSource(List checkList);
	public void updateEtlSource(EtlSourceBean checkList);
	public EtlSourceBean selectByIdEtlSource(String etl_source_id);
	public String Connection();
	public List getSourceType();
	public List listEtlAuditAll(String name);
}
