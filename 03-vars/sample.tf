
#plain variables
variable "fruit_name" {
  default = "apple"
}
output "fruit_name" {
  value = var.fruit_name
}

variable "fruits" {
  default = ["apple","banana"]
}

#Map variable, plain

variable "fruit_stock" {
  default = {
    apple= 300
    banana= 200
  }
}

#map variable map of maps
variable "fruit_stock_with_price" {
  default = {
    apple ={
      stock = 100
      price = 3
    }
    banana= {
      stock = 400
      price= 1
    }
  }
}

#Access a list variable, list index starts from zero
output "fruits_first" {
  value = "var.fruits[0]"
}

output "fruits_second" {
  value = "var.fruits[1]"
}