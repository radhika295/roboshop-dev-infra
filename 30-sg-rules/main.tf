
# # frontend access the traffic from frontend alb
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   type                     = "ingress"
#   security_group_id        = module.sg[9].sg_id   # Frontend SG ID
#   source_security_group_id = module.sg[11].sg_id  # Frontend ALB SG ID
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
# }


# BackendALB Access the traffic from bastion host
resource "aws_security_group_rule" "backend_alb" {
  type                     = "ingress"
  security_group_id        = local.backend_alb_sg_id   # Backend ALB SG ID
  source_security_group_id = local.bastion_sg_id # Basition SG ID
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
}

# Bastion accepting from mynlaptop
resource "aws_security_group_rule" "bastion_laptop" {
  type                     = "ingress"
  security_group_id        = local.bastion_sg_id   # Bastion SG ID
  cidr_blocks = ["0.0.0.0/0"] # Basition SG ID
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

# mongodb accepts traffic from bastion 
resource "aws_security_group_rule" "mongodb_bastion" {
  type                     = "ingress"
  security_group_id        = local.mongodb_sg_id   # Bastion SG ID
  source_security_group_id = local.bastion_sg_id
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}