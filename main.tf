terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "4.20.1"
		}
	
	}
	}
	
provider "aws" {
	region = "ap-southeast-1" # Singapore region

}

module "my_s3" {
	source = "./s3"
	bucket_name = "devops-05-2022-07-05"
	bucket_acl = "private"
	tags = {
		Env = "testing"
		}
	

}