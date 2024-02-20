provider "aws" { 
    region = "eu-east-1"
}

resource "aws_iam_user" "my-iam" {
    name = "shubham"
    path = "/"
}