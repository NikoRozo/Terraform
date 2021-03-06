#--------------------------------------------------------------
# Este Modulo permite crear un Bucket S3
#--------------------------------------------------------------
variable "bucket_name" {default = "bucket-terraform-demo"}
variable "acl" {default = "private"}
variable "tags" {default = {Name="Demo4",Enviroment="Dev",Createby="Terraform"}}

resource "aws_kms_key" "mykey" {
  description             = "Llave de encripción del estado de tarraform"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "demo-backend"{
    bucket = var.bucket_name
    acl = var.acl
    tags =  var.tags
    force_destroy = true
    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          kms_master_key_id = aws_kms_key.mykey.arn
          sse_algorithm     = "aws:kms"
        }
      }
    }
}

output "arn" {value = aws_kms_key.mykey.arn}