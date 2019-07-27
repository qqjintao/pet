package com.ssh.actions;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.Master_tableDao;
import com.ssh.dao.RegistryDao;
import com.ssh.enumeration.Cities;
import com.ssh.enumeration.Provinces;
import com.ssh.model.Master_table;
import com.ssh.model.Registry;

public class Master_tableAction extends ActionSupport{
	private Master_table master_table=new Master_table();
	private Registry registry=new Registry();
	private Provinces provinces;//省份
	private int updateprovince;
	private int state;//判断是否提交
	private Cities cities=new Cities();//城市
	private ArrayList city=new ArrayList();//对应城市
	private ArrayList province=new ArrayList();//对应省份
	private RegistryDao registryDao=new RegistryDao();
	private	Master_tableDao master_tableDao=new Master_tableDao();
	
	//增删改查
	public String addMaster_table(){
		if(master_tableDao.addMaster_table(master_table)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteMaster_tableById(){
		if(master_tableDao.deleteMaster_tableById(master_table.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateMaster_table(){
		if(master_tableDao.updateMaster_table(master_table)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryMaster_tableById(){
		if(master_tableDao.queryMaster_tableById(master_table.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//个人资料
	@SuppressWarnings("unchecked")
	public String execute(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		if(registry==null){
			return INPUT;
		}
		for(Provinces p: Provinces.values()){
			province.add(p);//省列表
		}
		master_table=master_tableDao.queryMaster_tableById(registry.getMobile_phone());
		provinces=cities.getProvinces(master_table.getProvince());//获取省的枚举
		if(provinces!=null){
			city=cities.getCities(provinces);//获取省对应的城市
		}else{
			city=null;
		}
		if(master_table!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//个人头像修改
	public String updateHead_portrait(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		if(registry==null){
			return INPUT;
		}
		master_table=master_tableDao.queryMaster_tableById(registry.getMobile_phone());
		if(master_table!=null){
			return "Userbind";
		}else{
			return INPUT;
		}
	}
	//个人资料修改
	public String updatePersonal_data(){
		//获取原来的注册跟主人信息
		Registry oldRegistry;
		Master_table oldMaster_table;
		Map<String, Object> session=ActionContext.getContext().getSession();
		oldRegistry=(Registry) session.get("registry");
		if(oldRegistry==null){
			return INPUT;
		}
		for(Provinces p: Provinces.values()){
			province.add(p);//省列表
		}
		if(updateprovince>0&&state!=1){
			provinces=cities.getProvinces(province.get(updateprovince-1).toString());//获取省的枚举
			city=cities.getCities(provinces);//获取省对应的城市
			master_table.setProvince(province.get(updateprovince-1).toString());
		}
		if(state==1){
			oldMaster_table=master_tableDao.queryMaster_tableById(oldRegistry.getMobile_phone());
			oldRegistry.setNickname(registry.getNickname());
			oldRegistry.setMailbox(registry.getMailbox());
			oldMaster_table.setSex(master_table.getSex());
			oldMaster_table.setCity(master_table.getCity());
			oldMaster_table.setStreet_address(master_table.getStreet_address());
			oldMaster_table.setProfession(master_table.getProfession());
			oldMaster_table.setQQ(master_table.getQQ());
			oldMaster_table.setPersonalized_signature(master_table.getPersonalized_signature());
			oldMaster_table.setInterest1(master_table.getInterest1());
			oldMaster_table.setInterest2(master_table.getInterest2());
			oldMaster_table.setInterest3(master_table.getInterest3());
			oldMaster_table.setInterest4(master_table.getInterest4());
			oldMaster_table.setInterest5(master_table.getInterest5());
			if(updateprovince>0){
				oldMaster_table.setProvince(province.get(updateprovince-1).toString());
			}else{
				oldMaster_table.setProvince("省份");
			}
			if(registryDao.updateRegistry(oldRegistry)&&master_tableDao.updateMaster_table(oldMaster_table)){
				return "updatedata";
			}else{
				return INPUT;
			}
		}else{
			return SUCCESS;
		}
	}
	public String userinfo(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		if(registry==null){
			return INPUT;
		}
		master_table=master_tableDao.queryMaster_tableById(registry.getMobile_phone());
		return "userinfo";
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getUpdateprovince() {
		return updateprovince;
	}
	public void setUpdateprovince(int updateprovince) {
		this.updateprovince = updateprovince;
	}
	public Master_table getMaster_table() {
		return master_table;
	}
	public void setMaster_table(Master_table master_table) {
		this.master_table = master_table;
	}
	public Master_tableDao getMaster_tableDao() {
		return master_tableDao;
	}
	public void setMaster_tableDao(Master_tableDao master_tableDao) {
		this.master_tableDao = master_tableDao;
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
	public Provinces getProvinces() {
		return provinces;
	}
	public void setProvinces(Provinces provinces) {
		this.provinces = provinces;
	}
	public Cities getCities() {
		return cities;
	}
	public void setCities(Cities cities) {
		this.cities = cities;
	}
	public ArrayList getCity() {
		return city;
	}
	public void setCity(ArrayList city) {
		this.city = city;
	}
	public ArrayList getProvince() {
		return province;
	}
	public void setProvince(ArrayList province) {
		this.province = province;
	}
	
}
