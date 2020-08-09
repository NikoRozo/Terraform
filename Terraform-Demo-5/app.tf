provider "aws" {
    region="us-east-1"
}
module "app-demo5" {
    source = "./modulos/instances"
    ami_id = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
    sg_name = var.sg_name
    ingress_rule = var.ingress_rule
}