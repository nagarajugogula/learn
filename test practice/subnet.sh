provider "aws" {
  region = "us-east-1" # Change to your desired AWS region
}

# Specify the existing VPC ID
variable "vpc_id" {
  default = "my_vpc" # Replace with your VPC ID
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = "20.0.1.0/24" # Change to your desired subnet CIDR block
  availability_zone = "us-east-1a" # Change to your desired availability zone

  tags = {
    Name = "My_Subnet"
  }
}
