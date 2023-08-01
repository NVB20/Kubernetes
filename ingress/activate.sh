#!/bin/bash
cd ingress-setup

echo "Activating Pepsi resources: "
cd pepsi

kubectl apply -f ./ 

cd ..


echo " " && echo "Activating Coca-Cola resources: "
cd cocacola

kubectl apply -f ./ 

cd .. && echo " " 


show_menu() {
    echo "Choose the ingress type to activate:"
    echo "1. pepsi.cooldrinks.com"
    echo "2. cooldrinks.com/pepsi"
}

while true; do
    show_menu

    read -p "Enter your choice (1 or 2): " type

    if [ "$type" = "1" ]; then
        kubectl apply -f subdomain.yml
        break
    elif [ "$type" = "2" ]; then
        kubectl apply -f drinks-ingress.yml
        break
    else
        echo "Invalid input. Please enter 1 or 2."
    fi
done
