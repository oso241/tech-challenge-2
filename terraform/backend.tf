terraform {
  backend "s3" {
    bucket         = "tech-challenge-2-terraform-state-samuel"
    key            = "eks/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tech-challenge-2-terraform-locks"
    encrypt        = true
  }
}