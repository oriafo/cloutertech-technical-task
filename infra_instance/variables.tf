variable "aws_region" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default = "t2.micro"
}

variable "custom_vpc_cidr_block" {
  description = "cidr_block"
  type        = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "cidr_block"
  type        = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  description = "cidr_block"
  type        = string
  default = "10.0.2.0/24"
}

variable "public_rt_cidr_block" {
  description = "cidr_block"
  type        = string
  default = "0.0.0.0/0"
}

variable "private_rt_cidr_block" {
  description = "cidr_block"
  type        = string
  default = "0.0.0.0/0"
}