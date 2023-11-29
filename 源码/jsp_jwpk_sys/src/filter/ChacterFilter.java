package filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class ChacterFilter implements Filter {
	
	protected FilterConfig filterConfig = null;   
	public String characterEncoding = null;   
	public void doFilter(ServletRequest request, ServletResponse response,   
	FilterChain chain) throws IOException, ServletException {   
	  
		request.setCharacterEncoding(characterEncoding);   
		response.setCharacterEncoding(characterEncoding);   
	// ���ݿ��Ƶ���һ�������   
	chain.doFilter(request, response);   
	}   
	  

	public void init(FilterConfig filterConfig) throws ServletException {   
		this.filterConfig = filterConfig;   
		characterEncoding = filterConfig.getInitParameter("characterEncoding");   
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}   
}
