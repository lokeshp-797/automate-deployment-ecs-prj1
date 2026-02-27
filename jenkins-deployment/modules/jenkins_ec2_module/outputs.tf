output "aws_instance" {
  value = [aws_instance.jenkins-instance[*].id]
}
