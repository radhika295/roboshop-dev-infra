# Using Open source module
 /*module "catalogue" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${local.common_name_suffix}-catalogue"
  use_name_prefix = false
  description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

} */

module "sg" {
  count = length(var.sg_name)
  source = "git::https://github.com/radhika295/roboshop-terraform.git//modules/sg?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_name[count.index]
  sg_description = "created for ${var.sg_name[count.index]}"
  vpc_id = local.vpc_id
}

# # frontend access the traffic from frontend alb
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   type                     = "ingress"
#   security_group_id        = module.sg[9].sg_id   # Frontend SG ID
#   source_security_group_id = module.sg[11].sg_id  # Frontend ALB SG ID
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
# }
