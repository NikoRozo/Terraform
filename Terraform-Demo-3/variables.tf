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
variable "sg_name" {
    description="Nombre del Security Group"
}
variable "ingress_rule" {
    description = "Reglas de ingreso"
}
variable "key_name" {
    default=""
    description="Key Pair Exitente"
}
variable "bootstrap" {
    default=""
    description="Scrip de configuración"
}