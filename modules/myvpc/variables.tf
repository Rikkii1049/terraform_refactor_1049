variable "myvpc_cidr" {
  description = "CIDR dari VPC"
  type = string
}
variable "public_cidr" {
  description = "Var for public CIDR (0.0.0.0)"
  type = string
}
variable "upgrad" {
  description = "Name Tags"
  type = string
}
variable "public_subnets" {
  description = "List of public subnets"
  type = list(string)
}
variable "private_subnets" {
  description = "List of private subnets"
  type = list(string)
}
variable "availability_zone" {
  description = "Lists of availibility zones"
  type = list(string)
}
variable "instance_type" {
  description = "Type of Instance"
  type = string
}
variable "ami_type" {
  description = "Types of AMI"
  type = string
}

