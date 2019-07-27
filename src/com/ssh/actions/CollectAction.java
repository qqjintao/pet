package com.ssh.actions;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.CollectDao;
import com.ssh.model.Collect;
import com.ssh.model.CollectStoreView;
import com.ssh.model.CollectView;
import com.ssh.model.ForumView;
import com.ssh.model.Registry;

public class CollectAction extends ActionSupport{
	private String code;
	private ArrayList<CollectView> collects;
	private ArrayList<CollectStoreView> collectStoreView;
	private Registry registry = new Registry();
	private Collect collect=new Collect();
	private	CollectDao collectDao=new CollectDao();
	
	//增删改查
	public String addCollect(){
		if(collectDao.addCollect(collect)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteCollectById(){
		if(collectDao.deleteCollectById(collect.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateCollect(){
		if(collectDao.updateCollect(collect)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryCollectById(){
		if(collectDao.queryCollectById(collect.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryCollectByMobile_phone(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		collects=collectDao.queryCollectList(registry.getMobile_phone());
		collectStoreView=collectDao.queryCollectStoreList(registry.getMobile_phone());
		if(collects!=null){
			return "Productfavorite";
		}else{
			return INPUT;
		}
	}
	public String deleteCollectById1(){
		if(collectDao.deleteCollectById(collect.getId())){
			return "deleteSuccess";
		}else{
			return INPUT;
		}
	}
	public void addCollect1(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		collect.setMobile_phone(registry.getMobile_phone());
		collect.setCode(Integer.parseInt(code));
		collect.setCodeType(1);
		collectDao.addCollect(collect);
	}
	public void addCollect3(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		collect.setMobile_phone(registry.getMobile_phone());
		collect.setCode(Integer.parseInt(code));
		collect.setCodeType(3);
		collectDao.addCollect(collect);
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public ArrayList<CollectView> getCollects() {
		return collects;
	}
	public void setCollects(ArrayList<CollectView> collects) {
		this.collects = collects;
	}
	public Registry getRegistry() {
		return registry;
	}
	public void setRegistry(Registry registry) {
		this.registry = registry;
	}
	public Collect getCollect() {
		return collect;
	}
	public void setCollect(Collect collect) {
		this.collect = collect;
	}
	public CollectDao getCollectDao() {
		return collectDao;
	}
	public void setCollectDao(CollectDao collectDao) {
		this.collectDao = collectDao;
	}
	public ArrayList<CollectStoreView> getCollectStoreView() {
		return collectStoreView;
	}
	public void setCollectStoreView(ArrayList<CollectStoreView> collectStoreView) {
		this.collectStoreView = collectStoreView;
	}

}
