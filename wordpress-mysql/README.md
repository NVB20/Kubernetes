# wordpress-mysql

a simple Kubernetes application that runs on 2 pods, worpress and mysql


to deploy the project write:

kubectl apply -f ./

than to watch the wordpess site:

kubectl port-forward <pod-name> <desired-port>:80
 

check the pods are up:
kubectl get pods

check services are up:
kubectl get services

check deployments are up:
kubectl get deployments
