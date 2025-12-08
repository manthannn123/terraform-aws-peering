resource "aws_route_table" "Pratice_rt" {
  provider = aws.mumbai
  vpc_id   = aws_vpc.pratice1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pratice_igw.id
  }

  tags = {
    Name = "Pratice_rt"
  }

}

resource "aws_route_table_association" "public_assoc" {
  provider       = aws.mumbai
  route_table_id = aws_route_table.Pratice_rt.id
  for_each = {
    prasub1 = aws_subnet.prasub1
    prasub2 = aws_subnet.prasub2
  }
  subnet_id = each.value.id


}

resource "aws_route_table" "seoul_rt" {
  provider = aws.seoul
  vpc_id   = aws_vpc.seoul_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.seoul-igw.id
  }
  tags = {
    Name = "seoul routing table"
  }

}

resource "aws_route_table_association" "seoul-public-assoc" {
  provider = aws.seoul
  for_each = {
    "seoul-subnet1" = aws_subnet.seoul_subnet1
    "seoul-subnet2" = aws_subnet.seoul_subnet2
  }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.seoul_rt.id

}
