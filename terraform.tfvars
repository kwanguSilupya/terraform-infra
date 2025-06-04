region               = "eu-central-1"
aws_profile          = "terraform-sso"

vpc_cidr             = "10.0.0.0/16"
public_subnet_1_cidr = "10.0.1.0/24"
public_subnet_2_cidr = "10.0.2.0/24"

allowed_ip           = "0.0.0.0/0"

key_name             = "new_keypair_tf"
public_key_path      = "new_keypair_tf.pub"

ami_id               = "ami-08aa372c213609089"
instance_type        = "t2.micro"

db_username          = "postgresadmin"
db_password          = "StrongPassword123!"
db_engine_version    = "14.7"
db_instance_class    = "db.t3.micro"
