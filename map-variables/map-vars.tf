variable "images" {
  type = map(any)
  default = {
    "us-east-1" = "ami-123"
    "us-west-2" = "ami-456"
  }
}

output "images" {
  value = "use this image for north-virginia ${lookup(var.images, "us-east-1")}"
}

variable "userage" {
  type = map(any)
  default = {
    amar = 20
    zaid = 35
  }
}

variable "username" {
  type = string
}

output "userage" {
  value = "my name is ${var.username} and my age is ${lookup(var.userage, "${var.username}")}"
}
