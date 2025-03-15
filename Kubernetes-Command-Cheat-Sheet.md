
# Kubernetes Command Cheat Sheet

## 1. Checking Kubernetes Version
```bash
kubectl version
```

## 2. Display Cluster Information
```bash
kubectl cluster-info
```

## 3. Get Nodes in the Cluster
```bash
kubectl get nodes
```

## 4. Get Pods in the Cluster
```bash
kubectl get pods
```

## 5. Get Services in the Cluster
```bash
kubectl get services
```

## 6. Get Deployments in the Cluster
```bash
kubectl get deployments
```

## 7. Get Namespaces in the Cluster
```bash
kubectl get namespaces
```

## 8. Describe a Resource
```bash
kubectl describe <resource_type> <resource_name>
```
Example:
```bash
kubectl describe pod <pod_name>
```

## 9. Get Logs of a Pod
```bash
kubectl logs <pod_name>
```

## 10. Create a Resource (e.g., Pod, Deployment)
```bash
kubectl create -f <resource_file.yaml>
```

## 11. Apply Changes to a Resource
```bash
kubectl apply -f <resource_file.yaml>
```

## 12. Delete a Resource
```bash
kubectl delete <resource_type> <resource_name>
```
Example:
```bash
kubectl delete pod <pod_name>
```

## 13. Execute Command Inside a Pod
```bash
kubectl exec -it <pod_name> -- <command>
```
Example:
```bash
kubectl exec -it <pod_name> -- bash
```

## 14. Scale a Deployment
```bash
kubectl scale deployment <deployment_name> --replicas=<number_of_replicas>
```

## 15. Expose a Pod as a Service
```bash
kubectl expose pod <pod_name> --port=<port> --target-port=<target_port> --name=<service_name>
```

## 16. Get Detailed Information About Cluster Nodes
```bash
kubectl top nodes
```

## 17. Get Detailed Information About Pod Resource Usage
```bash
kubectl top pods
```

## 18. View Resources with YAML Format
```bash
kubectl get <resource_type> <resource_name> -o yaml
```

## 19. Watch a Resource
```bash
kubectl get <resource_type> -w
```

## 20. Port Forward a Pod to Local Machine
```bash
kubectl port-forward <pod_name> <local_port>:<pod_port>
```

---
This is just a start to help you with basic Kubernetes commands. To learn more, check out the official Kubernetes documentation.
