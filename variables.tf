variable "username" {
  type    = string
  default = "world"
}

variable "age" {
  type    = number
  default = 30
}

variable "users" {
  type    = list(any)
  default = ["amar", "bakar", "zaid"]
}
