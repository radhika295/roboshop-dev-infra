module "vpc" {

    #source= "../../modules/vpc"
    source = "git::https://github.com/radhika295/roboshop-terraform.git//modules/vpc?ref=main"
    # vpc_cidr = "10.0.0.0/16"
    # project_name = "roboshop"
    # environment = "dev"

     vpc_cidr = var.vpc_cidr
     project_name = var.project_name
     environment = var.environment
     vpc_user_tags = var.vpc_user_tags
     igw_user_tags = var.igw_user_tags
     public_subnet_cidrs = var.public_subnet_cidrs
     public_subnet_tags = var.public_subnet_tags
     private_subnet_cidrs = var.private_subnet_cidrs
     private_subnet_tags = var.private_subnet_tags
     database_subnet_cidrs = var.database_subnet_cidrs
     database_subnet_tags = var.database_subnet_tags
     public_route_table_tags = var.public_route_table_tags
     private_route_table_tags = var.private_route_table_tags
     database_route_table_tags = var.database_route_table_tags
     eip_tags = var.eip_tags
     nat_tags = var.nat_tags
}



