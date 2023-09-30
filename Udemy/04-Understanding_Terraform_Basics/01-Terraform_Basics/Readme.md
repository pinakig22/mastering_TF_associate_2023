# Terraform Basics
- All interactions with Terraform occur via the CLI. Terraform is a local tool (runs on the current machine).
- The terraform ecosystem also includes **providers** for many cloud services, and a **`module`** repository
- There are a handful of basic terraform commands, including:
  ```shell
  # Initialize Terraform Working Directory
  terraform init
  # Validating a Configuration (no syntax problems)
  terraform validate
  # Generating a Terraform Plan (dry run mode)
  terraform plan
  # Planning out changes to a file
  terraform plan -out <plan_name>
  # Applying a Terraform Plan
  terraform apply
  # Terraform Destroy (to destroy all remote objects managed by a particular Terraform configuration)
  terraform destroy
  ```
- Once the Terraform workspace has been **initialized** you are ready to begin _planning and provisioning_ your resources.

### References
- [**Getting Started AWS**](https://developer.hashicorp.com/terraform/tutorials/aws-get-started)