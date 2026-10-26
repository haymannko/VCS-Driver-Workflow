terraform {
  cloud {
    organization = "thuthu-tfc"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      name = "cloud-test"
    }
  }
}
