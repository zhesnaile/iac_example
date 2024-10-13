output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.free_tier_ec2.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.free_tier_ec2.public_ip
}

output "private_key" {
  description = "The private key for the generated SSH key pair"
  value       = tls_private_key.ec2_key.private_key_pem
  sensitive   = true
}
