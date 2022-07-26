resource "local_file" "helloworld" {
  content = "Hello World!!!"
  filename = "${path.module}/hello.txt"
}
