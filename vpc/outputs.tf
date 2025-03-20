output "public_subnet1_id" {
  value = aws_subnet.public_sub_1.id
}

output "public_subnet2_id" {
  value = aws_subnet.public_sub_2.id
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "public_subnet1_cidr" {
  value = aws_subnet.public_sub_1.cidr_block
}

output "public_subnet2_cidr" {
  value = aws_subnet.public_sub_2.cidr_block
}