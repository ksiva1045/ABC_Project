package com.bean;

public class SelectAllBean {
	
	private String sourceLoadkey;
	private String sourceSystemId;
	private String jobName;
	private String loadStatusFlag;
	private String etlLoadKey;
	private String extractionDateTime;
	private String sessionName;
	private String loadStartDateTime;
	private String loadStopDateTime;
	private int noOfExtractionRecords;
	private int noOfReturnRecords;
	
	public String getSourceLoadkey() {
		return sourceLoadkey;
	}
	public void setSourceLoadkey(String sourceLoadkey) {
		this.sourceLoadkey = sourceLoadkey;
	}
	public String getSourceSystemId() {
		return sourceSystemId;
	}
	public void setSourceSystemId(String sourceSystemId) {
		this.sourceSystemId = sourceSystemId;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getLoadStatusFlag() {
		return loadStatusFlag;
	}
	public void setLoadStatusFlag(String loadStatusFlag) {
		this.loadStatusFlag = loadStatusFlag;
	}
	public String getEtlLoadKey() {
		return etlLoadKey;
	}
	public void setEtlLoadKey(String etlLoadKey) {
		this.etlLoadKey = etlLoadKey;
	}
	public String getExtractionDateTime() {
		return extractionDateTime;
	}
	public void setExtractionDateTime(String extractionDateTime) {
		this.extractionDateTime = extractionDateTime;
	}
	public String getSessionName() {
		return sessionName;
	}
	public void setSessionName(String sessionName) {
		this.sessionName = sessionName;
	}
	public String getLoadStartDateTime() {
		return loadStartDateTime;
	}
	public void setLoadStartDateTime(String loadStartDateTime) {
		this.loadStartDateTime = loadStartDateTime;
	}
	public String getLoadStopDateTime() {
		return loadStopDateTime;
	}
	public void setLoadStopDateTime(String loadStopDateTime) {
		this.loadStopDateTime = loadStopDateTime;
	}
	public int getNoOfExtractionRecords() {
		return noOfExtractionRecords;
	}
	public void setNoOfExtractionRecords(int noOfExtractionRecords) {
		this.noOfExtractionRecords = noOfExtractionRecords;
	}
	public int getNoOfReturnRecords() {
		return noOfReturnRecords;
	}
	public void setNoOfReturnRecords(int noOfReturnRecords) {
		this.noOfReturnRecords = noOfReturnRecords;
	}
	
}
