package org.siemac.metamac.srm.registry.urlrewrite;

import static org.apache.commons.lang.StringUtils.EMPTY;
import static org.apache.commons.lang.StringUtils.isBlank;
import static org.siemac.metamac.core.common.constants.CoreCommonConstants.API_LATEST;
import static org.siemac.metamac.core.common.constants.CoreCommonConstants.URL_SEPARATOR;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.siemac.metamac.core.common.conf.ConfigurationService;
import org.siemac.metamac.core.common.exception.MetamacException;
import org.siemac.metamac.core.common.util.ApplicationContextProvider;
import org.tuckey.web.filters.urlrewrite.extend.RewriteMatch;

public class RegistryRewriteMatch extends RewriteMatch {

    private static final String  SDMX_API_VERSION     = "v2.1";

    private Pattern              urlPattern           = Pattern.compile(".*/apis/registry/(" + API_LATEST + "|" + SDMX_API_VERSION + ")(/(.*)?)?");

    private ConfigurationService configurationService = null;

    @Override
    public boolean execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestURI = ((HttpServletRequest) request).getRequestURI();
        String queryString = ((HttpServletRequest) request).getQueryString();
        Matcher matcher = urlPattern.matcher(requestURI);
        if (matcher.matches() && matcher.groupCount() > 2) {
            String requestApiVersion = matcher.group(1);
            String requestPathAfterVersion = matcher.group(2);
            if (API_LATEST.equals(requestApiVersion)) {
                String location = buildTargetLocation(SDMX_API_VERSION, requestPathAfterVersion, queryString);
                response.sendRedirect(location);
                return true;
            } else if (StringUtils.isNotBlank(queryString) && queryString.contains("_wadl")) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/downloadWadl?path=/apis/registry/v2.1?_wadl");
                requestDispatcher.forward(request, response);
                return true;
            } else if (requestPathAfterVersion != null && requestPathAfterVersion.startsWith("/data")) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/data/registry/" + requestApiVersion + requestPathAfterVersion);
                requestDispatcher.forward(request, response);
                return true;
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/structure/registry/" + requestApiVersion + requestPathAfterVersion);
                requestDispatcher.forward(request, response);
                return true;
            }
        }
        return false;
    }

    private String buildTargetLocation(String apiVersion, String requestPathAfterVersion, String queryString) throws ServletException {
        return getApiBaseUrl() + URL_SEPARATOR + apiVersion + (requestPathAfterVersion == null ? URL_SEPARATOR : requestPathAfterVersion) + (isBlank(queryString) ? EMPTY : "?" + queryString);
    }

    private String getApiBaseUrl() throws ServletException {
        try {
            return getConfigurationService().retrieveSdmxRegistryExternalApiUrlBase();
        } catch (MetamacException e) {
            throw new ServletException("Error retrieving configuration property of the external API URL base", e);
        }
    }

    private ConfigurationService getConfigurationService() {
        if (configurationService == null) {
            configurationService = ApplicationContextProvider.getApplicationContext().getBean(ConfigurationService.class);
        }
        return configurationService;
    }
}
