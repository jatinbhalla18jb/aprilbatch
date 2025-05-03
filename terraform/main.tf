provider "aws" {
  region = "us-west-1"  # You can change this to your preferred AWS region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-jb"  # Must be globally unique!
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
