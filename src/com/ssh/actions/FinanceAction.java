package com.ssh.actions;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.FinanceDao;
import com.ssh.model.Finance;
import com.ssh.model.Registry;

public class FinanceAction extends ActionSupport{
	private Registry registry = new Registry();
	private Finance finance=new Finance();
	private	FinanceDao financeDao=new FinanceDao();
	
	//增删改查
	public String addFinance(){
		if(financeDao.addFinance(finance)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteFinanceById(){
		if(financeDao.deleteFinanceById(finance.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateFinance(){
		if(financeDao.updateFinance(finance)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryFinanceById(){
		if(financeDao.queryFinanceById(finance.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//我的优惠券
	public String queryCoupon(){
		finance=getthisfinance();
		if(finance!=null){
			return "Coupon";
		}else{
			return INPUT;
		}
	}
	//我的积分
	public String queryBeangetBeanList(){
		finance=getthisfinance();
		if(finance!=null){
			return "BeangetBeanList";
		}else{
			return INPUT;
		}
	}
	//我的余额
	public String queryAccount(){
		finance=getthisfinance();
		if(finance!=null){
			return "Account";
		}else{
			return INPUT;
		}
	}
	//提现 充值
	public String changeFinance(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if(registry==null){
			return null;
		}
		Finance oldfinance=new Finance();
		oldfinance=financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		oldfinance.setBalance(finance.getBalance()+oldfinance.getBalance());
		if(oldfinance.getPayment_code().equals(finance.getPayment_code())){
			if(financeDao.updateFinance(oldfinance)){
				return "updatesuccess";
			}else{
				return INPUT;
			}
		}else{
			return INPUT;
		}		
	}
	public String changeFinance2(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if(registry==null){
			return null;
		}
		Finance oldfinance=new Finance();
		oldfinance=financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		if(finance.getBalance()>oldfinance.getBalance()){
			return INPUT;
		}else{
			oldfinance.setBalance(oldfinance.getBalance()-finance.getBalance());
			if(oldfinance.getPayment_code().equals(finance.getPayment_code())){
				if(financeDao.updateFinance(oldfinance)){
					return "updatesuccess";
				}else{
					return INPUT;
				}
			}else{
				return INPUT;
			}		
		}	
	}
	public Finance getthisfinance(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if(registry==null){
			return null;
		}
		finance=financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		if (finance == null) {
			return null;
		}else{
			return finance;
		}
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
}
