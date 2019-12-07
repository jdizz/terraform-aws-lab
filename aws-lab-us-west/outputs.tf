output "vpc_id" {
  value = "${aws_vpc.deleondavisLab.id}"
}

output "private_subnets" {
  value = ["${aws_subnet.deleondavisLabSubnetPrivate.id}"]
}

output "public_subnets" {
  value = ["${aws_subnet.deleondavisLabSubnetPublic.id}"]
}

