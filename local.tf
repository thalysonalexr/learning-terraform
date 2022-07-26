resource "local_file" "helloworld" {
  content = var.content
  filename = "${path.module}/hello.txt"
}

variable "content" {}
