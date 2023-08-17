variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_2_cidr" {
  default = "10.0.2.0/24"
}

variable "my_ip_cidr" {}

variable "instance_ami" {
  default = "ami-0f34c5ae932e6f0e4"
}

variable "instance_keyname" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "dynamodb_statelock" {
  type = string
}

variable "subnet_id" {
  type = list(string)
}

variable "instance_count" {}

#variable "subnet_1_tag" {}

variable "subnet_2_tag" {}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
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

variable "key" {}

variable "dynamodb_table" {}

variable "bucket" {}
