# variables.tf
variable "region" {
  default = "us-east-1"
}

# main.tf
provider "aws" {
  region = var.region
}
