resource "aws_internet_gateway" "mygetway" {
  vpc_id = aws_vpc.myvpc.id

// allow to connect the vpc to intenet
}