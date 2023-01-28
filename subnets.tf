resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_1_cidr
  // public subnet of our vpc called myvpc
  map_public_ip_on_launch = "true"
  // tSpecify true to indicate that instances launched into the subnet should be assigned a public IP address.
}
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_2_cidr
  // public subnet of our vpc called myvpc
  map_public_ip_on_launch = "true"
  // Specify true to indicate that instances launched into the subnet should be assigned a public IP address.
}
resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.3.0/24"
  // private subnet of our vpc called myvpc
}
resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.4.0/24"
  // private subnet of our vpc called myvpc
}
