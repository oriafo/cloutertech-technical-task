# infra_instance/outputs.tf
output "load_balancer_dns" {
  value = module.infrastructure_instance.load_balancer_dns
}

output "web_server_url" {
  value = module.infrastructure_instance.web_server_url
}

output "web_server_id" {
  value = module.infrastructure_instance.web_server_id
}

output "web_server_private_ip" {
  value = module.infrastructure_instance.web_server_private_ip
}
