provider "aws" {
    region="us-east-1"
}
module "app-demo5" {
    source = "../../modules/s3"
    bucket_name = var.bucket_name
    acl = var.acl
    tags = var.tags
}