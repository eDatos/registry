package org.siemac.metamac.srm.registry;

import org.siemac.metamac.core.common.util.swagger.AbstractSwaggerFilter;

public class SwaggerFilter extends AbstractSwaggerFilter {

    @Override
    protected String[] getSupportedApiVersions() {
        return new String[]{"/v2.1/"};
    }
}
