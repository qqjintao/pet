package com.ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.OrderProduct;

public class OrderProductDao {
	//表-增加
	public int addOrderProduct(OrderProduct OrderProduct){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(OrderProduct).toString());
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
	public boolean updateOrderProduct(OrderProduct OrderProduct){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(OrderProduct);
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
	public boolean deleteOrderProductById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			OrderProduct dOrderProduct=(OrderProduct)session.load(OrderProduct.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dOrderProduct);
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
	public OrderProduct queryOrderProductById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from OrderProduct where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<OrderProduct> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//购物车编号max查询
	public int queryOrderProductByMaxOrderProduct_code(String Mobile_phone){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String sql="select MAX(OrderProduct_code) from OrderProduct where Mobile_phone=?";
			Query queryObject=session.createSQLQuery(sql);
			queryObject.setParameter(0, Mobile_phone);
			List list = queryObject.list();
			if(list.get(0)==null){
				return 0;
			}
			return (int) list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return -1;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//立即加入购物车
	public int immediatelyAddOrderProduct(OrderProduct OrderProduct){
		int num=0;
		Session session=null;
		try{		
			OrderProduct dOrderProduct=queryOrderProductByProductSuitId(OrderProduct.getMobile_phone(),OrderProduct.getProductSuitId());
			if(dOrderProduct!=null){
				dOrderProduct.setOrderProduct_sum(dOrderProduct.getOrderProduct_sum()+OrderProduct.getOrderProduct_sum());
				session=HibernateSessionFactory.getSession();
				Transaction trans=session.beginTransaction();
				session.update(dOrderProduct);
				trans.commit();
				num++;
			}else{
				OrderProduct.setOrderProduct_code(queryOrderProductByMaxOrderProduct_code(OrderProduct.getMobile_phone())+1);
				session=HibernateSessionFactory.getSession();
				Transaction trans=session.beginTransaction();
				num=Integer.parseInt(session.save(OrderProduct).toString());
				trans.commit();
			}
		}catch(Exception ex){
			num=0;
			ex.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return num;
	}
	//表的查询
		public OrderProduct queryOrderProductByProductSuitId(String  Mobile_phone,int ProductSuitId){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from OrderProduct where Mobile_phone=? and ProductSuitId=?";
				Query queryObject=session.createQuery(queryString);
				queryObject.setParameter(0, Mobile_phone);
				queryObject.setParameter(1, ProductSuitId);
				List<OrderProduct> list=queryObject.list();
				if(list.size()<=0){
					return null;
				}
				return list.get(0);		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		//购物车删除商品
				public boolean deleteOrderProductByOrderProduct_code(OrderProduct OrderProduct){
					Session session=null;
					try{
						//获得session
						session=HibernateSessionFactory.getSession();
						String queryString="from OrderProduct where Mobile_phone = ? and OrderProduct_code = ?";
						Query queryObject=session.createQuery(queryString);
						queryObject.setParameter(0, OrderProduct.getMobile_phone());
						queryObject.setParameter(1, OrderProduct.getOrderProduct_code());
						List<OrderProduct> list=queryObject.list();
						OrderProduct orderProduct=list.get(0);
						if(orderProduct!=null){
							Transaction trans=session.beginTransaction();
							session.delete(orderProduct);
							trans.commit();
							return true;
						}else{
							return false;
						}	
					}catch(Exception ex){
						ex.printStackTrace();
						return false;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
				//购物车商品件数更新
				public boolean updateOrderProductByOrderProduct_code(OrderProduct OrderProduct){
					Session session=null;
					try{
						//获得session
						session=HibernateSessionFactory.getSession();
						String queryString="from OrderProduct where Mobile_phone = ? and OrderProduct_code = ?";
						Query queryObject=session.createQuery(queryString);
						queryObject.setParameter(0, OrderProduct.getMobile_phone());
						queryObject.setParameter(1, OrderProduct.getOrderProduct_code());
						List<OrderProduct> list=queryObject.list();
						OrderProduct orderProduct=list.get(0);
						if(orderProduct!=null&&updateOrderProduct(orderProduct)){
							return true;
						}else{
							return false;
						}	
					}catch(Exception ex){
						ex.printStackTrace();
						return false;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
				//表的查询 手机 购物车编号
				public OrderProduct queryOrderProductByOrderProduct_code(String Mobile_phone,int OrderProduct_code){
					Session session=null;
					try{
						session=HibernateSessionFactory.getSession();
						String queryString="from OrderProduct where Mobile_phone = ? and OrderProduct_code = ?";
						Query queryObject=session.createQuery(queryString);
						queryObject.setParameter(0, Mobile_phone);
						queryObject.setParameter(1, OrderProduct_code);
						List<OrderProduct> list=queryObject.list();
						return list.get(0);		
					}catch(Exception ex){
						ex.printStackTrace();
						return null;
					}finally{
						HibernateSessionFactory.closeSession();
					}
				}
}
