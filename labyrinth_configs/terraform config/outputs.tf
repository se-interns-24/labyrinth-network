output "aws_region" {
  description = "AWS region"
  value       = var.region
}

output "security_group_id" {
  description = "Security groups for instances serving HTTP/HTTPS traffic"
  value       = [aws_security_group.sg.id]
}

output "subnet_id" {
  description = "Subnet IDs"
  value       = aws_subnet.subnet.*.id
}
/*
output "public_dns_name" {
  value = aws_lb.vpc.dns_name
}*/
