package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ShoppingCartView;
import com.ssh.model.ShoppingCartViewSubbranch;

public class ShoppingCartDao {
	public ArrayList<ShoppingCartView> queryShoppingCartView(String Mobile_phone){
		Session session=null;
		ArrayList<ShoppingCartView> shoppingCartViews=new ArrayList<ShoppingCartView>();
		try{
			session=HibernateSessionFactory.getSession();
			String sql="select * from ShoppingCartView where Mobile_phone=? order by 店铺名称";
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
				ShoppingCartView shoppingCartView=new ShoppingCartView();
				shoppingCartView.setOrderProduct_code(Integer.parseInt(o[0].toString()));
				shoppingCartView.setMobile_phone(o[1].toString());
				shoppingCartView.setStore_code(Integer.parseInt(o[2].toString()));
				shoppingCartView.setOrderProduct_sum(Integer.parseInt(o[3].toString()));
				shoppingCartView.setProductId(Integer.parseInt(o[4].toString()));
				shoppingCartView.setProductSuitId(Integer.parseInt(o[5].toString()));
				shoppingCartView.setProduct_name(o[6].toString());
				shoppingCartView.setStore_name(o[7].toString());
				shoppingCartView.setMember_price(Float.parseFloat(o[8].toString()));
				shoppingCartView.setProduct_tax(Float.parseFloat(o[9].toString()));
				shoppingCartView.setIntegral(Float.parseFloat(o[10].toString()));
				shoppingCartView.setProduct_weight(Float.parseFloat(o[11].toString()));
				shoppingCartView.setDiscount_coupon(Boolean.parseBoolean(o[12].toString()));
				shoppingCartView.setProductSuit_name(o[13].toString());
				shoppingCartView.setProduct_until(o[14].toString());
				shoppingCartView.setProduct_photo(o[15].toString());
				shoppingCartViews.add(shoppingCartView);
			}
			return shoppingCartViews;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//分店显示
	public ArrayList<ShoppingCartViewSubbranch> queryShoppingCartViewSubbranch(String Mobile_phone){
		Session session=null;
		ArrayList<ShoppingCartViewSubbranch> shoppingCartViewSubbranchs=new ArrayList<ShoppingCartViewSubbranch>();
		try{
			session=HibernateSessionFactory.getSession();
			String sql=" select COUNT(店铺名称) 数量,店铺名称 from ShoppingCartView where Mobile_phone=? group by 店铺名称 order by 店铺名称";
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
				ShoppingCartViewSubbranch shoppingCartViewSubbranch=new ShoppingCartViewSubbranch();
				shoppingCartViewSubbranch.setSum(Integer.parseInt(o[0].toString()));
				shoppingCartViewSubbranch.setStore_name(o[1].toString());
				shoppingCartViewSubbranchs.add(shoppingCartViewSubbranch);
			}
			return shoppingCartViewSubbranchs;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
}
