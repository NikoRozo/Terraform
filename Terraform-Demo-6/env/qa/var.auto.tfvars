ami_id="ami-0bcc094591f354be2"
instance_type="t2.micro"
key_name="nikokp"
bootstrap="../../bootstrap/bootstrap.sh"
tags={Name="Demo3",Enviroment="Dev"}
sg_name="Demo3-rules"
ingress_rule = [
    {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
]