region = "us-east-1"
instance_type = "t2.xlarge" 
vpc_name = "hcl_vpc"
cidr_block = "10.0.0.0/16"
azs                   = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnet_cidr    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
internet_gateway_name = "hcl_Igw"
main_route_table = "hcl_rt"
