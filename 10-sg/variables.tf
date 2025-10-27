variable "project_name" {

    type = string
    default = "roboshop"
}

variable "environment" {

    type = string  
    default = "dev"
}
variable sg_name {
    type = list
    default = [
        # databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        #bastion
        "bastion"
        ]
}

variable sg_description {
    type = string
    default = "created for mongodb"
}


