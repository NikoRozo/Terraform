output "instance_ip" {
    value = aws_instance.demo-instance.*.public_ip
}