data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    bucket = ""
  }
}

# data.terraform_remote_state.network.vpc_id

data "aws_vpc" {
  name = "demo-vpc"
}
