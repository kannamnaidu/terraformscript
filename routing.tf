resource "aws_route_table" "hcl_rt" {
  vpc_id = "${aws_vpc.hcl_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.hcl_Igw.id}"
  }
  tags = {
     Name = "${var.vpc_name}-public_route_table"
  }
}
resource "aws_route_table_association" "public_sub_asso" {
  count          = length(var.public_subnet_cidr)
  subnet_id      = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_route_table.hcl_rt.id
}



