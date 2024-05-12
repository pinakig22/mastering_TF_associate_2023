# Terraform's Purpose

## Terraform Goals
- Unify the view of resourcing using infrastructure code
- Support the modern datacenter (IaaS,PaaS,SaaS)
- Expose a way for individuals and teams to safely and predictably change infrastructure
- Provide a workflow that is technology-agnostic.
- Manage anything with an API

  ![image](https://github.com/pinakig22/mastering_TF_associate_2023/assets/36029504/a58ab9de-e1ce-4296-ac38-cb886cb3f6be)

## Terraform Benefits
- Provides a high-level abstraction of infrastructure (IaC)
- Allows for composition and combination
- Supports parallel management of resources (graph, fast)
- Separates planning from execution (dry-run)

# Benefits of Terraform State
- `State` is a necessary requirement for Terraform to function and below are the reasons why Terraform state is required
- During execution, Terraform will examine the state of the currently running infrastructure, determine what differences exist between the current state and the revised desired state, and indicate the necessary changes that must be applied

## Purpose of Terraform State
The primary purpose of Terraform state is to **store bindings** between objects in a remote system and resource instances declared in your configuration. 

### Mapping to Real World
- Terraform requires some sort of database to map Terraform config to the real world and uses its own `state` structure.
- Terraform expects that each remote object is **bound to only one resource instance**, which is normally guaranteed by Terraform being responsible for creating the objects and recording their identities in the state.
  - If you instead **import** objects that were **created outside** of Terraform, you'll need to **check yourself** that _each distinct object is imported to only one resource instance_.
- If one remote object is **bound to two or more resource instances** then Terraform may take **unexpected actions** against those objects, because the mapping from configuration to the remote object state has become **ambiguous**.
### Metadata
- Alongside the mappings between resources and remote objects, Terraform must also **track metadata such as resource dependencies**.
- To ensure correct operation, Terraform **retains a copy of the most recent set of dependencies within the `state`**.
- Terraform also stores other metadata for similar reasons, such as a _pointer to the provider configuration_ that was most recently used with the resource in situations where multiple aliased providers are present.
### Performance
- Terraform stores a **cache of the attribute values** for all resources in the `state`. This is the most optional feature of Terraform `state` and is done only as a performance improvement.
- The **default** behavior of Terraform for every plan and apply, is to **sync all resources** in the `state`.
- For **larger infrastructures**, _querying every resource is too slow_. 
  - Many cloud providers **do not provide APIs** to query multiple resources at once, and the **round trip time** for each resource is _hundreds of milliseconds_. 
  - On top of this, cloud providers _almost always have API rate limiting_ so Terraform can only request a certain number of resources in a period of time.
  - **Larger users** of Terraform make heavy use of the **`-refresh=false`** flag as well as the **`-target`** flag in order to _work around_ this. In these scenarios, the **cached state** is treated as the **record of truth**.
### Syncing
- In the **default** configuration, Terraform **stores** the `state` in a file in the **current working directory** where Terraform was run.
  - This is okay for getting started, but when using Terraform **in a team** it is important for everyone to be working with the **same `state`** so that operations will be applied to the same remote objects.
- **Remote state** is the recommended solution to this problem.
  - With a _fully-featured state backend_, Terraform can use **remote locking** as a measure to _avoid two or more different users accidentally running Terraform at the same time_, and thus ensure that each Terraform run begins with the most recent updated state.

## Managing State
- While the format of the state files are just JSON, **direct file editing of the `state` is discouraged**.
- The **`terraform state`** command is used for state management. 
- **Usage**: **`terraform state <subcommand> [options] [args]`**
- **`Subcommands`**:
  - **`terraform state list`**: shows the resource addresses for every resource
  - **`terraform state show`**: display detailed state data about one instance
  - **`terraform refresh`**: updates state data to match real-world condition of the manged resources. This is automatically done during `plan` and `apply`, but **not when interacting** with `state` **directly**.

## References
- [`State`](https://developer.hashicorp.com/terraform/language/state)
- [Purpose of Terraform `State`](https://developer.hashicorp.com/terraform/language/state/purpose)
- [`State` Command](https://developer.hashicorp.com/terraform/cli/commands/state)
  
## Misc Ref
- [terraform-provider-spotify](https://github.com/conradludgate/terraform-provider-spotify)