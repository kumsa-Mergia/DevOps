# Terraform Destroy: Tearing Down Your Infrastructure

This document provides an overview of the `terraform destroy` command and its usage.

**What is `terraform destroy`?**

* The `terraform destroy` command is used to **deprovision** the infrastructure that was created by `terraform apply`. 
* It removes the resources defined in your Terraform configuration files from your cloud provider (e.g., AWS, Azure, GCP).

**Usage:**

```bash
terraform destroy
