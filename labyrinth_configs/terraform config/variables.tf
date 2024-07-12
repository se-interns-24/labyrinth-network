variable "region" {
  description = "AWS region"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
/*
variable "key_name" {
  description = "SSH key pair name"
  default = "intern-project-key-pair"
}

variable "ami" {
  description = "AMI ID"
  default     = "ami-0e1377c6c189e7949"
}
/*
variable "vpc_security_group_ids" {
  description = "VPC security group IDs"
  type        = list(string)
  default = ["sg-076a9e9b572afe458"]
}

variable "subnet_id" {
  description = "Subnet ID"
  default = "subnet-06a149a1f538e285d"
}

variable "vpc_id" {
  description = "VPC ID"
  default = "vpc-0c8ad3d3a5d76075f"
}
*/
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16" //allows for scalability and growth
}

variable "cidr_subnet"{
  description = "CIDR block for the subnet"
  default = "10.1.0.0/24" //allows to divide VPC into smaller & manageable segments
}
/*
variable "gateway_id"{
  description = "Internet gateway ID"
  default = "igw-084ad4d56d4357f4e"
}

variable "route_table_id" {
  description = "Route table ID"
  default = "rtb-03de2f23401bbe474"
}
*/

variable "hcp_bucket_ubuntu" {
  description = "The Bucket where our AMI is listed."
  default     = "labyrinth"
}

variable "hcp_channel" {
  description = "HCP Packer channel name"
  default     = "labyrinth-channel"
}