# Environment
environment = "prod"
# VPC Variables
vpc_name = "prodvpc"
prodvpc_cidr_block = "10.0.0.0/16"
prodvpc_availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
prodvpc_public_subnets = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
prodvpc_private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
prodvpc_database_subnets= ["10.1.151.0/24", "10.1.152.0/24", "10.1.153.0/24"]
prodvpc_create_database_subnet_group = true 
prodvpc_create_database_subnet_route_table = true   
prodvpc_enable_nat_gateway = true  
prodvpc_single_nat_gateway = true

# EC2 Instance Variables
instance_type = "t3.micro"
instance_keypair = "terraform-key"
private_instance_count = 2

# DNS Name
#dns_name = "proddemo5.devopsinccloud.com"

