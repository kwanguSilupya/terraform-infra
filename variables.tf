variable "region" {
  description = "AWS region"
  type        = string
}

variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "allowed_ip" {
  description = "IP allowed for SSH and DB access"
  type        = string
}

variable "key_name" {
  description = "Name for the EC2 key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to your public key file"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "db_username" {
  description = "RDS database username"
  type        = string
}

variable "db_password" {
  description = "RDS database password"
  type        = string
  sensitive   = true
}

variable "db_engine_version" {
  description = "RDS engine version"
  type        = string
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
}
