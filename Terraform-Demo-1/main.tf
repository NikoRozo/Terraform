provider "aws" {
    region="us-east-1"
}
resource "aws_instance" "demo-instance"{
    ami = "ami-0582e409ce9fb2f1d"
    instance_type = "t2.micro"
    tags = {
        Name= "Demo1"
        Enviroment= "Dev"
    }
}