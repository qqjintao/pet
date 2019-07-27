package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ProductDetils_ProductSuitProduct_name;
import com.ssh.model.ProductMessages;
import com.ssh.model.ProductMessagesView;

public class ProductMessagesDao {
	//表-增加
	public int addProductMessages(ProductMessages ProductMessages){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(ProductMessages).toString());
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
	public boolean updateProductMessages(ProductMessages ProductMessages){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(ProductMessages);
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
	public boolean deleteProductMessagesById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			ProductMessages dProductMessages=(ProductMessages)session.load(ProductMessages.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dProductMessages);
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
	public ProductMessages queryProductMessagesById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from ProductMessages where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<ProductMessages> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	//商品留言视图显示
	public ArrayList<ProductMessagesView> queryProductMessagesView(int Product_code){
		Session session=null;
		ArrayList<ProductMessagesView> productMessagesViews=new ArrayList<ProductMessagesView>();
		try{
			session=HibernateSessionFactory.getSession();
			String sql="select * from ProductMessagesView where Product_code=?";
			Query queryObject=session.createSQLQuery(sql);
			queryObject.setParameter(0, Product_code);
			List list=queryObject.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] o=(Object[])list.get(i);
				for(int j = 0;j<o.length;j++){
					if(o[j]==null){
						o[j]=" ";
					}
				}
				ProductMessagesView productMessagesView=new ProductMessagesView();
				productMessagesView.setHead_portrait(o[0].toString());
				productMessagesView.setNickname(o[1].toString());
				productMessagesView.setProductMessages_code(Integer.parseInt(o[2].toString()));
				productMessagesView.setProduct_code(Integer.parseInt(o[3].toString()));
				productMessagesView.setProductMessages_title(o[4].toString());
				productMessagesView.setProductMessages_context(o[5].toString());
				productMessagesView.setProductMessages_time(o[6].toString());
				productMessagesViews.add(productMessagesView);
			}
			return productMessagesViews;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
}
