provider "aws" {
    region = "eu-north-1"
}

resource "aws_eks_cluster" "example" {
  name     = "terraform"
  role_arn = aws_iam_role.example.arn

  vpc_config {
    subnet_ids = [aws_subnet.example1.id, aws_subnet.example2.id]
  }
}