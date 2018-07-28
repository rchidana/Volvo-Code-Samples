resource "aws_key_pair" "TF-Keys" {
  key_name = "TF-Keys"
  public_key = "${file("c:/Users/anandr72/TF-Keys.pub")}"
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
