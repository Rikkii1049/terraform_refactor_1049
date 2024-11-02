module "myvpc" {
    source = "./modules/myvpc"
    upgrad = var.upgrad
    availability_zone = var.availability_zone
    public_subnets = var.public_subnets
    myvpc_cidr = var.myvpc_cidr
    private_subnets = var.private_subnets
    ami_type = var.ami_type
    instance_type = var.instance_type
    public_cidr = var.public_cidr
}

module "rds" {
  source = "./modules/rds"
  username = var.username
  rds_identifier = var.rds_identifier
  instance_class = var.instance_class
  sg_description = var.sg_description
  priv_subnet_id = [module.myvpc.priv_sub1_id, module.myvpc.priv_sub2_id]
  database_password = var.database_password
  database_name = var.database_name
  rds_sg_cidr = var.rds_sg_cidr
  engine_version = var.engine_version
  rds_allocated_storage = var.rds_allocated_storage
  engine_type = var.engine_type
  ingress_port = var.ingress_port
  ingress_protocol = var.ingress_protocol
  final_snapshot_identifier = var.final_snapshot_identifier
  rds_sg_name = var.rds_sg_name
  rds_subnet_name = var.rds_subnet_name
  myvpc_id = module.myvpc.myvpc_id
}