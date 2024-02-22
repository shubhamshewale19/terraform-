provider "aws" {
    region = "eu-north-1"
} 

resource "aws_iam_user" "my-iam" {
    name = "shubham"
    path = "/"
}

resource "aws_s3_bucket" "eg" {
    bucket = "shubhz"
    tags = {
        name = "my-bucket"
        env = "dev"

    }
}

resource "aws_s3_bucket_policy" "policy" {
    name = "shubhz"
  
   policy = <<EOT 
    {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*",
                "s3-object-lambda:*"
            ],
            "Resource": "*"
        }
    ]
}
EOT
}
   