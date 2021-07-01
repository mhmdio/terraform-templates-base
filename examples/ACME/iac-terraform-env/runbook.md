# commands

bit
stack.sh ENV=backup

```bash
❯ terraform init -backend-config=env/${ENV}/backend.hcl
❯ terraform plan -var-file=env/${ENV}/terraform.tfvars
❯ terraform apply -var-file=env/${ENV}/terraform.tfvars

❯ terraform init -backend-config=env/stage/backend.hcl
❯ terraform plan -var-file=env/stage/terraform.tfvars
❯ terraform apply -var-file=env/stage/terraform.tfvars
```

staging:

1. network
   1. vpc
   2. route53
   3. ssm
2. data
   1. rds
   2. s3
3. app
   1. ecs
   2. bean
4. serverless
   1. lambda
   2. api gateways
5. backup dumps

verified this for the demo account.

repeat for demo account

Prod:
new route53 dns zone ( public prod.x.x)
move the data
test
prod

the current route53 - we will not touch it () >> manually add the ns records of the new sub domain
create new sub public domain called prod.x.x
move the data
test with new domain prod.x.x
everything went smooth.
flip the dns ( rename prod.x into x.x)

notes:
terraform cli this
terraform cloud later or codebuild
