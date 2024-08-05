variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_name" {
  description = "VPC name dev"
  default     = "labyrinth-vpc"
}

variable "availability_zone" {
  description = "Subnet A AZ"
  default     = "us-west-2c"
}

variable "availability_zone_b" {
  description = "Subnet B AZ"
  default     = "us-west-2b"
}

variable "subnet_group_name" {
  description = "DB subnet group name"
  default     = "db-subnet-group"
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16" //allows for scalability and growth
}

variable "cidr_subnet"{
  description = "CIDR block for the subnet"
  default = "10.1.0.0/24" //allows to divide VPC into smaller & manageable segments
}

variable "cidr_subnet_b"{
  description = "CIDR block for the subnet"
  default = "10.1.2.0/24" //allows to divide VPC into smaller & manageable segments
}

variable "cidr_route_table" {
  description = "CIDR block for the route table"
  default     = "0.0.0.0/0"
}

variable "security_group_name" {
  description = "Name for app's security group"
  default     = "sg"
}

variable "rds_security_group_name" {
  description = "Name for DB's security group"
  default     = "rds_sg"
}
