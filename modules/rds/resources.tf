#rds subnet
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.rds_subnet_name
  subnet_ids = [var.priv_subnet_id[0], var.priv_subnet_id[1]]
}
#RDS INSTANCE
resource "aws_db_instance" "rds_instance" {
  engine                    = var.engine_type
  engine_version            = var.engine_version
  skip_final_snapshot       = true
  final_snapshot_identifier = var.final_snapshot_identifier
  instance_class            = var.instance_class
  allocated_storage         = var.rds_allocated_storage
  identifier                = var.rds_identifier
  db_name                   = var.database_name
  username                  = var.username
  password                  = var.database_password
  db_subnet_group_name      = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids    = [aws_security_group.rds_security_group.id]

  tags = {
    Name = "RDS Instance"
  }
}
# RDS security group
resource "aws_security_group" "rds_security_group" {
  name        = var.rds_sg_name
  description = var.sg_description
  vpc_id      = var.myvpc_id

  ingress {
    from_port   = var.ingress_port
    to_port     = var.ingress_port
    protocol    = var.ingress_protocol
    cidr_blocks = [var.rds_sg_cidr]
  }

  tags = {
    Name = "RDS Security Group"
  }
}