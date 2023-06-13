variable "region" {}

variable "vpc_cidr" {}

variable "subnet_1_cidr" {}

variable "subnet_2_cidr" {}

variable "my_ip_cidr" {}

variable "instance_ami" {}

variable "instance_keyname" {}

variable "instance_type" {}

variable "dynamodb_statelock" {
  type = string
}

variable "subnet_id" {
  type = list(string)
}

variable "instance_count" {}

variable "subnet_1_tag" {}

variable "subnet_2_tag" {}

variable "availability_zones" {
  type    = list(string)
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "default_tags" {
  description = "This is a variable to manage ec2 tags"
  type        = map(any)
  default = {
    "Name"        = "Some Application Server"
    "Environment" = "Some Environment"
    "Owner"       = "Some owner"
    "Can_destroy" = "yes"
  }
}
