resource "aws_key_pair" "TF-Keys" {
  key_name = "TF-Keys"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCYbuSJQG1S/CieZVZ4kEU+LNOfbZVFgGas/sF68tSX5XlWeiCoVRoFf6OqG42V5LgRhqigvvCSWPg0MNZ3bG2HsNq8UgUBvmeVQIzsFI/Nxbln4kGONXwsjtoLGtg/vbEkzexKIAw/d46yA5Ch+cc47FXisbeItzQ75faG7BXih1P5sbMZTomuLQz5CrP1pQjCJ7QNpeNcr6KBWNe3JXfIL9hLNxq1mfu97qaUIi69jwewsfl7QKG1jlEIV8vjraIE5+KNTccKmVsQC6FKGAT8DFiUR5Enl+QafrJ3Ape8JwFf90ckK9/me0Vx5BGagSgHyIoOmtNmqrDeP/e99ni3 anandr72@DESKTOP-AFE0KT8"
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
