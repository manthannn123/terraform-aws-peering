resource "aws_vpc" "pratice1" {
  provider             = aws.mumbai
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "mumbai_vpc"
  }

}

resource "aws_vpc" "seoul_vpc" {
  provider             = aws.seoul
  cidr_block           = "192.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "Souel_vpc"
  }

}


