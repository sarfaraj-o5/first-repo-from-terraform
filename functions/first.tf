output "printfirst" {
  value = join("--->", var.users)
}

output "helloupper" {
  value = upper(var.users[0])
}

output "hellolower" {
  value = lower(var.users[1])
}

output "hellotitle" {
  value = title(var.users[2])
}
