package org.siemac.metamac.srm.registry;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

public class IndexFilter implements Filter {

    @Override
    public void init(FilterConfig config) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws java.io.IOException, ServletException {
        String path = ((HttpServletRequest) request).getRequestURI();
        if (StringUtils.isBlank(((HttpServletRequest) request).getQueryString()) && StringUtils.endsWithAny(path, getSupportedApiVersions())) {
            request.getRequestDispatcher("/index.html").forward(request, response);
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
    }

    private String[] getSupportedApiVersions() {
        return new String[]{"/v2.1/"};
    }
}
