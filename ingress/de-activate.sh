cd ingress-setup && cd pepsi

echo "Delete Pepsi Resources"

kubectl delete -f ./ 2>/dev/null

if [ $? -ne 0 ]; then
    echo "There are no Pepsi resources currently up"
fi

cd .. && cd cocacola

echo " " && echo "Delete Coca-Cola Resources"

kubectl delete -f ./ 2>/dev/null

if [ $? -ne 0 ]; then
    echo "There are no Coca-Cola resources currently up"
fi

cd ..


echo " " && echo "Delete Ingress"
kubectl delete -f drinks-ingress.yml 2>/dev/null
