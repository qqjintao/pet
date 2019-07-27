package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Location_table;
import com.ssh.model.ProductPicture;;

public class Location_tableDao {
	//表-增加
	public int addLocation_table(Location_table Location_table){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(Location_table).toString());
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
	public boolean updateLocation_table(Location_table Location_table){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(Location_table);
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
	public boolean deleteLocation_tableById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			Location_table dLocation_table=(Location_table)session.load(Location_table.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dLocation_table);
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
	public Location_table queryLocation_tableById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from Location_table where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<Location_table> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//顾客地址列表的查询
	public ArrayList<Location_table> queryLocation_tableByMobile_phone(String Mobile_phone){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from Location_table where Mobile_phone=? order by Address_code desc";
				Query queryObject=session.createQuery(queryString);
				queryObject.setParameter(0, Mobile_phone);
				List<Location_table> list=queryObject.list();
				return (ArrayList<Location_table>) list;		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		//表的默认地址查询
		public Location_table queryLocation_tableByAddress_code(String Mobile_phone){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from Location_table where Mobile_phone=? and Address_code='1'";
				Query queryObject=session.createQuery(queryString);
				queryObject.setParameter(0, Mobile_phone);
				List<Location_table> list=queryObject.list();
				if(list.size()<=0){
					return null;
				}
				return list.get(0);		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
}
