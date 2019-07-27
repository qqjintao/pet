package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Collect;
import com.ssh.model.CollectStoreView;
import com.ssh.model.CollectView;
import com.ssh.model.ForumView;

public class CollectDao {
	//表-增加
		public int addCollect(Collect Collect){
			int num=0;
			Session session=null;
			try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			num=Integer.parseInt(session.save(Collect).toString());
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
		public boolean updateCollect(Collect Collect){
			boolean flag=true;
			Session session = null;
			try{
				session=HibernateSessionFactory.getSession();
				Transaction trans=session.beginTransaction();
				session.update(Collect);
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
		public boolean deleteCollectById(int id){
			boolean flag=true;
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				Collect dCollect=(Collect)session.load(Collect.class,id);
				Transaction trans=session.beginTransaction();
				session.delete(dCollect);
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
		public Collect queryCollectById(int id){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from Collect where id=?";
				Query queryObject=session.createQuery(queryString);
				queryObject.setParameter(0, id);
				List<Collect> list=queryObject.list();
				return list.get(0);		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		
		//收藏商品显示
		public ArrayList<CollectView> queryCollectList(String Mobile_phone){
			Session session=null;
			ArrayList<CollectView> collectViews=new ArrayList<CollectView>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from CollectView where Mobile_phone=?";
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
					CollectView collectView=new CollectView();
					collectView.setMobile_phone(o[0].toString());
					collectView.setCodeType(Integer.parseInt(o[1].toString()));
					collectView.setProduct_name(o[2].toString());
					collectView.setMember_price(Float.parseFloat(o[3].toString()));
					collectView.setProduct_photo(o[4].toString());
					collectView.setProduct_state(Boolean.parseBoolean(o[5].toString()));
					collectView.setProduct_code(Integer.parseInt(o[6].toString()));
					collectView.setSubclass_name(o[7].toString());
					collectView.setId(Integer.parseInt(o[8].toString()));
					collectViews.add(collectView);
				}
				return collectViews;	
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		
		//收藏商品显示
				public ArrayList<CollectStoreView> queryCollectStoreList(String Mobile_phone){
					Session session=null;
					ArrayList<CollectStoreView> collectStoreViews=new ArrayList<CollectStoreView>();
					try{
						session=HibernateSessionFactory.getSession();
						String sql="select * from CollectStoreView where Mobile_phone=?";
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
							CollectStoreView collectStoreView=new CollectStoreView();
							collectStoreView.setMobile_phone(o[0].toString());
							collectStoreView.setCodeType(Integer.parseInt(o[1].toString()));
							collectStoreView.setId(Integer.parseInt(o[2].toString()));
							collectStoreView.setStore_code(Integer.parseInt(o[3].toString()));
							collectStoreView.setStore_name(o[4].toString());
							collectStoreView.setStore_logo(o[5].toString());
							collectStoreViews.add(collectStoreView);
						}
						return collectStoreViews;	
					}catch(Exception ex){
						ex.printStackTrace();
						return null;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
}
