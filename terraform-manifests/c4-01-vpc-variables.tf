# VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string 
  default = "prodvpc"
}

# VPC CIDR Block
variable "prodvpc_cidr_block" {
  description = "PRODVPC CIDR Block"
  type = string 
  default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "prodvpc_availability_zones" {
  description = "PRODVPC Availability Zones"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

# VPC Public Subnets
variable "prodvpc_public_subnets" {
  description = "PRODVPC Public Subnets"
  type = list(string)
  default = ["10.1.101.0/24", "10.1.102.0/24"]
}

# VPC Private Subnets
variable "prodvpc_private_subnets" {
  description = "PRODVPC Private Subnets"
  type = list(string)
  default = ["10.1.1.0/24", "10.1.2.0/24"]
}

# VPC Database Subnets
variable "prodvpc_database_subnets" {
  description = "PRODVPC Database Subnets"
  type = list(string)
  default = ["10.1.151.0/24", "10.1.152.0/24"]
}

# VPC Create Database Subnet Group (True / False)
variable "prodvpc_create_database_subnet_group" {
  description = "PRODVPC Create Database Subnet Group"
  type = bool
  default = true 
}

# VPC Create Database Subnet Route Table (True or False)
variable "prodvpc_create_database_subnet_route_table" {
  description = "PRODVPC Create Database Subnet Route Table"
  type = bool
  default = true   
}

  
# VPC Enable NAT Gateway (True or False) 
variable "prodvpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Prod Private Subnets Outbound Communication"
  type = bool
  default = true  
}

# VPC Single NAT Gateway (True or False)
variable "prodvpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway Prod in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}





