# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "neo_terraform_remote_state"
    key            = "jupiter-website-ecs.tfstate"
    region         = "us-east-1"
    profile        = "terraform-user"
  }
}