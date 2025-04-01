variable "aws_region" {
  description = "AWS region"
  default     = "eu-central-1"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "ami_id" {
  description = "AMI ID for EC2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key Pair Name"
}

variable "allowed_ip" {
  description = "Allowed IP for SSH access"
  default     = "0.0.0.0/0" # Change this for security
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "db_username" {
  description = "Database username"
}

variable "db_password" {
  description = "Database password"
}

variable "db_subnet_group" {
  description = "DB Subnet Group Name"
}
variable "db_password" { type = string }
