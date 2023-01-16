# TechOps_IaC

Infrastructure code for our TechOps project written in terraform

&nbsp;

### Prerequisuites
- Terraform CLI

&nbsp;

## Getting Started
-----------------------------------------------------------

1. Copy the example tfvars file to a new file named `local.tfvars`.

```bash
cp local.tfvars.example local.tfvars
```

2. Add your github configuration to the `local.tfvars` file.

3. Build the infrastructure with your local variables.

```bash
terraform apply -var-file="local.tfvars"
```