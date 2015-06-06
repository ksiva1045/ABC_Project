package com.bean;

public class EtlAuditBean {
	
	private String SourceLoadkey;
	private String SourceSystemId;
	private String JobName;
	private String LoadStatusFlag;
	
	public String getSourceLoadkey() {
		return SourceLoadkey;
	}
	public void setSourceLoadkey(String sourceLoadkey) {
		SourceLoadkey = sourceLoadkey;
	}
	public String getSourceSystemId() {
		return SourceSystemId;
	}
	public void setSourceSystemId(String sourceSystemId) {
		SourceSystemId = sourceSystemId;
	}
	public String getJobName() {
		return JobName;
	}
	public void setJobName(String jobName) {
		JobName = jobName;
	}
	public String getLoadStatusFlag() {
		return LoadStatusFlag;
	}
	public void setLoadStatusFlag(String loadStatusFlag) {
		LoadStatusFlag = loadStatusFlag;
	}
}
