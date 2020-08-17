provider "aws" {
  access_key                  = "mock_access_key"
  region                      = "us-east-1"
  s3_force_path_style         = true
  secret_key                  = "mock_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = "http://localhost:4567"
    cloudformation = "http://localhost:4581"
    cloudwatch     = "http://localhost:4582"
    dynamodb       = "http://localhost:4569"
    es             = "http://localhost:4578"
    firehose       = "http://localhost:4573"
    iam            = "http://localhost:4593"
    kinesis        = "http://localhost:4568"
    lambda         = "http://localhost:4574"
    route53        = "http://localhost:4580"
    redshift       = "http://localhost:4577"
    s3             = "http://localhost:4572"
    secretsmanager = "http://localhost:4584"
    ses            = "http://localhost:4579"
    sns            = "http://localhost:4575"
    sqs            = "http://localhost:4576"
    ssm            = "http://localhost:4583"
    stepfunctions  = "http://localhost:4585"
    sts            = "http://localhost:4592"
    ec2            = "http://localhost:4597"
  }
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