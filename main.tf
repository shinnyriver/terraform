module "vpc" {
    source = "./vpc"
}

module "ec2" {
    source = "./ec2"
    public_subnet_id = module.vpc.public_subnet1_id
    vpc_id = module.vpc.vpc_id
}

module "cluster" {
  source = "./cluster"
  vpc_id = module.vpc.vpc_id
  public_subnet1_id = module.vpc.public_subnet1_id
  public_subnet2_id = module.vpc.public_subnet2_id
  public_subnet1_cidr = module.vpc.public_subnet1_cidr
  public_subnet2_cidr = module.vpc.public_subnet2_cidr
}
