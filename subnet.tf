resource "aws_subnet" "prasub1" {
  provider                = aws.mumbai
  vpc_id                  = aws_vpc.pratice1.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"

  tags = {
    Name = "Pratice_subnet1"
  }

}

resource "aws_subnet" "prasub2" {
  provider                = aws.mumbai
  vpc_id                  = aws_vpc.pratice1.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1b"

  tags = {
    Name = "Pratice_subnet2"
  }

}

resource "aws_subnet" "seoul_subnet1" {
  provider                = aws.seoul
  vpc_id                  = aws_vpc.seoul_vpc.id
  cidr_block              = "192.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "seoul-subnet1"
  }
}

resource "aws_subnet" "seoul_subnet2" {
  provider                = aws.seoul
  vpc_id                  = aws_vpc.seoul_vpc.id
  cidr_block              = "192.0.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "seoul-subnet2"
  }


}
