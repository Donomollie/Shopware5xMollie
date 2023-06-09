#!/usr/bin/env bash

cd ./custom/plugins

if [ ! -d ./MolliePayments ]
then
    echo "[!] Downloading Mollie plugin..."
    wget -q --no-check-certificate --content-disposition https://github.com/mollie/Shopware/releases/download/v2.4.0/MollieShopware-v2.4.0.zip        
    unzip  -q ./MollieShopware-v2.4.0.zip
    
fi

if [ -f ./MollieShopware-v2.4.0.zip ]
then rm ./MollieShopware-v2.4.0.zip

fi
echo "[!] Mollie plugin is installed, and .zip file is deleted!"