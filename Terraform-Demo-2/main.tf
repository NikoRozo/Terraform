provider "aws" {
    region="us-east-1"
}
resource "aws_instance" "demo-instance"{
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
}