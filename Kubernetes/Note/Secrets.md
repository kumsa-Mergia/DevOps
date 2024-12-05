# Secrets

Kubernetes Secrets are used to store sensitive information, such as passwords, OAuth tokens, SSH keys, or API keys. Secrets are similar to ConfigMaps, but they are specifically intended for storing confidential data in a way that is encoded (though not encrypted by default).

## Why Use Secrets?
- **To protect sensitive data in your application.**
- **They can be accessed by Pods and other Kubernetes resources securely.**

## Example:
```yaml
apiVersion: v1
kind: Secret
metadata:
  name: my-secret
data:
  username: dXNlcg==  # base64-encoded value
  password: cGFzc3dvcmQ=  # base64-encoded value
