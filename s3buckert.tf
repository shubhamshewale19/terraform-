provider "aws" {
    region = "eu-north-1"
}

resource "aws_s3_bucket" "eg" {
    bucket = "shubhz"
    tags = {
        name = "my-bucket"
        env = "dev"

    }
}
