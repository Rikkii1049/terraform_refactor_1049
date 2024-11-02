output "myvpc_id" {
  description = "ID of the VPC"
  value = aws_vpc.this.id
}
output "priv_sub1_id" {
  description = "ID of private subnet 1"
  value = aws_subnet.private1.id
}
output "priv_sub2_id" {
  description = "ID of private subnet 2"
  value = aws_subnet.private2.id
}