data "aws_ami" "example" {
  most_recent = trueowners["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}
