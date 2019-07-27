package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.StoreAccountDao;
import com.ssh.dao.StoreDao;
import com.ssh.dao.StoreJurisdictionDao;
import com.ssh.model.Store;
import com.ssh.model.StoreAccount;
import com.ssh.model.StoreJurisdiction;

public class StoreAction extends ActionSupport{
	private Store store=new Store();
	private StoreAccount storeAccount=new StoreAccount();
	private StoreJurisdiction storeJurisdiction=new StoreJurisdiction();
	private	StoreDao storeDao=new StoreDao();
	private StoreAccountDao storeAccountDao=new StoreAccountDao();
	private StoreJurisdictionDao storeJurisdictionDao=new StoreJurisdictionDao();
	//增删改查
	public String addStore(){
		if(storeDao.addStore(store)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteStoreById(){
		if(storeDao.deleteStoreById(store.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateStore(){
		if(storeDao.updateStore(store)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryStoreById(){
		if(storeDao.queryStoreById(store.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//注册店家  s
	public String registertore(){
		store.setStore_code(storeDao.queryStore_codeMaxId()+1);
		storeAccount.setStore_code(storeDao.queryStore_codeMaxId()+1);
		storeAccount.setAdmin_jurisdiction(1);
		storeJurisdiction.setStore_code(storeDao.queryStore_codeMaxId()+1);
		storeJurisdiction.setAdmin_jurisdiction(1);
		storeJurisdiction.setJurisdiction_name("管理员");
		if(storeDao.addStore(store)>0&&storeJurisdictionDao.addStoreJurisdiction(storeJurisdiction)>0){
			if(storeAccountDao.addStoreAccount(storeAccount)>0){
			return SUCCESS;
			}else{
				return INPUT;
			}
		}else{
			return INPUT;
		}
	}
	//查询店家编号
	public String queryStoreByStore_name(){
		if(storeDao.queryStoreByStore_name(store.getStore_name())!=null){
			store=storeDao.queryStoreByStore_name(store.getStore_name());
			System.out.println(store.getStore_code());
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
	public StoreDao getStoreDao() {
		return storeDao;
	}
	public void setStoreDao(StoreDao storeDao) {
		this.storeDao = storeDao;
	}
	public StoreAccount getStoreAccount() {
		return storeAccount;
	}
	public void setStoreAccount(StoreAccount storeAccount) {
		this.storeAccount = storeAccount;
	}
	public StoreAccountDao getStoreAccountDao() {
		return storeAccountDao;
	}
	public void setStoreAccountDao(StoreAccountDao storeAccountDao) {
		this.storeAccountDao = storeAccountDao;
	}
	public StoreJurisdiction getStoreJurisdiction() {
		return storeJurisdiction;
	}
	public void setStoreJurisdiction(StoreJurisdiction storeJurisdiction) {
		this.storeJurisdiction = storeJurisdiction;
	}
	public StoreJurisdictionDao getStoreJurisdictionDao() {
		return storeJurisdictionDao;
	}
	public void setStoreJurisdictionDao(StoreJurisdictionDao storeJurisdictionDao) {
		this.storeJurisdictionDao = storeJurisdictionDao;
	}
	
}
