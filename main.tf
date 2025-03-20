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

module "backend" {
    source = "./backend"
}

terraform {
    required_version = ">= 1.0.0, < 2.0.0"
    backend "s3" {
        bucket = "990323-river-practice"
        key = "vpc/terraform.tfstate"
        region = "ap-northeast-2"
        encrypt = true
        use_lockfile = true
      
    }
}