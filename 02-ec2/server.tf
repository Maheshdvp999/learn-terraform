resource "aws_instance" "web" {
  ami           = "ami-081609eef2e3cc958"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}