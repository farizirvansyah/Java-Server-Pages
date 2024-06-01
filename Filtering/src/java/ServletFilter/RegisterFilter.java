/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ServletFilter;

import java.io.IOException;
import java.util.Date;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

/**
 *
 * @author Administrator
 */
public class RegisterFilter implements Filter {
    private FilterConfig filterConfig = null;
    public RegisterFilter() {
        System.out.println("Construct Object");
    }
    
    private void doBeforeProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
                System.out.println("do Before");
                request.setAttribute("timeReg", new Date());
                request.setAttribute("IPAddress", request.getRemoteAddr());
    }
    
    private void doAfterProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
                System.out.println("do After");
                request.removeAttribute("timeReg");
                request.removeAttribute("IPAddress");
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        doBeforeProcessing(request, response);
        
        System.out.println("Chain RegisterFilter Filter");
        chain.doFilter(request, response);
        
        doAfterProcessing(request, response);
    }
    
    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }
    
    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }
    
    @Override
    public void destroy() {
        System.out.println("Filter is destroyed");
    }
    
    @Override
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
        System.out.println("Init...");
    }
}
