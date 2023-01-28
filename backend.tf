terraform {
  backend "s3" {
    bucket         = "demotf-state-bucket"
    key            = "terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-state-locking"
  }
}