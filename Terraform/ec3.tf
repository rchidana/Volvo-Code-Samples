resource "aws_key_pair" "TF-Keys" {
  key_name = "TF-Keys"
  public_key = "ssh-rsa AAAAB3NXih........FE0KT8"
}



resource "aws_instance" "TFWebServer2" {
  ami           = "ami-b70554c8"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.TF-Keys.key_name}"

  tags {
    Name        = "TF Web Server2"
    Environment = "New Environment"
  }
}
