ami_id="ami-0582e409ce9fb2f1d"
instance_type="t2.micro"
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