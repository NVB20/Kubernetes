#!/bin/bash

apply_brand_resources() {
    local brand_name=$1

    echo " "
    echo "Deleting ${brand_name} Resources"

    kubectl apply -f  ./  2>/dev/null

}



cd pepsi
apply_brand_resources "Pepsi"
cd ..

cd cocacola
apply_brand_resources "Coca-Cola"
cd ..

echo " "
echo "Deleting ingress"
kubectl apply -f drinks-ingress.yml
