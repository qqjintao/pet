package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.ProductDetils_ProductSuitProduct_name;
import com.ssh.model.StoreJurisdiction;

public class StoreJurisdictionDao {
	// 表-增加
	public int addStoreJurisdiction(StoreJurisdiction StoreJurisdiction) {
		int num = 0;
		Session session = null;
		try {
			session = HibernateSessionFactory.getSession();
			Transaction trans = session.beginTransaction();
			num = Integer.parseInt(session.save(StoreJurisdiction).toString());
			trans.commit();
		} catch (Exception ex) {
			num = 0;
			ex.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return num;
	}

	// 表修改
	public boolean updateStoreJurisdiction(StoreJurisdiction StoreJurisdiction) {
		boolean flag = true;
		Session session = null;
		try {
			session = HibernateSessionFactory.getSession();
			Transaction trans = session.beginTransaction();
			session.update(StoreJurisdiction);
			trans.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			flag = false;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}

	// 表删除
	public boolean deleteStoreJurisdictionById(int id) {
		boolean flag = true;
		Session session = null;
		try {
			session = HibernateSessionFactory.getSession();
			StoreJurisdiction dStoreJurisdiction = (StoreJurisdiction) session.load(StoreJurisdiction.class, id);
			Transaction trans = session.beginTransaction();
			session.delete(dStoreJurisdiction);
			trans.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			flag = false;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}

	// 表的查询
	public StoreJurisdiction queryStoreJurisdictionById(int id) {
		Session session = null;
		try {
			session = HibernateSessionFactory.getSession();
			String queryString = "from StoreJurisdiction where id=?";
			Query queryObject = session.createQuery(queryString);
			queryObject.setParameter(0, id);
			List<StoreJurisdiction> list = queryObject.list();
			return list.get(0);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}

	// 权限表的查询
	public ArrayList<StoreJurisdiction> queryAllStoreJurisdiction(int Store_code) {
		Session session = null;
		try {
			session = HibernateSessionFactory.getSession();
			String queryString = "from StoreJurisdiction where Store_code=?";
			Query queryObject = session.createQuery(queryString);
			queryObject.setParameter(0, Store_code);
			List<StoreJurisdiction> list = queryObject.list();
			return (ArrayList<StoreJurisdiction>) list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}

	// 权限表的权值查询
	public List queryAdmin_jurisdictions(int Store_code) {
		Session session = null;
		try {
			session = HibernateSessionFactory.getSession();
			String queryString = "select Admin_jurisdiction from StoreJurisdiction where Store_code=?";
			Query queryObject = session.createQuery(queryString);
			queryObject.setParameter(0, Store_code);
			List list = queryObject.list();
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}
}
