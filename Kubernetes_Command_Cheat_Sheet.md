
# Kubernetes Command Cheat Sheet

## **Cluster and Namespace Management**
- `minikube status`  
  Checks the status of your Minikube cluster.

- `kubectl version`  
  Displays the client and server versions of `kubectl` and the Kubernetes API server.

- `kubectl get nodes`  
  Lists all nodes in the cluster.

- `kubectl create namespace <namespace-name>`  
  Creates a new namespace.

- `kubectl get namespaces`  
  Lists all namespaces in the cluster.

- `kubectl delete namespace <namespace-name>`  
  Deletes a namespace and all its resources.

---

## **Application Deployment**
- `kubectl create deployment <deployment-name> --image=<image-name>`  
  Creates a deployment using the specified image.

- `kubectl apply -f <file-name>.yaml`  
  Creates or updates resources defined in a YAML file.

- `kubectl delete deployment <deployment-name>`  
  Deletes a specific deployment.

- `kubectl scale deployment <deployment-name> --replicas=<number>`  
  Scales the specified deployment to the desired number of replicas.

- `kubectl rollout status deployment/<deployment-name>`  
  Monitors the status of a deployment rollout.

- `kubectl set image deployment/<deployment-name> <container-name>=<new-image>`  
  Updates the image for a container in a deployment.

---

## **Pod Management**
- `kubectl get pods`  
  Lists all pods in the current namespace.

- `kubectl get pod --namespace <namespace>`  
  Lists all pods in a specific namespace.

- `kubectl describe pod <pod-name>`  
  Displays detailed information about a pod.

- `kubectl delete pod <pod-name>`  
  Deletes a specific pod.

- `kubectl exec -it <pod-name> -- /bin/bash`  
  Executes an interactive shell inside a pod.

- `kubectl logs <pod-name>`  
  Displays logs for a specific pod.

- `kubectl logs <pod-name> -f`  
  Streams logs for a specific pod.

---

## **Service Management**
- `kubectl expose deployment <deployment-name> --type=<service-type> --port=<port>`  
  Exposes a deployment as a service.

- `kubectl get services`  
  Lists all services in the current namespace.

- `kubectl describe service <service-name>`  
  Displays detailed information about a specific service.

- `kubectl delete service <service-name>`  
  Deletes a specific service.

---

## **Resource Management**
- `kubectl get all`  
  Lists all resources in the current namespace.

- `kubectl get all --namespace <namespace>`  
  Lists all resources in a specific namespace.

- `kubectl get pod -o wide`  
  Displays pod details, including node allocation and IPs.

- `kubectl top pod`  
  Displays resource usage (CPU/Memory) for pods.

- `kubectl top node`  
  Displays resource usage (CPU/Memory) for nodes.

---

## **Config Maps and Secrets**
- `kubectl create configmap <configmap-name> --from-literal=<key>=<value>`  
  Creates a ConfigMap from a literal value.

- `kubectl create configmap <configmap-name> --from-file=<file-path>`  
  Creates a ConfigMap from a file.

- `kubectl get configmaps`  
  Lists all ConfigMaps in the current namespace.

- `kubectl describe configmap <configmap-name>`  
  Displays detailed information about a ConfigMap.

- `kubectl delete configmap <configmap-name>`  
  Deletes a specific ConfigMap.

- `kubectl create secret generic <secret-name> --from-literal=<key>=<value>`  
  Creates a Secret from a literal value.

- `kubectl get secrets`  
  Lists all Secrets in the current namespace.

- `kubectl describe secret <secret-name>`  
  Displays detailed information about a Secret.

---

## **Persistent Storage**
- `kubectl get pvc`  
  Lists all PersistentVolumeClaims in the current namespace.

- `kubectl describe pvc <pvc-name>`  
  Displays detailed information about a PersistentVolumeClaim.

- `kubectl delete pvc <pvc-name>`  
  Deletes a specific PersistentVolumeClaim.

- `kubectl get pv`  
  Lists all PersistentVolumes in the cluster.

- `kubectl describe pv <pv-name>`  
  Displays detailed information about a PersistentVolume.

- `kubectl delete pv <pv-name>`  
  Deletes a specific PersistentVolume.

---

## **Role-Based Access Control (RBAC)**
- `kubectl create role <role-name> --verb=<verb> --resource=<resource>`  
  Creates a role with specific permissions.

- `kubectl get roles`  
  Lists all roles in the current namespace.

- `kubectl describe role <role-name>`  
  Displays detailed information about a role.

- `kubectl create rolebinding <binding-name> --role=<role-name> --user=<user-name>`  
  Binds a role to a user.

- `kubectl get rolebindings`  
  Lists all role bindings in the current namespace.

---

## **Debugging and Troubleshooting**
- `kubectl describe node <node-name>`  
  Displays detailed information about a node.

- `kubectl get events`  
  Lists events in the current namespace.

- `kubectl get pods --field-selector=status.phase!=Running`  
  Lists pods not in the "Running" phase.

- `kubectl logs <pod-name>`  
  Retrieves logs from a pod.

- `kubectl exec -it <pod-name> -- /bin/bash`  
  Accesses a pod's container shell for debugging.

---

## **Miscellaneous**
- `kubectl config view`  
  Displays the current Kubernetes configuration.

- `kubectl config use-context <context-name>`  
  Switches to a specific Kubernetes context.

- `kubectl label pod <pod-name> <key>=<value>`  
  Adds a label to a pod.

- `kubectl annotate pod <pod-name> <key>=<value>`  
  Adds an annotation to a pod.

- `kubectl delete <resource-type> --all`  
  Deletes all resources of a specific type in the current namespace.
