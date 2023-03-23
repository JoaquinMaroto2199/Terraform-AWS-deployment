resource "aws_eip" "my_lb" {
    vpc = true
    depends_on = [null_resource.health_check]
}

resource "null_resource" "health_check" {
  provisioner "local-exec" {
    command = "curl https://chat.openai.com/chat"
  }
}