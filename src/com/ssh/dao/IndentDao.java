package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ForumView;
import com.ssh.model.Indent;
import com.ssh.model.IndentView;

public class IndentDao {
	//表-增加
	public int addIndent(Indent Indent){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(Indent).toString());
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
	public boolean updateIndent(Indent Indent){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(Indent);
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
	public boolean deleteIndentById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			Indent dIndent=(Indent)session.load(Indent.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dIndent);
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
	public Indent queryIndentById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from Indent where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<Indent> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//订单视图表的显示
		public ArrayList<IndentView> queryIndentViewList(String Mobile_phone){
			Session session=null;
			ArrayList<IndentView> indentViews=new ArrayList<IndentView>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from IndentView where Mobile_phone=?";
				Query queryObject=session.createSQLQuery(sql);
				queryObject.setParameter(0, Mobile_phone);
				List list=queryObject.list();
				for (int i = 0; i < list.size(); i++) {
					Object[] o=(Object[])list.get(i);
					for(int j = 0;j<o.length;j++){
						if(o[j]==null){
							o[j]=" ";
						}
					}
					IndentView indentView=new IndentView();
					indentView.setIndent_code(Long.parseLong(o[0].toString()));
					indentView.setProduct_photo(o[1].toString());
					indentView.setName(o[2].toString());
					indentView.setIndent_memberprice(Float.parseFloat(o[3].toString()));
					indentView.setPayment_name(o[4].toString());
					indentView.setPostal_name(o[5].toString());
					indentView.setIndent_state(Boolean.parseBoolean(o[6].toString()));
					indentView.setIndent_deal1(Boolean.parseBoolean(o[7].toString()));
					indentView.setIndent_deal2(Boolean.parseBoolean(o[8].toString()));
					indentView.setIndent_deal3(Boolean.parseBoolean(o[9].toString()));
					indentView.setIndent_deal4(Boolean.parseBoolean(o[10].toString()));
					indentView.setEvaluate(o[11].toString());
					indentView.setProduct_code(Integer.parseInt(o[12].toString()));
					indentView.setSubclass_name(o[13].toString());
					indentView.setMobile_phone(o[14].toString());
					indentView.setStore_code(Integer.parseInt(o[15].toString()));
					indentView.setIndent_time(o[16].toString());
					indentViews.add(indentView);
				}
				return indentViews;	
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		public ArrayList<IndentView> queryIndentViewListByState(String Mobile_phone,String State){
			Session session=null;
			ArrayList<IndentView> indentViews=new ArrayList<IndentView>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from IndentView where Mobile_phone=? "+State;
				Query queryObject=session.createSQLQuery(sql);
				queryObject.setParameter(0, Mobile_phone);
				List list=queryObject.list();
				for (int i = 0; i < list.size(); i++) {
					Object[] o=(Object[])list.get(i);
					for(int j = 0;j<o.length;j++){
						if(o[j]==null){
							o[j]=" ";
						}
					}
					IndentView indentView=new IndentView();
					indentView.setIndent_code(Long.parseLong(o[0].toString()));
					indentView.setProduct_photo(o[1].toString());
					indentView.setName(o[2].toString());
					indentView.setIndent_memberprice(Float.parseFloat(o[3].toString()));
					indentView.setPayment_name(o[4].toString());
					indentView.setPostal_name(o[5].toString());
					indentView.setIndent_state(Boolean.parseBoolean(o[6].toString()));
					indentView.setIndent_deal1(Boolean.parseBoolean(o[7].toString()));
					indentView.setIndent_deal2(Boolean.parseBoolean(o[8].toString()));
					indentView.setIndent_deal3(Boolean.parseBoolean(o[9].toString()));
					indentView.setIndent_deal4(Boolean.parseBoolean(o[10].toString()));
					indentView.setEvaluate(o[11].toString());
					indentView.setProduct_code(Integer.parseInt(o[12].toString()));
					indentView.setSubclass_name(o[13].toString());
					indentView.setMobile_phone(o[14].toString());
					indentView.setStore_code(Integer.parseInt(o[15].toString()));
					indentView.setIndent_time(o[16].toString());
					indentViews.add(indentView);
				}
				return indentViews;	
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
}
