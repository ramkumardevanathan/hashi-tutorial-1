provider "aws" {
  access_key          = var.access_key
  secret_key          = var.secret_key
  region              = var.region
  version             = ">= 3.0"
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = var.dtags
}

variable "access_key" {}

variable "secret_key" {}

variable "region" {
  type  = string
  default = "us-east-1"
}

variable "ami" {
  type    = string
  default = "ami-830c94e3"
}

variable "instance_type" {
  type    = string
  default = "t1.small"
}

variable dtags {
    type = map(string)
    default = { environment = "dev-test" }
}
