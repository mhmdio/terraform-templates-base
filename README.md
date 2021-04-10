# Terraform Stacks Demo

**Mono Repo** Terraform Layout. Based on Vanilla Terraform, this layout used in Terminal or CI/CD operations, another demo will be provided for Terraform Cloud.

- **bootstrap**: contains Terraform bootstrap for AWS (S3 bucket, KMS key and Dynamodb table for State files) and TFC (Terraform Cloud workspace - Organization)
- **config**: config files for all 3rd party tools that used with Terraform.
- **docs**: Documentation, screenshots and diagrams related files.
- **envs**: contains environments `tfvars` values for state file and stack.
- **modules**: custom Terraform modules folder, use public well-trusted module.
- **stacks**: Terraform templates that define a working unit.
- **pipeline**: `CICD` files for automate Terraform Operations.
- **tests**: test implementation and LocalStack

## Layout

```bash
├── README.md
├── bootstrap
│   ├── README.md
│   ├── dev
│   │   └── bootstrap.tf
│   ├── prod
│   │   └── bootstrap.tf
│   └── stage
│       └── bootstrap.tf
├── config
│   ├── README.md
│   ├── atlantis.yml
│   ├── infracost.yml
│   ├── terraform-docs.yml
│   └── tfsec.yml
├── docs
│   └── README.md
├── envs
│   ├── README.md
│   ├── dev
│   │   └── us-east-1
│   │       ├── README.md
│   │       ├── bakend.tfvars
│   │       └── dev.tfvars
│   ├── mgmt
│   │   └── us-east-1
│   │       ├── README.md
│   │       ├── bakend.tfvars
│   │       └── mgmt.tfvars
│   ├── prod
│   │   ├── us-east-1
│   │   │   ├── README.md
│   │   │   ├── bakend.tfvars
│   │   │   └── prod.tfvars
│   │   └── us-west-1
│   │       ├── README.md
│   │       ├── bakend.tfvars
│   │       └── prod.tfvars
│   ├── sec
│   │   └── us-east-1
│   │       ├── README.md
│   │       ├── bakend.tfvars
│   │       └── sec.tfvars
│   └── stage
│       └── us-east-1
│           ├── README.md
│           ├── bakend.tfvars
│           └── stage.tfvars
├── modules
│   └── README.md
├── pipeline
│   ├── Jenkinsfile
│   └── README.md
├── stacks
│   ├── README.md
│   ├── app
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── data
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── mgmt
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── network
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── sec
│       ├── README.md
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── tests
    ├── README.md
    └── conftest
        └── README.md
```

## Terraform helpers

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

## Best Practices
