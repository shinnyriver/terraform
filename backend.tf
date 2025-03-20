terraform {
  backend "s3" {
    bucket         = "990323-river-practice4"
    key            = "vpc/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "990323-river-dynamo"
  }
}
