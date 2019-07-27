package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.Forum;
import com.ssh.model.ForumView;
import com.ssh.model.IndentProductView;
import com.ssh.model.ProductMessagesView;

public class ForumDao {
	//表-增加
	public int addForum(Forum Forum){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(Forum).toString());
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
	public boolean updateForum(Forum Forum){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(Forum);
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
	public boolean deleteForumById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			Forum dForum=(Forum)session.load(Forum.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dForum);
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
	public Forum queryForumById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from Forum where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<Forum> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//论坛表显示
	public ArrayList<ForumView> queryForumList(){
		Session session=null;
		ArrayList<ForumView> forumViews=new ArrayList<ForumView>();
		try{
			session=HibernateSessionFactory.getSession();
			String sql="select * from ForumView order by ForumView.留言时间 desc";
			Query queryObject=session.createSQLQuery(sql);
			List list=queryObject.list();
			for (int i = 0; i < list.size(); i++) {
				Object[] o=(Object[])list.get(i);
				for(int j = 0;j<o.length;j++){
					if(o[j]==null){
						o[j]=" ";
					}
				}
				ForumView forumView=new ForumView();
				forumView.setHead_portrait(o[0].toString());
				forumView.setNickname(o[1].toString());
				forumView.setForum_code(Integer.parseInt(o[2].toString()));
				forumView.setMobile_phone(o[3].toString());
				forumView.setSubclass_name(o[4].toString());
				forumView.setForumMessages_title(o[5].toString());
				forumView.setForumMessages_context(o[6].toString());
				forumView.setForumMessages_time(o[7].toString());
				forumViews.add(forumView);
			}
			return forumViews;	
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	public int queryForumsumbyMobile_phone(String Mobile_phone){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String sql="select COUNT(id) from Forum where Mobile_phone=?";
			Query queryObject=session.createSQLQuery(sql);
			queryObject.setParameter(0, Mobile_phone);
			List list = queryObject.list();
			return (int) list.get(0);	
		}catch(Exception ex){
			ex.printStackTrace();
			return 0;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//论坛编号max查询
		public int queryForumByMaxForum_code(){
			Session session=null;
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select MAX(Forum_code) from Forum ";
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
