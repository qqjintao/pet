package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ProductDetils_ProductSuitProduct_name;
import com.ssh.model.ServiceQQ;

public class ServiceQQDao {
	//表-增加
	public int addServiceQQ(ServiceQQ ServiceQQ){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(ServiceQQ).toString());
		trans.commit();
		}catch(Exception ex){
			num=0;
			ex.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return num;
	}
	//表修改
	public boolean updateServiceQQ(ServiceQQ ServiceQQ){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(ServiceQQ);
			trans.commit();
		}catch(Exception ex){
			ex.printStackTrace();
			flag=false;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}
	//表删除
	public boolean deleteServiceQQById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			ServiceQQ dServiceQQ=(ServiceQQ)session.load(ServiceQQ.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dServiceQQ);
			trans.commit();
		}catch(Exception ex){
			ex.printStackTrace();
			flag=false;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}
	//表的查询
	public ServiceQQ queryServiceQQById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from ServiceQQ where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<ServiceQQ> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//查询该店的QQ列表
	public ArrayList<ServiceQQ> queryServiceQQ(int Store_code){
		Session session=null;
		ArrayList<ServiceQQ> serviceQQs=new ArrayList<ServiceQQ>();
		try{
			session=HibernateSessionFactory.getSession();
			String sql="select * from ServiceQQ where Store_code=?";
			Query queryObject=session.createSQLQuery(sql);
			queryObject.setParameter(0, Store_code);
			List list=queryObject.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] o=(Object[])list.get(i);
				for(int j = 0;j<o.length;j++){
					if(o[j]==null){
						o[j]=" ";
					}
				}
				ServiceQQ serviceQQ=new ServiceQQ();
				serviceQQ.setId(Integer.parseInt(o[0].toString()));
				serviceQQ.setQQ_code(Integer.parseInt(o[1].toString()));
				serviceQQ.setStore_code(Integer.parseInt(o[2].toString()));
				serviceQQ.setQQ_number(Integer.parseInt(o[3].toString()));
				serviceQQ.setQQ_state(Boolean.parseBoolean(o[4].toString()));
				serviceQQ.setRemark(o[5].toString());
				serviceQQs.add(serviceQQ);
			}
			return serviceQQs;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
}
