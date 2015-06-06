package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.EtlSourceBean;
import com.bean.SelectAllBean;
import com.dao.EtlSourceDao;

@Service
public class EtlSourceServiceImpl implements EtlSourceService{
	
	@Autowired
	EtlSourceDao etlSourceDao;
	

	 @Transactional
	public void addEtlSource(EtlSourceBean etlSourceBean)
	 {
		 System.out.println("Sercvice :"+etlSourceBean.getSource_system_desc());
		etlSourceDao.addEtlSource(etlSourceBean);
		
	}

     @Transactional
	public List listEtlSource()
	 {
		// TODO Auto-generated method stub
		return etlSourceDao.listEtlSource();
	}


	 @Transactional
	public void removeEtlSource(List checkList) 
	 {
		// TODO Auto-generated method stub
		etlSourceDao.removeEtlSource(checkList);
		System.out.println("Delete"+checkList);
	}

	@Override
	public void updateEtlSource(EtlSourceBean checkList) {
		// TODO Auto-generated method stub
		etlSourceDao.updateEtlSource(checkList);
		
	}

	@Override
	public EtlSourceBean selectByIdEtlSource(String etl_source_id) {
	return	etlSourceDao.selectById(etl_source_id);
		
	}

	@Override
	public String Connection() {
		// TODO Auto-generated method stub
		return etlSourceDao.Connection();
	}

	@Override
	public List getSourceType() {
		// TODO Auto-generated method stub
		return etlSourceDao.getSourceType();
	}

	public List listEtlAuditAll(String name) {
		// TODO Auto-generated method stub
		System.out.println(name);
		return etlSourceDao.listEtlAuditAll(name);
	}

}
