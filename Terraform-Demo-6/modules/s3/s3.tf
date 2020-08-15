#--------------------------------------------------------------
# Este Modulo permite crear un Bucket S3
#--------------------------------------------------------------

resource "aws_s3_bucket" "demo-backend"{
    bucket = var.bucket_name
    acl = var.acl
    tags =  var.tags
    force_destroy = true
}