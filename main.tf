terraform {
  backend "remote" {
    hostname = "tfe-zone-c7fb9a51.ngrok.io"
    organization = "hashicorp"

    workspaces {
      name = "tfc-guide-example"
    }
  }
}

data "http" "delay" {
  url = "https://httpbin.org/delay/10"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}
