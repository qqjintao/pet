package com.ssh.actions;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.Location_tableDao;
import com.ssh.enumeration.Cities;
import com.ssh.enumeration.Provinces;
import com.ssh.model.Location_table;
import com.ssh.model.Registry;

public class Location_tableAction extends ActionSupport{
	private int operation;//操作数 0表示设为默认地址 1表示编辑 2 表示删除
	private Provinces provinces;//省份
	private int updateprovince;
	private int state;//判断是否提交
	private Cities cities=new Cities();//城市
	private ArrayList city=new ArrayList();//对应城市
	private ArrayList province=new ArrayList();//对应省份
	private Registry registry = new Registry();
	private ArrayList<Location_table> location_tables;
	private Location_table location_table=new Location_table();
	private	Location_tableDao location_tableDao=new Location_tableDao();
	
	//增删改查
	public String addLocation_table(){
		if(location_tableDao.addLocation_table(location_table)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteLocation_tableById(){
		if(location_tableDao.deleteLocation_tableById(location_table.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateLocation_table(){
		if(location_tableDao.updateLocation_table(location_table)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryLocation_tableById(){
		if(location_tableDao.queryLocation_tableById(location_table.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String execute() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		location_tables=location_tableDao.queryLocation_tableByMobile_phone(registry.getMobile_phone());
		return SUCCESS;
	}
	public String operation(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		if(operation==0){//设置为默认地址
			Location_table oldlocation_table=new Location_table();
			Location_table newlocation_table=new Location_table();
			oldlocation_table=location_tableDao.queryLocation_tableByAddress_code(registry.getMobile_phone());
			if(oldlocation_table!=null){
				oldlocation_table.setAddress_code(0);
				location_tableDao.updateLocation_table(oldlocation_table);
			}
			newlocation_table=location_tableDao.queryLocation_tableById(location_table.getId());
			if(newlocation_table!=null){
				newlocation_table.setAddress_code(1);
				location_tableDao.updateLocation_table(newlocation_table);
			}
			return "operation";
		}else if(operation==1){//编辑
			location_table=location_tableDao.queryLocation_tableById(location_table.getId());
			for(Provinces p: Provinces.values()){
				province.add(p);//省列表
			}
			provinces=cities.getProvinces(location_table.getProvince());//获取省的枚举
			if(provinces!=null){
				city=cities.getCities(provinces);//获取省对应的城市
			}else{
				city=null;
			}
			return "updatedata";
		}else if(operation==2){//删除
			if(location_tableDao.deleteLocation_tableById(location_table.getId())){
				return "operation";
			}
		}
		return "operation";
	}
	public String updatelocation_table(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		for(Provinces p: Provinces.values()){
			province.add(p);//省列表
		}
		if(updateprovince>0&&state!=1){
			provinces=cities.getProvinces(province.get(updateprovince-1).toString());//获取省的枚举
			city=cities.getCities(provinces);//获取省对应的城市
			location_table.setProvince(province.get(updateprovince-1).toString());
		}
		if(state==1){
			location_table.setMobile_phone(registry.getMobile_phone());
			if(updateprovince>0){
				location_table.setProvince(province.get(updateprovince-1).toString());
			}else{
				location_table.setProvince("省份");
			}
			if(location_tableDao.updateLocation_table(location_table)){
				return "operation";
			}
		}
		return "updatedata";
	}
	public void showProvince(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		String city="城市";
		if(session.containsKey("province")){
			
		}else{
			for(Provinces p: Provinces.values()){
				province.add(p);//省列表
			}
			session.put("province", province);
		}
		 if(session.containsKey("city"))
		 {
			
		 }else{
			 session.put("city", city);
		 }
	}
	public String addLocation_table1(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return "addfalse";
		}
		province=(ArrayList) session.get("province");
		if(state!=1){
			provinces=cities.getProvinces(province.get(updateprovince).toString());//获取省的枚举
			city=cities.getCities(provinces);//获取省对应的城市
			location_table.setProvince(province.get(updateprovince).toString());
			 if(session.containsKey("city"))
			 {
				 session.remove("city");
			 }
			 session.put("city", city);
			 return "updateSessionCity";
		}
		if(state==1){
			location_table.setMobile_phone(registry.getMobile_phone());
			if(updateprovince>=0){
				location_table.setProvince(province.get(updateprovince).toString());
			}else{
				location_table.setProvince("省份");
			}
			if(location_tableDao.addLocation_table(location_table)>0){
				System.out.println("添加成功！");
				return "addsuccess";//添加成功页面
			}else{
				return "addfalse";//添加失败页面
			}
		}	
		return "addfalse";
	}
	public Location_table getLocation_table() {
		return location_table;
	}
	public void setLocation_table(Location_table location_table) {
		this.location_table = location_table;
	}
	public Location_tableDao getLocation_tableDao() {
		return location_tableDao;
	}
	public void setLocation_tableDao(Location_tableDao location_tableDao) {
		this.location_tableDao = location_tableDao;
	}
	public Registry getRegistry() {
		return registry;
	}
	public void setRegistry(Registry registry) {
		this.registry = registry;
	}
	public ArrayList<Location_table> getLocation_tables() {
		return location_tables;
	}
	public void setLocation_tables(ArrayList<Location_table> location_tables) {
		this.location_tables = location_tables;
	}
	public int getOperation() {
		return operation;
	}
	public void setOperation(int operation) {
		this.operation = operation;
	}
	public Provinces getProvinces() {
		return provinces;
	}
	public void setProvinces(Provinces provinces) {
		this.provinces = provinces;
	}
	public int getUpdateprovince() {
		return updateprovince;
	}
	public void setUpdateprovince(int updateprovince) {
		this.updateprovince = updateprovince;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
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
