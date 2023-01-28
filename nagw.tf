
resource "aws_eip" "nat_ip" {
    // nat elastic IP
    //instance = aws_instance.web.id
    //vpc      = true
}
resource "aws_nat_gateway" "mynat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.public1.id
   # connect to the Internet from instances within a private subnet 
}