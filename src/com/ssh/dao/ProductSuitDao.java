package com.ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Product;
import com.ssh.model.ProductSuit;

public class ProductSuitDao {
	//表-增加
		public int addProductSuit(ProductSuit ProductSuit){
			int num=0;
			Session session=null;
			try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			num=Integer.parseInt(session.save(ProductSuit).toString());
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
		public boolean updateProductSuit(ProductSuit ProductSuit){
			boolean flag=true;
			Session session = null;
			try{
				session=HibernateSessionFactory.getSession();
				Transaction trans=session.beginTransaction();
				session.update(ProductSuit);
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
		public boolean deleteProductSuitById(int id){
			boolean flag=true;
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				ProductSuit dProductSuit=(ProductSuit)session.load(ProductSuit.class,id);
				Transaction trans=session.beginTransaction();
				session.delete(dProductSuit);
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
		public ProductSuit queryProductSuitById(int id){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from ProductSuit where id=?";
				Query queryObject=session.createQuery(queryString);
				queryObject.setParameter(0, id);
				List<ProductSuit> list=queryObject.list();
				return list.get(0);		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		
}
