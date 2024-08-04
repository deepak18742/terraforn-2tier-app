resource "aws_key_pair" "my-key-pair-tf" {
    key_name = "terrakey"
    public_key = file("C:/Users/HP/Desktop/linux/day9/ec2/keys/terrakey.pub")
}

resource "aws_default_vpc" "default" {
  
}

resource "aws_security_group" "my_sg_tf" {
    name = "my_sh_tf"
    vpc_id = aws_default_vpc.default.id
    ingress {
        description = "to allow incoming"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "to allow to outing traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
  
}

resource "aws_instance" "my-demo-instance" {
    # count = 3 #meta-argument(three instance)
    ami = "ami-0862be96e41dcbf74"
    instance_type = "t2.micro"
    key_name = aws_key_pair.my-key-pair-tf.key_name
    security_groups = [aws_security_group.my_sg_tf.name  ]
    user_data = file("C:/Users/HP/Desktop/linux/day9/ec2/install.sh")
    tags = {
        Name = "my-demo-instance"
    }
   
 }