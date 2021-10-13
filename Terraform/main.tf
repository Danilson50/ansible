provider "aws" {
  region = var.region
  #Usuario e senha configurados na CLI AWS
}

#terraform {
 # backend "s3" {
  #  bucket = "descomplicando-terraform-danilson-tfstate"
   # key    = "terraform.tfstate"
    #region = "us-east-1"
  #}
#}