echo "Activating Pepsi resources: "
cd pepsi

kubectl apply -f ./ 

cd ..


echo " "
echo "Activating Coca-Cola resources: "
cd cocacola

kubectl apply -f ./ 

cd ..

echo " "
echo "Activating Ingress"
kubectl apply -f drinks-ingress.yml
