resource "aws_instance" "bastion" {
    ami = local.ami_id
    instance_type = "t3.micro"
    security_groups = [local.bastion_sg_id]
    tags = merge (
        local.common_tags,
        {
            Name = "${var.project_name}-${var.environment}-bastion"
        }
    )
}