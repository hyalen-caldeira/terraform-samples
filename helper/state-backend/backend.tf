terraform {
  required_version = ">= 0.12.2"
  backend "s3" {
    region         = "us-east-1"
    bucket         = "my-app-or-company-name-dev-infrastructure-tf-state"
    key            = "terraform.tfstate"
    dynamodb_table = "my-app-or-company-name-dev-infrastructure-tf-state"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}