package com.ssh.actions;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.OrderProductDao;
import com.ssh.dao.StoreDao;
import com.ssh.model.OrderProduct;
import com.ssh.model.Registry;
import com.ssh.model.Store;
import com.ssh.model.StoreAccount;

public class OrderProductAction extends ActionSupport {
	private Registry registry;
	private Store store;
	private OrderProduct orderProduct = new OrderProduct();
	private StoreDao storeDao = new StoreDao();
	private OrderProductDao orderProductDao = new OrderProductDao();
	// 异步
	private String orderProduct_sum;
	private String productSuitId;
	private String store_name;

	// 增删改查
	public String addOrderProduct() {
		if (orderProductDao.addOrderProduct(orderProduct) > 0) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String deleteOrderProductById() {
		if (orderProductDao.deleteOrderProductById(orderProduct.getId())) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String updateOrderProduct() {
		if (orderProductDao.updateOrderProduct(orderProduct)) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String queryOrderProductById() {
		if (orderProductDao.queryOrderProductById(orderProduct.getId()) != null) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	// 立即加入购物
	public void immediatelyAddOrderProduct() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		orderProduct.setMobile_phone(registry.getMobile_phone());
		orderProduct.setOrderProduct_sum(Integer.parseInt(orderProduct_sum));
		orderProduct.setProductSuitId(Integer.parseInt(productSuitId));
		store = storeDao.queryStoreByStore_name(store_name);
		orderProduct.setStore_code(store.getStore_code());
		orderProductDao.immediatelyAddOrderProduct(orderProduct);
	}

	public String getOrderProduct_sum() {
		return orderProduct_sum;
	}

	public void setOrderProduct_sum(String orderProduct_sum) {
		this.orderProduct_sum = orderProduct_sum;
	}

	public String getProductSuitId() {
		return productSuitId;
	}

	public void setProductSuitId(String productSuitId) {
		this.productSuitId = productSuitId;
	}

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public OrderProduct getOrderProduct() {
		return orderProduct;
	}

	public void setOrderProduct(OrderProduct orderProduct) {
		this.orderProduct = orderProduct;
	}

	public OrderProductDao getOrderProductDao() {
		return orderProductDao;
	}

	public void setOrderProductDao(OrderProductDao orderProductDao) {
		this.orderProductDao = orderProductDao;
	}

	public Registry getRegistry() {
		return registry;
	}

	public void setRegistry(Registry registry) {
		this.registry = registry;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public StoreDao getStoreDao() {
		return storeDao;
	}

	public void setStoreDao(StoreDao storeDao) {
		this.storeDao = storeDao;
	}

}
