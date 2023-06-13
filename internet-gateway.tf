resource "aws_internet_gateway" "app_vpc_igw" {
  vpc_id = aws_vpc.app_vpc.id

  tags = {
    Name = "App VPC Internet Gateway"
  }
}
