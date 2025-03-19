output "public_subnet_id" {
  value = aws_subnet.public_sub_1.id
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}