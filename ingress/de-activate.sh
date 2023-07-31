#!/bin/bash

delete_brand_resources() {
    local brand_name=$1

    echo " "
    echo "Deleting ${brand_name} Resources"

    kubectl delete -f  ./  2>/dev/null

    if [ $? -ne 0 ]; then
        echo "There are no ${brand_name} resources currently up"
    fi
}


read -p "This script will delete resources for Pepsi and Coca-Cola. Are you sure you want to continue? (y/n): " confirm
if [ "$confirm" != "y" ]; then
    echo "Aborting."
    exit 0
fi

cd pepsi
delete_brand_resources "Pepsi"
cd ..

cd cocacola
delete_brand_resources "Coca-Cola"
cd ..

echo " "
echo "Deleting ingress"
kubectl delete -f drinks-ingress.yml
