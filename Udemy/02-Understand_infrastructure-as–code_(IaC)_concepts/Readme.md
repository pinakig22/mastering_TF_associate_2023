# What is Infrastructure as Code
Infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share.

Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

The core Terraform workflow consists of **three** stages:

- **Write**: You define resources, which may be across multiple cloud providers and services. For example, you might create a configuration to deploy an application on virtual machines in a Virtual Private Cloud (VPC) network with security groups and a load balancer.
- **Plan**: Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.
- **Apply**: On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.

## Why Terraform?
### Manage any infrastructure
- Many of the platforms (AWS, Google, etc) and services you already use in the Terraform Registry.
- Terraform takes an immutable approach to infrastructure, reducing the complexity of upgrading or modifying your services and infrastructure.

### Track your infrastructure
- Terraform **generates** a `plan` and prompts you for your **approval** before modifying your infrastructure. 
- It also **keeps track** of your real infrastructure in a `state` file, which acts as a source of truth for your environment. 
- Terraform uses the `state` file to determine the changes to make to your infrastructure so that it will match your configuration.

### Automate Changes
- Terraform configuration files are **declarative**, meaning that they describe the end state of your infrastructure. You **do not need to write** step-by-step instructions to create resources because Terraform handles the underlying logic.
- Terraform builds a **resource graph** to determine _resource dependencies_ and creates or modifies non-dependent resources in parallel. This allows Terraform to provision resources efficiently.

### Standardize Configurations
- Terraform supports **reusable configuration** components called `modules` that define _configurable collections of infrastructure_, saving time and encouraging best practices. 
- You can use **publicly available** `modules` from the _Terraform Registry_, or write your own.

### Collaborate
- Since your configuration is written in a file, you can **commit** it to a _Version Control System (VCS)_ and use **Terraform Cloud** to efficiently manage Terraform workflows across teams.
- **Terraform Cloud** runs Terraform in a _consistent, reliable environment_ and _provides secure access_ to shared `state` and `secret data`, `role-based access controls`, a `private registry` for sharing both `modules` and `providers`, and more.

# Benefits of IaC (Infrastructure as Code)
[UseCases](https://developer.hashicorp.com/terraform/intro/use-cases)

## References
- [**Blog**: Infrastructure as Code in a Private or Public Cloud](https://www.hashicorp.com/blog/infrastructure-as-code-in-a-private-or-public-cloud)
- [**Tutorial**: What is Infrastructure as Code with Terraform?](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/infrastructure-as-code)