terraform {
  backend "s3" {
    bucket = "gg-wiz-tf-state"
    key    = "gg-wiz-iac-tf"
    region = "us-east-2"
	use_lockfile = true
  }
}

