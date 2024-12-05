# ConfigMap
A ConfigMap allows you to decouple environment-specific configurations from your containerized applications. They store non-sensitive data such as configuration settings, environment variables, or command-line arguments that your application can use.

## Why Use ConfigMaps?
- **To inject configuration into containers.**
- **To separate configuration from application code.**

## Example:
```yml
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-config
data:
  app.conf: |
    setting1=value1
    setting2=value2
