package org.siemac.metamac.srm.registry;

import org.siemac.metamac.core.common.exception.MetamacException;
import org.siemac.metamac.core.common.listener.ApplicationStartupListener;
import org.siemac.metamac.sdmx.data.rest.external.conf.DataConfigurationConstants;

import com.arte.statistic.sdmx.srm.core.constants.SdmxSrmConfigurationConstants;

public class ApplicationStartup extends ApplicationStartupListener {

    @Override
    public String projectName() {
        return "sdmx-registry";
    }

    @Override
    public void checkApplicationProperties() throws MetamacException {
        // Datasource
        checkRequiredProperty(SdmxSrmConfigurationConstants.DB_DRIVER_NAME);
        checkRequiredProperty(SdmxSrmConfigurationConstants.DB_URL);
        checkRequiredProperty(SdmxSrmConfigurationConstants.DB_USERNAME);
        checkRequiredProperty(SdmxSrmConfigurationConstants.DB_PASSWORD);
        checkRequiredProperty(SdmxSrmConfigurationConstants.DB_DIALECT);

        // Datasource
        checkRequiredProperty(DataConfigurationConstants.DB_URL);
        checkRequiredProperty(DataConfigurationConstants.DB_USERNAME);
        checkRequiredProperty(DataConfigurationConstants.DB_PASSWORD);
        checkRequiredProperty(DataConfigurationConstants.DB_DIALECT);
        checkRequiredProperty(DataConfigurationConstants.DB_DRIVER_NAME);

        checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_URL);
        checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_USERNAME);
        checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_PASSWORD);
        checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_DIALECT);
        checkRequiredProperty(DataConfigurationConstants.DB_REPOSITORY_DRIVER_NAME);

        // Api
        checkRequiredProperty(SdmxSrmConfigurationConstants.METAMAC_ORGANISATION_URN);
        checkRequiredProperty(SdmxSrmConfigurationConstants.METAMAC_ORGANISATION);
        checkRequiredProperty(SdmxSrmConfigurationConstants.ENDPOINT_SDMX_REGISTRY_EXTERNAL_API);
        checkRequiredProperty(SdmxSrmConfigurationConstants.ENDPOINT_SDMX_SRM_EXTERNAL_API);
        checkRequiredProperty(SdmxSrmConfigurationConstants.ENDPOINT_SDMX_STATISTICAL_RESOURCES_EXTERNAL_API);
    }
}
