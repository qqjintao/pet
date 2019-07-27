package com.ssh.actions;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.business.GetDateTime;
import com.ssh.dao.DeliverGoodsDao;
import com.ssh.dao.FinanceDao;
import com.ssh.dao.IndentDao;
import com.ssh.dao.IndentProductDao;
import com.ssh.dao.Location_tableDao;
import com.ssh.dao.OrderProductDao;
import com.ssh.dao.PaymentServiceDao;
import com.ssh.dao.ProductSuitDao;
import com.ssh.dao.ShoppingCartDao;
import com.ssh.dao.StoreDao;
import com.ssh.model.Finance;
import com.ssh.model.Indent;
import com.ssh.model.IndentProduct;
import com.ssh.model.Location_table;
import com.ssh.model.OrderProduct;
import com.ssh.model.PaymentService;
import com.ssh.model.PostalServiceView;
import com.ssh.model.ProductSuit;
import com.ssh.model.Registry;
import com.ssh.model.ShoppingCartView;
import com.ssh.model.ShoppingCartViewSubbranch;
import com.ssh.model.Store;

public class ShoppingCartAction extends ActionSupport{
	private int orderProduct_sum;//商品数量
	private int orderProduct_code;//商品编号
	private ArrayList<ShoppingCartViewSubbranch> shoppingCartViewSubbranch;//分店显示辅助表
	private Finance finance;//查询积分 优惠券
	private Registry registry;//验证是否登录
	private OrderProduct orderProduct;//购物车表
	private ArrayList<PaymentService> paymentService;//支付表
	private ArrayList<PostalServiceView> postalServiceViews;//快递表
	private ArrayList<Location_table> location_tables;//收货表
	private Location_tableDao location_tableDao=new Location_tableDao();
	private DeliverGoodsDao deliverGoodsDao=new DeliverGoodsDao();
	private PaymentServiceDao paymentServiceDao=new PaymentServiceDao();
	private OrderProductDao orderProductDao=new OrderProductDao();
	private ArrayList<ShoppingCartView> shoppingCartView;//购物车视图
	private FinanceDao financeDao=new FinanceDao();
	private ShoppingCartDao shoppingCartDao=new ShoppingCartDao();
	
	/**
	 * 接下来是购物车结算的定义的变量
	 */
	private ArrayList<String> orderProduct_codes;//所有购物车编号
	private ArrayList<String> store_names;//店铺名称的编号
	private ArrayList<String> store_sum;//店铺对应的上商品数量
	private ArrayList<String> postal_totals;//店铺对应快递的钱
	private ArrayList<String> store_totals;//每家店铺对应的钱
	private ArrayList<String> postal_codes;//店铺对应快递的编号
	private String useIntegral;//用掉的积分
	private String useDiscount_coupon;//用掉的优惠券
	private String getIntegral;//得到的积分
	private String payment_code;//支付方式编号
	private String location_tableId;//收货地址编号
	private Store store=new Store();
	private	StoreDao storeDao=new StoreDao();
	private Indent indent=new Indent();
	private	IndentDao indentDao=new IndentDao();
	private ProductSuit productSuit=new ProductSuit();
	private	ProductSuitDao productSuitDao=new ProductSuitDao();
	private IndentProduct indentProduct=new IndentProduct();
	private	IndentProductDao indentProductDao=new IndentProductDao();
	
	public void account(){
        //开始下订单
        //多少家店铺就生产多少张订单
        Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		int k=0;
		float balance=0;
        for(int i=0;i<store_names.size();i++){
    		float totals=0;
    		int integrals=0;
        	store=storeDao.queryStoreByStore_name(store_names.get(i).toString());//找寻店铺编号       	
        	long indent_code=getRandomId();
        	indent.setIndent_code(indent_code);
        	indent.setStore_code(store.getStore_code());
        	indent.setMobile_phone(registry.getMobile_phone());
        	indent.setIndent_time(GetDateTime.getStringDate());
        	indent.setPayment_code(Integer.parseInt(payment_code));
        	indent.setPostal_code(Integer.parseInt(postal_codes.get(i).toString()));
        	indent.setLocation_table_id(Integer.parseInt(location_tableId));
        	indent.setIndent_state(1);
        	if(indentDao.addIndent(indent)>0){
        		for(int j=0;j<Integer.parseInt(store_sum.get(i).toString());j++){
        			orderProduct=orderProductDao.queryOrderProductByOrderProduct_code(registry.getMobile_phone(), Integer.parseInt(orderProduct_codes.get(k).toString()));
        			indentProduct.setIndent_code(indent_code);
        			productSuit=productSuitDao.queryProductSuitById(orderProduct.getProductSuitId());
        			indentProduct.setProduct_code(productSuit.getProduct_code());
        			indentProduct.setProductSuitId(orderProduct.getProductSuitId());
        			indentProduct.setProduct_number(orderProduct.getOrderProduct_sum());
        			float total=(productSuit.getMember_price()+productSuit.getProduct_tax())*orderProduct.getOrderProduct_sum();
        			integrals+=productSuit.getIntegral()*orderProduct.getOrderProduct_sum();
        			totals=totals+total;
        			indentProduct.setProduct_price(total);
        			indentProduct.setIndent_state(true);
        			indentProductDao.addIndentProduct(indentProduct);
        			orderProductDao.deleteOrderProductById(orderProduct.getId());
        			k++;
        		}
        	}
        	totals+=Integer.parseInt(postal_totals.get(i).toString());//加上对应快递钱
        	indent.setIndent_price(totals);
        	indent.setIndent_memberprice(totals);
        	indent.setIntegral(integrals);
        	indent.setIndent_deal1(1);
        	indent.setIndent_time1(GetDateTime.getStringDate());
        	indent.setIndent_deal2(1);
        	indent.setIndent_time2(GetDateTime.getStringDate());
        	indentDao.updateIndent(indent);
			balance+=totals;
        }
        finance=financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		int position=useIntegral.indexOf(".");
		String useIntegral1=useIntegral.substring(0,position);		
		int position1=useDiscount_coupon.indexOf(".");
		String useDiscount_coupon1=useDiscount_coupon.substring(0,position1);
		int position2=getIntegral.indexOf(".");
		String getIntegral1=getIntegral.substring(0,position2);
        finance.setIntegral(finance.getIntegral()-Integer.parseInt(useIntegral1));
        finance.setDiscount_coupon(finance.getDiscount_coupon()-Integer.parseInt(useDiscount_coupon1));
        if(Integer.parseInt(payment_code)==0){
        	finance.setBalance(finance.getBalance()-balance);
        	
        }
        finance.setIntegral(finance.getIntegral()+Integer.parseInt(getIntegral1));
        financeDao.updateFinance(finance);
	}
	
