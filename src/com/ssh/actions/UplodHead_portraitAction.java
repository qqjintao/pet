package com.ssh.actions;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.business.ImageBussiness;
import com.ssh.dao.Master_tableDao;
import com.ssh.dao.RegistryDao;
import com.ssh.enumeration.Provinces;
import com.ssh.model.Master_table;
import com.ssh.model.Registry;

public class UplodHead_portraitAction extends ActionSupport {
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private String head_portrait;
	private Master_table master_table = new Master_table();
	private Registry registry = new Registry();
	private RegistryDao registryDao = new RegistryDao();
	private Master_tableDao master_tableDao = new Master_tableDao();

	public String execute() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if(registry==null){
			return "nologin";
		}
		if(ActionContext.getContext().getSession().containsKey("error_message"))
    	{
    		ActionContext.getContext().getSession().remove("error_message");
    	}
		master_table=master_tableDao.queryMaster_tableById(registry.getMobile_phone());
		//如果顾客使用本店头像就直接写入数据库
		ArrayList<String> fixationhead_portraits=new ArrayList<String>();
		boolean isfixationhead_portrait=true;
		for(int i=1;i<11;i++){
			String fixationhead_portrait="head"+i+".jpg";
			fixationhead_portraits.add("head_portrait/"+fixationhead_portrait);
			if(uploadFileName.equals(fixationhead_portrait)){
				String error_message="请更改上传文件名在重新上传！";
				session.put("error_message", error_message);
				System.out.println(error_message);
				return INPUT;
			}
		}
		for(int i=0;i<10;i++){
			if(master_table.getHead_portrait().equals(fixationhead_portraits.get(i).toString())){
				isfixationhead_portrait=false;
			}
		}
		// Tomcat服务区
		String dirName = "WebRoot\\Master_info\\head_portrait";// 创建目录
		ImageBussiness.createDir(dirName);// 调用方法创建目录
		// 获取文件上传路径
		String f = ServletActionContext.getServletContext().getRealPath("Master_info\\head_portrait");
		String filePath = ServletActionContext.getServletContext().getRealPath("Master_info\\head_portrait") + "\\" + uploadFileName;
		System.out.println("上传的文件名："+filePath);
		File target = new File(filePath);
		// 调用uploadFile方法进行文件复制
		uploadFile(target, upload);
		int position=uploadFileName.lastIndexOf(".");
		String extension=uploadFileName.substring(position);
		String newfilename=master_table.getMobile_phone()+extension;
		//删除旧的头像
		String oldfilePath = ServletActionContext.getServletContext().getRealPath("Master_info")+ "\\"+ master_table.getHead_portrait();
		System.out.println("旧头像文件名："+oldfilePath);
		if(isfixationhead_portrait&&ImageBussiness.deleteFile(oldfilePath)){
			System.out.println("删除成功");
		}
		ImageBussiness.renameFile(f, uploadFileName, newfilename);
//		ImageBussiness.deleteFile(filePath);
		// 本服务区
		System.out.println("//本服务区-------------------");
		String dirName1 = "D:\\MyEclipse2017\\pet3\\WebRoot\\Master_info\\head_portrait";// 创建目录
		ImageBussiness.createDir(dirName1);// 调用方法创建目录
		String filePath1 = dirName1 + "\\" + uploadFileName;
		File target1 = new File(filePath1);
		// 调用uploadFile方法进行文件复制
		uploadFile(target1, upload);
		//删除旧的头像
		String oldfilePath1 ="D:\\MyEclipse2017\\pet3\\WebRoot\\Master_info\\"+ master_table.getHead_portrait();
		System.out.println(oldfilePath1);
		if(isfixationhead_portrait&&ImageBussiness.deleteFile(oldfilePath1)){
			System.out.println("删除成功");
		}
		ImageBussiness.renameFile(dirName1, uploadFileName, newfilename);
//		ImageBussiness.deleteFile(filePath);
		//数据库处理
		master_table.setHead_portrait("head_portrait/"+newfilename);
		if(master_tableDao.updateMaster_table(master_table)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//上传的是本店图片
	public String updateHead_portrait(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if(registry==null){
			return "nologin";
		}
		master_table=master_tableDao.queryMaster_tableById(registry.getMobile_phone());
		master_table.setHead_portrait(head_portrait);
		if(master_tableDao.updateMaster_table(master_table)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	// 复制文件
	public void uploadFile(File target, File source) {
		try {
			// 创建输入流对象
			FileInputStream fis = new FileInputStream(source);
			DataInputStream dis = new DataInputStream(fis);
			// 创建输出流对象
			FileOutputStream fos = new FileOutputStream(target);
			DataOutputStream dos = new DataOutputStream(fos);
			int temp;
			while ((temp = dis.read()) != -1) {
				dos.write(temp);
			}
			// 关闭
			dis.close();
			fis.close();
			dos.close();
			fos.close();
		} catch (FileNotFoundException ex) {
			System.out.println("文件找不到");
			ex.printStackTrace();
		} catch (IOException ex) {
			System.out.println("文件读写异常");
			ex.printStackTrace();
		}
	}
	
	public String getHead_portrait() {
		return head_portrait;
	}
	public void setHead_portrait(String head_portrait) {
		this.head_portrait = head_portrait;
	}
	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
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
