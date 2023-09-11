
variable "ami" {
  default = "ami-03265a0778a880afb"
}

#variable "security_group" {
#  default = " sg-03a191c8c20494101"
#}
variable "instance_type" {
  default = "t3.small"
}

variable "zone_id" {
  default = "Z023814724XBO8OK2PSWK"
}

variable "components" {
  default = {
    frontend= {}
    mongodb= {}
    catalogue= {}
    redis= {}
    user= {}
    shipping= {}
    rabbitmq= {}
    mysql= {}
    payment= {}
    dispatch= {}
  }
}


variable "security_groups" {
  default = "sg-03a191c8c20494101"
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids= var.security_groups

  tags = {
    Name = lookup(each.value,"name", null )
  }
}




#output "instances" {
#  value = aws_instance.instance
#}
#resource "aws_instance" "mongodb" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#
#  tags = {
#    Name = "mongodb"
#  }
#}
#
#resource "aws_route53_record" "mongodb" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "mongodb-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.mongodb.private_ip]
#}
#
#
#resource "aws_instance" "catalogue" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#
#  tags = {
#    Name = "catalogue"
#  }
#}
#resource "aws_route53_record" "catalogue" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "catalogue-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.catalogue.private_ip]
#}
#
#
#resource "aws_instance" "redis" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#
#  tags = {
#    Name = "redis"
#  }
#}
#resource "aws_route53_record" "redis" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "redis-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.redis.private_ip]
#}
#
#resource "aws_instance" "cart" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#
#  tags = {
#    Name = "cart"
#  }
#}
#resource "aws_route53_record" "cart" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "cart-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.cart.private_ip]
#}
#
#resource "aws_instance" "user" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#  tags = {
#    Name = "user"
#  }
#}
#resource "aws_route53_record" "user" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "user-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.user.private_ip]
#}
#
#resource "aws_instance" "payment" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#
#  tags = {
#    Name = "payment"
#  }
#}
#resource "aws_route53_record" "payment" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "payment-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.payment.private_ip]
#}
#
#resource "aws_instance" "rabbitmq" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#
#  tags = {
#    Name = "rabbitmq"
#  }
#}
#
#resource "aws_route53_record" "rabbitmq" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "rabbitmq-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.rabbitmq.private_ip]
#}
#
#
#resource "aws_instance" "dispatch" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#
#  tags = {
#    Name = "dispatch"
#  }
#}
#resource "aws_route53_record" "dispatch" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "dispatch-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.dispatch.private_ip]
#}
#
#resource "aws_instance" "mysql" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t3.micro"
#  vpc_security_group_ids=["sg-03a191c8c20494101"]
#
#  tags = {
#    Name = "mysql"
#  }
#}
#resource "aws_route53_record" "mysql" {
#  zone_id = "Z023814724XBO8OK2PSWK"
#  name    = "mysql-dev.devops999.store"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.mysql.private_ip]
#}
