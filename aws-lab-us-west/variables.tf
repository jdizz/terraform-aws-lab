variable "aws_region" {
    description = "AWS region closest to me"
    default = "us-west-2"
}

variable "cidr_subnet_private" {
  description = "CIDR block for private subnet"
  default = "10.0.2.0/24"
}

variable "cidr_subnet_public" {
  description = "CIDR block for public subnet"
  default = "10.0.4.0/24"
}

variable "availability_zone_private" {
  description = "Availability zone to create subnet"
  default = "us-west-2a"
}


variable "availability_zone_public" {
  description = "Availability zone to create subnet"
  default = "us-west-2b"
}

variable "environment_tag" {
    description = "Environment tag"
    default = "Lab"
}