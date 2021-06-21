# Terraform monoRepo Template

**Mono Repo** Terraform Layout. Based on Vanilla Terraform, this layout used in Terminal or CI/CD operations, and Terraform Cloud.

- **bootstrap**: contains Terraform bootstrap for:
  - **AWS** (S3 bucket, KMS key and Dynamodb table for State files)
  - **TFC** (Terraform Cloud workspace - Organization)
  - **Github** ( Repos - Access - Actions - Tokens)
- **config**: config files for all 3rd party tools that used with Terraform, and pipelines samples:
  - **pipelines**: `CICD` files for automate Terraform Operations.
  - atlantis
  - terraform-docs
  - infracost
  - inframap
  - tflint
  - driftctl
  - tfsec
  - checkov
  - cloudrail
  - KICS
- **docs**: Documentation, screenshots and diagrams related files, alongside development workflow, includes `drawio` file.
- **modules**: custom Terraform modules folder, use public well-trusted module.
- **stacks**: Terraform templates that define a working unit, contains:
- **envs**: contains environments `tfvars` values for  stack values and `env.hcl` for state file
  - `0env.tfvars` common environment values
  - `STACK.hcl` stack state file values
  - `.env` environment secrets and Cloud Access
- **tests**: test implementation using LocalStack and conftest
- **Taskfile.yml**: orchestrator for TF operations

## Minimum Require tools for TF ops locally

- Taskfile
- terraform
- terraform-docs
- checkov
- infracost
- driftctl
