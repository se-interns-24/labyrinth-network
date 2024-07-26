output "region" {
  description = "AWS region"
  value       = var.region
}

output "security_group_id" {
  description = "Security groups for instances serving HTTP/HTTPS traffic"
  value       = [aws_security_group.sg.id]
}
/*
output "rds_security_group_id" {
  description = "Security groups for RDS"
  value       = [aws_security_group.rds-sg.id]
}*/

output "subnet_id" {
  description = "Subnet IDs"
  value       = aws_subnet.subnet.*.id
}

output "subnet_group_name" {
  description = "Name of the DB subnet group"
  value       = aws_db_subnet_group.subnet-group.name
}
/*
output "public_dns_name" {
  value = aws_lb.vpc.dns_name
}*/
