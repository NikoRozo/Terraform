provider "aws" {
    region="us-east-1"
}
resource "aws_instance" "demo-instance"{
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
    security_groups = ["${aws_security_group.ssh_conection.name}"]
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