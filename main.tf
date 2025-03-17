provider "aws" {
  region = "eu-central-1"
}

# Security Group for EC2 Instance
resource "aws_security_group" "ec2_sg" {
  name        = "ec2-rds-sg"
  description = "Security group for EC2 instances to access RDS"
  vpc_id      = "vpc-0962e6c9bcaa8afb9"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Restrict this for security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Security Group for RDS PostgreSQL
resource "aws_security_group" "rds_sg" {
  name        = "rds-postgres-sg"
  description = "Security group for RDS PostgreSQL"
  vpc_id      = "vpc-0962e6c9bcaa8afb9"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Restrict this for security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-0a91cd140a1fc148a" # Update with correct AMI
  instance_type = "t2.micro"
  key_name      = "your-key-pair" # Update with your key pair name
  subnet_id     = "subnet-0bdfa3e20d9ec8c34"
  security_groups = [aws_security_group.ec2_sg.name]

  tags = {
    Name = "Example EC2"
  }
}

# RDS PostgreSQL Instance
resource "aws_db_instance" "example" {
  allocated_storage    = 20
  db_instance_class    = "db.t2.micro"
  engine               = "postgres"
  engine_version       = "13.2"
  username             = "admin"
  password             = "your-password"
  db_name              = "exampledb"
  port                 = 5432
  multi_az             = false
  storage_type         = "gp2"
  backup_retention_period = 7
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  tags = {
    Name = "Example RDS"
  }
}

