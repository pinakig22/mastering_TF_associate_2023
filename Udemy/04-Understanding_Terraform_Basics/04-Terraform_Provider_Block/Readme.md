# Providers
- Terraform relies on plugins called `providers` to interact with cloud providers, SaaS providers, and other APIs.
- Each `provider` adds a set of `resource types` and/or `data sources` that Terraform can mange.
- `Providers` are **distributed separately** from Terraform itself, and each `provider` _has its own release cadence and version numbers_.
- **How to Use Providers**: To use resources from a given `provider`, you need to **include some information** about it in your configuration.
  - **[Provider Requirement](https://developer.hashicorp.com/terraform/language/providers/requirements)**: documents how to **declare** `providers` so Terraform can install them.
  - **[Provider Configuration](https://developer.hashicorp.com/terraform/language/providers/configuration)**: documents **how to configure settings** for `providers`.
  - **[Dependency Lock File](https://developer.hashicorp.com/terraform/language/files/dependency-lock)**: documents an **additional HCL file** that can be included with a configuration, which tells Terraform **to always use** a specific set of `provider` versions.

-  