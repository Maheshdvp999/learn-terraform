variable "components" {
  default = ["frontend", "mongodb","catalogue"]
}

resource "aws_instance" "instance" {
  count = length(var.components)
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids=["sg-03a191c8c20494101"]

  tags = {
    Name = element(var.components,count.index)
  }
}