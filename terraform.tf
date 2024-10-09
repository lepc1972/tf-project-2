terraform {
  required_version = ">= 1.9.7"

  required_providers {
    aws = {
      source = "registry.terraform.io/hashicorp/aws"
      version = "~>5.0"

    }
  }


}