	public String execute(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		if(registry==null){
			return INPUT;
		}
		shoppingCartView=shoppingCartDao.queryShoppingCartView(registry.getMobile_phone());//购物车商品
		shoppingCartViewSubbranch=shoppingCartDao.queryShoppingCartViewSubbranch(registry.getMobile_phone());//店铺数量及对应数量
		postalServiceViews=deliverGoodsDao.queryPostalServiceView(shoppingCartViewSubbranch);//快递视图信息
		paymentService=paymentServiceDao.queryPaymentService();//支付表显示
		location_tables=location_tableDao.queryLocation_tableByMobile_phone(registry.getMobile_phone());//收货地址表
		finance=financeDao.queryFinanceByMobile_phone(registry.getMobile_phone());
		if(shoppingCartView!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//购物车删除
	public String deleteShoppingCart(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		orderProduct.setMobile_phone(registry.getMobile_phone());
		if(orderProductDao.deleteOrderProductByOrderProduct_code(orderProduct)){
			return "deleteShoppingCart";
		}else{
			return INPUT;
		}
	}
	//购物车商品单件更新
	public String updateShoppingCart(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		orderProduct.setMobile_phone(registry.getMobile_phone());
		if(orderProductDao.updateOrderProductByOrderProduct_code(orderProduct)){
			return "deleteShoppingCart";
		}else{
			return INPUT;
		}
	}
	//购物车商品数量的 + -
	public void updateOrderProduct_sum(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		registry=(Registry) session.get("registry");
		orderProduct=orderProductDao.queryOrderProductByOrderProduct_code(registry.getMobile_phone(), orderProduct_code);
		orderProduct.setOrderProduct_sum(orderProduct_sum);
		orderProductDao.updateOrderProduct(orderProduct);	
	}
	//购物车的结算
	
	public long getRandomId(){
		DateFormat format=new SimpleDateFormat("YYYYMMddHHmmss");
		String formatdate=format.format(new Date())+"0000";
		long x=Long.parseLong(formatdate);
		int random=new Random().nextInt(1000);
		return x+random;
	}
	
	public ProductSuit getProductSuit() {
		return productSuit;
	}

	public void setProductSuit(ProductSuit productSuit) {
		this.productSuit = productSuit;
	}

	public ProductSuitDao getProductSuitDao() {
		return productSuitDao;
	}

	public void setProductSuitDao(ProductSuitDao productSuitDao) {
		this.productSuitDao = productSuitDao;
	}

	public int getOrderProduct_sum() {
		return orderProduct_sum;
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

	public Indent getIndent() {
		return indent;
	}

	public void setIndent(Indent indent) {
		this.indent = indent;
	}

	public IndentDao getIndentDao() {
		return indentDao;
	}

	public void setIndentDao(IndentDao indentDao) {
		this.indentDao = indentDao;
	}

	public IndentProduct getIndentProduct() {
		return indentProduct;
	}

	public void setIndentProduct(IndentProduct indentProduct) {
		this.indentProduct = indentProduct;
	}

	public IndentProductDao getIndentProductDao() {
		return indentProductDao;
	}

	public void setIndentProductDao(IndentProductDao indentProductDao) {
		this.indentProductDao = indentProductDao;
	}

	public void setOrderProduct_sum(int orderProduct_sum) {
		this.orderProduct_sum = orderProduct_sum;
	}

	public int getOrderProduct_code() {
		return orderProduct_code;
	}

	public void setOrderProduct_code(int orderProduct_code) {
		this.orderProduct_code = orderProduct_code;
	}

	public ArrayList<ShoppingCartViewSubbranch> getShoppingCartViewSubbranch() {
		return shoppingCartViewSubbranch;
	}

	public void setShoppingCartViewSubbranch(ArrayList<ShoppingCartViewSubbranch> shoppingCartViewSubbranch) {
		this.shoppingCartViewSubbranch = shoppingCartViewSubbranch;
	}

	public Finance getFinance() {
		return finance;
	}

	public void setFinance(Finance finance) {
		this.finance = finance;
	}

	public Registry getRegistry() {
		return registry;
	}

	public void setRegistry(Registry registry) {
		this.registry = registry;
	}

	public OrderProduct getOrderProduct() {
		return orderProduct;
	}

	public void setOrderProduct(OrderProduct orderProduct) {
		this.orderProduct = orderProduct;
	}

	public ArrayList<PaymentService> getPaymentService() {
		return paymentService;
	}

	public void setPaymentService(ArrayList<PaymentService> paymentService) {
		this.paymentService = paymentService;
	}

	public ArrayList<PostalServiceView> getPostalServiceViews() {
		return postalServiceViews;
	}

	public void setPostalServiceViews(ArrayList<PostalServiceView> postalServiceViews) {
		this.postalServiceViews = postalServiceViews;
	}

	public ArrayList<Location_table> getLocation_tables() {
		return location_tables;
	}

	public void setLocation_tables(ArrayList<Location_table> location_tables) {
		this.location_tables = location_tables;
	}

	public Location_tableDao getLocation_tableDao() {
		return location_tableDao;
	}

	public void setLocation_tableDao(Location_tableDao location_tableDao) {
		this.location_tableDao = location_tableDao;
	}

	public DeliverGoodsDao getDeliverGoodsDao() {
		return deliverGoodsDao;
	}

	public void setDeliverGoodsDao(DeliverGoodsDao deliverGoodsDao) {
		this.deliverGoodsDao = deliverGoodsDao;
	}

	public PaymentServiceDao getPaymentServiceDao() {
		return paymentServiceDao;
	}

	public void setPaymentServiceDao(PaymentServiceDao paymentServiceDao) {
		this.paymentServiceDao = paymentServiceDao;
	}

	public OrderProductDao getOrderProductDao() {
		return orderProductDao;
	}

	public void setOrderProductDao(OrderProductDao orderProductDao) {
		this.orderProductDao = orderProductDao;
	}

	public ArrayList<ShoppingCartView> getShoppingCartView() {
		return shoppingCartView;
	}

	public void setShoppingCartView(ArrayList<ShoppingCartView> shoppingCartView) {
		this.shoppingCartView = shoppingCartView;
	}

	public FinanceDao getFinanceDao() {
		return financeDao;
	}

	public void setFinanceDao(FinanceDao financeDao) {
		this.financeDao = financeDao;
	}

	public ShoppingCartDao getShoppingCartDao() {
		return shoppingCartDao;
	}

	public void setShoppingCartDao(ShoppingCartDao shoppingCartDao) {
		this.shoppingCartDao = shoppingCartDao;
	}

	public ArrayList<String> getOrderProduct_codes() {
		return orderProduct_codes;
	}

	public void setOrderProduct_codes(ArrayList<String> orderProduct_codes) {
		this.orderProduct_codes = orderProduct_codes;
	}

	public ArrayList<String> getStore_names() {
		return store_names;
	}

	public void setStore_names(ArrayList<String> store_names) {
		this.store_names = store_names;
	}

	public ArrayList<String> getStore_sum() {
		return store_sum;
	}

	public void setStore_sum(ArrayList<String> store_sum) {
		this.store_sum = store_sum;
	}

	public ArrayList<String> getPostal_totals() {
		return postal_totals;
	}

	public void setPostal_totals(ArrayList<String> postal_totals) {
		this.postal_totals = postal_totals;
	}

	public ArrayList<String> getStore_totals() {
		return store_totals;
	}

	public void setStore_totals(ArrayList<String> store_totals) {
		this.store_totals = store_totals;
	}

	public ArrayList<String> getPostal_codes() {
		return postal_codes;
	}

	public void setPostal_codes(ArrayList<String> postal_codes) {
		this.postal_codes = postal_codes;
	}

	public String getUseIntegral() {
		return useIntegral;
	}

	public void setUseIntegral(String useIntegral) {
		this.useIntegral = useIntegral;
	}

	public String getUseDiscount_coupon() {
		return useDiscount_coupon;
	}

	public void setUseDiscount_coupon(String useDiscount_coupon) {
		this.useDiscount_coupon = useDiscount_coupon;
	}

	public String getGetIntegral() {
		return getIntegral;
	}

	public void setGetIntegral(String getIntegral) {
		this.getIntegral = getIntegral;
	}

	public String getPayment_code() {
		return payment_code;
	}

	public void setPayment_code(String payment_code) {
		this.payment_code = payment_code;
	}

	public String getLocation_tableId() {
		return location_tableId;
	}

	public void setLocation_tableId(String location_tableId) {
		this.location_tableId = location_tableId;
	}

}
