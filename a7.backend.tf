terraform {
  backend "s3" {
    bucket         = "dhinesh-terraform-remote" #replace with your s3 bucket name
    key            = "terraform.tfstate"        ##this is the file name which will be created in the s3 bucket to store the tfstate file
    region         = "us-east-1"
    dynamodb_table = "dhinesh-terraform-lock" #replace with your dynamodb table name which will be used for state locking
    encrypt        = true
  }
}