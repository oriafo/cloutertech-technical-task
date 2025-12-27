# Architectural Diagram

![Alt text](./asset/technical_diagram.jpg "Optional title")


# Terraform AWS Web Server

This project provisions a simple web server on AWS using Terraform.
The server hosts a static HTML page displaying my full name.

## Architecture
- AWS EC2 (Ubuntu 22.04 LTS AMI)
- Nginx web server
- Security Group allowing HTTP (port 80)

## Prerequisites
- Terraform >= 1.3
- AWS CLI configured

## How to Run
```bash
cd remote_backend
terraform init
terraform apply --auto-apply
cd ../infra_instance
terraform init
terraform plan
terraform apply --auto-apply
