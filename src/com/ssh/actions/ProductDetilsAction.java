package com.ssh.actions;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.IndentProductDao;
import com.ssh.dao.ProductDao;
import com.ssh.dao.ProductDetilsDao;
import com.ssh.dao.ProductMessagesDao;
import com.ssh.dao.ProductPictureDao;
import com.ssh.dao.ServiceQQDao;
import com.ssh.dao.StoreDao;
import com.ssh.dao.StroeAnnouncementDao;
import com.ssh.dao.SubclassDao;
import com.ssh.model.Browse_products;
import com.ssh.model.IndentProductView;
import com.ssh.model.OrderProduct;
import com.ssh.model.ProductDetils;
import com.ssh.model.ProductDetils_ProductSuitProduct_name;
import com.ssh.model.ProductMessagesView;
import com.ssh.model.ProductPicture;
import com.ssh.model.ServiceQQ;
import com.ssh.model.Store;
import com.ssh.model.StroeAnnouncement;
import com.ssh.model.Subclass;

public class ProductDetilsAction extends ActionSupport{
	private int ProductId;
	private int ProductSuitId;
	private String Subclass_name;
	private ProductDetils productDetil;
	private ArrayList<ProductDetils_ProductSuitProduct_name> productDetils_ProductSuitProduct_name;
	private ArrayList<ProductPicture> productPicture;
	private ArrayList<ProductMessagesView> productMessagesView;
	private ArrayList<ProductDetils> productDetils;
	private ArrayList<IndentProductView> indentProductView;
	private	ProductDetilsDao productDetilsDao=new ProductDetilsDao();
	private ProductPictureDao productPictureDao=new ProductPictureDao();
	private	ProductMessagesDao productMessagesDao=new ProductMessagesDao();
	private	IndentProductDao indentProductDao=new IndentProductDao();
	private Subclass subclass=new Subclass();
	private	SubclassDao subclassDao=new SubclassDao();
	private ArrayList<Browse_products> browse_products=new ArrayList<Browse_products>();
	private	ProductDao productDao=new ProductDao();
	private OrderProduct orderProduct=new OrderProduct();
	private Store store;
	private ArrayList<ServiceQQ> serviceQQ;
	private ArrayList<StroeAnnouncement> stroeAnnouncement;
	private	StoreDao storeDao=new StoreDao();
	private	ServiceQQDao serviceQQDao=new ServiceQQDao();
	private	StroeAnnouncementDao stroeAnnouncementDao=new StroeAnnouncementDao();
	public String execute(){
		//产品信息
		productDetil=productDetilsDao.queryProductDetilsByProductId(ProductId);
		//产品图片
		productPicture=productPictureDao.queryProductPictureByProduct_coded(ProductId);
		//产品套装
		productDetils_ProductSuitProduct_name=productDetilsDao.queryProductDetils_ProductSuitProduct_name(ProductId);
		//产品评价
		productMessagesView=productMessagesDao.queryProductMessagesView(ProductId);
		//小类获取类似产品
		browse_products=productDao.queryBrowse_productsBySubclass_name(Subclass_name);
		//购买记录
		indentProductView=indentProductDao.queryIndentProductView(ProductId);
		//立即加入购物车
		orderProduct.setProductSuitId(productDetils_ProductSuitProduct_name.get(0).getProductSuitId());
		//店家信息
		store=storeDao.queryStoreByStore_name(productDetil.getStore_name());
		serviceQQ=serviceQQDao.queryServiceQQ(store.getStore_code());
		stroeAnnouncement=stroeAnnouncementDao.queryStroeAnnouncement(store.getStore_code());
		if(productDetil!=null&&productPicture!=null&&productDetils_ProductSuitProduct_name!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryProductDetils_ProductSuitProduct_name(){
		//产品信息
		productDetil=productDetilsDao.queryProductDetilsByProductSuitId(ProductSuitId);
		//产品图片
		productPicture=productPictureDao.queryProductPictureByProduct_coded(ProductId);
		//产品套装
		productDetils_ProductSuitProduct_name=productDetilsDao.queryProductDetils_ProductSuitProduct_name(ProductId);
		//产品评价
		productMessagesView=productMessagesDao.queryProductMessagesView(ProductId);
		//小类获取类似产品
		browse_products=productDao.queryBrowse_productsBySubclass_name(Subclass_name);	
		//购买记录
		indentProductView=indentProductDao.queryIndentProductView(ProductId);
		//立即加入购物车
		orderProduct.setProductSuitId(ProductSuitId);
		//店家信息
		store=storeDao.queryStoreByStore_name(productDetil.getStore_name());
		serviceQQ=serviceQQDao.queryServiceQQ(store.getStore_code());
		stroeAnnouncement=stroeAnnouncementDao.queryStroeAnnouncement(store.getStore_code());
		if(productDetil!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public ProductDetils getProductDetil() {
		return productDetil;
	}
	public void setProductDetil(ProductDetils productDetil) {
		this.productDetil = productDetil;
	}
	public ArrayList<ProductDetils> getProductDetils() {
		return productDetils;
	}
	public void setProductDetils(ArrayList<ProductDetils> productDetils) {
		this.productDetils = productDetils;
	}
	public ProductDetilsDao getProductDetilsDao() {
		return productDetilsDao;
	}
	public void setProductDetilsDao(ProductDetilsDao productDetilsDao) {
		this.productDetilsDao = productDetilsDao;
	}
	public ProductPictureDao getProductPictureDao() {
		return productPictureDao;
	}
	public void setProductPictureDao(ProductPictureDao productPictureDao) {
		this.productPictureDao = productPictureDao;
	}
	public ArrayList<ProductPicture> getProductPicture() {
		return productPicture;
	}
	public void setProductPicture(ArrayList<ProductPicture> productPicture) {
		this.productPicture = productPicture;
	}
	public ArrayList<ProductDetils_ProductSuitProduct_name> getProductDetils_ProductSuitProduct_name() {
		return productDetils_ProductSuitProduct_name;
	}
	public void setProductDetils_ProductSuitProduct_name(
			ArrayList<ProductDetils_ProductSuitProduct_name> productDetils_ProductSuitProduct_name) {
		this.productDetils_ProductSuitProduct_name = productDetils_ProductSuitProduct_name;
	}
	public int getProductSuitId() {
		return ProductSuitId;
	}
	public void setProductSuitId(int productSuitId) {
		ProductSuitId = productSuitId;
	}
	public ArrayList<ProductMessagesView> getProductMessagesView() {
		return productMessagesView;
	}
	public void setProductMessagesView(ArrayList<ProductMessagesView> productMessagesView) {
		this.productMessagesView = productMessagesView;
	}
	public ProductMessagesDao getProductMessagesDao() {
		return productMessagesDao;
	}
	public void setProductMessagesDao(ProductMessagesDao productMessagesDao) {
		this.productMessagesDao = productMessagesDao;
	}
	public Subclass getSubclass() {
		return subclass;
	}
	public void setSubclass(Subclass subclass) {
		this.subclass = subclass;
	}
	public SubclassDao getSubclassDao() {
		return subclassDao;
	}
	public void setSubclassDao(SubclassDao subclassDao) {
		this.subclassDao = subclassDao;
	}
	public ArrayList<Browse_products> getBrowse_products() {
		return browse_products;
	}
	public void setBrowse_products(ArrayList<Browse_products> browse_products) {
		this.browse_products = browse_products;
	}
	public ProductDao getProductDao() {
		return productDao;
	}
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	public String getSubclass_name() {
		return Subclass_name;
	}
	public void setSubclass_name(String subclass_name) {
		Subclass_name = subclass_name;
	}
	public ArrayList<IndentProductView> getIndentProductView() {
		return indentProductView;
	}
	public void setIndentProductView(ArrayList<IndentProductView> indentProductView) {
		this.indentProductView = indentProductView;
	}
	public IndentProductDao getIndentProductDao() {
		return indentProductDao;
	}
	public void setIndentProductDao(IndentProductDao indentProductDao) {
		this.indentProductDao = indentProductDao;
	}
	public OrderProduct getOrderProduct() {
		return orderProduct;
	}
	public void setOrderProduct(OrderProduct orderProduct) {
		this.orderProduct = orderProduct;
	}
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
	public ArrayList<ServiceQQ> getServiceQQ() {
		return serviceQQ;
	}
	public void setServiceQQ(ArrayList<ServiceQQ> serviceQQ) {
		this.serviceQQ = serviceQQ;
	}
	public ArrayList<StroeAnnouncement> getStroeAnnouncement() {
		return stroeAnnouncement;
	}
	public void setStroeAnnouncement(ArrayList<StroeAnnouncement> stroeAnnouncement) {
		this.stroeAnnouncement = stroeAnnouncement;
	}
	public StoreDao getStoreDao() {
		return storeDao;
	}
	public void setStoreDao(StoreDao storeDao) {
		this.storeDao = storeDao;
	}
	public ServiceQQDao getServiceQQDao() {
		return serviceQQDao;
	}
	public void setServiceQQDao(ServiceQQDao serviceQQDao) {
		this.serviceQQDao = serviceQQDao;
	}
	public StroeAnnouncementDao getStroeAnnouncementDao() {
		return stroeAnnouncementDao;
	}
	public void setStroeAnnouncementDao(StroeAnnouncementDao stroeAnnouncementDao) {
		this.stroeAnnouncementDao = stroeAnnouncementDao;
	}
	
}
