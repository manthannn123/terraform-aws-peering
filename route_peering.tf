resource "aws_route" "mumbai_to_seoul" {
  provider                  = aws.mumbai
  route_table_id            = aws_route_table.Pratice_rt.id
  destination_cidr_block    = aws_vpc.seoul_vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering_connection.id

}

resource "aws_route" "seoul-to-mumbai" {
  provider                  = aws.seoul
  route_table_id            = aws_route_table.seoul_rt.id
  destination_cidr_block    = aws_vpc.pratice1.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering_connection.id

}
