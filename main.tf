resource "aws_vpc" "app_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "App VPC"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = element(var.availability_zones, 0)
  tags = {
    Name = var.subnet_1_tag
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = element(var.availability_zones, 1)

  tags = {
    Name = var.subnet_2_tag
  }
}
