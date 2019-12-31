Write-Host "starting all simpleapp microservices" -ForegroundColor White
kubectl apply -f simpleweb-configmap.yaml
kubectl apply -f simpleweb-deployment.yaml
#kubectl apply -f simpleweb-loadbalancer.yaml
kubectl apply -f simpleweb-cluster.yaml
kubectl apply -f simpleweb-ingress.yaml
kubectl apply -f simpleapi-deployment.yaml
kubectl apply -f simpleapi-cluster.yaml
Write-Host "The list of k8s objects running locally is:" -ForegroundColor Yellow
kubectl get all
kubectl get ingress