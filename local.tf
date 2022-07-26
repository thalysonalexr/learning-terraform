resource "local_file" "helloworld" {
  content = var.content
  filename = "${path.module}/hello.txt"
}

variable "content" {
  type = string
  default = "Hello world!"
}

output "id-do-arquivo" {
  value = resource.local_file.helloworld.id
}

output "content" {
  value = var.content
}
