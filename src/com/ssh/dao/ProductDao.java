package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Browse_products;
import com.ssh.model.Product;

public class ProductDao {
	//表-增加
	public int addProduct(Product Product){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(Product).toString());
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
	public boolean updateProduct(Product Product){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(Product);
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
	public boolean deleteProductById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			Product dProduct=(Product)session.load(Product.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dProduct);
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
	public Product queryProductById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from Product where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<Product> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	//商品列表
	public ArrayList<Browse_products> queryBrowse_products(){
		Session session=null;
		ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
		try{
			session=HibernateSessionFactory.getSession();
			String sql="select * from Browse_products";
			Query queryObject=session.createSQLQuery(sql);
			List list=queryObject.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] o=(Object[])list.get(i);
				for(int j = 0;j<o.length;j++){
					if(o[j]==null){
						o[j]=" ";
					}
				}
				Browse_products browse_products=new Browse_products();
				browse_products.setId(Integer.parseInt(o[0].toString()));
				browse_products.setProduct_name(o[1].toString());
				browse_products.setMember_price(Float.parseFloat(o[2].toString()));
				browse_products.setProduct_photo((o[3].toString()));
				browse_products.setProduct_code(Integer.parseInt(o[4].toString()));
				browse_products.setBroadHeading_name(o[5].toString());
				browse_products.setSubclass_name(o[6].toString());
				browse_products.setEvaluate(queryBrowse_productsByEvaluate(browse_products.getId()));
				browse_products.setSales(queryBrowse_productsBySales(browse_products.getId()));
				Browse_products.add(browse_products);
			}
			return Browse_products;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	//商品列表_大类查询
		public ArrayList<Browse_products> queryBrowse_productsByBroadHeading_name(String queryName){
			Session session=null;
			ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from Browse_products where BroadHeading_name like '%"+queryName+"%'";
				Query queryObject=session.createSQLQuery(sql);
				List list=queryObject.list();
				for (int i = 0; i < list.size(); i++) {
					Object[] o=(Object[])list.get(i);
					for(int j = 0;j<o.length;j++){
						if(o[j]==null){
							o[j]=" ";
						}
					}
					Browse_products browse_products=new Browse_products();
					browse_products.setId(Integer.parseInt(o[0].toString()));
					browse_products.setProduct_name(o[1].toString());
					browse_products.setMember_price(Float.parseFloat(o[2].toString()));
					browse_products.setProduct_photo((o[3].toString()));
					browse_products.setProduct_code(Integer.parseInt(o[4].toString()));
					browse_products.setBroadHeading_name(o[5].toString());
					browse_products.setSubclass_name(o[6].toString());
					browse_products.setEvaluate(queryBrowse_productsByEvaluate(browse_products.getId()));
					browse_products.setSales(queryBrowse_productsBySales(browse_products.getId()));
					Browse_products.add(browse_products);
				}
				return Browse_products;		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		//商品列表_小类查询	
		public ArrayList<Browse_products> queryBrowse_productsBySubclass_name(String queryName) {
			Session session=null;
			ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from Browse_products where Subclass_name=?";
				Query queryObject=session.createSQLQuery(sql);
				queryObject.setParameter(0, queryName);
				List list=queryObject.list();
				for (int i = 0; i < list.size(); i++) {
					Object[] o=(Object[])list.get(i);
					for(int j = 0;j<o.length;j++){
						if(o[j]==null){
							o[j]=" ";
						}
					}
					Browse_products browse_products=new Browse_products();
					browse_products.setId(Integer.parseInt(o[0].toString()));
					browse_products.setProduct_name(o[1].toString());
					browse_products.setMember_price(Float.parseFloat(o[2].toString()));
					browse_products.setProduct_photo((o[3].toString()));
					browse_products.setProduct_code(Integer.parseInt(o[4].toString()));
					browse_products.setBroadHeading_name(o[5].toString());
					browse_products.setSubclass_name(o[6].toString());
					browse_products.setEvaluate(queryBrowse_productsByEvaluate(browse_products.getId()));
					browse_products.setSales(queryBrowse_productsBySales(browse_products.getId()));
					Browse_products.add(browse_products);
				}
				return Browse_products;		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		
		//商品列表_产品名称查询	
				public ArrayList<Browse_products> queryBrowse_productsByProduct_name(String queryName) {
					Session session=null;
					ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
					try{
						session=HibernateSessionFactory.getSession();
						String sql="select * from Browse_products where Product_name like '%"+queryName+"%'";
						Query queryObject=session.createSQLQuery(sql);
						List list=queryObject.list();
						for (int i = 0; i < list.size(); i++) {
							Object[] o=(Object[])list.get(i);
							for(int j = 0;j<o.length;j++){
								if(o[j]==null){
									o[j]=" ";
								}
							}
							Browse_products browse_products=new Browse_products();
							browse_products.setId(Integer.parseInt(o[0].toString()));
							browse_products.setProduct_name(o[1].toString());
							browse_products.setMember_price(Float.parseFloat(o[2].toString()));
							browse_products.setProduct_photo((o[3].toString()));
							browse_products.setProduct_code(Integer.parseInt(o[4].toString()));
							browse_products.setBroadHeading_name(o[5].toString());
							browse_products.setSubclass_name(o[6].toString());
							browse_products.setEvaluate(queryBrowse_productsByEvaluate(browse_products.getId()));
							browse_products.setSales(queryBrowse_productsBySales(browse_products.getId()));
							Browse_products.add(browse_products);
						}
						return Browse_products;		
					}catch(Exception ex){
						ex.printStackTrace();
						return null;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
				
			//商品列表_产品价格查询	
				public ArrayList<Browse_products> queryBrowse_productsByMember_price(float a,float b) {
					Session session=null;
					ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
					try{
						session=HibernateSessionFactory.getSession();
						String sql="select * from Browse_products where Member_price >= ? and Member_price <= ?";
						Query queryObject=session.createSQLQuery(sql);
						queryObject.setParameter(0, a);
						queryObject.setParameter(1, b);
						List list=queryObject.list();
						for (int i = 0; i < list.size(); i++) {
							Object[] o=(Object[])list.get(i);
							for(int j = 0;j<o.length;j++){
								if(o[j]==null){
									o[j]=" ";
								}
							}
							Browse_products browse_products=new Browse_products();
							browse_products.setId(Integer.parseInt(o[0].toString()));
							browse_products.setProduct_name(o[1].toString());
							browse_products.setMember_price(Float.parseFloat(o[2].toString()));
							browse_products.setProduct_photo((o[3].toString()));
							browse_products.setProduct_code(Integer.parseInt(o[4].toString()));
							browse_products.setBroadHeading_name(o[5].toString());
							browse_products.setSubclass_name(o[6].toString());
							browse_products.setEvaluate(queryBrowse_productsByEvaluate(browse_products.getId()));
							browse_products.setSales(queryBrowse_productsBySales(browse_products.getId()));
							Browse_products.add(browse_products);
						}
						return Browse_products;		
					}catch(Exception ex){
						ex.printStackTrace();
						return null;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
				//商品列表_小类查询	
				public ArrayList<Browse_products> queryBrowse_productsByProductId(int id) {
					Session session=null;
					ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
					try{
						session=HibernateSessionFactory.getSession();
						String sql="select * from Browse_products where id=?";
						Query queryObject=session.createSQLQuery(sql);
						queryObject.setParameter(0, id);
						List list=queryObject.list();
						for (int i = 0; i < list.size(); i++) {
							Object[] o=(Object[])list.get(i);
							for(int j = 0;j<o.length;j++){
								if(o[j]==null){
									o[j]=" ";
								}
							}
							Browse_products browse_products=new Browse_products();
							browse_products.setId(Integer.parseInt(o[0].toString()));
							browse_products.setProduct_name(o[1].toString());
							browse_products.setMember_price(Float.parseFloat(o[2].toString()));
							browse_products.setProduct_photo((o[3].toString()));
							browse_products.setProduct_code(Integer.parseInt(o[4].toString()));
							browse_products.setBroadHeading_name(o[5].toString());
							browse_products.setSubclass_name(o[6].toString());
							browse_products.setEvaluate(queryBrowse_productsByEvaluate(browse_products.getId()));
							browse_products.setSales(queryBrowse_productsBySales(browse_products.getId()));
							Browse_products.add(browse_products);
						}
						return Browse_products;		
					}catch(Exception ex){
						ex.printStackTrace();
						return null;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
				//商品列表_销量查询	
				public int queryBrowse_productsBySales(int Product_code) {
					Session session=null;
					ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
					try{
						session=HibernateSessionFactory.getSession();
						String sql="select COUNT(Product_code),Product_code from IndentProductView  where Product_code=? group by Product_code";
						Query queryObject=session.createSQLQuery(sql);
						queryObject.setParameter(0, Product_code);
						List list=queryObject.list();
						if(list.size()<=0){
							return 0;
						}
						Object[] o=(Object[])list.get(0);
						int Sales=Integer.parseInt(o[0].toString());
						return Sales;		
					}catch(Exception ex){
						ex.printStackTrace();
						return 0;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
				//商品列表_评价查询	
				public int queryBrowse_productsByEvaluate(int Product_code) {
					Session session=null;
					ArrayList<Browse_products> Browse_products=new ArrayList<Browse_products>();
					try{
						session=HibernateSessionFactory.getSession();
						String sql="select  COUNT(Product_code),Product_code from ProductMessagesView where Product_code=? group by Product_code";
						Query queryObject=session.createSQLQuery(sql);
						queryObject.setParameter(0, Product_code);
						List list=queryObject.list();
						if(list.size()<=0){
							return 0;
						}
						Object[] o=(Object[])list.get(0);
						int Evaluate=Integer.parseInt(o[0].toString());
						return Evaluate;		
					}catch(Exception ex){
						ex.printStackTrace();
						return 0;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
}
