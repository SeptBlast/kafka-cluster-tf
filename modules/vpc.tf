module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.3"

  name = "${var.stackName}-kafka-vpc"
  cidr = "10.2.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.2.0.0/19", "10.2.32.0/19", "10.2.64.0/19"]
  public_subnets  = ["10.2.96.0/19", "10.2.128.0/19", "10.3.128.0/19"]

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    service     = "sase-infra-data"
    environment = "${var.stackName}"
  }
}