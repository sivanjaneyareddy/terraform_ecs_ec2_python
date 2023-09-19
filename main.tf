provider "aws" {
  region  = "us-east-1"
}
locals {
  name     = "folderit"
  rds_name = "folderit_rds"
  region   = "us-east-1"
}

# VPC Config
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 2"

  name = local.name
  cidr = "10.99.0.0/18"

  azs              = ["${local.region}a", "${local.region}b", "${local.region}c"]
  public_subnets   = ["10.99.0.0/24", "10.99.1.0/24", "10.99.2.0/24"]
  private_subnets  = ["10.99.3.0/24", "10.99.4.0/24", "10.99.5.0/24"]
  database_subnets = ["10.99.7.0/24", "10.99.8.0/24", "10.99.9.0/24"]

  create_database_subnet_group = true
  enable_dns_hostnames         = true

  enable_nat_gateway  = true
  single_nat_gateway  = true
  reuse_nat_ips       = true
  external_nat_ip_ids = aws_eip.eip_nat.*.id

}

#Elastic IP for NAT Gateway
resource "aws_eip" "eip_nat" {
  vpc = true
}
