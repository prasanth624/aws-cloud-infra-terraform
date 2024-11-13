output "security_group_id" {
  description = "The ID of the created security group"
  value       = module.security_group.security_group_id
}

output "security_group_name" {
  description = "The name of the created security group"
  value       = module.security_group.security_group_name
}

