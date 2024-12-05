# Service

## A Kubernetes Service is an abstraction that defines a logical set of Pods and enables access to them over a network. Services allow stable networking to Pods by providing a consistent endpoint (IP or DNS) for accessing them.

## Why Use Services?
- **To provide a stable IP address and DNS name for Pods.**
- **To load balance traffic across multiple Pods.**

# Types of Services:
- `ClusterIP`: Default type, exposes the service on an internal IP in the cluster.
- `NodePort`: Exposes the service on a static port on each Node's IP.
- `LoadBalancer`: Creates an external load balancer (on cloud providers).
- `ExternalName`: Maps the service to an external DNS name.

# Example:
```yaml
apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  selector:
    app: my-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
