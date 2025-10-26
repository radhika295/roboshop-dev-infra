variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "project_name" {

    default = "roboshop"
}

variable "environment" {

    default = "dev"
}

variable "vpc_user_tags" {

    default =  {
        Purpose = "vpc-module-test"
        DonotDelete = "true"

    }
}

variable "igw_user_tags" {

    default =  {
        Purpose = "vpc-module-test"
        DonotDelete = "true"

    }
}

variable "public_subnet_cidrs" {

    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "public_subnet_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-public-subnet"
    DonotDelete = "true"
  }
}


variable "private_subnet_cidrs" {
    
    default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "private_subnet_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-private-subnet"
    DonotDelete = "true"
  }
}

variable "database_subnet_cidrs" {
    
    default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "database_subnet_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-private-subnet"
    DonotDelete = "true"
  }
}

variable "public_route_table_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-public_route_table"
    DonotDelete = "true"
  }
}

variable "private_route_table_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-private_route_table"
    DonotDelete = "true"
  }
}

variable "database_route_table_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-database_route_table"
    DonotDelete = "true"
  }
}

variable "eip_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-eip"
    DonotDelete = "true"
  }
}

variable "nat_tags" {
  
  type = map
  default = {
    Purpose = "vpc-module-test-nat"
    DonotDelete = "true"
  }
}

