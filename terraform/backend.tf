terraform {
      backend "s3" {
    bucket         = "tf-notifier-state"
    key            = "path/to/terraform.tfstate"
    dynamodb_table = "tf-notifier-state"
    region         = "us-east-1"
    profile        = "fiap"
  }
}