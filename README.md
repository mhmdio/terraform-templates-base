# Terraform monoRepo Template

**Mono Repo** Terraform Layout. Based on Vanilla Terraform, this layout used in Terminal or CI/CD operations.

- **bootstrap**: contains Terraform bootstrap for:
  - **AWS** (S3 bucket, KMS key and Dynamodb table for State files)
  - **TFC** (Terraform Cloud workspace - Organization)
  - **Github** ( Repos - Access - Actions - Tokens)
- **configurations**: config files for all 3rd party tools that used with Terraform, and pipelines samples:
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
- **documentations**: Documentation, screenshots and diagrams related files, alongside development workflow
- **modules**: custom Terraform modules folder, use public well-trusted module.
- **stacks**: Terraform templates that define a working unit, contains:
  - **envs**: contains environments `tfvars` values for state file and stack values.
- **tests**: test implementation using LocalStack and conftest
- **Taskfile.yml**: orchestrator for TF operations

## Layout

```bash
.
├── README.md
├── Taskfile.yml
├── bootstrap
│   ├── README.md
│   ├── aws
│   │   ├── dev
│   │   │   └── bootstrap.tf
│   │   ├── prod
│   │   │   └── bootstrap.tf
│   │   └── stage
│   │       └── bootstrap.tf
│   ├── github
│   │   └── bootstrap.tf
│   └── tfc
│       ├── dev
│       │   └── bootstrap.tf
│       ├── prod
│       │   └── bootstrap.tf
│       └── stage
│           └── bootstrap.tf
├── configurations
│   ├── README.md
│   ├── atlantis.yml
│   ├── checkov.yml
│   ├── infracost.yml
│   ├── pipelines
│   │   ├── Jenkinsfile
│   │   ├── README.md
│   │   ├── bitbucket-pipelines.yml
│   │   └── codebuild.sh
│   ├── terraform-docs.yml
│   └── tfsec.yml
├── documentations
│   ├── README.md
│   ├── development
│   │   └── README.md
│   └── diagram
│       └── README.md
├── modules
│   ├── README.md
│   └── web-app
│       ├── README.md
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── stacks
│   ├── README.md
│   ├── app
│   │   ├── README.md
│   │   ├── envs
│   │   │   ├── dev
│   │   │   │   ├── README.md
│   │   │   │   ├── backend.us-east-1.tfvars
│   │   │   │   └── dev.us-east-1.tfvars
│   │   │   ├── prod
│   │   │   │   ├── README.md
│   │   │   │   ├── backend.us-east-1.tfvars
│   │   │   │   └── prod.us-east-1.tfvars
│   │   │   └── stage
│   │   │       ├── README.md
│   │   │       ├── backend.us-east-1.tfvars
│   │   │       └── stage.us-east-1.tfvars
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── data
│   │   ├── README.md
│   │   ├── envs
│   │   │   ├── dev
│   │   │   │   ├── README.md
│   │   │   │   ├── backend.us-east-1.tfvars
│   │   │   │   └── dev.us-east-1.tfvars
│   │   │   ├── prod
│   │   │   │   ├── README.md
│   │   │   │   ├── backend.us-east-1.tfvars
│   │   │   │   └── prod.us-east-1.tfvars
│   │   │   └── stage
│   │   │       ├── README.md
│   │   │       ├── backend.us-east-1.tfvars
│   │   │       └── stage.us-east-1.tfvars
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── mgmt
│   │   ├── README.md
│   │   ├── envs
│   │   │   ├── README.md
│   │   │   ├── backend.us-east-1.tfvars
│   │   │   └── mgmt.us-east-1.tfvars
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── network
│   │   ├── README.md
│   │   ├── envs
│   │   │   ├── dev
│   │   │   │   ├── README.md
│   │   │   │   ├── backend.us-east-1.tfvars
│   │   │   │   └── dev.us-east-1.tfvars
│   │   │   ├── prod
│   │   │   │   ├── README.md
│   │   │   │   ├── backend.us-east-1.tfvars
│   │   │   │   └── prod.us-east-1.tfvars
│   │   │   └── stage
│   │   │       ├── README.md
│   │   │       ├── backend.us-east-1.tfvars
│   │   │       └── stage.us-east-1.tfvars
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── security
│       ├── README.md
│       ├── envs
│       │   ├── README.md
│       │   ├── backend.us-east-1.tfvars
│       │   └── sec.us-east-1.tfvars
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── tests
    ├── LocalStack
    │   ├── README.md
    │   └── docker-compose.yml
    ├── README.md
    └── conftest
        └── README.md

40 directories, 86 files
```
