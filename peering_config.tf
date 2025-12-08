resource "aws_vpc_peering_connection" "peering_connection" {
  provider    = aws.mumbai
  vpc_id      = aws_vpc.pratice1.id
  peer_vpc_id = aws_vpc.seoul_vpc.id
  peer_region = "ap-northeast-2"

  tags = {
    Name = "peering_mumbai-souel"
  }

}

resource "aws_vpc_peering_connection_accepter" "seoul_accept" {
  provider                  = aws.seoul
  vpc_peering_connection_id = aws_vpc_peering_connection.peering_connection.id
  auto_accept               = true

  tags = {
    Name = "soul-accept-peering"
  }

}
