resource "local_file" "helloworld" {
  content = var.content
  filename = "${path.module}/hello.txt"
}

variable "content" {
  type = string
  default = "Hello world!"
}

data "local_file" "content-exemplo" {
  filename = "${path.module}/hello.txt"
}

output "id-do-arquivo" {
  value = resource.local_file.helloworld.id
}

output "content" {
  value = var.content
}

output "data-resource-result" {
  value = data.local_file.content-exemplo.content
}
