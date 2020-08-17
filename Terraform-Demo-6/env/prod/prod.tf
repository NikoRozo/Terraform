provider "aws" {
    region ="us-east-1"
    shared_credentials_file = "/Users/nikor/.aws/creds"
    profile = "PROD"
}

variable "bucket_name" {default = "bucket-terraform-demo"}
variable "acl" {default = "private"}
variable "tags" {default = {Name="Demo4",Enviroment="Dev",Createby="Terraform"}}
variable "ami_id" {default = "ami-0bcc094591f354be2"}
variable "instance_type" {default = "t2.micro"}
variable "sg_name" {description="Nombre del Security Group"}
variable "ingress_rule" {description = "Reglas de ingreso"}
variable "key_name" {description="Key Pair Exitente"}
variable "bootstrap" {description="Scrip de configuración"}

module "app-demo-s3" {
    source = "../../modules/s3"
    bucket_name = var.bucket_name
    acl = var.acl
    tags = var.tags
}

module "app-demo-ec2" {
    source = "../../modules/ec2"
    ami_id = var.ami_id
    instance_type = var.instance_type
    sg_name = var.sg_name
    ingress_rule =  var.ingress_rule
    key_name = var.key_name
    bootstrap = var.bootstrap
    tags = var.tags
}

output "ip_ec2" {value = module.app-demo-ec2.instance_ip}