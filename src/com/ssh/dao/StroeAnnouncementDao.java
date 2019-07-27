package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ServiceQQ;
import com.ssh.model.StroeAnnouncement;

public class StroeAnnouncementDao {
	//表-增加
	public int addStroeAnnouncement(StroeAnnouncement StroeAnnouncement){
		int num=0;
		Session session=null;
		try{
		session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		num=Integer.parseInt(session.save(StroeAnnouncement).toString());
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
	public boolean updateStroeAnnouncement(StroeAnnouncement StroeAnnouncement){
		boolean flag=true;
		Session session = null;
		try{
			session=HibernateSessionFactory.getSession();
			Transaction trans=session.beginTransaction();
			session.update(StroeAnnouncement);
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
	public boolean deleteStroeAnnouncementById(int id){
		boolean flag=true;
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			StroeAnnouncement dStroeAnnouncement=(StroeAnnouncement)session.load(StroeAnnouncement.class,id);
			Transaction trans=session.beginTransaction();
			session.delete(dStroeAnnouncement);
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
	public StroeAnnouncement queryStroeAnnouncementById(int id){
		Session session=null;
		try{
			session=HibernateSessionFactory.getSession();
			String queryString="from StroeAnnouncement where id=?";
			Query queryObject=session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<StroeAnnouncement> list=queryObject.list();
			return list.get(0);		
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	//查询该店的QQ列表
		public ArrayList<StroeAnnouncement> queryStroeAnnouncement(int Store_code){
			Session session=null;
			ArrayList<StroeAnnouncement> stroeAnnouncements=new ArrayList<StroeAnnouncement>();
			try{
				session=HibernateSessionFactory.getSession();
				String sql="select * from StroeAnnouncement where Store_code=?";
				Query queryObject=session.createSQLQuery(sql);
				queryObject.setParameter(0, Store_code);
				List list=queryObject.list();
				for (int i = 0; i < list.size(); i++) {
					Object[] o=(Object[])list.get(i);
					for(int j = 0;j<o.length;j++){
						if(o[j]==null){
							o[j]=" ";
						}
					}
					StroeAnnouncement stroeAnnouncement=new StroeAnnouncement();
					stroeAnnouncement.setId(Integer.parseInt(o[0].toString()));
					stroeAnnouncement.setAnnouncement_code(Integer.parseInt(o[1].toString()));
					stroeAnnouncement.setStore_code(Integer.parseInt(o[2].toString()));
					stroeAnnouncement.setAnnouncement_tile(o[3].toString());
					stroeAnnouncement.setAnnouncement_content(o[4].toString());
					stroeAnnouncement.setAnnouncement_time(o[5].toString());
					stroeAnnouncement.setAnnouncement_state(Boolean.parseBoolean(o[6].toString()));
					stroeAnnouncements.add(stroeAnnouncement);
				}
				return stroeAnnouncements;		
			}catch(Exception ex){
				ex.printStackTrace();
				return null;
			}finally{
				HibernateSessionFactory.closeSession();
			}
		}
}
