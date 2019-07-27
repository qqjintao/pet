package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.IndentProduct;
import com.ssh.model.IndentProductView;

public class IndentProductDao {
	//表-增加
	public int addIndentProduct(IndentProduct IndentProduct){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(IndentProduct).toString());
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
	public boolean updateIndentProduct(IndentProduct IndentProduct){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(IndentProduct);
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
	public boolean deleteIndentProductById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			IndentProduct dIndentProduct=(IndentProduct)session.load(IndentProduct.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dIndentProduct);
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
	public IndentProduct queryIndentProductById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from IndentProduct where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<IndentProduct> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//商品购买记录视图显示
			public ArrayList<IndentProductView> queryIndentProductView(int Product_code){
				Session session=null;
				ArrayList<IndentProductView> indentProductViews=new ArrayList<IndentProductView>();
				try{
					session=HibernateSessionFactory.getSession();
					String sql="select * from IndentProductView where Product_code=?";
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
						IndentProductView indentProductView=new IndentProductView();
						indentProductView.setProduct_code(Integer.parseInt(o[0].toString()));;
						indentProductView.setMobile_phone(o[1].toString());
						indentProductView.setProduct_number(Integer.parseInt(o[2].toString()));
						indentProductView.setProduct_name(o[3].toString());
						indentProductView.setIndent_time4(o[4].toString());
						indentProductViews.add(indentProductView);
					}
					return indentProductViews;		
				}catch(Exception ex){
					ex.printStackTrace();
					return null;
				}finally{
					HibernateSessionFactory.closeSession();
				}
			}
}
