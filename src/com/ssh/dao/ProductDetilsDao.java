package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ProductDetils;
import com.ssh.model.ProductDetils_ProductSuitProduct_name;
import com.ssh.model.Product;
import com.ssh.model.ProductDetils;

public class ProductDetilsDao {
	//查询产品ID返回 
		public ProductDetils queryProductDetilsByProductId(int ProductId){
			Session session=null;
			ArrayList<ProductDetils> ProductDetils=new ArrayList<ProductDetils>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from ProductDetils where ProductId=? and  ProductSuitId  in (select min(id) from ProductSuit group by Product_code)";
				Query queryObject=session.createSQLQuery(sql);
				queryObject.setParameter(0, ProductId);
				List list=queryObject.list();
				for (int i = 0; i < list.size(); i++) {
					Object[] o=(Object[])list.get(i);
					for(int j = 0;j<o.length;j++){
						if(o[j]==null){
							o[j]=" ";
						}
					}
					ProductDetils productDetils=new ProductDetils();
					productDetils.setProductId(Integer.parseInt(o[0].toString()));
					productDetils.setProductSuitId(Integer.parseInt(o[1].toString()));
					productDetils.setProductProduct_name(o[2].toString());
					productDetils.setStore_name(o[3].toString());
					productDetils.setMember_price(Float.parseFloat(o[4].toString()));
					productDetils.setMarket_price(Float.parseFloat(o[5].toString()));
					productDetils.setProduct_tax(Float.parseFloat(o[6].toString()));
					productDetils.setIntegral(Float.parseFloat(o[7].toString()));
					productDetils.setQuantity(Float.parseFloat(o[8].toString()));
					productDetils.setProduct_weight(Float.parseFloat(o[9].toString()));
					productDetils.setEnd_time(o[10].toString());
					productDetils.setDiscount_coupon(Boolean.parseBoolean(o[11].toString()));
					productDetils.setProductSuitProduct_name(o[12].toString());
					productDetils.setProductSuitProduct_until(o[13].toString());
					productDetils.setProductProduct_until(o[14].toString());
					productDetils.setProduct_introduce(o[15].toString());
					ProductDetils.add(productDetils);
				}
				return ProductDetils.get(0);		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
	//查询产品ID出套装列表 
		public ArrayList<ProductDetils_ProductSuitProduct_name> queryProductDetils_ProductSuitProduct_name(int ProductId){
			Session session=null;
			ArrayList<ProductDetils_ProductSuitProduct_name> productDetils_ProductSuitProduct_names=new ArrayList<ProductDetils_ProductSuitProduct_name>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from ProductDetils_ProductSuitProduct_name where ProductId=?";
				Query queryObject=session.createSQLQuery(sql);
				queryObject.setParameter(0, ProductId);
				List list=queryObject.list();
				for (int i = 0; i < list.size(); i++) {
					Object[] o=(Object[])list.get(i);
					for(int j = 0;j<o.length;j++){
						if(o[j]==null){
							o[j]=" ";
						}
					}
					ProductDetils_ProductSuitProduct_name productDetils_ProductSuitProduct_name=new ProductDetils_ProductSuitProduct_name();
					productDetils_ProductSuitProduct_name.setProductId(Integer.parseInt(o[0].toString()));
					productDetils_ProductSuitProduct_name.setProductSuitId(Integer.parseInt(o[1].toString()));		
					productDetils_ProductSuitProduct_name.setProduct_name(o[2].toString());
					productDetils_ProductSuitProduct_names.add(productDetils_ProductSuitProduct_name);
				}
				return productDetils_ProductSuitProduct_names;		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
			
	//查询套装ID
				public ProductDetils queryProductDetilsByProductSuitId(int ProductSuitId){
					Session session=null;
					ArrayList<ProductDetils> ProductDetils=new ArrayList<ProductDetils>();
					try{
						session=HibernateSessionFactory.getSession();
						String sql="select * from ProductDetils where ProductSuitId=?";
						Query queryObject=session.createSQLQuery(sql);
						queryObject.setParameter(0, ProductSuitId);
						List list=queryObject.list();
						for (int i = 0; i < list.size(); i++) {
							Object[] o=(Object[])list.get(i);
							for(int j = 0;j<o.length;j++){
								if(o[j]==null){
									o[j]=" ";
								}
							}
							ProductDetils productDetils=new ProductDetils();
							productDetils.setProductId(Integer.parseInt(o[0].toString()));
							productDetils.setProductSuitId(Integer.parseInt(o[1].toString()));
							productDetils.setProductProduct_name(o[2].toString());
							productDetils.setStore_name(o[3].toString());
							productDetils.setMember_price(Float.parseFloat(o[4].toString()));
							productDetils.setMarket_price(Float.parseFloat(o[5].toString()));
							productDetils.setProduct_tax(Float.parseFloat(o[6].toString()));
							productDetils.setIntegral(Float.parseFloat(o[7].toString()));
							productDetils.setQuantity(Float.parseFloat(o[8].toString()));
							productDetils.setProduct_weight(Float.parseFloat(o[9].toString()));
							productDetils.setEnd_time(o[10].toString());
							productDetils.setDiscount_coupon(Boolean.parseBoolean(o[11].toString()));
							productDetils.setProductSuitProduct_name(o[12].toString());
							productDetils.setProductSuitProduct_until(o[13].toString());
							productDetils.setProductProduct_until(o[14].toString());
							productDetils.setProduct_introduce(o[15].toString());
							ProductDetils.add(productDetils);
						}
						return ProductDetils.get(0);		
					}catch(Exception ex){
						ex.printStackTrace();
						return null;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
}
