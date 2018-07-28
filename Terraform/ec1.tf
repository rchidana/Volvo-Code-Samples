resource "aws_instance" "TFWebServer1" {
  ami           = "ami-b70554c8"
  instance_type = "t2.micro"

  tags {
    Name        = "TF Web Server1"
    Environment = "New Environment"
  }
}
