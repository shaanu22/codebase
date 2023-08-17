resource "aws_instance" "instance" {
  ami                         = var.instance_ami
  count                       = var.instance_count
  subnet_id                   = count.index == 0 ? aws_subnet.subnet_1.id : aws_subnet.subnet_2.id
  instance_type               = var.instance_type
  key_name                    = var.instance_keyname
  associate_public_ip_address = true
  security_groups             = [aws_security_group.instance_sg.id]
  user_data                   = file("instance_user_data.sh")
  tags                        = var.default_tags
}
