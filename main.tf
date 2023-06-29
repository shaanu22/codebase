data "aws_vpc" "app_vpc" {
  cidr_block = var.vpc_cidr

  filter {
    name   = "tag:Name"
    values = ["App VPC"]
  }
}

data "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = element(var.availability_zones, 0)

  filter {
    name   = "tag:Name"
    values = ["var.subnet_1_tag"]
  }
}

data "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = element(var.availability_zones, 1)

  filter {
    name   = "tag:Name"
    values = ["var.subnet_2_tag"]
  }
}
