terraform {
  backend "s3" {
    bucket = "njsnet-deployments"
    key    = "terraform/revols-cicd-workshop/main"
    region = "eu-west-1"
  }
}



