package com.ssh.interceptors;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.ssh.model.Registry;

public class LoginInterceptor extends AbstractInterceptor{
	public String intercept(ActionInvocation ai) throws Exception {
		Map session = ai.getInvocationContext().getSession();
		Registry user = (Registry)session.get("user");
		if(user!=null){
			return ai.invoke();
		}else{
			ActionContext ac = ai.getInvocationContext();
			ac.put("popedom", "你还为登录！");
			return "login";
		}
	}
}
