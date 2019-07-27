package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Forum;
import com.ssh.model.ForumMessages;

public class ForumMessagesDao {
	//表-增加
	public int addForumMessages(ForumMessages ForumMessages){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(ForumMessages).toString());
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
	public boolean updateForumMessages(ForumMessages ForumMessages){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(ForumMessages);
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
	public boolean deleteForumMessagesById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			ForumMessages dForumMessages=(ForumMessages)session.load(ForumMessages.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dForumMessages);
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
	public ForumMessages queryForumMessagesById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from ForumMessages where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<ForumMessages> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//论坛留言表显示
		public ArrayList<ForumMessages> queryForumMessagesList(){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String queryString="from ForumMessages order by ForumMessages_time desc";
				Query queryObject=session.createQuery(queryString);
				List<ForumMessages> list=queryObject.list();
				return (ArrayList<ForumMessages>) list;		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
		public int queryForumMessagesByMaxForumMessages_code(){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select MAX(ForumMessages_code) from ForumMessages ";
				Query queryObject=session.createSQLQuery(sql);
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
}
