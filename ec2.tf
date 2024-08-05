
resource "aws_instance" "my-demo-instance" {
    count = var.instance_count
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = "${var.my_env}-instance"
        env = var.my_env
    }  
 } 