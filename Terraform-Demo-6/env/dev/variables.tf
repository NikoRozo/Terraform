variable "bucket_name" {
    default = "bucket-terraform-demo"
}
variable "acl" {
    default = "private"
}
variable "tags" {
    default = {Name="Demo4",Enviroment="Dev",Createby="Terraform"}
}