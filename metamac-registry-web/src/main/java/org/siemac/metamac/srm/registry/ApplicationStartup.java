package org.siemac.metamac.srm.registry;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.siemac.metamac.core.common.conf.ConfigurationService;
import org.siemac.metamac.core.common.util.ApplicationContextProvider;

import com.arte.statistic.sdmx.srm.rest.external.conf.SrmConfigurationConstants;

public class ApplicationStartup implements ServletContextListener {

    private static final Log     LOG = LogFactory.getLog(ApplicationStartup.class);

    private ConfigurationService configurationService;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            configurationService = ApplicationContextProvider.getApplicationContext().getBean(ConfigurationService.class);
            checkConfiguration();
        } catch (Exception e) {
            // Abort startup application
            throw new RuntimeException(e);
        }
    }

    private void checkConfiguration() {
        LOG.info("**********************************************************");
        LOG.info("[metamac-registry-web] Checking application configuration");
        LOG.info("**********************************************************");

        // Datasource
        configurationService.checkRequiredProperty(SrmConfigurationConstants.DB_DRIVER_NAME);
        configurationService.checkRequiredProperty(SrmConfigurationConstants.DB_URL);
        configurationService.checkRequiredProperty(SrmConfigurationConstants.DB_USERNAME);
        configurationService.checkRequiredProperty(SrmConfigurationConstants.DB_PASSWORD);
        configurationService.checkRequiredProperty(SrmConfigurationConstants.DB_DIALECT);

        // Api
        configurationService.checkRequiredProperty(SrmConfigurationConstants.METAMAC_ORGANISATION_URN);
        configurationService.checkRequiredProperty(SrmConfigurationConstants.METAMAC_ORGANISATION);

        LOG.info("**********************************************************");
        LOG.info("[metamac-registry-web] Application configuration checked");
        LOG.info("**********************************************************");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }

}
