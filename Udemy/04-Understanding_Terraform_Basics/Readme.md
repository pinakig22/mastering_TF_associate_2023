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

# HashiCorp Configuration Language (HCL)
- Terraform is written in _HCL (HashiCorp Configuration Language)_ and is designed to be both human and machine-readable.
- HCL is built using **code configuration blocks**. Terraform Code Configuration block types include:
  - Terraform `Settings` Block
  - Terraform `Provider` Block
  - Terraform `Resource` Block
  - Terraform `Data` Block
  - Terraform `Input Variables` Block
  - Terraform `Local Variables` Block
  - Terraform `Output Values` Block
  - Terraform `Modules` Block
- The _low-level syntax_ of the Terraform language is defined in terms of a syntax called _HCL_.
# Terraform Plug-in Based Architecture
# Terraform Provider Block
# Terraform Resource Block
# Terraform Input Variable Block
# Terraform Data Block
# Terraform Configuration Block
# Terraform Module Block
# Terraform Output Block
# Commenting Terraform Code
# Terraform Provider Installation & Versioning
# Using Multiple Terraform Providers
# Generating an SSH Key using the Terraform TLS Provider
# Fetch, Version, & Upgrade Terraform Providers
# Terraform Provisioners



## References
- [**Getting Started AWS**](https://developer.hashicorp.com/terraform/tutorials/aws-get-started)
- [**HCL Configuration Syntax**](https://developer.hashicorp.com/terraform/language/syntax/configuration)