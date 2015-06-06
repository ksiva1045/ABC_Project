package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.CheckBoxBean;
import com.bean.ETLAuditExtractLoadBean;
import com.bean.EtlAuditBean;
import com.bean.EtlSourceBean;
import com.bean.SelectAllBean;
import com.bean.SourceAllBean;
import com.service.EtlSourceService;

@Controller
public class EtlSourceController {
	
	@Autowired
	private EtlSourceService etlSourceService;
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addContact(@ModelAttribute("etlSourceBean")EtlSourceBean etlSourceBean, BindingResult result) {
		System.out.println("Controller Before:"+etlSourceBean.getSource_system_desc());
		 
		etlSourceService.addEtlSource(etlSourceBean);
		System.out.println("Controller:"+etlSourceBean.getSource_system_desc());
 
        return "insertSuccess";
    }
	
	@RequestMapping("/selectall")
    public String listEtlSource(Map<String, Object> map) {
 
        map.put("etlsource", new EtlSourceBean());
        map.put("etlSourceList",etlSourceService.listEtlSource());
 
        return "selectall";
    }
	
	
	
	 @RequestMapping(value="/delete", method=RequestMethod.POST)
	 public String removeEtlSource(@ModelAttribute("checkBoxBean") CheckBoxBean checkBoxBean){
	    
		 List checkList = checkBoxBean.getCheckval();
		 System.out.println("Delete"+checkList);
		 
	        etlSourceService.removeEtlSource(checkList);
	        
	        checkBoxBean.setSize(checkList.size());
	        return "delete";
	    }
	 
	 @RequestMapping(value="/selectbyid")
	 public String selectById(@ModelAttribute("checkBoxBean") CheckBoxBean checkBoxBean,Map<String,Object>map) {	 
		 System.out.println("Before Calling"+checkBoxBean.getId());
		 
		 map.put("etlSource", etlSourceService.selectByIdEtlSource(checkBoxBean.getId()));
		 System.out.println(checkBoxBean.getId());
		 
		 etlSourceService.getSourceType();

		return "update"; 
	 
	 }
	 
	 @RequestMapping(value="/selectid")
	 public String selectId(@ModelAttribute("checkBoxBean") CheckBoxBean checkBoxBean,Map<String,Object>map) {	 
		  map.put("etlsource", new EtlSourceBean());
	      map.put("etlSourceList",etlSourceService.listEtlSource());
	      map.put("etlSource1", etlSourceService.selectByIdEtlSource(checkBoxBean.getId()));
			
		return "update1"; 
	 
	 }
	 
	 @RequestMapping(value="/update")
	 public String update(@ModelAttribute("etlSourceBean") EtlSourceBean etlSourceBean){
		
		 etlSourceService.updateEtlSource(etlSourceBean);
		 return "updatereturn";
	 }
	 
	 @RequestMapping(value="/test")
	 public String Connection(){
		 String message=etlSourceService.Connection();
		 
		 System.out.println(message);
		 return "update";
	 }

	 //table 2 & table 3
	 @RequestMapping(value ="/sourceName",method = RequestMethod.POST)
	    public String SelectBySourceName(@ModelAttribute("sourceAllBean")SourceAllBean sourceAllBean,Map<String, Object> map) {
		 String name=sourceAllBean.getSourcename();
		 System.out.println(name+"name");
		 SelectAllBean s=null;
		 System.out.println("source name:"+sourceAllBean.getSourcename());
	        //map.put("etlAuditBean", new EtlAuditBean());
	        //map.put("etlAuditExtractLoad",new ETLAuditExtractLoadBean());
		    map.put("etlAuditAll",new SelectAllBean());
	        map.put("etlAuditSelectAll",etlSourceService.listEtlAuditAll(name));
	        
	 
	        return "selectSourceAll";
	    }
}
