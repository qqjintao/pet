package com.ssh.actions;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.StoreJurisdictionDao;
import com.ssh.model.StoreAccount;
import com.ssh.model.StoreJurisdiction;

public class StoreJurisdictionAction extends ActionSupport {
	private ArrayList<StoreJurisdiction> storeJurisdictions;
	private StoreAccount storeAccount = new StoreAccount();
	private StoreJurisdiction storeJurisdiction = new StoreJurisdiction();
	private StoreJurisdictionDao storeJurisdictionDao = new StoreJurisdictionDao();

	// 增删改查
	public String addStoreJurisdiction() {
		if (storeJurisdictionDao.addStoreJurisdiction(storeJurisdiction) > 0) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String deleteStoreJurisdictionById() {
		if (storeJurisdictionDao.deleteStoreJurisdictionById(storeJurisdiction.getId())) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String updateStoreJurisdiction() {
		if (storeJurisdictionDao.updateStoreJurisdiction(storeJurisdiction)) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String queryStoreJurisdictionById() {
		if (storeJurisdictionDao.queryStoreJurisdictionById(storeJurisdiction.getId()) != null) {
			storeJurisdiction = storeJurisdictionDao.queryStoreJurisdictionById(storeJurisdiction.getId());
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	// 添加权限
	public String appendStoreJurisdiction() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		storeAccount = (StoreAccount) session.get("storeAccount");
		if (storeAccount.getAdmin_jurisdiction() > 0 && storeAccount.getAdmin_jurisdiction() < 2) {
			System.out.println("进入添加功能");
			if(storeJurisdiction.getAdmin_jurisdiction()==0||storeJurisdiction.getAdmin_jurisdiction()>9){
				return INPUT;
			}
			storeJurisdiction.setStore_code(storeAccount.getStore_code());
			if (storeJurisdictionDao.addStoreJurisdiction(storeJurisdiction) > 0) {
				return SUCCESS;
			} else {
				return INPUT;
			}
		} else {
			return INPUT;
		}
	}

	// 权限表显示
	public String queryAllStoreJurisdiction() {
		Set<Integer> admin_jurisdictions=new HashSet<Integer>();
		ArrayList admin_jurisdiction=new ArrayList<Integer>();
		ArrayList<Integer> admin_jurisdiction1=new ArrayList<Integer>();
		Map<String, Object> session = ActionContext.getContext().getSession();
		storeAccount = (StoreAccount) session.get("storeAccount");
		if (storeAccount == null) {
			return INPUT;
		}
		storeJurisdictions = storeJurisdictionDao.queryAllStoreJurisdiction(storeAccount.getStore_code());
		admin_jurisdiction = (ArrayList<Integer>) storeJurisdictionDao.queryAdmin_jurisdictions(storeAccount.getStore_code());
		for(int i=1;i<10;i++){
			admin_jurisdiction1.add(i);
		}
		admin_jurisdictions.addAll(admin_jurisdiction);
		admin_jurisdictions.addAll(admin_jurisdiction1);
		admin_jurisdictions.removeAll(admin_jurisdiction);
		if(ActionContext.getContext().getSession().containsKey("admin_jurisdictions"))
    	{
    		ActionContext.getContext().getSession().remove("admin_jurisdictions");
    	}
		session.put("admin_jurisdictions", admin_jurisdictions);
		if(ActionContext.getContext().getSession().containsKey("storeJurisdictions"))
    	{
    		ActionContext.getContext().getSession().remove("storeJurisdictions");
    	}
		session.put("storeJurisdictions", storeJurisdictions);
		if (storeJurisdictions != null) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}
	public ArrayList<StoreJurisdiction> getStoreJurisdictions() {
		return storeJurisdictions;
	}

	public void setStoreJurisdictions(ArrayList<StoreJurisdiction> storeJurisdictions) {
		this.storeJurisdictions = storeJurisdictions;
	}

	public StoreAccount getStoreAccount() {
		return storeAccount;
	}

	public void setStoreAccount(StoreAccount storeAccount) {
		this.storeAccount = storeAccount;
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
