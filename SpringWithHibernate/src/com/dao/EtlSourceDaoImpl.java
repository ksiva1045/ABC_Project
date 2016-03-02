package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bean.ETLAuditExtractLoadBean;
import com.bean.EtlAuditBean;
import com.bean.EtlSourceBean;
import com.bean.SelectAllBean;
import com.bean.SourceAllBean;

@Repository
public class EtlSourceDaoImpl implements EtlSourceDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public void addEtlSource(EtlSourceBean etlSourceBean) {
		// TODO Auto-generated method stub
		System.out.println("Dao:"+etlSourceBean.getSource_system_desc());
		Session session = sessionFactory.getCurrentSession();
		
		int message=session.getNamedQuery("etlSourceSystemInsert").
		setString("source_system_name",etlSourceBean.getSource_system_name()).
		setString("source_system_desc",etlSourceBean.getSource_system_desc()).
		setString("source_name", etlSourceBean.getSource_name()).
		setString("source_type", etlSourceBean.getSource_type()).executeUpdate();
		System.out.println(message);
	}


	@Override
	public List<?> listEtlSource() 
	{
		Session session=sessionFactory.getCurrentSession();
		
		return session.getNamedQuery("etlSourceSelectAll").list();
			
	}
	
	@Override
	public void removeEtlSource(List checkList)
	{
		
		Session session=sessionFactory.getCurrentSession();
		
		Iterator<?> itr = checkList.iterator();
		 System.out.println("Delete"+checkList);
		 
		while(itr.hasNext())
		{
			System.out.println("Delete Dao"+checkList);
			String source_system_id = (String) itr.next();
			session.getNamedQuery("etlSourceDelete").setString("source_system_id", source_system_id).executeUpdate();
			 System.out.println("Delete dao after"+checkList);
		}
		
		 
		}


	@Override
	@Transactional
	public void updateEtlSource(EtlSourceBean etlSourceBean) 
	{
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		
		
		 System.out.println("Update"+etlSourceBean); 
		 String name=etlSourceBean.getSource_name();
		
			 System.out.println("Update Dao"+etlSourceBean.getSource_name());
		
			 System.out.println(name);
			 
			session.getNamedQuery("etlSourceUpdate").
			setString("source_system_id", etlSourceBean.getSource_system_id()).
            setString("source_system_name", etlSourceBean.getSource_system_name()).
            setString("source_system_desc", etlSourceBean.getSource_system_desc()).
            setString("source_name", etlSourceBean.getSource_name()).
            setString("source_type", etlSourceBean.getSource_type()).executeUpdate();
			
	}

	@Override
	@Transactional
	public EtlSourceBean selectById(String etl_source_id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		
		ArrayList<?> list =(ArrayList<?>) session.getNamedQuery("etlSourceSelectById").setString("source_system_id",etl_source_id).list();
		Iterator<?> itr = list.iterator();
		EtlSourceBean bean=null;
		while(itr.hasNext()){
			 bean = (EtlSourceBean) itr.next();
			System.out.println(bean.getSource_name());
		}
		return bean;
	}


	@Override
	public String Connection() {
		// TODO Auto-generated method stub
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.6:1521:oradream","dream_erp","Dream123");
		
		if(con==null){
			return "connection not established";
		}
		else{
			return "connection established";
		}
		
		}
		catch(Exception e){
		e.printStackTrace();	
		}
		return "connection not established";
	}


	@Override
	public List<?> getSourceType() {
		// TODO Auto-generated method stub
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.2:1521:oradream","dream_erp","Dream123");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select Source_Type from ETL_SOURCE_SYSTEM");
			
			while(rs.next())
			{
				System.out.println(rs.getString(5));
			}
			
			
		}catch(Exception e){
			
		}
		return null;
	}


	@Override
	@Transactional
	public List<?> listEtlAuditAll(String name) {
		// TODO Auto-generated method stub
		System.out.println("dao:"+name);
		System.out.println("dao:"+name);
		
		System.out.println("dao:"+name);
		SourceAllBean sourceAllBean=new SourceAllBean();
		
        Session session=sessionFactory.getCurrentSession();
		//session.beginTransaction();
		//System.out.println(sourceAllBean.getSourcename());
		
		EtlAuditBean etlauditbean=null;
		ETLAuditExtractLoadBean etlauditextractbean=null;
		
		List<?> l=session.getNamedQuery("selectTwo").setString("SourceName",name).list();
		
		Iterator<?> itr = l.iterator();
		SelectAllBean bean=null;
		
		while(itr.hasNext()){
			 bean = (SelectAllBean) itr.next();
			System.out.println(bean.getEtlLoadKey());
		}

		
		//List list=new ArrayList();
		/*Iterator itr = l.iterator();
		
		while(itr.hasNext()){
			etlauditbean = (EtlAuditBean) itr.next();
			System.out.println(etlauditbean.getJobName());
		}
		*/
		//List l1=session.getNamedQuery("selectEtlAuditExtractData").setString("SourceName",name).list();
		
		/*while(itr.hasNext()){
			etlauditextractbean = (ETLAuditExtractLoadBean) itr.next();
			System.out.println(etlauditextractbean.getEtlLoadKey());
		}
		
		list.add(etlauditbean);
		list.add(etlauditextractbean);
		*/
		
		//list.add(l);
		//list.add(l1);
		
		
			
		    //setlist();
		return l;
	}
}

