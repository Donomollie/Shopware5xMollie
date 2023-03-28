#!/usr/bin/env bash

cd ./custom/plugins

if [ ! -d ./MolliePayments ]
then
    echo "[!] Downloading Mollie plugin..."
    wget -q --no-check-certificate --content-disposition https://github.com/mollie/Shopware/releases/download/${MOLLIE_VERSION}/MolliePayments-${MOLLIE_VERSION}.zip        
    unzip  -q ./MolliePayments-${MOLLIE_VERSION}.zip
    
    cd ../../
    php bin/console plugin:refresh
    php bin/console plugin:install MolliePayments
    php bin/console plugin:activate MolliePayments
    php bin/console cache:clear
    php bin/console sales-channel:update:domain ${DOMAIN}
fi

echo "[!] Mollie plugin is installed!"