package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity
@Table(name="ETL_SOURCE_SYSTEM",schema="dream_erp")
public class EtlSourceBean {
	
	@Id
    @Column(name="Source_System_Id")
	private String source_system_id;
	
	@Column(name="Source_System_Name")
	private String source_system_name;
	
	@Column(name="Source_System_Desc")
	private String source_system_desc;
	
	@Column(name="Source_Name")
	private String source_name;
	
	@Column(name="Source_Type")
	private String source_type;
	
	
	public String getSource_system_desc() {
		return source_system_desc;
	}
	public void setSource_system_desc(String source_system_desc) {
		this.source_system_desc = source_system_desc;
	}
	
	public String getSource_system_id() {
		return source_system_id;
	}
	public void setSource_system_id(String source_system_id) {
		this.source_system_id = source_system_id;
	}
	public String getSource_system_name() {
		return source_system_name;
	}
	public void setSource_system_name(String source_system_name) {
		this.source_system_name = source_system_name;
	}


	public String getSource_name() {
		return source_name;
	}
	public void setSource_name(String source_name) {
		this.source_name = source_name;
	}
	public String getSource_type() {
		return source_type;
	}
	public void setSource_type(String source_type) {
		this.source_type = source_type;
	}
	
}
