Minikube Status:

=> minikube status
==> Provides current status of minikube cluster

type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured


1- Deployments:

=> kubectl get deployments
==> Provides details of the deployed deployments.

NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
docker-deployment1   1/1     1            1           44m
docker-deployment2   1/1     1            1           21m
docker-deployment3   1/1     1            1           61s


2- Service:

=> kubectl get svc
==> Provides details of the deployed services.

NAME              TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
docker-service1   ClusterIP      10.98.198.23     <none>        8006/TCP         39m
docker-service2   NodePort       10.108.95.40     <none>        8007:30007/TCP   22m
docker-service3   LoadBalancer   10.102.243.101   <pending>     8008:30433/TCP   79s
kubernetes        ClusterIP      10.96.0.1        <none>        443/TCP          39m



3- Pods:

=> kubectl get pods
==> Provides details of the deployed pods

NAME                                        READY   STATUS    RESTARTS      AGE
docker-deployment1-54f9bcc5c6-582qh         1/1     Running   0             45m
docker-deployment2-65dd89d667-mc9b6         1/1     Running   0             22m
docker-deployment3-56d9fddcbb-5pqtv         1/1     Running   0             115s


=> kubectl get pods -o wide 
==> Provides extensive details of deployed pods

NAME                                        READY   STATUS    RESTARTS      AGE   IP             NODE       NOMINATED NODE   READINESS GATES
docker-deployment1-54f9bcc5c6-582qh         1/1     Running   0             56m   10.244.0.24    minikube   <none>           <none>
docker-deployment2-65dd89d667-mc9b6         1/1     Running   0             34m   10.244.0.25    minikube   <none>           <none>
docker-deployment3-56d9fddcbb-5pqtv         1/1     Running   0             13m   10.244.0.26    minikube   <none>           <none>
---------------------------------------------------------------------------------------

=> Pods are inaccessible with clusterIP because it only allows accessibility from within the cluster, I have used port forwarding to make it accessible
=> NodePort allows accessibility from outside the cluster as well. Hence, using <minikube IP>:Port the pod/application are accessible
=> Loadbalancer also allows access from outside the cluster but currently I have used minikube in local machine hence Loadbalancer has not been used.