variable "region" {
  description = "AWS region"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16" //allows for scalability and growth
}

variable "cidr_subnet"{
  description = "CIDR block for the subnet"
  default = "10.1.0.0/24" //allows to divide VPC into smaller & manageable segments
}
