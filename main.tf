terraform {
  backend "s3" {
    bucket = "njsnet-deployments"
    key    = "terraform/revols-cicd-workshop/main"
    region = "eu-west-1"
  }
}




resource "aws_ssm_parameter" "a-parameter" {
    count = 100
  name  = "/cicd/workshop/my-parameter-${count.index}"
  type  = "String"
  value = "Some value"
}