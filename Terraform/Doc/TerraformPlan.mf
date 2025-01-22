# Terraform Plan: A Preview of Changes

**What is `terraform plan`?**

* `terraform plan` is a core command in Terraform that allows you to preview the infrastructure changes that Terraform will make before actually applying them. 
* It analyzes your configuration files and compares the current state of your infrastructure (if known) with the desired state defined in your configuration.
* `terraform plan` then generates an "execution plan" that outlines:
    * **Resources to be created:** New resources that will be added to your infrastructure.
    * **Resources to be updated:** Existing resources that need to be modified.
    * **Resources to be destroyed:** Resources that will be removed.
    * **Changes to resource attributes:** Specific attributes of existing resources that will be altered.

**Why is `terraform plan` important?**

* **Safety:** 
    * `terraform plan` allows you to review the intended changes before they are applied to your real infrastructure. 
    * This helps prevent accidental or unexpected modifications.
* **Understanding:**
    * The plan provides a clear and concise overview of what Terraform will do, making it easier to understand the impact of your configuration changes.
* **Debugging:**
    * If the plan shows unexpected changes or errors, it helps you identify and correct issues in your configuration files before they cause problems in your live environment.

**How to use `terraform plan`:**

1. **Initialize Terraform:**
   ```bash
   terraform init
