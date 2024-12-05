# Pod

A Pod is the smallest and simplest Kubernetes object. It represents a single instance of a running process in your cluster. A Pod can host one or more containers, which are managed together and share storage, network, and namespaces.

## Why Use Pods?
- **To deploy your application’s containers.**
- **Pods provide isolation, but containers inside a Pod share the same network namespace.**

## Example:
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
  - name: my-container
    image: nginx:latest
