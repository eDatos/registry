package org.siemac.metamac.srm.registry;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.siemac.metamac.core.common.conf.ConfigurationService;
import org.siemac.metamac.core.common.util.ApplicationContextProvider;
import org.siemac.metamac.sdmx.data.rest.external.conf.DataConfigurationConstants;

import com.arte.statistic.sdmx.srm.core.constants.SdmxSrmConfigurationConstants;

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
        LOG.info("[metamac-registry-web] Checking application configuration: Datasource SRM");
        LOG.info("**********************************************************");

        // Datasource
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.DB_DRIVER_NAME);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.DB_URL);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.DB_USERNAME);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.DB_PASSWORD);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.DB_DIALECT);

        LOG.info("**********************************************************");
        LOG.info("[metamac-registry-web] Application configuration checked: Datasource STATISTICAL_RESOURCES AND STATISTICAL_RESOURCES_REPOSITORY");
        LOG.info("**********************************************************");

        // Datasource
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_URL);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_USERNAME);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_PASSWORD);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_DIALECT);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_DRIVER_NAME);

        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_URL);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_USERNAME);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_PASSWORD);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_DIALECT);
        configurationService.checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_DRIVER_NAME);

        LOG.info("**********************************************************");
        LOG.info("[metamac-registry-web] Checking application configuration: APIS");
        LOG.info("**********************************************************");

        // Api
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.METAMAC_ORGANISATION_URN);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.METAMAC_ORGANISATION);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.ENDPOINT_SDMX_REGISTRY_EXTERNAL_API);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.ENDPOINT_SDMX_SRM_EXTERNAL_API);
        configurationService.checkRequiredProperty(SdmxSrmConfigurationConstants.ENDPOINT_SDMX_STATISTICAL_RESOURCES_EXTERNAL_API);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }

}
