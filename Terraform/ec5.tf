resource "aws_key_pair" "TF-Keys" {
  key_name = "TF-Keys"
  public_key = "${file("c:/Users/anandr72/TF-Keys.pub")}"
}

resource "aws_security_group" "tf-web-sec-group" {
	name = "tf-web-sec-group"
	description = "Terraform Created Web Security Group"

	ingress {
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}


resource "aws_instance" "TFWebServer3" {
  ami           = "ami-b70554c8"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.TF-Keys.key_name}"
  security_groups = ["${aws_security_group.tf-web-sec-group.name}"]

  tags {
    Name        = "TF Web Server2"
    Environment = "New Environment"
  }
}
