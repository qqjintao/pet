package com.ssh.actions;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.FinanceDao;
import com.ssh.dao.Master_tableDao;
import com.ssh.dao.RegistryDao;
import com.ssh.model.Finance;
import com.ssh.model.Master_table;
import com.ssh.model.Registry;

public class SafeAction extends ActionSupport {
	private int accountsafe;// 账户安全系数
	private int passwordsafe;// 登录密码安全系数
	private int payment_codesafe;// 支付密码安全
	private String oldPassword;
	private String newPassword;
	private Master_table master_table = new Master_table();
	private Registry registry = new Registry();
	private Finance finance = new Finance();
	private FinanceDao financeDao = new FinanceDao();
	private RegistryDao registryDao = new RegistryDao();
	private Master_tableDao master_tableDao = new Master_tableDao();

	public String execute() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		master_table = master_tableDao.queryMaster_tableById(registry.getMobile_phone());
		finance = financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		// 登录密码安全系数
		if (registry.getPassword().toString().length() <= 6) {
			passwordsafe = 0;
		} else if (registry.getPassword().toString().length() < 9) {
			passwordsafe = 1;
		} else {
			passwordsafe = 2;
		}
		// 支付密码安全
		if (finance.getPayment_code().toString().length() <= 6) {
			payment_codesafe = 0;
		} else if (finance.getPayment_code().toString().length() < 9) {
			payment_codesafe = 1;
		} else {
			payment_codesafe = 2;
		}
		// 账户安全系数
		accountsafe = 0;
		if (registry.getPassword() != null && registry.getPassword().length() > 0) {
			accountsafe++;
		}
		if (registry.getMailbox() != null && registry.getMailbox().length() > 0) {
			accountsafe++;
		}
		if (finance.getPayment_code() != null && finance.getPayment_code().length() > 0) {
			accountsafe++;
		}
		// 保护手机号码
		String Mobile_phone1 = master_table.getMobile_phone().substring(0, 3);
		String Mobile_phone2 = master_table.getMobile_phone().substring(master_table.getMobile_phone().length() - 4,
				master_table.getMobile_phone().length());
		master_table.setMobile_phone(Mobile_phone1 + "****" + Mobile_phone2);
		return SUCCESS;
	}

	public String changePassword() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		if (oldPassword.equals(registry.getPassword())) {
			registry.setPassword(newPassword);
			if (registryDao.updateRegistry(registry)) {
				return "changePassword";
			} else {
				// 重定向跳转得到错误页面
				return INPUT;
			}
		} else {
			return INPUT;
		}
	}
//修改支付密码
	public String changePayment_code() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		finance = financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		if (finance.getPayment_code() == null || finance.getPayment_code().length() <= 0) {
			finance.setPayment_code(newPassword);
			if (financeDao.updateFinance(finance)) {
				return "changePassword";
			} else {
				// 重定向跳转得到错误页面
				return INPUT;
			}
		} else if (oldPassword.equals(finance.getPayment_code())) {
			finance.setPayment_code(newPassword);
			if (financeDao.updateFinance(finance)) {
				return "changePassword";
			} else {
				// 重定向跳转得到错误页面
				return INPUT;
			}
		} else {
			return INPUT;
		}
	}
//忘记支付密码
	public String forgetPayment_code() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		finance = financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		
			finance.setPayment_code(newPassword);
			if (financeDao.updateFinance(finance)) {
				return "changePassword";
			} else {
				// 重定向跳转得到错误页面
				return INPUT;
			}
		
	}
	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public int getAccountsafe() {
		return accountsafe;
	}

	public void setAccountsafe(int accountsafe) {
		this.accountsafe = accountsafe;
	}

	public int getPasswordsafe() {
		return passwordsafe;
	}

	public void setPasswordsafe(int passwordsafe) {
		this.passwordsafe = passwordsafe;
	}

	public int getPayment_codesafe() {
		return payment_codesafe;
	}

	public void setPayment_codesafe(int payment_codesafe) {
		this.payment_codesafe = payment_codesafe;
	}

	public Master_table getMaster_table() {
		return master_table;
	}

	public void setMaster_table(Master_table master_table) {
		this.master_table = master_table;
	}

	public Registry getRegistry() {
		return registry;
	}

	public void setRegistry(Registry registry) {
		this.registry = registry;
	}

	public Finance getFinance() {
		return finance;
	}

	public void setFinance(Finance finance) {
		this.finance = finance;
	}

	public FinanceDao getFinanceDao() {
		return financeDao;
	}

	public void setFinanceDao(FinanceDao financeDao) {
		this.financeDao = financeDao;
	}

	public RegistryDao getRegistryDao() {
		return registryDao;
	}

	public void setRegistryDao(RegistryDao registryDao) {
		this.registryDao = registryDao;
	}

	public Master_tableDao getMaster_tableDao() {
		return master_tableDao;
	}

	public void setMaster_tableDao(Master_tableDao master_tableDao) {
		this.master_tableDao = master_tableDao;
	}

}
