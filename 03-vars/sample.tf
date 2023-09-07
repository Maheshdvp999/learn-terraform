
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

#access map variable
output "fruit_stock_apple" {
  value = var.fruit_stock[apple]
}

output "fruit_stock_with_price_of_apple" {
  value = var.fruit_stock_with_price["apple"].stock
}

#variable data types
variable "fruit_details" {
  default = {
    apple= {
      stock = 100 #number
      price= 1
      type = "washington" #type_string
      for_sale= true #boolean
    }
  }
}

#variable in a combination of any other string then it should in ${}
output "fruit_name_1" {
  value = "Fruit Name = ${var.fruit_name}"
}

output "fruit_details_apple" {
  value = "Apple stock=${var.fruit_details["apple"].stock} , Apple Type = ${var.fruit_details["apple"]} , Apple sale status= ${var.fruit_details["apple"].for_sale}"

}