module "zones" {
  source   = "terraform-aws-modules/route53/aws//modules/zones"
  version  = "~> 2.0"
  provider = aws.account2
  zones = {
    "sls-dev-bee.cloud" = {
      comment = "terraform-aws-modules-examples.com (production)"
      tags = {
        env = "production"
      }
    }

    "myapp.com" = {
      comment = "myapp.com"
    }
  }

  tags = {
    ManagedBy = "Terraform"
  }
}


provider "aws" {
  alias = "account1"
}

provider "aws" {
  alias = "account2"
}
