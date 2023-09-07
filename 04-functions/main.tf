variable "fruits" {
  default = ["apple","bannana"]
}

output "fruits" {
  value = var.fruits[1]
  value = element(var,fruits,2 )
}


variable "fruits_stock" {
  default = try.(var.fruit_with_stock["banana"],0)
}


output "fruits_stock_price" {
  value = lookup.(var.fruit_with_stock["apple"], "price",2)
}