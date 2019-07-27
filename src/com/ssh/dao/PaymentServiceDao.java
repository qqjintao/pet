package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.FlushModeType;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.PaymentService;

public class PaymentServiceDao {
	//表-增加
	public int addPaymentService(PaymentService PaymentService){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(PaymentService).toString());
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
	public boolean updatePaymentService(PaymentService PaymentService){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(PaymentService);
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
	public boolean deletePaymentServiceById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			PaymentService dPaymentService=(PaymentService)session.load(PaymentService.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dPaymentService);
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
	public PaymentService queryPaymentServiceById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from PaymentService where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<PaymentService> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//支付表的查询
		public ArrayList<PaymentService> queryPaymentService(){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from PaymentService";
				Query queryObject=session.createQuery(queryString);
				List<PaymentService> list=queryObject.list();
				return (ArrayList<PaymentService>) list;		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
}
