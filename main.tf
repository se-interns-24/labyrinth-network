#defining providers

provider "hcp" {
} 

provider "aws" {
    region = var.region
}

#defines a virtual private cloud - isolated network to launch ec2 instance - VPC/networking
resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
}

#creates gateway that allows VPC to talk to internet - VPC/networking & down
resource "aws_internet_gateway" "gw"{
  vpc_id = aws_vpc.vpc.id
}

#defines subnet within vpc to place resources 
resource "aws_subnet" "subnet"{
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_subnet
}

#defines route table to control the routing for network traffic leaving subnets
resource "aws_route_table" "table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

}

#associates the route table with a subnet - determines where network traffic is directed
resource "aws_route_table_association" "table" {
  route_table_id = aws_route_table.table.id
  subnet_id = aws_subnet.subnet.id
}

#creates security group that acts as a firewall to control traffic
resource "aws_security_group" "sg"{
  name = "sg"
  vpc_id = aws_vpc.vpc.id

  #allows ssh traffic from any IP
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #allows http traffic from any IP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #allows outbound traffic to any IP
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
