terraform {
  backend "s3" {
    bucket = "njsnet-deployments"
    key    = "terraform/revols-cicd-workshop/main"
    region = "eu-west-1"
  }
}

resource "aws_ssm_parameter" "a-parameter" {
  name  = "/cicd/workshop/my-parameter"
  type  = "String"
  value = "Some value"
}