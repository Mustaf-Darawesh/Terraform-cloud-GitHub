terraform {
    required_version = "~> 1.11.4" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.95.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0e449927258d45bc4" 
	instance_type = "t2.micro"
}
