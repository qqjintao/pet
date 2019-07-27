package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ssh.common.HibernateSessionFactory;
import com.ssh.model.StoreAccount;

public class StoreAccountDao {
	// 表-增加
		public int addStoreAccount(StoreAccount StoreAccount) {
			int num = 0;
			Session session = null;
			try {
				session = HibernateSessionFactory.getSession();
				Transaction trans = session.beginTransaction();
				num = Integer.parseInt(session.save(StoreAccount).toString());
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
		public boolean updateStoreAccount(StoreAccount StoreAccount) {
			boolean flag = true;
			Session session = null;
			try {
				session = HibernateSessionFactory.getSession();
				Transaction trans = session.beginTransaction();
				session.update(StoreAccount);
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
		public boolean deleteStoreAccountById(int id) {
			boolean flag = true;
			Session session = null;
			try {
				session = HibernateSessionFactory.getSession();
				StoreAccount dStoreAccount = (StoreAccount) session.load(StoreAccount.class, id);
				Transaction trans = session.beginTransaction();
				session.delete(dStoreAccount);
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
		public StoreAccount queryStoreAccountById(int id) {
			Session session = null;
			try {
				session = HibernateSessionFactory.getSession();
				String queryString = "from StoreAccount where id=?";
				Query queryObject = session.createQuery(queryString);
				queryObject.setParameter(0, id);
				List<StoreAccount> list = queryObject.list();
				return list.get(0);
			} catch (Exception ex) {
				ex.printStackTrace();
				return null;
			} finally {
				HibernateSessionFactory.closeSession();
			}
		}

		// 店家登录
		public StoreAccount queryStoreAccountByAdmin(int Store_code, String Admin_account, String Admin_password) {
			Session session = null;
			try {
				session = HibernateSessionFactory.getSession();
				String queryString = "from StoreAccount where Store_code=? and Admin_account=?  and Admin_password=?";
				Query queryObject = session.createQuery(queryString);
				queryObject.setParameter(0, Store_code);
				queryObject.setParameter(1, Admin_account);
				queryObject.setParameter(2, Admin_password);
				List<StoreAccount> list = queryObject.list();
				return list.get(0);
			} catch (Exception ex) {
				ex.printStackTrace();
				return null;
			} finally {
				HibernateSessionFactory.closeSession();
			}
		}

		// 店家修改密码
		public boolean shopChangePassword(int Store_code, String Admin_account, String Admin_password) {
			boolean flag = true;
			Session session = null;
			try {
				session = HibernateSessionFactory.getSession();
				String queryString = "from StoreAccount where Store_code=? and Admin_account=?";
				Query queryObject = session.createQuery(queryString);
				queryObject.setParameter(0, Store_code);
				queryObject.setParameter(1, Admin_account);
				List<StoreAccount> list = queryObject.list();
				StoreAccount oldStoreAccount = (StoreAccount) list.get(0);
				oldStoreAccount.setAdmin_password(Admin_password);
				Transaction trans = session.beginTransaction();
				session.update(oldStoreAccount);
				trans.commit();
			} catch (Exception ex) {
				ex.printStackTrace();
				flag = false;
			} finally {
				HibernateSessionFactory.closeSession();
			}
			return flag;
		}
		// 显示全部店家账户
		public ArrayList<StoreAccount> queryAllStoreAccount(int Store_code) {
			Session session = null;
			try {
				session = HibernateSessionFactory.getSession();
				String queryString = "from StoreAccount where Store_code=?";
				Query queryObject = session.createQuery(queryString);
				queryObject.setParameter(0, Store_code);
				List<StoreAccount> list = queryObject.list();
				
				return (ArrayList<StoreAccount>) list;
			} catch (Exception ex) {
				ex.printStackTrace();
				return null;
			} finally {
				HibernateSessionFactory.closeSession();
			}
		}
}
