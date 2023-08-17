output "instance_public_ip" {
  value = aws_instance.instance[*].public_ip
}

output "my_app_vpc" {
  value = aws_vpc.app_vpc.id
}

output "subnet_id1" {
  value = aws_subnet.subnet_1.id
}

output "subnet_id2" {
  value = aws_subnet.subnet_2.id
}

output "vpc_cidr" {
  value = aws_vpc.app_vpc.cidr_block
}

/*output "subnet_1_cidr" {}

output "subnet_2_cidr" {}

output "subnet_1_tag" {}

output "subnet_2_tag" {}*/
