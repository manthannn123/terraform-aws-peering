resource "aws_internet_gateway" "pratice_igw" {
  provider = aws.mumbai
  vpc_id   = aws_vpc.pratice1.id

  tags = {
    Name = "Pratice_igw"
  }

}

resource "aws_internet_gateway" "seoul-igw" {
  provider = aws.seoul
  vpc_id   = aws_vpc.seoul_vpc.id

  tags = {
    Name = "Seoul-igw"
  }

}
