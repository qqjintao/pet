package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ProductDetils;
import com.ssh.model.ProductPicture;

public class ProductPictureDao {
	//表-增加
	public int addProductPicture(ProductPicture ProductPicture){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(ProductPicture).toString());
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
	public boolean updateProductPicture(ProductPicture ProductPicture){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(ProductPicture);
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
	public boolean deleteProductPictureById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			ProductPicture dProductPicture=(ProductPicture)session.load(ProductPicture.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dProductPicture);
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
	public ProductPicture queryProductPictureById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from ProductPicture where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<ProductPicture> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	//查询产品对应的图片列表
	public ArrayList<ProductPicture> queryProductPictureByProduct_coded(int Product_code){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from ProductPicture where Product_code=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, Product_code);
			List<ProductPicture> list=queryObject.list();
			return (ArrayList<ProductPicture>) list;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
}
