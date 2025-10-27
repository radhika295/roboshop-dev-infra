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