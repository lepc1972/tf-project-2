module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name            = "CloudApp-2"
  cidr            = "12.0.0.0/16"
  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["12.0.1.0/24"]
  public_subnets  = ["12.0.2.0/24"]

  create_igw         = true
  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "Cloud_App"

  }




}