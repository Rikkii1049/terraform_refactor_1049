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

# =========================

variable "rds_subnet_name" {
  description = "The name of RDS"
  type = string
}
variable "engine_type" {
  description = "RDS engine Type"
  type = string
}
variable "engine_version" {
  description = "Version of RDS engine"
  type = string
}
variable "final_snapshot_identifier" {
  description = "Idk what this thing do"
  type = string
}
variable "instance_class" {
  description = "RDS instance Class"
  type = string
}
variable "rds_allocated_storage" {
  description = "Allocated Storage for RDS"
  type = number
}
variable "rds_identifier" {
  description = "Idetifier"
  type = string
}
variable "database_name" {
  description = "Name of the database"
  type = string
}
variable "username" {
  description = "Username"
  type = string
}
variable "database_password" {
  description = "Password of the Database"
  type = string
}
variable "rds_sg_name" {
  description = "Name of the Security group for RDS"
  type = string
}
variable "sg_description" {
  description = "Description of RDS SG"
  type = string
}
variable "ingress_port" {
  description = "Port fo Inbound Traffic"
  type = number
}
variable "ingress_protocol" {
  description = "Protocol for Inbound Traffic"
  type = string
}
variable "rds_sg_cidr" {
  description = "CIDR for RDS SG"
  type = string
}