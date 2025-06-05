# Terraform AWS Infrastructure

This project contains Terraform code for provisioning AWS infrastructure in a reliable and reusable way. The configuration sets up the following resources:

- A Virtual Private Cloud (VPC)
- Public and private subnets
- An Internet Gateway and route tables
- A security group
- An EC2 instance (Amazon Linux)
- An RDS PostgreSQL database instance

## Purpose

The goal of this project is to provide a simple and modular infrastructure setup for deploying cloud-based applications. It's suitable for development or staging environments and can be easily extended or customized.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) (v1.3+ recommended)
- An AWS account
- AWS CLI configured locally with appropriate credentials (`aws configure`)

## Usage

1. **Clone the repository**:
   ```bash
   git clone https://github.com/kwangu_silupya/https://github.com/kwanguSilupya/terraform-infra
