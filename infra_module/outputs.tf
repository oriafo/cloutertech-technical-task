output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = aws_lb.web_alb.dns_name
}

output "web_server_url" {
  description = "Web server URL via load balancer"
  value       = "http://${aws_lb.web_alb.dns_name}"
}

output "web_server_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web_server.id
}

output "web_server_private_ip" {
  description = "Private IP of the web server"
  value       = aws_instance.web_server.private_ip
}
