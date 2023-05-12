resource "aws_subnet" "public_subnet" {
  count             = length(var.public_subnet_cidr)
  vpc_id     = aws_vpc.hcl_vpc.id
  cidr_block        = element(var.public_subnet_cidr, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "${var.vpc_name}-public_subnet-${count.index + 1}"
  }
}
# resource "aws_subnet" "pub_sub1" {
#   vpc_id     = aws_vpc.hcl_vpc.id
#   cidr_block = var.public_subnet_cidr
#   availability_zone = var.azs

#   tags = {
#     Name = "${var.vpc_name}-pub_sub1"
#   }
# }
# resource "aws_subnet" "pub_sub2" {
#   vpc_id     = aws_vpc.hcl_vpc.id
#   cidr_block = var.public_subnet_cidr
#   availability_zone = var.azs

#   tags = {
#     Name = "${var.vpc_name}-pub_sub2"
#   }
# }
# resource "aws_subnet" "pub_sub3" {
#   vpc_id     = aws_vpc.hcl_vpc.id
#   cidr_block = var.public_subnet_cidr
#   availability_zone = var.azs

#   tags = {
#     Name = "${var.vpc_name}-pub_sub3"
#   }
# }
