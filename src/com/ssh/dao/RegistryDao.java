package com.ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Registry;

public class RegistryDao {
	//表-增加
	public int addRegistry(Registry Registry){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(Registry).toString());
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
	public boolean updateRegistry(Registry Registry){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(Registry);
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
	public boolean deleteRegistryById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			Registry dRegistry=(Registry)session.load(Registry.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dRegistry);
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
	public Registry queryRegistryById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from Registry where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<Registry> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	//登录
		public Registry loginRegistry(String userName,String password){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from Registry where (Mobile_phone=? and Password=?) or (Mailbox=? and Password=?)";
				Query queryObject=session.createQuery(queryString);
				queryObject.setParameter(0, userName);
				queryObject.setParameter(1, password);
				queryObject.setParameter(2, userName);
				queryObject.setParameter(3, password);
				List<Registry> list=queryObject.list();
				return list.get(0);		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
	//修改密码
		public boolean changePassword(String userName,String password){
			Session session=null;
			Registry registry=new Registry();
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from Registry where Mobile_phone=? or Mailbox=?";
				Query query=session.createQuery(queryString);
				query.setParameter(0,userName);
				query.setParameter(1,userName);
				List<Registry> list=query.list();
				if(list.size()>0){
					registry=list.get(0);
					registry.setPassword(password);
					Transaction trans=session.beginTransaction();
					session.update(registry);
					trans.commit();
				}else{
					return false;
				}
			}catch(Exception ex){
				ex.printStackTrace();
				return false;
			}finally{
				HibernateSessionFactory.closeSession();
			}
			return true;
		}
}
