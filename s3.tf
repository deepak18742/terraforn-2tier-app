resource "aws_s3_bucket" "my_bucket" {
    bucket = "${var.my_env}-bacth6-app-bucket"
    tags = {
        Name = "${var.my_env}-batch-app-bucket"
    }
  
}