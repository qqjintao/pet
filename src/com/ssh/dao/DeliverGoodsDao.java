package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.DeliverGoods;
import com.ssh.model.PostalServiceView;
import com.ssh.model.ShoppingCartViewSubbranch;

public class DeliverGoodsDao {
	//表-增加
	public int addDeliverGoods(DeliverGoods DeliverGoods){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(DeliverGoods).toString());
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
	public boolean updateDeliverGoods(DeliverGoods DeliverGoods){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(DeliverGoods);
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
	public boolean deleteDeliverGoodsById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			DeliverGoods dDeliverGoods=(DeliverGoods)session.load(DeliverGoods.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dDeliverGoods);
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
	public DeliverGoods queryDeliverGoodsById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from DeliverGoods where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<DeliverGoods> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//快递表视图的查询
	public ArrayList<PostalServiceView> queryPostalServiceView(ArrayList<ShoppingCartViewSubbranch> shoppingCartViewSubbranch){
		Session session=null;
		ArrayList<PostalServiceView> postalServiceViews=new ArrayList<PostalServiceView>();
		try{
			for(int i=0;i<shoppingCartViewSubbranch.size();i++){
				session=HibernateSessionFactory.getSession();
				String sql=" select * from PostalServiceView where 店家名称=? order by 店家名称 ";
				Query queryObject=session.createSQLQuery(sql);
				queryObject.setParameter(0, shoppingCartViewSubbranch.get(i).getStore_name());
				List list=queryObject.list();
				for (int j = 0; j < list.size(); j++) {
					Object[] o=(Object[])list.get(j);
					PostalServiceView postalServiceView=new PostalServiceView();
					postalServiceView.setPostal_code(Integer.parseInt(o[0].toString()));
					postalServiceView.setPostal_name(o[1].toString());
					postalServiceView.setPrice(Float.parseFloat(o[2].toString()));
					postalServiceView.setExplain(o[3].toString());
					postalServiceView.setStore_name(o[4].toString());
					postalServiceView.setDistribution_explain(o[5].toString());
					postalServiceViews.add(postalServiceView);
				}
			}
			return postalServiceViews;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
}
