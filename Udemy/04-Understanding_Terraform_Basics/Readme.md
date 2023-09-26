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

### References
- [**HCL Configuration Syntax**](https://developer.hashicorp.com/terraform/language/syntax/configuration)

# Terraform Plug-in Based Architecture
- Terraform is built on a _plugin-based architecture_, enabling developers to extend Terraform by **writing new plugins** or **compiling modified versions of existing plugins**.
- Terraform is _**logically**_ split into two main parts: `Terraform Core` and `Terraform Plugins`.
  - `Terraform Core` **uses remote procedure calls (RPC) to communicate with** `Terraform Plugins` and offers multiple ways to _discover_ and _load_ plugins to use.
  - `Terraform Plugins` **expose an implementation for a specific service**, such as _AWS_, or **provisioner**, such as _bash_.
## Terraform Core
- Terraform `Core` is a _statically-compiled binary_ written in the `Go` programming language. The **compiled** binary is the _command line tool (CLI)_ `terraform`, the _entrypoint_ for anyone using Terraform.
- **Primary Responsibilities**
  - **Infrastructure as code**: reading and interpolating configuration files and modules
  - **Resource state management**
  - **Construction of the Resource Graph**
  - **Plan Execution**
  - **Communication with `Plugins` over RPC.**
- Terraform `Core` provides a **high-level framework** that **abstracts away** the details of `plugin` discovery and _RPC communication_ so developers do not need to manage either.

## Terraform Plugins
- Are **executable** binaries _invoked by Terraform Core over RPC_.
-  Terraform has _several `Provisioners` **built-in**_, while `Providers` are **discovered dynamically** as needed.
- Terraform relies on `plugins` called **`providers`** to **interact** with remote systems and expand functionality.
- **Primary Responsibilities**
  - **`Provider` Plugin**
    - _**Initialization**_ of any _included libraries used to make API calls_
    - **Authentication** _with the Infrastructure Provider_
    - **Define Resources** _that map to specific Services_.
  - **`Provisioner` Plugins**
    - Executing commands or scripts on the designated Resource after creation, or on destruction.
- sdfas
- ![Alt text](assets/TerraformPluginArchitecture.png)
### References
- [How Terraform Works With Plugins](https://developer.hashicorp.com/terraform/plugin/how-terraform-works)

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




