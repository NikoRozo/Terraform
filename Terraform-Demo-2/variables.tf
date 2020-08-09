variable "ami_id" {
    default=""
    description="AMI Id"
}
variable "instance_type" {
    description="Tipo de Instancia"
}
variable "tags" {
    description = "Tags"
    type = map
}