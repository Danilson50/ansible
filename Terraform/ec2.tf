data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] #Ubuntu
}
/*
resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name = "terraform-manual"
  tags = {
    Name = "Server Ubuntu Ansible "
  }

}
*/
resource "aws_instance" "windows" {
  ami           = "ami-0b18ca1a93b538109"
  instance_type = "t2.micro"
  key_name = "terraform-manual"
  tags = {
    Name = "Server Windows Ansible "
  }

}
/*
resource "aws_instance" "redhat" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  key_name = "terraform-manual"
  tags = {
    Name = "Server RedHat Ansible "
  }

}
*/