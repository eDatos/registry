#!/bin/sh

HOME_PATH=metamac-registry
TRANSFER_PATH=$HOME_PATH/tmp
DEPLOY_TARGET_PATH=/servers/metamac/tomcats/metamac01/webapps
ENVIRONMENT_RELATIVE_PATH_FILE=WEB-INF/classes/metamac/environment.xml
LOGBACK_RELATIVE_PATH_FILE=WEB-INF/classes/logback.xml

scp -r etc/deploy deploy@estadisticas.arte-consultores.com:$TRANSFER_PATH
scp metamac-registry-web/target/sdmx-registry-*.war deploy@estadisticas.arte-consultores.com:$TRANSFER_PATH/sdmx-registry.war
ssh deploy@estadisticas.arte-consultores.com <<EOF

    chmod a+x $TRANSFER_PATH/deploy/*.sh;
    . $TRANSFER_PATH/deploy/utilities.sh

    sudo service metamac01 stop
    checkPROC "metamac"


    ###
    # SDMX REGISTRY
    ###

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH/sdmx-registry
    sudo mv $TRANSFER_PATH/sdmx-registry.war $DEPLOY_TARGET_PATH/sdmx-registry.war
    sudo unzip $DEPLOY_TARGET_PATH/sdmx-registry.war -d $DEPLOY_TARGET_PATH/sdmx-registry
    sudo rm -rf $DEPLOY_TARGET_PATH/sdmx-registry.war

    # Restore Configuration
    sudo cp $HOME_PATH/environment.xml $DEPLOY_TARGET_PATH/sdmx-registry/$ENVIRONMENT_RELATIVE_PATH_FILE
    sudo cp $HOME_PATH/logback.xml $DEPLOY_TARGET_PATH/sdmx-registry/$LOGBACK_RELATIVE_PATH_FILE

    sudo chown -R metamac.metamac /servers/metamac
    sudo service metamac01 start
    
    # checkURL "http://estadisticas.arte-consultores.com/registry/v2.1?_wadl" "metamac01"
    echo "Finished deploy"
    
EOF