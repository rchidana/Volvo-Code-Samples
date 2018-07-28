resource "aws_instance" "TFWebServer2" {
  ami           = "ami-b70554c8"
  instance_type = "t2.micro"
  key_name = "EC2-KEYS"

  tags {
    Name        = "TF Web Server2"
    Environment = "New Environment"
  }
}
