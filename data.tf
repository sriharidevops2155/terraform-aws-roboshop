data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}/${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "sg_id" {
  name = "/${var.project}/${var.environment}/${var.component}_sg_id"
}

data "aws_ssm_parameter" "backend_alb_listner_arn" {
  name = "/${var.project}/${var.environment}/backend_alb_listner_arn"
}

data "aws_ssm_parameter" "frontend_alb_listner_arn" {
  name = "/${var.project}/${var.environment}/frontend_alb_listner_arn"
}

data "aws_ami" "rhel" {
  owners = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
} 