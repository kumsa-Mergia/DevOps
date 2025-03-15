
# Advanced Kubernetes Command Cheat Sheet

## 1. Get Cluster Information with More Details
```bash
kubectl cluster-info dump
```

## 2. Get Resource Usage with Metrics Server
```bash
kubectl top nodes
kubectl top pods
```

## 3. Get Detailed Information About a Pod with Events
```bash
kubectl describe pod <pod_name>
```

## 4. List All Namespaces
```bash
kubectl get namespaces
```

## 5. Get All Resources Across All Namespaces
```bash
kubectl get all --all-namespaces
```

## 6. Get Resource Usage for All Pods in All Namespaces
```bash
kubectl top pods --all-namespaces
```

## 7. Create a Resource from a Template
```bash
kubectl apply -f <template_file.yaml>
```

## 8. Expose a Deployment to External Traffic
```bash
kubectl expose deployment <deployment_name> --type=LoadBalancer --port=<port>
```

## 9. Port Forward a Service to Local Machine
```bash
kubectl port-forward service/<service_name> <local_port>:<service_port>
```

## 10. Edit a Resource Directly in the Cluster
```bash
kubectl edit <resource_type> <resource_name>
```

## 11. View Events in the Cluster
```bash
kubectl get events
```

## 12. Get All Pods in a Specific Namespace
```bash
kubectl get pods -n <namespace>
```

## 13. Get Pods with Labels
```bash
kubectl get pods --selector=<label_selector>
```

## 14. Run a Pod with Specific CPU and Memory Limits
```bash
kubectl run <pod_name> --image=<image_name> --requests='cpu=<cpu_request>,memory=<memory_request>' --limits='cpu=<cpu_limit>,memory=<memory_limit>'
```

## 15. Get Resource Usage in YAML Format
```bash
kubectl get pod <pod_name> -o yaml
```

## 16. Run a CronJob
```bash
kubectl create cronjob <cronjob_name> --schedule="<cron_schedule>" --image=<image_name>
```

## 17. Rollout a Deployment Update
```bash
kubectl rollout restart deployment <deployment_name>
```

## 18. View Rollout History
```bash
kubectl rollout history deployment <deployment_name>
```

## 19. Rollback a Deployment to a Previous Revision
```bash
kubectl rollout undo deployment <deployment_name> --to-revision=<revision_number>
```

## 20. Delete All Pods in a Namespace
```bash
kubectl delete pods --all -n <namespace>
```

## 21. Clean Up Resources with Label Selectors
```bash
kubectl delete <resource_type> -l <label_selector>
```

## 22. Scale a ReplicaSet
```bash
kubectl scale replicaset <replicaset_name> --replicas=<number_of_replicas>
```

## 23. View Resource Usage with Custom Columns
```bash
kubectl get <resource_type> -o custom-columns=<column_1>:<column_1_value>,<column_2>:<column_2_value>
```

## 24. Get a Pod's Logs with Specific Timestamps
```bash
kubectl logs <pod_name> --since=<time_duration>
```

## 25. Find the Container ID of a Pod
```bash
kubectl get pod <pod_name> -o=jsonpath='{.status.containerStatuses[0].containerID}'
```

## 26. View Persistent Volumes (PVs)
```bash
kubectl get pv
```

## 27. View Persistent Volume Claims (PVCs)
```bash
kubectl get pvc
```

## 28. Create a Resource with Dry Run
```bash
kubectl create -f <resource_file.yaml> --dry-run=client
```

## 29. Debug Pods with Ephemeral Containers
```bash
kubectl debug <pod_name> -it --image=<image_name>
```

## 30. Access the Dashboard with kubectl proxy
```bash
kubectl proxy --port=<port>
```

---
These commands are useful for managing a Kubernetes cluster at scale, troubleshooting, and optimizing resource management.
