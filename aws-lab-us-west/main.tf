# aws-lab-us-west Configuration
# Internet Gateway, Private, and Public Subnets

# AWS provider and acess details
provider "aws" {
    region = "${var.aws_region}"
    shared_credentials_file = "$HOME/.aws/credentials"
    profile = "tf_user"
}

# VPC details
resource "aws_vpc" "deleondavisLab" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "deleondavisLabVPC"
    Environment = "${var.environment_tag}"
  }
}

# Internet Gateway details
resource "aws_internet_gateway" "default" {
  vpc_id = "${aws_vpc.deleondavisLab.id}"
}

# Private Subnet details
resource "aws_subnet" "deleondavisLabSubnetPrivate" {
  vpc_id = "${aws_vpc.deleondavisLab.id}"
  cidr_block = "${var.cidr_subnet_private}"
  availability_zone = "${var.availability_zone_private}"
  tags = {
    Name = "deleondavisLabPrivate"
    Environment = "${var.environment_tag}"
  }
}

# Public Subnet details
resource "aws_subnet" "deleondavisLabSubnetPublic" {
  vpc_id = "${aws_vpc.deleondavisLab.id}"
  cidr_block = "${var.cidr_subnet_public}"
  map_public_ip_on_launch = true
  availability_zone = "${var.availability_zone_public}"
  tags = {
    Name = "deleondavisLabPublic"
    Environment = "${var.environment_tag}"
  }
}

