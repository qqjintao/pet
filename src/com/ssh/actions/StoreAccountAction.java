package com.ssh.actions;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.StoreAccountDao;
import com.ssh.dao.StoreDao;
import com.ssh.model.Store;
import com.ssh.model.StoreAccount;

public class StoreAccountAction extends ActionSupport{
	private String newpassword;
	private String oldpassword;
	private Boolean registration_state;
	private ArrayList<StoreAccount> storeAccounts=new ArrayList<StoreAccount>();
	private Store store=new Store();
	private StoreAccount storeAccount=new StoreAccount();
	private StoreAccount oneStoreAccount=new StoreAccount();
	private StoreAccount newStoreAccount=new StoreAccount();
	private	StoreDao storeDao=new StoreDao();
	private	StoreAccountDao storeAccountDao=new StoreAccountDao();
	//增删改查
	public String addStoreAccount(){
		if(storeAccountDao.addStoreAccount(storeAccount)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteStoreAccountById(){
		if(storeAccountDao.deleteStoreAccountById(storeAccount.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateStoreAccount(){
		if(storeAccountDao.updateStoreAccount(storeAccount)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryStoreAccountById(){
		if(storeAccountDao.queryStoreAccountById(storeAccount.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//店家登录
	public String loginStoreAccount(){
		if(storeAccountDao.queryStoreAccountByAdmin(storeAccount.getStore_code(),storeAccount.getAdmin_account(),storeAccount.getAdmin_password())!=null){
			storeAccount=storeAccountDao.queryStoreAccountByAdmin(storeAccount.getStore_code(),storeAccount.getAdmin_account(),storeAccount.getAdmin_password());
			Map<String, Object> session=ActionContext.getContext().getSession();
			if(ActionContext.getContext().getSession().containsKey("storeAccount"))
	    	{
	    		ActionContext.getContext().getSession().remove("storeAccount");
	    	}
			session.put("storeAccount", storeAccount);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//店家找回密码
	public String shopChangePassword(){
		if(storeDao.queryStoreByStore_principal(store.getStore_code(), store.getStore_principal(), store.getPrincipal_phone())!=null){
			if(storeAccountDao.shopChangePassword(store.getStore_code(), storeAccount.getAdmin_account(), storeAccount.getAdmin_password())){
				return SUCCESS;
			}else{
				return INPUT;
			}
		}else{
			return INPUT;
		}
	}
	//店家修改密码
	public String adminChangePassword(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		storeAccount=(StoreAccount) session.get("storeAccount");
		if(oldpassword.equals(storeAccount.getAdmin_password())){
			storeAccount.setAdmin_password(newpassword);
			if(storeAccountDao.updateStoreAccount(storeAccount)){
				return SUCCESS;
			}else{
				return INPUT;
			}		
		}else{
			System.out.println("旧密码错误！");
			return INPUT;
		}
	}
	//店家账户显示
	public String queryAllStoreAccount(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		storeAccount=(StoreAccount) session.get("storeAccount");
		if(storeAccount==null){
			return INPUT;
		}
		storeAccounts=storeAccountDao.queryAllStoreAccount(storeAccount.getStore_code());	
		if(ActionContext.getContext().getSession().containsKey("storeAccounts"))
    	{
    		ActionContext.getContext().getSession().remove("storeAccounts");
    	}
		session.put("storeAccounts", storeAccounts);
		if(storeAccounts!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//店家添加用户 
	public String addStoreAccountModal(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		storeAccount=(StoreAccount) session.get("storeAccount");
		if(storeAccount==null){
			return INPUT;
		}
		newStoreAccount.setStore_code(storeAccount.getStore_code());
		newStoreAccount.setRegistration_state(registration_state);
		if(storeAccountDao.addStoreAccount(newStoreAccount)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//店家用户修改
	public void queryOneStoreAccount(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		oneStoreAccount=storeAccountDao.queryStoreAccountById(storeAccount.getId());
		if(ActionContext.getContext().getSession().containsKey("oneStoreAccount"))
    	{
    		ActionContext.getContext().getSession().remove("oneStoreAccount");
    	}
		session.put("oneStoreAccount", oneStoreAccount);
	}
	public String updateOneStoreAccount(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		oneStoreAccount=(StoreAccount) session.get("oneStoreAccount");
		if(oneStoreAccount==null){
			return INPUT;
		}
		newStoreAccount.setStore_code(oneStoreAccount.getStore_code());
		newStoreAccount.setAdmin_password(oneStoreAccount.getAdmin_password());
		newStoreAccount.setRegistration_state(registration_state);
		if(storeAccountDao.updateStoreAccount(newStoreAccount)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public StoreAccount getOneStoreAccount() {
		return oneStoreAccount;
	}
	public void setOneStoreAccount(StoreAccount oneStoreAccount) {
		this.oneStoreAccount = oneStoreAccount;
	}
	public Boolean getRegistration_state() {
		return registration_state;
	}
	public void setRegistration_state(Boolean registration_state) {
		this.registration_state = registration_state;
	}
	public StoreAccount getNewStoreAccount() {
		return newStoreAccount;
	}
	public void setNewStoreAccount(StoreAccount newStoreAccount) {
		this.newStoreAccount = newStoreAccount;
	}
	public ArrayList<StoreAccount> getStoreAccounts() {
		return storeAccounts;
	}
	public void setStoreAccounts(ArrayList<StoreAccount> storeAccounts) {
		this.storeAccounts = storeAccounts;
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
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	
}
