package com.ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Store;

public class StoreDao {
	//表-增加
		public int addStore(Store Store){
			int num=0;
			Session session=null;
			try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			num=Integer.parseInt(session.save(Store).toString());
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
		public boolean updateStore(Store Store){
			boolean flag=true;
			Session session = null;
			try{
				session=HibernateSessionFactory.getSession();
				Transaction trans=session.beginTransaction();
				session.update(Store);
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
		public boolean deleteStoreById(int id){
			boolean flag=true;
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				Store dStore=(Store)session.load(Store.class,id);
				Transaction trans=session.beginTransaction();
				session.delete(dStore);
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
		public Store queryStoreById(int id){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from Store where id=?";
				Query queryObject=session.createQuery(queryString);
				queryObject.setParameter(0, id);
				List<Store> list=queryObject.list();
				return list.get(0);		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		//表的最大店铺id查询
			public int queryStore_codeMaxId(){
				Session session=null;
				try{
					session=HibernateSessionFactory.getSession();
					String sql="select MAX(Store.Store_code) from Store";
					Query queryObject=session.createSQLQuery(sql);
					List list = queryObject.list();
					return (int) list.get(0);		
				}catch(Exception ex){
					ex.printStackTrace();
					return -1;
				}finally{
					HibernateSessionFactory.closeSession();
				}
			}
			//表的查询
			public Store queryStoreByStore_principal(int Store_code,String Store_principal,String Principal_phone){
				Session session=null;
				try{
					session=HibernateSessionFactory.getSession();
					String queryString="from Store where Store_code=? and Store_principal=? and Principal_phone=?";
					Query queryObject=session.createQuery(queryString);
					queryObject.setParameter(0, Store_code);
					queryObject.setParameter(1, Store_principal);
					queryObject.setParameter(2, Principal_phone);
					List<Store> list=queryObject.list();
					return list.get(0);		
				}catch(Exception ex){
					ex.printStackTrace();
					return null;
				}finally{
					HibernateSessionFactory.closeSession();
				}
			}
			//店家编号查询
			public Store queryStoreByStore_name(String Store_name){
				Session session=null;
				try{
					session=HibernateSessionFactory.getSession();
					String queryString="from Store where Store_name=?";
					Query queryObject=session.createQuery(queryString);
					queryObject.setParameter(0, Store_name);
					List<Store> list=queryObject.list();
					return list.get(0);		
				}catch(Exception ex){
					ex.printStackTrace();
					return null;
				}finally{
					HibernateSessionFactory.closeSession();
				}
			}
}
