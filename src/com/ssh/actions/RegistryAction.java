package com.ssh.actions;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.FinanceDao;
import com.ssh.dao.Location_tableDao;
import com.ssh.dao.Master_tableDao;
import com.ssh.dao.RegistryDao;
import com.ssh.model.Finance;
import com.ssh.model.Location_table;
import com.ssh.model.Master_table;
import com.ssh.model.Registry;

public class RegistryAction extends ActionSupport{
	private Registry registry;
	private Master_table master_table;
	private Location_table location_table;
	private Finance finance;
	private String userName;
	private String password;
	private	RegistryDao registryDao=new RegistryDao();
	private Master_tableDao master_tableDao=new Master_tableDao();
	private Location_tableDao location_tableDao=new Location_tableDao();
	private FinanceDao financeDao=new FinanceDao();
	
	//增删改查
	public String addRegistry(){
		master_table.setMobile_phone(registry.getMobile_phone());
		location_table.setMobile_phone(registry.getMobile_phone());
		finance.setMobile_phone(registry.getMobile_phone());
		if(registryDao.addRegistry(registry)>0&&master_tableDao.addMaster_table(master_table)>0
				&&location_tableDao.addLocation_table(location_table)>0&&financeDao.addFinance(finance)>0){
			return "login";
		}else{
			return INPUT;
		}
	}
	public String deleteRegistryById(){
		if(registryDao.deleteRegistryById(registry.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateRegistry(){
		if(registryDao.updateRegistry(registry)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryRegistryById(){
		System.out.println(registry.getId());
		if(registryDao.queryRegistryById(registry.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//登录
	public String loginRegistry(){
		registry=registryDao.loginRegistry(userName, password);
		if(registry!=null){
			Map<String, Object> session=ActionContext.getContext().getSession();
			session.put("registry", registry);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//修改密码
	public String changePassword(){
		if(registryDao.changePassword(userName, password)){
			return "login";
		}else{
			return INPUT;
		}
	}
	public Registry getRegistry() {
		return registry;
	}
	public void setRegistry(Registry registry) {
		this.registry = registry;
	}
	public RegistryDao getRegistryDao() {
		return registryDao;
	}
	public void setRegistryDao(RegistryDao registryDao) {
		this.registryDao = registryDao;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
