variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "custom_vpc_cidr_block" {
  description = "cidr_block"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "cidr_block"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "cidr_block"
  type        = string
}

variable "public_rt_cidr_block" {
  description = "cidr_block"
  type        = string
}

variable "private_rt_cidr_block" {
  description = "cidr_block"
  type        = string
}