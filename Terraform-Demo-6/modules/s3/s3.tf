#--------------------------------------------------------------
# Este Modulo permite crear un Bucket S3
#--------------------------------------------------------------
variable "bucket_name" {default = "bucket-terraform-demo"}
variable "acl" {default = "private"}
variable "tags" {default = {Name="Demo4",Enviroment="Dev",Createby="Terraform"}}

resource "aws_s3_bucket" "demo-backend"{
    bucket = var.bucket_name
    acl = var.acl
    tags =  var.tags
    force_destroy = true
}