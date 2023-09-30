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

  ![](../../../assets/TerraformPluginArchitecture.png)
  

### References
- [How Terraform Works With Plugins](https://developer.hashicorp.com/terraform/plugin/how-terraform-works)
