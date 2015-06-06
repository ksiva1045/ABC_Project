package com.bean;

public class ETLAuditExtractLoadBean {
	
	private String EtlLoadKey;
	private String ExtractionDateTime;
	private String SessionName;
	private String LoadStartDateTime;
	private String LoadStopDateTime;
	private int NoOfExtractionRecords;
	private int NoOfReturnRecords;
	private String SourceSystemId;
	
	
	public String getEtlLoadKey() {
		return EtlLoadKey;
	}
	public void setEtlLoadKey(String etlLoadKey) {
		EtlLoadKey = etlLoadKey;
	}
	public String getExtractionDateTime() {
		return ExtractionDateTime;
	}
	public void setExtractionDateTime(String extractionDateTime) {
		ExtractionDateTime = extractionDateTime;
	}
	public String getSessionName() {
		return SessionName;
	}
	public void setSessionName(String sessionName) {
		SessionName = sessionName;
	}
	public String getLoadStartDateTime() {
		return LoadStartDateTime;
	}
	public void setLoadStartDateTime(String loadStartDateTime) {
		LoadStartDateTime = loadStartDateTime;
	}
	public String getLoadStopDateTime() {
		return LoadStopDateTime;
	}
	public void setLoadStopDateTime(String loadStopDateTime) {
		LoadStopDateTime = loadStopDateTime;
	}
	
	public int getNoOfExtractionRecords() {
		return NoOfExtractionRecords;
	}
	public void setNoOfExtractionRecords(int noOfExtractionRecords) {
		NoOfExtractionRecords = noOfExtractionRecords;
	}
	public int getNoOfReturnRecords() {
		return NoOfReturnRecords;
	}
	public void setNoOfReturnRecords(int noOfReturnRecords) {
		NoOfReturnRecords = noOfReturnRecords;
	}
	public String getSourceSystemId() {
		return SourceSystemId;
	}
	public void setSourceSystemId(String sourceSystemId) {
		SourceSystemId = sourceSystemId;
	}
}
