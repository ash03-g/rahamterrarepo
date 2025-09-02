provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "three" {
  count         = 1
  ami           = "ami-02d26659fd82cf299"
  instance_type = "t2.micro"

  tags = {
    Name = "test-server"
  }
}
