# monoRepo (hybrid) Terraform Modules

## rules for using modules

- use <https://github.com/terraform-aws-modules/terraform-aws-vpc> for vpc ( public registry)
- use appx for our application ( our modules repo = private registry)

- list or decide of public modules:
  - vpc module
  - rds module
  - elastic beanstalk module
  - ecs module
