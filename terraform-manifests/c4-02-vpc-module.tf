# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  #version = "2.78.0"
  version = "3.0.0"

  # VPC Basic Details
  name = "${local.name}-${var.vpc_name}"
  cidr = var.prodvpc_cidr_block
  azs             = var.prodvpc_availability_zones
  public_subnets  = var.prodvpc_public_subnets
  private_subnets = var.prodvpc_private_subnets  

  # Database Subnets
  database_subnets = var.prodvpc_database_subnets
  create_database_subnet_group = var.prodvpc_create_database_subnet_group
  create_database_subnet_route_table = var.prodvpc_create_database_subnet_route_table
  # create_database_internet_gateway_route = true
  # create_database_nat_gateway_route = true
  
  # NAT Gateways - Outbound Communication
  enable_nat_gateway = var.prodvpc_enable_nat_gateway 
  single_nat_gateway = var.prodvpc_single_nat_gateway

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true


  tags = local.common_tags
  vpc_tags = local.common_tags

  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Prod Public Subnets"
  }
  private_subnet_tags = {
    Type = "Prod Private Subnets"
  }  
  database_subnet_tags = {
    Type = "Prod Private Database Subnets"
  }
}