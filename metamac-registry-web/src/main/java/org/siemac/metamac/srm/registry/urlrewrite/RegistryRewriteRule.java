package org.siemac.metamac.srm.registry.urlrewrite;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.tuckey.web.filters.urlrewrite.extend.RewriteMatch;
import org.tuckey.web.filters.urlrewrite.extend.RewriteRule;

public class RegistryRewriteRule extends RewriteRule {

    public RewriteMatch matches(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return new RegistryRewriteMatch();
    }
}
