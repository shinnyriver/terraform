module "vpc" {
    source = "./vpc"
}

module "ec2" {
    source = "./ec2"
    public_subnet_id = module.vpc.public_subnet_id
    vpc_id = module.vpc.vpc_id
}