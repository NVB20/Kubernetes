cd pepsi

echo "Delete Pepsi Resources"

kubectl delete -f ./ 2>/dev/null

if [ $? -ne 0 ]; then
    echo "There are no Pepsi resources currently up"
fi

cd ..

cd cocacola

echo "Delete Coca-Cola Resources"

kubectl delete -f ./ 2>/dev/null

if [ $? -ne 0 ]; then
    echo "There are no Coca-Cola resources currently up"
fi

cd ..

kubectl delete -f drinks-ingress.yml
