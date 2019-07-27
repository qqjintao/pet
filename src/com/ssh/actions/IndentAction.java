package com.ssh.actions;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.IndentDao;
import com.ssh.model.Indent;
import com.ssh.model.IndentView;
import com.ssh.model.Registry;

public class IndentAction extends ActionSupport{
	private int indent_state;
	private Registry registry = new Registry();
	private ArrayList<IndentView> indentView;
	private Indent indent=new Indent();
	private	IndentDao indentDao=new IndentDao();
	
	//增删改查
	public String addIndent(){
		if(indentDao.addIndent(indent)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteIndentById(){
		if(indentDao.deleteIndentById(indent.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateIndent(){
		if(indentDao.updateIndent(indent)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryIndentById(){
		if(indentDao.queryIndentById(indent.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryIndentView(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		indentView=indentDao.queryIndentViewList(registry.getMobile_phone());
		return "Ordershop";
	}
	//更改查询状态
	public String queryIndentViewByState(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		String State = null;
		if (registry == null) {
			return INPUT;
		}
		if(indent_state==0){
			indentView=indentDao.queryIndentViewList(registry.getMobile_phone());
		}else if(indent_state==1){
			State="and Indent_deal1='0'";
			indentView=indentDao.queryIndentViewListByState(registry.getMobile_phone(), State);
		}else if(indent_state==2){
			State="and Indent_deal3='0'";
			indentView=indentDao.queryIndentViewListByState(registry.getMobile_phone(), State);
		}else if(indent_state==3){
			State="and Indent_deal4='0'";
			indentView=indentDao.queryIndentViewListByState(registry.getMobile_phone(), State);
		}else if(indent_state==4){
			State="and 评价  is null";
			indentView=indentDao.queryIndentViewListByState(registry.getMobile_phone(), State);
		}else if(indent_state==5){
			State="and Indent_deal4='1'";
			indentView=indentDao.queryIndentViewListByState(registry.getMobile_phone(), State);
		}else if(indent_state==6){
			State="and Indent_state='0'";
			indentView=indentDao.queryIndentViewListByState(registry.getMobile_phone(), State);
		}else{
			indentView=indentDao.queryIndentViewList(registry.getMobile_phone());
		}
		return "Ordershop";
	}
	
	public int getIndent_state() {
		return indent_state;
	}
	public void setIndent_state(int indent_state) {
		this.indent_state = indent_state;
	}
	public Registry getRegistry() {
		return registry;
	}
	public void setRegistry(Registry registry) {
		this.registry = registry;
	}
	public ArrayList<IndentView> getIndentView() {
		return indentView;
	}
	public void setIndentView(ArrayList<IndentView> indentView) {
		this.indentView = indentView;
	}
	public Indent getIndent() {
		return indent;
	}
	public void setIndent(Indent indent) {
		this.indent = indent;
	}
	public IndentDao getIndentDao() {
		return indentDao;
	}
	public void setIndentDao(IndentDao indentDao) {
		this.indentDao = indentDao;
	}	
}
