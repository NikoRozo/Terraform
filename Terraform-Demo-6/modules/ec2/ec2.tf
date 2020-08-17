variable "ami_id" {description="AMI Id"}
variable "instance_type" {description="Tipo de Instancia"}
variable "sg_name" {description="Nombre del Security Group"}
variable "ingress_rule" {description = "Reglas de ingreso"}
variable "key_name" {description="Key Pair Exitente"}
variable "bootstrap" {description="Scrip de configuración"}
variable "tags" {
    description = "Tags"
    type = map
}

resource "aws_instance" "demo-instance"{
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
    key_name = var.key_name
    security_groups = ["${aws_security_group.ssh_conection.name}"]
    user_data = file(var.bootstrap)
}
resource "aws_security_group" "ssh_conection" {
  name        = var.sg_name
  dynamic "ingress" {
    for_each = var.ingress_rule
    content {
        from_port   = ingress.value.from_port
        to_port     = ingress.value.to_port
        protocol    = ingress.value.protocol
        cidr_blocks = ingress.value.cidr_blocks
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

output "instance_ip" {value = aws_instance.demo-instance.*.public_ip}