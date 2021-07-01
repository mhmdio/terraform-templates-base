module "elastic_beanstalk_environment" {
  source = "cloudposse/elastic-beanstalk-environment/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version = "x.x.x"
  namespace                          = var.namespace
  stage                              = var.stage
  name                               = var.name
  description                        = "Test elastic_beanstalk_environment"
  region                             = var.region
  availability_zone_selector         = "Any 2"
  dns_zone_id                        = var.dns_zone_id
  elastic_beanstalk_application_name = module.elastic_beanstalk_application.elastic_beanstalk_application_name

  instance_type           = "t3.small"
  autoscale_min           = 1
  autoscale_max           = 2
  updating_min_in_service = 0
  updating_max_batch      = 1

  loadbalancer_type    = "application"
  vpc_id               = module.vpc.vpc_id
  loadbalancer_subnets = module.subnets.public_subnet_ids
  application_subnets  = module.subnets.private_subnet_ids
  security_group_rules = [
    {
      type                     = "egress"
      from_port                = 0
      to_port                  = 65535
      protocol                 = "-1"
      cidr_blocks              = ["0.0.0.0/0"]
      source_security_group_id = null
      description              = "Allow all outbound traffic"
    },
    {
      type                     = "ingress"
      from_port                = 0
      to_port                  = 65535
      protocol                 = "-1"
      source_security_group_id = [module.vpc.vpc_default_security_group_id]
      cidr_blocks              = null
      description              = "Allow all ingress traffic from trusted Security Groups"
    },
  ]
  prefer_legacy_service_policy = false

  // https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html
  // https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html#platforms-supported.docker
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.12.17 running Docker 18.06.1-ce"

  additional_settings = [
    {
      namespace = "aws:elasticbeanstalk:application:environment"
      name      = "DB_HOST"
      value     = "xxxxxxxxxxxxxx"
    },
    {
      namespace = "aws:elasticbeanstalk:application:environment"
      name      = "DB_USERNAME"
      value     = "yyyyyyyyyyyyy"
    },
    {
      namespace = "aws:elasticbeanstalk:application:environment"
      name      = "DB_PASSWORD"
      value     = "zzzzzzzzzzzzzzzzzzz"
    },
    {
      namespace = "aws:elasticbeanstalk:application:environment"
      name      = "ANOTHER_ENV_VAR"
      value     = "123456789"
    }
  ]
}
