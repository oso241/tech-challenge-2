resource "aws_s3_bucket" "tech_challenge_2" {
  bucket = "tech-challenge-2-oso241"

  tags = {
    Name        = "Tech Challenge 2"
    Project     = "Tech Challenge 2"
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}