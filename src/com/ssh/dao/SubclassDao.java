package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Forum;
import com.ssh.model.Subclass;

public class SubclassDao {
	//表-增加
	public int addSubclass(Subclass Subclass){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(Subclass).toString());
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
	public boolean updateSubclass(Subclass Subclass){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(Subclass);
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
	public boolean deleteSubclassById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			Subclass dSubclass=(Subclass)session.load(Subclass.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dSubclass);
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
	public Subclass querySubclassById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from Subclass where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<Subclass> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	public ArrayList<Subclass> querySubclassList(){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from Subclass";
			Query queryObject=session.createQuery(queryString);
			List<Subclass> list=queryObject.list();
			return (ArrayList<Subclass>) list;		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
}
